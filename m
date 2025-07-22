Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE14B0D7B3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 13:07:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FEA06F4EE;
	Tue, 22 Jul 2025 11:07:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PAoPKZkuVqfa; Tue, 22 Jul 2025 11:07:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E865F6F51F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753182420;
	bh=HMJEbhul7RUCJOdG3GO6lJ+amH6JNoISWfcC/nnANsk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EwtflqRSn6oVk9CKiHqBRVjEoUbKY8Gvv2ZZqNdgD/QX234qxe9AOUEwpc3cYUE4L
	 Oc/s6h+mHVS5wPWJQnpMaqWiWA0GR/mShJQHanBgHVaeJqSHSocRhdFaSBr1SEDClT
	 Io88e9J/zt2EVw87aL9giuMJy14liOWq+A6sk4cSl++zJlVh6GKI/uouf+s4n8jT+B
	 uyuduQNBePEJRNjCxNOnISvVn8jIykMn+nAgpCCYThgCW6e3I7OVGAMLO0rxo40juj
	 i6ebEwLbOXi6Dg3O76X6GG46QuubiAbn+QHzOx8mjQGqONqbVGgKVr9nPYQ+u7Mt1W
	 O1Y+O75s790EA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E865F6F51F;
	Tue, 22 Jul 2025 11:06:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3781D127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D46D84B27
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:06:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VQrQJJl7jXSs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:06:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6608B84B21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6608B84B21
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6608B84B21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:06:57 +0000 (UTC)
X-CSE-ConnectionGUID: bbcsFYM2QRyFPJ2yxhMpJg==
X-CSE-MsgGUID: 0cfIiT3DSg64WU7Pvhxfyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59083577"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59083577"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:06:57 -0700
X-CSE-ConnectionGUID: w9xP/zPlSOmXjvxaQiou3A==
X-CSE-MsgGUID: 7euq7hCJSZ+CU30vRIQ/0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="163153910"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 22 Jul 2025 04:06:55 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 22 Jul 2025 12:45:45 +0200
Message-ID: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753182418; x=1784718418;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PJqY2BhJricnl5M7ZiNQoswZwu2458ENy3RSk/KsWy4=;
 b=DOvFSTHcRvD7w9MToIV5dvzOKBNUq0K2xJZMMB8RR79oVw29b2OBCTsG
 Cb5olKAInKLA2hup9gyiaM2A0axyLEB4FeUxEFU8o7bPgUAR/qRGww0Bm
 WdT1x/q+1UY+FoxcIDQRGR15bWd9uWHpOKJiO7k924P9Dn3pIxc/0waO2
 1OBXR9iDLoYZJWfcPVxMQPK50K9pFG7MCUM2eKOrHC1rfMbL1qJf7OSt5
 NNcdMl/TfyEZSPIes6zpFOmm12h2O8YigDskdFAWvZWAOt4tU+y1AC19Y
 8SdLx/xecQtoT6NAxTblkDup2qADAJ/2yts1DoOZizC3eBYqPaxXToV0K
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DOvFSTHc
Subject: [Intel-wired-lan] [PATCH iwl-next v1 00/15] Fwlog support in ixgbe
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

Hi,

Firmware logging is a feature that allow user to dump firmware log using
debugfs interface. It is supported on device that can handle specific
firmware ops. It is true for ice and ixgbe driver.

Prepare code from ice driver to be moved to the library code and reuse
it in ixgbe driver.

Michal Swiatkowski (15):
  ice: make fwlog functions static
  ice: move get_fwlog_data() to fwlog file
  ice: drop ice_pf_fwlog_update_module()
  ice: introduce ice_fwlog structure
  ice: add pdev into fwlog structure and use it for logging
  ice: allow calling custom send function in fwlog
  ice: move out debugfs init from fwlog
  ice: check for PF number outside the fwlog code
  ice: drop driver specific structure from fwlog code
  libie, ice: move fwlog admin queue to libie
  ice: move debugfs code to fwlog
  ice: prepare for moving file to libie
  ice: reregister fwlog after driver reinit
  ice, libie: move fwlog code to libie
  ixgbe: fwlog support for e610

 drivers/net/ethernet/intel/Kconfig            |    2 +
 drivers/net/ethernet/intel/ice/Makefile       |    1 -
 drivers/net/ethernet/intel/ice/ice.h          |    6 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   78 --
 drivers/net/ethernet/intel/ice/ice_common.c   |   46 +-
 drivers/net/ethernet/intel/ice/ice_debugfs.c  |  633 +---------
 drivers/net/ethernet/intel/ice/ice_fwlog.c    |  474 -------
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |   79 --
 drivers/net/ethernet/intel/ice/ice_main.c     |   43 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |    6 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |   32 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |    2 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   10 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |    2 +
 drivers/net/ethernet/intel/libie/Kconfig      |    7 +
 drivers/net/ethernet/intel/libie/Makefile     |    4 +
 drivers/net/ethernet/intel/libie/fwlog.c      | 1113 +++++++++++++++++
 include/linux/net/intel/libie/adminq.h        |   90 ++
 include/linux/net/intel/libie/fwlog.h         |   85 ++
 19 files changed, 1401 insertions(+), 1312 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 delete mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
 create mode 100644 drivers/net/ethernet/intel/libie/fwlog.c
 create mode 100644 include/linux/net/intel/libie/fwlog.h

-- 
2.49.0

