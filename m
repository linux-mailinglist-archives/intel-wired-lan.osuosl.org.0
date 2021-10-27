Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C264D43C19F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 06:37:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F8F28101B;
	Wed, 27 Oct 2021 04:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gq1mViF192KO; Wed, 27 Oct 2021 04:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D2E780E5E;
	Wed, 27 Oct 2021 04:37:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF8D91BF386
 for <intel-wired-lan@osuosl.org>; Wed, 27 Oct 2021 04:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ACB4980E5E
 for <intel-wired-lan@osuosl.org>; Wed, 27 Oct 2021 04:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e4r20z8QpZeC for <intel-wired-lan@osuosl.org>;
 Wed, 27 Oct 2021 04:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2424F80E56
 for <intel-wired-lan@osuosl.org>; Wed, 27 Oct 2021 04:37:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="230020743"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="230020743"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 21:37:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="724767032"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga005.fm.intel.com with ESMTP; 26 Oct 2021 21:37:43 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 27 Oct 2021 06:36:54 +0200
Message-Id: <20211027043654.6445-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: matching on nvgre key id
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

In ice driver nvgre header is stored in different structure than vxlan
and geneve. Also the id can be 32 bit. Check tunnel type before adding
encap key id matching to reflect these differences.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
This commit should be squashed with "ice: support for GRE in eswitch"

 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 2fff16bb5d7c..4e1dac813339 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -138,10 +138,22 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 		u32 tenant_id;
 
 		list[i].type = ice_proto_type_from_tunnel(fltr->tunnel_type);
-		tenant_id = be32_to_cpu(fltr->tenant_id) << 8;
-		list[i].h_u.tnl_hdr.vni = cpu_to_be32(tenant_id);
-		memcpy(&list[i].m_u.tnl_hdr.vni, "\xff\xff\xff\x00", 4);
-		i++;
+		switch (fltr->tunnel_type) {
+		case TNL_VXLAN:
+		case TNL_GENEVE:
+			tenant_id = be32_to_cpu(fltr->tenant_id) << 8;
+			list[i].h_u.tnl_hdr.vni = cpu_to_be32(tenant_id);
+			memcpy(&list[i].m_u.tnl_hdr.vni, "\xff\xff\xff\x00", 4);
+			i++;
+			break;
+		case TNL_GRETAP:
+			list[i].h_u.nvgre_hdr.tni_flow = fltr->tenant_id;
+			memcpy(&list[i].m_u.nvgre_hdr.tni_flow, "\xff\xff\xff\xff", 4);
+			i++;
+			break;
+		default:
+			break;
+		}
 	}
 
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
