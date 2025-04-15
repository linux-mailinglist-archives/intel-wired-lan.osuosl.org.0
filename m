Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AA1A8A61A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 19:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5112280DF0;
	Tue, 15 Apr 2025 17:57:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qGm4w4SfvqMh; Tue, 15 Apr 2025 17:57:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAD9383984
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744739835;
	bh=cYlywWwndjg0R664AHtKlqXv65WJRNU6CiafJmkW2dk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=k4NNTdkWPjOr7aPbFHU8CsuDOQ12Y7KfBpW6S13uwtE3C9yJFt7nq2vr8SAo/19N1
	 Xj33gDeew1yXFzOETYj9rNpYq1xhdkRhuBGcXlux19rbZh0c/Jxz5QI4TlNcZqlL6f
	 8bgCTN62zYEaVuN2onPqRMhCiL3Cnrh+4u/1kB2lw1JUmE1AS8KdX41LY5xbyyyJza
	 ywxmpPZbOtvdnmd47mioh52OGPqGmxGH1ECfaUSz0mZj/BCXGlROZF+NmJTmDph2+Y
	 7gz/8KYjgScJR9rAm9Tm3BH5dNlWV4JBjn+lmkoVa/rIRdziaoE6ZJWBOI2dxiHVrT
	 2njwZ5zMlvbOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAD9383984;
	Tue, 15 Apr 2025 17:57:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 13325109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0413861B3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:57:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0VgM12vbyAbR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 17:57:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 29DDD61101
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29DDD61101
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29DDD61101
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:57:12 +0000 (UTC)
X-CSE-ConnectionGUID: xVt9UH5RQAmekt9ws+AYow==
X-CSE-MsgGUID: 9Gmqqz3mTAGXUpxBiL12Pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="57650408"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="57650408"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 10:57:12 -0700
X-CSE-ConnectionGUID: lAuP0HNSSGmgEJmHMoj02A==
X-CSE-MsgGUID: 5bEefThrTfWE8815NKIprA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="167364086"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa001.jf.intel.com with ESMTP; 15 Apr 2025 10:57:08 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue, 15 Apr 2025 19:51:12 +0200
Message-Id: <20250415175115.1066641-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744739833; x=1776275833;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LkjYzFPBTOFgIp6/N6gKViQpronUbr8w7O5lyHYgdS0=;
 b=PzYIbW/Qzwy0p5uCJI7+eNrTlaTrPeiU1nKh30je6xk9xPp2kDSBiNaW
 IwUOkmQfkdcgqpIbzs/rgARys9HYUZlnsX33ytFNbItKf7pPCl9wBPbwp
 Dm960NAylhEbYTKoMk9eA22OxeCqqkl8K78C0VEWG6un5c7gs8BOjNmDe
 XK8v2KZQurV0Du8WAi0bxE00xAIttsAsieLsz7gONC82wGRM9of51hqp4
 NKJGwtcgclAlqI2pKt/V3cJXVfffyMTMpNnV5ntfZlorwBcpsnTMDF3FU
 TOa7sgzb1oSLpBmiPtLKaOFAohztZySRQVUpNm3EdPnfLZnoNnBahWDge
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PzYIbW/Q
Subject: [Intel-wired-lan] [PATCH net-next v1 0/3] dpll: add ref-sync pins
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

Allow to bind two pins and become a single source of clock signal, where
first of the pins is carring the base frequency and second provides SYNC
pulses.

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


Arkadiusz Kubalewski (3):
  dpll: add reference-sync netlink attribute
  dpll: add reference sync get/set
  ice: add ref-sync dpll pins

 Documentation/netlink/specs/dpll.yaml         |  19 ++
 drivers/dpll/dpll_core.c                      |  27 +++
 drivers/dpll/dpll_core.h                      |   1 +
 drivers/dpll/dpll_netlink.c                   | 188 ++++++++++++++++--
 drivers/dpll/dpll_nl.c                        |  10 +-
 drivers/dpll/dpll_nl.h                        |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 186 +++++++++++++++++
 include/linux/dpll.h                          |  10 +
 include/uapi/linux/dpll.h                     |   1 +
 10 files changed, 425 insertions(+), 20 deletions(-)


base-commit: 420aabef3ab5fa743afb4d3d391f03ef0e777ca8
-- 
2.38.1

