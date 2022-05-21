Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B0052FADB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 May 2022 13:12:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9EA6844AB;
	Sat, 21 May 2022 11:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2BP9OMJhnzwZ; Sat, 21 May 2022 11:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8B0E84487;
	Sat, 21 May 2022 11:12:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7D8D1BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 May 2022 11:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5DF384487
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 May 2022 11:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9bZTXdaET08b for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 May 2022 11:12:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C1958447C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 May 2022 11:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h9/JLNwcfi/UY5XpGVBvv5kFeV8RXwx4GEz/iaYQX+U=;
 b=cKB/R5Gfg8TWn1SfPypRD8jrZI/29M4NQMYtmp85N2SNBeg6kCETahRa
 qlxV7ugiJEmc6zNaX3bslOXg710vAiTVVTX1zJ7kkqXFV1PALXp6GcTs/
 lQkckbvWFuJ7qlGgv0/IUrRuXDKGIBMV082QG41d/fO5pZIj6lHT7hQI9 4=;
Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.91,242,1647298800"; d="scan'208";a="14727951"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.90.48])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2022 13:12:01 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Sat, 21 May 2022 13:11:00 +0200
Message-Id: <20220521111145.81697-50-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] drivers/net/ethernet/intel: fix typos in
 comments
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Spelling mistakes (triple letters) in comments.
Detected with the help of Coccinelle.

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
 drivers/net/ethernet/intel/fm10k/fm10k_mbx.c   |    2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c       |    2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
index 30ca9ee1900b..f2fba6e1d0f7 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
@@ -1825,7 +1825,7 @@ static void fm10k_sm_mbx_process_error(struct fm10k_mbx_info *mbx)
 		fm10k_sm_mbx_connect_reset(mbx);
 		break;
 	case FM10K_STATE_CONNECT:
-		/* try connnecting at lower version */
+		/* try connecting at lower version */
 		if (mbx->remote) {
 			while (mbx->local > 1)
 				mbx->local--;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 454e01ae09b9..70961c0343e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2403,7 +2403,7 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
 				agg_id);
 			return;
 		}
-		/* aggregator node is created, store the neeeded info */
+		/* aggregator node is created, store the needed info */
 		agg_node->valid = true;
 		agg_node->agg_id = agg_id;
 	}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 3e74ab82868b..3f5ef5269bb2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -77,7 +77,7 @@ static int __ixgbe_enable_sriov(struct ixgbe_adapter *adapter,
 	IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, IXGBE_PFDTXGSWC_VT_LBEN);
 	adapter->bridge_mode = BRIDGE_MODE_VEB;
 
-	/* limit trafffic classes based on VFs enabled */
+	/* limit traffic classes based on VFs enabled */
 	if ((adapter->hw.mac.type == ixgbe_mac_82599EB) && (num_vfs < 16)) {
 		adapter->dcb_cfg.num_tcs.pg_tcs = MAX_TRAFFIC_CLASS;
 		adapter->dcb_cfg.num_tcs.pfc_tcs = MAX_TRAFFIC_CLASS;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
