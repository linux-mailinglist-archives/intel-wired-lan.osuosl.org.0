Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C09782F68F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jan 2024 21:02:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5415340382;
	Tue, 16 Jan 2024 20:02:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5415340382
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705435367;
	bh=xpFc5ViLDOdBXS6WRgFutUKQ/PRrM5yE93fRVMoupy8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u9KkK4iaFMT1K5nXCadcOZdfRi6sRmvaUw0e4AGvdI9/zLB9ZKnCT8rGrX4ozaUeu
	 oc0mUzwd4QFHaWtTxso05DRVE6OPxBw5qce17LlmFhkQTTBvpY9xf6JbSqI7zyRW5M
	 5MpqbLODRrvxNP6yMxzpVcoZgzk47NyuiNA+ETKZ1neZZracwLBN/zy0lrZyf0E39U
	 eL0dHdt40l8oEWuIDeFvuxFGLU9MdlBW2kqnyHCbq7WftxSI+VGRCgALBHkBYX/OEz
	 N2jwBGP8bCTIAuLXXHyl8qboLsEfWglbzdjkCF3UB2rQfsw1DZ9W1hbuAkP/hDkDIc
	 ctehvke58D8rw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nlPdcQzSS0r9; Tue, 16 Jan 2024 20:02:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E3D6400C8;
	Tue, 16 Jan 2024 20:02:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E3D6400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E69FB1BF846
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 20:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9D9441B08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 20:02:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9D9441B08
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Co4l1JEDqeiQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jan 2024 20:02:40 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DAAF741A7A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 20:02:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DAAF741A7A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2D91961013;
 Tue, 16 Jan 2024 20:02:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F35AAC433C7;
 Tue, 16 Jan 2024 20:02:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 16 Jan 2024 15:00:13 -0500
Message-ID: <20240116200044.258335-44-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116200044.258335-1-sashal@kernel.org>
References: <20240116200044.258335-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.208
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705435358;
 bh=gJKiIBBbDy53AjLvncnJKbuQ+GetRLTkRmFZqpRLLdY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pQ2QXEaSm1qsOFRzziFk+eI9icNbTH0w2xlJbpnLCVUwlPo7kWq59hZUG9yi+Gjhu
 0AsBJsMC9Wx/lRDzGys3CWJSfrc2MCo0AezH25XlncT8mSlPnB+KoGTX0T5F+PUit8
 EALPff/eJQcv1w/mRppUOZHNCJeBhiRxGHUeclj8CH8aTuuXUpMy8l3goHAebevBWq
 0VHHVYWur+bzP4fjqmZSoYSjvFWsOYoPIU7kh6temPsmOVwP5KK6H0YTKGz6V02hnu
 4XzFPzoWZUSJ7Q1AvW3yaEO4ecHTIHh7FeixZ3uVQlb2axq5B0ltQZJHb82AoOCzje
 UxPQNkd2A8yQw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pQ2QXEaS
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.10 44/44] i40e: Fix VF disable
 behavior to block all traffic
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
Cc: Sasha Levin <sashal@kernel.org>, Jan Sokolowski <jan.sokolowski@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, davem@davemloft.net,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, jesse.brandeburg@intel.com,
 Andrii Staikov <andrii.staikov@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 Rafal Romanowski <rafal.romanowski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andrii Staikov <andrii.staikov@intel.com>

[ Upstream commit 31deb12e85c35ddd2c037f0107d05d8674cab2c0 ]

Currently, if a VF is disabled using the
'ip link set dev $ETHX vf $VF_NUM state disable' command, the VF is still
able to receive traffic.

Fix the behavior of the 'ip link set dev $ETHX vf $VF_NUM state disable'
to completely shutdown the VF's queues making it entirely disabled and
not able to receive or send any traffic.

Modify the behavior of the 'ip link set $ETHX vf $VF_NUM state enable'
command to make a VF do reinitialization bringing the queues back up.

Co-developed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 32 +++++++++++++++++++
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
 2 files changed, 33 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index dfaa34f2473a..91892d07124f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2519,6 +2519,14 @@ static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8 *msg)
 	i40e_status aq_ret = 0;
 	int i;
 
+	if (vf->is_disabled_from_host) {
+		aq_ret = -EPERM;
+		dev_info(&pf->pdev->dev,
+			 "Admin has disabled VF %d, will not enable queues\n",
+			 vf->vf_id);
+		goto error_param;
+	}
+
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
@@ -4561,9 +4569,12 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
 	struct i40e_pf *pf = np->vsi->back;
 	struct virtchnl_pf_event pfe;
 	struct i40e_hw *hw = &pf->hw;
+	struct i40e_vsi *vsi;
+	unsigned long q_map;
 	struct i40e_vf *vf;
 	int abs_vf_id;
 	int ret = 0;
+	int tmp;
 
 	if (test_and_set_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
 		dev_warn(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
@@ -4586,6 +4597,9 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
 	switch (link) {
 	case IFLA_VF_LINK_STATE_AUTO:
 		vf->link_forced = false;
+		vf->is_disabled_from_host = false;
+		/* reset needed to reinit VF resources */
+		i40e_vc_reset_vf(vf, true);
 		pfe.event_data.link_event.link_status =
 			pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP;
 		pfe.event_data.link_event.link_speed =
@@ -4595,6 +4609,9 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
 	case IFLA_VF_LINK_STATE_ENABLE:
 		vf->link_forced = true;
 		vf->link_up = true;
+		vf->is_disabled_from_host = false;
+		/* reset needed to reinit VF resources */
+		i40e_vc_reset_vf(vf, true);
 		pfe.event_data.link_event.link_status = true;
 		pfe.event_data.link_event.link_speed = VIRTCHNL_LINK_SPEED_40GB;
 		break;
@@ -4603,6 +4620,21 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
 		vf->link_up = false;
 		pfe.event_data.link_event.link_status = false;
 		pfe.event_data.link_event.link_speed = 0;
+
+		vsi = pf->vsi[vf->lan_vsi_idx];
+		q_map = BIT(vsi->num_queue_pairs) - 1;
+
+		vf->is_disabled_from_host = true;
+
+		/* Try to stop both Tx&Rx rings even if one of the calls fails
+		 * to ensure we stop the rings even in case of errors.
+		 * If any of them returns with an error then the first
+		 * error that occurred will be returned.
+		 */
+		tmp = i40e_ctrl_vf_tx_rings(vsi, q_map, false);
+		ret = i40e_ctrl_vf_rx_rings(vsi, q_map, false);
+
+		ret = tmp ? tmp : ret;
 		break;
 	default:
 		ret = -EINVAL;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 358bbdb58795..010e5730465e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -98,6 +98,7 @@ struct i40e_vf {
 	bool link_forced;
 	bool link_up;		/* only valid if VF link is forced */
 	bool spoofchk;
+	bool is_disabled_from_host; /* PF ctrl of VF enable/disable */
 	u16 num_vlan;
 
 	/* ADq related variables */
-- 
2.43.0

