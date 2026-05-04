Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFaZEj6s+GnHxgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDBA4BF531
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F267861171;
	Mon,  4 May 2026 14:24:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gPN-UIu9ejsu; Mon,  4 May 2026 14:24:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60AFB612ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777904699;
	bh=cG2dGev00flescZ6y5TU3H+rWJSgP4T65oPPI9TVdvg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CB+RwxXUNmNdidR4MoeCY9Ykh85uo1ZYBg6QkIrP4PS5c1QrvdUou2FoJf9Hkh7Sq
	 999d1tYKcs6S9nZnQ39PfrBMZCpNM+EapKUYPPokAJCEKBEMbzokwcAAp3+H/ZNfV7
	 tzn12iAlOBtlpFhtr95RVxCn9cs/KruvzdI/sT7eQwcJEeLrZrVAQxlGg9Ap3sSSSY
	 Fm1d4o9K63E0b7Ii/fys6co75ZKIw75E1j5rBaMKtIdwFtUN2rzjcWqtYmJJ7WQDZj
	 2jvqeNKBqHnlf3BwSfuz9jdRTNSMDwGHPTuWw/3DOC7MnqUlBtzArY3Q7OSjSQ5tjI
	 8zcx3sELQjb6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60AFB612ED;
	Mon,  4 May 2026 14:24:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C54A190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 022E960EBD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k4ibPKorx0Fp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 14:24:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 61F276107C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61F276107C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61F276107C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:56 +0000 (UTC)
X-CSE-ConnectionGUID: yKxQxNxUT/yIGTrVDVZrCw==
X-CSE-MsgGUID: +jQfkOhkTeuMUTVq1BQVKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78691606"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78691606"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 07:24:56 -0700
X-CSE-ConnectionGUID: DtNeDCJ5QO6cpHa5Uf28mw==
X-CSE-MsgGUID: 4+F3EXs1SGysiJaM5A9EOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="230935398"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa006.fm.intel.com with ESMTP; 04 May 2026 07:24:54 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Mon,  4 May 2026 16:24:47 +0200
Message-ID: <20260504142451.4161845-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
References: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777904697; x=1809440697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y1C501JONhNNAVfQFgCHZpYKC+oUFWqSXemVKft+MIg=;
 b=PiLl6qxHDPQSiGZUwHoU6UQEc2SheMB+bR7NKNu/iJyXdCcn1YaanZHV
 cTtRF0JS7K7k6QNCfIFi+ygk+7mfPV7KuqcWasa5O9UyAjjF80MNuvJ+9
 45jfManyrT8aKKGNqJclrVRcZwCpX/9QEIpw/sn07WH2OCkQNDQOwg/AX
 Lk93yZD4fbWTN19BO/+oUf/yZJeahNLxHYmo/h1HXutvGSKf3+eX2ttKp
 DpcVz5PCqPUtD1X5QTCLmtMNUj0tkcE0vN39G7m/OhUAgiOEtfJakWnkh
 LIUCbelWB1EBmuCc63Kn7+0klem+mQWRMPq/JbOG3GwoeyTVrXROJpKS1
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PiLl6qxH
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ice: fix ETH56G Rx offset
 type description in kernel-doc comment
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
X-Rspamd-Queue-Id: 7CDBA4BF531
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
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
	NEURAL_HAM(-0.00)[-0.998];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

From: Karol Kolacinski <karol.kolacinski@intel.com>

The ETH56G MAC register configuration Rx offset field stores a signed
integer, not an unsigned one. Correct the struct comment that incorrectly
described it as '11 bit unsigned int'. Also update 'unsigned ints' to
'unsigned integers' for consistency.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 9bfd3e7..c1aa408 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -144,9 +144,9 @@ struct ice_vernier_info_e82x {
  * @tx_offset: total Tx offset, fixed point
  * @rx_offset: total Rx offset, contains value for bitslip/deskew, fixed point
  *
- * All fixed point registers except Rx offset are 23 bit unsigned ints with
+ * All fixed point registers except Rx offset are 23 bit unsigned integers with
  * a 9 bit fractional.
- * Rx offset is 11 bit unsigned int with a 9 bit fractional.
+ * Rx offset is 11 bit signed integer with a 9 bit fractional.
  */
 struct ice_eth56g_mac_reg_cfg {
 	struct {
-- 
2.52.0

