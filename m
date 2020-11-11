Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E43BE2AE863
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 06:49:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B20C276D4;
	Wed, 11 Nov 2020 05:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TAZXlZjE5jG4; Wed, 11 Nov 2020 05:49:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3A13D273E3;
	Wed, 11 Nov 2020 05:49:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7FCB61BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B89286362
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qne_WTiLZEol for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 05:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB918862FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:49:10 +0000 (UTC)
IronPort-SDR: gcowrlJ7bW2X1zZfvp0kcRGPz8oR67sBWhGXdmlX+zpM1oL9kje85Gk808bp7xZYUyMifpguF/
 nVZimjx8umww==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="157107017"
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="157107017"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 21:49:08 -0800
IronPort-SDR: OWzgtDSwc83Sx2x0TyK831KhNCjvBKLd8K/TSF5eg6lkvgJRfiFlD5SJWGjJ+XrmkWdCxdOF34
 d1cJFueasE+g==
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="308336366"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 21:49:05 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Nov 2020 13:51:33 +0800
Message-Id: <a0ed34e3486583770c6d0ee043a3ba9d7b08f504.1605073208.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1605073208.git.yu.c.chen@intel.com>
References: <cover.1605073208.git.yu.c.chen@intel.com>
Subject: [Intel-wired-lan] [PATCH 2/4][RFC] PM: sleep: export
 device_pm_remove() for driver use
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Len Brown <len.brown@intel.com>, Chen Yu <yu.c.chen@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org, "Brandt,
 Todd E" <todd.e.brandt@intel.com>, Zhang Rui <rui.zhang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Export device_pm_remove() and move the declaration of device_pm_remove()
into generic power header file so that the drivers could use this interface
to disable power management on that device.

Signed-off-by: Chen Yu <yu.c.chen@intel.com>
---
 drivers/base/power/main.c  |  1 +
 drivers/base/power/power.h |  8 --------
 include/linux/pm.h         | 12 ++++++++++++
 3 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/base/power/main.c b/drivers/base/power/main.c
index c7ac49042cee..4693da9d7d80 100644
--- a/drivers/base/power/main.c
+++ b/drivers/base/power/main.c
@@ -164,6 +164,7 @@ void device_pm_remove(struct device *dev)
 	pm_runtime_remove(dev);
 	device_pm_check_callbacks(dev);
 }
+EXPORT_SYMBOL_GPL(device_pm_remove);
 
 /**
  * device_pm_move_before - Move device in the PM core's list of active devices.
diff --git a/drivers/base/power/power.h b/drivers/base/power/power.h
index 54292cdd7808..8c2e45f3e5a9 100644
--- a/drivers/base/power/power.h
+++ b/drivers/base/power/power.h
@@ -20,7 +20,6 @@ static inline void pm_runtime_early_init(struct device *dev)
 
 extern void pm_runtime_init(struct device *dev);
 extern void pm_runtime_reinit(struct device *dev);
-extern void pm_runtime_remove(struct device *dev);
 extern u64 pm_runtime_active_time(struct device *dev);
 
 #define WAKE_IRQ_DEDICATED_ALLOCATED	BIT(0)
@@ -85,7 +84,6 @@ static inline void pm_runtime_early_init(struct device *dev)
 
 static inline void pm_runtime_init(struct device *dev) {}
 static inline void pm_runtime_reinit(struct device *dev) {}
-static inline void pm_runtime_remove(struct device *dev) {}
 
 static inline int dpm_sysfs_add(struct device *dev) { return 0; }
 static inline void dpm_sysfs_remove(struct device *dev) {}
@@ -109,7 +107,6 @@ static inline struct device *to_device(struct list_head *entry)
 
 extern void device_pm_sleep_init(struct device *dev);
 extern void device_pm_add(struct device *);
-extern void device_pm_remove(struct device *);
 extern void device_pm_move_before(struct device *, struct device *);
 extern void device_pm_move_after(struct device *, struct device *);
 extern void device_pm_move_last(struct device *);
@@ -133,11 +130,6 @@ static inline void device_pm_sleep_init(struct device *dev) {}
 
 static inline void device_pm_add(struct device *dev) {}
 
-static inline void device_pm_remove(struct device *dev)
-{
-	pm_runtime_remove(dev);
-}
-
 static inline void device_pm_move_before(struct device *deva,
 					 struct device *devb) {}
 static inline void device_pm_move_after(struct device *deva,
diff --git a/include/linux/pm.h b/include/linux/pm.h
index 47aca6bac1d6..f9ceca6ac7ff 100644
--- a/include/linux/pm.h
+++ b/include/linux/pm.h
@@ -701,6 +701,11 @@ struct dev_pm_domain {
  * be able to use wakeup events to exit from runtime low-power states,
  * or from system low-power states such as standby or suspend-to-RAM.
  */
+#ifdef CONFIG_PM
+extern void pm_runtime_remove(struct device *dev);
+#else
+static inline void pm_runtime_remove(struct device *dev) {}
+#endif
 
 #ifdef CONFIG_PM_SLEEP
 extern void device_pm_lock(void);
@@ -753,6 +758,8 @@ extern void pm_generic_complete(struct device *dev);
 extern bool dev_pm_skip_resume(struct device *dev);
 extern bool dev_pm_skip_suspend(struct device *dev);
 
+extern void device_pm_remove(struct device *dev);
+
 #else /* !CONFIG_PM_SLEEP */
 
 #define device_pm_lock() do {} while (0)
@@ -774,6 +781,11 @@ static inline void dpm_for_each_dev(void *data, void (*fn)(struct device *, void
 {
 }
 
+static inline void device_pm_remove(struct device *dev)
+{
+	pm_runtime_remove(dev);
+}
+
 #define pm_generic_prepare		NULL
 #define pm_generic_suspend_late		NULL
 #define pm_generic_suspend_noirq	NULL
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
