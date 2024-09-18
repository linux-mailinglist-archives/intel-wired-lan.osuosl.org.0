Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC7197BC11
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 14:21:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8764042408;
	Wed, 18 Sep 2024 12:20:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UhgpfdcNLU4H; Wed, 18 Sep 2024 12:20:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 759B64240D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726662058;
	bh=JGZZUBsGsOqCPGduTwOI1XIs7q2U7Cpuyzt4xCJn3OE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uYvGVtpZkKm7iPJrkQ+RVBQs5fcMGUvMf5SGRmiC7Pr9AZ2mXykXo5yk1+yC32qZd
	 wa8XU0xLe4kmVU9otZgI4tb3egJparqo8PVUAkhhdZVhHG2naNNEH+u7eEj750Rsf1
	 6W1cIkjUiEBtQFYoFtUtGVzR1GpTZcsO4qAbn5wXW2yRBrKho9QD7M9YYl38SgqZke
	 Jcl0UEh8/sL7APw8umIgJv9ALZIxTj7RJxecOkKaePeaq8qnuBUTCUnB7yQ5j7HrVV
	 kXmSPAMsnIIw6CSEV0HU34E93pHEOUKPXG0jIxTfrewPIkD5ME+7bcL1g1eN+pBi2W
	 zkzRSrwhZ/Z/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 759B64240D;
	Wed, 18 Sep 2024 12:20:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AEC21BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5858C60A3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:20:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NIAkqh65FFhO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2024 12:20:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 83769608F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83769608F2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 83769608F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:20:54 +0000 (UTC)
X-CSE-ConnectionGUID: JN8DxFpESl+5msmA7p5XPQ==
X-CSE-MsgGUID: 3gVtx0v0SV+bmhkQybJ0Hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25689202"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25689202"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 05:20:55 -0700
X-CSE-ConnectionGUID: nTQcHm95TCuZ54+uIiDAWg==
X-CSE-MsgGUID: Pgt1I0SUQCC7gOpBtdrNvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69636425"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa008.fm.intel.com with ESMTP; 18 Sep 2024 05:20:52 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Sep 2024 14:12:28 +0200
Message-ID: <20240918122048.1554692-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726662056; x=1758198056;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lJ78Iy+0jAEhk978rmTHFMofgR3SD6splpg+FTdIEG4=;
 b=EkEtjXCNsj0vq8KNayBluNp0SAHvYRKNnzhd/9x1ohuxSWR4v//BQXRU
 zV4hL0ibGvw6b73WhD7t/J7MW7EgBrEEK7v51A8CtUOtjDJNMFHMQrFMl
 xjjgd8NZcwLiUBPHEmAusTbURKvk0JPoWJuuyuNaynqG1TwiDsHhUcbly
 w/tgDaUYkvZNY53aKy5H4T4ABINpmi2AJhrQyciXdNx3ZFZyUBVTlry+d
 QDhV6NYu0dLs85cQ8vZ5CmzKPaln4devErOJoB23QWZZHyH62C2wmRthC
 AoRCwmjCALjYCdWbq/SM/f4rm8mgfYNqEWWXFxiDczE0eg/ew8HaJ+Y6X
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EkEtjXCN
Subject: [Intel-wired-lan] [PATCH v11 iwl-next 0/7] ice: Implement PTP
 support for E830 devices
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add specific functions and definitions for E830 devices to enable
PTP support.

Refactor processing of timestamping interrupt, cross timestamping, and
remove usage of ice_is_e8xx() functions to avoid code redundancy.

Refactor GNSS presence check to be able to remove ice_is_e8xx()
functions.

Jacob Keller (1):
  ice: Add unified ice_capture_crosststamp

Karol Kolacinski (5):
  ice: Don't check device type when checking GNSS presence
  ice: Remove unncecessary ice_is_e8xx() functions
  ice: Use FIELD_PREP for timestamp values
  ice: Process TSYN IRQ in a separate function
  ice: Refactor ice_ptp_init_tx_*

Michal Michalik (1):
  ice: Implement PTP support for E830 devices

 drivers/net/ethernet/intel/Kconfig            |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   5 -
 drivers/net/ethernet/intel/ice/ice_common.c   | 210 ++++----
 drivers/net/ethernet/intel/ice/ice_common.h   |   7 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     |  29 +-
 drivers/net/ethernet/intel/ice/ice_gnss.h     |   4 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  27 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 509 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 407 ++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  41 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 -
 15 files changed, 734 insertions(+), 543 deletions(-)

V10 -> V11: Fixed adjustments not working on E830 in "ice: Implement PTP support
            for E830 devices"
V9 -> V10: Fixed E825C MAC condition in caps and and enabled
           ICE_FLAG_PTP_SUPPORTED for E830
V8 -> V9: Fixed compilation issue introduced after rebase in "ice: Remove
          unncecessary ice_is_e8xx()"
V7 -> V8: - reordered patches to have all E830 changes in "ice: Implement PTP
            support for E830 devices"
          - added "ice: Don't check device type when checking GNSS presence",
            which removes GNSS related changes from "ice: Remove unncecessary
            ice_is_e8xx() functions"
          - reworded commit messages
V6 -> V7: Fixed timestamp acquisition in "ice: Implement PTP support for
          E830 devices"
V5 -> V6: Fixed minor compilation issue in "ice: Use FIELD_PREP for timestamp
          values"
V4 -> V5: Added 2 patches: "ice: Remove unncecessary ice_is_e8xx()
          functions" and "ice: Use FIELD_PREP for timestamp values".
          Edited return values "ice: Implement PTP support for E830
          devices".
V3 -> V4: Further kdoc fixes in "ice: Implement PTP support for
          E830 devices"
V2 -> V3: Rebased and fixed kdoc in "ice: Implement PTP support for
          E830 devices"
V1 -> V2: Fixed compilation issue in "ice: Implement PTP support for
          E830 devices"

base-commit: abc6944428c5cf8d3ad3fb6de03939ec12289e14
-- 
2.46.0

