Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF947BFC0AD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 15:12:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EE524054D;
	Wed, 22 Oct 2025 13:12:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ye3Bv9zw3pkC; Wed, 22 Oct 2025 13:12:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C05340568
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761138751;
	bh=7twteSwwbmcyJwHz7pi0qoPUGqh8Sw55ynd7F7vsgLk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wnmd3+P9jvI/QWjKHb3iquEAbz42xPFt+ahb7Aq2UqnI10KVb7uUsRTcealf1K6iW
	 8kJIWegM+gkgklyOQfdtHpEGV0F8hifqT32ywyVpcLrip9lRbddYc1W8983M3FLAxf
	 yO/NzaeBUjSedPaKyojhh+AMGFvUwg0aHwErsSZcvjaFxzQEtcKLd5zVXDGMZj6hdK
	 UKtJKy99axAJ2hQPN5a7Mhe29ldQ2s7pzanJsv8YE/a0n79WInzYv7h2Dctya6h6W8
	 EgIFGv9me4825PK0zs05WRey/Bh/xWEIlfZ+eGtIhRNsst1mhAw3M7bMxCr1FCwPBh
	 leDD1vvuGoGdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C05340568;
	Wed, 22 Oct 2025 13:12:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F10670A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 13:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4096A404F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 13:12:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S9UsKZFrmiOr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 13:12:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DFBAD40485
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFBAD40485
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DFBAD40485
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 13:12:28 +0000 (UTC)
X-CSE-ConnectionGUID: z4RHgYZlQVSRhI520etCZQ==
X-CSE-MsgGUID: jrSvhFKgQLmCd0IjhuXSCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63206647"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63206647"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 06:12:28 -0700
X-CSE-ConnectionGUID: GtX/fwj/SnmSpVj/mmz8Uw==
X-CSE-MsgGUID: LWbIrnDLQ5ukQxtGTr2oVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183915352"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 22 Oct 2025 06:12:27 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 kuba@kernel.org, anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com
Date: Wed, 22 Oct 2025 15:12:19 +0200
Message-ID: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761138749; x=1792674749;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NayDG57DHKbtEEN9lWXtRLKkpPdAmMadK3E2aAF9nus=;
 b=Oi5WXLNfeL22qaau6+RCFH0p0ePQyl6qNkthfQOlRKg+HdxO4rLs9cPe
 KLExTYTzbopkGGKJ7kyb1vCzVT52BSSlV7PDypueQXqeI9IR/SHN7H6Ev
 C432bNqa4RIRf8MUq8eDi1sbOBkZMTMlLyvtz7kUJoSoT0zH4iYNbCEBC
 iRGgIZW7MWE6OKqnCVlbZclmXC23eW9nVCAyNLP/lSwFZGE2a8uwaTkHp
 b3g6dt51U5yH89cNg9zyWw7gFbOzzljEbJ8L6LxsBeONDOe/h7cij2/AV
 y4P8p8X0Wc1vAYHSYq6ZNjBiLtvbhIblzbXU0qM304tWlmpQ1AXtU0rbW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Oi5WXLNf
Subject: [Intel-wired-lan] [PATCH iwl-next v6 0/6] iavf and ice: GTP RSS
 support and flow enhancements
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

This patch series introduces support for Receive Side Scaling (RSS)
configuration of GTP (GPRS Tunneling Protocol) flows via the ethtool
interface on virtual function (VF) interfaces in the iavf driver.

The implementation enables fine-grained traffic distribution for
GTP-based mobile workloads, including GTPC and GTPU encapsulations, by
extending the advanced RSS infrastructure. This is particularly beneficial
for virtualized network functions (VNFs) and user plane functions (UPFs)
in 5G and LTE deployments.

Key features:
 - Adds new RSS flow segment headers and hash field definitions for GTP
   protocols.
 - Enhances ethtool parsing logic to support GTP-specific flow types.
 - Updates the virtchnl interface to propagate GTP RSS configuration to PF.
 - Extends the ICE driver to support GTP RSS configuration for VFs.

changelog:
v5:
   - split patch 2/6 int static data and define changes + minor fixes
v5:
   -fix NULL ptr dereference and minor improvements in 1/5 & 2/5
v4:
   -remove redundant bitmask in iavf_adv_rss.c for dmesg
v3:
   -fix kdoc-s in ice_virtchnl_rss.c
v2:
   - reduce much repetition with ice_hash_{remove,moveout}() calls
     (Przemek, leftover from internal review)
   - now applies on Tony's tree

v1/RFC: https://lore.kernel.org/intel-wired-lan/20250811111213.2964512-1-aleksandr.loktionov@intel.com

Aleksandr Loktionov (4):
  ice: add flow parsing for GTP and new protocol field support
  ice: add virtchnl and VF context support for GTP RSS
  ice: improve TCAM priority handling for RSS profiles
  iavf: add RSS support for GTP protocol via ethtool

Przemek Kitszel (1):
  ice: extend PTYPE bitmap coverage for GTP encapsulated flows

 .../net/ethernet/intel/iavf/iavf_adv_rss.c    |  119 +-
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |   31 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   89 ++
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   91 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |    1 +
 drivers/net/ethernet/intel/ice/ice_flow.c     |  251 ++-
 drivers/net/ethernet/intel/ice/ice_flow.h     |   94 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |   20 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   48 +
 .../net/ethernet/intel/ice/ice_virtchnl_rss.c | 1404 ++++++++++++++++-
 include/linux/avf/virtchnl.h                  |   50 +
 11 files changed, 2070 insertions(+), 128 deletions(-)

--
2.47.1


