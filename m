Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hqGnDdowRmrWLQsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDF76F5523
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=L1JW+w0q;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FD4C405A2;
	Thu,  2 Jul 2026 09:35:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1nzHsOdUNXwX; Thu,  2 Jul 2026 09:35:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA39F413D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782984919;
	bh=yFm8nHv+QdfY4ZLhsxHeM7h3kZ15+zgWsd2ozKgFu/8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L1JW+w0qt9xZH6pHzonXdku8DJzcjJr9uYqs2G+oZjGsw3yYL2XzKpqbcc+4osczk
	 vJTp7LH9gGgEZjHqBPsy21NseCaZ3QbJiKVXaEy+UAbBE2Dl9jQ6yEpAdBaPwaJu4A
	 ISBGlrQZlodrnF4rFXE8epxcynI0sPi3OOdh0jA8vGQP9ZnUnz6iVwsJ7XLr4PwCQm
	 HX3xWSdFcGKGqVZNVTlHxan9RCjPjPBjWIM8ZbsDVJ+CrvNAcE3nLftLVLFL0v6QEx
	 I/O4S7A/mZo8k8Y91393BqmnW419dYwwD/8qG81behclMGkkiZOqO3kx5iDx7btssW
	 1RraY8eJ4/VTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA39F413D6;
	Thu,  2 Jul 2026 09:35:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 16ECA127
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 10DA5822AA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oqB5mNFnIrmF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 09:35:16 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CF823822AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF823822AB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF823822AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:15 +0000 (UTC)
X-CSE-ConnectionGUID: HliB9RcLQUaEzx2fe1C0SA==
X-CSE-MsgGUID: UHUuXhTlRoaQMPk2Rs5Apg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="87649808"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="87649808"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 02:35:16 -0700
X-CSE-ConnectionGUID: Mk5wkfk5RO232oFgLP7r4A==
X-CSE-MsgGUID: KoWGWUTDS+OsTYK5YnRoQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="253476417"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2026 02:35:15 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu,  2 Jul 2026 11:15:50 +0200
Message-Id: <20260702091553.57112-4-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
References: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782984916; x=1814520916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PNrdD3+JtONCzgOT6cHrmuc82I6MuBJsIXVQlfg3hy8=;
 b=CV8Nz1Sq4KseuxMZP+95hN8JeqixU8sKzByWcQh01pwn5Ijowb1s96ph
 DnC5TW8fmfo+seBsN8DCnBRjpDumpS2Yn4VPAoqEkGWpBEocOQPzC0Ps2
 bfZLs311J6jpeLSe9KNHJxGp1jFjJkWJx/91AgSEWUreXFPFaZhz16hHU
 t+dqHjdPtkvMLOvi1CbFunxpWfIztwaCuK2Gxm0gU5ufPgNXsN5g6BlGo
 Q6jjlLi8e9+ZFIQ8VoPhAcZxHqS6y1rSnQ85Ed2uj4zqHwy7emH71dXIt
 5WTY5mPly0VZHOnIzkBbRF3NJuj9hIxTfJEDN95146kXTdtuODKyVhHBU
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CV8Nz1Sq
Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/6] ixgbe: E610: do not
 disable LSE on driver down/remove
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EFDF76F5523

For the first case:
LSE especially shall remain enabled when interface is down and link watchdog
cannot track status of the link. Then the only way for link update is by
handling LSE.

For the second case:
There's no value in disabling LSE when the driver's unloading is about to be
terminated.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 2c8968b9b86c..f33a534490b5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -5979,19 +5979,6 @@ static int ixgbe_enable_link_status_events(struct ixgbe_adapter *adapter)
 	return ixgbe_configure_lse(&adapter->hw, true);
 }
 
-/**
- * ixgbe_disable_link_status_events - disable link status events
- * @adapter: pointer to the adapter structure
- *
- * Disables link status events by invoking ixgbe_configure_lse()
- *
- * Return: the exit code of the operation.
- */
-static int ixgbe_disable_link_status_events(struct ixgbe_adapter *adapter)
-{
-	return ixgbe_configure_lse(&adapter->hw, false);
-}
-
 /**
  * ixgbe_sfp_link_config - set up SFP+ link
  * @adapter: pointer to private adapter struct
@@ -6775,8 +6762,6 @@ void ixgbe_down(struct ixgbe_adapter *adapter)
 
 	ixgbe_clean_all_tx_rings(adapter);
 	ixgbe_clean_all_rx_rings(adapter);
-	if (adapter->hw.mac.type == ixgbe_mac_e610)
-		ixgbe_disable_link_status_events(adapter);
 }
 
 /**
@@ -12143,9 +12128,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
 	set_bit(__IXGBE_REMOVING, &adapter->state);
 	cancel_work_sync(&adapter->service_task);
 
-	if (adapter->hw.mac.type == ixgbe_mac_e610)
-		ixgbe_disable_link_status_events(adapter);
-
 	if (adapter->mii_bus)
 		mdiobus_unregister(adapter->mii_bus);
 
-- 
2.31.1

