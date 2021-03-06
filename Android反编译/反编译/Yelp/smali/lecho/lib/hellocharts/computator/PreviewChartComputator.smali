.class public Llecho/lib/hellocharts/computator/PreviewChartComputator;
.super Llecho/lib/hellocharts/computator/ChartComputator;
.source "PreviewChartComputator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Llecho/lib/hellocharts/computator/ChartComputator;-><init>()V

    return-void
.end method


# virtual methods
.method public computeRawX(F)F
    .locals 4
    .parameter "valueX"

    .prologue
    .line 12
    iget-object v1, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float v1, p1, v1

    iget-object v2, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 14
    .local v0, pixelOffset:F
    iget-object v1, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    return v1
.end method

.method public computeRawY(F)F
    .locals 4
    .parameter "valueY"

    .prologue
    .line 18
    iget-object v1, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    sub-float v1, p1, v1

    iget-object v2, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 20
    .local v0, pixelOffset:F
    iget-object v1, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    return v1
.end method

.method public constrainViewport(FFFF)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Llecho/lib/hellocharts/computator/ChartComputator;->constrainViewport(FFFF)V

    .line 33
    iget-object v0, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->viewportChangeListener:Llecho/lib/hellocharts/listener/ViewportChangeListener;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/listener/ViewportChangeListener;->onViewportChanged(Llecho/lib/hellocharts/model/Viewport;)V

    .line 34
    return-void
.end method

.method public getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    return-object v0
.end method

.method public setVisibleViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 0
    .parameter "visibleViewport"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/computator/PreviewChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 29
    return-void
.end method
