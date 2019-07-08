Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 928CF62C67
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2019 01:12:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA519214EB;
	Mon,  8 Jul 2019 23:12:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fGmD1TzQlPwW; Mon,  8 Jul 2019 23:12:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AEE2621080;
	Mon,  8 Jul 2019 23:12:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 644A41BF46A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 620B620356
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zWV76L5hvmeR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 23:12:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id DDD122150F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:12:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="192484811"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jul 2019 16:12:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  8 Jul 2019 16:12:30 -0700
Message-Id: <20190708231236.20516-14-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.22.0.214.g8dca754b1e87
In-Reply-To: <20190708231236.20516-1-jacob.e.keller@intel.com>
References: <20190708231236.20516-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 13/19] fm10k: remove needless assignment
 of err local variable
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

The local variable err in several functions in the fm10k_netdev.c file
is initialized with a value that is never used. The err value is
immediately re-assigned in all cases where it will be checked. Remove
the unnecessary initializers.

This was detected by cppcheck and resolves the following warnings
produced by that tool:

[fm10k_netdev.c:999] -> [fm10k_netdev.c:1004]: (style) Variable 'err' is
reassigned a value before the old one has been used.

[fm10k_netdev.c:1019] -> [fm10k_netdev.c:1024]: (style) Variable 'err'
is reassigned a value before the old one has been used.

[fm10k_netdev.c:64]: (style) Variable 'err' is assigned a value that is
never used.

[fm10k_netdev.c:131]: (style) Variable 'err' is assigned a value that
is never used.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_netdev.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c b/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
index 259da075093f..4704395c0f66 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2019 Intel Corporation. */
 
 #include "fm10k.h"
 #include <linux/vmalloc.h>
@@ -54,7 +54,7 @@ int fm10k_setup_tx_resources(struct fm10k_ring *tx_ring)
  **/
 static int fm10k_setup_all_tx_resources(struct fm10k_intfc *interface)
 {
-	int i, err = 0;
+	int i, err;
 
 	for (i = 0; i < interface->num_tx_queues; i++) {
 		err = fm10k_setup_tx_resources(interface->tx_ring[i]);
@@ -121,7 +121,7 @@ int fm10k_setup_rx_resources(struct fm10k_ring *rx_ring)
  **/
 static int fm10k_setup_all_rx_resources(struct fm10k_intfc *interface)
 {
-	int i, err = 0;
+	int i, err;
 
 	for (i = 0; i < interface->num_rx_queues; i++) {
 		err = fm10k_setup_rx_resources(interface->rx_ring[i]);
@@ -871,7 +871,7 @@ static int fm10k_uc_vlan_unsync(struct net_device *netdev,
 	u16 glort = interface->glort;
 	u16 vid = interface->vid;
 	bool set = !!(vid / VLAN_N_VID);
-	int err = -EHOSTDOWN;
+	int err;
 
 	/* drop any leading bits on the VLAN ID */
 	vid &= VLAN_N_VID - 1;
@@ -891,7 +891,7 @@ static int fm10k_mc_vlan_unsync(struct net_device *netdev,
 	u16 glort = interface->glort;
 	u16 vid = interface->vid;
 	bool set = !!(vid / VLAN_N_VID);
-	int err = -EHOSTDOWN;
+	int err;
 
 	/* drop any leading bits on the VLAN ID */
 	vid &= VLAN_N_VID - 1;
-- 
2.22.0.214.g8dca754b1e87

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
