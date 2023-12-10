require 'selenium-webdriver'
require 'fileutils'

class AddRessDownloadPage < SitePrism::Page
  set_url 'https://pauliceia.unifesp.br/portal/explore'

  element :infoWelcomeCloseButton, :xpath, "/html/body/div/section/div/section/div/section[3]/header/button"
  element :batchSearchButton, :xpath, "/html/body/div[1]/section/div/section/div/section[1]/form/div/div[3]/button"
  element :uploadFilesButton, :xpath, "/html/body/div[1]/section/div/section/div/section[1]/div/label/input"
  element :downloadFilesButton, :xpath, "/html/body/div[1]/section/div/section/div/section[1]/div/form/button[2]"

  def columnidentificationStreet(street)
    find('.inputs .el-select:nth-child(1) .el-input__inner').click
    find('.el-select-dropdown__item', text: street).click
  end
  def columnidentificationNumber(number)
    find('.inputs .el-select:nth-child(2) .el-input__inner').click
    find('.el-select-dropdown__item', text: number).click
  end
  def columnidentificationYear(year)
    find('.inputs .el-select:nth-child(3) .el-input__inner').click
    find('.el-select-dropdown__item', text: year).click
  end
  def uploadClick(file)
    find('label.file-select input[type="file"]', visible: false).attach_file(file, make_visible: true)
  end
  def columnsidentification(street, number, year)
    columnidentificationStreet(street)
    columnidentificationNumber(number)
    columnidentificationYear(year)
  end
  def searchBatchCSV
    find('.btn-download', visible: :visible).click(wait: 10)
    sleep 5
  end
  #alerta de navegador
  def alertCheck
      alert = page.driver.browser.switch_to.alert
      alert_text = alert.text
      alert.accept
      return alert_text
  end

  def validFoundAddress(alert_text)
    test_true = []
    test_true[0] = alert_text.include?('O endereço "rua adolpho gordo, 41, 1909" foi Encontrado.')
    test_true[1] = alert_text.include?('O endereço "rua affonso arinos, 2, 1909" foi Encontrado.')
    test_true[2] = alert_text.include?('O endereço "rua alagoas, 2, 1927" foi Encontrado.')
    return test_true.all?
  end

  def extract_zip(file, path_dest)
    Zip::File.open(file) do |zip_file|
      zip_file.each do |arq|
        path_file = File.join(path_dest, arq.name)
        FileUtils.mkdir_p(File.dirname(path_file))
        zip_file.extract(arq, path_file) unless File.exist?(path_file)
      end
    end
  end

  def filesChecked(path_folder, files)
    test_true = []
    files.each do |arq|
      exists = Dir.glob(File.join(path_folder, arq)).any?
      test_true << exists
      return test_true.all?
    end
  end
  def deleteFiles(directory_path)
    FileUtils.rm_rf(Dir.glob("#{directory_path}/*"))
  end
end
