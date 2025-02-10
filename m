Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 550F7A2EF48
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 15:10:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA8E860B1D;
	Mon, 10 Feb 2025 14:10:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Z7JcCX-UBdR; Mon, 10 Feb 2025 14:10:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE20760AD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739196622;
	bh=nBoUUdcrXtayiBjF7HWwr9lGiql+Z/zt5UR+Nr1KbNY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0rhOgJeYAYSrLD+nbmPg9pc1e/BsyJtEou+ozykD6pEJRg/AOVOHa0stGmirBxAQA
	 bZRl3Ah1WSCLPvQhBKHtzZ+N/rzWG8ERhdPsWmQrIAwgiuedGA3U5BSeY3hFvrAANN
	 SlpCTr3ilcUeSCoGAlEwQcyeRA1FGic5MmKVy1Tah4tl0bp7NAalLYASgCe18Phl0S
	 Y7Vw6VDkBnHLxdJyCHEbJE9ExgSHB+THdpzQmus1vVZcyIeOMBS3W0XAy68bcU4yms
	 nYjshiJeNlKcY2z7Ga9Q6e802Hk1J7xg6LgebKIVbkqVHlF+xxmZ5IfcMrjU7hWspV
	 YufPmx398GqvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE20760AD4;
	Mon, 10 Feb 2025 14:10:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 32E546C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2125160736
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:10:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0wskUqy3pMpD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 14:10:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AA56460A9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA56460A9E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA56460A9E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:10:18 +0000 (UTC)
X-CSE-ConnectionGUID: SceNS3JTRYa1Y5y7FR7PWQ==
X-CSE-MsgGUID: wQWr3gLmT/OycFo+LQnWRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57190337"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="57190337"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 06:10:18 -0800
X-CSE-ConnectionGUID: 3GNdtsHEQ6CySoGlqa07Hg==
X-CSE-MsgGUID: KCmS9NgsT0K6p3uD9o79hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="111964177"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa009.jf.intel.com with ESMTP; 10 Feb 2025 06:10:16 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Mon, 10 Feb 2025 14:56:26 +0100
Message-Id: <20250210135639.68674-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739196619; x=1770732619;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BiLaCyokrJFFKJLK//RofcN+NCXzo7rXDGJPQCrHrVg=;
 b=f9k+K7lJkgiByLqTj0XZzQz8mhRnFMhIRxqUDvcbxqfKWzSqvgjU/QYL
 okSzxS3PCN1/A55rjWBANPnQ8TyCscYpb0h+I0u2S/o87yYVT/owb++3T
 UJCcm2sC4h74KoW3D6OgBXeywuCZRM+yBRg0VOe/IoHbPOCtgBTUL3cbQ
 IagyEXk3sKgQ0QBeuEgN8kvaol33jexBIUbheoTftTQSwyESyaNbXRNbc
 i6iMHDTQaYOSHiWCzPxOiG2Lr/2dONBQiADBHd1KNTuOTMBn/Egsk2E5M
 GlqVMbazB9Wui49fE70l2sHUdLBY4nZgCIxrmR0dVFhp+OvkvdzyBbX7G
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f9k+K7lJ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 00/13] ixgbe: Add basic
 devlink support
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

Create devlink specific directory for more convenient future feature
development.

Flashing and reloading are supported only by E610 devices.

Introduce basic FW/NVM validation since devlink reload introduces
possibility of runtime NVM update. Check FW API version, FW recovery mode
and FW rollback mode. Introduce minimal recovery probe to let user to
reload the faulty FW when recovery mode is detected.

This series is based on the series introducing initial E610 device
support:
https://lore.kernel.org/intel-wired-lan/20241205084450.4651-1-piotr.kwapulinski@intel.com/

Andrii Staikov (1):
  ixgbe: add support for FW rollback mode

Jedrzej Jagielski (9):
  ixgbe: add initial devlink support
  ixgbe: add handler for devlink .info_get()
  ixgbe: add .info_get extension specific for E610 devices
  ixgbe: add E610 functions getting PBA and FW ver info
  ixgbe: extend .info_get with stored versions
  ixgbe: add device flash update via devlink
  ixgbe: add support for devlink reload
  ixgbe: add FW API version check
  ixgbe: add E610 implementation of FW recovery mode

Slawomir Mrozowicz (3):
  ixgbe: add E610 functions for acquiring flash data
  ixgbe: read the OROM version information
  ixgbe: read the netlist version information

 Documentation/networking/devlink/index.rst    |    1 +
 Documentation/networking/devlink/ixgbe.rst    |  105 ++
 drivers/net/ethernet/intel/Kconfig            |    2 +
 drivers/net/ethernet/intel/ixgbe/Makefile     |    3 +-
 .../ethernet/intel/ixgbe/devlink/devlink.c    |  629 +++++++
 .../ethernet/intel/ixgbe/devlink/devlink.h    |   10 +
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   14 +
 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |    1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 1510 +++++++++++++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   16 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   12 +
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |  709 ++++++++
 .../ethernet/intel/ixgbe/ixgbe_fw_update.h    |   12 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  178 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |    5 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  161 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |    1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |    1 +
 20 files changed, 3256 insertions(+), 116 deletions(-)
 create mode 100644 Documentation/networking/devlink/ixgbe.rst
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.h


base-commit: 09a7ccb316bce8347fefad05809426526b6699f3
-- 
2.31.1

