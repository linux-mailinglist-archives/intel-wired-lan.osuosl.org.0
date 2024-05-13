Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D67D28C3F0E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 12:39:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E59381270;
	Mon, 13 May 2024 10:38:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R6PetvSJz8dl; Mon, 13 May 2024 10:38:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2B6681227
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715596737;
	bh=tMPUlS4YEE+oHAoQeWsNKk1VyiFax659EBlOgW6s3lc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tw/m4uAqGor/NPk4+POsSeO/mVK82bEUZfeSdFBOEdtxSfoh5+eR3qSf0UhKVEBJO
	 abrK7I1qcAQxzUedoQJ4K9yA+gOL4nKsoGOp6bXA+B7bFiMm4A3eAEySTyvJwRvZ03
	 jaGApwK7gusJ52hBNkWg31Lsex2kgovbCbiPdRdSHE/IrIZEJBtYDCgHhLx9iGNKJN
	 a9ZUyiAbmsf08qQ7yJUzb3Is6icQQVRRplfIMU6P1lLfnbMNyH4JEGZCl7ZFN8RfD3
	 i1M4BGYCvfZ1xxG1ni3ChPXYRAJWZnriE3LU6sk1n4am+lkURbAtSO9po7yOrp6HMf
	 ATHKOUGc2Aoaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2B6681227;
	Mon, 13 May 2024 10:38:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F8F41BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B7EE40597
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q4H1XOB7na0o for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 10:38:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 72654404E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72654404E9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72654404E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:54 +0000 (UTC)
X-CSE-ConnectionGUID: B29IXFyuSLKg24xQrU+r4w==
X-CSE-MsgGUID: e94dwd8mQFikne+nF/kmmA==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="29039013"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="29039013"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:38:53 -0700
X-CSE-ConnectionGUID: IrimfoOMS8Sxdz/oMmatpQ==
X-CSE-MsgGUID: DXXVjDffRS+WuYEAdRtTJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="61481734"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa001.fm.intel.com with ESMTP; 13 May 2024 03:38:46 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Mon, 13 May 2024 16:08:06 +0530
Message-Id: <20240513103813.5666-6-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596734; x=1747132734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HhiHRgci3Va8aKNan0May3SRjgE/9ME923IgJ2nLvxI=;
 b=d0YrU538n2Q1B2HXkUUCnj0pNUdDsbuuflNQhiVkaDHFvjP3/JorL/Cz
 wgBLUPIlu91S+1MVydNOVvsLP7AFWAQVoTr+EQK7hhvFT2dsn6ZNA0Dkt
 omktXoABYjp9wx4xq69BNsVcMFl4L01LyPcMpkcfK8JHYKnPj8B1n9EPt
 6SdO1h6u8iLbgXpTjLJq2sHYjWDa+ouMS+WIhuDs151d54RGDFYDf9aZk
 +2Wz0drlEdlouGGkgAxUnW0MuBGw7l3sStdZMry4gguCP/NZLBhuA9UWL
 ZB5ZtAW3tOMQdy6fCZUjOInY+b0HDRyQt2Eqc1rn4VbR63a6aFoh0ty0Z
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d0YrU538
Subject: [Intel-wired-lan] [PATCH v8 05/12] stmmac: intel: remove
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 lakshmi.sowjanya.d@intel.com, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, pandith.n@intel.com, x86@kernel.org,
 eddie.dong@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 joabreu@synopsys.com, intel-wired-lan@lists.osuosl.org,
 mcoquelin.stm32@gmail.com, thejesh.reddy.t.r@intel.com, perex@perex.cz,
 anthony.l.nguyen@intel.com, andriy.shevchenko@linux.intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>

The core code provides a mechanism to convert the ART base clock to the
corresponding TSC value without requiring an architecture specific
function.

All what is required is to store the ART clocksoure ID and the cycles
value in the provided system_counterval structure.

Replace the direct conversion via convert_art_to_tsc() by filling in the
required data.

No functional change intended.

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

