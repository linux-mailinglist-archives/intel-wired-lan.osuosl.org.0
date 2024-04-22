Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5618ACD42
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 14:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 680D08135B;
	Mon, 22 Apr 2024 12:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gU97XggCmcrc; Mon, 22 Apr 2024 12:49:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A81298131A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713790171;
	bh=P6ZhwEiQV91mx9yFw/1IF+Feir+qq5g9XSTa47oyMvc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=q3Me2m9rkN1vqyWNRExmYPDyXJP/pI5tfqNcANMpaScLzA7NKpdm7Sdj0kNIKNXXk
	 aaiBMLZUkvbQMwuVZhwn2+xm4+P1jh+h5cuC99lS/HVS/6TR0qL+skmPzf00fO9HXD
	 mMnCf0/Kia5O43h0vi+1dLw0HsIXipFQEYPuHBz+1Borgd9nVh7uFxiMpCwyeMMBEv
	 C857skLGZyXExaHg/KnRgezBOugTsKcAH/QbZ6uE/pqECOZmOs9PASYvqhVc8kfPh2
	 OhdgXRxuFH9vu9WQQBeSb+aNDvf0ZjTqlnQXrQGx0mrQBDPU2iJLy+2GQtE0PHTzjs
	 4OxZcm+uGCo3g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A81298131A;
	Mon, 22 Apr 2024 12:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B8DF1BF322
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 12:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 23EC140430
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 12:49:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jbB_snwkZqab for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 12:49:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DEC974026F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEC974026F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DEC974026F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 12:49:27 +0000 (UTC)
X-CSE-ConnectionGUID: vb2hKTxZTv2JA1VwVL9D0w==
X-CSE-MsgGUID: k63NhSMFT4mWb5qb3Sb/kw==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="12262976"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="12262976"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 05:49:26 -0700
X-CSE-ConnectionGUID: pt+OqKq7SXatQnDWu5MhjA==
X-CSE-MsgGUID: RoT0bh00SFC3kYGBl02z8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="28789129"
Received: from amlin-018-251.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.251])
 by orviesa005.jf.intel.com with ESMTP; 22 Apr 2024 05:49:26 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Apr 2024 15:06:06 +0200
Message-Id: <20240422130611.2544-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713790167; x=1745326167;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OBdLAFzGToia8gq0yy5mNngQuXhBJt0KrcR1RzgL/Vo=;
 b=LMvGkr9FE+mGuLDkM28nEAkEwseW+wLqenkYOMfU3N2oYIWhcNZMWejH
 Nv7Ocp+h9Hp10rAqHHyA1e8apEwVz+RqvJQoSL1C2RBWLMsh+084PokDb
 s3ZQ/IkuCHEZxHRvpOrcoDjEI7AJuRueaHia49zR4EPXRLLqAtVK7W2om
 vfP66eTyhKRT/v5xWVzR6NCUSGCXfntq65DSmsmMM06hXQ0GxT1mzj614
 yn9X8oF+imOEVL5y0cJI1Eth1WiZFvsNAOHHAQcIn6HNX4SELbyfqvuBc
 jhAsRUICXDbo8f4Y+J4xPgtGQ5kbKwtBATnzuQtB73fU739M5IDUjYX/S
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LMvGkr9F
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/5] ixgbe: Add support for
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
 horms@kernel.org
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
V3 -> V4:
  - cleanup local variables in ixgbe_get_num_per_func
  - remove redundant casting in ixgbe_aci_disable_rxen

2.31.1

