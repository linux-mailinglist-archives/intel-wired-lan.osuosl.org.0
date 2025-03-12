Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD96A5DD85
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 14:13:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1B4A81F55;
	Wed, 12 Mar 2025 13:12:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QMAUM4wpsG8W; Wed, 12 Mar 2025 13:12:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4DE081F0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741785179;
	bh=ZcfO3JWj+hwjQAbxZ5JmunsYSlyCG0EHugyFIhVDlQA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DC1YDaQ+zmuTJT/grFycLOlAHmnBakCUZXbYuSlg658n9R+FG4mHosjemrl5SMHSb
	 7fc3/wl4DIZMrRXIX4F2odoSqNtQbGEwMdx/BFkWulw7EJUfua+Ifq6pJ73MVGEFft
	 08gKI+wcdQrjSavQc3fflSA0b+NZz4sqvZoArSW/eHpWiEn2uHSIB5Hm3TjnMMZqMR
	 OG8YCq2zQrVPHa8is59aZEEqWOcuomWx0PH0wDVgO/oR8sGjyETFz2K/rRKsz/rMpD
	 LeK1x8e4x2VGNq+b8+MGzyFYfJvu3+O4bTWW44oddifJsSuQvLvbNodZgXEybpFZBH
	 qM4BAoaVGSQOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4DE081F0C;
	Wed, 12 Mar 2025 13:12:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 157501C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E665A60852
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:12:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9gyer2CqeIp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 13:12:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BD86F60831
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD86F60831
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD86F60831
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:12:54 +0000 (UTC)
X-CSE-ConnectionGUID: i6ldgFlYR4W7qwYrqRC7+g==
X-CSE-MsgGUID: BvH2QGj8TAeTo4GlLhttVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53510656"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="53510656"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 06:12:54 -0700
X-CSE-ConnectionGUID: PQSk0ZcrSSmVLr9EZwWaWw==
X-CSE-MsgGUID: FFx2ZXN2TtiTLfFc/j1ZCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="121542042"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 12 Mar 2025 06:12:52 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Wed, 12 Mar 2025 13:58:28 +0100
Message-Id: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741785175; x=1773321175;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ebtUdL7x+P1BZSl0p+b3iP4EYbjPvBEbMyFX9UN5+Fc=;
 b=AeqfFUPeJ1p/8zIcBFX4PQVBvSEfimoe8KETA2xQWcs1BmXDke0aJzrV
 IZozs5QiYKxXeouguij4Q8i7bqD1t8Jn+Az3a4BSVA8wlQNAQDkUQeLPU
 byGYeuh3/nY1pJ6gOaMZiBGGSVKoEh/yALv8jK808V9W6HcHYzzCNzpvz
 ES4a/FBBEZ7KgTqL/EYC4nnyhKfMYNzemauXo8lWo5pHZxq4XBN2v2Ttg
 V3mYJzCEpvtORBtufWnhK6Dvf/WaKCxUX5TtFDSkOjflzez6dtEdsTlGh
 xUMXelnNXLsV0qBqbV+oBDWqUiH1mas/Z0rqBa1M+M3W527pwHY684REf
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AeqfFUPe
Subject: [Intel-wired-lan] [PATCH iwl-next v7 00/15] ixgbe: Add basic
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
  ixgbe: extend .info_get with() stored versions
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
 .../ethernet/intel/ixgbe/devlink/devlink.c    |  585 +++++++
 .../ethernet/intel/ixgbe/devlink/devlink.h    |   10 +
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   21 +
 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |   56 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 1515 +++++++++++++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   16 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   86 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c |   12 +-
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |  707 ++++++++
 .../ethernet/intel/ixgbe/ixgbe_fw_update.h    |   12 +
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    |   10 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  269 ++-
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   16 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |    5 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  161 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |    1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |    1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  |    2 +-
 net/devlink/dev.c                             |    2 +-
 26 files changed, 3361 insertions(+), 242 deletions(-)
 create mode 100644 Documentation/networking/devlink/ixgbe.rst
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.h


base-commit: 0a5f2afff8673e66160725b8ec8310f47c74f8b9
-- 
2.31.1

