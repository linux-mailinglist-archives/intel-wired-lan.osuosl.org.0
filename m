Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D97F9E5010
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2024 09:45:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E467541552;
	Thu,  5 Dec 2024 08:45:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n0lUZ1wt-m7A; Thu,  5 Dec 2024 08:45:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA2A641553
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733388303;
	bh=JQ/BLIfyYMs5h+scgrHDUck6AAk6AYbUuJXrNbOXrJw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=45mp6BDXgJqX6PL59xWO9c4WCRDwd/ZNmnqWWfI/B2xGXF7fs7nI9DSVTSiZND/ov
	 45Kdko6h21ezRkH8X2uoz1m8oDfTddzW2eGhX9YgnXycRFQ7s6xQZBJoCzXLgkCMoy
	 Rtnbxe+EsQjyRYM5ryG7QlS6vryf6WaFB4teiLWV+ATDFPj12zXQNOK6Oz58eWwea+
	 OlcEs8RlXRak8/jciXgrSy9s2vXXO6Pnn5b6zrDOp8fAIGAN4Hf5GADtylXdyzLnGB
	 VyNxz1QOSzU/5ulEHvxJM3T/NPNtJAfLlL8d3CGebwVOYQRYx+J4mvMt4WWcITf5et
	 OZpZpMNEPoJnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA2A641553;
	Thu,  5 Dec 2024 08:45:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0460E1DD1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E56EA60B49
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:45:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p_XwJTxCvNbq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2024 08:45:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9A27660B17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A27660B17
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A27660B17
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 08:45:00 +0000 (UTC)
X-CSE-ConnectionGUID: mhv7zvBJRUKlHU7wWW3wkg==
X-CSE-MsgGUID: Ps6SNJ0HS+ee++QT4TdVEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="37623114"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="37623114"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 00:44:59 -0800
X-CSE-ConnectionGUID: HYw9iRdMThiIbL84a5sSPA==
X-CSE-MsgGUID: 4qM3osZUTl6kTHi+jV9IUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="94863952"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.246.2.76])
 by orviesa008.jf.intel.com with ESMTP; 05 Dec 2024 00:44:58 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Thu,  5 Dec 2024 09:44:42 +0100
Message-ID: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733388300; x=1764924300;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=++auwdWGqOBL7xPQ1S/5rKB89GYBl2+ivEQFgMw4iWU=;
 b=nZBhJePiKQhipqgjFJokwMKhCOk0+bSxGRiPYrhvaYL4n7KCGSHIdU/0
 uu6tTFWLLIKa+IfRqMnUzAc7xtX1ab9xTrGXahWCp3sdQhU3hswKA8AIo
 5USAfuELcDbVtGpxA7M9iWr14xEqocdfqCKnZnSJHcUUDu+REqHPLhHb5
 cHzCE8Om369inmu5ogzO+0K3ZeqXxUWYDmG/8xhXUuahKLbqA+fqMMjAK
 wn7mAjrBz8PrHG8ocaY1ukYRf9msn8lf9HcWn6CJ77yLsTv9gFYNmUOnH
 dKGpsPDFxbHOYgVq0DBzHB6c0nDmLS86m0wyKS2PRH5BPwrPP2ahNfYhc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nZBhJePi
Subject: [Intel-wired-lan] [PATCH iwl-next v12 0/8] ixgbe: Add support for
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2655 +++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   81 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |    6 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |    3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  436 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |    4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |    5 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   72 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1074 +++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   12 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |    7 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |   29 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   20 +
 18 files changed, 4405 insertions(+), 47 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h

-- 
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
v11 -> v12:
  - add early return from ixgbe_read_sr_buf_aci()
  - comment formatting fixes

2.43.0

