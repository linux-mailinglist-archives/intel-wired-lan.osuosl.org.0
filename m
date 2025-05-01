Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F00AA666F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 00:54:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B05BF610C1;
	Thu,  1 May 2025 22:54:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DsxvK8iSfcIO; Thu,  1 May 2025 22:54:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E44A660764
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746140074;
	bh=AuUQl1osBb6CFpTktYR5nZ51xYHh1q9XVsSzbl82eRg=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xWZ1Eum8NeC/D4mWCw7TYx+8/APUIOVwwOFLtv/vSo4WI0Ofl1whBVL9GJ5Hcxemf
	 MWg/a+MF9pisib+BDthm+1WOSYXiD2oyWhDDy6vQ6CfMuxRTyJgRVbQE7SXfSWgvxb
	 Q9EMKcEyAExdMXUzi6z9d8P3Kqcbar0Vv0i+wHVtmSGWUFRxZFah6jexttOPmdqu9d
	 RBvVDJTnNzaiQ4H8ei8HAJKk2dgi0tmvdUBKHWakex2BGHW0MYyhG9qjoqAX0qsWAb
	 MK8DclaESr8vyWreYOIgvvwGDM5RFW3lbQ0RatiYA8j89pbp/BL2i1IPmVhoMa0wCD
	 oVljDAFfwFD0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E44A660764;
	Thu,  1 May 2025 22:54:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4304DE4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 26B1183C79
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QA1Hcocalg2d for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 22:54:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D40CA83C36
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D40CA83C36
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D40CA83C36
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:31 +0000 (UTC)
X-CSE-ConnectionGUID: wJQU0EfjRJ++wjWlV9fnXA==
X-CSE-MsgGUID: pSuC3pZ6Si+Lfdx7huyymw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58811700"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="58811700"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:31 -0700
X-CSE-ConnectionGUID: /NoSdGhbTsapKidFYHIG8g==
X-CSE-MsgGUID: OXh18hciQ4qvDmN26cLnBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="138514267"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 01 May 2025 15:54:11 -0700
Message-Id: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJT7E2gC/4WNwQ6DIBAFf8Vw7jaIVG1P/Y/GA+qqGxEMENLG+
 O9F03tvb95hZmMeHaFnj2xjDiN5siaBvGSsm5QZEahPzAQXNy7zCuYZgl+1BlpWZyMuaIIHpWk
 0xwTRtbyqVT/cy5wly+pwoPdZeDWJJ/LBus8ZjMXx/twF/+uOBXBQbS0rgXUpuHySCaivnV1Ys
 +/7FztdYIjOAAAA
X-Change-ID: 20250417-kk-tspll-improvements-alignment-2cb078adf961
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Milena Olech <milena.olech@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746140072; x=1777676072;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=npbzd8YVDzReRS2nEhdUgTqdeSXEFuHyZrYqC+awAy8=;
 b=d92pQjhqgnj99sw64MK9508/K5OBWZVdg++gb5Li7TfHO1zjpbYOGMiy
 L6Lad+L9KYEG/nOgzeD0VKUgzjjmF7ojiyE1AuKUMu5AfnXjtB6Jl7mzC
 rVjbTQYwCLJ90G8JNFV/cWTluCXaqY5tjd+gmcK/oooCzOqtdOVzJz+CY
 u3aUCP54MaQUw8iOQcH5UJYKly5XRf4QYscluXnDlR5m8B0TGUJzoGOT9
 g1kb/YWaeCFJFj8RTfYMRdFT/n33QqaWzhwhu95FJ1OH3hLN19FdR5ogy
 13vH/QQchSDA1I0PTIUSo80ftW1ivbOmNUqsQYJjiZ0P3xUrt0AsiF1SI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d92pQjhq
Subject: [Intel-wired-lan] [PATCH v4 00/15] ice: Separate TSPLL from PTP and
 clean up
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

Separate TSPLL related functions and definitions from all PTP-related
files and clean up the code by implementing multiple helpers.

Adjust TSPLL wait times and fall back to TCXO on lock failure to ensure
proper init flow of TSPLL.

Change default clock source for E825-C from TCXO to TIME_REF if its
available.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes in v4:
- Rebase onto Intel Wired LAN dev-queue
- Restore use of string choice helpers
- Restore use of ice_debug()
- Improve title of commit to change the default clock source
- Link to v3: https://lore.kernel.org/r/20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com

Changes in v3:
- Add SPDX headers to new files
- Fix .dest_dev assignments in patch #1
- Drop accidental re-sizing of e82x misc15 field in v2 #2
- Split v2 patch #6, with behavioral changes in new patch #3 and #8
- Split v2 patch #3, with removal of E825-C array to its own patch #4
- Fix kernel doc warnings
- Add a patch to also update the default E825-C clock source to TIME_REF
- Link to v2: https://lore.kernel.org/intel-wired-lan/20250409122830.1977644-12-karol.kolacinski@intel.com/

---
Jacob Keller (4):
      ice: fix E825-C TSPLL register definitions
      ice: clear time_sync_en field for E825-C during reprogramming
      ice: read TSPLL registers again before reporting status
      ice: default to TIME_REF instead of TXCO on E825-C

Karol Kolacinski (11):
      ice: move TSPLL functions to a separate file
      ice: rename TSPLL and CGU functions and definitions
      ice: remove ice_tspll_params_e825 definitions
      ice: use designated initializers for TSPLL consts
      ice: add TSPLL log config helper
      ice: add ICE_READ/WRITE_CGU_REG_OR_DIE helpers
      ice: use bitfields instead of unions for CGU regs
      ice: add multiple TSPLL helpers
      ice: wait before enabling TSPLL
      ice: fall back to TCXO on TSPLL lock fail
      ice: move TSPLL init calls to ice_ptp.c

 drivers/net/ethernet/intel/ice/ice.h            |   1 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h   | 181 --------
 drivers/net/ethernet/intel/ice/ice_common.h     |  58 +++
 drivers/net/ethernet/intel/ice/ice_ptp_consts.h | 177 +-------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h     |  54 +--
 drivers/net/ethernet/intel/ice/ice_tspll.h      |  31 ++
 drivers/net/ethernet/intel/ice/ice_type.h       |  20 +-
 drivers/net/ethernet/intel/ice/ice_common.c     |  71 ++-
 drivers/net/ethernet/intel/ice/ice_ptp.c        |  14 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c     | 564 +-----------------------
 drivers/net/ethernet/intel/ice/ice_tspll.c      | 518 ++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/Makefile         |   2 +-
 12 files changed, 712 insertions(+), 979 deletions(-)
---
base-commit: e3945f0d3dac6bf6231a5501766c3614cd6f7f45
change-id: 20250417-kk-tspll-improvements-alignment-2cb078adf961

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

