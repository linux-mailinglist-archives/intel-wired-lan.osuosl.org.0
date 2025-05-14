Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A483FAB6180
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 06:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60C1260FFC;
	Wed, 14 May 2025 04:31:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id veV_2QP3-56G; Wed, 14 May 2025 04:31:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F11A60FCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747197069;
	bh=FrVHf60mTQSM7dsn8mNLYq4at6HWl8foIYOLtvR/ZDs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iAwuadnC04rZAg2GJyAZeY6h8wEePJQ5g1dt/Srwl091tlU9IBJ1WjyFwTXhQHxGS
	 49pOiaaMar0KF/Dz/j8NdjrEAmiflRI0UH3cT3bYbn5TKXXa3tQ1ChKy7swj6vsenR
	 Fy5rQihOVQshYL6e4retCTILfO4qa+KPU+XLmv9AR6Fo7yJjD+0Tqpisuw2Nbg93HN
	 ytRpT0EVkyb/RfgmyRer/xxf231562IwDZ42jZKKc1y88OnpZSdXwXP2diZzRwhzO3
	 jOHUdtSMEbBatEMMNSNpgpqsYz3f8sHBZiewCY0QsidqXDNofpFRW885UR6v23lpYK
	 MMH20k9ouMfCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F11A60FCC;
	Wed, 14 May 2025 04:31:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C5ACF12A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB5E340159
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iXV7KzHDK6Uo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 04:31:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AEAA4402E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEAA4402E8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AEAA4402E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:05 +0000 (UTC)
X-CSE-ConnectionGUID: an2kPQSYTVyRcVAk2NicwQ==
X-CSE-MsgGUID: Wh20z/lXSpCvNWKyu+hBbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="36699057"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="36699057"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 21:31:04 -0700
X-CSE-ConnectionGUID: DHBPF/FdQXG07/G2fbxIjw==
X-CSE-MsgGUID: aHeTynuCSKKzAsZEw9nuzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="142861732"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa004.jf.intel.com with ESMTP; 13 May 2025 21:31:01 -0700
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
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Wed, 14 May 2025 00:29:37 -0400
Message-Id: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747197065; x=1778733065;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jescl6f+uybA68SsSMxRC4QbDzkbPdEF/STWwsg9JYM=;
 b=ghEE/WRVjRWaxelmPI70HuUfydBExBilLjVIT938Cszwb0SuVkZNZGGk
 pGOXPNfYbwhR48/s1PwYcCA10UrNA+nbgrjnTU/rWPWTbmmaT7ersHf0K
 tHCU1R6T22m2oBlUj4zJdK+98cBYhH7mWUxZ3ae+cflEuHS8vWdIfYjr4
 yUtSQwa4J4ndGEw87zunNJcAaCf4hz7v94KjH5ZlDVCq2/bHb854oQU/j
 lD1T4kcTf3QJH57eLVe8lcnLNRW3Y7MTiVyNh8oODrGNZlLiSCArSR6BD
 obLaM4DnLGgjQtIMzQgaqMcnjBXfKltDPlG7QzoaqdHOgy1RmXYwif12+
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ghEE/WRV
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/8] igc: harmonize queue
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

Patch organization:
- Patches 1–3: Preparation work for patches 6 and 7
- Patches 4–5: Queue priority harmonization
- Patches 6–8: Add preemptible queue support

v2 changes:
- v1: https://patchwork.kernel.org/project/netdevbpf/cover/20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com/
- Move RXDCTL macros for consistency with TXDCTL (Ruinskiy, Dima)
- Rename RX descriptor control macros with RXDCTL prefix (Ruinskiy, Dima)
- Add FPE acronym explanation in commit description (Loktionov, Aleksandr)
- Add Reviewed-by tag from Aleksandr for patch 6

Chwee-Lin Choong (1):
  igc: SW pad preemptible frames for correct mCRC calculation

Faizal Rahim (7):
  igc: move TXDCTL and RXDCTL related macros
  igc: add DCTL prefix to related macros
  igc: refactor TXDCTL macros to use FIELD_PREP and GEN_MASK
  igc: assign highest TX queue number as highest priority in mqprio
  igc: add private flag to reverse TX queue priority in TSN mode
  igc: add preemptible queue support in taprio
  igc: add preemptible queue support in mqprio

 drivers/net/ethernet/intel/igc/igc.h         |  33 +++++-
 drivers/net/ethernet/intel/igc/igc_base.h    |   8 --
 drivers/net/ethernet/intel/igc/igc_defines.h |   1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  12 +-
 drivers/net/ethernet/intel/igc/igc_main.c    |  56 ++++++---
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 116 ++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_tsn.h     |   5 +
 7 files changed, 188 insertions(+), 43 deletions(-)

--
2.34.1

