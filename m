Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C27D5AAF9DA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 14:27:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 676E760F0A;
	Thu,  8 May 2025 12:27:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5_ZHv9lilFia; Thu,  8 May 2025 12:27:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0D9360F3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746707247;
	bh=JBIBGFsCPQhb61wqsi23UkNh2bVt2g+Dj3V2BxO/JFc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cuuhtaFDVrKM8feIns1uHMJQRHo/P6tcvK7RmcfKMdMcy1yox197jHUIUAAlFd7Jb
	 Ww41hxVCbFZyH5r6ETPialXRzMoKG1ZmHIDZ94N+/hzaWVxqD6w29XsLTQclFuV0lj
	 Xttag5Et3xrzK6UXHqP08Jp1MbMPiH2MIin+RzLux1t5ApjZbFkchXnJ434e3+TylI
	 UAKMu19+vZWjv7DSDyC1YQukMKTbPQCvybD5bsSsoMqXxeLGC7nF6+T+UM1gSjuNjx
	 mipAJlMNtLW4QShNBMDrNEru/0Y3wFzBKbRgqWs89esOQS8eC9k0LrmcRQVoriG2w/
	 mPEMNA1rq4rRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0D9360F3B;
	Thu,  8 May 2025 12:27:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5BA80439
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 12:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4162D40D81
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 12:27:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Z0yfhi3jaxh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 12:27:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7802B4026F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7802B4026F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7802B4026F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 12:27:24 +0000 (UTC)
X-CSE-ConnectionGUID: qWw62Ez8RjqQ6ko3xO8Wbg==
X-CSE-MsgGUID: DvyuFCKsSY25pAvlxiOpzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="36115105"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="36115105"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 05:27:25 -0700
X-CSE-ConnectionGUID: 65W7j38jRyO6Pv3w4+EBiA==
X-CSE-MsgGUID: fsyGWW4PQO+5/tmgOs6e+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="136772854"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa010.fm.intel.com with ESMTP; 08 May 2025 05:27:19 -0700
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
Date: Thu,  8 May 2025 14:21:25 +0200
Message-Id: <20250508122128.1216231-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746707246; x=1778243246;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6GjyiTfn5SI4PebBO0uNWjR6eASjOV4bUgJNv0Jed3A=;
 b=cEirMRz+dMFInS5yQZeXtQcVOoD7NsOo3UDTVBIjttS6R32pLp6EqhfC
 QDWIzX4Ac+1zoDmYE8B4nPk5lk1KbyY8bdljJgBNOaC5fTduQ3oR3CMG0
 NXOpC97QCDYV1uG2GlL8LuMlWxWMawlXUY6AMND9SAWiFTr078XpjuJEK
 lKWcVh3bSvJidB8WC64JLqBmqNDrJCd8khkAyeRrq3wB6Ng1qvNPMO7p1
 Gtjh5e3CB09JHhHtcsa/O2zlhaml5/qmSwMGalJU5du6J5lzlBXGozoL3
 A7xlGJuYhlisIzNgX/BVVkMoFwcLQOq9f5p7+gYXztcLFEitruzH/Mspt
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cEirMRz+
Subject: [Intel-wired-lan] [PATCH net-next v3 0/3] dpll: add all inputs
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

v3:
- removed patch 1/4:
  "dpll: use struct dpll_device_info for dpll registration"


Arkadiusz Kubalewski (3):
  dpll: add phase-offset-monitor feature to netlink spec
  dpll: add phase_offset_monitor_get/set callbacks
  ice: add phase offset monitor for all PPS dpll inputs

 Documentation/driver-api/dpll.rst             |  16 ++
 Documentation/netlink/specs/dpll.yaml         |  24 +++
 drivers/dpll/dpll_netlink.c                   |  76 ++++++-
 drivers/dpll/dpll_nl.c                        |   5 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  20 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |  26 +++
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 191 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   6 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   4 +
 include/linux/dpll.h                          |   8 +
 include/uapi/linux/dpll.h                     |  12 ++
 12 files changed, 386 insertions(+), 5 deletions(-)


base-commit: 46431fd5224f7f3bab2823992ae1cf6f2700f1ce
-- 
2.38.1

