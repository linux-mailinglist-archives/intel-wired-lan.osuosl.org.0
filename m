Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC3C9E3CBF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 15:31:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3812E84087;
	Wed,  4 Dec 2024 14:31:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hx2PawqiYHdn; Wed,  4 Dec 2024 14:31:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A1BC820C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733322690;
	bh=n5oiZEQDRWTpBhTxrVhS2F8OsbSw78JvMuX2SskZN6E=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P5q5P/bad7j0scThOnabVC9uIH1lhUoJGghWA3pzE7BvVou6mUFJ23KdlDTOiRWLD
	 qa5k23cAtotleN5HEim4hpKFVrx2WXWAa346y2QeBUlGyBRLzVo303otCsCfwd6do2
	 5WF0RVBBrbW4RsOMNWWIkyFapY17XWVwPeD7DRkbIk+LC5BQ6kHTEEgBDmq53L3AWo
	 Ef/dCcJodby7RcStntj2poM84VscQsA0fTxYzu+1DW8Xb/jdWvd3Fo9jlCYOXEY+PD
	 t2Uicqu4+uaN//muVmkBJF2UdoN+24lMoNycZcNskZm+SNjyX/ktJji82IqsE93VnJ
	 pCg91nmiJTmyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A1BC820C0;
	Wed,  4 Dec 2024 14:31:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B48721DC8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9479F4089A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:31:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VYUoQOnYLoUL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 14:31:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 61C80407D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61C80407D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 61C80407D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:31:27 +0000 (UTC)
X-CSE-ConnectionGUID: lgv5jrLRSmymoOymbWZ+/Q==
X-CSE-MsgGUID: zYg7ICEWTyOLuC+AFI8kTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44621544"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44621544"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 06:31:27 -0800
X-CSE-ConnectionGUID: /6gRdQ5oSHiC8z9W7Bhi3w==
X-CSE-MsgGUID: AYLHQ7xUQ5297gIrBAuoRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93456119"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.245.87.141])
 by fmviesa006.fm.intel.com with ESMTP; 04 Dec 2024 06:31:25 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Wed,  4 Dec 2024 15:31:04 +0100
Message-ID: <20241204143112.29411-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733322688; x=1764858688;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ylekp1q9dXOocIdM2S7qJGupqIGIZ+5pqILllRble4c=;
 b=ARRDfhujwvYpuzrT6ko368rju3r8zYA3Ez59Mw2hvVwgKLVeGlSNzx/G
 tBtLqu9lDvLH1iZorzLj+yXiA7DrRRnmo25UkkJ1v0xdBb7RKKujnFItA
 S90nChTcUv1/HItgpU0bh9FC3V8J2VLd6ybmdKUn3UcLWf43VTLaWva+x
 +l85ZElks72Z70yvAR+lIYwCzsfdrWbvtUNTItBkzuX+qNUie8QBKDXLV
 dHgr16vB8JjMtQEJGUQgXwIqldK59KpUeqZGLHG4xHaCwAqUpvdbM9OpR
 A0H9WtjbBHfwqZrmAd7/PyhFLJ72fFkJDlWjtFyFIog1IF4dKNyxRPLOg
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ARRDfhuj
Subject: [Intel-wired-lan] [PATCH iwl-next v11 0/8] ixgbe: Add support for
 Intel(R) E610 device
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

Add initial support for Intel(R) E610 Series of network devices. The E610
is based on X550 but adds firmware managed link, enhanced security
capabilities and support for updated server manageability.

This patch series adds low level support for the following features and
enables link management.

Piotr Kwapulinski (8):
  ixgbe: Add support for E610 FW Admin Command Interface
  ixgbe: Add support for E610 device capabilities detection
  ixgbe: Add link management support for E610 device
  ixgbe: Add support for NVM handling in E610 device
  ixgbe: Add support for EEPROM dump in E610 device
  ixgbe: Add ixgbe_x540 multiple header inclusion protection
  ixgbe: Clean up the E610 link management related code
  ixgbe: Enable link management in E610 device

 drivers/net/ethernet/intel/ixgbe/Makefile     |    4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   13 +-
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |    3 +-
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |   25 +-
 .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |    3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2653 +++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   81 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |    6 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |    3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  436 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |    4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |    5 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   72 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1075 +++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   12 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |    7 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |   29 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   20 +
 18 files changed, 4404 insertions(+), 47 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h

-- 
Add dedicated patch for EEPROM dump.

v1 -> v2:
  - fix for no previous prototypes for ixgbe_set_fw_drv_ver_x550,
    ixgbe_set_ethertype_anti_spoofing_x550 and
    ixgbe_set_source_address_pruning_x550
  - fix variable type mismatch: u16, u32, u64
  - fix inaccurate doc for ixgbe_aci_desc
  - remove extra buffer allocation in ixgbe_aci_send_cmd_execute
  - replace custom loops with generic fls64 in ixgbe_get_media_type_e610
  - add buffer caching and optimization in ixgbe_aci_send_cmd
v2 -> v3:
  - revert ixgbe_set_eee_capable inlining
  - update copyright date
v3 -> v4:
  - cleanup local variables in ixgbe_get_num_per_func
  - remove redundant casting in ixgbe_aci_disable_rxen
v4 -> v5:
  - remove unnecessary structure members initialization
  - remove unnecessary casting
  - fix comments
v5 -> v6:
  - create dedicated patch for ixgbe_x540 multiple header inclusion protection
  - extend debug messages
  - add descriptive constant for Receive Address Registers
  - remove unrelated changes
  - create dedicated patch for code cleanup
  - remove and cleanup of some conditions
  - spelling fixes
v6 -> v7:
  - rebase to adopt recent Makefile "ixgbe-y" changes
v7 -> v8:
  - implement more clear execution flow in ixgbe_aci_list_caps(),
    ixgbe_discover_func_caps(), ixgbe_get_link_status(),
    ixgbe_fc_autoneg_e610(), ixgbe_disable_rx_e610() and
    ixgbe_setup_phy_link_e610()
  - make use of FIELD_PREP macro in ixgbe_is_media_cage_present()
v8 -> v9:
  - tune-up auto-negotiation advertised link speeds at driver load
  - update the method of pending events detection
  - update the way of discovering device and function capabilities
  - update the parameter set-up for the firmware-controlled PHYs
  - fix port down after driver reload
v9 -> v10:
  - clean-up redundant automatic variables
  - optimize return statements
v10 -> v11:
  - add support for EEPROM dump
  - use little endian type in admin commands
  - fix link status message based on FW link events

2.43.0

