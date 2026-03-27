Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPMbL0AyxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:31:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E4A3406F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:31:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9818E825D3;
	Fri, 27 Mar 2026 07:31:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xreMSzCtt-A4; Fri, 27 Mar 2026 07:31:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77A0A83C33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596665;
	bh=8A8F+WxTWdlVSEUTUhVRFmtpTU3emeBCJZD3PUws2Vo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CxOjwPB5qDfuqaW5l6ocQrzbqCydgrC9Nx9y/VheEGE9RrXAYuQScjYRolkuakkq3
	 FlrMYfZ8qvasoph1IVZwre5y7isV1azG1xALKQ+IgRaDGjuE0VIlRTJ71jxjDIxXna
	 66eUe8SXyVFvC+aD9/W+uXSl0cVzWSgY9rLRYbfkAlwcJZF28FPSIbdrsYE81d9ZfI
	 cwDOi3gZJAHqHY1++EeYxKp01ZV5T9fvUL0w6ZNZH46rs5fGFKNAzWphqfP7FO7Y/2
	 nK9Aa5DlFQa3ynBwJw+riXlsYbz84RgwgLA+M2ZKNrNHcZ/ZVRnz+FArWRWvVzGAKz
	 VEsv7gelO9wdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77A0A83C33;
	Fri, 27 Mar 2026 07:31:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 011C02D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBA12415BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:31:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ISC2_zu5QPbI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:31:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E9F7541598
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9F7541598
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9F7541598
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:31:01 +0000 (UTC)
X-CSE-ConnectionGUID: WS+0DzauRJiGOiaYhpfGTA==
X-CSE-MsgGUID: sZCC5/n1SgmUNmIwG3SoJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75734331"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75734331"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:31:01 -0700
X-CSE-ConnectionGUID: 1BTtfh0LSuChAT0utFp2Lg==
X-CSE-MsgGUID: CKhl9GRwQpmkmc23e/gMCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="255740420"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 27 Mar 2026 00:31:00 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 27 Mar 2026 08:30:44 +0100
Message-ID: <20260327073046.134085-10-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596662; x=1806132662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PBQkM0oDq4CzXOVzrITHfcyD1KP6EOMIbnUXu+hWNak=;
 b=Tvu88POT3gl9AtDbpq8ycmDbomCenFpLP5gteCjkJlijwajZ6vnIHVHA
 ubey9EgfgH87iH9So8gN8feitCoDW5aDJoh6N6h3VFECcNC35gnt05D9v
 HDXu4q6KFU1vW6Tuc1GKIyIbFvGuKLYKvWROmZvCQYayCjKHBt0/SeAij
 TRkGmU+HYFa35ABP1BraMd30xenAVrk3hWJOAieYeQnKbY65a2KGHw+g6
 wOT6QjOjadHIkTnan03JyRPN+ZLn0rYCv75Bzg0RxBoSol4yCniEGCNGM
 03ZX7VWPiyrvtsM7s7kgs5SoiRaet3UNnArD+A3KDbayv1ll7/yzYV5cw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tvu88POT
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: fix integer overflow and
 wrong bit position in ixgbe_validate_rtr()
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 65E4A3406F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Two bugs in the same loop in ixgbe_validate_rtr():

1. When extracting 3-bit traffic class values from the IXGBE_RTRUP2TC
   register the shifted value was assigned directly to a u8, silently
   truncating any bits above bit 7.  Mask with IXGBE_RTRUP2TC_UP_MASK
   before the assignment so only the intended 3 bits are kept.

2. When clearing an out-of-bounds entry the mask was always shifted by
   the fixed constant IXGBE_RTRUP2TC_UP_SHIFT (== 3), regardless of
   which loop iteration was being processed.  This means only the entry
   at bit position 3 was ever cleared; entries at bit positions 0, 6, 9,
   ..., 21 were left unreset.  Use i * IXGBE_RTRUP2TC_UP_SHIFT to target
   the correct field for each iteration.

Also replace the hardcoded 0x7 literal with the IXGBE_RTRUP2TC_UP_MASK
constant for consistency with other parts of the driver.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 9aec66c..53b82a5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9798,11 +9798,12 @@ static void ixgbe_validate_rtr(struct ixgbe_adapter *adapter, u8 tc)
 	rsave = reg;
 
 	for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
-		u8 up2tc = reg >> (i * IXGBE_RTRUP2TC_UP_SHIFT);
+		u8 up2tc = IXGBE_RTRUP2TC_UP_MASK &
+			   (reg >> (i * IXGBE_RTRUP2TC_UP_SHIFT));
 
 		/* If up2tc is out of bounds default to zero */
 		if (up2tc > tc)
-			reg &= ~(0x7 << IXGBE_RTRUP2TC_UP_SHIFT);
+			reg &= ~(IXGBE_RTRUP2TC_UP_MASK << (i * IXGBE_RTRUP2TC_UP_SHIFT));
 	}
 
 	if (reg != rsave)
-- 
2.52.0

