## GridControl MaskEdit
           this.repositoryItemTextEdit1.AutoHeight = false;
           this.repositoryItemTextEdit1.Mask.EditMask = "[0-9]{4}[ ].{5}";
           this.repositoryItemTextEdit1.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.RegEx;

## DataTable

DataTable empTbl = new DataTable();
List<string> list = empTbl.AsEnumerable().Select(x => x.Field<string>("EMP_ID")).Distinct().ToList();


##
var existValueCells = (from cell in this.dataGridViewInput.Rows[this.dataGridViewInput.SelectedCells[0].RowIndex].Cells.OfType<DataGridViewCell>()
                                               where !string.IsNullOrEmpty(cell.OwningColumn.DataPropertyName)
                                                     && cell.OwningColumn.DataPropertyName.Split('_')[0].Equals("VALUE")
                                                     && !cell.OwningColumn.DataPropertyName.Equals("VALUE_TYPE")
                                                     && int.Parse(cell.OwningColumn.DataPropertyName.Split('_')[1]) < int.Parse(this.dataGridViewInput.SelectedCells[0].OwningColumn.DataPropertyName.Split('_')[1])
                                                     && (cell.Value == null || string.IsNullOrEmpty(cell.Value.ToString()))
                                               select cell).ToList();

## 192.168.13.234 user

## XtraDiagram Create Custom Shape
// https://www.devexpress.com/Support/Center/Question/Details/T572792/how-to-add-pre-excisting-shapes-in-stencil

var stencil = DiagramStencil.Create("CustomShapes", "Custom Shapes", stream, shapeName => shapeName);
    stencil.RegisterShape(BasicShapes.Ellipse);
    DiagramToolboxRegistrator.RegisterStencil(stencil);

#GridControl
##Sorting devexpress winforms gridview sorting arrow invisible
https://documentation.devexpress.com/WindowsForms/692/Controls-and-Libraries/Data-Grid/Sorting/Sorting-in-Code
https://www.devexpress.com/Support/Center/Question/Details/Q324369/how-to-hide-grid-column-sort-order-glyph

        //
        void gridView1_CustomDrawColumnHeader(object sender, ColumnHeaderCustomDrawEventArgs e)
        {
            SortGhyphHideHelper.RemoveSortGlyphIfNeccessary(e);
        }

        //
    public class SortGhyphHideHelper
    {
        public static void  RemoveSortGlyphIfNeccessary(ColumnHeaderCustomDrawEventArgs args)
        {
            DrawElementInfo elementInfo = FindSortGlyphElement(args.Info);
            if (elementInfo == null)
                return;
            args.Info.InnerElements.Remove(elementInfo);
            args.Painter.CalcObjectBounds(args.Info);
        }
        private static DrawElementInfo  FindSortGlyphElement(DevExpress.XtraGrid.Drawing.GridColumnInfoArgs info)
        {
            foreach (DrawElementInfo innerElement in info.InnerElements)
                if (innerElement.ElementInfo is SortedShapeObjectInfoArgs)
                    return innerElement;
            return null;
        }
    }




## GridControl Sorting

https://www.devexpress.com/Support/Center/Question/Details/A36/how-to-sort-the-grid-by-a-particular-column




## DPI
C:\Users\Public\Documents\DevExpress Demos 17.1\Components\WinForms\CS\LayoutMainDemo
C:\Users\Public\Documents\DevExpress Demos 17.1\Components\WinForms\CS\LayoutMainDemo\Modules\Multilanguage\MultilanguageForm.cs
#SreadsheetControl
## 한줄띄어쓰기
https://www.devexpress.com/Support/Center/Question/Details/T538124/spreadsheet-text-vertical
worksheet.Cells["A1"].Alignment.WrapText = true;
worksheet.Cells["A1"].Value = "2\r\n0\r\n1\r\n7";

## TextEdit devexpress winforms textedit select all on focus
https://www.devexpress.com/Support/Center/Question/Details/T723050/textedit-select-all-on-focus

        private void txtEdit_Enter(object sender, EventArgs e)
        {
            var edit = ((DevExpress.XtraEditors.TextEdit)sender);
            BeginInvoke(new MethodInvoker(() =>
            {
                edit.SelectionStart = 0;
                edit.SelectionLength = edit.Text.Length;
            }));
        }


## GridControl LayoutView

           //Properties.Settings.Default.GridHeight = this.layoutViewField_layoutViewColumn5.Height;
           //Properties.Settings.Default.GridHeight = this.layoutView1.CardMinSize.Height;
           //this.layoutViewField_layoutViewColumn5.ControlMinSize;
           //Properties.Settings.Default.Save();
           for (int x = 0; x < this.layoutViewCard1.Items.Count; x++)
           {
               if(this.layoutViewCard1.Items[x].CustomizationFormText == "오더리스트")
               {
                   Properties.Settings.Default.GridHeight = layoutViewCard1.Items[x].Bounds.Size.Height;
                   Properties.Settings.Default.Save();
               }
           }


## GridControl RepositoryAnyControl 애니컨트롤일 경우 
devexpress AllowBitmapCache

https://www.devexpress.com/Support/Center/Question/Details/T559987/synchronizing-charts-in-cells


## FlyoutPanel

flyoutPanel1.ButtonClick += FlyoutPanel1_ButtonClick;
flyoutPanel1.OptionsButtonPanel.ButtonPanelContentAlignment = System.Drawing.ContentAlignment.MiddleCenter;
flyoutPanel1.OptionsButtonPanel.ButtonPanelHeight = 60;
flyoutPanel1.OptionsButtonPanel.ButtonPanelLocation = DevExpress.Utils.FlyoutPanelButtonPanelLocation.Bottom;
buttonImageOptions1.ImageUri.Uri = "Replace;Office2013";
buttonImageOptions2.ImageUri.Uri = "Apply;Office2013";
buttonImageOptions3.ImageUri.Uri = "Cancel;Office2013";
flyoutPanel1.OptionsButtonPanel.Buttons.AddRange(new DevExpress.XtraEditors.ButtonPanel.IBaseButton[] {
//new DevExpress.Utils.PeekFormButton("작업이동", true, buttonImageOptions1, true, null),
new DevExpress.Utils.PeekFormButton("적용", true, buttonImageOptions2, true, null),
new DevExpress.Utils.PeekFormButton("취소", true, buttonImageOptions3, true, null)});


## ZoomTrackBarControl

var Control = sender as ZoomTrackBarControl;
GridView1.Appearance.Row.FontSizeDelta = Control.Value;
GridView1.Appearance.HeaderPanel.FontSizeDelta = Control.Value;


private void ZoomTrackBarControl1_ValueChanged(object sender, EventArgs e)
{
    //var control = sender as ZoomTrackBarControl;
    //layoutView1.Appearance.Card.Font = new System.Drawing.Font("맑은 고딕", control.Value, System.Drawing.FontStyle.Bold);
    //layoutView1.Appearance.HeaderPanel.FontSizeDelta = control.Value;
    float fontSize = defaultFontSize;
    LayoutView layoutView = layoutView1;
    fontSize += Convert.ToInt32(zoomTrackBarControl1.EditValue) * 3;
    Font fnt = new Font("맑은 고딕", fontSize);
    layoutView.Columns["GAUGE_CONTROL"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["GAUGE_CONTROL"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["CHART_CONTROL"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["CHART_CONTROL"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["GRID_CONTROL"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["GRID_CONTROL"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["ORDER_COUNT"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["ORDER_COUNT"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["STATE"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["STATE"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["MONTH_QTY"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["MONTH_QTY"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["LOAD_RATE"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["LOAD_RATE"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["EQP_ID"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["EQP_ID"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["EQP_DESC"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["EQP_DESC"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["CHART_CONTROL"].ColumnEdit.Appearance.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["CHART_CONTROL"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["CHART_CONTROL"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["GRID_CONTROL"].ColumnEdit.Appearance.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["GRID_CONTROL"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["GRID_CONTROL"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["GAUGE_CONTROL"].ColumnEdit.Appearance.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["GAUGE_CONTROL"].AppearanceHeader.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
    layoutView.Columns["GAUGE_CONTROL"].AppearanceCell.Font = new System.Drawing.Font("맑은 고딕", fontSize, System.Drawing.FontStyle.Bold);
}


## c# 해상도에 따른 변경
http://www.hoons.net/Board/qacshap/Content/77357

## GridControl RepositoryItemPictureEdit

resultList[x].ITEM_IMG = (Image)SmartiPOP.Dashboard.Properties.Resources.ResourceManager.GetObject("_3");
using System.Resources;

RepositoryItemPictureEdit ritem4 = new RepositoryItemPictureEdit();
ritem4.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
this.layoutViewField_layoutViewColumn1.Size = new System.Drawing.Size(283, 61);
//ResourceManager rm = SmartiPOP.Dashboard.Properties.Resources.ResourceManager;
//Bitmap myImage = (Bitmap)rm.GetObject("_3");
//ritem4.Appearance.Image = myImage;

layoutView.Columns["ITEM_IMG"].ColumnEdit = ritem4;
layoutView.Columns["ITEM_IMG"].LayoutViewField.TextVisible = false;
layoutView.Columns["ITEM_IMG"].OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
layoutView.Columns["ITEM_IMG"].OptionsFilter.AllowFilter = false;
layoutView.Columns["ITEM_IMG"].OptionsColumn.ReadOnly = true;
layoutView.Columns["ITEM_IMG"].AppearanceCell.TextOptions.HAlignment = HorzAlignment.Near;
layoutView.Columns["ITEM_IMG"].AppearanceHeader.Options.UseFont = true;
layoutView.Columns["ITEM_IMG"].AppearanceCell.Options.UseFont = true;





## GridControl AnyControl
https://www.devexpress.com/Support/Center/Question/Details/T336707/layoutview-how-to-display-relational-data-correctly
https://www.devexpress.com/Support/Center/Question/Details/T157840/embedding-a-user-control-in-a-winforms-xtragrid
https://www.devexpress.com/Support/Center/Question/Details/T190833/charts-or-grids-in-treelist-control

## TextEdit
this.tbUserId.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;

## GridView SortInfo

//gridView.SortInfo.ClearAndAddRange(new[] { new GridMergedColumnSortInfo(new[] { gridView.Columns[0], gridView.Columns[1] }, new[] { ColumnSortOrder.Ascending, ColumnSortOrder.Ascending }) }, 1);
//GridSummaryItem summaryItemMaxOrderSum = new GridSummaryItem(DevExpress.Data.SummaryItemType.Count, "EQP_ID", null, "( 오더수 = {0})");
//GridSummaryItem summaryItemMaxOrderSum2 = gridView.GroupSummary.Add(DevExpress.Data.SummaryItemType.Count, "EQP_ID", null, "( 오더수 = {0:c2})");
//GridSummaryItem summaryItemMaxOrderSum = gridView.GroupSummary.Add(DevExpress.Data.SummaryItemType.Count, "EQP_ID", null, "( 오더수 = {0:c2})");


## TextEdit 어퍼로 만들기
this.tbUserId.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;

## DateTimeEdit 숫자 수정 가능하도록
this.calFromDate.Properties.CalendarTimeEditing = DevExpress.Utils.DefaultBoolean.True;

입력되는 포맷형태
this.calFromDate.Properties.Mask.EditMask = "yyyy-MM-dd HH:mm:ss";
this.calFromDate.Properties.Mask.UseMaskAsDisplayFormat = true;

this.calFromDate.Properties.Mask.EditMask = "yyyy-MM-dd";
this.calFromDate.Properties.Mask.UseMaskAsDisplayFormat = true;
드랍버튼 클릭 시 년도가 먼저 보이게 됨
this.calFromDate.Properties.VistaCalendarInitialViewStyle = DevExpress.XtraEditors.VistaCalendarInitialViewStyle.YearView;


## GridControl RepositoryItemTextEdit -RegEx

            //repositoryItemTextEditNumber.Mask.EditMask = @"(\d{0,3}\R,\d{0,3})+(\R.\d{0,2})?"; //  1,234
            repositoryItemTextEditNumber.Mask.EditMask = @"[0-9]{0,3}\,[0-9]{0,3}(\.[0-9]{1,2})?"; //  1,234


            repositoryItemTextEditNumber.Mask.EditMask = @"\d+(\R.\d{0,2})?"; //  1,234
            repositoryItemTextEditNumber.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.RegEx;


## XtraReport XRSubReport 와  Pagebreak
https://www.devexpress.com/Support/Center/Question/Details/T204609/multiple-page-reports

## DateEdit devexpress dateedit not null text 널값 허용 안함  https://www.devexpress.com/Support/Center/Question/Details/Q299036/dateedit-null-value
// DateEdit의 Null값 허용 안함
this.fromdate.Properties.AllowNullInput = DevExpress.Utils.DefaultBoolean.False;
this.todate.Properties.AllowNullInput = DevExpress.Utils.DefaultBoolean.False;


## XtraReport
XtraReport 다시 사용  Save 하고 다시 사용  https://www.devexpress.com/Support/Center/Question/Details/T524253/report-shows-only-one-row


## SpreadSheet 폰트  
https://documentation.devexpress.com/OfficeFileAPI/12370/Spreadsheet-Document-API/Examples/Formatting-Cells/How-to-Configure-Cell-Font-Settings
https://documentation.devexpress.com/OfficeFileAPI/DevExpress.Spreadsheet.SpreadsheetFont.FontStyle.property

## SpinEdit EditValueChangedFiringMode
https://documentation.devexpress.com/WindowsForms/DevExpress.XtraEditors.Repository.RepositoryItem.EditValueChangedFiringMode.property


## GaugeControl 게이지컨트롤 스타일매니저
https://documentation.devexpress.com/WindowsForms/18232/Controls-and-Libraries/Gauges/Design-Time-Features/Gauge-Styles-and-Style-Manager

## GaugeControl Ignis 사용법
https://www.cnblogs.com/chucklu/p/6093971.html

## GaugeControl Change Value  in Runtime
https://documentation.devexpress.com/WindowsForms/115306/Controls-and-Libraries/Gauges/Examples/How-to-Move-Value-Indicators-at-Runtime

## Rectangle 
 경계 색 그리기  https://docs.microsoft.com/ko-kr/dotnet/framework/winforms/advanced/how-to-set-pen-width-and-alignment


## LayoutView 
https://www.devexpress.com/Support/Center/Question/Details/Q352918/card-display-in-layoutview
### 레이아웃을 Vertical 모드, 카드가 적을 경우 정렬 방식
            layoutView.OptionsMultiRecordMode.MultiRowScrollBarOrientation = ScrollBarOrientation.Vertical;
            layoutView.OptionsView.ContentAlignment = ContentAlignment.TopLeft;
### 레이아웃 템플릿 저장하고 불러오기
https://www.devexpress.com/Support/Center/Question/Details/Q490895/how-to-restore-the-layoutview-s-template-card-settings-from-layout
string path = "test.xml";
layoutView1.RestoreLayoutFromXml(path);
layoutView1.SaveLayoutToXml(path);


### 캡션색깔 변경하기 (Header)  https://www.devexpress.com/Support/Center/Question/Details/T352991/how-to-indicate-what-a-card-is-focused-n-layoutview-if-the-card-caption-is-hidden
            view.OptionsView.AllowBorderColorBlending = true;
### LayoutView의 Weight를 변경하기 위해서는 자체 Width를 변경해야 함 (LayoutView에 AnyControl형태로 넣을 경우 Height가 정상 반영이 안되서)
    또는 IXtraResizableControl 인터페이스 상속

## GridControl AnyControl devexpress IAnyControlEdit
https://www.devexpress.com/Support/Center/Question/Details/T451244/update-datasource-from-ianycontroledit-control

## GridControl group header Merging
https://documentation.devexpress.com/WindowsForms/3500/Controls-and-Libraries/Data-Grid/Grouping
https://documentation.devexpress.com/WindowsForms/DevExpress.XtraGrid.Views.Grid.GridOptionsCustomization.AllowMergedGrouping.property

## IAnyControl 날짜별로 그리드 콘트롤안에 넣기
http://www.devexpress.com/example=T186700


## GridControl LayoutVIew
### Chage BackColor using format conditions https://www.devexpress.com/Support/Center/Question/Details/Q449138/layout-view-change-back-color-of-a-cell
### devexpress layoutview LayoutViewCard  https://www.devexpress.com/Support/Center/Question/Details/T319514/hide-layout-view-column-in-the-cards
1번 LayoutViewColumn layoutViewColumn = new LayoutViewColumn();
    layoutViewColumn.LayoutViewField.TextVisible = false;
2번    layoutView.Columns["IMAGE"].LayoutViewField.TextVisible = false;
## 셀 복사
GridControl grid = sender as GridControl;
if (grid != null)
{
    GridView view = grid.FocusedView as GridView;
    if (view != null)
    {
        Clipboard.SetText(view.GetFocusedDisplayText());
        e.Handled = true;
        //view.CopyToClipboard();
    }
}


GridView view = sender as GridView;
if (e.Control && e.KeyCode == Keys.C)
{
    if (view.GetRowCellValue(view.FocusedRowHandle, view.FocusedColumn) != null && view.GetRowCellValue(view.FocusedRowHandle, view.FocusedColumn).ToString() != String.Empty)
        Clipboard.SetText(view.GetRowCellValue(view.FocusedRowHandle, view.FocusedColumn).ToString());
    
    e.Handled = true;
}



## WidgetView 
### devexpress widgetview change control https://www.devexpress.com/Support/Center/Question/Details/T121157/change-widgetview-document-s-control
### devexpress document add control https://www.devexpress.com/Support/Center/Question/Details/T262503/widgetview-document-how-to-add-a-control

## GaugeControl ignis devexpress winforms gauge control ignis


## GridControl TileView Add Image https://stackoverflow.com/questions/39242119/devexpress-xtragrid-tileview

## SplitContainerControl devexpress splitcontainercontrol arrow    
https://documentation.devexpress.com/WindowsForms/DevExpress.XtraEditors.SplitContainerControl.CollapsePanel.property
this.splitContainerControl1.CollapsePanel = DevExpress.XtraEditors.SplitCollapsePanel.Panel1;



## FlyoutPanel location change     
https://www.devexpress.com/Support/Center/Question/Details/T346612/flyout-panel-location-and-position
this.flyoutPanel1.Options.AnchorType = DevExpress.Utils.Win.PopupToolWindowAnchor.Right;
this.flyoutPanel2.OptionsBeakPanel.BeakLocation = DevExpress.Utils.BeakPanelBeakLocation.Left;

## PictureEdit

Set Fit Image in PictureEdit     
https://www.devexpress.com/Support/Center/Question/Details/Q413142/set-fit-image-in-pictureedit

this.pictureEdit1.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;

## CardView
CardView.OptionsView.ShowHorzScrollBar property


## PDFViewer


## 이쁜블로그이미지
https://community.devexpress.com/Blogs/

## ftp 업로드
https://null486.tistory.com/1

## pdf c# webbrowser redirect page download
https://www.codeproject.com/Questions/120365/Downloading-files-without-direct-address-through-C          

this.pdfViewer1.DetachStreamAfterLoadComplete = true;


string pdfUrl = "";
//string requestUri = ""; ;
//string responseData;
//using (var client = new WebClient())
//{
//    responseData = client.DownloadString(requestUri);
//    MessageBox.Show(responseData);
//}
using (WebClient client = new WebClient())
{
    string html = client.DownloadString(pdfUrl);
    client.UseDefaultCredentials = true;
    //client.Credentials = new NetworkCredential("test", "test");
    //client.DownloadDataTaskAsync(pdfUrl);
    client.DownloadFileAsync(new Uri(pdfUrl), "Test.pdf");
    //client.DownloadDataCompleted += Client_DownloadDataCompleted;
    client.DownloadFileCompleted += Client_DownloadFileCompleted;
    //using (MemoryStream ms = new MemoryStream(fileBytes))
    //    pdfViewer1.LoadDocument(ms);
}
//pdfdocumentprocessor documentprocessor = new pdfdocumentprocessor();
//using (webclient client = new webclient())
//{
//    //client.usedefaultcredentials = true;
//    byte[] filebytes = client.downloaddata(pdfurl);
//    using (memorystream ms = new memorystream(filebytes))
//    {
//        pdfviewer1.loaddocument(ms);
//        documentprocessor.loaddocument(ms);
//    }
//}
////Process.Start(pdfUrl);
PdfDocumentProcessor documentProcessor = new PdfDocumentProcessor();
using (FileStream stream = new FileStream(pdfUrl, FileMode.Open, FileAccess.Read))
{
    byte[] pdfFileBytes = new byte[stream.Length];
    stream.Read(pdfFileBytes, 0, (int)stream.Length);
    documentProcessor.LoadDocument(stream);
}
}
catch (Exception ex)
{
MessageBox.Show(ex.Message);
}