Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A02852C58E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 May 2022 23:31:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 931AD41CDF;
	Wed, 18 May 2022 21:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cT9kZmZVyKSM; Wed, 18 May 2022 21:31:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5692641CD9;
	Wed, 18 May 2022 21:31:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 022A51BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 21:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E420E8136A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 21:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oeXLF2E0ixKD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 May 2022 21:31:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D8E4480BC8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652909485; x=1684445485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DV+wz5xG/8Iix41j1FYCAqO0OrGspxG566MlgcZcbUY=;
 b=c3oKAfe6wdZQbOi6YtLFP0NPjmrpvKruwLSFnDmXhz3sbQYtM3s/rxrF
 dC4g/gdkNi18CV5/SepuO/7++3v20Fub61ZV4orpVcwpiZnl9T5dxo8Bc
 rjT96kr7/yq75Ka8sKz7pjxL+KuE1aeXiDh89s2jEqaMBQSO4cADU9uSH
 o9ehRDjF3hCU9zPxyoXmyrnmsjuUICwnf+evMLgD/+9VebESlWEqWJiWv
 vPStVpxvTdjZT6y37OixhievOTeHODLx7UGHGzUa9xtSQk+vNn9k8YGrx
 ET5EfcS9ZlJddn22+mfhoH+izzFXH2QVbkyNPFwV/wdyBRq6crgNculD3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="332519314"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="332519314"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 14:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="742535092"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by orsmga005.jf.intel.com with ESMTP; 18 May 2022 14:31:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 May 2022 14:27:59 -0700
Message-Id: <20220518212759.2444376-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH RESEND net-next] ice: use
 eth_broadcast_addr() to set broadcast address
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
Cc: Lu Wei <luwei32@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lu Wei <luwei32@huawei.com>

Use eth_broadcast_addr() to set broadcast address instead of memset().

Signed-off-by: Lu Wei <luwei32@huawei.com>
---
Resending due to mail issues with Intel Wired LAN

 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 847b19f5ac0e..9a2050e98cce 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -1415,7 +1415,7 @@ ice_handle_tclass_action(struct ice_vsi *vsi,
 			   ICE_TC_FLWR_FIELD_ENC_DST_MAC)) {
 		ether_addr_copy(fltr->outer_headers.l2_key.dst_mac,
 				vsi->netdev->dev_addr);
-		memset(fltr->outer_headers.l2_mask.dst_mac, 0xff, ETH_ALEN);
+		eth_broadcast_addr(fltr->outer_headers.l2_mask.dst_mac);
 	}
 
 	/* validate specified dest MAC address, make sure either it belongs to
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
