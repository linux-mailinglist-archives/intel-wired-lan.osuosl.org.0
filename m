Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B12E2826EC0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jan 2024 13:47:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76ACB41529;
	Mon,  8 Jan 2024 12:47:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76ACB41529
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704718064;
	bh=NmbR1Htuzk+cbk8jRN0ADg5pUtzH2DJ9wugUXWK7iuw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uEBLv5kZazW811ui8EAEhJHmFa30jsIf7QB2TxoB6IosT+Hyfsjf+fTztYzIXjcuz
	 r4OdpGLynlyMxB0P4jVJyyCnHuMQ84U3Z9Glq6DCqoAYGcL9xEAHT0aHtwxdXmh/tP
	 kCB0rBajwtyAQSIiyDzUJnVaoQj1W0EM4BvR3wUcq4dkOHyhTz0a+brEMzrGucRyMw
	 RhpxzgM2ms31HEEumaTqv2pUnSJeU7rPUqddM+wq22Cf85sGv8TYQFUR0KSVgSS2be
	 Rq/hZGvK0zt/05mqaYjrZvujSxtbqk2OwNgKeCPRWBJJJZKdRbVVV3AN58KWmDetCa
	 gWMyIORQrM9QA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e5eBcoBLFhHd; Mon,  8 Jan 2024 12:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94DF4414E4;
	Mon,  8 Jan 2024 12:47:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94DF4414E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA0FA1BF44A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 12:47:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F0E060F97
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 12:47:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F0E060F97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-bwM2gNYEDp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jan 2024 12:47:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA1D160F84
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 12:47:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA1D160F84
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="11359546"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="11359546"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:47:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="904791302"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="904791302"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orsmga004.jf.intel.com with ESMTP; 08 Jan 2024 04:47:23 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Jan 2024 13:47:11 +0100
Message-Id: <20240108124717.1845481-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704718058; x=1736254058;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VGs+ZJUpKX3KvN3rtWTzrwtVsSqIw06Chl2fIx+a8vc=;
 b=m1GvayqObEHN4ibM3xo91pEqUOmtWdUqNK3GvwRytqhhaRpFeKkHNyN1
 9I6BW2p1tZRo9LrwQT2P7gJ60WO9N/6pV561I+B2W7TUt9sS/jb0DCFZ9
 vyywxcLJK1Tes6L0HX80wNHoOXBnl01RBoJNsgAm0RcRn10kKjBwTMvjo
 xVNfU/qol6TL6g0xe5iHxW5zeqauBLV3Zz4Vah10Bv0PTdp0qZsHulOfC
 3gpzkp7ycvGXsSM3eI9FieBfvjEESu7LrP6upLtEqgIH4GVV2jKJleFks
 NreZvpi4cNlZbTJOtHxF01FG5sb8cZeTuJtOD9Xcg3sAAIwU50ISMCqRa
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m1GvayqO
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 0/6] ice: fix timestamping in
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PTP reset process has multiple places where timestamping can end up in
an incorrect state.

This series introduces a proper state machine for PTP and refactors
a large part of the code to ensure that timestamping does not break.

Jacob Keller (5):
  ice: pass reset type to PTP reset functions
  ice: rename verify_cached to has_ready_bitmap
  ice: rename ice_ptp_tx_cfg_intr
  ice: factor out ice_ptp_rebuild_owner()
  ice: stop destroying and reinitalizing Tx tracker during reset

Karol Kolacinski (1):
  ice: introduce PTP state machine

V4 -> V5: rebased the series
V2 -> V3: rebased the series and fixed Tx timestamps missing
V1 -> V2: rebased the series and dropped already merged patches

 drivers/net/ethernet/intel/ice/ice.h         |   1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 231 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  34 ++-
 5 files changed, 166 insertions(+), 106 deletions(-)


base-commit: 006c8fe67ee86e7810f2aa3b365ab6de65cf2299
-- 
2.40.1

