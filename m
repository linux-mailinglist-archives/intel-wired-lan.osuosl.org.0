Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 804B626568D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 03:23:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 334F587707;
	Fri, 11 Sep 2020 01:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I1EZEnE6-7RF; Fri, 11 Sep 2020 01:23:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5EFA887702;
	Fri, 11 Sep 2020 01:23:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC3071BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B941387699
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kIPwSRD2-EvI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 01:23:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB45F87621
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:47 +0000 (UTC)
IronPort-SDR: 67qMZux+tcb2RPV8EZImwyLSwBG/vbvGAkWVH7egAnFzQw4CVgxj3aVq1h41dPI7VfZtgReH0J
 FRo1uUTfONUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="159613193"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="159613193"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 18:23:45 -0700
IronPort-SDR: YUVGJTUZ/x3pYTEWefygicmfRLnWpRLhfpfMOftyOO5/l9ihdm6JE/SQBPqxyRMWvCFn6SEnaU
 Fyv/kQWbMFaQ==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="449808154"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 18:23:45 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 10 Sep 2020 18:23:34 -0700
Message-Id: <20200911012337.14015-9-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200911012337.14015-1-jesse.brandeburg@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH net-next v1 08/11]
 drivers/net/ethernet: handle one warning explicitly
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While fixing the W=1 builds, this warning came up because the
developers used a very tricky way to get structures initialized
to a non-zero value, but this causes GCC to warn about an
override. In this case the override was intentional, so just
disable the warning for this code with a #pragma.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/renesas/sh_eth.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/renesas/sh_eth.c b/drivers/net/ethernet/renesas/sh_eth.c
index 586642c33d2b..659530f9c117 100644
--- a/drivers/net/ethernet/renesas/sh_eth.c
+++ b/drivers/net/ethernet/renesas/sh_eth.c
@@ -45,6 +45,13 @@
 #define SH_ETH_OFFSET_DEFAULTS			\
 	[0 ... SH_ETH_MAX_REGISTER_OFFSET - 1] = SH_ETH_OFFSET_INVALID
 
+/* use some intentionally tricky logic here to initialize the whole struct to
+ * 0xffff, but then override certain fields, requiring us to indicate that we
+ * "know" that there are overrides in this structure, and we'll need to disable
+ * that warning from W=1 builds
+ */
+#pragma GCC diagnostic push
+#pragma GCC diagnostic ignored "-Woverride-init"
 static const u16 sh_eth_offset_gigabit[SH_ETH_MAX_REGISTER_OFFSET] = {
 	SH_ETH_OFFSET_DEFAULTS,
 
@@ -332,6 +339,7 @@ static const u16 sh_eth_offset_fast_sh3_sh2[SH_ETH_MAX_REGISTER_OFFSET] = {
 
 	[TSU_ADRH0]	= 0x0100,
 };
+#pragma GCC diagnostic pop
 
 static void sh_eth_rcv_snd_disable(struct net_device *ndev);
 static struct net_device_stats *sh_eth_get_stats(struct net_device *ndev);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
