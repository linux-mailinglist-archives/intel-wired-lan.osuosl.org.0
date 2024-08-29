Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BBC96434B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 13:42:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73D8761160;
	Thu, 29 Aug 2024 11:42:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oxSq7zNIvXZ2; Thu, 29 Aug 2024 11:42:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F08161147
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724931731;
	bh=BD/l0R2jpiHz0BmvMpaXP2yztNH6QAXaLWhqTLtK3CQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=X91Fu6CUN89kxo5SkhIPo/5/AwjAL5gTJ2XCTVqF95WlO5YeL9laIpHEgF12qiEnk
	 2txqNZzyrmhguBUldqcczDIkeLMM0VOoR9Ea96D8Dbg/E1kZAwBA/ieOlTDoKof7Su
	 984iovpMulx9OPysVaj2jVvG5jBYgifF8LZcWtVykeKSZJiPEvWN4dGjSB7qGrYsjS
	 BKj5gfyyBCzvpUNAAyduZO7ExARjLQrrJ7mpV23gukFDvuP1eNmcqYBkU2pmLn44hO
	 1PB4F1WT3kF4YUkVMqYqabpdhv0qHDdH6QKiuvtsli3PfloLFCzHoyEdk3NxQ8NGPb
	 IbUw9/Zq2ILnA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F08161147;
	Thu, 29 Aug 2024 11:42:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA4FD1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:42:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 329A281BFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:42:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aN5pqXy92tcI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 11:42:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 76F12813D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76F12813D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76F12813D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:42:06 +0000 (UTC)
X-CSE-ConnectionGUID: Rp2plepJRtWkt2Q7eHDd7g==
X-CSE-MsgGUID: zr7/Eq4WRhm/oW1zqEAyLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23092319"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23092319"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 04:42:06 -0700
X-CSE-ConnectionGUID: VSML9KV2RCupfvLPArDvdw==
X-CSE-MsgGUID: zlbv79xJS2OopENsxNESPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="64045375"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by orviesa007.jf.intel.com with ESMTP; 29 Aug 2024 04:42:04 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 29 Aug 2024 13:37:36 +0200
Message-ID: <20240829114201.1030938-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724931726; x=1756467726;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xPaxi/7gwUkkALGMYm83jqvODfD2o15/EeyIv9h1ans=;
 b=hx859UsZhHF4oNuWCwCGOAFYJUgORQoWvcyQilfVj0KcX3h0lGc8hkcI
 e52QruMsttAsN5GzanvNi4reZKB9aKYafsC0cZxtBMsYkDWKNrMr6Rsbs
 ycciOfRkIjNMX6L7GUH4Nez5KnEJJ8xOoIoYzxNJd+6HpiWgF3RNwEs7W
 3LLkMCDIkuqKP172hXhVFcNU0QAZp4eKVEjcaecjtHIpQVkGiPfRjRdGe
 wuu2D88qThLzqHyotuHijqPEmzHcRLI5AEKxN+kNCq+iCO9lxPVKBSsjL
 GHBPjrV7UDnf/PJMKG+jPLY7WjAGzz8bJ1ClMEPD5WQgLyfeobZ3tn0sW
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hx859UsZ
Subject: [Intel-wired-lan] [PATCH v9 iwl-next 0/7] ice: Implement PTP
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
 drivers/net/ethernet/intel/ice/ice_main.c     |  24 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 507 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 403 ++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  42 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 -
 15 files changed, 727 insertions(+), 542 deletions(-)

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

base-commit: 1d27028dacb9fdd63de4a7cc819b7dc04b29928f
-- 
2.46.0

