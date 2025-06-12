Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B009CAD7648
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 17:34:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 632F240895;
	Thu, 12 Jun 2025 15:34:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N0PiIVRnFOc4; Thu, 12 Jun 2025 15:34:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C713640898
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749742480;
	bh=d6WHWglejUIDmaNE4pobRgfHl8xPq7g9FJrzed63os4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=R5HZq8uTjTKNtG95jCXr7G86RkfnLP0S3SgWPRid7a4R9+pbltN2kesZU4t22/Fdh
	 9s4ho0QC7uOmMuKTwv2oaehkcnKBFgHupxCZ+R1j9rUbgseX04mD72jNtBXyj1P7/C
	 Rp3jTf5g/Q5gl85mULx0CSMx2zBrHviTfnitJvam8XPnqiLJrIajns0t71ngmPcbCa
	 TE7crkTCI5bYmcxpPN7SX651zeo9TCYIuKF4AWpL4O8vkzym9hI2QlOzIOffgNGDh3
	 0EeE0pwSYW5lvFGDoEd5qFpHbhMPJURU0oHhr1/sXiGgHYxGv9xSMpTZ+55qdsS94S
	 7wuLUEplr7AAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C713640898;
	Thu, 12 Jun 2025 15:34:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B403D183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 15:34:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AD2D40029
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 15:34:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id brLBrXTYlyGO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 15:34:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D731C400D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D731C400D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D731C400D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 15:34:38 +0000 (UTC)
X-CSE-ConnectionGUID: 7D9FH5ovQKCJBo7vgBXwlw==
X-CSE-MsgGUID: zHwlaP71ThSq2hZhdvf+nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51158628"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="51158628"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 08:34:38 -0700
X-CSE-ConnectionGUID: KQxa3/YaTiaVpno21ucPrw==
X-CSE-MsgGUID: 0RPavKa+QLyIObq2Twog7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152546791"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa004.jf.intel.com with ESMTP; 12 Jun 2025 08:34:33 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, milena.olech@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Thu, 12 Jun 2025 17:28:32 +0200
Message-Id: <20250612152835.1703397-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749742479; x=1781278479;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kgz7hkjs7V+1CTp7FE7nxkTThIrJ7WPiUY0Og7QBt6s=;
 b=fv2yf8lf1zBIqIJl6z8W7+pahLoccF1UNEBs2j7tNmstiqnNY6j1cmsx
 5uA2wn/Nk0WZOmL8J32Fd61wMLKKN2JYQRGQPd8YutjR4YBxuQzTRmyVQ
 1S653/uGZ+zggLa1xirJtSiag1fCX+f8ek1ny+NdGUEVig+VyPoL2wKgI
 BQSBaovNeYREuR42McnccoHA1JMQWmU5l9TUHp2BT2yw2Q0GjPCfN6qcf
 UdGVWLQRUyYLVSHaG7uTbAEIXiYrUWFz2cp//jCkEWlnCdOc/qdQSrQY5
 4hhrgW40gNBkSb8uVZRIQb18vpyQnjrnk+SSsN+Y6iSAYvVYiENcJmudJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fv2yf8lf
Subject: [Intel-wired-lan] [PATCH net-next v6 0/3] dpll: add all inputs
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
Once enabled the phase offset measurements for the input shall be returned
in the ``DPLL_A_PIN_PHASE_OFFSET`` attribute.

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

v6:
- rebase.

Arkadiusz Kubalewski (3):
  dpll: add phase-offset-monitor feature to netlink spec
  dpll: add phase_offset_monitor_get/set callback ops
  ice: add phase offset monitor for all PPS dpll inputs

 Documentation/driver-api/dpll.rst             |  18 ++
 Documentation/netlink/specs/dpll.yaml         |  24 +++
 drivers/dpll/dpll_netlink.c                   |  69 ++++++-
 drivers/dpll/dpll_nl.c                        |   5 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  20 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |  26 +++
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 193 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   8 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   4 +
 include/linux/dpll.h                          |   8 +
 include/uapi/linux/dpll.h                     |  12 ++
 12 files changed, 384 insertions(+), 6 deletions(-)


base-commit: 5d6d67c4cb10a4b4d3ae35758d5eeed6239afdc8
-- 
2.38.1

