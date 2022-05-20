Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0D452E1AB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 03:16:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E2CF8453A;
	Fri, 20 May 2022 01:16:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CpNWyGv338aD; Fri, 20 May 2022 01:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5585684521;
	Fri, 20 May 2022 01:16:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BFCF1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F3B084534
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QmHdwRvSpyjF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 01:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D8CE78451D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653009356; x=1684545356;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GvvOSRP3CzY8wou3e94OjmzfEqmZRYgWGPqWk9AlwqA=;
 b=ZB5JiVNw8R35rjCpDbh9MmC6csTkTheK5yN1brS8YJemkmsQ5g8hc1HW
 TNoElSjHZz36bTzOx4X6TqUA/lCAbSRtdXRYxo2+wdHys7oyh0ReQY2Ri
 9o91+pmaDcdAIG8VemuK5j8BNFGV/Ft4klYSBT4LVtqYP4B+WxWYgRuWi
 1Zz47DEIEM9QCTRb9AOopoIUmznoak3V06qJfCGNmf1GTe97QIKcoUhw8
 y0dHalHmUoiv3nuumifMz2CRkOqSSvAdONkk9Y1EeIfmtj5J2BgNhh4aV
 +Vx1Zi+5CIoeMoUYsU32Y2nfS56eAQXmbw/yXnfxHuaJk0EMd4IN+T7tI A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="333064159"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="333064159"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="570534548"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.84])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:54 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 19 May 2022 18:15:32 -0700
Message-Id: <20220520011538.1098888-6-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220520011538.1098888-1-vinicius.gomes@intel.com>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v5 05/11] igc: Optimze TX buffer
 sizes for TSN
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
Cc: jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, boon.leong.ong@intel.com,
 xiyou.wangcong@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are 64KB buffer space shared for TX and RX (including the BMC).
We were only reserving 22KB for TX, increase each TX buffer (per
queue) by 2KB, the total is now 30KB for TX.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index f609b2dbbc28..62fff53254dd 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -395,7 +395,7 @@
 #define I225_TXPBSIZE_DEFAULT	0x04000014 /* TXPBSIZE default */
 #define IGC_RXPBS_CFG_TS_EN	0x80000000 /* Timestamp in Rx buffer */
 
-#define IGC_TXPBSIZE_TSN	0x04145145 /* 5k bytes buffer for each queue */
+#define IGC_TXPBSIZE_TSN	0x041c71c7 /* 7KB buffer for each queue + 2KB for BMC */
 #define IGC_RXPBSIZE_TSN	0x0000f08f /* 15KB for EXP + 15KB for BE + 2KB for BMC */
 #define IGC_RXPBSIZE_SIZE_MASK	0x0001FFFF
 
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
