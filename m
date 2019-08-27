Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AD59F568
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 23:43:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 90FED88680;
	Tue, 27 Aug 2019 21:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B5neXZ5Qpbvb; Tue, 27 Aug 2019 21:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 14ED28867F;
	Tue, 27 Aug 2019 21:43:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F3DF1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C72F868CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BJos_fE9sgil for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 21:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E04E586B2D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 14:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="174703665"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 27 Aug 2019 14:42:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Aug 2019 06:13:50 -0700
Message-Id: <20190827131354.12703-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190827131354.12703-1-anthony.l.nguyen@intel.com>
References: <20190827131354.12703-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S28 5/9] ice: update tx context struct
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

From: Ashish Shah <ashish.n.shah@intel.com>

add internal usage flag, bit 91 as described in spec.
update width of internal queue state to 122 also as described in spec.

Signed-off-by: Ashish Shah <ashish.n.shah@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c    | 3 ++-
 drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9492cd34b09d..e8397e5b6267 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1132,6 +1132,7 @@ const struct ice_ctx_ele ice_tlan_ctx_info[] = {
 	ICE_CTX_STORE(ice_tlan_ctx, vmvf_type,			2,	78),
 	ICE_CTX_STORE(ice_tlan_ctx, src_vsi,			10,	80),
 	ICE_CTX_STORE(ice_tlan_ctx, tsyn_ena,			1,	90),
+	ICE_CTX_STORE(ice_tlan_ctx, internal_usage_flag,	1,	91),
 	ICE_CTX_STORE(ice_tlan_ctx, alt_vlan,			1,	92),
 	ICE_CTX_STORE(ice_tlan_ctx, cpuid,			8,	93),
 	ICE_CTX_STORE(ice_tlan_ctx, wb_mode,			1,	101),
@@ -1150,7 +1151,7 @@ const struct ice_ctx_ele ice_tlan_ctx_info[] = {
 	ICE_CTX_STORE(ice_tlan_ctx, drop_ena,			1,	165),
 	ICE_CTX_STORE(ice_tlan_ctx, cache_prof_idx,		2,	166),
 	ICE_CTX_STORE(ice_tlan_ctx, pkt_shaper_prof_idx,	3,	168),
-	ICE_CTX_STORE(ice_tlan_ctx, int_q_state,		110,	171),
+	ICE_CTX_STORE(ice_tlan_ctx, int_q_state,		122,	171),
 	{ 0 }
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 57ea6811fe2c..2aac8f13daeb 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -428,6 +428,7 @@ struct ice_tlan_ctx {
 #define ICE_TLAN_CTX_VMVF_TYPE_PF	2
 	u16 src_vsi;
 	u8 tsyn_ena;
+	u8 internal_usage_flag;
 	u8 alt_vlan;
 	u16 cpuid;		/* bigger than needed, see above for reason */
 	u8 wb_mode;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
