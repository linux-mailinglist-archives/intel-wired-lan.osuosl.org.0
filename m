Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APkHLCFnvGnQyAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 22:14:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2932C2D28DC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 22:14:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCF9560F07;
	Thu, 19 Mar 2026 21:14:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CKH7XqtWFLmq; Thu, 19 Mar 2026 21:14:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3B7A61638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773954847;
	bh=A3rr7R6rV2HWrNv0dG0iXcmXY6dWNF0FyqtWDQ0CEuY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RciBv9GiZdM+VNO9k/ARF4qNZOiD2+uVwIFuOD3obLurAbBWlQ7sAt6b6tSQvfeB+
	 khRp/vX+IvoTqY5z0/FKenog5H65axgvnOH3UNTnVszQc3FA/WXDBWPHglg2Itd0SN
	 T5qNaW7qJNK1t1OE8bawLVwyN4MDsC1A/YFO0+QEF53fagstTEncMT9bryvBvg0Fus
	 KVm3+nYx7qqfqbpBunulFQDXvKhczHRtJojB5M8OrPNZXTeFv2MMTapTYBAG2FnZb0
	 tq2v+aTJ0pyuWD96Naa744mhiWwBA7trVBc4zk92xfi7aTQwKE5BmVqWSec77lGoVW
	 87bdbr7maISzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3B7A61638;
	Thu, 19 Mar 2026 21:14:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D6BFD265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:14:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BC6A440103
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:14:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id njYAp0dFwxDJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 21:14:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1E313404A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E313404A8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E313404A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:14:04 +0000 (UTC)
X-CSE-ConnectionGUID: gKiF9iDTQcqvVsz8I8Xq9A==
X-CSE-MsgGUID: Iw4tkwGzTEyi+hiJT0TrYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="86116380"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="86116380"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 14:14:03 -0700
X-CSE-ConnectionGUID: REe93wI8QfGVVyM1f/5zkA==
X-CSE-MsgGUID: JCzPACKwTgKixmtbe025Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227221175"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa003.jf.intel.com with ESMTP; 19 Mar 2026 14:14:02 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bigeasy@linutronix.de,
 clrkwllms@kernel.org, rostedt@goodmis.org, linux-rt-devel@lists.linux.dev,
 sgzhang@google.com, boolli@google.com,
 Emil Tantilov <emil.s.tantilov@intel.com>, stable@vger.kernel.org
Date: Thu, 19 Mar 2026 14:13:34 -0700
Message-Id: <20260319211335.23236-3-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20260319211335.23236-1-emil.s.tantilov@intel.com>
References: <20260319211335.23236-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773954845; x=1805490845;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=oRpzbw8xGxDnBQtkUrD1pw82znTvjifsBtJ+zx1wwAI=;
 b=PcK3CuBgm2ZzKEowVlC6eGHyaXyji1jeLnrnTz9nWKfsXngoDIwlKRkk
 QW7m6LhMPYaqf52MpZrjJEjWn1FsYrkeLtKUIXGROH0VAHX7fRRE6aciQ
 0Echlf3YdQXtTQTQ39TC8Z+iCCKDi1QBQ2rqatQKgzBeX9LuhZCO0Iqna
 z4hlo3ogkSJ1/qmK1o4yLcjN2zGAVnbiB7Z/sgDJrvSBDpGVNn70PtuQI
 7BKuwmVNn0QKTYETPjzDcKGfhBM26xIrbLlOUb/Ow+ReFu7plyBrIrdSo
 4pOwz80Xv3e92w6f8uQarDy48N2bDICCE/V0y61eOiVDDB0HDxokfdhpM
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PcK3CuBg
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/3] idpf: improve locking
 around idpf_vc_xn_push_free()
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.995];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2932C2D28DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Protect the set_bit() operation for the free_xn bitmask in
idpf_vc_xn_push_free(), to make the locking consistent with rest of the
code and avoid potential races in that logic.

Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
Cc: stable@vger.kernel.org
Reported-by: Ray Zhang <sgzhang@google.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 582e0c8e9dc0..fbd5a15b015c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -402,7 +402,9 @@ static void idpf_vc_xn_push_free(struct idpf_vc_xn_manager *vcxn_mngr,
 				 struct idpf_vc_xn *xn)
 {
 	idpf_vc_xn_release_bufs(xn);
+	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
 	set_bit(xn->idx, vcxn_mngr->free_xn_bm);
+	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
 }
 
 /**
-- 
2.37.3

