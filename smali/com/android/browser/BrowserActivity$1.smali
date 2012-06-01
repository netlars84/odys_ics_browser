.class Lcom/android/browser/BrowserActivity$1;
.super Landroid/os/AsyncTask;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->checkFlashPlayerInstalled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$1;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 13
    .parameter "unused"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, flashPlayerInstalled:Z
    const-string v3, "Installing flash player"

    .line 108
    .local v3, installationInfo:Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 109
    .local v4, installedPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/browser/BrowserActivity$1;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v11}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 110
    .local v10, pm:Landroid/content/pm/PackageManager;
    if-eqz v10, :cond_1

    .line 111
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 112
    .local v9, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 113
    .local v8, p:Landroid/content/pm/PackageInfo;
    const-string v11, "com.adobe.flashplayer"

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 114
    const/4 v1, 0x1

    .line 115
    const-string v11, "checkFlashPlayerInstalled"

    const-string v12, "Adobe flash player installed."

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v3, 0x0

    .line 133
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #installationInfo:Ljava/lang/String;
    .end local v8           #p:Landroid/content/pm/PackageInfo;
    .end local v9           #packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_0
    return-object v3

    .line 121
    .restart local v3       #installationInfo:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    const-string v11, "app.autoinstall.flashplayer"

    const-string v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 123
    const-string v11, "checkFlashPlayerInstalled"

    const-string v12, "Installing adobe flash player."

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Ljava/io/File;

    const-string v11, "/system/app/flashplayer"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, file:Ljava/io/File;
    iget-object v11, p0, Lcom/android/browser/BrowserActivity$1;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v11}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, installerPackageName:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 128
    .local v6, mPackageURI:Landroid/net/Uri;
    new-instance v7, Lcom/android/browser/BrowserActivity$PackageInstallObserver;

    iget-object v11, p0, Lcom/android/browser/BrowserActivity$1;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v7, v11}, Lcom/android/browser/BrowserActivity$PackageInstallObserver;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 129
    .local v7, observer:Lcom/android/browser/BrowserActivity$PackageInstallObserver;
    const/4 v11, 0x0

    invoke-virtual {v10, v6, v7, v11, v5}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v0           #file:Ljava/io/File;
    .end local v5           #installerPackageName:Ljava/lang/String;
    .end local v6           #mPackageURI:Landroid/net/Uri;
    .end local v7           #observer:Lcom/android/browser/BrowserActivity$PackageInstallObserver;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "installationInfo"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$1;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    :cond_0
    return-void
.end method
