Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B763C1D5D36
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F99422817;
	Sat, 16 May 2020 00:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jqD4YoW0Eh-U; Sat, 16 May 2020 00:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B6DD622795;
	Sat, 16 May 2020 00:39:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8613B1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 80C9787CEB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JV2bAqf+88PH for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:39:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D81A877FA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:19 +0000 (UTC)
IronPort-SDR: wXGqh0+bh0nGk3pA/qD/gC1vCm+T+UrILeTGHMhHIvDq75SvI33cTDTBMB+D6JKFuijmUtgOgz
 KisBTEzE0/9A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:39:18 -0700
IronPort-SDR: cSr/CW+4GiQ0P/Z2+mK6IXgy6Pr7wbFEaseWil71T8w25sOVrwTHrStKtfMCeBeCBc1v2vqadt
 QbGLtoojwirQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307560858"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 17:39:18 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:36:32 -0700
Message-Id: <20200516003644.4658-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S43 03/15] ice: Fix Tx timeout when link
 is toggled on a VF's interface
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

From: Brett Creeley <brett.creeley@intel.com>

Currently if the iavf is loaded and a VF link transitions from up to
down to up again a Tx timeout will be triggered. This happens because
Tx/Rx queue interrupts are only enabled when receiving the
VIRTCHNL_OP_CONFIG_MAP_IRQ message, which happens on reset or initial
iavf driver load, but not when bringing link up. This is problematic
because they are disabled on the VIRTCHNL_OP_DISABLE_QUEUES message,
which is part of bringing a VF's link down. However, they are not
enabled on the VIRTCHNL_OP_ENABLE_QUEUES message, which is part of
bringing a VF's link up.

Fix this by re-enabling the VF's Rx and Tx queue interrupts when they
were previously configured. This is done by first checking to make
sure the previous value in QINT_[R|T]QCTL.MSIX_INDX is not 0, which
is used to represent the OICR in the VF's interrupt space. If the
MSIX_INDX is non-zero then enable the interrupt by setting the
QINT_[R|T]CTL.CAUSE_ENA bit to 1.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 7c8c1687f0bf..2e6c81555668 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2291,6 +2291,52 @@ static bool ice_vc_validate_vqs_bitmaps(struct virtchnl_queue_select *vqs)
 	return true;
 }
 
+/**
+ * ice_vf_ena_txq_interrupt - enable Tx queue interrupt via QINT_TQCTL
+ * @vsi: VSI of the VF to configure
+ * @q_idx: VF queue index used to determine the queue in the PF's space
+ */
+static void ice_vf_ena_txq_interrupt(struct ice_vsi *vsi, u32 q_idx)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	u32 pfq = vsi->txq_map[q_idx];
+	u32 reg;
+
+	reg = rd32(hw, QINT_TQCTL(pfq));
+
+	/* MSI-X index 0 in the VF's space is always for the OICR, which means
+	 * this is most likely a poll mode VF driver, so don't enable an
+	 * interrupt that was never configured via VIRTCHNL_OP_CONFIG_IRQ_MAP
+	 */
+	if (!(reg & QINT_TQCTL_MSIX_INDX_M))
+		return;
+
+	wr32(hw, QINT_TQCTL(pfq), reg | QINT_TQCTL_CAUSE_ENA_M);
+}
+
+/**
+ * ice_vf_ena_rxq_interrupt - enable Tx queue interrupt via QINT_RQCTL
+ * @vsi: VSI of the VF to configure
+ * @q_idx: VF queue index used to determine the queue in the PF's space
+ */
+static void ice_vf_ena_rxq_interrupt(struct ice_vsi *vsi, u32 q_idx)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	u32 pfq = vsi->rxq_map[q_idx];
+	u32 reg;
+
+	reg = rd32(hw, QINT_RQCTL(pfq));
+
+	/* MSI-X index 0 in the VF's space is always for the OICR, which means
+	 * this is most likely a poll mode VF driver, so don't enable an
+	 * interrupt that was never configured via VIRTCHNL_OP_CONFIG_IRQ_MAP
+	 */
+	if (!(reg & QINT_RQCTL_MSIX_INDX_M))
+		return;
+
+	wr32(hw, QINT_RQCTL(pfq), reg | QINT_RQCTL_CAUSE_ENA_M);
+}
+
 /**
  * ice_vc_ena_qs_msg
  * @vf: pointer to the VF info
@@ -2351,6 +2397,7 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 			goto error_param;
 		}
 
+		ice_vf_ena_rxq_interrupt(vsi, vf_q_id);
 		set_bit(vf_q_id, vf->rxq_ena);
 	}
 
@@ -2365,6 +2412,7 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 		if (test_bit(vf_q_id, vf->txq_ena))
 			continue;
 
+		ice_vf_ena_txq_interrupt(vsi, vf_q_id);
 		set_bit(vf_q_id, vf->txq_ena);
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
