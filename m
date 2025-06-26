Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2B4AE9F8F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jun 2025 15:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB9E3611DE;
	Thu, 26 Jun 2025 13:58:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vntRvv5kFkIB; Thu, 26 Jun 2025 13:58:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4781860DC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750946313;
	bh=jGWa/D4asoM8RCOO44xEXJQba8o3YEA9diQr2WM1s9s=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wICCaseMMXRWz6q16krm8JosPXACIu9p+XyeeSGa0bKKM2dkqlYwdY6vGFuqHL79m
	 GtUas1EqIJYGZtNf7rCdNMFmWeB8NXfVEA90aAefEqiCF7RSUdoCAnsEZWGOBPhj9J
	 lAXmt+39VwKzYy2qpxr1P+ICEepmBiehc25yGhkozaIdPX+g7gcbt8wx8b3qVNSTX1
	 Dh5qYTC/k8Udx5EjTxUW2Xv36O+Cuui0zoDtonokF7BSDVLjcXwuqkxNgX+P8i6wRU
	 9dqvVeY9YCtuTsmXn/VIiLWsn+EwChgklPLCVFfTqnuUrl1K10ddFie5FGoUYMEeGC
	 36r8U61sjNN0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4781860DC4;
	Thu, 26 Jun 2025 13:58:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 22DED154
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 13:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1407460848
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 13:58:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rXsuUbZ9lhFb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jun 2025 13:58:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A666606BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A666606BD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A666606BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 13:58:30 +0000 (UTC)
X-CSE-ConnectionGUID: 7kE8RI3zSj6XmsQkU5BLFg==
X-CSE-MsgGUID: jDyWfoazRJWyzXBSD/7GsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="40859203"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="40859203"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 06:58:29 -0700
X-CSE-ConnectionGUID: JKVS4KjETBmw4kA+ZqzBOQ==
X-CSE-MsgGUID: pFhsH76tS5iin3XHLcN6gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="158271309"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa005.jf.intel.com with ESMTP; 26 Jun 2025 06:58:26 -0700
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
Date: Thu, 26 Jun 2025 15:52:16 +0200
Message-Id: <20250626135219.1769350-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750946311; x=1782482311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LZmA8ttWnDAr8Uh4klCVaH26g2w+YXVeEc7SBMwb/eg=;
 b=Q45+FZ2vxfZIVZT4g0hAUOotmqz8scVAMa/oxmdnxz6JUYs8V4jW+/cz
 k82F2R1SL1EMQHrTTs3ZMv+E+7GEGRW7bmy0J/TJ0jMv1C86HjTrFR19S
 Syqu7t74Xbuu8fUZrvQUwytjHQg4z/U2Zi+8BodVW4fvBt9rn4D2i+FkX
 j1NpmP4y1+5F7l61KjB/+omhrFu57B6JFJfqEMfRMtlrhp6bXcMjlAXi3
 XOjBCzUTaU3DjF5iQbywqJJOZ4qiStFD1LxsAi4OIhbmYbfJ9Ssgxi56h
 iYD9OBG9EHVvvdreDFxU8gdhkxlBy0PM5WTy7ELjgEUxgLPX6xbHLc7Xf
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q45+FZ2v
Subject: [Intel-wired-lan] [PATCH net-next v7 0/3] dpll: add Reference SYNC
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

v7:
- rebase.

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


base-commit: 5cfb2ac2806c7a255df5184d86ffca056cd5cb5c
-- 
2.38.1

