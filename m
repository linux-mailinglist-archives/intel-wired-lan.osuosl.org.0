Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17C68A98F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 13:50:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 505BE41681;
	Thu, 18 Apr 2024 11:49:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bCqvy5A2SnJs; Thu, 18 Apr 2024 11:49:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 857D7404C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713440998;
	bh=iaPGHuqSieZNevwsMD6Zop6SMnf4TT1gDcHI+DXSZoQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Co6Nj310dudAwMKpPSy3lW/UpI45umuJkNgnCiEtnfEli8bKkRlYHi3v1YQCb84Zl
	 5z7Mw0l0ZtnsjakaS3qopjTnFhGWLQj7c3MtC+0bcrHNE6TS9qi5hi/N76nLJQPX7+
	 0nhQjQ3fLyv7ZAtH4UINHbnMQs+Bijbf5GtsqiTKVFHIZQ1Uglzw3JFJVtRIP9W3G5
	 t7scCmFI/Wj3/qT7KafDC/iyCigdWEPD7QMIPs1qpEs9eBUztWaZt9lf5LZRF5YlZF
	 8syMGg/DAOMBnw2FkBI5ze67FA/HjyI4fVHTq48mQq0QCP6yUlGjCXcwfFPF7E6nVz
	 n4sk5AJ2t7grQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 857D7404C3;
	Thu, 18 Apr 2024 11:49:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7FA8E1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 695A8404C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:49:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mSsX4M3rwZNV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 11:49:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4A7BA408C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A7BA408C3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A7BA408C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:49:54 +0000 (UTC)
X-CSE-ConnectionGUID: x9wWB4C9Tseqi+Mje8Q8MA==
X-CSE-MsgGUID: vhyWNCKlSfeg9GviXM6Tvw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20127426"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="20127426"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:49:54 -0700
X-CSE-ConnectionGUID: QPyqIneJRUWjZoVQ+dgBig==
X-CSE-MsgGUID: eS+FT5SeQFiBPkM7zdwnAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27731033"
Received: from amlin-018-251.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.251])
 by orviesa005.jf.intel.com with ESMTP; 18 Apr 2024 04:49:52 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Apr 2024 14:06:22 +0200
Message-Id: <20240418120627.287999-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713440995; x=1744976995;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AOyG9ACA8piLD8ZUFTDWXXz2PsX8UXZcwL0rG2yA1Jw=;
 b=FpX5c3ngomQMeAaxiQ6AtBx/zsv5mm0+I6/h0+iB3GUhdmzIw/viQS8j
 aKWc+oxwCAp5cEAwuKOqK6UFvGZ/uxHIsedshl4OLG8sj/36kNTtPaPsy
 XHwgrayxq5GkIvKVe6XW94Ww1Ys8TLaOpfKPdsemCS9tVd5oPY873CRR7
 VcuqATyexddZE+jB1nU8mFW8a/3dtQ3N3eJRhnMi0dF49o1FDPvULjWea
 0NpTQHfprca7PKxdgfpcQcFrnj9mM9m7MD3tn/dvdFuKOIdunPA+WLDDd
 Ai9ScGrSe9+96TLLa3HtIhL5npe18lqJylnHqxGe3wGeFJBJJcgU7zBUh
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FpX5c3ng
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/5] ixgbe: Add support for
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
 anthony.l.nguyen@intel.com
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  435 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |    4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |    5 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   71 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1064 +++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   42 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |    7 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |   29 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   20 +
 18 files changed, 4302 insertions(+), 65 deletions(-)
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
  
2.31.1

