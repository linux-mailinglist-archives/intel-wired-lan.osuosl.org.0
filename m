Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB5F76346B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 12:59:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA36D414DA;
	Wed, 26 Jul 2023 10:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA36D414DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690369169;
	bh=30kplTOWgUoDQ2LzUbmlrLv6igR8ZZCQmwBI4N/djSU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=t4cPWFkgA3PhbOPbLq9QTizd7QFNUXh/MZ2hWQFwToQ8GnYw88b0XjYUcjJrriLz3
	 +/Zib63VaNlKi0/uwvmFFZon7BdpiSrbiyMuvFak9hbz0+VpiTEjU6nhxaKSUtM8I0
	 lDG4zBS8vbKOAqQR9DQCgOwdqdH/a/7ybHQuRcEFknFn7o/CWv6ThBEcdLz9auEwIO
	 YFxYRitygxYcjxR0GnczmtBcIAgpd6TLIPtmoZiBGZQnLrvjfMcMlFmhf4aW4yEsQv
	 EOGVGp+QEkWEdmyafD6HwGn9TWrw/PxaZKnJ4L4EdLQMG7gjf41nyktd9Bl+a2Qv1m
	 0LapWppOW2E0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DFnPbu9y23NC; Wed, 26 Jul 2023 10:59:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A9FC405C5;
	Wed, 26 Jul 2023 10:59:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A9FC405C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 203E21BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 10:59:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4B4841BF4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 10:59:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4B4841BF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OlYzPDDAuAfB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 10:59:22 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 26 Jul 2023 10:59:21 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D04B041BC5
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D04B041BC5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 10:59:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="371589239"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="371589239"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 03:52:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="791799202"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="791799202"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2023 03:52:11 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5CBE634904;
 Wed, 26 Jul 2023 11:52:10 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jul 2023 12:50:54 +0200
Message-Id: <20230726105054.295220-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690369161; x=1721905161;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zEFXQIDnbqzGy3klfE8pIw+vAiyG1hyleWZ8itQcZUk=;
 b=gtWcaFxxCt3ox6mr26wcvqQLyH+Ug+PtdYPzcUtshqUhHdkr3E2JT7g3
 6WXSJFy552Ee6uMrb650Kh/mgrlaLVHvXF2jcVzDJ+0wWyZb3FQymbtAO
 3+xdlaKQe0Lu94bpyc6Q5S0nK+rCq7NxIoH6YzRdUo0EjkEkzGuSJzfgp
 1tIb23UWPJxd1LbGsMqTfBSCFlenNubcDB5stOdPkLsTImFCaER4xHKgL
 5E5mniths8J90CCmDfbYnsR+wCCTPGC7QAbT/MyAiYNrMrzQkyhfTkTW3
 bJUnColVHcZA9+ccArDGsATLB3A0b6sT5S86N1qWW8yYI90Pj3wFNrmFI
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gtWcaFxx
Subject: [Intel-wired-lan] [PATCH net-next] ice: VLAN untagged traffic
 support
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When driver recives SWITCHDEV_FDB_ADD_TO_DEVICE notification
with vid = 1, it means that we have to offload untagged traffic.
This is achieved by adding vlan metadata lookup.

Also remove unnecessary brackets in ice_eswitch_br_fdb_entry_create.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch_br.c | 9 +++++----
 drivers/net/ethernet/intel/ice/ice_eswitch_br.h | 9 ---------
 2 files changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 67bfd1f61cdd..05bee706b946 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -104,13 +104,15 @@ ice_eswitch_br_rule_delete(struct ice_hw *hw, struct ice_rule_query_data *rule)
 static u16
 ice_eswitch_br_get_lkups_cnt(u16 vid)
 {
-	return ice_eswitch_br_is_vid_valid(vid) ? 2 : 1;
+	return vid == 0 ? 1 : 2;
 }
 
 static void
 ice_eswitch_br_add_vlan_lkup(struct ice_adv_lkup_elem *list, u16 vid)
 {
-	if (ice_eswitch_br_is_vid_valid(vid)) {
+	if (vid == 1) {
+		ice_rule_add_vlan_metadata(&list[1]);
+	} else if (vid > 1) {
 		list[1].type = ICE_VLAN_OFOS;
 		list[1].h_u.vlan_hdr.vlan = cpu_to_be16(vid & VLAN_VID_MASK);
 		list[1].m_u.vlan_hdr.vlan = cpu_to_be16(0xFFFF);
@@ -400,11 +402,10 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
 	unsigned long event;
 	int err;
 
-	/* untagged filtering is not yet supported */
 	if (!(bridge->flags & ICE_ESWITCH_BR_VLAN_FILTERING) && vid)
 		return;
 
-	if ((bridge->flags & ICE_ESWITCH_BR_VLAN_FILTERING)) {
+	if (bridge->flags & ICE_ESWITCH_BR_VLAN_FILTERING) {
 		vlan = ice_esw_br_port_vlan_lookup(bridge, br_port->vsi_idx,
 						   vid);
 		if (IS_ERR(vlan)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
index 85a8fadb2928..cf7b0e5acfcb 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
@@ -103,15 +103,6 @@ struct ice_esw_br_vlan {
 		     struct ice_esw_br_fdb_work, \
 		     work)
 
-static inline bool ice_eswitch_br_is_vid_valid(u16 vid)
-{
-	/* In trunk VLAN mode, for untagged traffic the bridge sends requests
-	 * to offload VLAN 1 with pvid and untagged flags set. Since these
-	 * flags are not supported, add a MAC filter instead.
-	 */
-	return vid > 1;
-}
-
 void
 ice_eswitch_br_offloads_deinit(struct ice_pf *pf);
 int
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
