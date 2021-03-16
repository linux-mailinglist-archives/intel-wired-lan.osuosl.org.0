Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7A933E0D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 22:51:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93BC583E94;
	Tue, 16 Mar 2021 21:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jhBUfOrQi9QU; Tue, 16 Mar 2021 21:51:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F15483E5F;
	Tue, 16 Mar 2021 21:51:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1ED1B1BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 21:50:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08828431C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 21:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0a1PR1txFER7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 21:50:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4EB0F43198
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 21:50:05 +0000 (UTC)
IronPort-SDR: fJbM62QmCxOicIMdYOoKmHxbahjUv0LcxOKTpGvKsaLAxECjdDULDxS68boixQ2obKssuinJnh
 bowSgIZahyDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="189434459"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="189434459"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 14:50:04 -0700
IronPort-SDR: EpUR9PTr0FWi6YsbtcIl+/iJ2++gHevox7KEbGtvPMX/C2x8DRDD5NZXiw55NV/cDlhgR4BaTS
 kST7NdoNr/jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="405682307"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2021 14:50:03 -0700
Received: from debox1-desk2.jf.intel.com (debox1-desk2.jf.intel.com
 [10.54.75.16])
 by linux.intel.com (Postfix) with ESMTP id AAE5E5807EA;
 Tue, 16 Mar 2021 14:50:03 -0700 (PDT)
From: "David E. Box" <david.e.box@linux.intel.com>
To: irenic.rajneesh@gmail.com,
	hdegoede@redhat.com,
	mgross@linux.intel.com
Date: Tue, 16 Mar 2021 14:49:34 -0700
Message-Id: <20210316214934.2992637-2-david.e.box@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210316214934.2992637-1-david.e.box@linux.intel.com>
References: <20210316214934.2992637-1-david.e.box@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 16 Mar 2021 21:51:16 +0000
Subject: [Intel-wired-lan] [PATCH V2 2/2] platform/x86: intel_pmc: Ignore
 GBE LTR on Tiger Lake platforms
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
Cc: intel-wired-lan@lists.osuosl.org, gayatri.kammela@intel.com,
 "David E. Box" <david.e.box@linux.intel.com>, Mario.Limonciello@dell.com
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
Reviewed-by: Rajneesh Bhardwaj <irenic.rajneesh@gmail.com>
---
Changes in V2:
	- Pass the bit position instead of the entire mask to the ltr_ignore
	  fuction
	- Rename the write_ltr_ignore to send_ltr_ignore to differentiate it
	  from the caller, ltr_ignore_write.
	- Rename variables for clarity

 drivers/platform/x86/intel_pmc_core.c | 59 ++++++++++++++++++++-------
 1 file changed, 44 insertions(+), 15 deletions(-)

diff --git a/drivers/platform/x86/intel_pmc_core.c b/drivers/platform/x86/intel_pmc_core.c
index ee2f757515b0..8d799cfa0e9f 100644
--- a/drivers/platform/x86/intel_pmc_core.c
+++ b/drivers/platform/x86/intel_pmc_core.c
@@ -863,34 +863,45 @@ static int pmc_core_pll_show(struct seq_file *s, void *unused)
 }
 DEFINE_SHOW_ATTRIBUTE(pmc_core_pll);
 
-static ssize_t pmc_core_ltr_ignore_write(struct file *file,
-					 const char __user *userbuf,
-					 size_t count, loff_t *ppos)
+static int pmc_core_send_ltr_ignore(u32 value)
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
+	u32 reg;
+	int err = 0;
 
 	mutex_lock(&pmcdev->lock);
 
-	if (val > map->ltr_ignore_max) {
+	if (value > map->ltr_ignore_max) {
 		err = -EINVAL;
 		goto out_unlock;
 	}
 
-	fd = pmc_core_reg_read(pmcdev, map->ltr_ignore_offset);
-	fd |= (1U << val);
-	pmc_core_reg_write(pmcdev, map->ltr_ignore_offset, fd);
+	reg = pmc_core_reg_read(pmcdev, map->ltr_ignore_offset);
+	reg |= (1U << value);
+	pmc_core_reg_write(pmcdev, map->ltr_ignore_offset, reg);
 
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
+	u32 buf_size, value;
+	int err;
+
+	buf_size = count < 64 ? count : 64;
+
+	err = kstrtou32_from_user(userbuf, buf_size, 10, &value);
+	if (err)
+		return err;
+
+	err = pmc_core_send_ltr_ignore(value);
+
 	return err == 0 ? count : err;
 }
 
@@ -1189,6 +1200,15 @@ static int quirk_xtal_ignore(const struct dmi_system_id *id)
 	return 0;
 }
 
+static int quirk_ltr_ignore(u32 value)
+{
+	int err;
+
+	err = pmc_core_send_ltr_ignore(value);
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
+		quirk_ltr_ignore(3);
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
