Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 153688A4C5F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 12:18:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2AE860712;
	Mon, 15 Apr 2024 10:18:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S0NSl0KuJHhp; Mon, 15 Apr 2024 10:18:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F11C860659
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713176296;
	bh=Llthz0nLwYRkd9653ACl/GKazGfsKN2u8ynvLqvg1CU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QJtJjsJjNWxN/gZ/UYvUTpihYzpSN6IeuAE8A2MCjK2/7GxuY5fEZ+5GHVxA1BXNp
	 NojR4kg9V2LX150FrbzylN26PiavmIrcqIInUTekfL3KX+cwLLOwakdYM+9A/0uT+q
	 fb0beugmbBcfQOd/ug8kPpuOgNVH9lSCRF3ojw1CYE+JGg8cTygDYfUoCGEdfRAduz
	 h9esvzFy/M3rY6l0+EMrdRQSDNeAlnnb2XK23iBWPQVZaQMxS5hKP4kxa9jfY25+bM
	 mDI83XagMwevCa9KgVV6dNaiD+2xSDCaA9bO6zCBjTufJHK97i+aBPSqDo948j4/i0
	 UDp/zrkUBQ55g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F11C860659;
	Mon, 15 Apr 2024 10:18:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B8071BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 10:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 699A9406DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 10:18:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Hw9IHSBqc_N for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 10:18:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A74584070C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A74584070C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A74584070C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 10:18:12 +0000 (UTC)
X-CSE-ConnectionGUID: dAYGlK4cSxGZWkVxrEZBiQ==
X-CSE-MsgGUID: PcjXaPLYQ/aNXMDvKpTa3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="26070185"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="26070185"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 03:18:12 -0700
X-CSE-ConnectionGUID: C/eiN/JPRguQT3nK8OLRAQ==
X-CSE-MsgGUID: c79uc+BTTseD7k6VHmWh/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22295442"
Received: from amlin-018-251.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.251])
 by orviesa006.jf.intel.com with ESMTP; 15 Apr 2024 03:18:10 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 Apr 2024 12:34:30 +0200
Message-Id: <20240415103435.6674-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713176293; x=1744712293;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AZS4DmOzGFIcN0PHic8w9urf/jdRAOlvQ3Vo+rfERxw=;
 b=XBfd5CNXoz8IeYwVV2j5wFVlZihuurYn1yX0U3KuvikChx6B0Ma4o4TP
 ga1mI9O4JyBpnZE3KC6MOfERIsz0AUeQfRjQvw2SICPuhSO6+48R81aTc
 mnjEIi/ZvnRcwXcgUaNwyMIUs/RvHwx6JsF9TcxQNA0EXAy7jEjCc2DXV
 eaDz9pjtDZJA1WAKYWF5vALxkT8Oa3mMbSL8dNeRJBDXdAuPhdVY2j6XL
 L9fqqauygCYnEsKhUNEgKA9EIz0TBm0QV8KdPbya8j4FSrEwDIr/MdaTP
 FgX2pfOXBf0btWPprF+K85UEXGWtaZg3d9EZTPjdre4bI+JvhI/5BRq9v
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XBfd5CNX
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ixgbe: Add support for
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
Cc: vinicius.gomes@intel.com, netdev@vger.kernel.org,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>, horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add initial support for Intel(R) E610 Series of network devices. The E610
is based on X550 but adds firmware managed link, enhanced security
capabilities and support for updated server manageability.

This patch series adds low level support for the following features and
enables link management.

Piotr Kwapulinski (5):
  ixgbe: Add support for E610 FW Admin Command Interface
  ixgbe: Add support for E610 device capabilities detection
  ixgbe: Add link management support for E610 device
  ixgbe: Add support for NVM handling in E610 device
  ixgbe: Enable link management in E610 device

 drivers/net/ethernet/intel/ixgbe/Makefile     |    4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   15 +-
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |    3 +-
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |   19 +-
 .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |    3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2561 +++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   75 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |    7 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |    3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  437 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |    4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |    5 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   71 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1064 +++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   42 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |    7 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |   29 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   20 +
 18 files changed, 4303 insertions(+), 66 deletions(-)
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
  - fix inacurate doc for ixgbe_aci_desc
  - remove extra buffer allocation in ixgbe_aci_send_cmd_execute
  - replace custom loops with generic fls64 in ixgbe_get_media_type_e610

2.31.1

