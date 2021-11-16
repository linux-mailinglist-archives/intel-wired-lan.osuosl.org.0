Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BE44537A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Nov 2021 17:36:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B92F60724;
	Tue, 16 Nov 2021 16:36:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8EBhG0WSInGE; Tue, 16 Nov 2021 16:36:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51E246070B;
	Tue, 16 Nov 2021 16:36:09 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6EE261BF315
 for <intel-wired-lan@osuosl.org>; Tue, 16 Nov 2021 09:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E244607D9
 for <intel-wired-lan@osuosl.org>; Tue, 16 Nov 2021 09:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AqwyL32Sg6jB for <intel-wired-lan@osuosl.org>;
 Tue, 16 Nov 2021 09:37:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE2DB60698
 for <intel-wired-lan@osuosl.org>; Tue, 16 Nov 2021 09:37:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="233493075"
X-IronPort-AV: E=Sophos;i="5.87,238,1631602800"; d="scan'208";a="233493075"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 01:37:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,238,1631602800"; d="scan'208";a="454188208"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga003.jf.intel.com with ESMTP; 16 Nov 2021 01:37:49 -0800
From: Michal Swiatkowski <michal.swiatkowski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 16 Nov 2021 10:36:15 +0100
Message-Id: <20211116093615.10740-1-michal.swiatkowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 16 Nov 2021 16:36:02 +0000
Subject: [Intel-wired-lan] [PATCH net] ice: fix choosing udp header type
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

In tunnels packet there can be two UDP headers:
- outer which for hw should be mark as ICE_UDP_OF
- inner which for hw should be mark as ICE_UDP_ILOS or as ICE_TCP_IL if
  inner header is of TCP type

In none tunnels packet header can be:
- UDP, which for hw should be mark as ICE_UDP_ILOS
- TCP, which for hw should be mark as ICE_TCP_IL

Change incorrect ICE_UDP_OF for none tunnel packets to ICE_UDP_ILOS.
ICE_UDP_OF is incorrect for none tunnel packets and setting it leads to
error from hw while adding this kind of recipe.

In summary, for tunnel outer port type should always be set to
ICE_UDP_OF, for none tunnel outer and tunnel inner it should always be
set to ICE_UDP_ILOS.

Fixes: 9e300987d4a81 ("ice: VXLAN and Geneve TC support")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 26 ++++++++-------------
 1 file changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 4e1dac813339..29fe359a5598 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -78,20 +78,13 @@ ice_proto_type_from_ipv6(bool inner)
 }
 
 static enum ice_protocol_type
-ice_proto_type_from_l4_port(bool inner, u16 ip_proto)
+ice_proto_type_from_l4_port(u16 ip_proto)
 {
-	if (inner) {
-		switch (ip_proto) {
-		case IPPROTO_UDP:
-			return ICE_UDP_ILOS;
-		}
-	} else {
-		switch (ip_proto) {
-		case IPPROTO_TCP:
-			return ICE_TCP_IL;
-		case IPPROTO_UDP:
-			return ICE_UDP_OF;
-		}
+	switch (ip_proto) {
+	case IPPROTO_TCP:
+		return ICE_TCP_IL;
+	case IPPROTO_UDP:
+		return ICE_UDP_ILOS;
 	}
 
 	return 0;
@@ -194,8 +187,9 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 		i++;
 	}
 
-	if (flags & ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT) {
-		list[i].type = ice_proto_type_from_l4_port(false, hdr->l3_key.ip_proto);
+	if ((flags & ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT) &&
+	    hdr->l3_key.ip_proto == IPPROTO_UDP) {
+		list[i].type = ICE_UDP_OF;
 		list[i].h_u.l4_hdr.dst_port = hdr->l4_key.dst_port;
 		list[i].m_u.l4_hdr.dst_port = hdr->l4_mask.dst_port;
 		i++;
@@ -320,7 +314,7 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		     ICE_TC_FLWR_FIELD_SRC_L4_PORT)) {
 		struct ice_tc_l4_hdr *l4_key, *l4_mask;
 
-		list[i].type = ice_proto_type_from_l4_port(inner, headers->l3_key.ip_proto);
+		list[i].type = ice_proto_type_from_l4_port(headers->l3_key.ip_proto);
 		l4_key = &headers->l4_key;
 		l4_mask = &headers->l4_mask;
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
