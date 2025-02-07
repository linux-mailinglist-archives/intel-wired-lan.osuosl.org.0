Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6624A2C0CE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 11:43:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D96D8482F;
	Fri,  7 Feb 2025 10:43:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BImHM61AGYa1; Fri,  7 Feb 2025 10:43:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7560E849ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738925034;
	bh=1gFWcgL2nc/w7maeL8agkCzpMTff372x5fRScL+I9ns=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=skduFPkU25WFl0eizDoBf1kLrwWNIh1gjoTmPa9Jd22k4lsQy8YLWy40KQH7JuUB9
	 RdeNeTmpCpTqC3rvhMwhbZrjq4fvFf985IgpX1hwLzh5pew+6CC3pVjGGSGMmoudHv
	 CP7aQu9drYb/FHzzmKaAa5wedlSnmjpVb+w4lozq3T+kGdScfQHBhQ/NJr5Ls/UtD/
	 Bf0CCotv4YY0dVyGJBQEp0Qzj3igtEZ4d4MeTxBW3T/dzyh2jLv2IksjjbfljJyL3x
	 dLl0kLLMWQdg0nZNdUvU7xX6u+Db98uOUCxCHlEP600ZzUZXzdzD7UCsHKyzpFL6Qg
	 xqzb4guYW4zXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7560E849ED;
	Fri,  7 Feb 2025 10:43:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 62731C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:43:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5184A40425
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:43:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gaXJowdI99Ig for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 10:43:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1DF83403FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DF83403FC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DF83403FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:43:50 +0000 (UTC)
X-CSE-ConnectionGUID: IZrt3b9JTuCxWshvzT7lww==
X-CSE-MsgGUID: NzPgTzJKS0G3ZJThy+gnfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="62039833"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="62039833"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:43:51 -0800
X-CSE-ConnectionGUID: K0TRHe6oQx2sXk5O7g63KQ==
X-CSE-MsgGUID: ZfoTiboIQa+losFgjaf0dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="116429791"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa003.jf.intel.com with ESMTP; 07 Feb 2025 02:43:48 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 jedrzej.jagielski@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, anthony.l.nguyen@intel.com,
 dawid.osuchowski@intel.com
Date: Fri,  7 Feb 2025 11:43:41 +0100
Message-ID: <20250207104343.2791001-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250207104343.2791001-1-michal.swiatkowski@linux.intel.com>
References: <20250207104343.2791001-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738925031; x=1770461031;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=txIlwQwBYmj3MwndSw3Y0eUYQAu1rReog22AiwBpQpQ=;
 b=GhGBhVDCrsB/kd503XvxH001Oz2cBZtOdPCrgJBgYF1bY2VnDHOTh3hG
 LfXwrAVSZ/tCScCXL0nPnSL7M95H9mk3xZYwEYAlD0oD2KSw9m3kLUrov
 3JeZPZV6ePZHlLa0d9j6GQcy3KdF9YJNrKlD1mPSf+8i3ZiWmcPLxanjV
 66Ia84U56VoU2PDLDifh7nLnYlLpJTUn7Go7SCqho0OOVaJjxKGWbY9n5
 APu0VVlFdQmf0waiEIWgak5ordq7Tiv9d/ARt7FVqabSnyu6lfqWOO4Rh
 AIa3Osmt3VeX/kmLk0r+kcUVL3yKgXwYc7WaNA7G38o8XTf05GfqSw9Ti
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GhGBhVDC
Subject: [Intel-wired-lan] [iwl-next v1 2/4] ixgbe: check for MDD events
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

