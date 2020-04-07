Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FBF1A1729
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Apr 2020 23:07:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71FD187DB0;
	Tue,  7 Apr 2020 21:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ADUEuT3Jxn1E; Tue,  7 Apr 2020 21:07:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67F0887D89;
	Tue,  7 Apr 2020 21:07:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0920D1BF616
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 061512048F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OD7UkS+LOXzI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2020 21:07:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 2490921556
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:23 +0000 (UTC)
IronPort-SDR: lAbXDu8QFTCmm66o0PaAGhQLLd4sc6NnquJQI5AIjAwaSTWLSrukXqMGhq/Ma8TBlKVVr0gNgX
 1S8D2aLmEVcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:07:22 -0700
IronPort-SDR: UljYrnBUqXFP0hezXsvvmaTtYP+jMkfyF6OC+u2AM5ms2gXVLUlVe4OXWv5vjnw5w0WLCv/AnH
 otngNEyWj9Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="452593259"
Received: from jyguan-mobl1.amr.corp.intel.com ([10.212.37.126])
 by fmsmga006.fm.intel.com with ESMTP; 07 Apr 2020 14:07:21 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Apr 2020 14:07:11 -0700
Message-Id: <20200407210711.24371-6-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200407210711.24371-1-andre.guedes@intel.com>
References: <20200407210711.24371-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 5/5] igc: Dump ETQF registers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds the EType Queue Filter (ETQF) registers to the list of
registers dumped by igc_get_regs().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 5a53bf6ee1e5..eb7a6932dae2 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -318,6 +318,9 @@ static void igc_get_regs(struct net_device *netdev,
 		regs_buff[188 + i] = rd32(IGC_RAH(i));
 
 	regs_buff[204] = rd32(IGC_VLANPQF);
+
+	for (i = 0; i < 8; i++)
+		regs_buff[205 + i] = rd32(IGC_ETQF(i));
 }
 
 static void igc_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
