Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FQeQLQAMRWpF5woAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:45:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 723706ED85D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 14:45:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="b1M/BcQV";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7905484177;
	Wed,  1 Jul 2026 12:45:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qMx9R3CZ6xMd; Wed,  1 Jul 2026 12:45:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCFFC84171
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782909947;
	bh=gbUhIOvrqU/y1VNEqPWrPjDgWpO6B1aK/mfQJi4ssEM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b1M/BcQVxIQxuMdQDRPwnJy4oiQvQzOAhBUqlVwmgaTwSWhwxv2T0BFQ3L0Aujfav
	 LBerGsMgcgpfU4qsuXRMtXncSlLqNaImd1+EgOlUygG4h2LEwhCZvh9Ck2bn7KqPjK
	 MC5/6mGUO6e63ri3dU3k0NRAAnXN6oXnXdFm+5bU0eu509J3A9tdr8JGENpDqhbgI/
	 CaVPFeLuQK1ATBLvPgWCi/tce8occTLI4NkTr/X8HibOBn42iG0tLb5O0/bJ5ELdD6
	 ajyEYcuvp8dFTCdlIye96/69+uTkoL4RgbS7D8T4J+bAULaJ31KxNUxDa1wxSTIkGi
	 pAsR8MszcfYyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCFFC84171;
	Wed,  1 Jul 2026 12:45:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D2C2A2EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C2FF440549
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7VZEAwhTiAk7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 12:45:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12918403FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12918403FF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12918403FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 12:45:44 +0000 (UTC)
X-CSE-ConnectionGUID: yyl6tyZsT+OIakmtYVexvg==
X-CSE-MsgGUID: TGqJkLyMQbmlmuxA9S/Dcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83839235"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="83839235"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 05:45:35 -0700
X-CSE-ConnectionGUID: JrurodIYSPK7D0Al54FJfg==
X-CSE-MsgGUID: vC4dkGwdRrOKZEUqD5DpfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="276864905"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa001.fm.intel.com with ESMTP; 01 Jul 2026 05:45:33 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Sashiko AI Review <sashiko-bot@kernel.org>
Date: Wed,  1 Jul 2026 14:45:20 +0200
Message-Id: <20260701124524.13644-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
References: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782909945; x=1814445945;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Dwvhzji6WxYV9lCY1qvZHWe+fj258rib/mlG/ST8ek=;
 b=g5KS6q2GzA4aOn3RwXh386R8A9cMFD21JE+Q5rafGo0RAEvV3B9U3zKe
 T1fn3Rac8B57PfIPExI6oHjve2e5XHDY8dZps9b071Mix6SujL6GZ9oCn
 MIDtcLrjWoVqbkNWntUMihK1L9BELB7X+CJGNaIIuJqHaqBfExkASjGbI
 +9q/SAGZVxey4hlgJFYccAY7IKdwLsZCwIUK3O715OavizjttB7SKV9QI
 uFMpXeLpmkyQLgiqxHef/rs2OucWUgjfWvuGIV+j0zZYHTKlvJTLQIQVP
 gHJv4j+J1SmwHa3w5I9a+f2TWzf0CzpCX3crlw/rU6RqY0vnPvQ9S6s9w
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g5KS6q2G
Subject: [Intel-wired-lan] [PATCH v5 net 3/7] i40e: make ring pointers
 unreachable before freeing via rcu
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 723706ED85D

Sashiko reports:
***
>  err_config:
> +	i40e_vsi_free_q_vectors(vsi);
> +err_qvec:
>  	i40e_vsi_clear_rings(vsi);
This is a pre-existing issue, but can the sequence in i40e_vsi_clear_rings()
lead to an RCU ordering violation?
In i40e_vsi_clear_rings(), the rings are freed before the array pointers are
nullified:
	kfree_rcu(vsi->tx_rings[i], rcu);
	WRITE_ONCE(vsi->tx_rings[i], NULL);
Under RCU rules, a pointer must be made unreachable to new readers before it
is handed off to kfree_rcu(). Could a new RCU reader (like
i40e_get_netdev_stats_struct_tx()) fetch the pointer after kfree_rcu() is
invoked, and access freed memory if the grace period expires while the
reader is still active?
***

Save the Tx ring pointer before clearing the published ring array slots
and pass the saved pointer to kfree_rcu(). This preserves the intended
RCU ordering, where new readers can no longer discover the ring through
vsi->tx_rings/rx_rings/xdp_rings before the object is queued for
deferred freeing, while avoiding a NULL kfree_rcu() argument after the
slot has already been cleared. Since the Tx pointer is the base of the
per-queue-pair allocation block, re-reading vsi->tx_rings[i] after
WRITE_ONCE(..., NULL) would otherwise turn the free into a no-op and
leak the whole ring block.

Fixes: 9f65e15b4f98 ("i40e: Move rings from pointer to array to array of pointers")
Reported-by: Sashiko AI Review <sashiko-bot@kernel.org>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 471fa7f7b643..a29a89192a7a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11699,11 +11699,13 @@ static void i40e_vsi_clear_rings(struct i40e_vsi *vsi)
 
 	if (vsi->tx_rings && vsi->tx_rings[0]) {
 		for (i = 0; i < vsi->alloc_queue_pairs; i++) {
-			kfree_rcu(vsi->tx_rings[i], rcu);
+			struct i40e_ring *tx_ring = vsi->tx_rings[i];
+
 			WRITE_ONCE(vsi->tx_rings[i], NULL);
 			WRITE_ONCE(vsi->rx_rings[i], NULL);
 			if (vsi->xdp_rings)
 				WRITE_ONCE(vsi->xdp_rings[i], NULL);
+			kfree_rcu(tx_ring, rcu);
 		}
 	}
 }
-- 
2.43.0

