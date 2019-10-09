Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0CFD1BDE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:40:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4233C88431;
	Wed,  9 Oct 2019 22:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7H0dI78lmmJh; Wed,  9 Oct 2019 22:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BE108835E;
	Wed,  9 Oct 2019 22:40:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72E291BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 70A56869F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tYY_Tbs6zCSb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:40:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E2BBF844BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 15:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="197052262"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga003.jf.intel.com with ESMTP; 09 Oct 2019 15:40:00 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2019 07:09:49 -0700
Message-Id: <20191009140953.14087-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
References: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S31 11/15] ice: print unsupported module
 message
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

Print message to inform user if unsupported module is inserted, and
extend the topology / configuration detection.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 4 ++++
 drivers/net/ethernet/intel/ice/ice_main.c       | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index cfdd72fbd0da..e2779be0cb29 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1045,6 +1045,10 @@ struct ice_aqc_get_link_status_data {
 #define ICE_AQ_LINK_TOPO_CONFLICT	BIT(0)
 #define ICE_AQ_LINK_MEDIA_CONFLICT	BIT(1)
 #define ICE_AQ_LINK_TOPO_CORRUPT	BIT(2)
+#define ICE_AQ_LINK_TOPO_UNREACH_PRT	BIT(4)
+#define ICE_AQ_LINK_TOPO_UNDRUTIL_PRT	BIT(5)
+#define ICE_AQ_LINK_TOPO_UNDRUTIL_MEDIA	BIT(6)
+#define ICE_AQ_LINK_TOPO_UNSUPP_MEDIA	BIT(7)
 	u8 reserved1;
 	u8 link_info;
 #define ICE_AQ_LINK_UP			BIT(0)	/* Link Status */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2493be3289ed..58b90fc95eb3 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -779,8 +779,14 @@ static void ice_print_topo_conflict(struct ice_vsi *vsi)
 	switch (vsi->port_info->phy.link_info.topo_media_conflict) {
 	case ICE_AQ_LINK_TOPO_CONFLICT:
 	case ICE_AQ_LINK_MEDIA_CONFLICT:
+	case ICE_AQ_LINK_TOPO_UNREACH_PRT:
+	case ICE_AQ_LINK_TOPO_UNDRUTIL_PRT:
+	case ICE_AQ_LINK_TOPO_UNDRUTIL_MEDIA:
 		netdev_info(vsi->netdev, "Possible mis-configuration of the Ethernet port detected, please use the Intel(R) Ethernet Port Configuration Tool application to address the issue.\n");
 		break;
+	case ICE_AQ_LINK_TOPO_UNSUPP_MEDIA:
+		netdev_info(vsi->netdev, "Rx/Tx is disabled on this device because an unsupported module type was detected. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for a list of supported modules.\n");
+		break;
 	default:
 		break;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
