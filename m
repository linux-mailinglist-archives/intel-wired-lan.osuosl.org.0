Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 293D97840F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 14:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8B9B611B3;
	Tue, 22 Aug 2023 12:41:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8B9B611B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692708066;
	bh=rmFVTfQ/PAeSsrJNHpGpPiiWYFKTMTdjcnsJk4ic2lE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nHzOrmItq8mZUBwk1PAKv1+thGZaZe6eZWCPvHXZGeLZ9VjWiYhmdUsTUrB1uHaKy
	 K7Hf7rRhtzTq2eN7dS/uCqSb3utJRxN/mFaD6YQ4G//sCKWepyWXStSsaZX8EfIIgY
	 pkxCmLpzOEHoK0ehZLi/VfuN6BBNZsyAhKx/DYKcR5an8TDrlIHOyCa/HoknGE1zGj
	 AGuiTaUu6mymM3tGQBEOOXl9Op2YCAmMLzTN1c6jjHSqpYciXaX2KllPuOo6LJP24X
	 k4qE09EFrER0rKhed2bVTcO7+6cK5MACRxwqCJfsqRA8MBiMcoj9yqfnbrhrklrdAA
	 C2fVGIazh+BsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dfgxTydzZMaL; Tue, 22 Aug 2023 12:41:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EE64607B0;
	Tue, 22 Aug 2023 12:41:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EE64607B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB6081BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 12:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFAD96066D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 12:40:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFAD96066D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W_FSkkfm4Cak for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 12:40:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57A27605EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 12:40:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57A27605EC
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="376604590"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="376604590"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:40:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771342886"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="771342886"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orsmga001.jf.intel.com with ESMTP; 22 Aug 2023 05:40:55 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Aug 2023 14:40:35 +0200
Message-Id: <20230822124044.301654-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692708058; x=1724244058;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yIUii6ab9AA+U3EikxNmFYGZ16eFCjLg9BahbV1nVjE=;
 b=RLKudnw1anDcpKnDIgXPco4HMCMIqup5gkx+Ea1JzejUYU+IUn27PxZ4
 MkDjjrcXcR5gvr9eOo9KDM25nYVSANf6u2yOCD8XliCJlsWNovYuidK6W
 TrYvOTUSC0im57LBelugHnrXnGdPInLiXS4FJ1EZ7WMqMLPhB0LE6LWSk
 o4MTqyrIb/r4i16mW7cqwr/zZLFut7CRpatF4yGJRiPRxcYzwoYQPw99Q
 jzcUjJejFq0PKpQWYhQ16mtcjJSlGgjsQ/mN2emtOuuV2N5DP64hD/Tz9
 qIfe5vVmopoLS6KiqBuS5L+4Ux2AFbmcmJt84J8HbhNXmrSHJ900DAP9a
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RLKudnw1
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 0/9] ice: fix timestamping in
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
V2 -> V3: Adjusted commit authors and added base commit
V1 -> V2: Adjusted commit S-o-bs and messages

 drivers/net/ethernet/intel/ice/ice.h         |   1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |  16 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 331 ++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  36 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c    |   3 -
 drivers/net/ethernet/intel/ice/ice_txrx.h    |   1 -
 7 files changed, 247 insertions(+), 143 deletions(-)


base-commit: c924ca3252117385328b3aa1b2b507b5c93c4c47
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
