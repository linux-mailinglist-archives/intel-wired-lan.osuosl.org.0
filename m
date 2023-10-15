Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681717C9C9F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 01:51:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38752414C3;
	Sun, 15 Oct 2023 23:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38752414C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697413872;
	bh=Ukkj+545lc60YISO7IoLMM98XWIB7PnW9mK9dVcoEUQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=wNLvez00iO7q1zjv2lzRxPG7ULarf7x5RTNzfm6hXMN/SHktW55PibvKm9Kewk/dx
	 MAqJThm0vQwE5joQ5dOxVdJ4aZU3llpgCibavgU66OPzaiomGLV9cwr+k+Bo5JDVLv
	 pK9wNJFCipfyDOUh7f55mok+t/JmeCVHcKYSUdrJqAnpHXW3PK+oF4Cwgk8uOkaBNK
	 dYkoMsuyBnEGo9W1KVUMfWub6/Rt1JertdA6cIh3eLpotnywSeaTxsGDDsMe9TzuqL
	 ez8Hl4lOsoImJ7m54A9rv0BXlQHKw5plPVfmoeQdv2z05ehNFrYK6ZDfJ/ZtYKXAYi
	 6pNqSonW3Tc0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mO86_C0gCAEk; Sun, 15 Oct 2023 23:51:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEC6E400B9;
	Sun, 15 Oct 2023 23:51:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEC6E400B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CA451BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3FF6160F3A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FF6160F3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vykNwJW5Ezyd for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Oct 2023 23:51:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00FA560F09
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00FA560F09
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="370496078"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="370496078"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 16:51:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="929159757"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="929159757"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.144])
 by orsmga005.jf.intel.com with ESMTP; 15 Oct 2023 16:51:02 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: netdev@vger.kernel.org
Date: Sun, 15 Oct 2023 19:43:01 -0400
Message-ID: <20231015234304.2633-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697413864; x=1728949864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8nl5ahvXJDF1WoW7ftzJdmLFO0AXB8NwzYNKaesAV64=;
 b=m1ubDWIZf+e6NCCIAkTiV/oV0KwwwUdKk//I/6zoka6REsoEO61DcWkS
 gm7YZsSPrUfyeDS7C+JLeNI8YR6KUv9/szklqT9M0dSngj4mpe8NcbZog
 f+8jCMGT3gw++xiMrl3JmEEc8/emT1E9s0pRDbyCaYJE2o5TQBq/kosNs
 Jz/QjUg1QayyNmEzp5btj0eBfJPkPenWEvJjOYPw8o8OpRoUr0uCTH9M+
 T85Ssmnw4oBKYx1TKL+R/tDFXGBiuCFWXq08LAkKIh23BDHVwMJV08bpy
 Xnqm9RM1brFWtlpXKX1r+1Jo5ht8RABZldAAEX73w9mBkV3IognLTj6VW
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m1ubDWIZ
Subject: [Intel-wired-lan] [PATCH net-next v5 0/3] ethtool: Add link mode
 maps for forced speeds
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
Cc: jiri@resnulli.us, andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 vladimir.oltean@nxp.com, jdamato@fastly.com, pawel.chmielewski@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 Paul Greenwalt <paul.greenwalt@intel.com>, horms@kernel.org, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The following patch set was initially a part of [1]. As the purpose of the
original series was to add the support of the new hardware to the intel ice
driver, the refactoring of advertised link modes mapping was extracted to a
new set.

The patch set adds a common mechanism for mapping Ethtool forced speeds
with Ethtool supported link modes, which can be used in drivers code.

[1] https://lore.kernel.org/netdev/20230823180633.2450617-1-pawel.chmielewski@intel.com

Changelog:
v4->v5:
Separated ethtool and qede changes into two patches, fixed indentation,
and moved ethtool_forced_speed_maps_init() from ioctl.c to ethtool.h

v3->v4:
Moved the macro for setting fields into the common header file

v2->v3:
Fixed whitespaces, added missing line at end of file

v1->v2:
Fixed formatting, typo, moved declaration of iterator to loop line.

Paul Greenwalt (2):
  ethtool: Add forced speed to supported link modes maps
  qede: Refactor qede_forced_speed_maps_init()

Pawel Chmielewski (1):
  ice: Refactor finding advertised link speed

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 193 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
 .../net/ethernet/qlogic/qede/qede_ethtool.c   |  46 ++---
 include/linux/ethtool.h                       |  37 ++++
 include/linux/linkmode.h                      |  29 +--
 6 files changed, 195 insertions(+), 113 deletions(-)


base-commit: ac4dec3fd63c7da703c244698fc92efb411ff0d4
-- 
2.40.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
