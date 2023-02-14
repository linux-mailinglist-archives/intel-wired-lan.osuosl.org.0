Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA531696721
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 15:39:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F1D481AC1;
	Tue, 14 Feb 2023 14:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F1D481AC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676385588;
	bh=xTDeBKESJwUUjDBTBjpH0wWymgZEU07CL+y1b4xuY/Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8sq5+ZuVdbsmZE0UrI2ZEy8WTbSVerVUCCFs5W9dSKxkW2IZKUrKoY6BuOyCjtKqN
	 1wVObbnPuG6yTb3VGvOS2+MNLRXOnlHv3HbC0U5aphxj+c/Gjw2w34eLNZh/yZQprx
	 LAU/anBs7mbcF2gtNV8LuzquxfMcSQo2BLviJQuKhYH6xAUs+U9EfqL7royG253muz
	 1Kt5+h5XZwOkn6B0nkSd/pWPoE07qlKReCfjUoZV7c8mBPcPRW0ZR5XB8Os1G0Gokm
	 tlGk2BFTP6ktAfSy53hbmrzfvMX4bFpNFcHuWS8lnDH0jLchr10qPi/qEnB4l3Ku4+
	 Vsgs43w428+gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rzo86sQgBwuC; Tue, 14 Feb 2023 14:39:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C88881970;
	Tue, 14 Feb 2023 14:39:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C88881970
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E38EC1BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 14:39:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC2CF60E7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 14:39:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC2CF60E7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Vghb70yWzik for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 14:39:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC6E260E5E
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC6E260E5E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 14:39:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 998BAB81D5D;
 Tue, 14 Feb 2023 14:39:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2285C433EF;
 Tue, 14 Feb 2023 14:39:35 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: netdev@vger.kernel.org
Date: Tue, 14 Feb 2023 15:39:27 +0100
Message-Id: <8a4781511ab6e3cd280e944eef69158954f1a15f.1676385351.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676385576;
 bh=GsXGRd1wPWyEuyPN8KRdR8wexsvRYD/hXlrC0JnxNho=;
 h=From:To:Cc:Subject:Date:From;
 b=J/XRvoyq0JN2fbhHTasYR3tS1Wcz33z8vqsFNc+UtPvn254LwEsuB7CdKXnI8lls9
 CenKOcMETBJWLSCepr4ZVIRD0HdmsOPuSAycQxgwKLM9zUTPmFO8/v+ATktkkXn2ve
 bNLS69FdJ7I4uk2LHCMSpO+ApYhM9YyceE9GldqB3ULnIVeNjt6hDsi+1KFE758LDk
 xinKJ/7WZq1YwQhJT28p6MxJ20TmQU012GwtnPvTGIgnq0k6zZy8r8NVYrq/yxEix0
 5xW724FRoKFK3Z31JOpqRTbRjn4r4qiyR9fy/Iez1kd7Eps5njA7HRaAeFwHcymZZW
 6KOVR4PwpBY7A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=J/XRvoyq
Subject: [Intel-wired-lan] [PATCH v2 net-next] ice: update xdp_features with
 xdp multi-buff
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

Now ice driver supports xdp multi-buffer so add it to xdp_features.
Check vsi type before setting xdp_features flag.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
Changes since v1:
- rebase on top of net-next
- check vsi type before setting xdp_features flag
---
 drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0712c1055aea..4994a0e5a668 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2912,7 +2912,7 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 			if (xdp_ring_err)
 				NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Tx resources failed");
 		}
-		xdp_features_set_redirect_target(vsi->netdev, false);
+		xdp_features_set_redirect_target(vsi->netdev, true);
 		/* reallocate Rx queues that are used for zero-copy */
 		xdp_ring_err = ice_realloc_zc_buf(vsi, true);
 		if (xdp_ring_err)
@@ -3333,10 +3333,11 @@ static void ice_napi_add(struct ice_vsi *vsi)
 
 /**
  * ice_set_ops - set netdev and ethtools ops for the given netdev
- * @netdev: netdev instance
+ * @vsi: the VSI associated with the new netdev
  */
-static void ice_set_ops(struct net_device *netdev)
+static void ice_set_ops(struct ice_vsi *vsi)
 {
+	struct net_device *netdev = vsi->netdev;
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
 	if (ice_is_safe_mode(pf)) {
@@ -3348,6 +3349,13 @@ static void ice_set_ops(struct net_device *netdev)
 	netdev->netdev_ops = &ice_netdev_ops;
 	netdev->udp_tunnel_nic_info = &pf->hw.udp_tunnel_nic;
 	ice_set_ethtool_ops(netdev);
+
+	if (vsi->type != ICE_VSI_PF)
+		return;
+
+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
+			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
+			       NETDEV_XDP_ACT_RX_SG;
 }
 
 /**
@@ -4568,9 +4576,7 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	np->vsi = vsi;
 
 	ice_set_netdev_features(netdev);
-	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
-			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
-	ice_set_ops(netdev);
+	ice_set_ops(vsi);
 
 	if (vsi->type == ICE_VSI_PF) {
 		SET_NETDEV_DEV(netdev, ice_pf_to_dev(vsi->back));
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
