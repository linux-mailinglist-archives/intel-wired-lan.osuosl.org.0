Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFB/OW/zAmrpywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 11:31:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D97651DC4A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 11:31:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC311821C0;
	Tue, 12 May 2026 09:31:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xJxovxRF5dPA; Tue, 12 May 2026 09:31:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B602821BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778578282;
	bh=oUhCm54oCVCvL3X2GEsQu89psrXxF+OmhJi9G5sdR1g=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ag1EaF8oqsn8J1Ofp67Uuv/dFI2nZIlhOatpAs5o+Qdmni9jFg0eIb3RXMV8ehIX8
	 PpyWT7jcZmMLE8T90JTm73//zOHoVI91egse6MRsHFvWyYj+slqatTZkPgdCEyKTQ6
	 Tom3tjExkBTF0fkSuR+BJCV7+Avs5Up/svaK1s2CdQvzHJ5rTbPToTcJa/LK4j9kFu
	 ezb/ITh9HZPw2GM+krXWTTI30UgXyD/4clzvdmDP/57yILjBPAQbvgDjqAHdo1HTrE
	 tjNKPKwVDr9kj+K5lnKGDtLIwRf7Qea/KU5nbJ4v2yOTAZGz7vV5PaJSAw+vwu+EO4
	 ZYfhNcS5USZWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B602821BD;
	Tue, 12 May 2026 09:31:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 28717398
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 171A560C0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Aff5hNGk_UVK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 09:31:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0C2D360B8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C2D360B8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C2D360B8A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:17 +0000 (UTC)
X-CSE-ConnectionGUID: hBff0+lJRw2gbLggR77tew==
X-CSE-MsgGUID: N7nZxPbKRdyv5OdNes+shg==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79663253"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79663253"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 02:31:18 -0700
X-CSE-ConnectionGUID: V3CUeQEsRsWwvGUZVETVwQ==
X-CSE-MsgGUID: LrPDCEucT/SS3ZE8dAO3Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="231323233"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa009.fm.intel.com with ESMTP; 12 May 2026 02:31:17 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 12 May 2026 10:47:29 +0200
Message-ID: <20260512084729.1338557-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
References: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778578278; x=1810114278;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wp9oJK+TQouTc/5MVS5LRf6gpBnWoPMk1KagdWAWwo0=;
 b=Ae9yt7uLGX8NJnHBnHhYoqMh7lY0pM6nrxZHXUD+Aak6Gxx6fweiDEr/
 nAsCCttUhxBT5ngNhwhBE0af2ZoYzjT8c2ao6+XbY1qEM0TVDNaFo7MT9
 7mNU++WL554+VRc5CWt/9XWfebiaHc9Es7kjvXsbQtp2ETDFetmuih3n5
 /FqTH6dQ7725Z0xTU3mZ7FlplaLAtegHNxW6SWUJcFr5/UDyzkVzIo0wm
 YELyJ7tOjy9o1sWCPJy1LjbEN/t8KcSIaQK4Z+bVlzi4qs5FI4HTThF7u
 a1yRiJeJanInTBodJD1lWwDa2CkziGQFkethInsTXMuqZ98nbysiOpu6i
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ae9yt7uL
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/4] idpf: pass the return
 value of skb_checksum_help()
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
X-Rspamd-Queue-Id: 7D97651DC4A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

skb_checksum_help() can fail. Pass its return value back to the caller.

Commonize this software path in goto.

Instead of just returning error try calculating software checksum first.
There is a check for TSO in checksum_sw_fb.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 22 ++++++++-----------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index e3ddf18dcbf5..dde986706a37 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -78,12 +78,7 @@ static int idpf_tx_singleq_csum(struct sk_buff *skb,
 			l4.hdr = skb_inner_network_header(skb);
 			break;
 		default:
-			if (is_tso)
-				return -1;
-
-			skb_checksum_help(skb);
-
-			return 0;
+			goto checksum_sw_fb;
 		}
 		off->tx_flags |= IDPF_TX_FLAGS_TUNNEL;
 
@@ -138,7 +133,7 @@ static int idpf_tx_singleq_csum(struct sk_buff *skb,
 					 sizeof(*ip.v6), &l4_proto,
 					 &frag_off);
 	} else {
-		return -1;
+		goto checksum_sw_fb;
 	}
 
 	/* compute inner L3 header size */
@@ -163,12 +158,7 @@ static int idpf_tx_singleq_csum(struct sk_buff *skb,
 		l4_len = sizeof(struct sctphdr) >> 2;
 		break;
 	default:
-		if (is_tso)
-			return -1;
-
-		skb_checksum_help(skb);
-
-		return 0;
+		goto checksum_sw_fb;
 	}
 
 	offset |= l4_len << IDPF_TX_DESC_LEN_L4_LEN_S;
@@ -176,6 +166,12 @@ static int idpf_tx_singleq_csum(struct sk_buff *skb,
 	off->hdr_offsets |= offset;
 
 	return 1;
+
+checksum_sw_fb:
+	if (is_tso)
+		return -1;
+
+	return skb_checksum_help(skb);
 }
 
 /**
-- 
2.49.0

