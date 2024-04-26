Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9078B3C02
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 17:47:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08BD583A8F;
	Fri, 26 Apr 2024 15:47:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hTBC3MjaqJzz; Fri, 26 Apr 2024 15:47:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAFF583A9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714146446;
	bh=yw751CSHUUnfm/J8Jm6PagLTrc2GueN7AWyoHLRb5BM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XwypUChMKNheCvmpdo544JuflNdtED9Avbe1XDY1YHDbHHII1MLc2wN5S8f1Lv1TO
	 00NrKDsD/VRdO75MH845n6km8jloClQfaa0Y3yH0fcm+wOKQUPAT3JMghvK3Zz8nk+
	 uU6ay2iKARDnwaLGp22ZXV3Ig532KueoKdiSQWrgqdW3gw3d+DA2ZykZGqcSraWFcC
	 jktBwK8Fnd6sF/4a3hAaCAtV95tY2SoPjgc2DJZSO79rCOSj1zaxKJNLpN8WFTHwnw
	 yzedDUiwlYP5B9HZftJ1sgG3N5EcUwHeoLJSg5t2C8ozZs9D9u4dfn5V9RmspngTDt
	 qgZwRSOtKPe0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAFF583A9F;
	Fri, 26 Apr 2024 15:47:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B1B2D1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 15:47:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D56761419
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 15:47:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wTawHJSpdAUL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 15:47:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9C2EF613F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C2EF613F5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C2EF613F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 15:47:23 +0000 (UTC)
X-CSE-ConnectionGUID: Egiie5z9S227sfPjIPGhmw==
X-CSE-MsgGUID: Sp4Q5aFtRGiOkR893AD/dg==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="9747735"
X-IronPort-AV: E=Sophos;i="6.07,233,1708416000"; 
   d="scan'208";a="9747735"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 08:47:21 -0700
X-CSE-ConnectionGUID: W1DJyWexQii1pugr08vRcw==
X-CSE-MsgGUID: ANV2GgyESfiahgxPhkXgOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,233,1708416000"; d="scan'208";a="30252216"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa005.jf.intel.com with ESMTP; 26 Apr 2024 08:47:17 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 43B302FC42;
 Fri, 26 Apr 2024 16:47:15 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Date: Fri, 26 Apr 2024 17:41:22 +0200
Message-ID: <20240426154125.235977-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714146444; x=1745682444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ND7IVRkE83qoPcEOBhEWCyxEP9oWqtsDaYNPykQg7KQ=;
 b=WowRZMfVoDN9+L5NCvb+Fa66Q/otnC/4AIxPqhO5wV1Ltz1d6940larS
 BK1GIPYrvjH9vZL7DZHeYrNN2qnRx7gzlXdLIvTkpeRT0IUfNN+UVDGRP
 OPDRqvqKs/Q1J+AAIZxO3rgg2KV9Wxl7bkmbdX2vhE414oy4x9Aj8nlMJ
 Wy9gKelLz5oTLEYjofhp4xFNvZQJF0z7MRuvSZP+izOsON6BtnMsRF8Fs
 1oZAv5ezc7+zS93udYTHwnCU8m3qw4FIofDIhgpTOTG1GbwuqetKzIo2z
 X6IY+3+Jx09Od+h0JbwvT1DvObcp5FixVlyoFdKu2A1JN7Or/xubjg76m
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WowRZMfV
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: Interpret .set_channels()
 input differently
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
Cc: maciej.fijalkowski@intel.com, Emil Tantilov <emil.s.tantilov@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, joshua.a.hay@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>, alan.brady@intel.com,
 Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Unlike ice, idpf does not check, if user has requested at least 1 combined
channel. Instead, it relies on a check in the core code. Unfortunately, the
check does not trigger for us because of the hacky .set_channels()
interpretation logic that is not consistent with the core code.

This naturally leads to user being able to trigger a crash with an invalid
input. This is how:

1. ethtool -l <IFNAME> -> combined: 40
2. ethtool -L <IFNAME> rx 0 tx 0
   combined number is not specified, so command becomes {rx_count = 0,
   tx_count = 0, combined_count = 40}.
3. ethnl_set_channels checks, if there is at least 1 RX and 1 TX channel,
   comparing (combined_count + rx_count) and (combined_count + tx_count)
   to zero. Obviously, (40 + 0) is greater than zero, so the core code
   deems the input OK.
4. idpf interprets `rx 0 tx 0` as 0 channels and tries to proceed with such
   configuration.

The issue has to be solved fundamentally, as current logic is also known to
cause AF_XDP problems in ice [0].

Interpret the command in a way that is more consistent with ethtool
manual [1] (--show-channels and --set-channels) and new ice logic.

Considering that in the idpf driver only the difference between RX and TX
queues forms dedicated channels, change the correct way to set number of
channels to:

ethtool -L <IFNAME> combined 10 /* For symmetric queues */
ethtool -L <IFNAME> combined 8 tx 2 rx 0 /* For asymmetric queues */

[0] https://lore.kernel.org/netdev/20240418095857.2827-1-larysa.zaremba@intel.com/
[1] https://man7.org/linux/man-pages/man8/ethtool.8.html

Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 21 ++++++-------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 986d429d1175..1cf3067a9c31 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -222,14 +222,19 @@ static int idpf_set_channels(struct net_device *netdev,
 			     struct ethtool_channels *ch)
 {
 	struct idpf_vport_config *vport_config;
-	u16 combined, num_txq, num_rxq;
 	unsigned int num_req_tx_q;
 	unsigned int num_req_rx_q;
 	struct idpf_vport *vport;
+	u16 num_txq, num_rxq;
 	struct device *dev;
 	int err = 0;
 	u16 idx;
 
+	if (ch->rx_count && ch->tx_count) {
+		netdev_err(netdev, "Dedicated RX or TX channels cannot be used simultaneously\n");
+		return -EINVAL;
+	}
+
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 
@@ -239,20 +244,6 @@ static int idpf_set_channels(struct net_device *netdev,
 	num_txq = vport_config->user_config.num_req_tx_qs;
 	num_rxq = vport_config->user_config.num_req_rx_qs;
 
-	combined = min(num_txq, num_rxq);
-
-	/* these checks are for cases where user didn't specify a particular
-	 * value on cmd line but we get non-zero value anyway via
-	 * get_channels(); look at ethtool.c in ethtool repository (the user
-	 * space part), particularly, do_schannels() routine
-	 */
-	if (ch->combined_count == combined)
-		ch->combined_count = 0;
-	if (ch->combined_count && ch->rx_count == num_rxq - combined)
-		ch->rx_count = 0;
-	if (ch->combined_count && ch->tx_count == num_txq - combined)
-		ch->tx_count = 0;
-
 	num_req_tx_q = ch->combined_count + ch->tx_count;
 	num_req_rx_q = ch->combined_count + ch->rx_count;
 
-- 
2.43.0

