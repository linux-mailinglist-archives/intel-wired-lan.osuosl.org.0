Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIjRKrCb3GkxUAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 09:30:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 632A63E8434
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 09:30:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E75AC61AC5;
	Mon, 13 Apr 2026 07:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qvTBLiMU-sYP; Mon, 13 Apr 2026 07:30:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71E2261795
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776065447;
	bh=kmlvHh9z0jL2QCd07HvAfq4ZaB/LlfQ/CCNMZ1e2v1Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SPp5Q4twHdS1yfVECD0TEci4fmfYqGscinSwkbE3nBF9VZVntXyA+2ZY0C7l7jg+/
	 Kl2sWiDGQD6dzQUM9bKA1dJXk+ec+4d3FwzRgp0z2M3oErjfqN2o4o+0/GOFzKop/z
	 2eBse5VSwcDdKDkrjqcq89FOJ38VdeG67x5DUwpoRVT5L+FEQIBoj+slJlzXyEhl0D
	 7bkXklh7D48bSDyZDrill+id/rJg1VZ+bdMvIBJPCj45ifdZnuvHmmqEk89bCw0pGF
	 A327O+PNBdFn3N7RQ9NUSCvIwjwoeSFEkepOJciT860i2xyuyoQbeW30ArrOKBBTxA
	 6AruWhmZXC1gA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71E2261795;
	Mon, 13 Apr 2026 07:30:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 14EBE194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF176840F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I9cE4aXE01_Z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 07:30:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 02B398238D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02B398238D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02B398238D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:43 +0000 (UTC)
X-CSE-ConnectionGUID: iWpSkUVRTU+GgXfqxTxjAg==
X-CSE-MsgGUID: UUPI+bpRSpK6pM5ei4YoFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80876639"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80876639"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 00:30:44 -0700
X-CSE-ConnectionGUID: +D87Ji+sQViJfGZAY1t3nA==
X-CSE-MsgGUID: NL72vD+0QKiiUNUOzRy8+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="267700558"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 13 Apr 2026 00:30:43 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Avinash Dayanand <avinash.dayanand@intel.com>
Date: Mon, 13 Apr 2026 09:30:34 +0200
Message-ID: <20260413073035.4082204-5-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
References: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776065444; x=1807601444;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L00BtSpnf5+O+MupvLoKyYTpfp5AyA445wZpnSJZRNE=;
 b=ErdtsyzBusgwI1X8wMN6ONqjROx4rhwIvBG8IYWXXOaAB9iNWR2jW4f4
 6plQrfZwGnxszvsDSS9bfzDpTiyjivPy3/ElsXMDyB0bY/zNKOzYTl7xo
 HUMLQ0CLt8JdjSBWuHgfJRfoiFuxm8AYWpCCACG+C8o6Y0QaQ86Q8hMlR
 hMCRVTbQ9BL/6QpauD7U0IheltG9eW4dEAuloZHLcKiUHOGTQfyoEh7+d
 IAyq7qS+M4GvcQ5EyxEsM5SOyqlIvE2aiLz9Zu2kly2jKvoBiyipRqEvy
 YRo6ekHaAEJFWgsynIVfcvyQGk9YRqT7vUQHWkNaNETfdDRIt+8cUbXja
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ErdtsyzB
Subject: [Intel-wired-lan] [PATCH iwl-net 4/5] iavf: fix TC boundary check
 in iavf_handle_tclass
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 632A63E8434
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Avinash Dayanand <avinash.dayanand@intel.com>

The condition `tc < adapter->num_tc` admits any tc value equal to or
greater than num_tc, bypassing the destination-port validation and
allowing traffic to be steered to a non-existent traffic class. Change
the comparison to `tc > adapter->num_tc` to correctly reject
out-of-range TC values.

Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
Signed-off-by: Avinash Dayanand <avinash.dayanand@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ab5f5adc..5e4035b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4062,7 +4062,7 @@ static int iavf_handle_tclass(struct iavf_adapter *adapter, u32 tc,
 {
 	if (tc == 0)
 		return 0;
-	if (tc < adapter->num_tc) {
+	if (tc > adapter->num_tc) {
 		if (!filter->f.data.tcp_spec.dst_port) {
 			dev_err(&adapter->pdev->dev,
 				"Specify destination port to redirect to traffic class other than TC0\n");
-- 
2.52.0

