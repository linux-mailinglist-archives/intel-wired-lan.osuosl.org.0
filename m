Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E381492F82D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 11:44:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39EE141440;
	Fri, 12 Jul 2024 09:44:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Uz44pmup_MS; Fri, 12 Jul 2024 09:44:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AFA840A1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720777495;
	bh=mk1iBYhl+j2Ht/mhWJJWKyF4asTh6/sDtZfSJxA2+gI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TenCgmqEp+G+Bfcak0o+lNbWFOCqUO9Mnnr2+fNkfeK8Ono+maUV9AOrVtvyc5i6Z
	 oGYO5JQNW1Su+poRdZwMcj/zZ5XSy1Zf+MaAwokd8MwSaak9YWelmrEMIhf64uA6dj
	 zqUDIGflbaHe81gqdZiCTozgpWgW3UYLhqlBh57Ya388RBDGeXp6xPV0B11O9RmvgF
	 FgS3FzK8BSOWG7Igy/6bn1Jmct9q2Qq4Hi+BIRCgEZFNDonp7aIZY4/etPWQMt0Ofi
	 ArOsPsES3PDbqInq2wxTEvliwPLq1ZcEoHjYXbwKWQnLfrvxfVpolMJPo8nvu93bbY
	 RkKTFMnLYhbWw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9AFA840A1E;
	Fri, 12 Jul 2024 09:44:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D19F11BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC48F417ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fg8WT8SH4DR3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2024 09:44:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 78C66417EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78C66417EB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78C66417EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:51 +0000 (UTC)
X-CSE-ConnectionGUID: cVjNfw0MTRWsufGt9mv2pg==
X-CSE-MsgGUID: ezlvcsg6QvieSHVJYuupdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="18076950"
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="18076950"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 02:44:51 -0700
X-CSE-ConnectionGUID: G4rJcSO1Qeu3ga65EOemYQ==
X-CSE-MsgGUID: tiuiRH0xSFm8EmaZmNG+vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="49524299"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 12 Jul 2024 02:44:48 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7D46D12409;
 Fri, 12 Jul 2024 10:44:46 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Jul 2024 05:32:45 -0400
Message-Id: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720777492; x=1752313492;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pye52lxJTMqD0ED0N9d93NrRojesTispGsNfpnuU8S4=;
 b=LNFAMUmLrc+lVnhNMXyTNnyuxLtT42WJjUl626hIMVO5F7fCGri7WtjV
 lDq/azrZYuACpjYxO+u0gl9b6UxEpBS7WqIaoQd8hfKPrrRJryph0SKwN
 UO3LvkNtroxtgXMeTJDSYiiQ1Wcn0FVvVgmPX7hUWCiTSgPFLjnZlzXqh
 27OzJQFoxWwa49WpSgjGvXcm8V8pkm7Xz46DQx76p2LmSIpi6kuJIjIVw
 sZSxeAvhsWQF+C74I7+6Tk/W7/C+T846eWIsypgAUq6LW14vvHpz2K5ik
 bF0/20AU3OFDg2tJXQRFOGbg2RXp4awzo/mfFgXEnfFcSsMCPBP2IBqPt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LNFAMUmL
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/6] Add support for devlink
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

---
v2:
- added additional cast to long in function ice_tx_hang_reporter_dump() - patch 3
- removed size_mul() in devlink_fmsg_binary_pair_put() call - patch 3

v1:
- initial series
https://lore.kernel.org/netdev/20240703125922.5625-1-mateusz.polchlopek@intel.com/
---

Ben Shelton (1):
  ice: Add MDD logging via devlink health

Przemek Kitszel (5):
  checkpatch: don't complain on _Generic() use
  devlink: add devlink_fmsg_put() macro
  ice: add Tx hang devlink health reporter
  ice: print ethtool stats as part of Tx hang devlink health reporter
  ice: devlink health: dump also skb on Tx hang

 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 .../intel/ice/devlink/devlink_health.c        | 484 ++++++++++++++++++
 .../intel/ice/devlink/devlink_health.h        |  45 ++
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |   2 +
 .../ethernet/intel/ice/ice_ethtool_common.h   |  19 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  17 +-
 include/net/devlink.h                         |  11 +
 scripts/checkpatch.pl                         |   2 +
 10 files changed, 585 insertions(+), 8 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_health.c
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_health.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ethtool_common.h

-- 
2.38.1

