Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B83359A7E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Apr 2021 11:59:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33CB460E15;
	Fri,  9 Apr 2021 09:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w2qwWDLAlmvs; Fri,  9 Apr 2021 09:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1ACD1607F0;
	Fri,  9 Apr 2021 09:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48FC71BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 09:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FC2B402DE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 09:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CIZzPiQd79l8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Apr 2021 09:59:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F47640E94
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 09:59:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0BEB5611C1;
 Fri,  9 Apr 2021 09:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617962345;
 bh=JQHc71NngkcjmgohfZTxTKQYodA59kNCBc74PtxrA+8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hdWAqgOxvuV50wtIFmXaZLGINpdEq636XF8pEaML/662Fe7h+v7sObJtr1Dtq7viZ
 UGo2c5AxDKCik8jS0z+bkZjyB0QCZCqF2hj+PpocUD8cXiXWkPqz2hMhbkIhBASyyr
 lAJi7KyoXiN2cH3cvE7XwvX3HwsoSy9SuSNMNvy4=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Fri,  9 Apr 2021 11:53:44 +0200
Message-Id: <20210409095305.542546686@linuxfoundation.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210409095304.818847860@linuxfoundation.org>
References: <20210409095304.818847860@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 5.10 22/41] platform/x86: intel_pmc_core:
 Ignore GBE LTR on Tiger Lake platforms
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, intel-wired-lan@lists.osuosl.org,
 "David E. Box" <david.e.box@linux.intel.com>,
 Rajneesh Bhardwaj <irenic.rajneesh@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: David E. Box <david.e.box@linux.intel.com>

[ Upstream commit d1635448f1105e549b4041aab930dbc6945fc635 ]

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
Link: https://lore.kernel.org/r/20210319201844.3305399-2-david.e.box@linux.intel.com
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/platform/x86/intel_pmc_core.c | 50 +++++++++++++++++++--------
 1 file changed, 35 insertions(+), 15 deletions(-)

diff --git a/drivers/platform/x86/intel_pmc_core.c b/drivers/platform/x86/intel_pmc_core.c
index 3e5fe66333f1..e06b36e87a33 100644
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
+	reg |= BIT(value);
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
+	buf_size = min_t(u32, count, 64);
+
+	err = kstrtou32_from_user(userbuf, buf_size, 10, &value);
+	if (err)
+		return err;
+
+	err = pmc_core_send_ltr_ignore(value);
+
 	return err == 0 ? count : err;
 }
 
@@ -1244,6 +1255,15 @@ static int pmc_core_probe(struct platform_device *pdev)
 	pmcdev->pmc_xram_read_bit = pmc_core_check_read_lock_bit();
 	dmi_check_system(pmc_core_dmi_table);
 
+	/*
+	 * On TGL, due to a hardware limitation, the GBE LTR blocks PC10 when
+	 * a cable is attached. Tell the PMC to ignore it.
+	 */
+	if (pmcdev->map == &tgl_reg_map) {
+		dev_dbg(&pdev->dev, "ignoring GBE LTR\n");
+		pmc_core_send_ltr_ignore(3);
+	}
+
 	pmc_core_dbgfs_register(pmcdev);
 
 	device_initialized = true;
-- 
2.30.2



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
