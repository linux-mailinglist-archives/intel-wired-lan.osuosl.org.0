Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1C9AB13D1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 14:52:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 642C440D04;
	Fri,  9 May 2025 12:52:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GQTdsaGXY5qf; Fri,  9 May 2025 12:52:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF2C840C84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746795171;
	bh=NoZu9wd7evFelsRBgSaagZ5+N9n7qN1WXbLz3cIlAPo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Oxh1K57DUd8H0aHYXid7pxvP+dtuxd9Ve9sT2UDvTDbID9gWUCtwOdpp75rDvGDl/
	 EAiSdtrerKLHmCqshDi/j9UqpT3dq+2l9LadS+OZonhAevZfO00pcPxZxxVhZoxVsg
	 cOz8NX9EvhocxR8iGgcAA0P78P0II5qIC+6wBqnL3oBw//VbLE0I60RlczTDRWbBTc
	 +A7ynDXC4664mVJJlcrJpIA055iRf15wL1aHqnqcMmp1+7gcykQedInbtsIyLU2MU6
	 +gfbT/onMTr7hgYnEPO3VqoZZ0HsBhh2VQc4EPSenIn0U6UDPTDe3pU/gNSfCD7uci
	 sxAQiwMXMmxEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF2C840C84;
	Fri,  9 May 2025 12:52:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CBD5F1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 12:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC7E840C15
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 12:52:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5RrOqj8eFCyw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 12:52:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F304A40C25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F304A40C25
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F304A40C25
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 12:52:48 +0000 (UTC)
X-CSE-ConnectionGUID: dJ1pyAIoTDirPxkyLJTh4Q==
X-CSE-MsgGUID: Bv2vIkO/TIuV+xrp8GO3ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="66027262"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="66027262"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 05:52:48 -0700
X-CSE-ConnectionGUID: BZDHX1swTe6uzMx0D0o0oQ==
X-CSE-MsgGUID: 5ESaZ+aCS+yJh0Vw/9f4vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="141828269"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa004.fm.intel.com with ESMTP; 09 May 2025 05:52:43 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri,  9 May 2025 14:46:48 +0200
Message-Id: <20250509124651.1227098-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746795170; x=1778331170;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BgRoUXYcSrAqisgxPiDX6UXaKvPPaCgwsEZyfhyMlFw=;
 b=i/zoE/9FTrbxksy2V374/g4ZfMYgu4koD+R3EF+loDoGv9oXBga+BymT
 LdJhbl5D70LNN+iug33vJJDYwk2/PMBiutYx9vvqenNGN6uarldtWcTmn
 h53MfsKxjoZflFh1NDZhX2ayKy8ss/yt4SOwypPADJJGXjN+dptJcA7bk
 VfCCWrqnmlUz8t71VknqP+e8C0tj5ZA8Sxys0pMDvqljYkJ2reJWelGsT
 GR3XSdRBjlZlFjSE0iD8GLw5bc/c6+U9gxQNP8pEJHye/RAYO+AtpmYW8
 k7UvCqlBodSaNPxYD6xUXACqxi8qHKFaJXM6HuksX6qpeUqyPqh2SzQFy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i/zoE/9F
Subject: [Intel-wired-lan] [PATCH net-next v2 0/3] dpll: add Reference SYNC
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

v2:
- improved cover letter description of the feature

Arkadiusz Kubalewski (3):
  dpll: add reference-sync netlink attribute
  dpll: add reference sync get/set
  ice: add ref-sync dpll pins

 Documentation/driver-api/dpll.rst             |  25 +++
 Documentation/netlink/specs/dpll.yaml         |  19 ++
 drivers/dpll/dpll_core.c                      |  27 +++
 drivers/dpll/dpll_core.h                      |   2 +
 drivers/dpll/dpll_netlink.c                   | 188 ++++++++++++++++--
 drivers/dpll/dpll_nl.c                        |  10 +-
 drivers/dpll/dpll_nl.h                        |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 186 +++++++++++++++++
 include/linux/dpll.h                          |  10 +
 include/uapi/linux/dpll.h                     |   1 +
 11 files changed, 451 insertions(+), 20 deletions(-)


base-commit: 46431fd5224f7f3bab2823992ae1cf6f2700f1ce
-- 
2.38.1

