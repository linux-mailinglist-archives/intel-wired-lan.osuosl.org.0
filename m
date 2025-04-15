Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E07A8A6A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 20:22:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58D8C40BAD;
	Tue, 15 Apr 2025 18:22:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6pScCcXrQ93D; Tue, 15 Apr 2025 18:22:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A06CB40742
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744741355;
	bh=nEdIThi143D5ggTRUbDVAt4rkV6aRwzJH977b8KYW0w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5chtPEyRGdSiOiVyKS74bIDGmTfOiZoisWCp01piSjiQc9dxamAFD6AJwmC9Ros7l
	 ExfUrSwnp2Ll9RfIQWTltrEXYNOeyZ1qIpQKfcpVv1hWQDOnLLm+uzwaLGztEUMmzj
	 ERPmaVZEdaxiVyuNzyuO+tzSGwzPxEsDzsGwfvgBW9Nt8lrwjHtEtReo0kNxePjGXY
	 +tjfQQhzQJf82rLWcfa2QbYQbW/cLLrKprSJ6CQHQUegoyq7o10yew61IzJYtnu+r5
	 RpHDo/WntPaUwpDC52tjiqj6e7FZOx6803aZluX1tp+Rccky0JGt4Ub7cTTEEVXDyY
	 9TnLFt776BEcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A06CB40742;
	Tue, 15 Apr 2025 18:22:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 165EE200
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EECC380D2C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:22:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uSTHXKBBDNRB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 18:22:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 21FA380CC9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21FA380CC9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21FA380CC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 18:22:32 +0000 (UTC)
X-CSE-ConnectionGUID: Y05KDGtTQtWKHWQqAC26ig==
X-CSE-MsgGUID: SFaMr1AQRZeGQiQkuKI9Cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="45981190"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="45981190"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 11:22:29 -0700
X-CSE-ConnectionGUID: +z+arMk5Sjei11MzrSuWfQ==
X-CSE-MsgGUID: MD5N2tu/Q7SjEDDr4ACyUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130512705"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa008.fm.intel.com with ESMTP; 15 Apr 2025 11:21:25 -0700
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
Date: Tue, 15 Apr 2025 20:15:39 +0200
Message-Id: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744741354; x=1776277354;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ACsz5+px0bR6kQmYG2+nzuzYCELnwAOWmMaj7t8P0E0=;
 b=Rq142pqmOnqFBw6EaECfvDzB+bHz+tzZLSqkVzgG3SBsukAypU3h6ARg
 8jzo/iWJlo0/q46YFjbmS2ja8cKCAHd24CRUDM90QD9JlZzPXNkEsGr5s
 oaCXVr2d6LHIW36cmNVlxsQ0Z1Xtjsdigr5kAMQP0BFC3uR8QxwHgYUAc
 FVBHZWQK5iGsI/neSqjKpU4dCRJI40mEcI5swWqOikUW0zh/I7piXb5P8
 nFz8uo9884OuB2bnj1spJvnycA/Cu2YaZgN/s3s5vtnc8NWpotoxktTnG
 q+2hbpVtaFNuNds5RrIZkcfnU3iNAu77NxqBgTgA7pmqoOPpX3hH5lqTG
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rq142pqm
Subject: [Intel-wired-lan] [PATCH net-next v2 0/4] dpll: add all inputs
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

Add simple dpll device level feature and capabilties infrastructure over
netlink dpll interface.
Using new infrastructure add new feature: ALL_INPUTS_PHASE_OFFSET_MONITOR.
Allow users control with two new attributes:
- DPLL_A_CAPABILITIES - for checking if dpll device is capable,
- DPLL_A_FEATURES - for enable/disable a features.
Implement feature in ice driver for dpll-enabled devices.

Verify capability:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --dump device-get
[{'capabilities': set(),
  'clock-id': 4658613174691613800,
  'features': set(),
  'id': 0,
  'lock-status': 'locked-ho-acq',
  'mode': 'automatic',
  'mode-supported': ['automatic'],
  'module-name': 'ice',
  'type': 'eec'},
 {'capabilities': {'all-inputs-phase-offset-monitor'},
  'clock-id': 4658613174691613800,
  'features': set(),
  'id': 1,
  'lock-status': 'locked-ho-acq',
  'mode': 'automatic',
  'mode-supported': ['automatic'],
  'module-name': 'ice',
  'type': 'pps'}]

Enable the feature:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do device-set --json '{"id":1, \
 "features":"all-inputs-phase-offset-monitor"}'

Verify feature is enabled:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --dump device-get
[
 [...]
 {'capabilities': {'all-inputs-phase-offset-monitor'},
  'clock-id': 4658613174691613800,
  'features': {'all-inputs-phase-offset-monitor'},
  'id': 1,
 [...]
]

Disable the feature:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do device-set --json '{"id":1, \
 "features":0}'


Arkadiusz Kubalewski (4):
  dpll: use struct dpll_device_info for dpll registration
  dpll: add features and capabilities to dpll device spec
  dpll: features_get/set callbacks
  ice: add phase offset monitor for all PPS dpll inputs

 Documentation/netlink/specs/dpll.yaml         |  25 +++
 drivers/dpll/dpll_core.c                      |  34 +--
 drivers/dpll/dpll_core.h                      |   2 +-
 drivers/dpll/dpll_netlink.c                   |  86 +++++++-
 drivers/dpll/dpll_nl.c                        |   5 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  20 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |  26 +++
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 195 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   7 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   4 +
 .../net/ethernet/mellanox/mlx5/core/dpll.c    |  10 +-
 drivers/ptp/ptp_ocp.c                         |   7 +-
 include/linux/dpll.h                          |  16 +-
 include/uapi/linux/dpll.h                     |  13 ++
 15 files changed, 417 insertions(+), 36 deletions(-)


base-commit: bbfc077d457272bcea4f14b3a28247ade99b196d
-- 
2.38.1

