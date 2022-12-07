Rails.application.routes.draw do
  resources :formacao_has_funcionarios
  resources :projetos
  resources :funcionarios
  resources :formacaos
  resources :enderecos
  resources :equipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
