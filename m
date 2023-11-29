Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAB57FDFAA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 19:49:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A187141BEA;
	Wed, 29 Nov 2023 18:49:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A187141BEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701283750;
	bh=vN68oV1BEuLbYzc5KnxH8bX/MTEYFXwoz0XyQJ8I1y4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CzQhLUgUmugHanqRxxxMP5vIo6sMJIYkryXo3kZpmsS29aKh24CWNb0rzbF04cuRS
	 39+MX1+XVhVN3xk0iO6fvWDt+/I26OVl7ezyttB7Hm44G3NhUhzTUEBNl2i4SgpbA0
	 mYpti384qR35y/vE5Wb4WFLlM6EQN0JV2Z0vIiWUOxhR98s+F4UdIokS3bhiugqcWx
	 6KtRPkXHVQvqiSZhToLMslzNCP5JH+L0KMTj0EMtgkKIaj+pbZY1FHJVsWxXwDdt4F
	 FMryfd/6TZhwKb4ZCx9EOYqNfeAArTIoB3Puz4PDxWtw406wOomDAf/PlZ1MMl4bkl
	 O/W0LEvpCovBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXSEPhelrRTv; Wed, 29 Nov 2023 18:49:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33D5741BB0;
	Wed, 29 Nov 2023 18:49:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33D5741BB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EBE171BF286
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 18:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFFD861569
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 18:49:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFFD861569
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gPxi4eLXaGhy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 18:49:03 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 29 Nov 2023 18:49:03 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00BCF61560
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00BCF61560
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 18:49:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="193021"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; 
   d="scan'208";a="193021"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 10:41:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="772776470"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="772776470"
Received: from fedora-sys-rao.jf.intel.com (HELO f37-upstream-rao..)
 ([10.166.5.220])
 by fmsmga007.fm.intel.com with ESMTP; 29 Nov 2023 10:41:54 -0800
From: Ranganatha Rao <ranganatha.rao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Nov 2023 10:35:26 -0500
Message-ID: <20231129153526.57912-1-ranganatha.rao@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701283743; x=1732819743;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FuM6+pB8IDds+B7QD+pku6Po3IZK41UrFEWqjt8/w94=;
 b=bDL2Trl3yR6yorZKUgy9WI06EI74Bns+wQi798AoBimGD5XgUCU4qYP/
 PdApHdbjTrK1xCtc9J37IuwvpwFADFrBxY9BQTZpgxesXeHmfxXhOL2Jv
 4Jpsdn1eUnuMunpsisXZ9y2RR5e168lnGIkm2N56LkTveck+vsnbdIJga
 lCcL7JxjQy6HucMMOiJwLEomihN1YAj6jmswGAZyxCmmZ1em5zqVlnhsx
 /7OTFxUpt6kiPrIPyUGumWZQRtpJP2gTyLuGqn5+qyuiOhC2YKY1WBUHj
 G/RIGpRFDCpkAE4ySzp+LSjURlBCWbpF/G/L1ezakhlEVD6dWu3dQATHD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bDL2Trl3
Subject: [Intel-wired-lan] [PATCH iwl-net,
 v2] iavf: Fix iavf_shutdown to call iavf_remove instead iavf_close
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, Ranganatha Rao <ranganatha.rao@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Slawomir Laba <slawomirx.laba@intel.com>

Make the flow for pci shutdown be the same to the pci remove.

iavf_shutdown was implementing an incomplete version
of iavf_remove. It misses several calls to the kernel like
iavf_free_misc_irq, iavf_reset_interrupt_capability, iounmap
that might break the system on reboot or hibernation.

Implement the call of iavf_remove directly in iavf_shutdown to
close this gap.

Fixes below error messages (dmesg) during shutdown stress tests -
[685814.900917] ice 0000:88:00.0: MAC 02:d0:5f:82:43:5d does not exist for
 VF 0
[685814.900928] ice 0000:88:00.0: MAC 33:33:00:00:00:01 does not exist for
VF 0

Reproduction:

1. Create one VF interface:
echo 1 > /sys/class/net/<interface_name>/device/sriov_numvfs

2. Run live dmesg on the host:
dmesg -wH

3. On SUT, script below steps into vf_namespace_assignment.sh

<#!/bin/sh> // Remove <>. Git removes # line
if=<VF name> (edit this per VF name)
loop=0

while true; do

echo test round $loop
let loop++

ip netns add ns$loop
ip link set dev $if up
ip link set dev $if netns ns$loop
ip netns exec ns$loop ip link set dev $if up
ip netns exec ns$loop ip link set dev $if netns 1
ip netns delete ns$loop

done

4. Run the script for at least 1000 iterations on SUT:
./vf_namespace_assignment.sh

Expected result:
No errors in dmesg.

Fixes: 129cf89e5856 ("iavf: rename functions and structs to new name")
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Co-authored-by: Ranganatha Rao <ranganatha.rao@intel.com>
Signed-off-by: Ranganatha Rao <ranganatha.rao@intel.com>

---
v2: Add reproduction steps in commit log
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 72 ++++++---------------
 1 file changed, 21 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index c862ebcd2e39..3c177dcd3b38 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -276,27 +276,6 @@ void iavf_free_virt_mem(struct iavf_hw *hw, struct iavf_virt_mem *mem)
 	kfree(mem->va);
 }
 
-/**
- * iavf_lock_timeout - try to lock mutex but give up after timeout
- * @lock: mutex that should be locked
- * @msecs: timeout in msecs
- *
- * Returns 0 on success, negative on failure
- **/
-static int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
-{
-	unsigned int wait, delay = 10;
-
-	for (wait = 0; wait < msecs; wait += delay) {
-		if (mutex_trylock(lock))
-			return 0;
-
-		msleep(delay);
-	}
-
-	return -1;
-}
-
 /**
  * iavf_schedule_reset - Set the flags and schedule a reset event
  * @adapter: board private structure
@@ -4825,34 +4804,6 @@ int iavf_process_config(struct iavf_adapter *adapter)
 	return 0;
 }
 
-/**
- * iavf_shutdown - Shutdown the device in preparation for a reboot
- * @pdev: pci device structure
- **/
-static void iavf_shutdown(struct pci_dev *pdev)
-{
-	struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
-	struct net_device *netdev = adapter->netdev;
-
-	netif_device_detach(netdev);
-
-	if (netif_running(netdev))
-		iavf_close(netdev);
-
-	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
-		dev_warn(&adapter->pdev->dev, "%s: failed to acquire crit_lock\n", __func__);
-	/* Prevent the watchdog from running. */
-	iavf_change_state(adapter, __IAVF_REMOVE);
-	adapter->aq_required = 0;
-	mutex_unlock(&adapter->crit_lock);
-
-#ifdef CONFIG_PM
-	pci_save_state(pdev);
-
-#endif
-	pci_disable_device(pdev);
-}
-
 /**
  * iavf_probe - Device Initialization Routine
  * @pdev: PCI device information struct
@@ -5063,16 +5014,21 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
  **/
 static void iavf_remove(struct pci_dev *pdev)
 {
-	struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
 	struct iavf_fdir_fltr *fdir, *fdirtmp;
 	struct iavf_vlan_filter *vlf, *vlftmp;
 	struct iavf_cloud_filter *cf, *cftmp;
 	struct iavf_adv_rss *rss, *rsstmp;
 	struct iavf_mac_filter *f, *ftmp;
+	struct iavf_adapter *adapter;
 	struct net_device *netdev;
 	struct iavf_hw *hw;
 
-	netdev = adapter->netdev;
+	/* Don't proceed with remove if netdev is already freed */
+	netdev = pci_get_drvdata(pdev);
+	if (!netdev)
+		return;
+
+	adapter = iavf_pdev_to_adapter(pdev);
 	hw = &adapter->hw;
 
 	if (test_and_set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
@@ -5184,11 +5140,25 @@ static void iavf_remove(struct pci_dev *pdev)
 
 	destroy_workqueue(adapter->wq);
 
+	pci_set_drvdata(pdev, NULL);
+
 	free_netdev(netdev);
 
 	pci_disable_device(pdev);
 }
 
+/**
+ * iavf_shutdown - Shutdown the device in preparation for a reboot
+ * @pdev: pci device structure
+ **/
+static void iavf_shutdown(struct pci_dev *pdev)
+{
+	iavf_remove(pdev);
+
+	if (system_state == SYSTEM_POWER_OFF)
+		pci_set_power_state(pdev, PCI_D3hot);
+}
+
 static SIMPLE_DEV_PM_OPS(iavf_pm_ops, iavf_suspend, iavf_resume);
 
 static struct pci_driver iavf_driver = {
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
