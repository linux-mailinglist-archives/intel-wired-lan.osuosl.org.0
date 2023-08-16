Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 463B177E33B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 16:09:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3B7361366;
	Wed, 16 Aug 2023 14:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3B7361366
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692194973;
	bh=Cmi9RpxbNDmJua493SsTwsaZtyDDjDMOdXGEmN5kEeU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2FfX+C6BoEtkC6zLJbe/Oj+vm+9rtCtcCZmJT5wYewKqoXdxROth4Ph/+nhEkEFIG
	 5KHYFR5T7+q+MjdA9ucxTbLlKPP1EBUb361nnmNWeWebzR6vXqGUZZapRpjZ94E7mT
	 UTp/LAdoxdCPUEMK3IfJmshOKCw8wCUmWTQFVeQXUfnlsy3NqqYVtryNrmruY7Hx+7
	 +imc/O7+gNZsVl01Sdyc8mRTJaTapBDQNio/1tzhNmq5sfYIRhUo2KXWHGsCh8DxzC
	 Gqf9qD+gvZdSTe4DRp1hH/DDwcI1D6Tl3iD4LwdIg79QUAvhUJnDElPChXMwvlOq+t
	 dwD1phyDkFGBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jv8eUZmv0bk8; Wed, 16 Aug 2023 14:09:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE86360EAA;
	Wed, 16 Aug 2023 14:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE86360EAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 075021BF41B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D766382F40
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D766382F40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DGFenA0JoUlU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 14:09:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 681DB81EE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 681DB81EE0
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375312755"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="375312755"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 07:09:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="980753045"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="980753045"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 16 Aug 2023 07:09:21 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 65ABF3497F;
 Wed, 16 Aug 2023 15:09:20 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Wed, 16 Aug 2023 10:06:16 -0400
Message-Id: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692194965; x=1723730965;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uIKtvDbe+7VbgaZgQmtc0Up6bjzaTD/DQNKknP+rGoE=;
 b=YDdZFUZwqKJk3m4YVZYownJoHuPGMiTUjwCONCkQ78m755Z7MINuSLaw
 QJuHM2xMnVbq4eolZn5OwRDgc13Ec9QDueHtmnAKy/4ThvMv3q+jyTmEO
 oHrqH35LwIXhgN/EniiM48a1qUn1vra/zHXzQV55nGAcELZ5PPHC2Tmc1
 +HzvqdxWXZ0SDnfE1rK8Fj284y53zV+VwTFX6RUoP4wzR/ELe4cEPVVoC
 zcyYMzdmt3ajeYi9l2Lq9ovAGKeRQUbirj3EPC2ddwrK2B9Phm3tq96BD
 zDJ5msmrbdKtsOz2beYmZVQMc/WOW78f/A14i2q6uwAfufcIrX54unbfV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YDdZFUZw
Subject: [Intel-wired-lan] [PATCH net-next v3 0/7] introduce DEFINE_FLEX()
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
 include/linux/overflow.h                    | 20 +++++++
 11 files changed, 115 insertions(+), 218 deletions(-)


base-commit: 479b322ee6feaff612285a0e7f22c022e8cd84eb
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
