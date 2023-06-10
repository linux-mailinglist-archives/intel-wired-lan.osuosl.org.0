Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE9C72A716
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 02:44:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC5E961667;
	Sat, 10 Jun 2023 00:44:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC5E961667
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686357844;
	bh=8vSKebUmmbLy7q5id8SkyQHuuEfd9NMxidNTBBcV7w4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KIx9x80tHjf34cQIA3u4ZipeB+SKg9hBybx0XAyew50o//6SFpKRJb69/PpgcAC8r
	 1SB6hfio4lz5mTnbhgQzvbQbUerIxvMLehRDOSsPECD7Yqioyc5xE1vnSk0ivP8lLQ
	 Fm4Yh38JpQR9JhbnqLq7MkLhEzqhZ/XQV/sG6X9T56tYVwv+e+U3vNieu0OxW1IkvP
	 /iXYf8sog6A3T+XKfJweOCjO+5EcwaqZuMDcdMSTlLDtrNAY2JYUEhEtL8MZh+OoDM
	 oltCa1MRW3Fk1StLuD+MWCn6xgwrPQmubIgFo8xI3JXMvxYN2zQ6P6Vgkvx/O2tEXG
	 yEx1QBoz67RhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jx4lHTDiJWxK; Sat, 10 Jun 2023 00:44:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8305560ACA;
	Sat, 10 Jun 2023 00:44:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8305560ACA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 273A51BF372
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EDAF940154
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:43:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDAF940154
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ndXJ3kYQvXo9 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 00:43:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0420400F8
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0420400F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:43:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="386082833"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="386082833"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 17:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740343111"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="740343111"
Received: from msu-dell.jf.intel.com ([10.166.224.119])
 by orsmga008.jf.intel.com with ESMTP; 09 Jun 2023 17:43:55 -0700
From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Jun 2023 17:40:22 -0700
Message-Id: <20230610004024.2422272-1-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686357836; x=1717893836;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zQWHaz1TgQZY1PhWVoarGmfgaRQcVySm1cIFI1vtvhY=;
 b=IBapeuMZnMnrj6Ul/gXXiVgtvPx4AFO2YE8B9LezE9L1xgG+B+hha+Sn
 2R7UFamSq1s8E/oB/bebp8Whwsdxp9Cb68X63DhqFK+Yi+f5y+ODlIn07
 rEc1iIPqw2HWoLOOlLLc4UevK0t7XoLQYBb20bWw9Df5q0xyIedy/tkXB
 Z0MYCotfUMlfnCOieR08nx5tz/KB1+QAqBWzi7Ykd/UAexPAwX7dqMrEk
 SlLq4oLv94q6GTIQeCJKZmxwqKBArefXx/PFgcGBhBZK6V80muo4etytY
 wzQCNgZqffj/9HNMTVOHEZQ2kVNgZ/kHF9ufo0zrfQuJVD0XwojqyOiMO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IBapeuMZ
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] Fix TC rate limiting bugs
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
Cc: anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series contains fixes related to TC rate limiting:
- Fix incorrect bounds checking for max_rate.
- Fix use of incorrect VSI while configuring max_rate.

Sridhar Samudrala (2):
  ice: Fix max_rate check while configuring TX rate limits
  ice: Fix tx queue rate limit when TCs are configured

 drivers/net/ethernet/intel/ice/ice_main.c   | 23 ++++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 22 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |  1 +
 3 files changed, 27 insertions(+), 19 deletions(-)

-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
