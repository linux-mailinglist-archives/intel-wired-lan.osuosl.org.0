Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB9184C4A8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 07:09:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9C5961381;
	Wed,  7 Feb 2024 06:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q_PdKvRtMk03; Wed,  7 Feb 2024 06:09:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AB1D61360
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707286172;
	bh=ZMVsDlHEi/hhbc7fNNZPtLZD9sTr8uGUpT+Hx2HmiTk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=anYyiPLE7nHyc2eA3EiQqM4Ylo7XQwdhHWM4vUs12nL5mICAbOxN71gZJt2Q4uEZa
	 Nb5ol/wB0REIZ4mgVbOe7lyKipaW2Wzp+iWz+w38aw+xcKpA8J6zRRsmv1U/yxKnMp
	 z3FB1PvGWGjTxIkXCw329UX9BsuKvb37JcDJhnXYEYMY5cy8KkB7CJ4gYX+CN6ZKu4
	 tNs/HcdoYnSUNDT0y454JP3Inprxtoh/2slcDQtiOP+SziFIywT6XBAA+8QfYTeFna
	 RRxbbIn/UrDjldCvbA8TDmxbM8UrKR1H5kqtwXTBKadj2CiXp3jTj1eS6sFYnGD9yl
	 chyJh8FkOwbvA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AB1D61360;
	Wed,  7 Feb 2024 06:09:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FCDE1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D49E61360
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id miy23jujURqx for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 06:09:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C110261361
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C110261361
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C110261361
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="436053996"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="436053996"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 22:09:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="5849766"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa004.fm.intel.com with ESMTP; 06 Feb 2024 22:09:22 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed,  7 Feb 2024 11:38:47 +0530
Message-Id: <20240207060854.6524-5-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
References: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707286169; x=1738822169;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gErqH5iZ2fUCryD2fkCZUAp/vYOS2rcIZgcdaSpVZdg=;
 b=cRLhPJ/OeA2sWjLKX0unCS2ZbzKp8NegeOQ98B+B3pvz6Ly77Il9wNRg
 XYt9zT4M/n/1YIiiX4aRKxz6zh1Pogr8W5hiGdrQAd7vJGwQiz5EP9crj
 3D5oD8N5IeHEoGx2zHW5KnN95HGc6s2juJx8+qgUQ3bMoi2v8CtqgHmGl
 gIeI2VfWM6ndP3vd2+1bb9JsYuX1SC8wgL+fPym+D7JX43trXpogju6pw
 Cx2pIRCMHNNFNjmLYszUZvprrHgJgtwf1pw60LOXRzCniY8nYX9OxfGxE
 92oKfLDIyHjmEKYG272/X30WdMbxj98ZhbPfa5pUKRHTQGSxZk+CAMRQx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cRLhPJ/O
Subject: [Intel-wired-lan] [PATCH v4 04/11] igc: remove convert_art_to_tsc()
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 lakshmi.sowjanya.d@intel.com, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, pandith.n@intel.com, x86@kernel.org,
 eddie.dong@intel.com, jesse.brandeburg@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 mallikarjunappa.sangannavar@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, mcoquelin.stm32@gmail.com,
 thejesh.reddy.t.r@intel.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 andriy.shevchenko@linux.intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>

Remove convert_art_to_tsc() function call, Pass system clock cycles and
clocksource ID as input to get_device_system_crosststamp().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 885faaa7b9de..0f568fc4b902 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -901,7 +901,11 @@ static bool igc_is_crosststamp_supported(struct igc_adapter *adapter)
 static struct system_counterval_t igc_device_tstamp_to_system(u64 tstamp)
 {
 #if IS_ENABLED(CONFIG_X86_TSC) && !defined(CONFIG_UML)
-	return convert_art_ns_to_tsc(tstamp);
+	return (struct system_counterval_t) {
+		.cs_id	= CSID_X86_ART,
+		.cycles	= tstamp,
+		.nsecs	= true,
+	};
 #else
 	return (struct system_counterval_t) { };
 #endif
-- 
2.35.3

