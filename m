Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBF391504B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 16:44:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A134D80CA8;
	Mon, 24 Jun 2024 14:43:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S6S2nAv-qWpB; Mon, 24 Jun 2024 14:43:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AFBB80C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719240238;
	bh=omJ/YqmmrMFKiumKHlujuThd7o5z0iJ/63JvKAr6T0Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=thZnrpvI6eS12Own6ThYEh+Dl5x6IzvGvWMc3U6PRf+FBZSFm9J2lEOctSC3Q+dJE
	 NNKyhlLWnVkZtxHWJsesILqrekSMr1TAVPMyaGezFoUiylBssXfJGlXWY4MTVCO4AJ
	 oMd3y2mot7gkuobv1v3H0JjVYNT2GuoKrkYZCasD5GSF5IC8CyzdU8DYxgY6SuvuV9
	 N6ojWMppGcDLWGUtmt4YGh6BaGg166tPqeTLLSOEInfG2VS2z2PcxL7TEbcD3/Z/mF
	 HzXxiWGenRnh1ARzAkUnbyuBOlQemWnfWL4Cd7DBAKlE1fV00T9/qcuj3uOgwDIy1r
	 NgrJFeg9Oe/LA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AFBB80C9C;
	Mon, 24 Jun 2024 14:43:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C20631BF591
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:43:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC7FA80C07
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:43:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QwklmZWxOVJC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 14:43:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B33C180BEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B33C180BEC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B33C180BEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 14:43:54 +0000 (UTC)
X-CSE-ConnectionGUID: daHF7R0VSb+QmK5AKv7u9Q==
X-CSE-MsgGUID: /EhKepyIQQGbD49evgJTrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16040462"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16040462"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 07:43:53 -0700
X-CSE-ConnectionGUID: VTlOlLroTR6v1fCDzLg7Uw==
X-CSE-MsgGUID: PDAMYMA2SNWP4X8C4XcaSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="44022036"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 24 Jun 2024 07:43:52 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9DDDB27BB0;
 Mon, 24 Jun 2024 15:43:39 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jun 2024 16:45:23 +0200
Message-ID: <20240624144530.690545-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719240235; x=1750776235;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gckpsvZo1hpmuZZTaF5mdtc3rJrEAJ/Uaxexu9VVlQU=;
 b=gt02fTqTf2aIVzdsA8SxizvzIjtWb8342xszAzHq7Xll32FabZqZS1d0
 5V4b73ylTByFGzrQ32KAP1U+s0hARh6FYZEwSPy8pBapQS7111zT8Sdnd
 CTf+5tDFzoEDLYa6GICgPjzZDet0dBq4kKnE4CSwhz+YqatFpW2Zr67wa
 VJMi3jCAYHshMn+k/3+ouBaaGpaK0AG0UJM9zXHDhlem8pOkbgjgYUpIQ
 ls/JH2NDUJU8gBJJDSEFTFUIFb4N13HwScEaCmoSNHSADw+VKxUI2ra4j
 DQKEWPEz4gFiOEAUJpCyma1gkBJNBfwT9wwUKtTU9J1g0snqdlL51WKLn
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gt02fTqT
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/7] Switch API optimizations
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
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
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
v2:
* Nicify checking sizeof struct field
* Add a tracepoint for tracking recipe/rule utilization (patch 7)
v1: [1]

[1] https://lore.kernel.org/intel-wired-lan/20240618141157.1881093-1-marcin.szycik@linux.intel.com/T/#t
-- 
2.45.0

