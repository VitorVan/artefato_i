require 'date'

class LayersPage < SitePrism::Page
  set_url 'https://pauliceia.unifesp.br/portal/dashboard/newLayer'

  element :emailField, :xpath, "/html/body/div/section/div/div/section/div[1]/div/form/div[1]/input"
  element :passwordField, :xpath, "/html/body/div/section/div/div/section/div[1]/div/form/div[2]/input"
  element :buttonEnter, :xpath, "/html/body/div/section/div/div/section/div[1]/div/form/div[3]/button"

  element :nameLayerField, :xpath, "/html/body/div[1]/section/div/div/main/div/div/div/div[1]/div/div/form/div[1]/div[1]/div[1]/input"
  element :descriptionLayerField, :xpath, "/html/body/div[1]/section/div/div/main/div/div/div/div[1]/div/div/form/div[1]/div[3]/textarea"
  element :referencesField, :xpath, "/html/body/div[1]/section/div/div/main/div/div/div/div[1]/div/div/form/div[1]/div[4]/div/div[1]/textarea"
  element :buttonReferencesField, :xpath, "/html/body/div[1]/section/div/div/main/div/div/div/div[1]/div/div/form/div[1]/div[4]/div/div[2]/a"
  element :buttonSendLayer1, :xpath, "/html/body/div[1]/section/div/div/main/div/div/div/div[1]/div/div/form/div[2]/button"
  element :buttonSendLayer2, :xpath, "/html/body/div[1]/section/div/div/main/div/div/div/div/div/div/div/form/div[3]/div/a"

  def uploadShapefile(path_file)
    find('input#Upload', visible: false).set(path_file)
  end
  def data_start
    date = Date.today
    date = date.strftime('%d-%m-%Y')

    start_date_field = find('#start_date')
    start_date_field.set(date)
  end
  def data_end
    date = Date.today
    date = date.strftime('%d-%m-%Y')

    end_date_field = find('#end_date')
    end_date_field.set(date)
  end
  def dt_init_name(date)
    dropdown = find('.dropdown.v-select.single.searchable#start_date_column_name input[type="search"]')
    dropdown.set(date)
    find('.dropdown-menu').click
  end
  def dt_end_name(date)
    dropdown = find('.dropdown.v-select.single.searchable#end_date_column_name input[type="search"]')
    dropdown.set(date)
    find('.dropdown-menu').click
  end
  def dt_init_format(date)
    dropdown = find('.dropdown.v-select.single.searchable#start_date_mask input[type="search"]')
    dropdown.set(date)
    find('.dropdown-menu').click
  end
  def dt_end_format(date)
    dropdown = find('.dropdown.v-select.single.searchable#end_date_mask input[type="search"]')
    dropdown.set(date)
    find('.dropdown-menu').click
  end
  def userLogin(email, password)
    emailField.set email
    passwordField.set password
    buttonEnter.click
  end

  def keywordsSelect
    dropdown = all('.dropdown.v-select.searchable').first
    dropdown.click

    within(dropdown) do
      find('.dropdown-menu').click
    end
  end
  def collaboratorsSelect
    first('.dropdown-toggle').click

    # Encontrar o próximo dropdown após o dropdown-toggle clicado
    next_dropdown = first('.dropdown-toggle').sibling('.dropdown.v-select.searchable')
    next_dropdown.find('.dropdown.v-select.searchable', text: 'algum texto').click
    sleep 30

    within(dropdown[1]) do
      find('.dropdown-menu').click
    end
  end
  def layerExist(layer)
    within('div.card-text') do
      return find('div.row', text: layer)
    end
  end
  def removeLayer(layer)
    within('div.card-text') do
      within('div.row', text: layer) do
        find('.btn-outline-danger').click
      end
    end
  end

  def fillfields(name, description)
    nameLayerField.set name
    descriptionLayerField.set description
  end

  def refABNT(ref)
    referencesField.set ref
    buttonReferencesField.click
  end

  def random_string(length)
      chars = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
      return (0...length).map { chars[rand(chars.length)] }.join
  end
  def configDate(name, format)
    dt_init_name(name)
    dt_end_name(name)
    dt_init_format(format)
    dt_end_format(format)
    data_start
    data_end
  end
end
