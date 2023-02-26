Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2513E6A3096
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Feb 2023 15:50:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA31640566;
	Sun, 26 Feb 2023 14:50:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA31640566
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677423057;
	bh=VfH77jp9kdF5ycxmsY4e4qW7yDM6azQnAr7rxnzmSpQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2/ewi1gZIS4q+Yd1WvWLIw1l3dERxd9ObIAc96cZIWP6m1kWNF9sUhZwYMHWt00Q0
	 qF7ZsmUehgGjN15LM6SlpLaxmYbqgltw0BHSzytiBXG4C+HQ89AF24Sn/iCfshpsxl
	 LsWzYSQsgh7LOLQ/2xwgSM2SFzJ/GmGtyFDhFaTlXum0HWUXz4oTlCVkafsOD/MzQ3
	 GhsE6YSP9fLe+FVOJXbpG4WzgzElbUuP8JdLrlP1QLoYE9dPDGRFd3mvQfe646ZiRe
	 jzCDQkq3FmkiHC8ucQ6HpXAYif94nfV9msR08nOG/VzaL/1GbSvOwK1vrIZyIXAO6n
	 VWd6YA7iTe6Mw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GCf9IWWu19hN; Sun, 26 Feb 2023 14:50:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4C1340396;
	Sun, 26 Feb 2023 14:50:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4C1340396
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CFBF1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 54A6560C0C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54A6560C0C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VGHBLSnWtcH0 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Feb 2023 14:50:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BCE760BD5
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9BCE760BD5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:50:50 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DD00160C3D;
 Sun, 26 Feb 2023 14:50:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80120C433D2;
 Sun, 26 Feb 2023 14:50:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 26 Feb 2023 09:50:00 -0500
Message-Id: <20230226145014.828855-13-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230226145014.828855-1-sashal@kernel.org>
References: <20230226145014.828855-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677423049;
 bh=J8tvAYnnNh+qGP626LZlPmvKvW6/UOO8wDJOxvrNXPw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lQQNOCZuRxUktEcpbT9nzUkb4FSOjIShsiDtT02s2exwA9l7JhbZJ8dV090oaeRZA
 3JZxp7khbn2m4dIxuhVrlaP6iMUQ1mt9JZIGYytL7TPfEvz+xEiUCdZMANubHmjIYG
 gft5u66LStKpQbLhZUGbHj5lWsUmIdz8G1sNuNFg3EpA4uEfd+NZGvNWzTeQXDz0Pw
 faIuZHiswPzQ92teM8ICSIGQ58a6zjXMmfiFbA0Ga2vfQDG5l16ojYUL69mA6NpqOl
 6y7jjohqnOKTcDP60gJ6aD1mHYvPcs62NZH20NAeigkTZbiLiLdlRquNym9DvWliOj
 uobu49W32kyOA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lQQNOCZu
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.10 13/27] ice: add missing
 checks for PF vsi type
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
index c1465096239b6..4f0d63fa5709b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5200,15 +5200,12 @@ int ice_vsi_cfg(struct ice_vsi *vsi)
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
 
@@ -5267,7 +5264,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
 
 	if (vsi->port_info &&
 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
-	    vsi->netdev) {
+	    vsi->netdev && vsi->type == ICE_VSI_PF) {
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
@@ -5277,7 +5274,9 @@ static int ice_up_complete(struct ice_vsi *vsi)
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
