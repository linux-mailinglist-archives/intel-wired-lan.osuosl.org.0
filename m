Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 294A7696E45
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 21:07:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FD7860FB1;
	Tue, 14 Feb 2023 20:07:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FD7860FB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676405273;
	bh=Emfs5UF5pnXsZOcgWPzIoix+VOsq3tCw7ln/dpSq9Kc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mlI9EUgTOXEXDkrwomo/uzobr+8gS6UVnGI/Ait4uEDBxkaCnlF0Isr6uFrE91HYm
	 0+46TrwXYsQk9YdiIiC/636dQ35c7SeUN630rpkGM0oEqqOWcsMqUI22c9tnF+tVpp
	 vuyOM0AG/s1yEIhqxiAjArAsomjrwraL1O+I+rRt2DssDphv6UxlxYtRoKWKHLjQD7
	 oxQy1MgCiQyvyQbdO0IZS0UY8b/SxetdYEJCD5G1oWmjgyk6VJGPIlobQK9+VbKYWI
	 XPw+TkBQPMrWbZg1lu3RWIMGhvLuHAwaby6SCGRK/ABG0MgsM7KImfEbz7/U1tVcP6
	 kSeyPpcd8HpvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hmfjdlYYyne; Tue, 14 Feb 2023 20:07:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A37CB60FAD;
	Tue, 14 Feb 2023 20:07:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A37CB60FAD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E70141BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 20:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC6E74034F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 20:07:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC6E74034F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aE5KBO7tmi-6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 20:07:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8284402C2
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B8284402C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 20:07:46 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 73446CE2233;
 Tue, 14 Feb 2023 20:07:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26802C433D2;
 Tue, 14 Feb 2023 20:07:40 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: netdev@vger.kernel.org
Date: Tue, 14 Feb 2023 21:07:33 +0100
Message-Id: <f2b537f86b34fc176fbc6b3d249b46a20a87a2f3.1676405131.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676405261;
 bh=Nk2634DMel1lCzoLAlhYhfLwocNl9MJMXAOkjiIjTa8=;
 h=From:To:Cc:Subject:Date:From;
 b=c4Oqr1CkmSfq9q34m1WUWwfmaN91A5FTEFRVH9YHbxLbWQPC18L6+lptY91F2Wv7O
 cSur+yM4f2SVw33x8q/Vb/UMEYLKVTFm6pG+3Xm9DtedVrGc+yWjOHcqdW/sQQ6NoE
 AAmm8ocD+mInAbmAM62wKyzaBI9zh3nURxfD+g6XHDLmLREjC6fLObvfKma2U/AHTR
 dE7qwLTcRbaQAkOD41JEzmZpbksB41xPfRhwOlwY8qhtZ7NR24C6SCRJAUHI2SGZbV
 BB5r/B1mi0f432RrxeYN2/Uj0b51BBz7OkNmycR0mJOLGStLqUb1JlB0aFUCn6p7q7
 lDUilJAKdjo/g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=c4Oqr1Ck
Subject: [Intel-wired-lan] [PATCH net-next] i40e: check vsi type before
 setting xdp_features flag
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Set xdp_features flag just for I40E_VSI_MAIN vsi type since XDP is
supported just in this configuration.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 3667ad6493d6..11711886c3be 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13787,8 +13787,6 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	netdev->hw_enc_features |= NETIF_F_TSO_MANGLEID;
 
 	netdev->features &= ~NETIF_F_HW_TC;
-	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
-			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
 
 	if (vsi->type == I40E_VSI_MAIN) {
 		SET_NETDEV_DEV(netdev, &pf->pdev->dev);
@@ -13807,6 +13805,10 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 		spin_lock_bh(&vsi->mac_filter_hash_lock);
 		i40e_add_mac_filter(vsi, mac_addr);
 		spin_unlock_bh(&vsi->mac_filter_hash_lock);
+
+		netdev->xdp_features = NETDEV_XDP_ACT_BASIC |
+				       NETDEV_XDP_ACT_REDIRECT |
+				       NETDEV_XDP_ACT_XSK_ZEROCOPY;
 	} else {
 		/* Relate the VSI_VMDQ name to the VSI_MAIN name. Note that we
 		 * are still limited by IFNAMSIZ, but we're adding 'v%d\0' to
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
