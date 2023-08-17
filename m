Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E412077F88B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 16:18:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7775683F49;
	Thu, 17 Aug 2023 14:18:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7775683F49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692281901;
	bh=aUgTlyhyc/9vSsb6066L5runrAPyTvvSrkA6elKBIQE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XpqHeewwzFvBJdUjv7U7TCWfYt2G0j66SJyHG87IOmuvHLUAqMra7WvGMDsWRgyrQ
	 7Uw1GVhMtAfxs6liVyDATrcbYqJztXOzzqIhLB9U4aVLrzPANvTNM1TpD96/lkNx3w
	 escpAXGAhJpIZquutmUgIu45VY9+4DViIxdO3673kXhcD48tlxUthrZqTpymbRR1+y
	 q8VI9IkNIp99sJThef3SKQpO14Kc0i9DaK3AMdqyHCybxAny+ycUEKJHUA+XabvtUk
	 qIgtOanonKyQRwZnDOoXrBEyt0nVRZKUJ3j1Ub9A+ezFMqCHArYhvfDf713eIbqNP0
	 ktvfnwDb21TmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id amLj20dLCVES; Thu, 17 Aug 2023 14:18:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26E9B83F3E;
	Thu, 17 Aug 2023 14:18:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26E9B83F3E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 753BB1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5440583F3C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5440583F3C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZvlLly3Xd5cg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 14:18:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E69B82348
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:18:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E69B82348
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="403804187"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="403804187"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:18:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="981189642"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="981189642"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga006.fm.intel.com with ESMTP; 17 Aug 2023 07:18:12 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 16:17:37 +0200
Message-Id: <20230817141746.18726-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692281894; x=1723817894;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vYHA8+xlmi6PcYK2fPUjjFdwfUFUyHGGPF//QgxjG+Q=;
 b=oEeEz2eHCPF01n54TLN/jlRTw9Gx1lwom2CzHRqXcYbtNqgvOsBO8ipN
 kJswMksixtQG5bzY+eFGJnNqKh3NeTAQElQxdn49lkOu6Z8+KtIBzwm+c
 +9OR5APLG3jpm70mwYH56g/5llI25bq+7qD1uBE0V+fBUjIMgMHWFDvP9
 UWuLjOSwhNxJI6LgYMkKZUdCqrdUSmQ4IyvJTwS4Nylqi4ZUAWvF4iwPQ
 ZFqE5tfqvII40OXJI26jM3K7gYe21k/OGCPOTcIu05jaspARGBVDQb1Bd
 opiopVALLkSzYtWhdFUQOb0kpn2D8NxIvgx/pkODbTXeTlapzIZKgYti0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oEeEz2eH
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 0/9] ice: fix timestamping in
 reset process
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PTP reset process has multiple places where timestamping can end up in
an incorrect state.

This series introduces a proper state machine for PTP and refactors
a large part of the code to ensure that timestamping does not break.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

Jacob Keller (8):
  ice: use ice_pf_src_tmr_owned where available
  ice: pass reset type to PTP reset functions
  ice: rename PTP functions and fields
  ice: factor out ice_ptp_rebuild_owner()
  ice: remove ptp_tx ring parameter flag
  ice: modify tstamp_config only during TS mode set
  ice: restore timestamp configuration after reset
  ice: stop destroying and reinitalizing Tx tracker during reset

Karol Kolacinski (1):
  ice: introduce PTP state machine

---
V1 -> V2: Adjusted commit S-o-bs and messages
  
 drivers/net/ethernet/intel/ice/ice.h         |   1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |  16 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 331 ++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  36 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c    |   3 -
 drivers/net/ethernet/intel/ice/ice_txrx.h    |   1 -
 7 files changed, 247 insertions(+), 143 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
