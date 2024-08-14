Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D86C951B6F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 15:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92D7E804D7;
	Wed, 14 Aug 2024 13:09:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qWMgmyK-UCHE; Wed, 14 Aug 2024 13:09:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8415B81C0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723640969;
	bh=rBzTGOm7oxixUpNcEwwM0yMVqN0Pv0Nw975d9Xnk8jU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=enKw/wF68oW8YBPEZfIhWpblxloPzdqA1U1/EGYK/S9Rdc9NKFt/p5DTGfZ/nV4aA
	 VtKmT4BwPDEloREZ2Po8dGDl2X1V3e4e8s3Lm+8DBNknKAkyZLoiDuKummKAc7KkJo
	 C8/kj6xO2qyfngadLw1t5UKXkhp58kU8597pu+fv43wGAMoeyBjB8dVlMy9NPl4Lo3
	 fM1rinbVxqhOeqkMykznRVOCpij1aqH75aERWusuXUdnDHUlHP3LoUOK9Fr2vzSASM
	 kY6b8InBkmHZlpXbA5XIoiWsBQkbEsweOYXqLXmvF7lNzvOQTfTwvA5gp1KXGJKcD5
	 IGnCNRlIpanIA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8415B81C0A;
	Wed, 14 Aug 2024 13:09:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC3F51BF32E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A8BA4608A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:09:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ii5pKsQfG5l for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 13:09:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D64DF6089F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D64DF6089F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D64DF6089F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:09:25 +0000 (UTC)
X-CSE-ConnectionGUID: 3y6TVDj3TwyvIlwS1WJKbA==
X-CSE-MsgGUID: UxF6etEvSNePWVx+s+InFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="25658750"
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; d="scan'208";a="25658750"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 06:09:23 -0700
X-CSE-ConnectionGUID: otCyhaOxSW6oSiIG0AMeug==
X-CSE-MsgGUID: oda8AYmAQ1GmlCsItzhtFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; d="scan'208";a="59009608"
Received: from unknown (HELO kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa009.fm.intel.com with ESMTP; 14 Aug 2024 06:09:22 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 Aug 2024 15:05:38 +0200
Message-ID: <20240814130918.58444-8-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723640966; x=1755176966;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fv69A1X/eE3vo6a3jR5q9++eb855dOB5CZGXNH8LUPs=;
 b=ZZnx1pBOFXs8BJdhSGoLb8GooveOKY9x1eRrPTxawX8sqUb1fIvJFfy3
 SqD6IYLkEEIHtbfGX1vnx6sZmFqQ0yPiqBV2GDH6bgAwvtazhj0v4a7LL
 2UQsDtmzXGGUZdRAvVyxutlLzar55iHNnTKbXTJg2pRtdR0w/wdMpkqlL
 Cqc9dYuFld5/lW+ey78LPewT/csr5XwZV+f8ITV19fgtTCXbyxQKO3m1U
 p5n8gi0MXsTgsJt3y/kpNyUxbMhphJ+tVzGn+74EA+iv+9+NJXuLPRLac
 RHN4kEVFpJpiPJ+up9oTJ8alXw4Un0PhnMkN/MofXYcWeaLJgOxDji6Sc
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZZnx1pBO
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 0/6] ice: Implement PTP
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

Karol Kolacinski (4):
  ice: Remove unncecessary ice_is_e8xx() functions
  ice: Use FIELD_PREP for timestamp values
  ice: Process TSYN IRQ in a separate function
  ice: Add timestamp ready bitmap for E830 products

Michal Michalik (1):
  ice: Implement PTP support for E830 devices

 drivers/net/ethernet/intel/Kconfig            |   2 +-
 drivers/net/ethernet/intel/ice/ice_common.c   | 128 +----
 drivers/net/ethernet/intel/ice/ice_common.h   |  19 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     |  23 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  25 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 469 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 289 ++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  41 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   9 -
 12 files changed, 614 insertions(+), 416 deletions(-)

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


base-commit: 1dc36a5700fae7c147c5a78da10930a36729d14a
-- 
2.46.0

