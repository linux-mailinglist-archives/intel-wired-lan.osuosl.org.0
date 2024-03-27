Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DD488E948
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:38:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62CC8606B1;
	Wed, 27 Mar 2024 15:38:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id agL3YKUxbB2Y; Wed, 27 Mar 2024 15:38:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 987D860B9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711553924;
	bh=mV+VV5CgSUtP+TiuvuMB92u4mYuk9jUZTzjaOy+hcjQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HGxVHnVrauTGvJbzlaxPc/E+hBNhqHeaZIc3IF3gE7g7Eyd9iZC5BATbV/8iDhHhI
	 dkolv0OqQLo+Ff8wvGc1gqkv0386V7pjPUkrbYyyzVzhq6+FmTnVw3DmESwR2P2vVx
	 A2is7kJb3wwgaHi9hnJspjCz7fb3XW39dShCx1H/xRbvZFD/y7drxnxJfn8VOFJ9Xj
	 SZorfn74+klGdDvVyv6vJpwf7bP31uCcUQ48wBXKfRs2KPXgLbyUQR75slppE6IHez
	 fwqWYTumW8XA2099OWdzQGBN9YGOwAqgfuMMlwvoFSnB391H6wrzrCbFAMpfCQ4Rj2
	 8OKE2RrXgBpAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 987D860B9C;
	Wed, 27 Mar 2024 15:38:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCF861BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B4F6B40316
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Pu2LdKRW1VX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 15:38:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8998B40302
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8998B40302
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8998B40302
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:38:41 +0000 (UTC)
X-CSE-ConnectionGUID: cJTuhfkaSHKJiG7719eErA==
X-CSE-MsgGUID: 8GVlyMH+TLOHJy4K6zul4g==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6531100"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6531100"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:38:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="20807787"
Received: from amlin-018-251.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.251])
 by fmviesa005.fm.intel.com with ESMTP; 27 Mar 2024 08:38:26 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Mar 2024 16:54:17 +0100
Message-Id: <20240327155422.25424-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711553921; x=1743089921;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ktB/xB3Lp0DrTvfAFS5vXhhDauIgHWF4C+6HuvQJMJA=;
 b=GdZ3aVAK0Km0uJKGqD+b0IvSaQHeFX8Tvu82B6NYUuwesfZJAvmhYpQu
 L/x3WRp1eT8F4eJVXFDsoZWfOmFUTEDE+CYqs0I7s9dlFYcEph5U/qoIn
 5qzDdG6N6Fqin10jPvqejJ/ehgPCz41LxHUTrkGDB1IiIjqoAPfXRIWHJ
 IbAmQcRgMK4OfVeFbJlmDt+F1ws5j8PM10QDNB0lNfHbohLKgS5qK1ZAE
 2CyeE6rYEEbAefAEK7KQ6i5CNkhevEIyvaoKdgyfbnWx39rK2lYEQMVho
 /5VO+JxyFSm6Kvs7TeHo0QTnuJjXVyNry7EX0+5iY8F7J1gJQQlO1dIFN
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GdZ3aVAK
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/5] ixgbe: Add support for
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2590 +++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   75 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |    7 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |    3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  437 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |    4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |    5 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   71 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1064 +++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   42 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |    7 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |   28 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   20 +
 18 files changed, 4331 insertions(+), 66 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h

-- 
2.31.1

