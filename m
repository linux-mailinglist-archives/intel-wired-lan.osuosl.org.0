Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 361EF79D09A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 14:04:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B12D041B6F;
	Tue, 12 Sep 2023 12:04:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B12D041B6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694520249;
	bh=lhQVNDkGmcVnVxLU7+f6v9XE+JIz/7+G9Z1h1xnPp1Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ujrt/HD0PX9niDIXW4w+DWlDlXNMvKXJbqpvTTnKDNYvgF3xuNwjgJrvdqrKnjHdT
	 Ua4Gt+47cMfSLKPShgkUrp3T7PMdUgb9WYh8u6AtNuhSGqTt8bm83KGWeZRP94QnQY
	 16X8Bq9aVgOdcjNfYXlfGjCp7WY9iFoO0qAuS53UEc1w0Lkk9yRuI6oAnAxSKGCNSZ
	 4rkd6YXXZ6uUh4Fx0fFpEgKWUSjiARcOQfIutQBtK+ZQCCbSvmSrqKZzeM18gjTZcM
	 iiyT53QIbG4tOFBZGHnil8bj8KfvsF84yAH26Xrm151SkWB6S+3r83Df3eyWB/lR4m
	 nvxMqdw45ZeTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-Ds6MC4lqjY; Tue, 12 Sep 2023 12:04:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CD0A41A42;
	Tue, 12 Sep 2023 12:04:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CD0A41A42
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 950781BF842
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:04:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D17D415A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:04:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D17D415A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WGVPqtCPx8az for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 12:04:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A93E5415A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:04:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A93E5415A6
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378265388"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="378265388"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:02:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="720389743"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="720389743"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga006.jf.intel.com with ESMTP; 12 Sep 2023 05:02:53 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2BFE8332B7;
 Tue, 12 Sep 2023 13:02:52 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com
Date: Tue, 12 Sep 2023 07:59:30 -0400
Message-Id: <20230912115937.1645707-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694520242; x=1726056242;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ACZgrW/KIF4Ck9dMiAJqlqiVeTFE5RSDcL0NrmB6dZo=;
 b=eWIRm1yovFcgdinfB6a28kSO6+4EDWgNrP8hbQVU/0gSTguyZfd/opcj
 VMHf2q98A5aYgkwt1pajHyG35XFbSOGTkN5dfWbiyFZDEU6YYvzkt7mEC
 i/thi4LmhLK9bWstSwtO/IhIaRGmwlDdrHiU5sPwX+y+SLul5bdmo9IFH
 UmYcFsPlFp8fP1lfhK5xU+/TsbkBjBRpxSNxeWu7Tr/+VOJSohqvRqZPv
 vWXIS8LUiu4RxP8hx66cJP+/l2GOqP/4n5x1Ra/ZGwOdEcOL0dwrMStT9
 6zNlZUO9bRTmdhjZE51fDxbkqCC+V1OJddjomT1voMGA44ESpV+xBgx5W
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eWIRm1yo
Subject: [Intel-wired-lan] [PATCH net-next v5 0/7] introduce DEFINE_FLEX()
 macro
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Kees Cook <keescook@chromium.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, David Laight <David.Laight@ACULAB.COM>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add DEFINE_FLEX() macro, that helps on-stack allocation of structures
with trailing flex array member.
Expose __struct_size() macro which reads size of data allocated
by DEFINE_FLEX().

Accompany new macros introduction with actual usage,
in the ice driver - hence targeting for netdev tree.

Obvious benefits include simpler resulting code, less heap usage,
less error checking. Less obvious is the fact that compiler has
more room to optimize, and as a whole, even with more stuff on the stack,
we end up with overall better (smaller) report from bloat-o-meter:
add/remove: 8/6 grow/shrink: 7/18 up/down: 2211/-2270 (-59)
(individual results in each patch).

v5: same as v4, just not RFC
v4: _Static_assert() to ensure compiletime const count param
v3: tidy up 1st patch
v2: Kees: reusing __struct_size() instead of doubling it as a new macro

Przemek Kitszel (7):
  overflow: add DEFINE_FLEX() for on-stack allocs
  ice: ice_sched_remove_elems: replace 1 elem array param by u32
  ice: drop two params of ice_aq_move_sched_elems()
  ice: make use of DEFINE_FLEX() in ice_ddp.c
  ice: make use of DEFINE_FLEX() for struct ice_aqc_add_tx_qgrp
  ice: make use of DEFINE_FLEX() for struct ice_aqc_dis_txq_item
  ice: make use of DEFINE_FLEX() in ice_switch.c

 drivers/net/ethernet/intel/ice/ice_common.c | 20 ++-----
 drivers/net/ethernet/intel/ice/ice_ddp.c    | 39 ++++---------
 drivers/net/ethernet/intel/ice/ice_lag.c    | 48 ++++------------
 drivers/net/ethernet/intel/ice/ice_lib.c    | 23 ++------
 drivers/net/ethernet/intel/ice/ice_sched.c  | 56 ++++++------------
 drivers/net/ethernet/intel/ice/ice_sched.h  |  6 +-
 drivers/net/ethernet/intel/ice/ice_switch.c | 63 +++++----------------
 drivers/net/ethernet/intel/ice/ice_xsk.c    | 22 +++----
 include/linux/compiler_types.h              | 32 +++++++----
 include/linux/fortify-string.h              |  4 --
 include/linux/overflow.h                    | 35 ++++++++++++
 11 files changed, 130 insertions(+), 218 deletions(-)


base-commit: 73be7fb14e83d24383f840a22f24d3ed222ca319
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
