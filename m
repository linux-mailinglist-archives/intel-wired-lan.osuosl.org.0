Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C49BAD95F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 22:13:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A43940963;
	Fri, 13 Jun 2025 20:13:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UKM5-IhGl5NP; Fri, 13 Jun 2025 20:13:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9738E40886
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749845584;
	bh=kEJJ62beQPVIpApYuhk6qNoAkrlQO6i+zJEv8Vmpzrg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xS4PNA49Nv67d/TYDn8CI61ZZD+90ME1we1bg1b8YdUYxt4b5M5rmnIFhQwOBBbkI
	 XdQjj4Wnoy67PmOFdPyVWuJxIs2OM8pEqhmag0zGAcqhEw/Gnvt+kP2fV61rCqgLTi
	 J0qf0sMdFbUiB4PTDryin3hzZY8wwrz2wM/RYP5ehG5oU1L7yN6KP/kyrC2OxenQkt
	 r9WzLELGVY5K+oJzvGGiSapwf6aMELmFIWt7vpxRg6Nvj6HocGxaFVgE1Xe3myjqxz
	 +RXRSUKzEXBo7M53nwuNi/cjSR3NUd1a+1UkrmBLphXXXBbgI6DhntAllfPwv9hcVV
	 QOmleVEjJl02g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9738E40886;
	Fri, 13 Jun 2025 20:13:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 10902183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:13:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA80E407AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:13:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jj4y10A3hri9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 20:13:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E65024077C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E65024077C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E65024077C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:13:01 +0000 (UTC)
X-CSE-ConnectionGUID: Az/mPvN4SkmCScspbISUgg==
X-CSE-MsgGUID: R2nu/9mGQr6EZ2pQ0ROeXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11463"; a="51300343"
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="51300343"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 13:13:01 -0700
X-CSE-ConnectionGUID: 7Rh7IRO2T12iXHL5n4lJng==
X-CSE-MsgGUID: Civ3vyrtQKiNN7pquM/9PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="148456793"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa007.jf.intel.com with ESMTP; 13 Jun 2025 13:12:56 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri, 13 Jun 2025 22:06:52 +0200
Message-Id: <20250613200655.1712561-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749845582; x=1781381582;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kD2ynVceQcdQa7T8ECS2SFeAwaNQpSN34BKH9Gb6w4Q=;
 b=iCtdbqq6EDT+33VTE5R8i30vEAMwsDu1vuYNsEePH2EM27XR+5x1JOLg
 WOlMrwY23bDLeZZpQ7/Md/BoY/oUWmyS20RzazGkwwe3n+gdKBbFsJDf0
 u/obkquMH9Fv0oNgq3oxgqq8RQtC7wwtOr923JoaEmVAGV7EOzI1z3rrL
 UjA/R9zsbNguUEX/PMw9vVKjpsuDz5FXkMkunnueTp5DYAenPcGwqboPa
 fiE6OaVJL4zRUxoCAiazzTklgzXCKC1pMeoLKhMiWMxnnRcdBkWMYacxU
 bVLDVjXRo6Q17dolnckMoiYAcZy/wi7mOW5KVtDTM2kvONiYZEuEWbvpf
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iCtdbqq6
Subject: [Intel-wired-lan] [PATCH net-next v6 0/3] dpll: add Reference SYNC
 feature
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

The device may support the Reference SYNC feature, which allows the
combination of two inputs into a input pair. In this configuration,
clock signals from both inputs are used to synchronize the DPLL device.
The higher frequency signal is utilized for the loop bandwidth of the DPLL,
while the lower frequency signal is used to syntonize the output signal of
the DPLL device. This feature enables the provision of a high-quality loop
bandwidth signal from an external source.

A capable input provides a list of inputs that can be bound with to create
Reference SYNC. To control this feature, the user must request a
desired state for a target pin: use ``DPLL_PIN_STATE_CONNECTED`` to
enable or ``DPLL_PIN_STATE_DISCONNECTED`` to disable the feature. An input
pin can be bound to only one other pin at any given time.

Verify pins bind state/capabilities:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do pin-get \
 --json '{"id":0}'
{'board-label': 'CVL-SDP22',
 'id': 0,
 [...]
 'reference-sync': [{'id': 1, 'state': 'disconnected'}],
 [...]}

Bind the pins by setting connected state between them:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do pin-set \
 --json '{"id":0, "reference-sync":{"id":1, "state":"connected"}}'

Verify pins bind state:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do pin-get \
 --json '{"id":0}'
{'board-label': 'CVL-SDP22',
 'id': 0,
 [...]
 'reference-sync': [{'id': 1, 'state': 'connected'}],
 [...]}

Unbind the pins by setting disconnected state between them:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do pin-set \
 --json '{"id":0, "reference-sync":{"id":1, "state":"disconnected"}}'

v6:
- rebase,
- 'dpll' -> 'DPLL'.

Arkadiusz Kubalewski (3):
  dpll: add reference-sync netlink attribute
  dpll: add reference sync get/set
  ice: add ref-sync dpll pins

 Documentation/driver-api/dpll.rst             |  25 ++
 Documentation/netlink/specs/dpll.yaml         |  19 ++
 drivers/dpll/dpll_core.c                      |  45 +++
 drivers/dpll/dpll_core.h                      |   2 +
 drivers/dpll/dpll_netlink.c                   | 190 ++++++++++--
 drivers/dpll/dpll_netlink.h                   |   2 +
 drivers/dpll/dpll_nl.c                        |  10 +-
 drivers/dpll/dpll_nl.h                        |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 284 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dpll.h     |   2 +
 include/linux/dpll.h                          |  13 +
 include/uapi/linux/dpll.h                     |   1 +
 13 files changed, 575 insertions(+), 21 deletions(-)


base-commit: 08207f42d3ffee43c97f16baf03d7426a3c353ca
-- 
2.38.1

