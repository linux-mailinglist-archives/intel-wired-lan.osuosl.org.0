Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45823A25E3F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Feb 2025 16:17:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E159360ED5;
	Mon,  3 Feb 2025 15:17:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vYxctmsEdJWw; Mon,  3 Feb 2025 15:17:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 171C860EC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738595837;
	bh=Fz9DcWO5SNychVKrivT39SDM2xbFbahEq2pPZcmgSH4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GZbVUbnOI4dvRdsY9eIwQlyZLEC+knnOWMY8A8MfPqM+qQ7nb+miZFhFjuOyGNOXH
	 eKwn0nd70aSM7dAlxDjKXP83iJToy3mYH+MkRJk/S5/SY0UnA6QbejBKtcOCJJ0oJ3
	 +gwSWiJvDEQD03TD3daZwWYJ6fhNTnngTiYhHblbA7RbS9YC364AYwPAqeo5tRvs9K
	 b6CEkkTvZN6fHnTk88/y7PjebIsbhg1blGY+bhWuy24WUafTFj02hNvyeidtdhSkv0
	 WUdhdcHSCxB9Mte1vP98Bn/3jC26b0gfUQWL5taFjS8apMgJO3OBzU6f+1xbL6MlH7
	 dTDFZdMuNt8cw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 171C860EC9;
	Mon,  3 Feb 2025 15:17:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 38820185
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 15:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27B2D408E8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 15:17:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oFh66jGfzktd for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Feb 2025 15:17:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 10ACE402E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10ACE402E4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10ACE402E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 15:17:13 +0000 (UTC)
X-CSE-ConnectionGUID: QrefJUMsSmO9CwxOKYSYQw==
X-CSE-MsgGUID: tbYQz1ruTTGODwwDSbQlgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="56519786"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="56519786"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 07:17:14 -0800
X-CSE-ConnectionGUID: NI01GYFKS/K6RJndj5OXwA==
X-CSE-MsgGUID: Dit3lA5yRAGJ84UG2BKAfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110886201"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa009.fm.intel.com with ESMTP; 03 Feb 2025 07:17:11 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Mon,  3 Feb 2025 16:03:15 +0100
Message-Id: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738595834; x=1770131834;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hrU4YUoQ6tChpjI4I/QYVbfh+gFvdGcc89so4FDsqrs=;
 b=csl7QdtoMJz6LIYJUNsQFs0GkNc5JIrxks35rUojLl1HRIRVdjngYV7y
 /NLWJDyd2SMv9dMylVMRylISM/Trg7tBy14852yy3VR1mMJ0dJfaUV/sT
 j7iGo9plCyO3PFIIgMw83rfmdm+Rjh5QZ+d31LbYP+CkiSS5D3J6E5GuG
 GtU4VrZoUEHBgeuJfgkDmz4EFIUvNBIk06TTPXFMT/vNxh6ND3SaSJB1u
 2vogall4qJTC30MHFO4Jn9HNVws2BmjjRangabdd0PTJduL6mrJ6WlVZo
 zplwwTvHcsUvX4M95u/l+26kCeCe6dJf0UWDBHT35UKEelGRQX9RgrLb2
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=csl7Qdto
Subject: [Intel-wired-lan] [PATCH iwl-next v1 00/13] ixgbe: Add basic
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
 .../ethernet/intel/ixgbe/devlink/devlink.c    |  625 +++++++
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  180 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |    5 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  161 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |    1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |    1 +
 20 files changed, 3253 insertions(+), 117 deletions(-)
 create mode 100644 Documentation/networking/devlink/ixgbe.rst
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.h


base-commit: 09a7ccb316bce8347fefad05809426526b6699f3
-- 
2.31.1

