Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D54F4A326F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 14:27:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D1C284030;
	Wed, 12 Feb 2025 13:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3nDhUzVNeP0F; Wed, 12 Feb 2025 13:27:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A94C683FE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739366876;
	bh=EH1wJxRg2KV4QBTCZoDMTm9O05gt22s+GjwHa+i6iTE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=t3PRWMjZ8nJb0tJfAzTABQyKoaPkmd+NEXdFyrmcPbnz9PHqMPLKXVzh1n4SjElJ9
	 74tAQ4yfUJX3OGgbtjpZKg3CmOAnvEbAts6sdkhK0u04D+v9NsO6RBKxMi88Q+Qw28
	 E2Sd9hF0UMXtjQLs9xNJqcnakkI+J8ASKoHqRvDwzDouRZC6dhaK98LgnE8jLlv0WG
	 gpIrvib4j/cANfRNW8cOTha95Xv/mfQG8PHj9q5fA1r3xWFLD+K0E4CrOWvHVQ3Vnc
	 07uIEW/KFl8nyazm71w7UpIazNiBaJrjiDluj7H0B8FD3A5BLiSV8eCpxYf3sMBw2P
	 F0RYg/2GiKz4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A94C683FE4;
	Wed, 12 Feb 2025 13:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BC117C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B720261026
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:27:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zqUPALFWowm5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 13:27:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8F21861085
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F21861085
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F21861085
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:27:53 +0000 (UTC)
X-CSE-ConnectionGUID: HPkJaOLxS4aEQk27Xv4s2w==
X-CSE-MsgGUID: agkm9CzKQhyW8W6nL45tzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50665512"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50665512"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:27:53 -0800
X-CSE-ConnectionGUID: xfFnYKZNSOCppwkI9PhY+w==
X-CSE-MsgGUID: iS8nn9t8TvKUrfiT5xj3BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="117830617"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa004.jf.intel.com with ESMTP; 12 Feb 2025 05:27:50 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 horms@kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Wed, 12 Feb 2025 14:13:59 +0100
Message-Id: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739366874; x=1770902874;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9zvZ+BhFA+QYQKIs9ogluWn9l2TcaDE6KQaVs+o94wk=;
 b=kAI49+K3gjF4K2ghnr+a8wm//ceoTgR5x8kDjGHJWOJi6KhMcyNB8cRF
 wb1niIW+VSI7QuHXDSikpBpa4JnHevQstC+9pbG1pSVi0fs34Ax7PXrfc
 tgGjWon3BautNNukcvW4VYA5+0gBhSU9oCWVn2qI0y5p6zQ4Ws7wiPLeV
 tgpS3ccGXWWBHUDKOupyquhb8p84N1jJVIF2j4gfZMfGFi+UIZe/Lzshc
 uPTBG4F6QrgEoHG8xUPFJyRvOi3BbDBRdpNkJS0ro4z10X33hZrYCvC0i
 IyeigYv7MAJ6C5ibsQBQmgm4RG6FeSs0yg7DYENglECSwyUJuM/GwX62L
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kAI49+K3
Subject: [Intel-wired-lan] [PATCH iwl-next v3 00/14] ixgbe: Add basic
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
---
v3: introduce to the series additional patch touching devlink/dev.c
---
Andrii Staikov (1):
  ixgbe: add support for FW rollback mode

Jedrzej Jagielski (10):
  devlink: add value check to devlink_info_version_put()
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
 .../ethernet/intel/ixgbe/devlink/devlink.c    |  577 +++++++
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
 net/devlink/dev.c                             |    2 +-
 21 files changed, 3205 insertions(+), 117 deletions(-)
 create mode 100644 Documentation/networking/devlink/ixgbe.rst
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.h


base-commit: 09a7ccb316bce8347fefad05809426526b6699f3
-- 
2.31.1

