Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DED1E92617E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 15:12:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4C4B60EDA;
	Wed,  3 Jul 2024 13:12:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7e_ZekRnoybI; Wed,  3 Jul 2024 13:12:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32F4B60EDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720012347;
	bh=hGiEq6mBp7sOt5VcjF4KVnmF++5iIzFM0qfInENiGU0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BpCgLyzRytuW3RP47KcDgGW2mdDyZA5pdlQ8JnPnhrqormZHJu1e0ktHKz7LwQcKH
	 +Jr/ZM0cwufk5PWGpQqxbfnSUJYs9Hr/f2Jn4Wv8CpJJJaPTA1haE91Y3fYthw2wWl
	 0m6xexBNF23d9ikGdbDJwRy6rM2SzymGhiAN0pY3BRzoZi7+UXjLvQp/+a146jZ1a6
	 5+ux/bR4Nhb4q7qwW7OhYT7BiqZhJiYQqb5aO8y7lDN6WuqZY2Fvs/60p4twuelZOJ
	 chWgy0cASvogN7As8Hi3nTJbXsdD3XItgeXVYARm1plwbsU5zpja8S9506Op5LmDkl
	 XAa52aEIcxmfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32F4B60EDC;
	Wed,  3 Jul 2024 13:12:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 220F61BF31B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D0F7845D9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ytrV7REHO7Ri for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 13:12:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6D95B845D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D95B845D4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D95B845D4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:23 +0000 (UTC)
X-CSE-ConnectionGUID: JOtMLzQQSR+kSJ+5dMWjCA==
X-CSE-MsgGUID: u88qPJdXRiasYfgrTsKuMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="27857010"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="27857010"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 06:12:14 -0700
X-CSE-ConnectionGUID: FCjh+Tf5TgCx7agfVAZgtA==
X-CSE-MsgGUID: R3ZN7De1TiaiUMnBA+0gYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46321487"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 03 Jul 2024 06:12:11 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D45D828778;
 Wed,  3 Jul 2024 14:12:09 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jul 2024 08:59:16 -0400
Message-Id: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720012344; x=1751548344;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TgQuOL8SI7Nc9fdOtjuyx541WCdNgM8oiZbIvEF6n1Y=;
 b=G1sTv5XWmIEpnEw25rZ6nZoP/v/QTk0zwqmry4V2LHZNTtIj7h4Ld4l0
 5tN28e5iBt9gzwBUJsWIJ8jEfzxnBwmRmboLZW4XJbbFSc1yHdDvW9XjT
 FyX3LglvD3Cj+DWekqdOe+Gak2EDw+eu6WwOn8AWSeMNyRK48/WMsn5bK
 8QcdchX3UfwwUAK6i2G6EWoDscRp98e3k5rALwdwvqVw1s4PHyIVbmSWt
 EmS+4Dyl4rF8sITPbr48K17EwyKNzufchUnZJuEgkeUyTE7s0O+UfyBXN
 iJlw8QaaE2KnBttm4JMSiepkQE/zjHetrrHv6lj1uzVWmeiAzTTAOSF8s
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G1sTv5XW
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/6] Add support for devlink
 health events
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: willemb@google.com, dwaipayanray1@gmail.com,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, joe@perches.com, edumazet@google.com,
 netdev@vger.kernel.org, apw@canonical.com, lukas.bulwahn@gmail.com,
 akpm@linux-foundation.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Reports for two kinds of events are implemented, Malicious Driver
Detection (MDD) and Tx hang.

Patches 1, 2: minor core improvements (checkpatch.pl and devlink extension)
Patches 3, 4, 5: ice devlink health infra + straightforward status reports
Patch 6: extension to dump also skb on Tx hang, this patch have much of
 copy-paste from:
 - net/core/skbuff.c (function skb_dump() - modified to dump into buffer)
 - lib/hexdump.c (function print_hex_dump() - adjusted)

Ben Shelton (1):
  ice: Add MDD logging via devlink health

Przemek Kitszel (5):
  checkpatch: don't complain on _Generic() use
  devlink: add devlink_fmsg_put() macro
  ice: add Tx hang devlink health reporter
  ice: print ethtool stats as part of Tx hang devlink health reporter
  ice: devlink health: dump also skb on Tx hang

 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 .../intel/ice/devlink/devlink_health.c        | 485 ++++++++++++++++++
 .../intel/ice/devlink/devlink_health.h        |  45 ++
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |   2 +
 .../ethernet/intel/ice/ice_ethtool_common.h   |  19 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  17 +-
 include/net/devlink.h                         |  11 +
 scripts/checkpatch.pl                         |   2 +
 10 files changed, 586 insertions(+), 8 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_health.c
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_health.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ethtool_common.h

-- 
2.38.1
