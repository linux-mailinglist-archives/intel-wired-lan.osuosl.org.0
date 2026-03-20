Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNoIO5bVvGkk3gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:05:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D48442D5DDB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:05:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 791656179C;
	Fri, 20 Mar 2026 05:05:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sFfOTFy_SOqI; Fri, 20 Mar 2026 05:05:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04B376179F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773983124;
	bh=DSOCarzACI+L58dFuOEfbNUGtKVfpwwe4yaL/vAWwfQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iWDjzSpVQEQDYMLbwg+CEgWbHUQeTjVMlJF7ZibslRXqRLKQlwtwnNMu6Ybzxl7ia
	 s6yMV0YYcbgNoj+6gPFhXN3L658EOdRqsU2wjXMpb5+lGbZKrUTIbX2cMFG9POaYcS
	 CoFf2yiKWA95fti9PT/QEd7nktc0Pq/9mu7rZ83WrxJXkj9K/5MSppzzPCzrjrpEru
	 6z5/Dj/YZBCa9NjyjqrDwKPDfQMuc/vQcOQ8wN9NiKhG/WgBhqIGnbrZFxLdzevPnz
	 3hdSaWfsoAL4S2GGmozyB+cCEraxzbv+QOCWLHtYd/6kekbN1rg7Yrpg5wVy/Z2H3D
	 3wTo6we59THiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04B376179F;
	Fri, 20 Mar 2026 05:05:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 71ABE25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5729641398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6acu3oSwJp-e for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 05:05:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A225C40176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A225C40176
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A225C40176
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:21 +0000 (UTC)
X-CSE-ConnectionGUID: 07U0xjOQT1izDAqdBXNDDw==
X-CSE-MsgGUID: aYR8TDPoSJijmrY/B38kUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="100522668"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="100522668"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 22:05:21 -0700
X-CSE-ConnectionGUID: lZ2lxThgT8Sme5q3KiCt4g==
X-CSE-MsgGUID: fwe+DApRSd24oV7xODS/LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227307229"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa003.jf.intel.com with ESMTP; 19 Mar 2026 22:05:19 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
 Katarzyna Wieczerzycka <katarzyna.wieczerzycka@intel.com>
Date: Fri, 20 Mar 2026 06:05:18 +0100
Message-ID: <20260320050518.422303-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773983122; x=1805519122;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DgrE2MwUT9sntQ/qvQ7JgAgAPRBneIx6aGJnv3XM8Pw=;
 b=Kv8L7uoUq+leR77epQkKYNMCNt78sH/AH3uBGlDF30JxnC3NcZ4DTUtE
 do6bPbi+jsrRBfFnhrDMYuTCEbzC8EEoihYbl90qeRTpBG1gEkKF0kHvh
 fGujYFm7tziqLRz435hBNKP7Fq4bu30wjzOvVg6ivJQ19CBsH/dF5WPfy
 A6m+aMUWELQz9VrMvpWCCfAnp+PEtaK7Vbfwp3wOkKMkemjX7qaKCIYr2
 xhDIt6hKQnXPXgG6ftbuicF14dRXYz/k/cPx0DZuo6KpSFCtv78tfoll7
 gdI+e5iDG3EWeyspQBbRALeqtMFmy5IrK7G/mRFwAq+DZzNrz2JuPClwg
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kv8L7uoU
Subject: [Intel-wired-lan] [PATCH] ice: add missing reset of the mac header
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
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D48442D5DDB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Katarzyna Wieczerzycka <katarzyna.wieczerzycka@intel.com>

By default skb->mac_header is not set, so reset prevents access to an
invalid pointer.

Call skb_reset_mac_header() before accessing the mac header from skb.

Signed-off-by: Katarzyna Wieczerzycka <katarzyna.wieczerzycka@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index a2cd4cf..374b17f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2211,6 +2211,8 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 		goto out_drop;
 
 	/* allow CONTROL frames egress from main VSI if FW LLDP disabled */
+	if (likely(!skb_mac_header_was_set(skb)))
+		skb_reset_mac_header(skb);
 	eth = (struct ethhdr *)skb_mac_header(skb);
 
 	if ((ice_is_switchdev_running(vsi->back) ||
-- 
2.52.0

