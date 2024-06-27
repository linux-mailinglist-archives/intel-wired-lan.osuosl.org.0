Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7974191A9E8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 16:54:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC55E60E50;
	Thu, 27 Jun 2024 14:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kicvv6UxhNtF; Thu, 27 Jun 2024 14:54:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9696E60E42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719500076;
	bh=mdRTimbuV6op6GpNaAKQWsLbaOHk+VWKdx08XStPQPg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=z2dLnFiL4UkJsDFZCaRe/LVAy+ged9e8HfYzx86jAU1y5pwsqxMnCC/j3D6stalh0
	 C8Hinlk/9tskpY+xnQog0HvnbzOKS03MwjYn9B13vKrq/4Za9wq6SVNmrlxzODNXmK
	 2EcgSbA4XcBVDiGGo0EoRmQBWhEwZ0upbIqSxwuKar4YxIBmX2MkaUyx4m0bgfHWlV
	 4Ax8+ObfFf/kRQPaUwgN2a0eR/5u/widu0dMj2WzYTUlPpvVmBoTv/VceStZ7RfM8W
	 Gyr9/0VibK1ZFdf9Ypk7V8KtbK8ffk64v+Y3KNr23ZGi1NSPX1my4QGLWw6s6G+8iT
	 nYLT7IwmxsZXA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9696E60E42;
	Thu, 27 Jun 2024 14:54:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E4A241BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 14:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D08C041624
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 14:54:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vRR3vvvo8rmJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 14:54:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2EEA3415CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EEA3415CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EEA3415CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 14:54:32 +0000 (UTC)
X-CSE-ConnectionGUID: yTdtoZo0SCa0ORMD7Lb3BA==
X-CSE-MsgGUID: xDxXR9TnQma/wVsX0at32w==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="20514943"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="20514943"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 07:54:19 -0700
X-CSE-ConnectionGUID: ZtTLHv4ETYW0WhKSRdaG/w==
X-CSE-MsgGUID: EXEYlwofRm6nlx8oipiwEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="67616366"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 27 Jun 2024 07:54:17 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AE98627BB6;
 Thu, 27 Jun 2024 15:54:04 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 16:55:40 +0200
Message-ID: <20240627145547.32621-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719500073; x=1751036073;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bNEOglout9SMjplcSItb/2ni81Kb2/DfFuwpqSFUEZs=;
 b=YYGhMSvb45LyFxVKmaPLfIAB5m2TbKQPR0n4JnnK8oX7xGdCc0QnozXK
 hC7AGFSfpD03Wzf3NEQKdAuZ7cdYU9rIoxS3O897i3Q/Mpsjux2blI3eo
 m/FpHKaJImwAZ7xYOHykXWCDp0Tgm44ZhoPkG6Zd91+FjhQ8+dhamdh1L
 sedCP30zTuxjuDfkbwRZ3i6mLVvnF8/vWdenF/f1VAi/V/ocSyWLhQUU1
 3bQBX3imHuFrVpwsOCEJUPby0yo3upCG0L7g069td+QwUGgRP5YHJtG2h
 F41bZgiqvhtLtbRqPtYrOF4ZijSsPY8mxGvwpXZcM2H3pD06TRvoA8S64
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YYGhMSvb
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/7] Switch API optimizations
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, przemyslaw.kitszel@intel.com,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Optimize the process of creating a recipe in the switch block by removing
duplicate switch ID words and changing how result indexes are fitted into
recipes. In many cases this can decrease the number of recipes required to
add a certain set of rules, potentially allowing a more varied set of rules
to be created. Total rule count will also increase, since less words will
be left unused/wasted. There are only 64 rules available in total, so every
one counts.

After this modification, many fields and some structs became unused or were
simplified, resulting in overall simpler implementation.

Marcin Szycik (4):
  ice: Remove unused struct ice_prot_lkup_ext members
  ice: Optimize switch recipe creation
  ice: Remove unused members from switch API
  ice: Add tracepoint for adding and removing switch rules

Michal Swiatkowski (3):
  ice: Remove reading all recipes before adding a new one
  ice: Simplify bitmap setting in adding recipe
  ice: remove unused recipe bookkeeping data

 drivers/net/ethernet/intel/ice/ice_common.c   |  11 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  43 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 674 ++++++------------
 drivers/net/ethernet/intel/ice/ice_switch.h   |  20 +-
 drivers/net/ethernet/intel/ice/ice_trace.h    |  18 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
 6 files changed, 272 insertions(+), 496 deletions(-)

---
v3: Add tracepoint usage and exapmle output (patch 7)
v2 [2]:
* Nicify checking sizeof struct field
* Add a tracepoint for tracking recipe/rule utilization (patch 7)
v1: [1]

[1] https://lore.kernel.org/intel-wired-lan/20240618141157.1881093-1-marcin.szycik@linux.intel.com/T/#t
[2] https://lore.kernel.org/intel-wired-lan/20240624144530.690545-1-marcin.szycik@linux.intel.com/T/#t
-- 
2.45.0

