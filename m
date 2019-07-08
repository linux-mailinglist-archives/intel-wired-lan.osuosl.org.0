Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 327D162C59
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2019 01:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D95A486689;
	Mon,  8 Jul 2019 23:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IZ0i6PTK6kdw; Mon,  8 Jul 2019 23:12:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F2EB865D0;
	Mon,  8 Jul 2019 23:12:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 422EB1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3CDB286566
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h-HcawZy2+Wt for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 23:12:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 18661865C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:12:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="192484825"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jul 2019 16:12:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  8 Jul 2019 16:12:34 -0700
Message-Id: <20190708231236.20516-18-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.22.0.214.g8dca754b1e87
In-Reply-To: <20190708231236.20516-1-jacob.e.keller@intel.com>
References: <20190708231236.20516-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 17/19] fm10k: mark unused parameters with
 __always_unused
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

Several functions in the fm10k driver have specific function templates,
as they are used as function pointers. The parameters in these functions
are not always used. Explicitly mark unused parameters with the
__always_unused macro, so that the compiler will not warn about them
when building with the -Wunused-parameter warning enabled.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_mbx.c  |  5 ++--
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c   | 10 ++++----
 drivers/net/ethernet/intel/fm10k/fm10k_tlv.c  |  7 +++---
 drivers/net/ethernet/intel/fm10k/fm10k_type.h |  2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_vf.c   | 25 +++++++++++--------
 5 files changed, 28 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
index aece335b41f8..75e51f91036c 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2019 Intel Corporation. */
 
 #include "fm10k_common.h"
 
@@ -2134,7 +2134,8 @@ static s32 fm10k_sm_mbx_process(struct fm10k_hw *hw,
  *  DWORDs, not bytes.  Any invalid values will cause the mailbox to return
  *  error.
  **/
-s32 fm10k_sm_mbx_init(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx,
+s32 fm10k_sm_mbx_init(struct fm10k_hw __always_unused *hw,
+		      struct fm10k_mbx_info *mbx,
 		      const struct fm10k_msg_data *msg_data)
 {
 	mbx->mbx_reg = FM10K_GMBX;
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
index e85b2f2eef05..095c5b0e4096 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2019 Intel Corporation. */
 
 #include "fm10k_pf.h"
 #include "fm10k_vf.h"
@@ -1152,7 +1152,7 @@ static void fm10k_iov_update_stats_pf(struct fm10k_hw *hw,
  *  assumption is that in this case it is acceptable to just directly
  *  hand off the message from the VF to the underlying shared code.
  **/
-s32 fm10k_iov_msg_msix_pf(struct fm10k_hw *hw, u32 **results,
+s32 fm10k_iov_msg_msix_pf(struct fm10k_hw *hw, u32 __always_unused **results,
 			  struct fm10k_mbx_info *mbx)
 {
 	struct fm10k_vf_info *vf_info = (struct fm10k_vf_info *)mbx;
@@ -1641,7 +1641,7 @@ const struct fm10k_tlv_attr fm10k_lport_map_msg_attr[] = {
  *  switch API.
  **/
 s32 fm10k_msg_lport_map_pf(struct fm10k_hw *hw, u32 **results,
-			   struct fm10k_mbx_info *mbx)
+			   struct fm10k_mbx_info __always_unused *mbx)
 {
 	u16 glort, mask;
 	u32 dglort_map;
@@ -1684,7 +1684,7 @@ const struct fm10k_tlv_attr fm10k_update_pvid_msg_attr[] = {
  *  This handler configures the default VLAN for the PF
  **/
 static s32 fm10k_msg_update_pvid_pf(struct fm10k_hw *hw, u32 **results,
-				    struct fm10k_mbx_info *mbx)
+				    struct fm10k_mbx_info __always_unused *mbx)
 {
 	u16 glort, pvid;
 	u32 pvid_update;
@@ -1745,7 +1745,7 @@ const struct fm10k_tlv_attr fm10k_err_msg_attr[] = {
  *  messages that the PF has sent.
  **/
 s32 fm10k_msg_err_pf(struct fm10k_hw *hw, u32 **results,
-		     struct fm10k_mbx_info *mbx)
+		     struct fm10k_mbx_info __always_unused *mbx)
 {
 	struct fm10k_swapi_error err_msg;
 	s32 err;
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_tlv.c b/drivers/net/ethernet/intel/fm10k/fm10k_tlv.c
index f4c42a40f934..21eff0895a7a 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_tlv.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_tlv.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2019 Intel Corporation. */
 
 #include "fm10k_tlv.h"
 
@@ -587,8 +587,9 @@ s32 fm10k_tlv_msg_parse(struct fm10k_hw *hw, u32 *msg,
  *  a minimum it just indicates that the message requested was
  *  unimplemented.
  **/
-s32 fm10k_tlv_msg_error(struct fm10k_hw *hw, u32 **results,
-			struct fm10k_mbx_info *mbx)
+s32 fm10k_tlv_msg_error(struct fm10k_hw __always_unused *hw,
+			u32 __always_unused **results,
+			struct fm10k_mbx_info __always_unused *mbx)
 {
 	return FM10K_NOT_IMPLEMENTED;
 }
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_type.h b/drivers/net/ethernet/intel/fm10k/fm10k_type.h
index 9fb9fca375e3..15ac1c7885bc 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_type.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_type.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2019 Intel Corporation. */
 
 #ifndef _FM10K_TYPE_H_
 #define _FM10K_TYPE_H_
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_vf.c b/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
index a8519c1f0406..dc8ccd378ec9 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2019 Intel Corporation. */
 
 #include "fm10k_vf.h"
 
@@ -198,7 +198,7 @@ static s32 fm10k_update_vlan_vf(struct fm10k_hw *hw, u32 vid, u8 vsi, bool set)
  *  This function should determine the MAC address for the VF
  **/
 s32 fm10k_msg_mac_vlan_vf(struct fm10k_hw *hw, u32 **results,
-			  struct fm10k_mbx_info *mbx)
+			  struct fm10k_mbx_info __always_unused *mbx)
 {
 	u8 perm_addr[ETH_ALEN];
 	u16 vid;
@@ -267,8 +267,10 @@ static s32 fm10k_read_mac_addr_vf(struct fm10k_hw *hw)
  *  This function is used to add or remove unicast MAC addresses for
  *  the VF.
  **/
-static s32 fm10k_update_uc_addr_vf(struct fm10k_hw *hw, u16 glort,
-				   const u8 *mac, u16 vid, bool add, u8 flags)
+static s32 fm10k_update_uc_addr_vf(struct fm10k_hw *hw,
+				   u16 __always_unused glort,
+				   const u8 *mac, u16 vid, bool add,
+				   u8 __always_unused flags)
 {
 	struct fm10k_mbx_info *mbx = &hw->mbx;
 	u32 msg[7];
@@ -309,7 +311,8 @@ static s32 fm10k_update_uc_addr_vf(struct fm10k_hw *hw, u16 glort,
  *  This function is used to add or remove multicast MAC addresses for
  *  the VF.
  **/
-static s32 fm10k_update_mc_addr_vf(struct fm10k_hw *hw, u16 glort,
+static s32 fm10k_update_mc_addr_vf(struct fm10k_hw *hw,
+				   u16 __always_unused glort,
 				   const u8 *mac, u16 vid, bool add)
 {
 	struct fm10k_mbx_info *mbx = &hw->mbx;
@@ -373,7 +376,7 @@ const struct fm10k_tlv_attr fm10k_lport_state_msg_attr[] = {
  *  are ready to bring up the interface.
  **/
 s32 fm10k_msg_lport_state_vf(struct fm10k_hw *hw, u32 **results,
-			     struct fm10k_mbx_info *mbx)
+			     struct fm10k_mbx_info __always_unused *mbx)
 {
 	hw->mac.dglort_map = !results[FM10K_LPORT_STATE_MSG_READY] ?
 			     FM10K_DGLORTMAP_NONE : FM10K_DGLORTMAP_ZERO;
@@ -392,8 +395,9 @@ s32 fm10k_msg_lport_state_vf(struct fm10k_hw *hw, u32 **results,
  *  enabled we can add filters, if it is disabled all filters for this
  *  logical port are flushed.
  **/
-static s32 fm10k_update_lport_state_vf(struct fm10k_hw *hw, u16 glort,
-				       u16 count, bool enable)
+static s32 fm10k_update_lport_state_vf(struct fm10k_hw *hw,
+				       u16 __always_unused glort,
+				       u16 __always_unused count, bool enable)
 {
 	struct fm10k_mbx_info *mbx = &hw->mbx;
 	u32 msg[2];
@@ -420,7 +424,8 @@ static s32 fm10k_update_lport_state_vf(struct fm10k_hw *hw, u16 glort,
  *  so that it can enable either multicast, multicast promiscuous, or
  *  promiscuous mode of operation.
  **/
-static s32 fm10k_update_xcast_mode_vf(struct fm10k_hw *hw, u16 glort, u8 mode)
+static s32 fm10k_update_xcast_mode_vf(struct fm10k_hw *hw,
+				      u16 __always_unused glort, u8 mode)
 {
 	struct fm10k_mbx_info *mbx = &hw->mbx;
 	u32 msg[3];
@@ -475,7 +480,7 @@ static void fm10k_rebind_hw_stats_vf(struct fm10k_hw *hw,
  *  that information to then populate a DGLORTMAP/DEC entry and the queues
  *  to which it has been assigned.
  **/
-static s32 fm10k_configure_dglort_map_vf(struct fm10k_hw *hw,
+static s32 fm10k_configure_dglort_map_vf(struct fm10k_hw __always_unused *hw,
 					 struct fm10k_dglort_cfg *dglort)
 {
 	/* verify the dglort pointer */
-- 
2.22.0.214.g8dca754b1e87

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
