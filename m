Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CEBA9E7E2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 08:03:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9E2E40BD2;
	Mon, 28 Apr 2025 06:03:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rvQI_SK8DwKl; Mon, 28 Apr 2025 06:03:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB28F40BB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745820207;
	bh=ip8iDlKYnspZ6ZwMsB/nNDz4UqnJywi3OPTVKSkatBY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5y0uiWv+TpFATWQsdvSMq3/FclmP00g07xRK2uFznjMPjQHoelk5G+X3cKEZ98+++
	 uKJ8ACI3kKxIKru9FLJCGVRpR+rs4j6YtBAu0Oor+SeUe82wZ5jONWpAg2YvdgotMM
	 2ESlxLFYgpkbHs0zoYTUaSdVdQGmrfh7+T7EnsgvjoP3PjJLDLgnTdhX3pU/rm0Cqr
	 VAvCNFwzITIltxmOyVRRFSTxZBOt+oQx0yTHkEc+d/2tzCoS/lFLZHS+saBj0wRF5Y
	 J/vI/Tvww//z8ba3kaLefLylSwxvV7swEjG0+xfHgknr9D4Upe0KWbXSvyd3IaMcgO
	 Hcdj+3+1c0KZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB28F40BB4;
	Mon, 28 Apr 2025 06:03:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 55B6A194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C04C60B79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QZ0FkL0Nq4ZC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:03:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 61DE760B6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61DE760B6D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61DE760B6D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:23 +0000 (UTC)
X-CSE-ConnectionGUID: r9qiC+wZQ+C//2h+8rGrEg==
X-CSE-MsgGUID: EstckaNQQxCw/8tHsIVD9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51064578"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51064578"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:24 -0700
X-CSE-ConnectionGUID: QwnkgDg3TZmBOdPMj32E0g==
X-CSE-MsgGUID: FwBJLuQDSP6m5cfGHcgwRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133340722"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 27 Apr 2025 23:03:20 -0700
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 28 Apr 2025 02:02:17 -0400
Message-Id: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745820205; x=1777356205;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MH7qkkrs4aXnrA4cGqJHHnCV2YqNebyCduBRyfcJJDw=;
 b=Prd+p0o1/SOkTR6pGWHneHoIW6XKnXFel1pZwA+SrMEiAxmyq2LcKVQ+
 uQ97crffpTT0Fj0N+/BXSTv2kv+/EXmOtQ36TLdvCt77v+2g2EdtTiU8L
 JiRr5J1P+prDzCtfnbvfqJlKnUzQU+XRebmjBoM+s5OOu3x4JNP5s618B
 8Fl8BDhhBi6NsRhwgCpPvCS69zq08mNWBgt/yia6bys93RtlTKhDJqL2m
 M7EGmADZUb0lDo6rR1xSzceW20E8X+OBLZfIVZ4jBriPWwleRvPNHJMyF
 YtTqXhsBd+bZOwF4TTBFuyqho/v66gq1GrExWpLf0zStHG4WPcxnYaEm+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Prd+p0o1
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/8] igc: harmonize queue
 priority and add preemptible queue support
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

MAC Merge support for frame preemption was previously added for igc:
https://patchwork.kernel.org/project/netdevbpf/patch/20250318030742.2567080-1-faizal.abdul.rahim@linux.intel.com/

This series builds on that work and adds support for:
- Harmonizing taprio and mqprio queue priority behavior, based on past
  discussions and suggestions:
  https://lore.kernel.org/all/20250214102206.25dqgut5tbak2rkz@skbuf/
- Enabling preemptible queue support for both taprio and mqprio, with
  priority harmonization as a prerequisite.

It is based on the iwl tree as the baseline for development.

Patch organization:
- Patches 1–3: Preparation work for patches 6 and 7
- Patches 4–5: Introduce queue priority harmonization
- Patches 6–8: Add preemptible queue support

The series depends on the following patches, which are currently in the
iwl tree and pending integration into netdev/net-next:
- igc: Change Tx mode for MQPRIO offloading
- igc: Limit netdev_tc calls to MQPRIO

Chwee-Lin Choong (1):
  igc: SW pad preemptible frames for correct mCRC calculation

Faizal Rahim (7):
  igc: move IGC_TXDCTL_QUEUE_ENABLE and IGC_TXDCTL_SWFLUSH
  igc: add TXDCTL prefix to related macros
  igc: refactor TXDCTL macros to use FIELD_PREP and GEN_MASK
  igc: assign highest TX queue number as highest priority in mqprio
  igc: add private flag to reverse TX queue priority in TSN mode
  igc: add preemptible queue support in taprio
  igc: add preemptible queue support in mqprio

 drivers/net/ethernet/intel/igc/igc.h         |  24 +++-
 drivers/net/ethernet/intel/igc/igc_base.h    |   4 -
 drivers/net/ethernet/intel/igc/igc_defines.h |   1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  12 +-
 drivers/net/ethernet/intel/igc/igc_main.c    |  50 ++++++--
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 116 ++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_tsn.h     |   5 +
 7 files changed, 179 insertions(+), 33 deletions(-)

--
2.34.1

