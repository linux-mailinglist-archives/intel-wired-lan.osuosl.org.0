Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INwoJm3zAmrpywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 11:31:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6741851DC43
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 11:31:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F092821D4;
	Tue, 12 May 2026 09:31:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eL7VQJlETOG7; Tue, 12 May 2026 09:31:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D8AE821C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778578282;
	bh=CyJaB3NInkEm48aFHUrKgufF+nGIZhKKPF63XbKGjG4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W2izmnagJDH5CY5sr5V4YoV399zxg2cbiwuI+NIgdEU58AwoxMZovlsCcCv6vpzPD
	 LWexKC7J7eEIQmGFfc3mbSwz50NwqiSOI81Ca1zeqDikTxpNwyjLwJIeowG+WP0I8u
	 jfZEE7BgOTvYSQyfKAAzx/VSJf9P37NGxqPlnXsfKP9LpTFUFwQ2+pArwiPJ0s5YD1
	 9C9c5gpF6odS13u1XKs/naV6+4n3OCkJ0C2KytrNvVLlTcvcY91k5RwQQz9Mni5nCZ
	 gP9tmp0n0YCYzY72unnHUI+pDYHC5wYHEuzZeP3PbVAX/i6iXLhPXLfW3s/yAIJANk
	 rcE939w0dwQaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D8AE821C4;
	Tue, 12 May 2026 09:31:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AE41398
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D43ED60C0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N5V1bofAyk5V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 09:31:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CB16560B8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB16560B8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB16560B8A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:16 +0000 (UTC)
X-CSE-ConnectionGUID: m/gACbXuTXyfAr0r/zj2/A==
X-CSE-MsgGUID: Da0cfDXjQMGagUN2+H3d3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79663250"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79663250"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 02:31:16 -0700
X-CSE-ConnectionGUID: NLE6tDptS1+vOqXPGHhNDw==
X-CSE-MsgGUID: 9R60V5r/SKmcyCu698rAsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="231323227"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa009.fm.intel.com with ESMTP; 12 May 2026 02:31:16 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 12 May 2026 10:47:28 +0200
Message-ID: <20260512084729.1338557-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
References: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778578277; x=1810114277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BMA+HcsTduy9KAlNO7woXKOs4/OBkd3hKSbqaxHi534=;
 b=ncIjtPjXUtjEuqOdGZZhsNvnngoYsO6UpaAe+b2TNcVe8V+FBWe81b2g
 Sau8/Pu8e5kaZKF0MRpHiS2o981EJTC9iC8bxFOBgJbs2XdBbUWKSjHqP
 EL/t3F2hhgD06QzYEWQhOyL46co7Ttl+vTrlb4+cWjFVCXPWMqQO/vc5J
 /7QxqnrnrZrFUaGFuXm+DCqI39TO8wPkls8xdY6vNrP81/qIgbq3PLsrc
 CarKE0msAK6j9nvRjj77opuPSEKyN5tmtha5X1I8+zRkhfOLy9Dh5o2DV
 7MM24tKSBZWNoAWCdIJf+jczXhLpTrVg5xL4mvV88G/y1uPXDHmTz1ICZ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ncIjtPjX
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/4] iavf: pass the return
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
X-Rspamd-Queue-Id: 6741851DC43
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

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index ab46a49bb5e0..c5d4486c0396 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1909,11 +1909,7 @@ static int iavf_tx_enable_csum(struct sk_buff *skb, u32 *tx_flags,
 			l4.hdr = skb_inner_network_header(skb);
 			break;
 		default:
-			if (*tx_flags & IAVF_TX_FLAGS_TSO)
-				return -1;
-
-			skb_checksum_help(skb);
-			return 0;
+			goto checksum_sw_fb;
 		}
 
 		/* compute outer L3 header size */
@@ -1990,16 +1986,19 @@ static int iavf_tx_enable_csum(struct sk_buff *skb, u32 *tx_flags,
 			  IAVF_TX_DESC_LENGTH_L4_FC_LEN_SHIFT;
 		break;
 	default:
-		if (*tx_flags & IAVF_TX_FLAGS_TSO)
-			return -1;
-		skb_checksum_help(skb);
-		return 0;
+		goto checksum_sw_fb;
 	}
 
 	*td_cmd |= cmd;
 	*td_offset |= offset;
 
 	return 1;
+
+checksum_sw_fb:
+	if (*tx_flags & IAVF_TX_FLAGS_TSO)
+		return -1;
+
+	return skb_checksum_help(skb);
 }
 
 /**
-- 
2.49.0

