Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F130B778EBD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 14:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8526D83F1E;
	Fri, 11 Aug 2023 12:11:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8526D83F1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691755879;
	bh=9/xFlnS0AS6NH1Sv8JGUV8SX1SIQyiC5xIpdeGrlgFM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dGW4JC2wS3VCBVVml0oMq43Ztf8DKtBVLtLfV2yP2Mqb04I+h9Kbb0KmLaXCXvqTP
	 a/+Ehe2N9CYtu3Din1Lq1ucPyWk0eeOQJAOKDC2e5l+JoY0yIZRvqn2tiQx8JwsbAP
	 7FsyXDVpOHUBkm48BBNnN+wVRZCyQ2Nohrn2HjUQDmAYhjwyrZtgWTZPtbIH8X2PAT
	 jabemJi+UhSHnkEU64r2D5wrqD7oOy9ctlZwwKeBZHaktb0PMZBoaipPUfqhPFv8sH
	 p4BFVJugX/o4GMeSFPBh6H2pTbW6k5UbN5DvovXHFU0LDqXGj1YpwESyuoGmPOnIFw
	 KT9nJ5YxDQGkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6snP_JDN4SQl; Fri, 11 Aug 2023 12:11:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E94E583BB2;
	Fri, 11 Aug 2023 12:11:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E94E583BB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 580421BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FE9B60BD5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FE9B60BD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id em7bwaLHMpjh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 12:11:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B04C60A9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B04C60A9E
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="435557383"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="435557383"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 05:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="979222045"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="979222045"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 11 Aug 2023 05:11:08 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 90081312F6;
 Fri, 11 Aug 2023 13:11:07 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Fri, 11 Aug 2023 08:08:07 -0400
Message-Id: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691755872; x=1723291872;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8/1czmXTxvJiNdV0KCrkKInWq94tNZWJUyJzCScYHkY=;
 b=K9LX1mQWCIwsYaW49uTRv+xcfU/K6QlqzkNA8ft+wyVEww1AdMKp7SsJ
 nAgnW4wHNHwJLxRU9F+Xo91I/8on+N6Ov7rt9OByH86E5BNsszWdGXoTo
 NI5Hz4wNRMSwMYN/SMGr+EF1RdAUCkNzRHBBw2wsIPYbhB9qQAzmwzvQB
 G3p84b5oAVEgYKCa6g4jvPFuOTS2xBxbq2E5YIfAJaKI8TlD2v0xIwyoT
 6d/2T00aIWa71waW0ING6XNJw5VD5CxGJzxJup2zfP7S8dsK4AMSk/gxx
 L8AnNBWUc8RWRY4dSPkyxko8SizTgXdh3LwLq6MqwYEKXlcbFXybwYqH3
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K9LX1mQW
Subject: [Intel-wired-lan] [PATCH net-next v2 0/7] introduce DEFINE_FLEX()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add DEFINE_FLEX() macro, that helps on-stack allocation of structures
with trailing flex array member.
Expose __struct_size() macro which reads size of data allocated
by DEFINE_FLEX().

Accompany new macros introduction with actual usage,
in the ice driver (hence targeting for netdev tree).

Obvious benefits include simpler resulting code, less heap usage,
less error checking. Less obvious is the fact that compiler has
more room to optimize, and as a whole, even with more stuff on the stack,
we end up with overall better (smaller) report from bloat-o-meter:
add/remove: 8/6 grow/shrink: 7/18 up/down: 2211/-2270 (-59)
(individual results in each patch).

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
 include/linux/compiler_types.h              | 12 ++++
 include/linux/fortify-string.h              |  4 --
 include/linux/overflow.h                    | 27 +++++++++
 11 files changed, 113 insertions(+), 207 deletions(-)


base-commit: 6a1ed1430daa2ccf8ac457e0db93fb0925b801ca
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
