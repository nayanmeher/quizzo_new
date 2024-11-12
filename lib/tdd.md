

// Folder Structure: 

    lib -> core -> useCase (In core we have to write abstract class of the core_use_case for all the use case applied for the project.)

        -> domain -> entity (entity models)
                   -> repository (Here we have to write all the base repositories call from abstract class)
                    -> useCase (Implementation method for core_use_case)

        -> data -> model (Models to call Api requests)
                -> repository (Implementation methods for domain_repository with service locator(GetIt))
                -> source (we have to write the end point call here. with abstract class.)

        -> presentation


