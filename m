Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F07D5FC8D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Oct 2022 18:03:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8115341936;
	Wed, 12 Oct 2022 16:02:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8115341936
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665590578;
	bh=W0kcWJHXzPDqloquf7rF0nyvrK80oPVDT54H+/TlMFY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xTMb46NiiIUOV8Lug0V2GhM7YRgaMXURIAUyNdjpgJDu5C1Yvgyvj6cifSd7GVFu/
	 Knk4NGQwy8O5qruFwlWvJbokQ6uQe8uZNWZ2LpOXthxBchytmu3moeNLLp9q+bEcx9
	 4xRdfKKLBnYuarRPUbG8JzRMlXE16d+s/3owzB8VXWjHu1y5LXlH0CmL0yrQgMWq5/
	 bwC+QDzD632+FGoXbbqJLMSlMfHCGP+IpOptvWfJ+7GuDCkxr1ZArDpMPEo5vTb0ll
	 YqY2xapSlR7UUlwML8MFoSh4lMv2X+gtyF3oy4nF7h1mRReNCN0x4uH00VTwB8OTJI
	 V1AykPH+KpE5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9liOkm2AjKB1; Wed, 12 Oct 2022 16:02:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE59C41933;
	Wed, 12 Oct 2022 16:02:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE59C41933
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 404041BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 16:02:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19D6F60E13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 16:02:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19D6F60E13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KZe4-LokCQh0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Oct 2022 16:02:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C43460759
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C43460759
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 16:02:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="391137471"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="391137471"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 09:02:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="626815495"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="626815495"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by orsmga002.jf.intel.com with ESMTP; 12 Oct 2022 09:02:49 -0700
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Oct 2022 11:55:35 -0400
Message-Id: <20221012155535.666933-1-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665590571; x=1697126571;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LLDlu+6Sf6zfb6tP4HefUNB1zwrSStkLPQOyCvDITtg=;
 b=RiDXK1aDEBRGZhi4dTe/Ep/ygTf+NMGuxpmpkMu9I/h6xLwCaTypUM5b
 M30JvHTbTo3i8beMOOM3SN2eHB9p/TC2Sl34uJP8KAk/uGAUfRcSM77HF
 9M+r0/NjZZsFIMCctBA0be4LqP+9GuNf1onWTdgLcc66R9xx/uC8/vr16
 BIjTymvVCsBZxao36j/6VbDJjvjko3xGomFoI86rmgu7bU7QAjWHME4Go
 4G2qNn5GBCdohwMHFiahED7eAhSQhKDQiGAGXyUyKI4g6r+znqQ77SeEC
 0Nzmv6wWDuE9rtx0EZ/yqKhy+nbXSMJ/CRVRKmi90fVxXLnnsuzaV93Cy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RiDXK1aD
Subject: [Intel-wired-lan] [net,v1] ice: Fix l2-fwd-offload toggle crash
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Running netperf traffic and toggling l2-fwd-offload in quick succession
caused the driver to crash.

BUG: kernel NULL pointer dereference, address: 0000000000000020
[  861.517803] #PF: supervisor read access in kernel mode
[  861.517805] #PF: error_code(0x0000) - not-present page
[  861.517808] PGD 0 P4D 0
[  861.517811] Oops: 0000 [#1] PREEMPT SMP PTI
[  861.517815] CPU: 60 PID: 16471 Comm: netperf Kdump: loaded Tainted: G S
[  861.517818] Hardware name: Intel Corporation S2600WTT/S2600WTT, BIOS SE
[  861.517820] RIP: 0010:ice_start_xmit+0xb0/0x1420 [ice]

This crash would happen because during l2-fwd-offload configuration,
ice_init_macvlan or ice_deinit_macvlan would temporarily work on Tx rings.
At the same time, ice_start_xmit would attempt to select the correct send
buffer from Tx rings but reach a NULL pointer.

Fix this by checking if ring exists before proceeding xmit. If ring does
not exist, return NETDEV_TX_BUSY.

Fixes: 2b245cb29421 ("ice: Implement transmit and NAPI support")
Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 086f0b3ab68d..96bc8fad39c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2405,6 +2405,8 @@ netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 	struct ice_tx_ring *tx_ring;
 
 	tx_ring = vsi->tx_rings[skb->queue_mapping];
+	if (!tx_ring)
+		return NETDEV_TX_BUSY;
 
 	/* hardware can't handle really short frames, hardware padding works
 	 * beyond this point
-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
