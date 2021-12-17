Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5902E478590
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 08:30:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E086741BE8;
	Fri, 17 Dec 2021 07:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e6_9oGx6xt-O; Fri, 17 Dec 2021 07:30:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF57941BE4;
	Fri, 17 Dec 2021 07:30:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D01281BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 07:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBC1B40B78
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 07:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cHAm-FaPSpdU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 07:30:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A81BC4042B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 07:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639726249; x=1671262249;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b/gt4CGZIp9AAQ6mVyY4FFEN9pl7MRWbFehL1ZJYoq0=;
 b=bRjYZoVCvdlsJpwjxHlbVdLN9ByiQgpSSBaa1DNOxFDqstF6XYzS5v/s
 j4kJsxGBcZgsC7wKltH/mp5T6ova6Wma/jDdVEkaSFYDo0jjO6g88UQen
 mif/gNVsUHjftJU4Hut+Q2pNo3KfP527STYxAbLqLSkBq9iC05bbNYdr6
 gRX3zY/Z1FE0XrAT/ktHq3L0419+7XSXYnRb3WyOGGUxYwyAEYkiocZL6
 7s17HA+ChGntjVXDCwbo18iYb1nUCGkPxeeB5um8qjyx3x6pMsE6ksicL
 M0/SI1II6ypSuKSwu8W19yUHlSNY727EetKYqFthJYKoekv/wgIrjTJPD g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="219714288"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="219714288"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 23:30:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="466410923"
Received: from amlin-19-169.igk.intel.com ([10.102.19.169])
 by orsmga006.jf.intel.com with ESMTP; 16 Dec 2021 23:30:47 -0800
From: "Sornek, Karen" <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Dec 2021 08:32:16 +0100
Message-Id: <20211217073216.257633-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix reset path while
 removing the driver
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>,
 Karen Sornek <karen.sornek@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karen Sornek <karen.sornek@intel.com>

Fix the crash in kernel while dereferencing the NULL pointer,
when the driver is unloaded and simultaneously the vsi rings
are being stopped.

The hardware requires 50msec in order to finish RX queues
disable. For this purpose the driver spins in mdelay function
for the operation to be completed.

For example changing number of queues which requires reset would
fail in the following call stack:

1) i40e_prep_for_reset
2) i40e_pf_quiesce_all_vsi
3) i40e_quiesce_vsi
4) i40e_vsi_close
5) i40e_down
6) i40e_vsi_stop_rings
7) i40e_vsi_control_rx -> disable requires the delay of 50msecs
8) continue back in i40e_down function where
   i40e_clean_tx_ring(vsi->tx_rings[i]) is going to crash

When the driver was spinning vsi_release called
i40e_vsi_free_arrays where the vsi->tx_rings resources
were freed and the pointer was set to NULL.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c | 12 ++++++++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 8b2edacb0a30..707805c339f6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -144,6 +144,7 @@ enum i40e_state_t {
 	__I40E_VIRTCHNL_OP_PENDING,
 	__I40E_RECOVERY_MODE,
 	__I40E_VF_RESETS_DISABLED,	/* disable resets during i40e_remove */
+	__I40E_IN_REMOVE,
 	__I40E_VFS_RELEASING,
 	/* This must be last as it determines the size of the BITMAP */
 	__I40E_STATE_SIZE__,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5e01875c7961..a850a75adc69 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10763,6 +10763,9 @@ static void i40e_reset_and_rebuild(struct i40e_pf *pf, bool reinit,
 				   bool lock_acquired)
 {
 	int ret;
+
+	if (test_bit(__I40E_IN_REMOVE, pf->state))
+		return;
 	/* Now we wait for GRST to settle out.
 	 * We don't have to delete the VEBs or VSIs from the hw switch
 	 * because the reset will make them disappear.
@@ -12122,6 +12125,8 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count)
 
 		vsi->req_queue_pairs = queue_count;
 		i40e_prep_for_reset(pf);
+		if (test_bit(__I40E_IN_REMOVE, pf->state))
+			return pf->alloc_rss_size;
 
 		pf->alloc_rss_size = new_rss_size;
 
@@ -12948,6 +12953,10 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 	if (need_reset)
 		i40e_prep_for_reset(pf);
 
+	/* VSI shall be deleted in a moment, just return EINVAL */
+	if (test_bit(__I40E_IN_REMOVE, pf->state))
+		return -EINVAL;
+
 	old_prog = xchg(&vsi->xdp_prog, prog);
 
 	if (need_reset) {
@@ -16035,6 +16044,9 @@ static void i40e_pci_error_reset_done(struct pci_dev *pdev)
 {
 	struct i40e_pf *pf = pci_get_drvdata(pdev);
 
+	if (test_bit(__I40E_IN_REMOVE, pf->state))
+		return;
+
 	i40e_reset_and_rebuild(pf, false, false);
 }
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
