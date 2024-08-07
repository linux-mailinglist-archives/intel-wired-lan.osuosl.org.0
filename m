Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5286B949D0F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 02:37:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 302A4401DE;
	Wed,  7 Aug 2024 00:37:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WMjdCSs1lw97; Wed,  7 Aug 2024 00:37:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E0AF40538
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722991020;
	bh=wn+QwaKHEPgWoPz95N8TkVtbHY27T/6z7/WL8sXNl/Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EXgiDlYIQt4+hFx4QhsflN0E11AsNJkMjkooaKl4QTlKewDF99qSRIbymaMPBe+oI
	 lxLlIxvtJxVkYLfHkBnEdcRfnJg2A0ztABFuPkP4SWWLolOmeZzTP0sccxQvHsitle
	 SvVRyG5MsrrzXKRyyv2SZp2SeXnIMG0Hzh7nC7lYU032hsgQKwfIZ1FYeQxytEt/gl
	 Qa+TkywFY8hvMl4xwMpVK4wwp+TQNcHXEIAATL8JXtVkZwpN6Dw//CUb9SjEPnXl1h
	 qITDeinM1qVEZwEfYd+g2W04v52NrvZN5hEggmOoiB4SWUtzLX2RtacuMpZK+VguZg
	 gcx1QEItShVuQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E0AF40538;
	Wed,  7 Aug 2024 00:37:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 833951BF969
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E45F606C2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d-U4Kj8UiVtR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 00:36:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E463960668
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E463960668
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E463960668
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:56 +0000 (UTC)
X-CSE-ConnectionGUID: +NGJiP3XS0+6+QOwJAFZmQ==
X-CSE-MsgGUID: N6mWbsosQo2aUh+FIt8BCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31669760"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="31669760"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 17:36:57 -0700
X-CSE-ConnectionGUID: Zc8pSRbkQyWw8Xd5UfY+bQ==
X-CSE-MsgGUID: qPZar2KpSm6T7COtEGBoHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="61497020"
Received: from timelab-spr09.ch.intel.com (HELO timelab-spr09.sc.intel.com)
 ([143.182.136.138])
 by orviesa003.jf.intel.com with ESMTP; 06 Aug 2024 17:36:56 -0700
From: christopher.s.hall@intel.com
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 17:30:31 -0700
Message-Id: <20240807003032.10300-5-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240807003032.10300-1-christopher.s.hall@intel.com>
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722991017; x=1754527017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FWYbx309e0mOibK/0qkpc0jS+BP2N0k4amoXf/TFnH8=;
 b=UZCOIzLzP/LiU2/0/0UxJp1IZOpop7ltmWc5EHT+X66C8bH1lAd4Kjyn
 7YOGt4+GPvItNBaA1626UecjVCSga4trdkPDPPfVkxew9cBu743zIBP2/
 UdPUqAYdgbIu7XC0c/q4jYdVNMJq8ObUvwTR+jtOugch5WcMfUr1LSw9K
 uKj9tv5ZlCQV3e1e+iE1uiix5EfYUp1c3yzhbiIhew0R5bERsETVBFAop
 8dUDDQiJacoV1vamqWd2i9EV1ekI9xJWXeZLWAI1Pitdfp692SDrnuPZy
 L0SIkW3Dc/tJn2+QglWiBmpFYTqRsVHjcqsjuATahaMdE1/nEQBtER5DQ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UZCOIzLz
Subject: [Intel-wired-lan] [PATCH iwl-net v1 4/5] igc: Reduce retry count to
 a more reasonable number
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
Cc: Christopher S M Hall <christopher.s.hall@intel.com>, david.zage@intel.com,
 vinschen@redhat.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Christopher S M Hall <christopher.s.hall@intel.com>

Setting the retry count to 8x is more than sufficient. 100x is unreasonable
 and would indicate broken hardware/firmware.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index fb885fcaa97c..f770e39650ef 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -1008,8 +1008,8 @@ static int igc_phc_get_syncdevicetime(ktime_t *device,
 	u32 stat, t2_curr_h, t2_curr_l;
 	struct igc_adapter *adapter = ctx;
 	struct igc_hw *hw = &adapter->hw;
-	int err, count = 100;
 	ktime_t t1, t2_curr;
+	int err, count = 8;
 
 	/* Doing this in a loop because in the event of a
 	 * badly timed (ha!) system clock adjustment, we may
-- 
2.34.1

