Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D0593D263
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 13:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 983AB60B12;
	Fri, 26 Jul 2024 11:36:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HwWg8Y49xrTV; Fri, 26 Jul 2024 11:36:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB1E7608A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721993800;
	bh=NG28yhEI5GVaVmaxqER/St6tkQRTF6G6ARQWHqJ9M1Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=M7pQeQHHwauwjpZjJzaanFuWdEm4MwjTQzpnQkov0zSwbZdNWeceH5DwJX6H1Qf0Y
	 muNgN4drq9xPzwEB62B6f52j4mIP21dTiIdiAE6KAKcX+WYaN7aS7m4KXf3jyuWPHJ
	 Tyh9lCGwROLSZwvEKmn9aNVVrmIiYmPDzjyGJvREt14A8EpVu4edNzeCx4HcodLIsQ
	 wZxe/FmmdNFcpfv3OjGaa6kVnokG3MG+xYeRNV2ZkZFE/dvqR5/oYQpASOo5YE0tUE
	 FgCgAs+N0cE5BnP+X4eEH3Dg9ffsdNjqUqBveXumy6/SlRq7sSjjMxKdtcjSOG15E7
	 zPpBsulkwrjRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB1E7608A7;
	Fri, 26 Jul 2024 11:36:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83A621BF59C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 11:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FA9D40BC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 11:36:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rmgdv7cj9q0w for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 11:36:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 95A6C40BB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95A6C40BB7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 95A6C40BB7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 11:36:37 +0000 (UTC)
X-CSE-ConnectionGUID: mN85depzTNK9IQbm4ucLcg==
X-CSE-MsgGUID: +7t1Zg7zQ8OxoHJAjsXDwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19743233"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="19743233"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 04:36:35 -0700
X-CSE-ConnectionGUID: e96tUXc/T3ylS3NxesiAEA==
X-CSE-MsgGUID: zbVkCjKLQPSt4Wd0mwcYTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="76466848"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by fmviesa002.fm.intel.com with ESMTP; 26 Jul 2024 04:36:34 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Jul 2024 13:34:42 +0200
Message-ID: <20240726113631.200083-6-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721993797; x=1753529797;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lLsGyUHtaky6SjftTOw4RXqLhCKwhlh+vCooMpdlI5k=;
 b=XMeYecZcExsfu/3PJ+Yux0KOACJ6TK0kTCrkGQSAO8xuDOQhsNF2VpkW
 t5q88jrJauPo+Y0eD9Q4IZ5tjHyPr+JqEeFRRHf0JQcleQawqkjm4yanm
 te5K94jzcZH5xZj+SVKL0nRJg48i2mndy5icCNeGEA4qNeGnRIRCwstoq
 cYmshzeL9DxrLfcBnnIDUFSygaDw8KhjNGF1aGpGavEKWwnNcEp4PkNE1
 QfwnnqN1CgIrNlTabbb6vlAT067gLWGQaIdyKENcr4N3k9E3rA5QQ3kut
 1zP+XIzeV7Hs8DktybSX45DYqUF+zVnPtBElw0Tdexs7fzzgB2bsCN1IU
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XMeYecZc
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 0/4] ice: Implement PTP
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
Refactor processing of timestamping interrupt and cross timestamp
to avoid code redundancy.

Jacob Keller (1):
  ice: combine cross timestamp functions for E82x and E830

Karol Kolacinski (2):
  ice: Process TSYN IRQ in a separate function
  ice: Add timestamp ready bitmap for E830 products

Michal Michalik (1):
  ice: Implement PTP support for E830 devices

 drivers/net/ethernet/intel/Kconfig            |  10 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  17 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  25 +-
 drivers/net/ethernet/intel/ice/ice_osdep.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 356 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 208 +++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  25 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 11 files changed, 508 insertions(+), 159 deletions(-)

V3 -> V4: Further kdoc fixes in "ice: Implement PTP support for
          E830 devices"
V2 -> V3: Rebased and fixed kdoc in "ice: Implement PTP support for
          E830 devices"
V1 -> V2: Fixed compilation issue in "ice: Implement PTP support for
          E830 devices"

base-commit: fcc95601acb4a30b42cef594d03d2d2ec2bdb56a
-- 
2.45.2

