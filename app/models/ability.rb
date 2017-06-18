class Ability
  include CanCan::Ability

  def initialize(user)
        alias_action :create,:edit, :update, :destroy,:show, :to => :crud
        alias_action :update, :edit,:destroy,:show, :to => :rud
        alias_action :create, :show, :list,  :to => :cs
        if user.admin?
            can :manage, :all           
           
        else
            if user.basic?
                can :cs, Historium
                can :cs, Evolucion
                can :index, :all
                can :index, Cita
                can :list, :all

                can :searcheps, Ep
                can :searchpaciente, Paciente                
                can :crud, Encuestaseno
                can :crud, Paciente
                can :crud, Citum
                can :crud, Profesional

                can :show, Ep                
                can :update, Ep

                can :show, Divpa                
                can :update, Divpa

                can :show, Especialidad                
                can :update, Especialidad

                can :show, Servicio                
                can :update, Servicio

                can :show, Consultorio
                
            else
                if user.prof?
                    can :cs, Historium
                    can :cs, Evolucion
                    can :index, Paciente                    
                    can :index, Cita
                    can :index, Citum                    
                    can :show, Citum

                    can :list, Citum do |cita|
                        cita.try(:profesional_id)==user.numero_id
                    end                    

                    can :list, Historia do |historia|
                        historia.try(:profesional_id)==user.numero_id
                    end                    

                    can :list, Evolucion do |evolucion|
                        evolucion.try(:profesional_id)==user.numero_id
                    end                    


                    can :edit, Citum                  
                    can :update, Citum

                    can :show, Paciente
                    can :list, Paciente

                    can :rud, Profesional do |profesional|
                        profesional.try(:numero_id) == user.numero_id
                      end
                    
                end
            end
        end
    end
end