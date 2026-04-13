Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aH2wI6ib3GkxUAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 09:30:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3D63E8415
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 09:30:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 238B661AC3;
	Mon, 13 Apr 2026 07:30:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W6N02e5RnIyR; Mon, 13 Apr 2026 07:30:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B0A560E7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776065443;
	bh=QNDftkoJLNPlmvgndpdgPF6pw7XMROEVYtmkojndOYg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ysgiLvQeU01/AHJW3Dqkh2277lAPj7XEizjZIWjt1pBQThIoH8GEUDmEFfKo9NbwL
	 /FLqRTxzN/cVcp+AeXPxN2kUdgLDx6a2OK0DmmVhJymYRBVtOq0GRapkmDn+1Sdj6J
	 Ql5X0MkgSz2wu2ZmSP3XfX7+Ib+sutJcTwvk/24mTlbBgPQOHS7cqU40+13rkXLGxP
	 aw3BCyG10u6iNQ3k/D6oWsHxiZjGS0JUgS3VhWhVvHH3yI7QUIUmCrexgRgYqb/2Jy
	 ObYWLPhaMuoxFF6pqdhoG/o7+ci99LaF3UQQ7vCf7MDVqt1X5gumhvYe+QnTvuGMrG
	 k91Xz2fah/2zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B0A560E7A;
	Mon, 13 Apr 2026 07:30:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D9BD194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1FFC942111
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OJcGEQAYSECv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 07:30:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 411F741F3F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 411F741F3F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 411F741F3F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:40 +0000 (UTC)
X-CSE-ConnectionGUID: ukLFaMiXQZSoJKfqOv6EnA==
X-CSE-MsgGUID: aQk4s5NZRvmk0zuD8j2afw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80876624"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80876624"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 00:30:39 -0700
X-CSE-ConnectionGUID: oIM8odAfTtGc4cdJON8cOA==
X-CSE-MsgGUID: gWIl8THVTPWKhPqHzA5q+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="267700532"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 13 Apr 2026 00:30:38 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Kiran Patil <kiran.patil@intel.com>
Date: Mon, 13 Apr 2026 09:30:31 +0200
Message-ID: <20260413073035.4082204-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
References: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776065440; x=1807601440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ta+v/kaw6mxcspfEY59yn1vMg7wbC7MsZRcrKAktIFk=;
 b=efoOBUX+tvXfiAwn6/pc5XCW3xrA+/1Fcg4iftu3fEu3sGcWxXbjTdGa
 k/2r2WSi7etGcZVlC23jriVIFFCSGJNpfsxyPt8JFHy5ezbTcjC7e5SSp
 4TA+MufF2rseJdTkeF41Cq0jfOJerEs7e+ssmuXbe/w0wxRvpIeLZYfmz
 Z0tnEo7U3hR0RESIeyUaWYF4OFW+vrEOV5n5Lbb9lKC6pZ4xaLwISQP/V
 ZSnNvA0xy22P6KNABoQD0dl0SkwfDTNl39VEASDubJXUH9HUYxB0ILPqP
 skKmnvPpXzUndTYMAg9Rmq7dUWZxP8o7lNMUHKyTcXAaIGkm9cBz1cKq4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=efoOBUX+
Subject: [Intel-wired-lan] [PATCH iwl-net 1/5] iavf: fix null pointer
 dereference in iavf_detect_recover_hung
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
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
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5F3D63E8415
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Kiran Patil <kiran.patil@intel.com>

During a concurrent reset, q_vectors are freed and re-allocated while
the watchdog task may still be iterating rings in
iavf_detect_recover_hung(). Dereferencing a NULL q_vector inside
iavf_force_wb() results in a crash. Guard against this by skipping
rings whose q_vector is NULL.

Also move the tx_ring declaration into the loop body and drop the
redundant outer NULL initialisation, which the compiler can never
observe since an array-element address is always non-NULL.

Fixes: 9c6c12595b73 ("i40e: Detection and recovery of TX queue hung logic moved to service_task from tx_timeout")
Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 363c42b..e7e7fc9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -176,7 +176,6 @@ static void iavf_force_wb(struct iavf_vsi *vsi, struct iavf_q_vector *q_vector)
  **/
 void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 {
-	struct iavf_ring *tx_ring = NULL;
 	struct net_device *netdev;
 	unsigned int i;
 	int packets;
@@ -195,8 +194,11 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 		return;
 
 	for (i = 0; i < vsi->back->num_active_queues; i++) {
-		tx_ring = &vsi->back->tx_rings[i];
-		if (tx_ring && tx_ring->desc) {
+		struct iavf_ring *tx_ring = &vsi->back->tx_rings[i];
+
+		if (!tx_ring || !tx_ring->q_vector)
+			continue;
+		if (tx_ring->desc) {
 			/* If packet counter has not changed the queue is
 			 * likely stalled, so force an interrupt for this
 			 * queue.
-- 
2.52.0

