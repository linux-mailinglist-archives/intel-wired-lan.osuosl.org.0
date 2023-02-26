Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A316A303D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Feb 2023 15:47:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB5284061F;
	Sun, 26 Feb 2023 14:47:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB5284061F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677422863;
	bh=G+4s0xCu6MOsOKAzZ4qbHD9kPh2nAlJjtvQUF7lxsMY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GVDqhKe3jtZn/vtC6lcb6VhgXenGUm1LCUXRi3lc6vRuMYBvZeQegJlzekQSeyake
	 UjhlqhL7neIwa45Qg+v+RRBYOD9QApg1ztuNx2KbmLEee6xXM/ThmCyovPYODDSApw
	 fYlPVebuDkl4MwRYvAaOFuiNJsgCeAGcS1sMFSYqorKZtj6JKb4M3MsFQ7lCA+wHEX
	 PuufCzj+T228EQf9qMlRGxfuCDARb/J3u3wYi5bTeTKBo4pAgSIZ9LreWj+Mv5UxCg
	 mX25MoQDeuTOALpz/DL0tYGQMN7aU3C7FKcYy0t9tNbYEgudLp+AYvXXeGqQL4f5nN
	 i17WukeVJm1xQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8L3eYFX2cioo; Sun, 26 Feb 2023 14:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF47F405AB;
	Sun, 26 Feb 2023 14:47:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF47F405AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A5EA51BF41C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AB6080BA4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:47:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AB6080BA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-R2DAyKKJul for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Feb 2023 14:47:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40C8480B7E
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 40C8480B7E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:47:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8F03160C5C;
 Sun, 26 Feb 2023 14:47:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5C7AC433EF;
 Sun, 26 Feb 2023 14:47:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 26 Feb 2023 09:46:18 -0500
Message-Id: <20230226144650.826470-18-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230226144650.826470-1-sashal@kernel.org>
References: <20230226144650.826470-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677422854;
 bh=hTQd1vireLYz9d4rgwOCseeVAN4I/EL5caizAQWdz1s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c+nM1z3ghflPjQlYGs17sqVqwPsuvPAFhCYA3eM4/hVFVzAfwg8gLlVqYU9adlmYz
 BflZ5PDE/2hL9aPU1uAmA30x7/WpYFNZzFbNkeqajkn6COElyr9L/Mm/CZpVEWgsc3
 9uvDtt+pzCQ4aRQWWcO0GG5nBeE5mVYcoqi7aVMY1ZICOvE6GToSEKP4+Xf/ti9gFE
 rrpSVYg9UIIHp2R/tOAKZ/WopxokKD3oIcIjhGpHX2T1YVtxId7ajxN1gwLtNYoAkG
 qIJbqAKJVpvJaWvxhlUvib7X6H1QFrzNCe7iyL9zABPXxzGP6fKmWyzQWsRqDDkFOi
 kpn24e4Hj5Bbw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=c+nM1z3g
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.1 18/49] ice: add missing checks
 for PF vsi type
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
Cc: Sasha Levin <sashal@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, edumazet@google.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

[ Upstream commit 6a8d013e904ad9a66706fcc926ec9993bed7d190 ]

There were a few places we had missed checking the VSI type to make sure
it was definitely a PF VSI, before calling setup functions intended only
for the PF VSI.

This doesn't fix any explicit bugs but cleans up the code in a few
places and removes one explicit != vsi->type check that can be
superseded by this code (it's a super set)

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 72f97bb50b09c..3c6bb3f9ac780 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6159,15 +6159,12 @@ int ice_vsi_cfg(struct ice_vsi *vsi)
 {
 	int err;
 
-	if (vsi->netdev) {
+	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
 		ice_set_rx_mode(vsi->netdev);
 
-		if (vsi->type != ICE_VSI_LB) {
-			err = ice_vsi_vlan_setup(vsi);
-
-			if (err)
-				return err;
-		}
+		err = ice_vsi_vlan_setup(vsi);
+		if (err)
+			return err;
 	}
 	ice_vsi_cfg_dcb_rings(vsi);
 
@@ -6348,7 +6345,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
 
 	if (vsi->port_info &&
 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
-	    vsi->netdev) {
+	    vsi->netdev && vsi->type == ICE_VSI_PF) {
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
@@ -6360,7 +6357,9 @@ static int ice_up_complete(struct ice_vsi *vsi)
 	 * set the baseline so counters are ready when interface is up
 	 */
 	ice_update_eth_stats(vsi);
-	ice_service_task_schedule(pf);
+
+	if (vsi->type == ICE_VSI_PF)
+		ice_service_task_schedule(pf);
 
 	return 0;
 }
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
