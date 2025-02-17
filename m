Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FFCA37DD3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 10:06:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E32360DCB;
	Mon, 17 Feb 2025 09:06:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q18jU4LodHky; Mon, 17 Feb 2025 09:06:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F79460D96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739783208;
	bh=1gFWcgL2nc/w7maeL8agkCzpMTff372x5fRScL+I9ns=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oEruLdM4bTk8dHJQcecYq6kxsbGvJl+ZbXCJuR+0qPTzW+J8R5fm7y9naP/deYUKm
	 SLNPR1f2BQUlsdYa5Lj+rBv6Z4Fj1bkJeYj/4yx80Mx6Okfj1ISxZBEBuv8CCeONfT
	 wN6fFNvtZPEnvJArt8k2vne15d+UXryDrzkOGpLjleSC4p5H/xIkhFekuDjQVRZEpi
	 NzW57orqM7TTh5JkcT4tcDFwi93pHx4YkeBH2Dv36uP8gARUxEdWYrURSZNwqHrn9k
	 +hHvA9izJr87DY4p2aSTbBZYnDELjDga5CuhIpgPD3NGWauiyDw6sny1n92U3nc3vn
	 fx0QO/0/PfB2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F79460D96;
	Mon, 17 Feb 2025 09:06:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BD8AADE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E68940116
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WMVwRnxLuyqy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 09:06:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 90BAD4027C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90BAD4027C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 90BAD4027C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:44 +0000 (UTC)
X-CSE-ConnectionGUID: PoM8UlUERLmsXd47DfiRJQ==
X-CSE-MsgGUID: nVmAOaBMTESHQ4BvXxGZ6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="51078488"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="51078488"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 01:06:44 -0800
X-CSE-ConnectionGUID: RqZOrp0pSpqB+dnSogsfew==
X-CSE-MsgGUID: X04kE7UTQhiMpGJJpMMXGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="113937596"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa006.fm.intel.com with ESMTP; 17 Feb 2025 01:06:42 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 jedrzej.jagielski@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, anthony.l.nguyen@intel.com,
 dawid.osuchowski@intel.com, horms@kernel.org, pmenzel@molgen.mpg.de
Date: Mon, 17 Feb 2025 10:06:34 +0100
Message-ID: <20250217090636.25113-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
References: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739783204; x=1771319204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=txIlwQwBYmj3MwndSw3Y0eUYQAu1rReog22AiwBpQpQ=;
 b=YIiFu3EH/cMiEMJGOrZ6xMaiSZjJP4PskpF0MC+G2KOHYGxgSQNNLkzq
 1ik/8GKXNOTivN16HF7A0lMzSyiKaDOIOjV0SI1qJsExnyzk2AngRgoLk
 y0eD1DHseYomcb1/b3Kh+NYrSiONBcNEQTi3Dq8/6f7iGbCIcBtH7uGHA
 OINok3jjZtdtRQFBMOCpKgsSqKytKZeGcM6WD9yMkRxU8gvUsPlz4Xj10
 qMZJZjpWRbsi20zOayQNLLEe3pQDsor9TeGgm+3iGktPWqv7jMqm2Eols
 J62co53jVyIMSLCastZlw7A3JoGpMltehj6QZkQUBF8SqjC4Le94IQSB4
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YIiFu3EH
Subject: [Intel-wired-lan] [iwl-next v3 2/4] ixgbe: check for MDD events
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Don Skidmore <donald.c.skidmore@intel.com>

When an event is detected it is logged and, for the time being, the
queue is immediately re-enabled.  This is due to the lack of an API
to the hypervisor so it could deal with it as it chooses.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Don Skidmore <donald.c.skidmore@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.h    |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  2 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  3 ++
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 50 +++++++++++++++++++
 4 files changed, 56 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.h
index 0690ecb8dfa3..bc4cab976bf9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.h
@@ -15,6 +15,7 @@
 #ifdef CONFIG_PCI_IOV
 void ixgbe_restore_vf_multicasts(struct ixgbe_adapter *adapter);
 #endif
+bool ixgbe_check_mdd_event(struct ixgbe_adapter *adapter);
 void ixgbe_msg_task(struct ixgbe_adapter *adapter);
 int ixgbe_vf_configuration(struct pci_dev *pdev, unsigned int event_mask);
 void ixgbe_ping_all_vfs(struct ixgbe_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index d446c375335a..aa3b498558bc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -402,6 +402,8 @@ struct ixgbe_nvm_version {
 #define IXGBE_MRCTL(_i)      (0x0F600 + ((_i) * 4))
 #define IXGBE_VMRVLAN(_i)    (0x0F610 + ((_i) * 4))
 #define IXGBE_VMRVM(_i)      (0x0F630 + ((_i) * 4))
+#define IXGBE_LVMMC_RX	     0x2FA8
+#define IXGBE_LVMMC_TX	     0x8108
 #define IXGBE_WQBR_RX(_i)    (0x2FB0 + ((_i) * 4)) /* 4 total */
 #define IXGBE_WQBR_TX(_i)    (0x8130 + ((_i) * 4)) /* 4 total */
 #define IXGBE_L34T_IMIR(_i)  (0x0E800 + ((_i) * 4)) /*128 of these (0-127)*/
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 467f81239e12..3ff48207165c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7959,6 +7959,9 @@ static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
 	netif_carrier_on(netdev);
 	ixgbe_check_vf_rate_limit(adapter);
 
+	if (adapter->num_vfs && hw->mac.ops.enable_mdd)
+		hw->mac.ops.enable_mdd(hw);
+
 	/* enable transmits */
 	netif_tx_wake_all_queues(adapter->netdev);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index ccdce80edd14..c374ebd4a56b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -207,6 +207,7 @@ void ixgbe_enable_sriov(struct ixgbe_adapter *adapter, unsigned int max_vfs)
 int ixgbe_disable_sriov(struct ixgbe_adapter *adapter)
 {
 	unsigned int num_vfs = adapter->num_vfs, vf;
+	struct ixgbe_hw *hw = &adapter->hw;
 	unsigned long flags;
 	int rss;
 
@@ -237,6 +238,9 @@ int ixgbe_disable_sriov(struct ixgbe_adapter *adapter)
 	if (!(adapter->flags & IXGBE_FLAG_SRIOV_ENABLED))
 		return 0;
 
+	if (hw->mac.ops.disable_mdd)
+		hw->mac.ops.disable_mdd(hw);
+
 #ifdef CONFIG_PCI_IOV
 	/*
 	 * If our VFs are assigned we cannot shut down SR-IOV
@@ -1353,12 +1357,58 @@ static void ixgbe_rcv_ack_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 		ixgbe_write_mbx(hw, &msg, 1, vf);
 }
 
+/**
+ * ixgbe_check_mdd_event - check for MDD event on all VFs
+ * @adapter: pointer to ixgbe adapter
+ *
+ * Return: true if there is a VF on which MDD event occurred, false otherwise.
+ */
+bool ixgbe_check_mdd_event(struct ixgbe_adapter *adapter)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+	DECLARE_BITMAP(vf_bitmap, 64);
+	bool ret = false;
+	int i;
+
+	if (!hw->mac.ops.handle_mdd)
+		return false;
+
+	/* Did we have a malicious event */
+	hw->mac.ops.handle_mdd(hw, vf_bitmap);
+
+	/* Log any blocked queues and release lock */
+	for_each_set_bit(i, vf_bitmap, 64) {
+		dev_warn(&adapter->pdev->dev,
+			 "Malicious event on VF %d tx:%x rx:%x\n", i,
+			 IXGBE_READ_REG(hw, IXGBE_LVMMC_TX),
+			 IXGBE_READ_REG(hw, IXGBE_LVMMC_RX));
+
+		if (hw->mac.ops.restore_mdd_vf) {
+			u32 ping;
+
+			hw->mac.ops.restore_mdd_vf(hw, i);
+
+			/* get the VF to rebuild its queues */
+			adapter->vfinfo[i].clear_to_send = 0;
+			ping = IXGBE_PF_CONTROL_MSG |
+			       IXGBE_VT_MSGTYPE_CTS;
+			ixgbe_write_mbx(hw, &ping, 1, i);
+		}
+
+		ret = true;
+	}
+
+	return ret;
+}
+
 void ixgbe_msg_task(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	unsigned long flags;
 	u32 vf;
 
+	ixgbe_check_mdd_event(adapter);
+
 	spin_lock_irqsave(&adapter->vfs_lock, flags);
 	for (vf = 0; vf < adapter->num_vfs; vf++) {
 		/* process any reset requests */
-- 
2.42.0

