Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C870832A941
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:24:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F91C606E8;
	Tue,  2 Mar 2021 18:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HuAugssIFtSm; Tue,  2 Mar 2021 18:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BD39606BD;
	Tue,  2 Mar 2021 18:24:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 359301BF963
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2351343194
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJCkf97snVlo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:23:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 666EB41507
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:23:58 +0000 (UTC)
IronPort-SDR: ZfOMCbUFFHmI1Pooh4SmM8xA4tER0jyvdX2DAa/hV7RbQGsc8xv8O6G6m0ADuDHz9vGouhFcx9
 4FRedmcU7biQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="174062078"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="174062078"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:21:48 -0800
IronPort-SDR: N21HkXeLU5C1U6KmWO6tvp/8x3Gp/Fb6nMGmQHkXz2TGdUvJFFPp9HUvrBctYkG+WuxS9R8QbR
 7b+TiZqt2rrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="369051172"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2021 10:21:45 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:12:07 -0800
Message-Id: <20210302181213.51718-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S55 08/14] ice: change link
 misconfiguration message
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>

Change link misconfiguration message since the configuration
could be intended by the user.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 862abd9ed660..73e328b0680b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -598,7 +598,7 @@ static void ice_print_topo_conflict(struct ice_vsi *vsi)
 	case ICE_AQ_LINK_TOPO_UNREACH_PRT:
 	case ICE_AQ_LINK_TOPO_UNDRUTIL_PRT:
 	case ICE_AQ_LINK_TOPO_UNDRUTIL_MEDIA:
-		netdev_info(vsi->netdev, "Possible mis-configuration of the Ethernet port detected, please use the Intel(R) Ethernet Port Configuration Tool application to address the issue.\n");
+		netdev_info(vsi->netdev, "Potential misconfiguration of the Ethernet port detected. If it was not intended, please use the Intel (R) Ethernet Port Configuration Tool to address the issue.\n");
 		break;
 	case ICE_AQ_LINK_TOPO_UNSUPP_MEDIA:
 		netdev_info(vsi->netdev, "Rx/Tx is disabled on this device because an unsupported module type was detected. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for a list of supported modules.\n");
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
