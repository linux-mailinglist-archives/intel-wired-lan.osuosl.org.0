Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LfuC2vzAmrpywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 11:31:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9539651DC35
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 11:31:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B41860C0F;
	Tue, 12 May 2026 09:31:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JoRpNvAXBfJG; Tue, 12 May 2026 09:31:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8418E60C10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778578279;
	bh=pWvzbF+3SdSXJ7eNVDY6OIBiqz4w6Ntk0BuRlCUog2c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yvcYzvN9u9xK1+0nmi9EUGpVaQoITwFykCCkR7Pw3GZCV/PVtSS50uUwNruwMPYzK
	 wAhbkb7t0aantR9loSzcHWiB4Y9x4TiAmKhhmy+9w8KjeMfQZnBfRZcFsVritrtohk
	 I48OpzP+RTEBIKMNVlwXdH1hMczALrzmgf6u+HYFNA7o4ZhydSysbSFups1DcuqGtA
	 Tdfz05MRTi6Uo2nAhA+0HpMf9+OhLafGV7t8d113Ot4W3Whgombxse9N0wMt0qJmPu
	 7bn21uOpYWwGxVEtuzQPy+BALtejJjnEDXLD1RASh6+V5tmMVwiKDH9De6WkROKq+b
	 yhnBoGfSxHyRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8418E60C10;
	Tue, 12 May 2026 09:31:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 25909223
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1AD6360C0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PKUpEQ6AmAre for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 09:31:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 80B8D60B8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80B8D60B8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80B8D60B8A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:15 +0000 (UTC)
X-CSE-ConnectionGUID: WIqKeOQeS/CUmlDpwiijEg==
X-CSE-MsgGUID: SyFQtUDtRsSE+deloOt/6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79663247"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79663247"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 02:31:15 -0700
X-CSE-ConnectionGUID: 1X6lkBxBR5GOL9AcsgorzA==
X-CSE-MsgGUID: wMcPcmSmTkqZ0N1FI79ubA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="231323220"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa009.fm.intel.com with ESMTP; 12 May 2026 02:31:14 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 12 May 2026 10:47:27 +0200
Message-ID: <20260512084729.1338557-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
References: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778578275; x=1810114275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n5ioBkaZUOJfCvdOjoBw0lwuVb9kUUxbFn9DAO17+8Q=;
 b=ZouulB8DwZpmoxAKGLsVEriGIiZYeWy654Gfi7IJFlKkB9q+cQ04Psc0
 pKuZxX/6Dt0azv6xkhQebm48UJmef6GMx1hLbJP3t26VdIhL6yTVjSPBK
 Oq0+U0UByzRlCNDVASdEX3e+NBdjf9akHKgOCAvzU4FObseR1J/oXr/If
 dfRmxDa31Cm/9UwypFnnEqDtVROQmhAOiVo3Vn+xtVfbYR43HP1BtJilR
 EB2PWW90wzMO5b/4nGT+gvjUr1txiTXQV3IEnT7PBv8QovgWoV93SstCA
 vJiweHrtp14ZFv7+2F7UbbhZaG5C6TOSTFX8GvLiGk6AoXuS+ZwraG7K3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZouulB8D
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/4] i40e: pass the return
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
X-Rspamd-Queue-Id: 9539651DC35
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

skb_checksum_help() can fail. Pass its return value back to the caller.

Commonize this software path in goto.

Try calculating in software instead of returning error.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index cfaf724ee7ff..6e336696276f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -3306,7 +3306,7 @@ static int i40e_tx_enable_csum(struct sk_buff *skb, u32 *tx_flags,
 			ret = ipv6_skip_exthdr(skb, exthdr - skb->data,
 					       &l4_proto, &frag_off);
 			if (ret < 0)
-				return -1;
+				goto checksum_sw_fb;
 		}
 
 		/* define outer transport */
@@ -3325,11 +3325,7 @@ static int i40e_tx_enable_csum(struct sk_buff *skb, u32 *tx_flags,
 			l4.hdr = skb_inner_network_header(skb);
 			break;
 		default:
-			if (*tx_flags & I40E_TX_FLAGS_TSO)
-				return -1;
-
-			skb_checksum_help(skb);
-			return 0;
+			goto checksum_sw_fb;
 		}
 
 		/* compute outer L3 header size */
@@ -3406,16 +3402,18 @@ static int i40e_tx_enable_csum(struct sk_buff *skb, u32 *tx_flags,
 			  I40E_TX_DESC_LENGTH_L4_FC_LEN_SHIFT;
 		break;
 	default:
-		if (*tx_flags & I40E_TX_FLAGS_TSO)
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
+	if (*tx_flags & I40E_TX_FLAGS_TSO)
+		return -1;
+	return skb_checksum_help(skb);
 }
 
 /**
-- 
2.49.0

