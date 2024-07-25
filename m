Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE4293BF31
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2024 11:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E4F860A50;
	Thu, 25 Jul 2024 09:39:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yHcn2Q9GU6fA; Thu, 25 Jul 2024 09:39:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7204E60A52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721900398;
	bh=TSnE+yLgbq7e8X4gSQFvIQsF4Ecnwd538nPX+EP3EJc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=v3CEYDPT9xpRqIPm7zSQxD26VD7EP75SP8G/v2NNzNLLE7GQiR0Lq26OUxrcmdLwC
	 jFdOzfvzlJNrmg7fRk+TWSET3AjxgGcfaJMg6KwuKd+ORQtc9x0WhBy62hFD9L1kkk
	 4Vs8zO1RKrqdmN1SL8rpZNpxZHhC5xitZu5MGZUmXfnZk1I2asgd3+VuIf5zMUWCSL
	 wqmlOalU7O3YsoCrYJdKvP5AU91AmaKg7ehGxIHMNuWGWq3WLvHFnDjVevYNcilCyf
	 eWHFurFFxadHMejdzC3zMHo84W5DJKpjVHlmM2hlJJwq3Oi4eJKIIixibBSRAzQhBp
	 Yg4XzloNyfBRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7204E60A52;
	Thu, 25 Jul 2024 09:39:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D94D1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B50A60A50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sFlwgXjo_Crc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 09:39:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 394B460851
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 394B460851
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 394B460851
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 09:39:54 +0000 (UTC)
X-CSE-ConnectionGUID: CLj0C4bcSUiDV17pFwPgEA==
X-CSE-MsgGUID: js92mywCSUeNDaFz3aRTqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="12707090"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="12707090"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 02:39:53 -0700
X-CSE-ConnectionGUID: R9eXoyA9Q7CTKXbDutv56Q==
X-CSE-MsgGUID: Oe1qJPIkTOyAYJk4Gs5pWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="57170843"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by fmviesa005.fm.intel.com with ESMTP; 25 Jul 2024 02:39:48 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2024 11:34:47 +0200
Message-ID: <20240725093932.54856-6-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721900395; x=1753436395;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KapfvudN6qowP+CmN1qoLY2G78wBaetCRp+8Y2atz6M=;
 b=RBZV1AFSswplhdnCMGBAP+FgSiqn1wyK4SBM2H/3uDCjA4ATsRh+Ab+R
 Xa+yHfhGKhV9KuY1vSm1RXayFq/2bX4S4PwMr+K5BIy5AKzRq0D9zOuDM
 jvfdYv/Le2jookzUKcsup5wfl1YxCtdYmW+1I5mB/PQAKZBGwNasN4AgV
 SIIn7BkyvgIrqf4Prd6uVU8YqLNc9dC6lsZoKjnSs+K5qWEKZCuMRDsVz
 cm6Av+k9IciuF5f0lkVLA5E/r2i5uVaf0DV7T69dDnGCtksttGz6vYfZL
 e/Y03HlIPW79f9rmLYgj2x32aruBln9NQCpI3lR/uOdS7F6CR5tmk5cgB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RBZV1AFS
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 0/4] ice: Implement PTP
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
 drivers/net/ethernet/intel/ice/ice_common.c   |  13 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  25 +-
 drivers/net/ethernet/intel/ice/ice_osdep.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 356 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 199 +++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  25 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 11 files changed, 497 insertions(+), 157 deletions(-)

V2 -> V3: Rebased and fixed kdoc in "ice: Implement PTP support for
          E830 devices"
V1 -> V2: Fixed compilation issue in "ice: Implement PTP support for
          E830 devices"

base-commit: 0942d0846f6305b3ac645a7294470df8fe6c3dd0
-- 
2.45.2

