#encoding: utf-8

class Gasto < ActiveRecord::Base
  belongs_to :contribuinte
  after_save :enviar_email

  def enviar_email

    ActionMailer::Base.smtp_settings = {
        :address => "smtp.gmail.com",
        :domain => "gmail.com",
        :port => 587,
        :user_name => "analisedegastos@gmail.com",
        :password => Configuracao.where(:chave => "senha.email").take!.valor,
        :authentication => "plain",
        :enable_starttls_auto => true
    }

    ActionMailer::Base.mail(
        :from => "analisedegastos@gmail.com",
        :to => Configuracao.where(:chave => "remetentes").take!.valor,
        :subject => "Atualizacao de gastos",
        :body => " Contribuinte: #{self.contribuinte.nome} \n Gasto: #{self.descricao} \n Valor: #{self.valor}")
    .deliver

  end

end