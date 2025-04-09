Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F46BA82A65
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 17:31:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A68AF40E5A;
	Wed,  9 Apr 2025 15:31:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zZEO5LqJfq3w; Wed,  9 Apr 2025 15:31:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BA55403FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744212716;
	bh=BtRUQamDV4SnFRVbvbpFf1ADBtUFQJeEw2ycPZujLn4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oRB7yO4q3kwwTLWzOF+DUgGORBpd5KmK7DGQNZ1jmj8Apl7YCeat2Rj1psGKGqoLj
	 5Gl/Aa/xJr9UnGyEjlP+/lIck+BvXfOgRqPikLDGl14dnh5dBelQpVSrIsQ4WBgYar
	 Zkf/8qJWbX/KvrUChXWlYa0s5GsRFXOnXWMcvOxTEjcgSYXLLfjXrxRHKjzBFof2x7
	 hbMHzKkrpfx7DteUTj2yrh2HNjHRuVdP5gmJLxSz1PvTD9MG6L4JyYSar1FJRITV0/
	 TA62KRTtaAqwX/+7pB3rYDX4Cd6yS572uPhCRNVUs5ucWvUkmixFEzmbzcj8JZmR2q
	 cRFNUgWz3WsXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BA55403FC;
	Wed,  9 Apr 2025 15:31:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CFF2D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CFBC60A3A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:31:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dusev1g557wm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 15:31:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 88E04600C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88E04600C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 88E04600C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 15:31:53 +0000 (UTC)
X-CSE-ConnectionGUID: 2nyHICN+SUihq+jaMHaM/Q==
X-CSE-MsgGUID: W40aMXFqQriZpmBMt6DSAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="71072087"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="71072087"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 08:31:53 -0700
X-CSE-ConnectionGUID: 31pjvctNTSOH6O3KCL536Q==
X-CSE-MsgGUID: qgtNr2MDS+6UjXITr6JEmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="151795982"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa002.fm.intel.com with ESMTP; 09 Apr 2025 08:31:49 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, saeedm@nvidia.com,
 leon@kernel.org, tariqt@nvidia.com, jonathan.lemon@gmail.com,
 richardcochran@gmail.com, aleksandr.loktionov@intel.com,
 milena.olech@intel.com
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Wed,  9 Apr 2025 17:25:54 +0200
Message-Id: <20250409152558.1007335-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744212714; x=1775748714;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0x1dvjO2FZF9lCAIOsZJnj7gZRIyKdsq/t4wPmc2CzQ=;
 b=BewS2i+k3PSEnIf0L9Ppy3rfZqSIvzV6OVvPllXyGd6hPIQ6TseaH4Vd
 xJ8uEzY8EqbAQzWXNKvCgj+8EmjZSFVFls1dlOoBJc8UY7UxEsja9/DBW
 IH1TPTxqUdPtL7CSh54C9qjl8n/t2vJgANk7tl0MKceLf16a3tcenlaMo
 XXeoSW5Xb4wlEWNnF09W1v/bXNwnB6NwJoR1d1WuU1yklwzitx4guRNnh
 Ly5zpThdc5Jf53lWSRSljr8EysKPKt6o9e25fX5IWUSTymbvzf2FrL+ct
 SQizg0gciGxaD/S5tBUmpZiNP+PKiEggHzQN9GhEGdV4IWH8nJ48LC2//
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BewS2i+k
Subject: [Intel-wired-lan] [PATCH net-next v1 0/4] dpll: add all inputs
 phase offset monitor
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

Add simple dpll device level feature and capabilities infrastructure over
netlink dpll interface.
Using new infrastructure add new feature: ALL_INPUTS_PHASE_OFFSET_MONITOR.
Allow users control with two new attributes:
- DPLL_A_CAPABILITIES - for checking if dpll device is capable,
- DPLL_A_FEATURES - for enable/disable a features.
Implement feature in ice driver for dpll-enabled devices.

Arkadiusz Kubalewski (4):
  dpll: add features and capabilities to dpll device spec
  dpll: pass capabilities on device register
  dpll: features_get/set callbacks
  ice: add phase offset monitor for all PPS dpll inputs

 Documentation/netlink/specs/dpll.yaml         |  25 +++
 drivers/dpll/dpll_core.c                      |   5 +-
 drivers/dpll/dpll_core.h                      |   2 +
 drivers/dpll/dpll_netlink.c                   |  78 +++++++-
 drivers/dpll/dpll_nl.c                        |   5 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  20 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |  26 +++
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 188 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   6 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   4 +
 .../net/ethernet/mellanox/mlx5/core/dpll.c    |   2 +-
 drivers/ptp/ptp_ocp.c                         |   2 +-
 include/linux/dpll.h                          |   7 +-
 include/uapi/linux/dpll.h                     |  13 ++
 15 files changed, 374 insertions(+), 12 deletions(-)


base-commit: 420aabef3ab5fa743afb4d3d391f03ef0e777ca8
-- 
2.38.1

