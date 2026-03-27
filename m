Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJsLNIEwxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D3634054D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F05A683C63;
	Fri, 27 Mar 2026 07:23:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C5pGelKyQfeW; Fri, 27 Mar 2026 07:23:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F54D83C2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596222;
	bh=FNTrwKIwOPULqYpHRBxsFBtQAsvc7EZ8TtA99b4cvWM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WJY8VHJ42THnZrzrt4OcR3fGvC1OHT2aukRMQi6zRpABQzH/sJK0kI1retNrzEem6
	 eq2XNJdfKg0+TposRpWzrQKDcwFfsZ0Rigx0nsTtNFTSlOgGo31uVwIrjz8DwMVSGW
	 nygugoHX4v/KbPwYQfuwUltswE0tGNiRv5vp/NVFJ8rf1GNeyi4us98/ZOw8WJjGtx
	 KUtfpIBU/ZpbclR2fn54rSHyvcIORFYVB8VeYTVATQq84UvDw8KoLgmp9diGV+wUwo
	 44pv7EKByTcg/a5WEPyeLFdkn8Eyz1jg7XmICc8oRoDH0SlnTI3R5J/GiTUzgciNnO
	 VEdYNEDdbk1yQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F54D83C2E;
	Fri, 27 Mar 2026 07:23:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 623F9249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48E91415FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sMlHo1VTLYW5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:23:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5711041574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5711041574
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5711041574
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:40 +0000 (UTC)
X-CSE-ConnectionGUID: RIJNkNztTfuRQEEk/jvjNA==
X-CSE-MsgGUID: otim56XCR9y/OVZmE2fu/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75733972"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75733972"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:23:40 -0700
X-CSE-ConnectionGUID: M4FA3blTQYOh29AetnDgSQ==
X-CSE-MsgGUID: VgGcfBsoTQO8SD+/k05pRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="255739093"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 27 Mar 2026 00:23:38 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Fri, 27 Mar 2026 08:23:27 +0100
Message-ID: <20260327072332.130320-4-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596220; x=1806132220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9uSQCaHx5lz2p4ZhV7LAX2lFsh0FH2XjuNQNioItOcE=;
 b=aniIOOVvG7bv3+Wzfq/gO0GZudGUqSJkK3qb6Ots9UIILIZoWtwxKZIs
 1rwwj/vVN6N8wAO0Nke7/2sjZDdRb54FXapwhDS1A4yQR3bPGOyRh8yDX
 i2AUtCl/QoKA2f2pqmsd9EFe7yOt3x+tGTAuSbnZJQkOg5LRWoVmsuh/O
 bUzJGASmnOJlehNGhOjgAJC7hoUPmh4m8GL4Not9rejh10/ujs6AVoYfF
 3TJUNn/jVxd0NOCZ0CVNcXVr+NoBazu39OwtB4dKEh2J/mXUVDDE0XKcW
 +SqHxIuu33BPiWzkwBuJhkuCEmsvnxHJUY5+GOB0J4v4jv0kwM+MFlX53
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aniIOOVv
Subject: [Intel-wired-lan] [PATCH net] ice: fix PTP hang for E825C devices
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 68D3634054D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

Change the order of PTP reconfiguration when port goes down or up
(ice_down and ice_up calls) to be more graceful and consistent from
timestamp interrupts processing perspective.

For both calls (ice_up and ice_down), accompanying ice_ptp_link_change
is called which starts/stops PTP timer. This patch changes the order:
- while link goes down: disable net device Tx first (netif_carrier_off,
  netif_tx_disable), then call ice_ptp_link_change
- while link goes up: ice_ptp_link_change called first, then re-enable
  net device Tx (netif_tx_start_all_queues)

Otherwise, there is a narrow window in which PTP timestamp request has
been triggered and timestamp processing occurs when PTP timer is not
enabled yet (up case) or already disabled (down case). This may lead to
undefined behavior and receiving invalid timestamps. This case was
observed on E825C devices only.

Fixes: 6b1ff5d39228 ("ice: always call ice_ptp_link_change and make it void")
Cc: stable@vger.kernel.org
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---

 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e7308e3..8896805 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6797,10 +6797,10 @@ static int ice_up_complete(struct ice_vsi *vsi)
 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
 	    ((vsi->netdev && (vsi->type == ICE_VSI_PF ||
 			      vsi->type == ICE_VSI_SF)))) {
+		ice_ptp_link_change(pf, true);
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
-		ice_ptp_link_change(pf, true);
 	}
 
 	/* Perform an initial read of the statistics registers now to
@@ -7328,9 +7328,9 @@ int ice_down(struct ice_vsi *vsi)
 
 	if (vsi->netdev) {
 		vlan_err = ice_vsi_del_vlan_zero(vsi);
-		ice_ptp_link_change(vsi->back, false);
 		netif_carrier_off(vsi->netdev);
 		netif_tx_disable(vsi->netdev);
+		ice_ptp_link_change(vsi->back, false);
 	}
 
 	ice_vsi_dis_irq(vsi);
-- 
2.52.0

