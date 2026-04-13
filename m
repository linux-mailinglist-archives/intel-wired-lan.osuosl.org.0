Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJd8N6Wb3GkxUAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 09:30:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E757B3E8405
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 09:30:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4796F606F4;
	Mon, 13 Apr 2026 07:30:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mg9FG5aVgi7b; Mon, 13 Apr 2026 07:30:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEF0760E7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776065442;
	bh=9SuMHjI8vu0DjRTF2RbFM4s+wkZjKGhbm0T00t4wEz4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8dhpZQbiEWv7nhgNQssS8JdkqQ4C2xFGZC5L7ioiqx31SE30VG5nkWtXoLKSMsTMg
	 DTOuhs31GkwZzqCtTgiFbya6EE2YsIWkll7yoSB/RGQEJE6CMNSHA26XKYyvync/tR
	 T0GOAj5qyWwZbv5eRYJyHa41j9IceP3UyhMb6mt4AX6N66cWaqns760FjW7NfBAOvx
	 DyTPhURc3jn5VOPcAfxpNAiO84NB0AeLj8SatOtZszNF2lQJwnbUxnvMsMqTCQhwG9
	 FGq/eS0BjL0Q9TpciYOIz47XybyJsISOAv5PchhslxEHuzmGCH+dXf51tEY4c2TLYx
	 Hm0BqqjjElpRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEF0760E7A;
	Mon, 13 Apr 2026 07:30:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 961DF194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C00640071
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6I8MkspieslY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 07:30:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 581AA4002D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 581AA4002D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 581AA4002D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 07:30:38 +0000 (UTC)
X-CSE-ConnectionGUID: NJ46cEfDQOW0SmHW23AB9Q==
X-CSE-MsgGUID: HOwiAKDxTu+KbdL+qW2A3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80876617"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80876617"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 00:30:38 -0700
X-CSE-ConnectionGUID: Yn6+Ooj5Re6ZlgSGRhw+lQ==
X-CSE-MsgGUID: 3nNRPr0rQyWITNDhb04X3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="267700520"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 13 Apr 2026 00:30:37 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Mon, 13 Apr 2026 09:30:30 +0200
Message-ID: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776065439; x=1807601439;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o4EwR0Xo5xKCLDvZvQXhj/2eep7F0Czko5HtN8yB3qA=;
 b=hgLPUN+WO727wlgU8lHf6JNwuq5iB478JVsVzvg68mkX2YPBL4eoPKo/
 /chKgw5llhW0qyJ8V0JRum8TDls4iIYjNx8h4rrToXtFuj+FnQ69DItaN
 8sZfw8zXjf/j8/S9BmsjnRVREyEtL4pypsao6YrbG5PmHF8mLPHaO/vQV
 EMotkCvAV1QvslcXHVcImxoKEw5MEzWnohNQ1Y+4jti9MeDxXy35kD8p2
 IbEIhakg2T2vI7wg2a52OI7qyJSiZ1wcogGKeX/hwWpGtpbx/bU5aA6+N
 zQIWV00zqfoVW8E4r+aHu5VNqrZ4iTVpXayJ3c0SM2wsrEDwZlYnvFTgE
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hgLPUN+W
Subject: [Intel-wired-lan] [PATCH iwl-net 0/5] iavf: five correctness fixes
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E757B3E8405
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Small batch of iavf bug fixes.  Patches address a NULL-pointer dereference
crash in the hung-tx detector, a spurious free_irq() call in the misc-IRQ
error path, a VSI-state-corruption race when ethtool changes ring parameters
during an active reset, an inverted TC-boundary comparison that silently
steered frames to non-existing traffic classes, and an -EINVAL that confused
upper layers when a TC flower filter was looked up after its qdisc had
already been torn down.

All five are genuine correctness fixes with no functional changes for the
common path.  Best routed via net.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Avinash Dayanand (1):
  iavf: fix TC boundary check in iavf_handle_tclass

Kiran Patil (2):
  iavf: fix null pointer dereference in iavf_detect_recover_hung
  iavf: return 0 when TC flower filter not found after qdisc teardown

Piotr Gardocki (1):
  iavf: fix error path in iavf_request_misc_irq

Sylwester Dziedziuch (1):
  iavf: prevent VSI corruption when ring params changed during reset

 drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  5 +++++
 drivers/net/ethernet/intel/iavf/iavf_main.c    | 14 +++++++++++---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c    |  8 +++++---
 3 files changed, 21 insertions(+), 6 deletions(-)

-- 
2.52.0

