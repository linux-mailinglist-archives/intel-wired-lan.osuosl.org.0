Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79D682F632
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jan 2024 20:54:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5947342F4E;
	Tue, 16 Jan 2024 19:54:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5947342F4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705434844;
	bh=C6X/ykVAWkbHzmAUtlbp9i96BUCy8Y02OOKdX1ARbBg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nso1NEbhHioybWaS6crSVlFDBuKTiqcmXJgbjKl3Mc9x0atTVEsPsc6nrZwUuFNPg
	 gmpNf2j1Svwf76iStcCSwaDNMaWdNAL2XWE0ijp6NzjHRHCCYP9fpGS9m6YLyrNImF
	 JsK9gKE+qUJHUcqCj6/cQJklwqDNtea9zgNT+6cZzDXn2OzgzXaWbPjl7XDAK2sPAK
	 Lb/M+roRiDw3JRb3WvZYJGbNE2cR3Rrl7uc+anv2ogzHJ9/7AICryEzqLbvJjloqpi
	 wFUdIdpHbEU3jmE8/6gGRmgXldcGecrJLcEiLRgWT4oZ5jXK2Q1e/RFqEbFe/aDPln
	 S2u2zKfjSju3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aBQmwVNru_bk; Tue, 16 Jan 2024 19:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2A9E400C8;
	Tue, 16 Jan 2024 19:54:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2A9E400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B10561BF846
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:53:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 899CB40891
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:53:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 899CB40891
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eArXJuoHzMJ1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jan 2024 19:53:56 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD77F40890
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jan 2024 19:53:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD77F40890
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1B4DD611AE;
 Tue, 16 Jan 2024 19:53:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0457C433C7;
 Tue, 16 Jan 2024 19:53:53 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 16 Jan 2024 14:47:07 -0500
Message-ID: <20240116194908.253437-101-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116194908.253437-1-sashal@kernel.org>
References: <20240116194908.253437-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.12
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705434835;
 bh=0EhPbzugpHhhjXKz7HNRPo85aLkvcRSu83dyfdZVnwY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sW/P09Y3J6QDBXpJqvYT0Pw2zyOoLC6FQx7zQzenA4MriAHplOzvNXn7eXk9Z9Lgc
 xbtES1ggo2kt4igLKs9gLZxHNBo9VTsxRBC7XkLe6N6SiQQbMe8NJwCBKujlhbLHtd
 OLAELp9/W/PE+LKsQqH3ZNQFriqGyubxy7lmJ+Vg8kdPCNeetnpsOvp5cyc/tFAavX
 SvvJIShFq8KjTy5+7ICrErs3UG5qz3AvcRTHeQKLQvMFCY1I7KSSzxzEA5c+7ApLKD
 0gVyX9jtwsUHw8MXxj+p9mV7sWVMBuWNLRdaKnU09Izopik8/JKLI6UN+0wMxdHg9K
 +3HbuAb2cauXA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sW/P09Y3
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.6 101/104] i40e: Fix VF disable
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
index 4441b00297f4..0f8ee90b27e7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2579,6 +2579,14 @@ static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8 *msg)
 	int aq_ret = 0;
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
 		aq_ret = -EINVAL;
 		goto error_param;
@@ -4706,9 +4714,12 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
 	struct i40e_link_status *ls = &pf->hw.phy.link_info;
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
@@ -4731,17 +4742,38 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
 	switch (link) {
 	case IFLA_VF_LINK_STATE_AUTO:
 		vf->link_forced = false;
+		vf->is_disabled_from_host = false;
+		/* reset needed to reinit VF resources */
+		i40e_vc_reset_vf(vf, true);
 		i40e_set_vf_link_state(vf, &pfe, ls);
 		break;
 	case IFLA_VF_LINK_STATE_ENABLE:
 		vf->link_forced = true;
 		vf->link_up = true;
+		vf->is_disabled_from_host = false;
+		/* reset needed to reinit VF resources */
+		i40e_vc_reset_vf(vf, true);
 		i40e_set_vf_link_state(vf, &pfe, ls);
 		break;
 	case IFLA_VF_LINK_STATE_DISABLE:
 		vf->link_forced = true;
 		vf->link_up = false;
 		i40e_set_vf_link_state(vf, &pfe, ls);
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
index 895b8feb2567..9fc1a143a494 100644
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

