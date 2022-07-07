Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C11E0569F7D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 12:21:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7905241902;
	Thu,  7 Jul 2022 10:21:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7905241902
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657189264;
	bh=zBU0vy6c2gPeoLArOWlSCnzwhyKTDihUgnpQ7pO69Ts=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x8tSi+/DbJUbPI/4FrxfEsXqLdNNkRCbhQa7/PZ2pwQMg25lOUh3BWjnGBejXwp6B
	 kN4PwLVyBJdxWT36T3zTK1FSoF77D86nAZBpgsO2z4pBEvKwLKq1g8jf58Fbl6PZKE
	 W3DO/sJOyGqGD82ehrdrDl/gtagFfZ+t9vDvwFrJOHt7+RtIp6mRNVXo2e+vR7iSrP
	 3DB5x0u+Igpg/rORc9vkj6OvYZUz4V2X64ifZ1+rMlmNge/S4NJIiufGU64VWOoYKD
	 fSalf6QOfzi+VOPR4287XNX3IpmPcM3DPbu81KTpKEl0u061OQ9QzznGvxZPUVpjqn
	 aj04ZbbBOx78w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lE0mBaGDSkx8; Thu,  7 Jul 2022 10:21:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46B3741886;
	Thu,  7 Jul 2022 10:21:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46B3741886
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BC511BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36500418B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36500418B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D-XAcL6N4VEw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 10:20:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DDB641886
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DDB641886
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:20:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="267018033"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="267018033"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 03:20:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="696458251"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jul 2022 03:20:52 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Jul 2022 12:20:43 +0200
Message-Id: <20220707102044.48775-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220707102044.48775-1-maciej.fijalkowski@intel.com>
References: <20220707102044.48775-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657189255; x=1688725255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z6ljLWA0yJSS4H0haMyrgiV+yyrZhPfOehdjPjrbD2U=;
 b=JJJGOnEr+tGrtXuRK4iB8Cqupf/OUFWlveB3hsBbqSnz8JsrItrG+0jl
 mqbc+epOKfC4/jYtgcuArXlVtft4834iL0x+SGTtVLur5gxonNdmzId3a
 giVqr9i0H/NhhzbneciAha78ITqp+w2U7wqllUMh7dgQWN1LfG+pUTmmo
 Xc6ymGqq0ZHGV8d+xO/U9uGrxlC1YMVmEur+yDsVCJS2FAUA/dSaJzNsC
 ctjKm27oY2qkcl2DQPOkzIv2lnIfpKMf7egIjaUnzmjFKT2GgeEOQqnxX
 AhRmS9lAlAS7de/8qlwNq92AmLWK8IRNO1rS/9KWK4XBE1H6msB/NrYrS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JJJGOnEr
Subject: [Intel-wired-lan] [PATCH intel-net 2/2] ice: do not setup vlan for
 loopback VSI
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
Cc: netdev@vger.kernel.org, john.fastabend@gmail.com,
 anatolii.gerasymenko@intel.com, kuba@kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently loopback test is failiing due to the error returned from
ice_vsi_vlan_setup(). Skip calling it when preparing loopback VSI.

Fixes: 0e674aeb0b77 ("ice: Add handler for ethtool selftest")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c1ac2f746714..2c40873bcbb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6010,10 +6010,12 @@ int ice_vsi_cfg(struct ice_vsi *vsi)
 	if (vsi->netdev) {
 		ice_set_rx_mode(vsi->netdev);
 
-		err = ice_vsi_vlan_setup(vsi);
+		if (vsi->type != ICE_VSI_LB) {
+			err = ice_vsi_vlan_setup(vsi);
 
-		if (err)
-			return err;
+			if (err)
+				return err;
+		}
 	}
 	ice_vsi_cfg_dcb_rings(vsi);
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
