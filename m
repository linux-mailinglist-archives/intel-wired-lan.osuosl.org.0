Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHSrKGhK82ngzAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 14:26:16 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8384A2BD1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 14:26:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7A0460FD9;
	Thu, 30 Apr 2026 12:26:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uJTUvvFR8uku; Thu, 30 Apr 2026 12:26:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02F976179B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777551969;
	bh=cG2dGev00flescZ6y5TU3H+rWJSgP4T65oPPI9TVdvg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0B5KyCKNg1l87u/YqWHUUJZR7/mwVSJMBjs9lsQs3twfQ4a37XXUuYJdv28FrEgZ8
	 /Gb6ttRBKlkajk4IhxKdIi1xXVPk8P1MJA6ZRdRGWSdoxDI+1EtTmhKxeYNTxcsIoQ
	 bIqJo9FKXRI1LiHyd+wRQ2e40PJCzIIjOiNPrK1uBsgwgXCWKKH06gNEKv0TweHrkY
	 xsKyCIDsqROKhGboNm+Aye3Pv6xBm1sMRKqNLDR5j2rR3KsWkAsEeUt9rbhmf9LzHy
	 Jn7x3+mQNrSbgx55YMzt5elF7YqCcIVihYb2MS/MunGIr69mJi6AjqLoI7sb0ERUlY
	 hAAr6H5FaFc1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02F976179B;
	Thu, 30 Apr 2026 12:26:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2031218F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E683403D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a-z9Q_nAm-sQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 12:26:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7899E4073C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7899E4073C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7899E4073C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:06 +0000 (UTC)
X-CSE-ConnectionGUID: kGXpTR/xSvy4p0xwmZql6A==
X-CSE-MsgGUID: fUyURqiDQHqhYFt33DiczQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78689182"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78689182"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 05:26:06 -0700
X-CSE-ConnectionGUID: iGpTe9cgTJqrJcYaeqGlxw==
X-CSE-MsgGUID: Mfr2tqbKTTGcHSYViPM7Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="233538423"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa006.jf.intel.com with ESMTP; 30 Apr 2026 05:26:05 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Thu, 30 Apr 2026 14:25:58 +0200
Message-ID: <20260430122602.126722-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260430122602.126722-1-aleksandr.loktionov@intel.com>
References: <20260430122602.126722-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777551966; x=1809087966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y1C501JONhNNAVfQFgCHZpYKC+oUFWqSXemVKft+MIg=;
 b=nayGQg+B7Gc3uO0EQzfKR2gd4XkSwxZtx96EgQCioFfJp16MBZv+LZOo
 r+m/PQbFpz/MSPForFF6Ns7tVckUDn/zRFkoBQPGG8GEhXr52zzM+lS/N
 z1Vj6d6vaYjBDJI2kVsvA7cTPYsDk7ELMOgjUmxcjvBkvit8OrrBx0Xgn
 Nsdo4ul5eWsyKabbr5lsrhk/pMpbqZH+McdC/UkbARZqWDuU4pVaINW6J
 uuQkHPab9CSY8oxp4mHtd+F5wl//0s2/bDFvdmcL4zTp/iBICKqCZvCMz
 iKtjyKcmN2Z2TzV3CBZuI/06R0a6/JkKRuL6k1HM/kTOkX5luyvE1Ze2X
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nayGQg+B
Subject: [Intel-wired-lan] [PATCH 1/5] ice: fix ETH56G Rx offset type
 description in kernel-doc comment
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
X-Rspamd-Queue-Id: 1C8384A2BD1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email];
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

