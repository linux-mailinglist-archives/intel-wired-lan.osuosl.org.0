Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id bDoDBhWSuGlhgAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 00:28:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7F92A1F39
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 00:28:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2D87606DB;
	Mon, 16 Mar 2026 23:28:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Oy-zw7ntbjTU; Mon, 16 Mar 2026 23:28:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68F3F60E30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773703697;
	bh=ZfoinYuTMjs2MH1W59EXYwHuBCA2Le0p9VqTlYBHYn0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yKMHQ1ZxeGsu1dRqRoQGzLjiq4pA6PNV7Am30eLu0nnRs3nVO2SreLRCGBZK5N3Sm
	 kLjPwWFnMqZTXxCvFH/ZSisH3ebGTXwKqtZqgTWhwEkEp/Zpfj1R3DAk/g1vHYcam6
	 zal9rBsUcqsRJsqYUEuAMrRqnJkiao6DQk0+gi7JPQ/wYRts14lfafr4sRpyBW/jLd
	 RW6IElK0cUSfqtc95KYYffWO7ugVfLFi1zsJsA1ItZ53qT/kFhcHuDrk6qZi9Sxqe6
	 /48FCPGsH6k8tOlks/fr9kiUCHs7exGXy2BH5jTM0Q23+wUDbWxAFbXrOw2eQBdHHS
	 Jhj1lo7rHjx/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68F3F60E30;
	Mon, 16 Mar 2026 23:28:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D70293BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C911483993
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fspPV9whrloq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 23:28:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9D99883984
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D99883984
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D99883984
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 23:28:13 +0000 (UTC)
X-CSE-ConnectionGUID: XW2a5nG0SXWYnSKDzWCeJA==
X-CSE-MsgGUID: H6MC4XigQS666kDETSO+Lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74912795"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74912795"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 16:28:11 -0700
X-CSE-ConnectionGUID: q6W05ur1TqWut6LWzmACxg==
X-CSE-MsgGUID: k9oZtTZ6S86bBzNBVudNTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="246842449"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa001.fm.intel.com with ESMTP; 16 Mar 2026 16:28:10 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bigeasy@linutronix.de,
 clrkwllms@kernel.org, rostedt@goodmis.org, linux-rt-devel@lists.linux.dev,
 sgzhang@google.com, boolli@google.com
Date: Mon, 16 Mar 2026 16:28:16 -0700
Message-Id: <20260316232819.6872-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773703694; x=1805239694;
 h=from:to:cc:subject:date:message-id;
 bh=mDvpcyUxU/3xC+bANeAIRGdwDzaQRXBf2JZBe/kSvmw=;
 b=a6w74TpWaNzilXvumZcRHm3/gXY3IMAUgyFrnmmtsDMZXcqxZ9UjAFZr
 bqtCBdIoSFz8C3v2Gf1xWlqNCAXc1AgAkW/ECyd/Dfxzb5QNKaruHkzmO
 Xn7ZMbHeRK4dIq8ZUM9cMFHqhY8idkznMfeJbtbSKSyF/QpANu3j1l+Qo
 ZCsmhnv+8OYcOtLWiji/gP075Y3GicfBTHt8bY+P9vV69+Mark6rIrK7o
 zT5M386LUecKqYvfvzR1D0jM89pJDdCC4oUI73aWvErxudDZq/JRXLSJT
 t8/Y3naH3b1KAY0pX0LsAxqebOvXEZDljp3qfLC3sNgzw+b2sI8w0imBX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a6w74TpW
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] idpf: virtchnl locking and
 async fixes
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2E7F92A1F39
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The first patch in this series improves the locking around the setting
and clearing of the free_xn_bm bitmap. Previously the lock was only
taken during init shutdown and pop, but not the push function.

Patches 2 and 3 are fixes for the async handler. Patch 2 ensures the
payload size is set before the async handler is called, and patch 3 fixes
an sleeping bug due to nesting of raw/bh spinlocks.

Emil Tantilov (3):
  idpf: improve locking around idpf_vc_xn_push_free()
  idpf: set the payload size before calling the async handler
  idpf: fix PREEMPT_RT raw/bh spinlock nesting for async VC handling

 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 40 ++++++++++++-------
 1 file changed, 25 insertions(+), 15 deletions(-)

-- 
2.37.3

