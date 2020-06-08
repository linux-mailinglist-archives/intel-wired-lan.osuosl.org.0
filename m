Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8281F22CE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:11:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 045978695C;
	Mon,  8 Jun 2020 23:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DCULXyEmxgzv; Mon,  8 Jun 2020 23:11:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22B8D86BEC;
	Mon,  8 Jun 2020 23:11:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3F861BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F0B378695C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:11:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VVZ36zxr36Ap for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:11:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DDDA086418
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:11:05 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1363208C3;
 Mon,  8 Jun 2020 23:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657865;
 bh=6fIE5Hz8OMymYYjrHzCdvXBjcqLLwBhH7L5RJjvcvQE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oYbWLxxvK9ivZvtiu8s6oL5eQdrn22qHgS1qaWgQ7T+mELIGhOBRl2LHl1qAdclF3
 2L/AhDXdCgY5fF2BlbgbM6/UzV+Hx29wBLYjDPesTYa3+IWO2NfP9277UwwtGpZAR/
 Gak2arc2J+btCK72vzSNEYT/2liVYOVyIICAOwsI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Jun 2020 19:05:20 -0400
Message-Id: <20200608230607.3361041-227-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.7 227/274] ice: Fix Tx timeout
 when link is toggled on a VF's interface
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Brett Creeley <brett.creeley@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

[ Upstream commit 4dc926d3a59e73b8c4adf51b261f1a1bbd48a989 ]

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
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index c9c281167873..f1fdb4d4c826 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2118,6 +2118,52 @@ static bool ice_vc_validate_vqs_bitmaps(struct virtchnl_queue_select *vqs)
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
@@ -2178,6 +2224,7 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 			goto error_param;
 		}
 
+		ice_vf_ena_rxq_interrupt(vsi, vf_q_id);
 		set_bit(vf_q_id, vf->rxq_ena);
 	}
 
@@ -2193,6 +2240,7 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 		if (test_bit(vf_q_id, vf->txq_ena))
 			continue;
 
+		ice_vf_ena_txq_interrupt(vsi, vf_q_id);
 		set_bit(vf_q_id, vf->txq_ena);
 	}
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
