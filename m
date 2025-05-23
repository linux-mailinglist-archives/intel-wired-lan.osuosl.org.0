Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D48FCAC26BD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 17:48:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58D1060793;
	Fri, 23 May 2025 15:48:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZKKUHUn384eM; Fri, 23 May 2025 15:48:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A60E660BD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748015327;
	bh=JPb4bhq9GBIuPcaHOmNhRLvsqi3Amc2tlhwmzgLHEp4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xIBgCKd2nhGOMcZ2MtP3pBVEAR45pEJRJSpuSDH0vxBBXpp24HhoOJgOr/wRJwctt
	 35ptyc5C0DkHh9Ow67hP1uUhvtO3AwriPs+zEJ41RwZ0lbRwLCvQ2rmZf6qWo2GrAf
	 pUMxHJPNOKJHlnodqZJ1yLG6mFvuBLe3+aXMpNPVrV5T9mMu0Zu7ozhMyxq7BThD/X
	 3Q2ojQ8/2EgE7HgMxsDVcfrCBwmumDAW0WqbjJ5lZ1ORQEWZUC+4StWrpvHrvmzmad
	 uMtT7XE8nvhUAE404qW6DUU8IIaGuazUzqR348czqXFYGu9EfcZtrEJf5zrqhX6wvp
	 QSYjEzfhaD1hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A60E660BD9;
	Fri, 23 May 2025 15:48:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BE5FB68
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 15:48:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB81641052
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 15:48:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yDRGgl5m6oIb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 15:48:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8623F40FED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8623F40FED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8623F40FED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 15:48:43 +0000 (UTC)
X-CSE-ConnectionGUID: WpRwPRVKSEmG2fDDRamMMw==
X-CSE-MsgGUID: 0AGQeJ8qS7WlfV4CZRTk2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="49958824"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="49958824"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 08:48:42 -0700
X-CSE-ConnectionGUID: xzXPFbmHTNCkrBbRevoqjA==
X-CSE-MsgGUID: mZisGr7mQe6xVU9d+kMRVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="141036206"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa009.jf.intel.com with ESMTP; 23 May 2025 08:48:38 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, milena.olech@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri, 23 May 2025 17:42:21 +0200
Message-Id: <20250523154224.1510987-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748015324; x=1779551324;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I/8nEbZdDKb5iEP+4krl9s5DuMYHU9jALA6PtV9CAmA=;
 b=c1sa8VDfhGMRXb6DSR1ex87w5yC25wcvwjar+dEVf7HdzmJUFanT0GTJ
 mt+ugpCb19SgrsMy9AdWLudY6TMsSGeapyly6plY1m7Fm5Z1IPptiDLxo
 qdhWAlrdagOGtpX1Hwzkw8NxuRcxA7iYiHoq9NP3FTIf2xuFmVwHbyYHK
 1+iNGpw9JT3Og7d+b7BLSzgss8tSkjLJUKNyQ9zm1Dbqe9Tz/5cxOA3kR
 +4R1ycb5wW4XyfsJmWF1E6eP4N8LiMwiiYQQFJp8WeRtUNz8Siz7WtdX0
 FJry2/xm6oCyY2UuhbtiythKt2ZkEw9BJV1RqiYXSuMO5lAqUJfcOci4Z
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c1sa8VDf
Subject: [Intel-wired-lan] [PATCH net-next v4 0/3] dpll: add all inputs
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

Add dpll device level feature: phase offset monitor.

Phase offset measurement is typically performed against the current active
source. However, some DPLL (Digital Phase-Locked Loop) devices may offer
the capability to monitor phase offsets across all available inputs.
The attribute and current feature state shall be included in the response
message of the ``DPLL_CMD_DEVICE_GET`` command for supported DPLL devices.
In such cases, users can also control the feature using the
``DPLL_CMD_DEVICE_SET`` command by setting the ``enum dpll_feature_state``
values for the attribute.

Implement feature support in ice driver for dpll-enabled devices.

Verify capability:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --dump device-get
[{'clock-id': 4658613174691613800,
  'id': 0,
  'lock-status': 'locked-ho-acq',
  'mode': 'automatic',
  'mode-supported': ['automatic'],
  'module-name': 'ice',
  'type': 'eec'},
 {'clock-id': 4658613174691613800,
  'id': 1,
  'lock-status': 'locked-ho-acq',
  'mode': 'automatic',
  'mode-supported': ['automatic'],
  'module-name': 'ice',
  'phase-offset-monitor': 'disable',
  'type': 'pps'}]

Enable the feature:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do device-set --json '{"id":1, "phase-offset-monitor":"enable"}'

Verify feature is enabled:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --dump device-get
[
 [...]
 {'capabilities': {'all-inputs-phase-offset-monitor'},
  'clock-id': 4658613174691613800,
  'id': 1,
 [...]
  'phase-offset-monitor': 'enable',
 [...]]


Arkadiusz Kubalewski (3):
  dpll: add phase-offset-monitor feature to netlink spec
  dpll: add phase_offset_monitor_get/set callback ops
  ice: add phase offset monitor for all PPS dpll inputs

 Documentation/driver-api/dpll.rst             |  16 ++
 Documentation/netlink/specs/dpll.yaml         |  24 +++
 drivers/dpll/dpll_netlink.c                   |  69 ++++++-
 drivers/dpll/dpll_nl.c                        |   5 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  20 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |  26 +++
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 191 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   6 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   4 +
 include/linux/dpll.h                          |   8 +
 include/uapi/linux/dpll.h                     |  12 ++
 12 files changed, 379 insertions(+), 5 deletions(-)


base-commit: ea15e046263b19e91ffd827645ae5dfa44ebd044
-- 
2.38.1

