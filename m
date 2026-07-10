Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T1joJmqXUGqC2AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 08:55:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A12737DAD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 08:55:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="fK/1TICS";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41E8B81182;
	Fri, 10 Jul 2026 06:55:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0YM4e4vk7YWs; Fri, 10 Jul 2026 06:55:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7DBC81194
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783666535;
	bh=IQTr8a4Ki7wyN9Xh2G8Pz98Z2mtP6jEGgb0Wqmjmro8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fK/1TICSsGUTDm5bg3b+Gr1loo9A4iF/haPa8ADOElRFtO8J2fePgjWkE1AZredOw
	 rZkGorHIRRZ1pwLfZwbKrNHr9tc1dgGVZqhOtII1LBCMsA/qiiPQ7U+qs8eDhBWRwv
	 whFhSfbzFQ7hTTECzkS8DIlb5IOjRkJzPOQbUy0Ryy16ZSlTD1pCHT/6SHMPG1VK+q
	 Jg2S8Z/0xOOauYQIVYo3Ys+6FzQxmaTIZXgLiWRzSfizE1t27fzvqw6sgdYoOAuPFk
	 6rCFOdkbUhNr6zURpdLPLvbvixxLOWqpHDPMF2Pxc5ZmshK1kW+5QwU3j5wXLJfI+8
	 o0wyJ8ACGPYjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7DBC81194;
	Fri, 10 Jul 2026 06:55:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 17ADAA3C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 06:55:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 034B360642
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 06:55:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0GPWzY6lQZvR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 06:55:34 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C7B7860633
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7B7860633
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7B7860633
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 06:55:33 +0000 (UTC)
X-CSE-ConnectionGUID: oZYvf1+7R7OrLghh278wdg==
X-CSE-MsgGUID: kEqT+OJGRCe6Jl0RT8DDRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84462202"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84462202"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 23:55:33 -0700
X-CSE-ConnectionGUID: 4vM5WLApQ7yhum+IcDi7ug==
X-CSE-MsgGUID: /Y7eT9lUSZavDXb1TUpg1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="259712005"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa005.fm.intel.com with ESMTP; 09 Jul 2026 23:55:31 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 10 Jul 2026 08:55:30 +0200
Message-ID: <20260710065530.4138116-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783666534; x=1815202534;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DgwtG1s/c5y/0mNo2psEdFiXVGze2stDlFwvdlcQKlU=;
 b=KrcG75z4in4na/RRPZ10cn79ak5FUIPWWOlaJzpO2dstsmYu23JQH31c
 Kx+NuV62x2HfQNqRI+iwTpw8R8PqGmTNxGRKgyTudZucBEVcxcd76Jcri
 LkEzHgSOCdpuaU7ad0vFE61M1lBEhTEopCna5ahyldM7sMELR6MpRBOyQ
 CJMGslaVDg6rqGNFGxUuRSNJijGDwS8Wbxqj97pcohgsBVHp0LSgad1mN
 ysaZclB/rJuf4y4pGZyIvyicKJQFT5ULx7+dkF5uu6pUHkhhzOXLtPTyT
 3Dd82uePWuxWh50aS8N6ZArqTRxCViJE9P8UBvuaqRUEnln0IxHdSOibs
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KrcG75z4
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix set_ringparam error
 path freeing live Tx rings
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,intel.com:from_mime,intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 09A12737DAD

The free_tx: error label in i40e_set_ringparam() is supposed to release
the temporary tx_rings[] array built before i40e_down() is called.
Instead it passes vsi->tx_rings[i] to i40e_free_tx_resources() - a
pointer to the live, NAPI-active ring - rather than &tx_rings[i].

i40e_free_tx_resources() unconditionally NULLs out ring->desc and
ring->tx_bi.  Because i40e_down() has not run at this point, NAPI is
still scheduled and the next i40e_clean_tx_irq() call hits a NULL
descriptor pointer:

    BUG: unable to handle page fault for address: 0000000000002000
    RIP: i40e_napi_poll (i40e_txrx.c:942 i40e_txrx.c:2769)
    RAX: 0000000000000000  RBX: ffff8d0a53ea9800

The trigger is ethtool -G with a TX descriptor count change (so
tx_rings[] is allocated) followed by i40e_alloc_rx_buffers() returning
failure, e.g. under memory pressure.

Pass &tx_rings[i] instead so the temporary rings' DMA descriptors and
software buffer arrays are freed, leaving the live VSI rings intact.

Fixes: 74608d17fe29 ("i40e: add support for XDP_TX action")
Cc: stable@vger.kernel.org
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 3da9ec4..6d2b076 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2249,7 +2249,7 @@ static int i40e_set_ringparam(struct net_device *netdev,
 	if (tx_rings) {
 		for (i = 0; i < tx_alloc_queue_pairs; i++) {
 			if (i40e_active_tx_ring_index(vsi, i))
-				i40e_free_tx_resources(vsi->tx_rings[i]);
+				i40e_free_tx_resources(&tx_rings[i]);
 		}
 		kfree(tx_rings);
 		tx_rings = NULL;
-- 
2.52.0

