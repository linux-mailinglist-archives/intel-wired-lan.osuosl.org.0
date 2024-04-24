Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D248B0C1F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 16:13:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB45E820DA;
	Wed, 24 Apr 2024 14:13:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E-X5khKKOETj; Wed, 24 Apr 2024 14:13:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14B1F820D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713967996;
	bh=IXI+y0fGE0AHTmXz7kHBr5EuawihrIAfm0VnIv0VyIo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GGatQSaPB3hbRidlJhsiZi2uxLC6W+h0cnLGZKZ+3Q5XPKoBcFZNThUKnSSIYoOmk
	 nVq3kczxy+iGrkxEO3xAZTUI73GEkAThsMrrsxU0xG04MIoEGGtLQCvl6ryaJwXgYM
	 nYBS9KSDd7HK0ZfBo5I1EvwbcijM4Ckb6aYqe4uuy5y/Pj/WEZ163fmgyPp4E4gcgi
	 rGB90HxK3UgZWduvYqtIuFCDPfz8iEjD/1r2SFfBTW61qe2yu0eHdBEBt5gOLWdjdx
	 4B+MP3/R4ZMjqOe7enr2lfR8I29RgBjtstadx/JObOTkOdxpLYge0plnj7AwM1Uh2p
	 b5r3PBlGweJvQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14B1F820D8;
	Wed, 24 Apr 2024 14:13:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3329D1BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B11F401C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WMcXlTqpg34n for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:13:13 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 24 Apr 2024 14:13:12 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EC3DC4018F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC3DC4018F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC3DC4018F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:13:12 +0000 (UTC)
X-CSE-ConnectionGUID: 9Gc+6DWVRAO+GTDuN+/rag==
X-CSE-MsgGUID: Ue5gJuMDR8yJGpc7cR3SQw==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="10138135"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="10138135"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 07:06:06 -0700
X-CSE-ConnectionGUID: qQbGo4DeQ5SNM70bLLjrsw==
X-CSE-MsgGUID: phZiunlZQxiag/JD9QppVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="55922827"
Received: from amlin-018-251.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.251])
 by fmviesa001.fm.intel.com with ESMTP; 24 Apr 2024 07:06:04 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Apr 2024 16:22:46 +0200
Message-Id: <20240424142251.3887-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713967993; x=1745503993;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Er1MsQgnGHHH4ZmIxCZWEFVY8Z60X76jmdptKTGKOzY=;
 b=k1rhvF4S3JxHTGUjjJ3heQqcLhyrGvgIarsL7Cu5Ty9EI0o9P5KKwKqs
 lYbZFSbCX5MG8YIvApzZ1YxkV5YihR5077ATkTyfghjnKn9cPDqbF7jQ4
 HOZqCZ9DIGcGp1W0XtKOfKn1OwUQDhVl66w7ebGyfPj8gG2t3gvhjIS5+
 YacRsyZ2QkgZk5k/5Jx3KWAO6T8GL4+XlxANkUUY090KPQ8BOVOtPYWwV
 m00y3tulvWsuL5nbXGiqwZBp9V3lYtq1ErcJ7w87antlvpFhwI25UXLYI
 VD+P/iWhmRLI8FnrWAjy3cWPoi36mXGm1JmxdkY29wkQZ9wcfQmbe5MQ5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k1rhvF4S
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/5] ixgbe: Add support for
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org,
 jiri@resnulli.us, horms@kernel.org
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2533 +++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   75 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |    7 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |    3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  435 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |    4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |    5 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   71 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1064 +++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   42 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |    7 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |   29 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   20 +
 18 files changed, 4274 insertions(+), 65 deletions(-)
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
  - fix inaccurate doc for ixgbe_aci_desc
  - remove extra buffer allocation in ixgbe_aci_send_cmd_execute
  - replace custom loops with generic fls64 in ixgbe_get_media_type_e610
  - add buffer caching and optimization in ixgbe_aci_send_cmd
V2 -> V3:
  - revert ixgbe_set_eee_capable inlining
  - update copyright date
V3 -> V4:
  - cleanup local variables in ixgbe_get_num_per_func
  - remove redundant casting in ixgbe_aci_disable_rxen
V4 -> V5:
  - remove unnecessary structure members initialization
  - remove unnecessary casting
  - fix comments

2.31.1

