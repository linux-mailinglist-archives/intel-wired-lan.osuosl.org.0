Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4B4AD2C6B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 06:10:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42E9A6160F;
	Tue, 10 Jun 2025 04:10:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GNHJhiXcla-s; Tue, 10 Jun 2025 04:10:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D409615FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749528635;
	bh=KSpx36wjXlXJimTCMiHlxXezQiV9QHhxri6tNGTcb0c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RPbDzJDLXRygRsCZBkGDjKvr2VJvRj4XyAcuS7liHS+Ra/y7SMYQHyqSSEZaObXwW
	 1s7kRv9PrpANbvu5oHdixI+czd6iv6n5t3XLUe6l4MevdYlYn7cENmBwQipeZHDjw9
	 RoN2HrXO4UZ/4yLufqk0Q/bfUsIgiRqxJZPvAz7piJFdVY6RGvfP3pamPo/6a69fFH
	 YArwwDWlE3brN9LiRSu1mbG47cDsEJNcOiN/FaUh3DSJAn50X7eFBlIpHm/Q/U+SM/
	 Vc32UW35z9Pmj303yMsznb3UYaFJfiSYu8/FvfleOQ0lqzQ/E0GAYcShbMw7T5kiyL
	 cnQ67nVDRmqWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D409615FA;
	Tue, 10 Jun 2025 04:10:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 63D45CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 04:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E88740056
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 04:10:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id geRnkcPFtfqh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 04:10:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8096140051
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8096140051
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8096140051
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 04:10:33 +0000 (UTC)
X-CSE-ConnectionGUID: mNeCuZF+TS6q4oW0gtJYTA==
X-CSE-MsgGUID: jxAR1KVvRlO1qNjjg+O3pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="51613157"
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="51613157"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 21:10:32 -0700
X-CSE-ConnectionGUID: g1m50XhOTBaRFLm8w8ZsPw==
X-CSE-MsgGUID: eTy5Q9CsTCu+JzVJ7G/JIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="177646691"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa002.jf.intel.com with ESMTP; 09 Jun 2025 21:10:28 -0700
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
Date: Tue, 10 Jun 2025 06:04:33 +0200
Message-Id: <20250610040436.1669826-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749528634; x=1781064634;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=konwx4TqwyV3uPebPxqhKw7vEEIPBBjeI6qqhlvGDlc=;
 b=d0EDWDJbrp0KApuOcoLfM44V7Qnutnz2Ak6RvrEbz9PFlgXvoEcPTbXK
 JcWjN/EQjDV645+pg8LbkaxteIjFn2yUrx/ayJK/5Xp9ubLi1VVRPfqfM
 yZfabv+DQJAGzJOJhXuTM2b7mlK28ztPvCNivCOBZr9ULrqqxGu7q3UQA
 bw3sOZpDCPr5Q00WCEB6KnDaRuJRZO7QQ52gPOleKQFTtrVw9Q3T7QoaT
 JIKlBZwa5kCpWak3A2MrMo6hsLouXDdYf9x+QAaIs/C9U2L5Svyxz0uFY
 oilS5d/YHxbsf1b1jEleng/H6tS7DzLl8Iq8yxJ1ZnriDgV8AUbYdKCI8
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d0EDWDJb
Subject: [Intel-wired-lan] [PATCH net-next v5 0/3] dpll: add Reference SYNC
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
clock signals from both inputs are used to synchronize the dpll device.
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

v5:
- align description with the documentation changes,
- rebase.

Arkadiusz Kubalewski (3):
  dpll: add reference-sync netlink attribute
  dpll: add reference sync get/set
  ice: add ref-sync dpll pins

 Documentation/driver-api/dpll.rst             |  25 +++
 Documentation/netlink/specs/dpll.yaml         |  19 ++
 drivers/dpll/dpll_core.c                      |  45 +++++
 drivers/dpll/dpll_core.h                      |   2 +
 drivers/dpll/dpll_netlink.c                   | 190 ++++++++++++++++--
 drivers/dpll/dpll_netlink.h                   |   2 +
 drivers/dpll/dpll_nl.c                        |  10 +-
 drivers/dpll/dpll_nl.h                        |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 186 +++++++++++++++++
 include/linux/dpll.h                          |  13 ++
 include/uapi/linux/dpll.h                     |   1 +
 12 files changed, 475 insertions(+), 21 deletions(-)


base-commit: 2c7e4a2663a1ab5a740c59c31991579b6b865a26
-- 
2.38.1

