Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 124DD32F37F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Mar 2021 20:08:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6408683CBB;
	Fri,  5 Mar 2021 19:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FmvT79JKsv0V; Fri,  5 Mar 2021 19:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40CE883ED0;
	Fri,  5 Mar 2021 19:08:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08E601BF34C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 19:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB4D1605EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 19:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 69bTAIp4YXVU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Mar 2021 19:07:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 37686605E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 19:07:17 +0000 (UTC)
IronPort-SDR: Frmu71l1C/O4wFzflKZWCenG1PRVLvQp4feXFDRrzfHDUqIBb1puSVb2Vtz6iXomVf1TZQMnwY
 0lyH3853C09g==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="185310250"
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="185310250"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 11:07:16 -0800
IronPort-SDR: 6OrOR0E3cTy0QjhjPeFjufHi6tbE72inF3ZI1AHfVGI0mZRGq0n+HZA5CuXUNN4Qq7NzOYqLEE
 eVKqPNatsk2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="508166776"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2021 11:07:16 -0800
Received: from debox1-desk2.jf.intel.com (debox1-desk2.jf.intel.com
 [10.54.75.16])
 by linux.intel.com (Postfix) with ESMTP id EC20B580717;
 Fri,  5 Mar 2021 11:07:15 -0800 (PST)
From: "David E. Box" <david.e.box@linux.intel.com>
To: irenic.rajneesh@gmail.com, hdegoede@redhat.com, mgross@linux.intel.com,
 sasha.neftin@intel.com
Date: Fri,  5 Mar 2021 11:06:08 -0800
Message-Id: <20210305190608.1834164-1-david.e.box@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 05 Mar 2021 19:08:37 +0000
Subject: [Intel-wired-lan] [PATCH] platform/x86: intel_pmc: Ignore GBE LTR
 on Tiger Lake platforms
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 "David E. Box" <david.e.box@linux.intel.com>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Due to a HW limitation, the Latency Tolerance Reporting (LTR) value
programmed in the Tiger Lake GBE controller is not large enough to allow
the platform to enter Package C10, which in turn prevents the platform from
achieving its low power target during suspend-to-idle.  Ignore the GBE LTR
value on Tiger Lake. LTR ignore functionality is currently performed solely
by a debugfs write call. Split out the LTR code into its own function that
can be called by both the debugfs writer and by this work around.

Signed-off-by: David E. Box <david.e.box@linux.intel.com>
Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
---
 drivers/platform/x86/intel_pmc_core.c | 55 ++++++++++++++++++++-------
 1 file changed, 42 insertions(+), 13 deletions(-)

diff --git a/drivers/platform/x86/intel_pmc_core.c b/drivers/platform/x86/intel_pmc_core.c
index ee2f757515b0..ab31eb646a1a 100644
--- a/drivers/platform/x86/intel_pmc_core.c
+++ b/drivers/platform/x86/intel_pmc_core.c
@@ -863,34 +863,45 @@ static int pmc_core_pll_show(struct seq_file *s, void *unused)
 }
 DEFINE_SHOW_ATTRIBUTE(pmc_core_pll);
 
-static ssize_t pmc_core_ltr_ignore_write(struct file *file,
-					 const char __user *userbuf,
-					 size_t count, loff_t *ppos)
+static int pmc_core_write_ltr_ignore(u32 value)
 {
 	struct pmc_dev *pmcdev = &pmc;
 	const struct pmc_reg_map *map = pmcdev->map;
-	u32 val, buf_size, fd;
-	int err;
-
-	buf_size = count < 64 ? count : 64;
-
-	err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
-	if (err)
-		return err;
+	u32 fd;
+	int err = 0;
 
 	mutex_lock(&pmcdev->lock);
 
-	if (val > map->ltr_ignore_max) {
+	if (fls(value) > map->ltr_ignore_max) {
 		err = -EINVAL;
 		goto out_unlock;
 	}
 
 	fd = pmc_core_reg_read(pmcdev, map->ltr_ignore_offset);
-	fd |= (1U << val);
+	fd |= value;
 	pmc_core_reg_write(pmcdev, map->ltr_ignore_offset, fd);
 
 out_unlock:
 	mutex_unlock(&pmcdev->lock);
+
+	return err;
+}
+
+static ssize_t pmc_core_ltr_ignore_write(struct file *file,
+					 const char __user *userbuf,
+					 size_t count, loff_t *ppos)
+{
+	u32 buf_size, val;
+	int err;
+
+	buf_size = count < 64 ? count : 64;
+
+	err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
+	if (err)
+		return err;
+
+	err = pmc_core_write_ltr_ignore(1U << val);
+
 	return err == 0 ? count : err;
 }
 
@@ -1189,6 +1200,15 @@ static int quirk_xtal_ignore(const struct dmi_system_id *id)
 	return 0;
 }
 
+static int quirk_ltr_ignore(u32 val)
+{
+	int err;
+
+	err = pmc_core_write_ltr_ignore(val);
+
+	return err;
+}
+
 static const struct dmi_system_id pmc_core_dmi_table[]  = {
 	{
 	.callback = quirk_xtal_ignore,
@@ -1244,6 +1264,15 @@ static int pmc_core_probe(struct platform_device *pdev)
 	pmcdev->pmc_xram_read_bit = pmc_core_check_read_lock_bit();
 	dmi_check_system(pmc_core_dmi_table);
 
+	/*
+	 * On TGL, due to a hardware limitation, the GBE LTR blocks PC10 when
+	 * a cable is attached. Tell the PMC to ignore it.
+	 */
+	if (pmcdev->map == &tgl_reg_map) {
+		dev_dbg(&pdev->dev, "ignoring GBE LTR\n");
+		quirk_ltr_ignore(1U << 3);
+	}
+
 	pmc_core_dbgfs_register(pmcdev);
 
 	device_initialized = true;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
