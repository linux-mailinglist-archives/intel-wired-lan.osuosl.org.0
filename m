Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67BC76D217
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 17:34:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D71641525;
	Wed,  2 Aug 2023 15:34:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D71641525
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690990477;
	bh=ojE+kd1VFyB6gJUc6+Cf3Bw+B3YiDAJ0aEuDrR2uz5Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uaVImovxoye1l6stftouZSltUh0eL1zcPwYlQ5Gin/jQIiwYmHRaTOI5/jUXikOA6
	 gxmfdSfg7gIncP079cSMNTPMJHQvST5NdQ0t5bKdYvBF01xYMW23VvjBuZEF5QXar/
	 15+mggeRjQ5YEbWrmKFmYUW/XDAbm9UC0s4fFssWDuS8hBeGBxYqeaA2rPoXGckRIX
	 ktZbApXvTCCycpK5bhkDKJ4J7kpksRrF29cUrxxbiLwStDeSLzbE5tPw795NHDtn5p
	 5r7vgogzXnU765jef4rA0Rkyoe4DZWOGgWro2B0re7KsLBNqUhYz8GLAKO7mqyYzY0
	 vnF7bxHkkssOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yk89p8rOYOX4; Wed,  2 Aug 2023 15:34:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44048414DE;
	Wed,  2 Aug 2023 15:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44048414DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6FBA1BF990
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 016F5817AC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:34:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 016F5817AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XDkdBn4-agp5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 15:34:17 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B52DA817B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B52DA817B5
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="372350119"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="372350119"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 08:34:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="843194686"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="843194686"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2023 08:34:15 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed,  2 Aug 2023 17:34:14 +0200
Message-Id: <20230802153414.391846-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690990457; x=1722526457;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kz0Bwp7Bc2QKg32FX5+7AaRXLfJvjwWPS9dKrRAB+uw=;
 b=ErVc58yf5y4nchmvIi3GTPQcsowf+kFHpp5vO9QEmXv9WIldj431eiar
 QO/BTmcRvLUd3G15c6vyfyMaEwt1UWKtdVEiVwoZghe+98kH1YGTswvLS
 T890HO81T1URKr9lbATqRzVtlNg+OQAp3H9JyqKzekJRlooRFcZO6ATzi
 1QzC666XpBunVsz6A10YXh7Z/0kD5AWm47vCJUshLluIrCvHDTf23O0y7
 mpLDiJ1LeEU0MK1S7sPOFLmnS0ay1G5hzMiCc3uxA2Fpr8AQf9t8/gPlP
 SurXnTYWKiWAQZshQIYVq2DxibsRtXv/qxpgMeBmdnX+s590iJqe7ttbD
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ErVc58yf
Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add tracepoints for
 nvmupdate troubleshooting
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Improve nvmupdate troubleshooting with bpftrace utility.
Add 'stable' static tracepoints to decode nvmupdate commands compatible
even for future driver versions.
Remove 'static' from eeprom functions declarations, make them public
to enable dynamic kernel tracing and profiling.

Example:
	echo "i40e_*" >/sys/kernel/tracing/set_ftrace_filter
	echo "i40e_*" >/sys/kernel/tracing/events/i40e/filter
	echo 1	>/sys/kernel/tracing/tracing_on
	echo 1	>/sys/kernel/tracing/events/i40e/enable
	...
	cat	/sys/kernel/tracing/trace

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |   5 +
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  30 ++-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  20 +-
 drivers/net/ethernet/intel/i40e/i40e_trace.h  | 212 ++++++++++++++++++
 4 files changed, 256 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 6e310a5..d48f9fd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1170,6 +1170,11 @@ u32 i40e_get_current_atr_cnt(struct i40e_pf *pf);
 u32 i40e_get_global_fd_count(struct i40e_pf *pf);
 bool i40e_set_ntuple(struct i40e_pf *pf, netdev_features_t features);
 void i40e_set_ethtool_ops(struct net_device *netdev);
+int i40e_get_eeprom(struct net_device *netdev,
+		    struct ethtool_eeprom *eeprom, u8 *bytes);
+int i40e_get_eeprom_len(struct net_device *netdev);
+int i40e_set_eeprom(struct net_device *netdev,
+		    struct ethtool_eeprom *eeprom, u8 *bytes);
 struct i40e_mac_filter *i40e_add_filter(struct i40e_vsi *vsi,
 					const u8 *macaddr, s16 vlan);
 void __i40e_del_filter(struct i40e_vsi *vsi, struct i40e_mac_filter *f);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index afc4fa8..cfefb86 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -4,6 +4,7 @@
 /* ethtool support for i40e */
 
 #include "i40e.h"
+#include "i40e_trace.h"
 #include "i40e_diag.h"
 #include "i40e_txrx_common.h"
 
@@ -1848,8 +1849,8 @@ static void i40e_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
 
 }
 
-static int i40e_get_eeprom(struct net_device *netdev,
-			   struct ethtool_eeprom *eeprom, u8 *bytes)
+int i40e_get_eeprom(struct net_device *netdev,
+		    struct ethtool_eeprom *eeprom, u8 *bytes)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_hw *hw = &np->vsi->back->hw;
@@ -1860,6 +1861,8 @@ static int i40e_get_eeprom(struct net_device *netdev,
 	bool last;
 	u32 magic;
 
+	i40e_trace(ioctl_get_eeprom, pf,  ((u64)eeprom->offset << 32) |
+		   eeprom->len);
 #define I40E_NVM_SECTOR_SIZE  4096
 	if (eeprom->len == 0)
 		return -EINVAL;
@@ -1874,10 +1877,12 @@ static int i40e_get_eeprom(struct net_device *netdev,
 		if ((eeprom->magic >> 16) != hw->device_id)
 			errno = -EINVAL;
 		else if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
-			 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
+			 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
 			errno = -EBUSY;
-		else
+		} else {
 			ret_val = i40e_nvmupd_command(hw, cmd, bytes, &errno);
+			i40e_trace(nvmupd_read, hw, cmd, ret_val, errno);
+		}
 
 		if ((errno || ret_val) && (hw->debug_mask & I40E_DEBUG_NVM))
 			dev_info(&pf->pdev->dev,
@@ -1943,7 +1948,7 @@ static int i40e_get_eeprom(struct net_device *netdev,
 	return ret_val;
 }
 
-static int i40e_get_eeprom_len(struct net_device *netdev)
+int i40e_get_eeprom_len(struct net_device *netdev)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_hw *hw = &np->vsi->back->hw;
@@ -1952,6 +1957,7 @@ static int i40e_get_eeprom_len(struct net_device *netdev)
 #define X722_EEPROM_SCOPE_LIMIT 0x5B9FFF
 	if (hw->mac.type == I40E_MAC_X722) {
 		val = X722_EEPROM_SCOPE_LIMIT + 1;
+		i40e_trace(ioctl_get_eeprom_len, np->vsi->back, val);
 		return val;
 	}
 	val = (rd32(hw, I40E_GLPCI_LBARCTRL)
@@ -1959,11 +1965,12 @@ static int i40e_get_eeprom_len(struct net_device *netdev)
 		>> I40E_GLPCI_LBARCTRL_FL_SIZE_SHIFT;
 	/* register returns value in power of 2, 64Kbyte chunks. */
 	val = (64 * 1024) * BIT(val);
+	i40e_trace(ioctl_get_eeprom_len, np->vsi->back, val);
 	return val;
 }
 
-static int i40e_set_eeprom(struct net_device *netdev,
-			   struct ethtool_eeprom *eeprom, u8 *bytes)
+int i40e_set_eeprom(struct net_device *netdev,
+		    struct ethtool_eeprom *eeprom, u8 *bytes)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_hw *hw = &np->vsi->back->hw;
@@ -1973,6 +1980,8 @@ static int i40e_set_eeprom(struct net_device *netdev,
 	int errno = 0;
 	u32 magic;
 
+	i40e_trace(ioctl_set_eeprom, pf,  ((u64)eeprom->offset << 32) |
+		   eeprom->len);
 	/* normal ethtool set_eeprom is not supported */
 	magic = hw->vendor_id | (hw->device_id << 16);
 	if (eeprom->magic == magic)
@@ -1981,10 +1990,12 @@ static int i40e_set_eeprom(struct net_device *netdev,
 	else if (!eeprom->magic || (eeprom->magic >> 16) != hw->device_id)
 		errno = -EINVAL;
 	else if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
-		 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
+		 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
 		errno = -EBUSY;
-	else
+	} else {
 		ret_val = i40e_nvmupd_command(hw, cmd, bytes, &errno);
+		i40e_trace(nvmupd_write, hw, cmd, ret_val, errno);
+	}
 
 	if ((errno || ret_val) && (hw->debug_mask & I40E_DEBUG_NVM))
 		dev_info(&pf->pdev->dev,
@@ -2011,6 +2022,7 @@ static void i40e_get_drvinfo(struct net_device *netdev,
 	drvinfo->n_priv_flags = I40E_PRIV_FLAGS_STR_LEN;
 	if (pf->hw.pf_id == 0)
 		drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
+	i40e_trace(ioctl_get_drvinfo, pf, drvinfo->n_priv_flags);
 }
 
 static void i40e_get_ringparam(struct net_device *netdev,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b847bd1..ac97d9b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4342,20 +4342,27 @@ static irqreturn_t i40e_intr(int irq, void *data)
 		       >> I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT;
 		if (val == I40E_RESET_CORER) {
 			pf->corer_count++;
+			i40e_trace(state_reset_corer, pf, pf->corer_count);
 		} else if (val == I40E_RESET_GLOBR) {
 			pf->globr_count++;
+			i40e_trace(state_reset_globr, pf, pf->globr_count);
 		} else if (val == I40E_RESET_EMPR) {
 			pf->empr_count++;
 			set_bit(__I40E_EMP_RESET_INTR_RECEIVED, pf->state);
+			i40e_trace(state_reset_empr, pf, pf->empr_count);
 		}
 	}
 
 	if (icr0 & I40E_PFINT_ICR0_HMC_ERR_MASK) {
+		const u32 err_info = rd32(hw, I40E_PFHMC_ERRORINFO);
+		const u32 err_data = rd32(hw, I40E_PFHMC_ERRORDATA);
+
 		icr0 &= ~I40E_PFINT_ICR0_HMC_ERR_MASK;
+		i40e_trace(state_hmc_error, pf,
+			   ((u64)err_info << 32) | err_data);
 		dev_info(&pf->pdev->dev, "HMC error interrupt\n");
 		dev_info(&pf->pdev->dev, "HMC error info 0x%x, HMC error data 0x%x\n",
-			 rd32(hw, I40E_PFHMC_ERRORINFO),
-			 rd32(hw, I40E_PFHMC_ERRORDATA));
+			 err_info, err_data);
 	}
 
 	if (icr0 & I40E_PFINT_ICR0_TIMESYNC_MASK) {
@@ -9914,11 +9921,13 @@ static void i40e_link_event(struct i40e_pf *pf)
 	/* On success, disable temp link polling */
 	if (status == I40E_SUCCESS) {
 		clear_bit(__I40E_TEMP_LINK_POLLING, pf->state);
+		i40e_trace(state_link, pf, pf->hw.phy.link_info.link_speed);
 	} else {
 		/* Enable link polling temporarily until i40e_get_link_status
 		 * returns I40E_SUCCESS
 		 */
 		set_bit(__I40E_TEMP_LINK_POLLING, pf->state);
+		i40e_trace(state_link, pf, pf->hw.phy.link_info.link_speed);
 		dev_dbg(&pf->pdev->dev, "couldn't get link state, status: %d\n",
 			status);
 		return;
@@ -9993,6 +10002,7 @@ static void i40e_watchdog_subtask(struct i40e_pf *pf)
 				  pf->service_timer_period)))
 		return;
 	pf->service_timer_previous = jiffies;
+	i40e_trace(state_watchdog, pf, pf->service_timer_previous);
 
 	if ((pf->flags & I40E_FLAG_LINK_POLLING_ENABLED) ||
 	    test_bit(__I40E_TEMP_LINK_POLLING, pf->state))
@@ -10045,6 +10055,8 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
 		clear_bit(__I40E_DOWN_REQUESTED, pf->state);
 	}
 
+	i40e_trace(state_reset, pf, reset_flags);
+
 	/* If there's a recovery already waiting, it takes
 	 * precedence before starting a new reset sequence.
 	 */
@@ -10123,6 +10135,7 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
 
 	/* check for error indications */
 	val = rd32(&pf->hw, pf->hw.aq.arq.len);
+	i40e_trace(state_arq, pf, val);
 	oldval = val;
 	if (val & I40E_PF_ARQLEN_ARQVFE_MASK) {
 		if (hw->debug_mask & I40E_DEBUG_AQ)
@@ -10144,6 +10157,7 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
 		wr32(&pf->hw, pf->hw.aq.arq.len, val);
 
 	val = rd32(&pf->hw, pf->hw.aq.asq.len);
+	i40e_trace(state_asq, pf, val);
 	oldval = val;
 	if (val & I40E_PF_ATQLEN_ATQVFE_MASK) {
 		if (pf->hw.debug_mask & I40E_DEBUG_AQ)
@@ -11117,6 +11131,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 end_core_reset:
 	clear_bit(__I40E_RESET_FAILED, pf->state);
 clear_recovery:
+	i40e_trace(state_rebuild, pf, ret);
 	clear_bit(__I40E_RESET_RECOVERY_PENDING, pf->state);
 	clear_bit(__I40E_TIMEOUT_RECOVERY_PENDING, pf->state);
 }
@@ -15434,6 +15449,7 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
 		dev_crit(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
 		dev_crit(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
 		set_bit(__I40E_RECOVERY_MODE, pf->state);
+		i40e_trace(state_recovery, pf, val);
 
 		return true;
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_trace.h b/drivers/net/ethernet/intel/i40e/i40e_trace.h
index 33b4e30..38bbe4d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_trace.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_trace.h
@@ -54,6 +54,218 @@
  * macro above will select the right trace point name for the driver
  * being built from shared code.
  */
+DECLARE_EVENT_CLASS(
+	i40e_state_template,
+
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val),
+
+	TP_STRUCT__entry(
+		__field(u64, val)
+		__field(u64, state)
+		__field(u64, bus)
+	),
+
+	TP_fast_assign(
+		__entry->val = val;
+		__entry->state = *(u64 *)pf->state;
+		__entry->bus = (((u64)pf->hw.bus.bus_id) << 32) |
+			(((u64)pf->hw.bus.device) << 16) | pf->hw.bus.func;
+	),
+
+	TP_printk(
+		"state: bus %02x:%02x.%1x state=%016llx val=%llx",
+		(unsigned int)(__entry->bus >> 32),
+		0xffff & (unsigned int)(__entry->bus >> 16),
+		0xffff & (unsigned int)__entry->bus,
+		 __entry->state, __entry->val)
+);
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_reset,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_reset_corer,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_reset_globr,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_reset_empr,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_hmc_error,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_rebuild,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_arq,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_asq,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_udp_sync,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_watchdog,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_link,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_state_template, i40e_state_recovery,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DECLARE_EVENT_CLASS(
+	i40e_ioctl_template,
+
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val),
+
+	TP_STRUCT__entry(
+		__field(u64, val)
+		__field(u64, state)
+		__field(u64, bus)
+		__field(pid_t, pid)
+		__array(char, comm, TASK_COMM_LEN)
+	),
+
+	TP_fast_assign(
+		__entry->val = val;
+		__entry->state = *(u64 *)pf->state;
+		__entry->bus = (((u64)pf->hw.bus.bus_id) << 32) |
+			(((u64)pf->hw.bus.device) << 16) | pf->hw.bus.func;
+		__entry->pid = current->pid;
+		memcpy(__entry->comm, current->comm, sizeof(__entry->comm) - 1);
+		__entry->comm[TASK_COMM_LEN - 1] = 0;
+	),
+
+	TP_printk(
+		"state: bus %02x:%02x.%1x state=%016llx val=%llx %5d:%s",
+		(unsigned int)(__entry->bus >> 32),
+		0xffff & (unsigned int)(__entry->bus >> 16),
+		0xffff & (unsigned int)__entry->bus,
+		__entry->state, __entry->val,
+		__entry->pid, __entry->comm)
+);
+
+DEFINE_EVENT(
+	i40e_ioctl_template, i40e_ioctl_get_drvinfo,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_ioctl_template, i40e_ioctl_get_eeprom_len,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_ioctl_template, i40e_ioctl_get_eeprom,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_ioctl_template, i40e_ioctl_set_eeprom,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DECLARE_EVENT_CLASS(
+	i40e_nvmupd_template,
+
+	TP_PROTO(struct i40e_hw *hw,
+		 struct i40e_nvm_access *cmd, int ret_val, int err),
+
+	TP_ARGS(hw, cmd, ret_val, err),
+
+	TP_STRUCT__entry(
+		__field(int, ret_val)
+		__field(int, err)
+		__field(int, status)
+		__field(u64, bus)
+		__field(u32, command)
+		__field(u32, config)
+		__field(u32, offset)
+		__field(u32, data_size)
+	),
+
+	TP_fast_assign(
+		__entry->ret_val = ret_val;
+		__entry->err = err;
+		__entry->status = hw->aq.asq_last_status;
+		__entry->bus = (((u64)hw->bus.bus_id) << 32) |
+			(((u64)hw->bus.device) << 16) | hw->bus.func;
+		__entry->command = cmd->command;
+		__entry->config = cmd->config;
+		__entry->offset = cmd->offset;
+		__entry->data_size = cmd->data_size;
+	),
+
+	TP_printk(
+		"nvmupd: bus %02x:%02x.%1x err=%d status=0x%x errno=%d module=%d offset=0x%x size=%d",
+		(unsigned int)(__entry->bus >> 32),
+		0xffff & (unsigned int)(__entry->bus >> 16),
+		0xffff & (unsigned int)__entry->bus,
+		__entry->ret_val, __entry->status, __entry->err,
+		(__entry->config & I40E_NVM_MOD_PNT_MASK),
+		__entry->offset, __entry->data_size)
+);
+
+DEFINE_EVENT(
+	i40e_nvmupd_template, i40e_nvmupd_write,
+	TP_PROTO(struct i40e_hw *hw,
+		 struct i40e_nvm_access *cmd, int ret_val, int err),
+
+	TP_ARGS(hw, cmd, ret_val, err));
+
+DEFINE_EVENT(
+	i40e_nvmupd_template, i40e_nvmupd_read,
+	TP_PROTO(struct i40e_hw *hw,
+		 struct i40e_nvm_access *cmd, int ret_val, int err),
+
+	TP_ARGS(hw, cmd, ret_val, err));
 
 #define NO_DEV "(i40e no_device)"
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
