Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPPDE1BsumnRWQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 10:11:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A723F2B8B59
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 10:11:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3244F608ED;
	Wed, 18 Mar 2026 09:11:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mHjMH724Oq8f; Wed, 18 Mar 2026 09:11:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD669608FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773825100;
	bh=bIlYEh8z++MoV5/VKe7Og6emqF8f09JAZnReQMcYWnk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zx9UOpidjbPAlS5ro1kLvWYE7IlU3IF+UHCKmM60GgU9pGaac3ksTQMtnwhNrhwNq
	 +bFXonrrc+qXOWV1s0UkiWt1QUs99GXSHdy782iVqD5k1OO3EemwX+yRiEkSsit1Xt
	 Qzr5c6AHyvJqdF+LZ53k6KUrWfANixz0biOyEhwGBhLvRT9WEMEASZmiN9t0qkOxyB
	 zwUB7mNxouo63F2CzZPrXENQwDg5FTs2B2X17FKXlFC6PumxWAfqBTxgq/RGBv3m+1
	 2aARelrcPGCxDol0ATUHKT4N4CFvYq1rVeoSADiIPSX8vmfrHJa0NhFm1/ygXKPMSk
	 IacgubBLSbTqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD669608FE;
	Wed, 18 Mar 2026 09:11:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A99511AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F22E40F36
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:11:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fzJW8lqfaD8H for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 09:11:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 54E3F40EF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54E3F40EF9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54E3F40EF9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:11:38 +0000 (UTC)
X-CSE-ConnectionGUID: MjHXT96fSbaO2QLMSphErA==
X-CSE-MsgGUID: tJY0AtbmQweOMkGhVKlAAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="77484494"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="77484494"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 02:11:38 -0700
X-CSE-ConnectionGUID: pbAUsu98SAq6YZrwn1kGBQ==
X-CSE-MsgGUID: rFOjQbxcQwaAi/LMvlRibg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="226700115"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa003.jf.intel.com with ESMTP; 18 Mar 2026 02:11:33 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 18 Mar 2026 10:06:54 +0100
Message-Id: <20260318090654.611349-9-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260318090654.611349-1-grzegorz.nitka@intel.com>
References: <20260318090654.611349-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773825098; x=1805361098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M31oPkWh/wbQLvwlju0YdcGBHdfb6uJbg68ibY3AXQQ=;
 b=T5xYtEMbAym326B6dqjFkKlY5EHCYhdtn5akeTZfYIp2gD3naTwwytbL
 1rEleRCs/O5rDbTnAtHoFg3CeL5xdoq8JIggNV+FC/cHKcPiZGxY7SD8f
 QJRflo8gNTuW1O2H5qKSEtharw+9S4s4J33QUQ1/GkxywztotnLh1x9Q7
 kHJ5SLYYJ/6E1/eV0iv/rTJRaF1X5F+NVxZajD1+UMlxim2CUpplcJlbY
 /O+FY1gg9r3Y9g72IxtxDw1sQzoFohskJWNQr91BCuQ18PbIB2AMsqkUQ
 bqrliNsWF/UmYT3gX8XxNLfermutHt23Snp5Dfz9BkZH0F2uGlbbrG970
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T5xYtEMb
Subject: [Intel-wired-lan] [PATCH net-next 8/8] ice: add TX reference clock
 (tx_clk) control for E825 devices
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, kuba@kernel.org,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 donald.hunter@gmail.com, linux-kernel@vger.kernel.org,
 arkadiusz.kubalewski@intel.com, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A723F2B8B59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add full support for selecting and controlling the TX SERDES reference
clock on E825C hardware. E825C devicede supports selecting among
multiple SERDES transmit reference clock sources (ENET, SyncE, EREF0),
but imposes several routing constraints: on some paths a reference
must be enabled on both PHY complexes, and ports sharing a PHY must
coordinate usage so that a reference is not disabled while still in
active use. Until now the driver did not expose this domain through
the DPLL API, nor did it provide a coherent control layer for enabling,
switching, or tracking TX reference clocks.

This patch implements full TX reference clock management for E825
devices. Compared to previous iterations, the logic is now separated
into a dedicated module (ice_txclk.c) which encapsulates all
clock-selection rules, cross‑PHY dependencies, and the bookkeeping
needed to ensure safe transitions. This allows the DPLL layer and
the PTP code to remain focused on their respective roles.

Key additions:

  * A new txclk control module (`ice_txclk.c`) implementing:
      - software usage tracking for each reference clock per PHY,
      - peer‑PHY enable rules (SyncE required on both PHYs when used on
        PHY0, EREF0 required on both when used on PHY1),
      - safe disabling of unused reference clocks after switching,
      - a single, driver‑internal entry point for clock changes.

  * Integration with the DPLL pin ops:
      - pin‑set now calls into `ice_txclk_set_clk()` to request a
        hardware switch,
      - pin‑get reports the current SERDES reference by reading back the
        active selector (`ice_get_serdes_ref_sel_e825c()`).

  * Wiring the requested reference clock into Auto‑Negotiation restart
    through the already‑extended `ice_aq_set_link_restart_an()`.

  * After each link-up the driver verifies the effective hardware state
    (`ice_txclk_verify()`) and updates its per‑PHY usage bitmaps,
    correcting the requested/active state if the FW or AN flow applied a
    different reference.

  * PTP PF initialization now seeds the ENET reference clock as enabled
    by default for its port.

All reference clock transitions are serialized through the DPLL lock,
and usage information is shared across all PFs belonging to the
same E825C controller PF. This ensures that concurrent changes are
coordinated and that shared PHYs never see an unexpected disable.

With this patch, E825 devices gain full userspace‑driven TXC reference
clock selection via the DPLL subsystem, enabling complete SyncE support,
precise multi‑clock setups, and predictable clock routing behavior.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile     |   2 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c   |  53 ++++-
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  22 ++
 drivers/net/ethernet/intel/ice/ice_ptp.h    |   7 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  35 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  27 +++
 drivers/net/ethernet/intel/ice/ice_txclk.c  | 235 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txclk.h  |  41 ++++
 8 files changed, 410 insertions(+), 12 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 38db476ab2ec..95fd0c49800f 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=	\
 	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
 	ice_vf_lib.o
-ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o ice_dpll.o ice_tspll.o ice_cpi.o
+ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o ice_dpll.o ice_tspll.o ice_cpi.o ice_txclk.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index a1258f2e03a9..28e005f44b2d 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_trace.h"
+#include "ice_txclk.h"
 #include <linux/dpll.h>
 #include <linux/property.h>
 
@@ -2538,7 +2539,9 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
  *
  * Dpll subsystem callback, set a state of a Tx reference clock pin
  *
+ * Context: Acquires and releases pf->dplls.lock
  * Return:
+ * * 0 - success
  * * negative - failure
  */
 static int
@@ -2547,11 +2550,24 @@ ice_dpll_txclk_state_on_dpll_set(const struct dpll_pin *pin, void *pin_priv,
 				 void *dpll_priv, enum dpll_pin_state state,
 				 struct netlink_ext_ack *extack)
 {
-	/*
-	 * TODO: set HW accordingly to selected TX reference clock.
-	 * To be added in the follow up patches.
-	 */
-	return -EOPNOTSUPP;
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+	enum ice_e825c_ref_clk new_clk;
+	int ret = 0;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	mutex_lock(&pf->dplls.lock);
+	new_clk = (state == DPLL_PIN_STATE_DISCONNECTED) ? ICE_REF_CLK_ENET :
+			p->tx_ref_src;
+	if (new_clk == pf->ptp.port.tx_clk)
+		goto unlock;
+
+	ret = ice_txclk_set_clk(pf, new_clk);
+unlock:
+	mutex_unlock(&pf->dplls.lock);
+	return ret;
 }
 
 /**
@@ -2565,8 +2581,10 @@ ice_dpll_txclk_state_on_dpll_set(const struct dpll_pin *pin, void *pin_priv,
  *
  * dpll subsystem callback, get a state of a TX clock reference pin.
  *
+ * Context: Acquires and releases pf->dplls.lock
  * Return:
  * * 0 - success
+ * * negative - failure
  */
 static int
 ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void *pin_priv,
@@ -2575,13 +2593,26 @@ ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void *pin_priv,
 				 enum dpll_pin_state *state,
 				 struct netlink_ext_ack *extack)
 {
-	/*
-	 * TODO: query HW status to determine if the TX reference is selected.
-	 * To be added in the follow up patches.
-	 */
-	*state = DPLL_PIN_STATE_DISCONNECTED;
+	struct ice_dpll_pin *p = pin_priv;
+	enum ice_e825c_ref_clk clk;
+	struct ice_pf *pf = p->pf;
+	int ret;
 
-	return 0;
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	mutex_lock(&pf->dplls.lock);
+	ret = ice_get_serdes_ref_sel_e825c(&pf->hw, pf->ptp.port.port_num,
+					   &clk);
+	if (ret)
+		goto unlock;
+
+	*state = (clk == p->tx_ref_src) ? DPLL_PIN_STATE_CONNECTED :
+			DPLL_PIN_STATE_DISCONNECTED;
+unlock:
+	mutex_unlock(&pf->dplls.lock);
+
+	return ret;
 }
 
 static const struct dpll_pin_ops ice_dpll_rclk_ops = {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 094e96219f45..84b1fa00bc52 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_trace.h"
+#include "ice_txclk.h"
 
 static const char ice_pin_names[][64] = {
 	"SDP0",
@@ -1325,6 +1326,10 @@ void ice_ptp_link_change(struct ice_pf *pf, bool linkup)
 				return;
 			}
 		}
+
+		if (linkup)
+			ice_txclk_verify(pf);
+
 		mutex_unlock(&pf->dplls.lock);
 	}
 
@@ -3079,6 +3084,7 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
 {
 	struct ice_ptp *ctrl_ptp = ice_get_ctrl_ptp(pf);
 	struct ice_ptp *ptp = &pf->ptp;
+	u8 port_num, phy;
 
 	if (WARN_ON(!ctrl_ptp) || pf->hw.mac_type == ICE_MAC_UNKNOWN)
 		return -ENODEV;
@@ -3090,6 +3096,10 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
 		 &pf->adapter->ports.ports);
 	mutex_unlock(&pf->adapter->ports.lock);
 
+	port_num = ptp->port.port_num;
+	phy = port_num / pf->hw.ptp.ports_per_phy;
+	set_bit(port_num, &ctrl_ptp->tx_refclks[phy][pf->ptp.port.tx_clk]);
+
 	return 0;
 }
 
@@ -3290,6 +3300,7 @@ static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
  */
 void ice_ptp_init(struct ice_pf *pf)
 {
+	enum ice_e825c_ref_clk tx_ref_clk;
 	struct ice_ptp *ptp = &pf->ptp;
 	struct ice_hw *hw = &pf->hw;
 	int err;
@@ -3318,6 +3329,17 @@ void ice_ptp_init(struct ice_pf *pf)
 			goto err_exit;
 	}
 
+	ptp->port.tx_clk = ICE_REF_CLK_ENET;
+	ptp->port.tx_clk_req = ICE_REF_CLK_ENET;
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825) {
+		err = ice_get_serdes_ref_sel_e825c(hw, ptp->port.port_num,
+						   &tx_ref_clk);
+		if (!err) {
+			ptp->port.tx_clk = tx_ref_clk;
+			ptp->port.tx_clk_req = tx_ref_clk;
+		}
+	}
+
 	err = ice_ptp_setup_pf(pf);
 	if (err)
 		goto err_exit;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 8c44bd758a4f..8b385271ab36 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -144,6 +144,8 @@ struct ice_ptp_tx {
  * @link_up: indicates whether the link is up
  * @tx_fifo_busy_cnt: number of times the Tx FIFO was busy
  * @port_num: the port number this structure represents
+ * @tx_clk: currently active Tx reference clock source
+ * @tx_clk_req: requested Tx reference clock source (new target)
  */
 struct ice_ptp_port {
 	struct list_head list_node;
@@ -153,6 +155,8 @@ struct ice_ptp_port {
 	bool link_up;
 	u8 tx_fifo_busy_cnt;
 	u8 port_num;
+	enum ice_e825c_ref_clk tx_clk;
+	enum ice_e825c_ref_clk tx_clk_req;
 };
 
 enum ice_ptp_tx_interrupt {
@@ -236,6 +240,7 @@ struct ice_ptp_pin_desc {
  * @info: structure defining PTP hardware capabilities
  * @clock: pointer to registered PTP clock device
  * @tstamp_config: hardware timestamping configuration
+ * @tx_refclks: bitmaps table to store the information about TX reference clocks
  * @reset_time: kernel time after clock stop on reset
  * @tx_hwtstamp_good: number of completed Tx timestamp requests
  * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped
@@ -261,6 +266,8 @@ struct ice_ptp {
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
 	struct kernel_hwtstamp_config tstamp_config;
+#define ICE_E825_MAX_PHYS 2
+	unsigned long tx_refclks[ICE_E825_MAX_PHYS][ICE_REF_CLK_MAX];
 	u64 reset_time;
 	u64 tx_hwtstamp_good;
 	u32 tx_hwtstamp_skipped;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 61c0a0d93ea8..896706469988 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -461,6 +461,41 @@ static int ice_read_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u32 *val)
 	return err;
 }
 
+/**
+ * ice_get_serdes_ref_sel_e825c - Read current Tx ref clock source
+ * @hw: pointer to the HW struct
+ * @port: port number for which Tx reference clock is read
+ * @clk: Tx reference clock value (output)
+ */
+int ice_get_serdes_ref_sel_e825c(struct ice_hw *hw, u8 port,
+				 enum ice_e825c_ref_clk *clk)
+{
+	u8 lane = port % hw->ptp.ports_per_phy;
+	u32 serdes_rx_nt, serdes_tx_nt;
+	u32 val;
+	int ret;
+
+	ret = ice_read_phy_eth56g(hw, port,
+				  SERDES_IP_IF_LN_FLXM_GENERAL(lane, 0),
+				  &val);
+	if (ret)
+		return ret;
+
+	serdes_rx_nt = FIELD_GET(CFG_ICTL_PCS_REF_SEL_RX_NT, val);
+	serdes_tx_nt = FIELD_GET(CFG_ICTL_PCS_REF_SEL_TX_NT, val);
+
+	if (serdes_tx_nt == REF_SEL_NT_SYNCE &&
+	    serdes_rx_nt == REF_SEL_NT_SYNCE)
+		*clk = ICE_REF_CLK_SYNCE;
+	else if (serdes_tx_nt == REF_SEL_NT_EREF0 &&
+		 serdes_rx_nt == REF_SEL_NT_EREF0)
+		*clk = ICE_REF_CLK_EREF0;
+	else
+		*clk = ICE_REF_CLK_ENET;
+
+	return 0;
+}
+
 /**
  * ice_phy_res_address_eth56g - Calculate a PHY port register address
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index cbc9693179a1..820ba953ea01 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -381,6 +381,8 @@ int ice_stop_phy_timer_eth56g(struct ice_hw *hw, u8 port, bool soft_reset);
 int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold);
 int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
+int ice_get_serdes_ref_sel_e825c(struct ice_hw *hw, u8 port,
+				 enum ice_e825c_ref_clk *clk);
 
 #define ICE_ETH56G_NOMINAL_INCVAL	0x140000000ULL
 #define ICE_ETH56G_NOMINAL_PCS_REF_TUS	0x100000000ULL
@@ -790,4 +792,29 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define PHY_PTP_1STEP_PD_DELAY_M	GENMASK(30, 1)
 #define PHY_PTP_1STEP_PD_DLY_V_M	BIT(31)
 
+#define SERDES_IP_IF_LN_FLXM_GENERAL(n, m) \
+	(0x32B800 + (m) * 0x100000 + (n) * 0x8000)
+#define CFG_RESERVED0_1                         GENMASK(1, 0)
+#define CFG_ICTL_PCS_MODE_NT                    BIT(2)
+#define CFG_ICTL_PCS_RCOMP_SLAVE_EN_NT          BIT(3)
+#define CFG_ICTL_PCS_CMN_FORCE_PUP_A            BIT(4)
+#define CFG_ICTL_PCS_RCOMP_SLAVE_VALID_A        BIT(5)
+#define CFG_ICTL_PCS_REF_SEL_RX_NT              GENMASK(9, 6)
+#define REF_SEL_NT_ENET                         0
+#define REF_SEL_NT_EREF0                        1
+#define REF_SEL_NT_SYNCE                        2
+#define CFG_IDAT_DFX_OBS_DIG_                   GENMASK(11, 10)
+#define CFG_IRST_APB_MEM_B                      BIT(12)
+#define CFG_ICTL_PCS_DISCONNECT_NT              BIT(13)
+#define CFG_ICTL_PCS_ISOLATE_NT                 BIT(14)
+#define CFG_RESERVED15_15                       BIT(15)
+#define CFG_IRST_PCS_TSTBUS_B_A                 BIT(16)
+#define CFG_ICTL_PCS_REF_TERM_HIZ_EN_NT         BIT(17)
+#define CFG_RESERVED18_19                       GENMASK(19, 18)
+#define CFG_ICTL_PCS_SYNTHLCSLOW_FORCE_PUP_A    BIT(20)
+#define CFG_ICTL_PCS_SYNTHLCFAST_FORCE_PUP_A    BIT(21)
+#define CFG_RESERVED22_24                       GENMASK(24, 22)
+#define CFG_ICTL_PCS_REF_SEL_TX_NT              GENMASK(28, 25)
+#define CFG_RESERVED29_31                       GENMASK(31, 29)
+
 #endif /* _ICE_PTP_HW_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_txclk.c b/drivers/net/ethernet/intel/ice/ice_txclk.c
new file mode 100644
index 000000000000..3031a7c89504
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_txclk.c
@@ -0,0 +1,235 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2026 Intel Corporation */
+
+#include "ice.h"
+#include "ice_cpi.h"
+#include "ice_txclk.h"
+
+static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
+{
+	return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
+}
+
+#define ICE_PHY0	0
+#define ICE_PHY1	1
+
+/**
+ * ice_txclk_enable_peer - Enable required TX reference clock on peer PHY
+ * @pf: pointer to the PF structure
+ * @clk: TX reference clock that must be enabled
+ *
+ * Some TX reference clocks on E825-class devices (SyncE and EREF0) must
+ * be enabled on both PHY complexes to allow proper routing:
+ *
+ *   - SyncE must be enabled on both PHYs when used by PHY0
+ *   - EREF0 must be enabled on both PHYs when used by PHY1
+ *
+ * If the requested clock is not yet enabled on the peer PHY, enable it.
+ * ENET does not require duplication and is ignored.
+ *
+ * Return: 0 on success or negative error code on failure.
+ */
+static int ice_txclk_enable_peer(struct ice_pf *pf, enum ice_e825c_ref_clk clk)
+{
+	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
+	u8 port_num, phy;
+	int err;
+
+	if (clk == ICE_REF_CLK_ENET)
+		return 0;
+
+	port_num = pf->ptp.port.port_num;
+	phy = port_num / pf->hw.ptp.ports_per_phy;
+
+	if ((clk == ICE_REF_CLK_SYNCE && phy == ICE_PHY0 &&
+	     !ice_txclk_any_port_uses(ctrl_pf, ICE_PHY1, clk)) ||
+	    (clk == ICE_REF_CLK_EREF0 && phy == ICE_PHY1 &&
+	     !ice_txclk_any_port_uses(ctrl_pf, ICE_PHY0, clk))) {
+		u8 peer_phy = phy ? ICE_PHY0 : ICE_PHY1;
+
+		err = ice_cpi_ena_dis_clk_ref(&pf->hw, peer_phy, clk, true);
+		if (err) {
+			dev_err(ice_hw_to_dev(&pf->hw),
+				"Failed to enable the %u TX clock for the %u PHY\n",
+				clk, peer_phy);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_txclk_disable_unused - Disable TX reference clock no longer in use
+ * @pf: pointer to the PF structure
+ * @ref_clk: TX reference clock source to evaluate for disabling
+ *
+ * Disable (from power-saving reasons) a TX reference clock after a clock
+ * switch, provided that:
+ *   - no port on the local PHY uses this clock, and
+ *   - for SyncE: no port on PHY0 or PHY1 requires the clock, depending on
+ *     where it must remain enabled for routing.
+ *   - for EREF0: same logic as above but inverted PHY roles.
+ *
+ * Some reference clocks must be enabled on both PHY complexes when used
+ * (SyncE for PHY0, EREF0 for PHY1). The function therefore also attempts
+ * to implicitly disable the peer PHY copy when no port requires it.
+ *
+ * Return: 0 on success or negative error code if disabling fails.
+ */
+static int
+ice_txclk_disable_unused(struct ice_pf *pf, enum ice_e825c_ref_clk ref_clk)
+{
+	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
+	struct ice_hw *hw = &pf->hw;
+	int err = 0;
+	u8 cur_phy;
+
+	cur_phy = pf->ptp.port.port_num / hw->ptp.ports_per_phy;
+
+	if (ref_clk == ICE_REF_CLK_SYNCE) {
+		/* Don't disable SyncE clock if it's still in use on PHY 0 */
+		if (ice_txclk_any_port_uses(ctrl_pf, ICE_PHY0, ref_clk))
+			return 0;
+		if (cur_phy == ICE_PHY0 &&
+		    !ice_txclk_any_port_uses(ctrl_pf, ICE_PHY1, ref_clk)) {
+			err = ice_cpi_ena_dis_clk_ref(hw, ICE_PHY1, ref_clk, false);
+			if (err) {
+				cur_phy = ICE_PHY1;
+				goto err;
+			}
+		}
+	} else if (ref_clk == ICE_REF_CLK_EREF0) {
+		/* Don't disable EREF0 clock if it's still in use on PHY 1 */
+		if (ice_txclk_any_port_uses(ctrl_pf, ICE_PHY1, ref_clk))
+			return 0;
+		if (cur_phy == ICE_PHY1 &&
+		    !ice_txclk_any_port_uses(ctrl_pf, ICE_PHY0, ref_clk)) {
+			err = ice_cpi_ena_dis_clk_ref(hw, ICE_PHY0, ref_clk, false);
+			if (err) {
+				cur_phy = ICE_PHY0;
+				goto err;
+			}
+		}
+	}
+
+	if (!ice_txclk_any_port_uses(ctrl_pf, cur_phy, ref_clk))
+		err = ice_cpi_ena_dis_clk_ref(hw, cur_phy, ref_clk, false);
+err:
+	if (err)
+		dev_warn(ice_pf_to_dev(pf), "Failed to disable the %u TX clock for the %u PHY\n",
+			 ref_clk, cur_phy);
+
+	return err;
+}
+
+#define ICE_REFCLK_USER_TO_AQ_IDX(x) ((x) + 1)
+
+/**
+ * ice_txclk_set_clk - Set Tx reference clock
+ * @pf: pointer to pf structure
+ * @clk: new Tx clock
+ *
+ * Return 0 on success, negative value otherwise.
+ */
+int ice_txclk_set_clk(struct ice_pf *pf, enum ice_e825c_ref_clk clk)
+{
+	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
+	struct ice_port_info *port_info;
+	u8 port_num, phy;
+	int err;
+
+	if (pf->ptp.port.tx_clk == clk)
+		return 0;
+
+	port_num = pf->ptp.port.port_num;
+	phy = port_num / pf->hw.ptp.ports_per_phy;
+	port_info = pf->hw.port_info;
+
+	/* Check if the TX clk is enabled for this PHY, if not - enable it */
+	if (!ice_txclk_any_port_uses(ctrl_pf, phy, clk)) {
+		err = ice_cpi_ena_dis_clk_ref(&pf->hw, phy, clk, true);
+		if (err) {
+			dev_err(ice_hw_to_dev(&pf->hw), "Failed to enable the %u TX clock for the %u PHY\n",
+				clk, phy);
+			return err;
+		}
+		err = ice_txclk_enable_peer(pf, clk);
+		if (err)
+			return err;
+	}
+
+	pf->ptp.port.tx_clk_req = clk;
+
+	/* We are ready to switch to the new TX clk. */
+	err = ice_aq_set_link_restart_an(port_info, true, NULL,
+					 ICE_REFCLK_USER_TO_AQ_IDX(clk));
+	if (err)
+		dev_err(ice_hw_to_dev(&pf->hw), "Failed to switch to %u TX clock for the %u PHY\n",
+			clk, phy);
+
+	return err;
+}
+
+/**
+ * ice_txclk_verify - Validate TX reference clock switch and update usage state
+ * @pf: pointer to PF structure
+ *
+ * After a link-up event, verify whether the previously requested TX reference
+ * clock transition actually succeeded. The SERDES reference selector reflects
+ * the effective hardware choice, which may differ from the requested clock
+ * when Auto-Negotiation or firmware applies additional policy.
+ *
+ * If the hardware-selected clock differs from the requested one, update the
+ * software state accordingly and stop further processing.
+ *
+ * When the switch is successful, update the per‑PHY usage bitmaps so that the
+ * driver knows which reference clock is currently in use by this port. Using
+ * these bitmaps, disable any reference clocks that are no longer required by
+ * any port on the local PHY or, when applicable, on the peer PHY (according
+ * to E825 clock‑routing rules).
+ *
+ * This function does not initiate a clock switch; it only validates the result
+ * of a previously triggered transition and performs cleanup of unused clocks.
+ */
+void ice_txclk_verify(struct ice_pf *pf)
+{
+	struct ice_ptp_port *ptp_port = &pf->ptp.port;
+	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
+	struct ice_hw *hw = &pf->hw;
+	enum ice_e825c_ref_clk clk;
+	int err;
+	u8 phy;
+
+	phy = ptp_port->port_num / hw->ptp.ports_per_phy;
+
+	/* verify current Tx reference settings */
+	err = ice_get_serdes_ref_sel_e825c(hw,
+					   ptp_port->port_num,
+					   &clk);
+	if (err)
+		return;
+
+	if (clk != pf->ptp.port.tx_clk_req) {
+		dev_warn(ice_pf_to_dev(pf),
+			 "Failed to switch tx-clk for phy %d and clk %u (current: %u)\n",
+			 phy, pf->ptp.port.tx_clk_req, clk);
+		pf->ptp.port.tx_clk = clk;
+		pf->ptp.port.tx_clk_req = clk;
+		return;
+	}
+
+	/* update Tx reference clock usage map */
+	for (int i = 0; i < ICE_REF_CLK_MAX; i++)
+		(clk == i) ?
+		 set_bit(ptp_port->port_num,
+			 &ctrl_pf->ptp.tx_refclks[phy][i]) :
+		 clear_bit(ptp_port->port_num,
+			   &ctrl_pf->ptp.tx_refclks[phy][i]);
+
+	ice_txclk_disable_unused(pf, pf->ptp.port.tx_clk);
+
+	pf->ptp.port.tx_clk = clk;
+	pf->ptp.port.tx_clk_req = clk;
+}
+
diff --git a/drivers/net/ethernet/intel/ice/ice_txclk.h b/drivers/net/ethernet/intel/ice/ice_txclk.h
new file mode 100644
index 000000000000..6423b448841e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_txclk.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2026 Intel Corporation */
+
+#ifndef _ICE_TXCLK_H_
+#define _ICE_TXCLK_H_
+
+/**
+ * ice_txclk_any_port_uses - check if any port on a PHY uses this TX refclk
+ * @ctrl_pf: control PF (owner of the shared tx_refclks map)
+ * @phy: PHY index
+ * @clk: TX reference clock
+ *
+ * Return: true if any bit (port) is set for this clock on this PHY
+ */
+static inline bool
+ice_txclk_any_port_uses(const struct ice_pf *ctrl_pf, u8 phy,
+			enum ice_e825c_ref_clk clk)
+{
+	return find_first_bit(&ctrl_pf->ptp.tx_refclks[phy][clk],
+			BITS_PER_LONG) < BITS_PER_LONG;
+}
+
+/**
+ * ice_txclk_port_uses - check if a specific port uses this TX refclk
+ * @ctrl_pf: control PF
+ * @phy: PHY index
+ * @clk: TX reference clock
+ * @port: port number to test
+ *
+ * Return: true if this port uses the given clock
+ */
+static inline bool
+ice_txclk_port_uses(const struct ice_pf *ctrl_pf, u8 phy,
+		    enum ice_e825c_ref_clk clk, u8 port)
+{
+	return test_bit(port, &ctrl_pf->ptp.tx_refclks[phy][clk]);
+}
+
+int ice_txclk_set_clk(struct ice_pf *pf, enum ice_e825c_ref_clk clk);
+void ice_txclk_verify(struct ice_pf *pf);
+#endif /* _ICE_TXCLK_H_ */
-- 
2.39.3

