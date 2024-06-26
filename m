Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A97F91817C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 14:56:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3238060BB9;
	Wed, 26 Jun 2024 12:56:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vMYQXPg4avuj; Wed, 26 Jun 2024 12:56:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E37560BCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719406580;
	bh=Q6KgkmQeOSuVVXiS3LbqcS3xM66A3hSjbEnPzwfJ4Y8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LHb90mWeRQFHpM5mUmrsNXZ1xeQZdsDk/ZaaD1vDijZBJYQK+ivsggIggfet+vffR
	 cCefDx+Wrl7JPXF4CTwx0Ab0ZhmfvDfv4OGgIBKpxlhABMcMSMAF8YH+wRmfNp9vfV
	 OHGUyhoIDN7dYhZ+WXgfq7SNGmC2U1Hoek5FixHB5trb6Xl8+9nBiLKeBM5P0861tt
	 Bp2v559UKCxiswqOfPcGbNbxs9hmVDNERzuWcdA0ahlpwdXSiaCaNNd1YsPI3cvdq6
	 Xa5BzgOpBmFwgaIaQWjePjDKRwfQEUPJO47c2z7hzoBMG7cI6YY3rLnq6+ZVQbUMGp
	 pbAZnT6uR83zQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E37560BCF;
	Wed, 26 Jun 2024 12:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C3AB1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6613740275
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NbUIanqQgXFG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 12:56:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4CEC34016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CEC34016B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4CEC34016B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:56:16 +0000 (UTC)
X-CSE-ConnectionGUID: IPuu1xr0QHSC2yvlfgYvnw==
X-CSE-MsgGUID: a7NFcRtvSPiI/HN7p1jkLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="16158098"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="16158098"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 05:56:16 -0700
X-CSE-ConnectionGUID: opfgUuZ/RZCfUsj+V/yywA==
X-CSE-MsgGUID: xc1pVhtoThqISx/PVGX9uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="48594629"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa004.fm.intel.com with ESMTP; 26 Jun 2024 05:56:15 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2024 14:54:52 +0200
Message-ID: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719406577; x=1750942577;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4dDZAtv/P+cz8g4CQVaX7gFO4RWR7K7m4WW1uqJlRBk=;
 b=HgKPni5B8nIDethzVlY2z5b2ZBMcDWDlBZnVUz0Yyh6vrvWe33K8YHRm
 IuKOi4295vwofZOEGoNXD9S3X/NLM4vr54FZi07eXDWegp3y1PNIqKbO0
 mvCLib3Zf3a3nafUIKBrk8MgT4L/rmp4sawqvS2wztcpEPQeBJlz4f7nG
 BQ+56rQBsWooNGtjCqot6KEJ+FlKL1nZjUTDOJKMnDyR9Ptppjl84EkTI
 kQ6te8vuJZVaPA5K8u1N+0QgCo4lfaeZ8kCYGZMgUXmfLZo40P5hGp6XM
 Vs3uUX4SyeHHJZ3LPE+a4B1LBh1rT99w1gU1VorUkUbvf5y8H8PT6Rmua
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HgKPni5B
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/4] Replace auxbus with
 ice_adapter in the PTP support code
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series replaces multiple aux buses and devices used in the PTP support
code with struct ice_adapter holding the necessary shared data

Patches 1,2 add convenience wrappers
Patch 3 does the main refactoring
Patch 4 finalizes the refactoring

Previous discussion: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20240624/042430.html

v1->v2: Code rearrangement between patches

Sergey Temerkhanov (4):
  ice: Introduce ice_get_phy_model() wrapper
  ice: Add ice_get_ctrl_ptp() wrapper to simplify the code
  ice: Use ice_adapter for PTP shared data instead of auxdev
  ice: Drop auxbus use for PTP to finalize ice_adapter move

 drivers/net/ethernet/intel/ice/ice.h         |   5 +
 drivers/net/ethernet/intel/ice/ice_adapter.c |   6 +
 drivers/net/ethernet/intel/ice/ice_adapter.h |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 337 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  24 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
 7 files changed, 112 insertions(+), 309 deletions(-)

-- 
2.43.0

