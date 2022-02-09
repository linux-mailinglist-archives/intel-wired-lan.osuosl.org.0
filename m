Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303C54AE642
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Feb 2022 01:58:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 590F1408F3;
	Wed,  9 Feb 2022 00:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uw-wePhE1fgT; Wed,  9 Feb 2022 00:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E33CE408E2;
	Wed,  9 Feb 2022 00:58:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 643611BF9AF
 for <intel-wired-lan@osuosl.org>; Wed,  9 Feb 2022 00:58:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 52A0F40886
 for <intel-wired-lan@osuosl.org>; Wed,  9 Feb 2022 00:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RHIviaL8OuLh for <intel-wired-lan@osuosl.org>;
 Wed,  9 Feb 2022 00:58:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46569401FC
 for <intel-wired-lan@osuosl.org>; Wed,  9 Feb 2022 00:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644368303; x=1675904303;
 h=subject:from:to:cc:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qk5/RvIQDzDtv5ajzIddk68PGecysVI3StugjF8mA+g=;
 b=Janq6Mj7JZWvhW4YLIoGP2QD+PFa1191N03sf0EQaAADc8OzHlXjg60Y
 fVPCEbDeeBNcpzKWWHZtJP16z9SyweuuW8UjAZ9t9wXXFt3Cib7wuf8jv
 UZmJ5kdJw3NWhUN2mwzcqpuYv/mUzG+V9mM7QEsXPCBBsznAu30HHWrT4
 J9ue8atvR9z1LLujO9mAueNIedjK7OAddmrIb7AqKXnzLyRub7JXL1frY
 jGKb+um5aB2tLiq7umTP5y3MRoNr1zKvlPdLQPNSo+KrYjax3L7giZjlA
 HN8+63v/daRGQ5zyot3WPFsYwY5HNVkJtf9x0zqHNB4T7Xu4lSC61GnZH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249036646"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="249036646"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 16:58:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="773310248"
Received: from anambiarhost.jf.intel.com ([10.166.29.119])
 by fmsmga005.fm.intel.com with ESMTP; 08 Feb 2022 16:58:21 -0800
From: Amritha Nambiar <amritha.nambiar@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 08 Feb 2022 17:06:05 -0800
Message-ID: <164436876576.5021.7903773697130184451.stgit@anambiarhost.jf.intel.com>
User-Agent: StGit/unknown-version
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v1] ice: Add support for outer
 dest MAC for ADQ tunnels
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

TC flower does not support matching on user specified
outer MAC address for tunnels. For ADQ tunnels, the driver
adds outer destination MAC address as lower netdev's
active unicast MAC address to filter out packets with
unrelated MAC address being delivered to ADQ VSIs.

Example:
- create tunnel device
ip l add $VXLAN_DEV type vxlan id $VXLAN_VNI dstport $VXLAN_PORT \
dev $PF
- add TC filter (in ADQ mode)

$tc filter add dev $VXLAN_DEV protocol ip parent ffff: flower \
 dst_ip $INNER_DST_IP ip_proto tcp dst_port $INNER_DST_PORT \
 enc_key_id $VXLAN_VNI hw_tc $ADQ_TC

Note: Filters with wild-card tunnel ID (when user does not
specify tunnel key) are also supported.

Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c |   30 ++++++++++++++++++++++++---
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index f89f387aa320..f82aed63c96a 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -24,6 +24,9 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID)
 		lkups_cnt++;
 
+	if (flags & ICE_TC_FLWR_FIELD_ENC_DST_MAC)
+		lkups_cnt++;
+
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
@@ -148,6 +151,15 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 		}
 	}
 
+	if (flags & ICE_TC_FLWR_FIELD_ENC_DST_MAC) {
+		list[i].type = ice_proto_type_from_mac(false);
+		ether_addr_copy(list[i].h_u.eth_hdr.dst_addr,
+				hdr->l2_key.dst_mac);
+		ether_addr_copy(list[i].m_u.eth_hdr.dst_addr,
+				hdr->l2_mask.dst_mac);
+		i++;
+	}
+
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4)) {
 		list[i].type = ice_proto_type_from_ipv4(false);
@@ -1222,12 +1234,24 @@ ice_handle_tclass_action(struct ice_vsi *vsi,
 	 * this code won't do anything
 	 * 2. For non-tunnel, if user didn't specify MAC address, add implicit
 	 * dest MAC to be lower netdev's active unicast MAC address
+	 * 3. For tunnel,  as of now TC-filter through flower classifier doesn't
+	 * have provision for user to specify outer DMAC, hence driver to
+	 * implicitly add outer dest MAC to be lower netdev's active unicast
+	 * MAC address.
 	 */
-	if (!(fltr->flags & ICE_TC_FLWR_FIELD_DST_MAC)) {
+	if (fltr->tunnel_type != TNL_LAST &&
+	    !(fltr->flags & ICE_TC_FLWR_FIELD_ENC_DST_MAC))
+		fltr->flags |= ICE_TC_FLWR_FIELD_ENC_DST_MAC;
+
+	if (fltr->tunnel_type == TNL_LAST &&
+	    !(fltr->flags & ICE_TC_FLWR_FIELD_DST_MAC))
+		fltr->flags |= ICE_TC_FLWR_FIELD_DST_MAC;
+
+	if (fltr->flags & (ICE_TC_FLWR_FIELD_DST_MAC |
+			   ICE_TC_FLWR_FIELD_ENC_DST_MAC)) {
 		ether_addr_copy(fltr->outer_headers.l2_key.dst_mac,
 				vsi->netdev->dev_addr);
-		eth_broadcast_addr(fltr->outer_headers.l2_mask.dst_mac);
-		fltr->flags |= ICE_TC_FLWR_FIELD_DST_MAC;
+		memset(fltr->outer_headers.l2_mask.dst_mac, 0xff, ETH_ALEN);
 	}
 
 	/* validate specified dest MAC address, make sure either it belongs to

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
