Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEqbMiNnvGnQyAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 22:14:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 584522D28EB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 22:14:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93A4E61641;
	Thu, 19 Mar 2026 21:14:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b6Pdesm16ick; Thu, 19 Mar 2026 21:14:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E277261638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773954848;
	bh=rRa662bRd57Ppa7krT6RgBkWHkyXQ4jIWhpwK/ywtgw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pI3m7U5LJPhjG1rXQ9BjF/0VVctwbowMTFZv6gxmzgMz3RWzoWnOrUSja4L/mcyRU
	 qfLNVPYo2TiWvJfeZ42ATgVq9zlpiSaK/e+FHLD65K+nyQBsze4gapHXks22cYqxkt
	 5iNNGrcyxNwdqXichWxHU5hPtlrBgvjfqK+pqLPo0hD0tL01kmL6zRtqwETRhMFDlM
	 lFYlRKxqZ1JCyFb0gXTjU+QjQFgvGzRvzyIZpB+C48/reYP+rrdfwXWD/mhiaY5LWY
	 NL5Vc22Wb2NBgHiWigxWI2yKy/lHgGyQbZohtDuz+C53H40eJ+TChsWMW03WEB0k0e
	 jHWOYM5SM/GAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E277261638;
	Thu, 19 Mar 2026 21:14:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DDEE1B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:14:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3088184426
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:14:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1fQJ8GdL3gRW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 21:14:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 09B8684395
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09B8684395
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 09B8684395
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:14:03 +0000 (UTC)
X-CSE-ConnectionGUID: L63ib6guR4Wu+ZrsQwvxbA==
X-CSE-MsgGUID: 4TypxpSySYGjxtsgzMEnsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="86116358"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="86116358"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 14:14:02 -0700
X-CSE-ConnectionGUID: WXM2WaaIS4qrYTicVnNMyQ==
X-CSE-MsgGUID: YOQskBR4Ryqvkx9OeGomAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227221170"
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
 Emil Tantilov <emil.s.tantilov@intel.com>
Date: Thu, 19 Mar 2026 14:13:32 -0700
Message-Id: <20260319211335.23236-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773954844; x=1805490844;
 h=from:to:cc:subject:date:message-id;
 bh=g6w+7/HUstfdDlcFG0XXPxnCcV+gCuI/3fPis9u3Wso=;
 b=oKc6Gt2a/m140DK1lDd5an1JIQLrYOKtr14tqg06d397v15J4IUhOw2M
 ZrNH40+bWinl1QnqpWinsYtGq4TTGhDpnGydHHBaYsy3Gt6xwJ9p6oh/g
 /ALxSuHMRaIMXdwpCA2zDsAcCKVZ5x2O4EeQKx5NBNVQy22wJTT1KEvjS
 nPKR6zWYknvhPU4vf10o8Im4dsrRAwMcUwe9uE+qOuKjsko8QrgdEo00M
 lxxxBhHwjC85wlTa4WjrS+DA1k4eh8kr23prIux3rGeujvEQkO6YlCTA8
 t1ZWlYFrKtpCbSuykgSzFy6/jrfZK946FNDnHJCotyQcIkaxJ8BfdKaDg
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oKc6Gt2a
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/3] idpf: virtchnl locking and
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 584522D28EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The main change in this series is the introduction of local spinlock_t
which replaces the previous use of completion's raw spinlock. This allows
us to make consistent use of the xn_bm_lock when accessing the free_xn_bm
bitmap, while also avoiding nested raw/bh spinlock issue on PREEMPT_RT
kernels. Additionally, we ensure that the payload size is set before
invoking the async handler, to make sure it doesn't error out prematurely
due to invalid size check.

Changelog:
v1->v2:
- Avoid the nested raw/bh spinlocks by not using the raw spinlock from
the completion API. As suggested by Sebastian Andrzej Siewior.
- With the above change, the ordering of the patches is changed to first
introduce the local spinlock, then fix the locking around the bitmap and
finally make sure the payload size is set for the async handler.

v1:
https://lore.kernel.org/netdev/20260316232819.6872-1-emil.s.tantilov@intel.com/

Emil Tantilov (3):
  idpf: fix PREEMPT_RT raw/bh spinlock nesting for async VC handling
  idpf: idpf: improve locking around idpf_vc_xn_push_free()
  idpf: set the payload size before calling the async handler

 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 20 ++++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  5 +++--
 2 files changed, 14 insertions(+), 11 deletions(-)

-- 
2.37.3

