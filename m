Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E0269068C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 12:18:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91ED540D0F;
	Thu,  9 Feb 2023 11:18:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91ED540D0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675941483;
	bh=I5Ewx+jLtIP7VdABGhY+05JmRyRkKixZvYpL2bxGPjY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rdfaUYYD9XiXCs5QIij+moJJ4hTzLMoK4Pa3Bf1z3Z/fXJkDC8colTkHjjVM3Rqw1
	 pEmrPfxJhi4+hOsZUBiQxzl7JsYU41LrC3lNpKHVs6ZZ42gJsyojbY5cYkJWRTFC1W
	 nJ+UwDixam6t3wBk6Ntg1WlLSjPW1pULqAPUFFZBeQ0/zdkYjdD1WnafUh595goRM1
	 V99NyaDahWMu1DVBngqC0x5Q4C01/kqJtt5/c9hcHkiDVX0OrBvVS6bXPgoxKvfBZA
	 W6uux6POECeC/H/NYbd4udn3JvoMn+vtnlc7QcBWkCRVj6L2AP1S0BCAPA8zt86YfL
	 xC03fRRxXLWeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9D9NY_yWJzva; Thu,  9 Feb 2023 11:18:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DC39404D1;
	Thu,  9 Feb 2023 11:18:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DC39404D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03EBA1BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 11:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA8D2404D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 11:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA8D2404D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4vk-HQSx6bG4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Feb 2023 11:17:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B417040462
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B417040462
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 11:17:55 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 05E5A619C2;
 Thu,  9 Feb 2023 11:17:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6C36C433D2;
 Thu,  9 Feb 2023 11:17:53 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Thu,  9 Feb 2023 12:17:25 +0100
Message-Id: <b564473cdefc82bda9a3cecd3c15538a418e8ad2.1675941199.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675941474;
 bh=u5OTeyvEI9BF11Q3e6rlK/Gtws2OGY6/oidQIVWTcdY=;
 h=From:To:Cc:Subject:Date:From;
 b=CedugU1tkhgKeCDcJ3Y9HqqwmezGNYoB45Xn4Uak0TUvZrz4U57vne4ZgkrjxHdfx
 zakNTNyyc7ZUbqhDpMkfDoO4hDVraYH7keUF1E6q2A2QwuU4BfhLZCxK8PQ4FnuAw7
 FbAuICWxMGdSbwiiYEXGKGhnAehGIq29vLGjYvIQ115K9nKPo6Wznln5xsF/yobt7p
 h94tG2uvBLdjM9ck5QXXX3IiJ6Pe52GX/DWpV85+dmSmFV+BXklGf8RD/JeNls0kUJ
 1D6fLIUx13mGujlzLZAo5IJKZlt5t28kIe3/j1/aP2MvZFeGTDvPi0bzfEp4W0PhAg
 Lcew9WiLRv89w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CedugU1t
Subject: [Intel-wired-lan] [PATCH bpf-next] ice: update xdp_features with
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 andrii@kernel.org, jesse.brandeburg@intel.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now ice driver supports xdp multi-buffer so add it to xdp_features.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 074b0e6d0e2d..7194888d2a3d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2913,7 +2913,7 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 			if (xdp_ring_err)
 				NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Tx resources failed");
 		}
-		xdp_features_set_redirect_target(vsi->netdev, false);
+		xdp_features_set_redirect_target(vsi->netdev, true);
 		/* reallocate Rx queues that are used for zero-copy */
 		xdp_ring_err = ice_realloc_zc_buf(vsi, true);
 		if (xdp_ring_err)
@@ -3463,7 +3463,8 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 
 	ice_set_netdev_features(netdev);
 	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
-			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
+			       NETDEV_XDP_ACT_XSK_ZEROCOPY |
+			       NETDEV_XDP_ACT_RX_SG;
 
 	ice_set_ops(netdev);
 
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
