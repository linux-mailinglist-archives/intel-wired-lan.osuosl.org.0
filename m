Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1955C9275F4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jul 2024 14:28:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B89F40B37;
	Thu,  4 Jul 2024 12:27:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SZpHh82WEOfS; Thu,  4 Jul 2024 12:27:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 146F140978
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720096077;
	bh=KTHRGRSBUW/O209X12CfTrbfHcScLPpl4DZJWnBn6CQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3QJdRluJVFqeo8GZdZxlT40EiHBqwbG9JK552y3Ul3OAQ4iwT2+dBduEoCqpjiyq0
	 shPw1IrQ//p604BRn/4ZlxOEQKCtqdOEC2sUB46rpJ7nyKPoFlqdx+9ROloBLnxuFM
	 eCWqsjj4/qi3MoQBYoW5AJn17qWY7tX0NP51NetyrMgJngAsfu8VsvrK1gT9bY/Clk
	 bWAonpzu2tMcGG+n3v5GpnGbvtIoENBTb1SBtCg51j4pPS7qWDK3BaPz5pF/Pic6Os
	 HMC7jg8dH+gI26ZB8fjAHRvzMQq56yKTf5EXDLBZFWJ0uIjGH5JsINWNeTah6gDHAX
	 5rcWzlCt/MMtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 146F140978;
	Thu,  4 Jul 2024 12:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B5BF1BF321
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 12:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 74D9760822
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 12:27:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OHm60rw_pQyo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jul 2024 12:27:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ABC2360820
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABC2360820
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ABC2360820
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 12:27:54 +0000 (UTC)
X-CSE-ConnectionGUID: 4ljuRZKBRIC0X0GhZGv22g==
X-CSE-MsgGUID: 340Fa1uRT2u5OGop/IVVIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="20279003"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="20279003"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2024 05:27:54 -0700
X-CSE-ConnectionGUID: mPeIn451QaGF+HmIMLJ49Q==
X-CSE-MsgGUID: rzirKnhFTKGNlBo+dzxSzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="46549431"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.245.117.61])
 by fmviesa008.fm.intel.com with ESMTP; 04 Jul 2024 05:27:52 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Jul 2024 14:26:48 +0200
Message-ID: <20240704122655.39671-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720096075; x=1751632075;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JGYqEMONDIdO+h8gO3GHKN4c5TA2rEildoCh6py6ga4=;
 b=hJ8qDa5ljSmEfFxD5TvNzVCrWLogPsCVRiXcogATY4uRlx1JksAZ5XYk
 8jM8GZZjNJCpkemCPpflxNF4I5RDEeBLs4rKvMi0cmMC0F+DnZRTsbmLz
 pFldpdtgA3NV0tl++k/vsCJVGdCHIAUTRToSbvrU9SHpFlB+UEEqNLPe5
 1GUNvk437LjzB7WfXFBePBj9dSToeQe7gyq5AofM2HtsPhCxg1sDVZ2Jr
 Ovjg4G5cIRm1tXt08XAbXY9wobedt8NisYcGevUpXjdPtHG/H/Ns3qcE9
 zdSS/WicXCsRIS7OD3DNOD3I+bGFTyijHyzbJbwAeHKIH7ZGD6p9sydI9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hJ8qDa5l
Subject: [Intel-wired-lan] [PATCH iwl-next v8 0/7] ixgbe: Add support for
 Intel(R) E610 device
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org,
 horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add initial support for Intel(R) E610 Series of network devices. The E610
is based on X550 but adds firmware managed link, enhanced security
capabilities and support for updated server manageability.

This patch series adds low level support for the following features and
enables link management.

Piotr Kwapulinski (7):
  ixgbe: Add support for E610 FW Admin Command Interface
  ixgbe: Add support for E610 device capabilities detection
  ixgbe: Add link management support for E610 device
  ixgbe: Add support for NVM handling in E610 device
  ixgbe: Add ixgbe_x540 multiple header inclusion protection
  ixgbe: Clean up the E610 link management related code
  ixgbe: Enable link management in E610 device

 drivers/net/ethernet/intel/ixgbe/Makefile     |    4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   14 +-
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |    3 +-
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |   19 +-
 .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |    3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2540 +++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   75 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |    6 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |    3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  430 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |    4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |    5 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   71 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1062 +++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   12 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |    7 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |   29 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   20 +
 18 files changed, 4260 insertions(+), 47 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h

-- 
V1 -> V2:
  - fix for no previous prototypes for ixgbe_set_fw_drv_ver_x550,
    ixgbe_set_ethertype_anti_spoofing_x550 and
    ixgbe_set_source_address_pruning_x550
  - fix variable type mismatch: u16, u32, u64
  - fix inaccurate doc for ixgbe_aci_desc
  - remove extra buffer allocation in ixgbe_aci_send_cmd_execute
  - replace custom loops with generic fls64 in ixgbe_get_media_type_e610
  - add buffer caching and optimization in ixgbe_aci_send_cmd
V2 -> V3:
  - revert ixgbe_set_eee_capable inlining
  - update copyright date
V3 -> V4:
  - cleanup local variables in ixgbe_get_num_per_func
  - remove redundant casting in ixgbe_aci_disable_rxen
V4 -> V5:
  - remove unnecessary structure members initialization
  - remove unnecessary casting
  - fix comments
V5 -> V6:
  - create dedicated patch for ixgbe_x540 multiple header inclusion protection
  - extend debug messages
  - add descriptive constant for Receive Address Registers
  - remove unrelated changes
  - create dedicated patch for code cleanup
  - remove and cleanup of some conditions
  - spelling fixes
V6 -> V7:
  - rebase to adopt recent Makefile "ixgbe-y" changes
V7 -> V8:
  - implement more clear execution flow in ixgbe_aci_list_caps(),
    ixgbe_discover_func_caps(), ixgbe_get_link_status(),
    ixgbe_fc_autoneg_e610(), ixgbe_disable_rx_e610() and
    ixgbe_setup_phy_link_e610()
  - make use of FIELD_PREP macro in ixgbe_is_media_cage_present()

2.43.0

