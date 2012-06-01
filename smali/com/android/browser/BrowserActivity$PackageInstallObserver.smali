.class Lcom/android/browser/BrowserActivity$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$PackageInstallObserver;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 99
    return-void
.end method
