Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BC2A56A84
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 15:38:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 774C6414A0;
	Fri,  7 Mar 2025 14:38:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5YPU6_gMm3EC; Fri,  7 Mar 2025 14:38:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45911413E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741358309;
	bh=I3K6q1pH3zbZitRFCq7kc8Y5MWpPLW2MXqX+5Mxt2Jo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oqXMlDnrHKaPFRdEMns8ePvA3g38+4F7sZ5oTtRg9ovniLPSqQ+fAwsa/jyy7o265
	 NiInX1wuBpS31PqJOukhZNqH6/gAB6jJMEhJqPKqqjYpo6AsU8m4s4y/avq2lJlZnD
	 9Hbj7+ZF49Tdw6isnX3/2aoZ3KKiV41nGqu0QEQkIxjcVBRoUbKWSFlm80WVYX0PdW
	 A1nrZNlPGwIChHw1VYUe0vbedpP/TsUVdDdAyI9YNAEe6dIowNhborZl1XthqT7v23
	 Pzod/nL/Z1h1owsD5K83ycDp1uEFISyO7zZBMjL7xPWQ9tnntcpsIu7AoR8AoORozj
	 Y3HPap1dQ8kvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45911413E1;
	Fri,  7 Mar 2025 14:38:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7AB49944
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DBC9407B1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gJKidnpIeYsj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 14:38:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3EE5E4076C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EE5E4076C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EE5E4076C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:26 +0000 (UTC)
X-CSE-ConnectionGUID: MJCInaPYS5yow9VAMTGk0w==
X-CSE-MsgGUID: ex2Ml6CwS7O+MXCSMRIRWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42263291"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42263291"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:38:26 -0800
X-CSE-ConnectionGUID: 0H60ko7YTbiXO5R0wtKC7Q==
X-CSE-MsgGUID: 1q+u1qZBSzGOQwPcY7b5Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="142570744"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 07 Mar 2025 06:38:23 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 jiri@nvidia.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Fri,  7 Mar 2025 15:24:04 +0100
Message-Id: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741358307; x=1772894307;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N00yLsuQxkV9hEL72Sz1SmfjNvDmdGPrDn6jQvghKrA=;
 b=U3KIEBINmhiy0Yw7y/W4ugbyn2XFl5sqYS+0iKOxyPF5R0f0+UBj//iE
 Pairuxo3DrdlFcSNFTpG5/gsDCyDW0f2Mpv37hH73IpDzGe7hHn1UiAX6
 f+TVRIT13FXZqiWNPSSEa4ZL2JcxeJNIDSQGO7rRwpWWPUdH0JrC8ozpr
 gwngDS8Wc/34tsnZeP3Rm8LDVRWexmoijtqZr7XontY1IOgtRXQQ/odDJ
 ikWS7vYkNBO0/Vei59CILY4TWdy+SALCmAB28AJ3lvy/z0ifruRIAexkS
 OFq8sbdwmTYM1dyaN62ntpJh2qIk2aKd5r/TxOzvy6S1x5uo964A6ta9n
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U3KIEBIN
Subject: [Intel-wired-lan] [PATCH iwl-next v6 00/15] ixgbe: Add basic
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
v4: introduce to the series additional patch changing netdev allocation
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

Przemek Kitszel (1):
  ixgbe: wrap netdev_priv() usage

Slawomir Mrozowicz (3):
  ixgbe: add E610 functions for acquiring flash data
  ixgbe: read the OROM version information
  ixgbe: read the netlist version information

 Documentation/networking/devlink/index.rst    |    1 +
 Documentation/networking/devlink/ixgbe.rst    |  107 ++
 drivers/net/ethernet/intel/Kconfig            |    2 +
 drivers/net/ethernet/intel/ixgbe/Makefile     |    3 +-
 .../ethernet/intel/ixgbe/devlink/devlink.c    |  582 +++++++
 .../ethernet/intel/ixgbe/devlink/devlink.h    |   10 +
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   21 +
 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |   56 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 1514 +++++++++++++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   16 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   86 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c |   12 +-
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |  708 ++++++++
 .../ethernet/intel/ixgbe/ixgbe_fw_update.h    |   12 +
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    |   10 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  261 ++-
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   16 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |    5 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  161 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |    1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |    1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  |    2 +-
 net/devlink/dev.c                             |    2 +-
 26 files changed, 3352 insertions(+), 240 deletions(-)
 create mode 100644 Documentation/networking/devlink/ixgbe.rst
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.h


base-commit: 0a5f2afff8673e66160725b8ec8310f47c74f8b9
-- 
2.31.1

