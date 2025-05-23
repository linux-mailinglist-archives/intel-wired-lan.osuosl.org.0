Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6A2AC28BA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 19:34:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5666C83FF3;
	Fri, 23 May 2025 17:34:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d2BlBvXBX9tn; Fri, 23 May 2025 17:34:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7E4A83FF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748021672;
	bh=cnDNL8vsunz0ImYGc7s5s7Vk8zccaFJ+cLJMV99Nkrw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qwZgDogwibF2VT7v53YEWLT+5XRPEUv73DfrO8k9+buyjTSCkxVvQVE7im1kmgF76
	 w2VMAm5vj6BvINefwuMVlBdx69z06USD8Ij0t/hs6iAlooq2rGvzzQNpHm7DjzvsCl
	 Nwy9nf6ISve2l4vRViAXsfHW7so6OH3j1M5sBNomtBNc2A2BtJNLHGfr5Tk4yayrOp
	 ExYf+3rxGkJHXjQX193ylACyIBQ2tDTVTkB/PScrpNKpm6DUwpp2dCJ6avTCgGBRCd
	 723vx7cshCRxWaRm17dIGZ0Oonf/6/nW2BgPhcAE+/qlMoBCTUCwnnnxixElqQrBxH
	 YBIKq9Ug5UQaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7E4A83FF4;
	Fri, 23 May 2025 17:34:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5BE1C68
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:34:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D33641C12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:34:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gd0tb5b0ML3V for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 17:34:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7FEBA41BC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FEBA41BC7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FEBA41BC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:34:30 +0000 (UTC)
X-CSE-ConnectionGUID: la7RufanT92MCEQck0qPcQ==
X-CSE-MsgGUID: tOOohAdUQlaSt1ypjrZBEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="60343203"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="60343203"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 10:34:29 -0700
X-CSE-ConnectionGUID: AiGkHfu6Rrmy5vk/yzVusA==
X-CSE-MsgGUID: NH/AlwqpTr2K5UL3z9bQ+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="142178952"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa008.jf.intel.com with ESMTP; 23 May 2025 10:32:57 -0700
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
Date: Fri, 23 May 2025 19:26:47 +0200
Message-Id: <20250523172650.1517164-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748021670; x=1779557670;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gYYx1l/Pn+n5FEnkn32ZPkxnX8faGzxv7Jv7CihnuCw=;
 b=GacP2L6dds2FFTJzENQVmpBj+sCC/DTkVN4/s6k3R7NiX9wnHBsGA2g1
 ffSMJzMRbeIWW52rdvkLxB8tK/EHb8pY13PW7v04mfDZmm7O6y1v5x7Bv
 9bQdwbgxE1VlWOawbZpvSXUDWqIqw+JkmpEbXWLuDdPQlgfCsKpQzhGJc
 v/Svwh0Oe7UaRCSLiW2DH6t68VyYiMZZg0uNm5+0KkAdFIb74jD5U7aXp
 e6b/virTOnLbPYS5UacX6A5eZfSAJTH/FQMrD9i1Yiyge1dmQXl7D7jjI
 Ih640lEwmp/cGaFmLlrXoXjsw8CNPy+Wd7VkKYtBeaE4ypu7bnvOtYvCE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GacP2L6d
Subject: [Intel-wired-lan] [PATCH net-next v4 0/3] dpll: add Reference SYNC
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
combination of two inputs into a Reference SYNC pair. In this
configuration, clock signals from both inputs are used to synchronize
the dpll device. The higher frequency signal is utilized for the loop
bandwidth of the DPLL, while the lower frequency signal is used to
syntonize the output signal of the DPLL device. This feature enables
the provision of a high-quality loop bandwidth signal from an external
source.

A capable input provides a list of inputs that can be paired to create
a Reference SYNC pair. To control this feature, the user must request a
desired state for a target pin: use ``DPLL_PIN_STATE_CONNECTED`` to
enable or ``DPLL_PIN_STATE_DISCONNECTED`` to disable the feature. Only
two pins can be bound to form a Reference SYNC pair at any given time.

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

v4:
- no change.

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


base-commit: ea15e046263b19e91ffd827645ae5dfa44ebd044
-- 
2.38.1

