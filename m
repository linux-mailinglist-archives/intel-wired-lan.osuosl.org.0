Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C68517015
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 May 2022 15:16:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FCE04159A;
	Mon,  2 May 2022 13:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5-AlmN1Wkoh; Mon,  2 May 2022 13:16:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E54D341519;
	Mon,  2 May 2022 13:16:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C8851BF39F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 13:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8534360ED4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 13:16:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZyZ6pj_YLQgz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 May 2022 13:16:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C048160EB0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 13:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651497364; x=1683033364;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WwnWRBo6NRk5ss7nUr/9lnmEEsDsYIpr8tLq1uO6jqc=;
 b=bj3ZeiK9n4bKPk5AqmNxq0ZBWrPX+n+Hzu+DaJdB03bnRHPiXibNO0lq
 V8Toi/PB61zDCuvFUhYkKxA7S/4snt+9zQ5PGQxb3ChCW/qiJAxKf2tX8
 wSZM3bBnqbYsbjjToTyLfg4Hin6KrRSlympIZ0OxrOnE9cpA2yAxA1/NV
 LCLyT2FSJRyaD5tykiXk4jj/YgxW4uD9DiLEOGJ5nU/YEfHtzh9SNQT4n
 4hz8V/n8nGgbhaAnVMDdrE+PWTa+VU4BeDKfVTEKuR0G8tCtq+QfirddL
 yVOmQYERp2Kb1k48iSj/FZgBzV2Clusa2kbRwlxT/IVN6ag4EJ3zIsMgk A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10334"; a="247117472"
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="247117472"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 06:16:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="619881530"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by fmsmga008.fm.intel.com with ESMTP; 02 May 2022 06:16:03 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  2 May 2022 16:15:56 +0300
Message-Id: <20220502131556.349753-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Enable the GPT clock
 before sending message to the CSME
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

Enable the dynamic GPT clock. The clock is always ticking is the guarantee
CSME receive the H2ME message and exit from the DMoff state.
This clock cleared upon HW initialization (D3 -> D0 transition).

Fixes: 3e55d231716e ("e1000e: Add handshake with the CSME to support s0ix")
Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index fa06f68c8c80..e29a718469ee 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6494,6 +6494,10 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 
 	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
 	    hw->mac.type >= e1000_pch_adp) {
+		/* Keep the gpt_clk_enable_d clock for CSME*/
+		mac_data = er32(FEXTNVM);
+		mac_data |= BIT(3);
+		ew32(FEXTNVM, mac_data);
 		/* Request ME unconfigure the device from S0ix */
 		mac_data = er32(H2ME);
 		mac_data &= ~E1000_H2ME_START_DPG;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
