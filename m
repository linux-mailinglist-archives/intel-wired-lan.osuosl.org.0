Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C273CBF45
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jul 2021 00:29:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D6736076B;
	Fri, 16 Jul 2021 22:29:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dnag2qNa2921; Fri, 16 Jul 2021 22:29:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50E9F60679;
	Fri, 16 Jul 2021 22:29:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22C3D1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91BAF42243
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BcncqsdXz5XH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jul 2021 22:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B659642232
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="208981789"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="208981789"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 15:29:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="497176526"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jul 2021 15:29:14 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Jul 2021 15:16:44 -0700
Message-Id: <20210716221644.45946-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
References: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 7/7] ice: Fix macro name for IPv4
 fragment flag
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

From: Jeff Guo <jia.guo@intel.com>

In IPv4 header, fragment flags indicate whether the packet needs
to be fragmented or not. The value 0x20 represents MF (More Fragment); fix
the macro name to match this.

Signed-off-by: Ting Xu <ting.xu@intel.com>
Signed-off-by: Jeff Guo <jia.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c | 2 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 59ef68f072c0..cbd8424631e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -952,7 +952,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		ice_pkt_insert_u8(loc, ICE_IPV4_TTL_OFFSET, input->ip.v4.ttl);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		if (frag)
-			loc[20] = ICE_FDIR_IPV4_PKT_FLAG_DF;
+			loc[20] = ICE_FDIR_IPV4_PKT_FLAG_MF;
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
 		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index d2d40e18ae8a..da4163856f4c 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -48,7 +48,7 @@
  * requests that the packet not be fragmented. MF indicates that a packet has
  * been fragmented.
  */
-#define ICE_FDIR_IPV4_PKT_FLAG_DF		0x20
+#define ICE_FDIR_IPV4_PKT_FLAG_MF		0x20
 
 enum ice_fltr_prgm_desc_dest {
 	ICE_FLTR_PRGM_DESC_DEST_DROP_PKT,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
