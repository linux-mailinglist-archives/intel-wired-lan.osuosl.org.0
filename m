Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4662387FE5F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 14:13:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC8D64019A;
	Tue, 19 Mar 2024 13:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wX5M8bXil9jR; Tue, 19 Mar 2024 13:13:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1408E4033A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710854020;
	bh=qbDf6mDOr5pUTTrGJy5r3HxwSzx5reuigJeU16xqtBs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zBOtveBAPL23I5IWVlD4QQjK4RSaeLg3Lk51ukGklVoTT6yirksNcMwg5NK4+SO9o
	 TUBRifj+KVWXslY+FD1J0p77XSXsXzXCgj249SodDYqhW2pT1QbZlw533w3CHjS+js
	 RRmhsZV2paJzyKEdBX/PNjagCr2i/kXoeES1CuAEOiSw5U9AnZ5DMuODl/eWMqPBAA
	 S+7zV4MDv9pMPFuKcsdxZEoO2I1yjRujZ69/Y+m0LzZ4R/6QDVewEUZBpW/NE9yGmt
	 w9O5EwRP2bSwHa2/8q8qeTnii/xl5l5qhjD1eymfUAw6MGXDK3CZmov2zJjJGJp4wA
	 5lvF6VnLGrDiA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1408E4033A;
	Tue, 19 Mar 2024 13:13:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A064B1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:13:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D51080AE1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:13:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-zNWSD_sL6v for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 13:13:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DF2E080ABF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF2E080ABF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF2E080ABF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:13:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5842969"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5842969"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 06:06:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="44883226"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa001.fm.intel.com with ESMTP; 19 Mar 2024 06:06:24 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Tue, 19 Mar 2024 18:35:41 +0530
Message-Id: <20240319130547.4195-6-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710854018; x=1742390018;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uUU6Aeoh21pgVprRQuKox95GRqR5aTWn9mMsl4N1jcQ=;
 b=BjwCPfL90Vnb5vc0At90NTP0HcNP+QBm2LN0pKwMamaDZPIde6j9CeAd
 rPN62ndAsYeRXsZt//a3dv9kwGor0R34Xg3beaN+/f0+BuNpGQnXTvn7W
 e8uDvmjzC4wVAryS5Qxg8hi8G46Rhuz343XMVAAl9u/2j4WcnQPF3huaV
 jTV6IxvndZQxD05oBa42FS6lKqItndPrmVYqQJDEbI1sEDcIArk5dcMkV
 hdmUtCUxcyeRUI6DHDTPjWbEc7B7L6SdMNL0t+H7AHJFeRKKEMvhD9TP1
 MBm9I04C3XsTJO3v4/QtQnY7RCY/leP1rpPw0gUjgYcRlWZNea4Jr+NVp
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BjwCPfL9
Subject: [Intel-wired-lan] [PATCH v5 05/11] stmmac: intel: remove
 convert_art_to_tsc()
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, basavaraj.goudar@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, x86@kernel.org,
 joabreu@synopsys.com, peter.hilber@opensynergy.com,
 intel-wired-lan@lists.osuosl.org, subramanian.mohan@intel.com,
 linux-sound@vger.kernel.org, lakshmi.sowjanya.d@intel.com,
 andriy.shevchenko@linux.intel.com, netdev@vger.kernel.org, pandith.n@intel.com,
 eddie.dong@intel.com, mcoquelin.stm32@gmail.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>

Remove convert_art_to_tsc() function call, Pass system clock cycles and
clocksource ID as input to get_device_system_crosststamp().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c
index 60283543ffc8..e73fa34237d3 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c
@@ -390,10 +390,11 @@ static int intel_crosststamp(ktime_t *device,
 		*device = ns_to_ktime(ptp_time);
 		read_unlock_irqrestore(&priv->ptp_lock, flags);
 		get_arttime(priv->mii, intel_priv->mdio_adhoc_addr, &art_time);
-		*system = convert_art_to_tsc(art_time);
+		system->cycles = art_time;
 	}
 
 	system->cycles *= intel_priv->crossts_adj;
+	system->cs_id = CSID_X86_ART;
 	priv->plat->flags &= ~STMMAC_FLAG_INT_SNAPSHOT_EN;
 
 	return 0;
-- 
2.35.3

