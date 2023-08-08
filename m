Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C2D774D71
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 23:57:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32B6482140;
	Tue,  8 Aug 2023 21:57:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32B6482140
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691531839;
	bh=34QOJgFP+Vyb/ov+sGRod8dZZCUuSKOVxfpwszy0cdo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Q+ncVzmiCejn/nSgns6m7eTHKQL1wjIMbwUkUSn++0EOcWR5ZrZWZHd6Epd9iy/kF
	 FbGTiI2OZ1nK3h6j0Joc6aBtgaWP65dGF4AU04zDdDrMF5S/nExU+ys5Hoe09GMTgu
	 J2hCmVMwS47v/U9XrRCWvaLSYaZsXQVikM4FZKawTbc4rrq7Z75rHFq/Rz8KZQXeCy
	 jYMxCPyGYNRqmB/sdWDGmKF+6NeXC00Lmfj/ZJ/RW79Pcgt8iMOuRIMrH1hSzLEYaa
	 yFiAuEFpzgKefXe25guDJ6sp38U4c76BSKUK5MzVOLPwhfl/Jo728E/BYcoXnhUpv1
	 vXMeJ2Lze5Jtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id USbdCrDyswCq; Tue,  8 Aug 2023 21:57:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D69BF82110;
	Tue,  8 Aug 2023 21:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D69BF82110
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 396021BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 21:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1AE0B8213D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 21:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AE0B8213D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DRErhTzqnK4f for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 21:57:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91BF38212C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 21:57:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91BF38212C
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="368420279"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="368420279"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 14:57:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="821569632"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="821569632"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Aug 2023 14:57:07 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B0B7B33744;
 Tue,  8 Aug 2023 22:57:06 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  8 Aug 2023 17:54:14 -0400
Message-Id: <20230808215417.117910-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691531830; x=1723067830;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jSmjDBFvz599KO5wK2z0HqeeKcIlqZcHOwNCsIbC4D0=;
 b=QkGaTwSqcwEnl7P9tHkMKkohiHHfXyh0YasLPNELXsXZAv6q7U9p7ufK
 oanpVyM9n5nUwBPjH5ndqVxKGdzbkBzvcUhFW1yOX+OQVvX/2sUZI6fU9
 RRhy8W/2sV8hQnPJDSOfsI8zkBUrCa1QBD0mUBnXo/QTOQk07svkZ+4uj
 z518IE7vamtCeMWp7VrFZJeYB3k7LzPHDnLTSWaS+OOL7uHQkXi02toYp
 s+mQMRpx72Xf+8jHfYOaO4PyCEorIngqkF2xwNflL4ne68HIPsD1PA2Fg
 PMSrs59tJyI91d7nJ3+WtUnLn4GKRpRa0U798TWUWYln8VH8F+NxwIyr6
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QkGaTwSq
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/3] ice: split
 ice_aq_wait_for_event() func into two
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mitigate race between registering on wait list and receiving
AQ Response from FW.

The first patch fixes bound check to be more inclusive;
the second one refactors code to make the third one smaller,
which is an actual fix for the race.

Thanks Simon Horman for pushing into split, it's easier to follow now.

v4: remove excessive newlines, thanks Tony for catching this up
v3: split into 3 commits

Przemek Kitszel (3):
  ice: ice_aq_check_events: fix off-by-one check when filling buffer
  ice: embed &ice_rq_event_info event into struct ice_aq_task
  ice: split ice_aq_wait_for_event() func into two

 drivers/net/ethernet/intel/ice/ice.h          | 21 +++-
 .../net/ethernet/intel/ice/ice_fw_update.c    | 45 +++++----
 drivers/net/ethernet/intel/ice/ice_main.c     | 99 ++++++++++---------
 3 files changed, 93 insertions(+), 72 deletions(-)


base-commit: b91d6ff19e94ec46cf6473e7d50ec11615e9ede6
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
