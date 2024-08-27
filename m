Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4026960B51
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 15:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B2254090F;
	Tue, 27 Aug 2024 13:08:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D4rGK7PVB68R; Tue, 27 Aug 2024 13:08:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27BE440912
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724764118;
	bh=ETWjHQGef7QZgeynT6FA0CWDUpXnd8tNyRqufGaGrAI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0Zb1xFnZ3Q+Zc1ex5iBpt4aAES7i34sULpYe6VLXSSE09fys4I8t4T/jDCXBXuHms
	 wqftBEXS76sVKyHYwGRzjcBR137QXUYzu8XV3yMxVUu4O4sInFT3yyuJ17RQJg+Npw
	 C6l1AJDQCyzt3c7YO2EvO95FSFZ0slzbDlyC/TjI5xQ+2xQgg5V/1QQ3XeY0+so9Aj
	 eFJMmPW48L3qxPwZm88dvUVDek+k6KeW+EVgnQaajhDX9yQJuMtintKNyBg8OX6bzH
	 jr/GQI6ljucLrsdhdKAJKTb801D7WNoRa62+GAedSGCpbYsOiodhSsHgXKwVGODbU8
	 wc5NGEmnXYVbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27BE440912;
	Tue, 27 Aug 2024 13:08:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C995D1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B6AE080B6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dw4RS0JgEfZF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 13:08:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F3CE980A54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3CE980A54
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3CE980A54
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 13:08:34 +0000 (UTC)
X-CSE-ConnectionGUID: JyQzZHb5T4iCjRQA1yvDGw==
X-CSE-MsgGUID: 4eBmoXwPQYGaVDJq9zwjJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="40710286"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="40710286"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 06:08:34 -0700
X-CSE-ConnectionGUID: 9Y2LWkFrSVGWY8+330Jlrw==
X-CSE-MsgGUID: EhQC/UYhSyWnRq2UtyvmiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="93650087"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa001.fm.intel.com with ESMTP; 27 Aug 2024 06:08:32 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Aug 2024 14:50:42 +0200
Message-ID: <20240827130814.732181-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724764115; x=1756300115;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bOOr8+ktER/c2B6h2bKZYPgvOLeNv8UOaoUjRIzORKc=;
 b=IYy77XikBTyDLYllgRsLQue6Pw559K/DHYb55AS6RPjFEIX6s5t4GFip
 qfOWiQ4lPc5/tkE96zus2GPwCby5/g4XxEquxuVwaB+izkklVtajokryc
 W+yRI9McbIm2fxoPmon8zbAYw06jSFQXiRaVz5cqPqZCKcr+IDtNt24DH
 h67HoIENMw/CYXtmrvgJcP3zHlOwMgVePju9I0e9I+wxI4QyMeaMLZqCY
 4RbpiRrAerZOOdjw7pJ5oZMThnJ9McxS9Aanq2CN48brhZYKIO1cxtlvE
 Oy/NcIYtmcHcus07mdy5rd2msZQFhdl00A0RqfHPs6AmGoba4orrw9R4+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IYy77Xik
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 0/7] ice: Implement PTP
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
 drivers/net/ethernet/intel/ice/ice_common.c   | 218 ++++----
 drivers/net/ethernet/intel/ice/ice_common.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     |  29 +-
 drivers/net/ethernet/intel/ice/ice_gnss.h     |   4 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  24 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 502 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 403 ++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  42 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 -
 15 files changed, 722 insertions(+), 545 deletions(-)

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

base-commit: 025f455f893c9f39ec392d7237d1de55d2d00101
-- 
2.46.0

