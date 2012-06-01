.class public Lcom/android/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserActivity$PackageInstallObserver;
    }
.end annotation


# static fields
.field public static final ACTION_RESTART:Ljava/lang/String; = "--restart--"

.field public static final ACTION_SHOW_BOOKMARKS:Ljava/lang/String; = "show_bookmarks"

.field public static final ACTION_SHOW_BROWSER:Ljava/lang/String; = "show_browser"

.field private static final EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final LOGV_ENABLED:Z


# instance fields
.field private mController:Lcom/android/browser/Controller;

.field private mUi:Lcom/android/browser/UI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    return-void
.end method

.method private checkFlashPlayerInstalled()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/android/browser/BrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$1;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 143
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getController()Lcom/android/browser/Controller;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 305
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 306
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 299
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 300
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/Controller;->onActivityResult(IILandroid/content/Intent;)V

    .line 312
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 198
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 199
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 95
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v3, Lcom/android/browser/Controller;

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-direct {v3, p0, v2}, Lcom/android/browser/Controller;-><init>(Landroid/app/Activity;Z)V

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    .line 79
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v1

    .line 80
    .local v1, xlarge:Z
    if-eqz v1, :cond_3

    .line 81
    new-instance v2, Lcom/android/browser/XLargeUi;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-direct {v2, p0, v3}, Lcom/android/browser/XLargeUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    iput-object v2, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    .line 85
    :goto_2
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    invoke-virtual {v2, v3}, Lcom/android/browser/Controller;->setUi(Lcom/android/browser/UI;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, state:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 89
    move-object p1, v0

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->checkFlashPlayerInstalled()V

    .line 94
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/browser/Controller;->start(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    .end local v0           #state:Landroid/os/Bundle;
    .end local v1           #xlarge:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 83
    .restart local v1       #xlarge:Z
    :cond_3
    new-instance v2, Lcom/android/browser/PhoneUi;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-direct {v2, p0, v3}, Lcom/android/browser/PhoneUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    iput-object v2, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/Controller;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 271
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 250
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 228
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onDestroy()V

    .line 231
    :cond_0
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    .line 232
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    .line 233
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 244
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onLowMemory()V

    .line 245
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 187
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 158
    const-string v1, "--restart--"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, outState:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1, v0}, Lcom/android/browser/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 162
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/browser/BrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    .end local v0           #outState:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1, p1}, Lcom/android/browser/Controller;->handleNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 193
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onPause()V

    .line 219
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 220
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 256
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 177
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onResume()V

    .line 180
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onSearchRequested()Z

    move-result v0

    return v0
.end method
