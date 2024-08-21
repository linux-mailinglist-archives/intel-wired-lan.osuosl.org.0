Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272D4959ECB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:37:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B38D240487;
	Wed, 21 Aug 2024 13:37:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xVidzHRfYUrh; Wed, 21 Aug 2024 13:37:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFC0D40201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724247459;
	bh=qPsE79ZjR3F2A/rz+QeYuvagqPXKKxAx0E/YTJfTz3Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Cjj5mLkHYEwMrLF66u7A+CPUdt8+ZcLXWmh2nTbTNt+QSlb/NjU7alqi+1ovKlP9K
	 jr2jp4KHQTdxqFuuSdd87tJN205udXVxQ+KSaVoiYboBnK+2VXsDFGn60nA+zKqSEE
	 IBjr9DShs5gexGAmMCw37xwxgZ/9WNO+OalIuZYWIAJ2WKrjrjowyc3O6uRL76EnRX
	 AXQMAW4rd0urTCEjuUk0BLOy6uUVC5dMUG+RYjHYHfdrW1u0KmeYTnGmA2pQKH27To
	 ZrlchDV/0D7Vo3IQh36ptwtTGHCksvCxxGlPeislmwu0e31ESe1bW+IdqpX3CatCRb
	 1PhfkPafg+yAg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DFC0D40201;
	Wed, 21 Aug 2024 13:37:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DD111BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5AE5780F3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id luUF-O8NxnwF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:37:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 39F4580F34
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39F4580F34
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39F4580F34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:34 +0000 (UTC)
X-CSE-ConnectionGUID: a6RBQv5GT0+kYuh2zUNIzQ==
X-CSE-MsgGUID: TOGt6iftS0+NM5nKmaHwPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="45131403"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="45131403"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:37:34 -0700
X-CSE-ConnectionGUID: ptWVRNfGQeWM7abrUttSgA==
X-CSE-MsgGUID: 3A+IInRBR1mPbfXWksXaBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61071242"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 21 Aug 2024 06:37:30 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EE17F2878C;
 Wed, 21 Aug 2024 14:37:27 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jiri Pirko <jiri@resnulli.us>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 21 Aug 2024 15:37:08 +0200
Message-Id: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724247456; x=1755783456;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C4YGL94zd28OY9b3SHsBgN1gjLYmukUt1HPDlsN5xx0=;
 b=iQfi8nMvZ2NaYC83dSgiX5fJ5KuBw21OG7hSr5o56CIZ23Z36T7LBPQK
 hRh5bJ2ykmn81Jnt3CfovlXLgSC1gU9ee+Atto1by5HEql5X4ZTcmmvGR
 Htft7PTlqo9AZwMVfWllAYoegOmiNsn6cQPnhd0WClZSIUOf3p8kBFZN0
 /xMnYbb1RwTyNrffkPH0UOJT9aGeBwQhxzBEPsyjpgC0vI2GJ6H5wwk9W
 +9HN1FUP8CM7PjU/uxfe+gVZ/LkgsJKkxJ7MY1f4npZOBCnYbWvsnNhFr
 GDtxFuT/MB9Pq6wyG0HDPgCeJ8E2v4xpfx3kNmGmY3Mt8lret8Wc2FdRR
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iQfi8nMv
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/6] ice: add support for
 devlink health events
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
Cc: lukas.bulwahn@gmail.com, willemb@google.com, dwaipayanray1@gmail.com,
 netdev@vger.kernel.org, joe@perches.com, Eric Dumazet <edumazet@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, apw@canonical.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, akpm@linux-foundation.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Reports for two kinds of events are implemented, Malicious Driver
Detection (MDD) and Tx hang.

Patches 1, 2, 3: core improvements (checkpatch.pl, devlink extension)
Patches 3, 4, 5: ice devlink health infra + reporters

Mateusz did good job caring for this series, and hardening the code,
but he's on long vacation now :)

---
v3: - extracted devlink_fmsg_dump_skb(), and thus removed ugly copy-pasta
      present in v2 (Jakub);
    - tx hang reported is now called from service_task, to resolve calling
      it from atomic (watchog) context - patch 4

v2: patch 3 (patch 4 in v3)
    - added additional cast to long in ice_tx_hang_reporter_dump()
    - removed size_mul() in devlink_fmsg_binary_pair_put() call
https://lore.kernel.org/netdev/20240712093251.18683-1-mateusz.polchlopek@intel.com

v1:
https://lore.kernel.org/netdev/20240703125922.5625-1-mateusz.polchlopek@intel.com
---

Ben Shelton (1):
  ice: Add MDD logging via devlink health

Mateusz Polchlopek (1):
  devlink: add devlink_fmsg_dump_skb() function

Przemek Kitszel (4):
  checkpatch: don't complain on _Generic() use
  devlink: add devlink_fmsg_put() macro
  ice: add Tx hang devlink health reporter
  ice: dump ethtool stats and skb by Tx hang devlink health reporter

 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 scripts/checkpatch.pl                         |   2 +
 .../intel/ice/devlink/devlink_health.h        |  59 ++++
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |   2 +
 .../ethernet/intel/ice/ice_ethtool_common.h   |  19 ++
 include/net/devlink.h                         |  13 +
 .../intel/ice/devlink/devlink_health.c        | 302 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  10 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  24 +-
 net/devlink/health.c                          |  67 ++++
 11 files changed, 491 insertions(+), 10 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_health.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ethtool_common.h
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_health.c


base-commit: 5c820c0d09067ec782a6a84b5362e899662eafea
-- 
2.39.3

