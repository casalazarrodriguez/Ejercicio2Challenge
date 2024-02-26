@AdminPets
Feature:
  Background: añadir, consultar, editar y consultar

    * def body = read ('AddPet.json')
    * def validPet = read ('ValidPet.json')


  @AddPet
  Scenario Outline: Añadir una mascota a la tienda
    Given url 'https://petstore.swagger.io/v2/pet'
    And header Content-Type = 'application/Json'
    * set body.id = 20
    * set body.name = 'ODDIE'
    * set body.category.id = 4
    * set body.category.name = 'CANES'
    * set body.status = 'available'
    And request body
    When method post
    Then status <statusCode>
    * print response
    * match response == validPet
    * def idPet = response.id
    Examples:
      | statusCode  |
      | 200         |

  @ConsulID
  Scenario: consultar la mascota ingresada previamente
    #* print 'resultado: ' + idPet
    Given url 'https://petstore.swagger.io/v2/pet' + '/idPet'
    When method get
    Then  status 200
    * print response
    * match response == validPet

  @UpdatePet
  Scenario: Actualizar el nombre de la mascota y el estatus de la mascota a 'sold'
    Given url 'https://petstore.swagger.io/v2/pet'
    And request {'id': 980626999, 'category': {'id':0,'name': 'CANES'}, 'name': 'MILO','photoUrls':['string'],'tags':[{'id': 0,'name': 'string'}],'status': 'sold'}
    When method PUT
    Then  status 200
    * def categoria = response.category.name
    * def name = response.name
    * def status = response.status
    * assert name == 'MILO'
    * assert status == 'sold'

  @ConsulStatus
  Scenario: Consultar la mascota modificada por status (Busqueda por estatus)
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=sold'
    When  method get
    Then  status 200

