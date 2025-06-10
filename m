Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE36AD2D93
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 07:59:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FA1F61436;
	Tue, 10 Jun 2025 05:59:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VJnryC5wp52R; Tue, 10 Jun 2025 05:59:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47C40613BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749535177;
	bh=3eCA/HUcaUeq+SvZmiBziJG0LjPgF5Jo+S6kJwUBauY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JapkOCuNdUEqOZFL4UG9OlYEplEynkeh2N7ljt+j3riZZ9Qqby12C5nvqaH9ANxEJ
	 xKLnMdSzijMO/1GPr1c8qEeSzCt8h+QfEhb9Oljuxuc9VKygbZOjqjSs0GkVm3iKHP
	 cFYCOnJfJx4a/pEQRBL/6O96hPwyHpUiCh20DMwV8j7d+RkR0LiUFe51ygNNjYVDKH
	 YK35qzLLYuj0f2t+W6uPPm4KvHK3Woy4S0Do+nnc3uCQRIE300eRwMlJCwE8rjSLs7
	 2vtTAEmc+Z73DBVsBg21UDGN4upifldLzWY8EphApL3u9gsxbwpifgluxOuUUbbqJ9
	 alDr5GgKUymwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47C40613BB;
	Tue, 10 Jun 2025 05:59:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E8E29CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 05:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB34E83AF3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 05:59:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WkKggin02luy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 05:59:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 28AF883AE9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28AF883AE9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28AF883AE9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 05:59:34 +0000 (UTC)
X-CSE-ConnectionGUID: OYt4EBJqQ7ypWqU1BN6bMQ==
X-CSE-MsgGUID: I1tLDAswQu2WrnuI6bFa+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="54259741"
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="54259741"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 22:59:33 -0700
X-CSE-ConnectionGUID: EyuGwZh2Sya+M30xd/4YVA==
X-CSE-MsgGUID: xERKnBY6RpyTmuPKsAAnNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="147241727"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa010.fm.intel.com with ESMTP; 09 Jun 2025 22:59:29 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, milena.olech@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue, 10 Jun 2025 07:53:35 +0200
Message-Id: <20250610055338.1679463-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749535174; x=1781071174;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BYCNhUItMwlAi9JwxLtjlPoN9bZQoeg3M40zw0F2pLs=;
 b=MBZ2pXA8qMiqwyHVXYajt8WVYaiy1I3UhRalAyBstEgBmM3oh7LDa8Pv
 2yYBkC0gTlDMzOd8IDd9fd1TZrkMrqz3nE9/70EFotltxYVROIVHmz/7Q
 EvP2WsGIOSYZJF1vuNaw3315tDfh9zVzsbxY6uV2GV/h6r4txQ6ZBToy+
 tzu0/zAcbG10kihP228UUZWZeEa7S+OLV+HuiYWXuy5hTpONG9rm+t3jU
 Zlry5AgnwXNb6hzazIwMIKvJbUobki97RupaFw+0u3iPPiDw6tE6XVfZi
 MEyu68SUzRnhAHh1bpcAy+XFNzY29hvNeKRDkroz0u03pkSh7gpu8CemD
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MBZ2pXA8
Subject: [Intel-wired-lan] [PATCH net-next v5 0/3] dpll: add all inputs
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
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 194 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   8 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   4 +
 include/linux/dpll.h                          |   8 +
 include/uapi/linux/dpll.h                     |  12 ++
 12 files changed, 385 insertions(+), 6 deletions(-)


base-commit: 2c7e4a2663a1ab5a740c59c31991579b6b865a26
-- 
2.38.1

