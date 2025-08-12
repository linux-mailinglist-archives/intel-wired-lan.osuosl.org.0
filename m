Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BC1B21C5C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 06:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C203D41DF8;
	Tue, 12 Aug 2025 04:54:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id khVILom8N3tx; Tue, 12 Aug 2025 04:54:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 810DF41DF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754974443;
	bh=D3ptxrirPbVskMdQLkgierrJ0jMbpiMwUwlexze1w44=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=soJGeJ23Eb3EsCgcG8VZfFSL3NWfyEgiNHC7hvyJ4jCEfccHPhKa12+lWrsx/oRQh
	 zbz+RNqa2FsttvqQrYB3JH/H+wp3mEr/dpqb3EewrIrLWB5Ny/1P77BYntxzJ10BiS
	 /ohbcylehc61qGM1ruX5DW9TTzcU2Ydo6nZgN4fL+WHcom/aMAhJi2b6ijkIDqfZWd
	 5psmKhcDUGIzrAIuhMg4ugDDC+TkuVj7E9Hk7AF3iXv4go1a0Gfbza9mkLQ31UWjUd
	 3wO4BHTS5p+vgo/PpFHPqs08a0CwtKwYxWudTOrWXYKI2L1DV6qKyaIHLkFVBd1+fr
	 81OVnzOwsK1ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 810DF41DF0;
	Tue, 12 Aug 2025 04:54:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A25A158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B7526135F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X27YYUIdwwrV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 04:54:00 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 12 Aug 2025 04:53:59 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 08C4E612A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08C4E612A5
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08C4E612A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:53:59 +0000 (UTC)
X-CSE-ConnectionGUID: BN2ycI0VTnWGOtGgzbA0Fw==
X-CSE-MsgGUID: I/F5HbgbRlahvnSdJrXoPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68612721"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68612721"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:46:52 -0700
X-CSE-ConnectionGUID: 0RxjY4VsRZiA8ZGguK8XdQ==
X-CSE-MsgGUID: +lYVi0w4R4mGY3gJ+WtzMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165327864"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 11 Aug 2025 21:46:51 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 12 Aug 2025 06:23:21 +0200
Message-ID: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754974440; x=1786510440;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B8ZQ+c6Xz2QVuq7k1UdVtgB4vbdN/oyyIKz6dW1BFBw=;
 b=a6RFRBGEzRRUo8CY2Jvj41HsTYL1u42aRVk4dxc96X6wrvI+X2cuRNXe
 Vvq/0IGr2l7yW6mLMsm5yM7j9WqSp7Oikpb4sEd/ktt7ZPxcsf4AQgpCv
 eTFAjB8NbwYGcv3It3+JrUGZwPNcd8mi2+KipCkrm4E93H3VL3Z93svtW
 tj/zXnz9X1XeNXZ0pUKWlpyBf+RFj27YHeCTUAbYaJFS8T0++025GpcV7
 1SVlrW7l7rMJqpmdsbRM3Xgc2DSad3UM59pvwqGQMYcW3Jo1qPhNUkfws
 SQueJkkgyCAuNJe9M8DexGMOsbjbUwzIVNgnnokr9WBi9zFY24zdWi2Uj
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a6RFRBGE
Subject: [Intel-wired-lan] [PATCH iwl-next v2 00/15] Fwlog support in ixgbe
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

v1 --> v2: [1]
 * fix building issue in patch 9

[1] https://lore.kernel.org/netdev/20250722104600.10141-1-michal.swiatkowski@linux.intel.com/

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
 drivers/net/ethernet/intel/libie/Kconfig      |    9 +
 drivers/net/ethernet/intel/libie/Makefile     |    4 +
 drivers/net/ethernet/intel/libie/fwlog.c      | 1116 +++++++++++++++++
 include/linux/net/intel/libie/adminq.h        |   90 ++
 include/linux/net/intel/libie/fwlog.h         |   85 ++
 19 files changed, 1406 insertions(+), 1312 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 delete mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
 create mode 100644 drivers/net/ethernet/intel/libie/fwlog.c
 create mode 100644 include/linux/net/intel/libie/fwlog.h

-- 
2.49.0

