Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHZ/MStU1mm8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 946DD3BCA3B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE4CA40EF6;
	Wed,  8 Apr 2026 13:12:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OK8SKPR_H71J; Wed,  8 Apr 2026 13:12:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3703640EBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775653926;
	bh=j+GPXuo5nok7Sl5I3M8zh0LuXNegmZ7u1Eio+6IiWeo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gnJE1x/QDiE7+PeOVDFONVy33zOkc90VDHXWM9ZUC5sdTpcmnn9yH+cyWo7XBx7oN
	 8CXU/+Vuqxb02PReeSjaDOYqhgS1BH7q9WB54qW2V1tp9Gn8sJ4UmQz0Hg5crBgla1
	 wV3eSsjJkzKAk7RbtGcsZsuwK4rEKibWgVSQLUCt+smbq9Fs8WWhBmBprK4jM2fdtk
	 TmQrKpfQvpb/g5a0MBBiQO/xqIIDp6U2+dpc79K3CkY2uZnIc18+R65ZBaA2+OUFK0
	 jBDdoH7JEHfpO216hWGYRR1u5j3r0CZ3a2AQGvXXMNLegBvU9/ciHCf63BdfPBlLcA
	 kfLZWTyDoADtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3703640EBE;
	Wed,  8 Apr 2026 13:12:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E7F222C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDC4E608DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1EXFW7swsyNK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 13:12:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E0CA8608A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0CA8608A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0CA8608A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:03 +0000 (UTC)
X-CSE-ConnectionGUID: wgty392/Riu7kGS8/UOwZw==
X-CSE-MsgGUID: dn4oHH4rQr+0xp+3G1WCig==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="102087238"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="102087238"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:12:04 -0700
X-CSE-ConnectionGUID: Bql28W+bQUuK12k1FUl8pw==
X-CSE-MsgGUID: oDbuBW78SbCyMCnpNeUt9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228714974"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 08 Apr 2026 06:12:03 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed,  8 Apr 2026 15:11:53 +0200
Message-ID: <20260408131154.2661818-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775653924; x=1807189924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yv/bdNXZH9c8rMWd2v5owZSXHg0dmXwqwGf4QRKCawI=;
 b=Y2YKczcqImJWSUPaAkL67YnZ5BlsLHT/G9Ov4dKS+wjEmUequo1MlXnI
 1zJKjOHilsBivsA9Dy6Nqm6VFqMwcqdCi6HMeA9HZAhy+AsnRsIcUpA/W
 hv3WgI/xdWuSi65cIm22rzKBvn1YsaOuK2UExBVFAk3AhJzlFm3Vby/pb
 tc9SDJ6BOEKytPGIyg/v23KTb62UwzyeCNPOtvYGWUOV8hTofYzTB4dk/
 p8TCXMOMGbo28Cy4PJgsynrr7lMhANU0URtkmEZUWYv979ph9/PSU02qi
 fOdLWkuYIFR7xnsMrVMLept+fkxl5kcTgKp6axfaOE5+fry5A3r+/SOEr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y2YKczcq
Subject: [Intel-wired-lan] [PATCH iwl-net v2 5/6] ixgbe: fix ITR value
 overflow in adaptive interrupt throttling
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
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 946DD3BCA3B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ixgbe_update_itr() packs a mode flag (IXGBE_ITR_ADAPTIVE_LATENCY,
bit 7) and a usecs delay (bits [6:0]) into an unsigned int, then
stores the combined value in ring_container->itr which is declared as
u8.  Values above 0xFF wrap on truncation, corrupting both the delay
and the mode flag on the next readback.

Separate the mode bits from the usecs sub-field; clamp only the usecs
portion to [0, IXGBE_ITR_ADAPTIVE_LATENCY - 1] (= 0x7F) using min_t()
so overflow cannot bleed into bit 7.

Fixes: b4ded8327fea ("ixgbe: Update adaptive ITR algorithm")
Cc: stable@vger.kernel.org
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2:
 - Add proper [N/M] numbering so patchwork tracks it as part of the set;
   no code change.

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 210c7b9..9f3ae21 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2889,8 +2889,9 @@ static void ixgbe_update_itr(struct ixgbe_q_vector *q_vector,
 	}
 
 clear_counts:
-	/* write back value */
-	ring_container->itr = itr;
+	ring_container->itr = (itr & IXGBE_ITR_ADAPTIVE_LATENCY) |
+		min_t(unsigned int, itr & ~IXGBE_ITR_ADAPTIVE_LATENCY,
+		      IXGBE_ITR_ADAPTIVE_LATENCY - 1);
 
 	/* next update should occur within next jiffy */
 	ring_container->next_update = next_update + 1;
-- 
2.52.0
