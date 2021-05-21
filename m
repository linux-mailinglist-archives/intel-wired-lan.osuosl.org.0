Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0054E38CB47
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 May 2021 18:50:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 588F78430F;
	Fri, 21 May 2021 16:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pmjonAFD2_l2; Fri, 21 May 2021 16:50:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 683CF84302;
	Fri, 21 May 2021 16:50:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B978A1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 16:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A81A740113
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 16:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Un6yFqaG2cGJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 May 2021 16:50:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 97C30400CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 16:50:24 +0000 (UTC)
IronPort-SDR: 6fa7516MAk0AIteviIyVU1DXGanFPpKxbhqbDzU8CE7Miovljq5s2o2UeSYEAPHTj/kmWMw8wP
 jo5ccftLJ+lA==
X-IronPort-AV: E=McAfee;i="6200,9189,9991"; a="198442096"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="198442096"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 09:50:07 -0700
IronPort-SDR: gdeh7sXNWew0id7SdZggaiHbtBcIGYseZI5UueQNjYbFextJzr0y6yPeY4exkBpfQ9u7iR2Ey4
 Q9rtW9CBv/MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="441009059"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga008.jf.intel.com with ESMTP; 21 May 2021 09:50:06 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 May 2021 18:41:26 +0200
Message-Id: <20210521164126.220183-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix firmware LLDP agent related
 warning
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make warning meaningful for the user.

Previously the trace:
"Starting FW LLDP agent failed: error: I40E_ERR_ADMIN_QUEUE_ERROR, I40E_AQ_RC_EAGAIN"
was produced when user tried to start Firmware LLDP agent,
just after it was stopped with sequence:
ethtool --set-priv-flags <dev> disable-fw-lldp on
ethtool --set-priv-flags <dev> disable-fw-lldp off
(without any delay between the commands)
At that point the firmware is still processing stop command, the behavior
is expected.

Fixes: c1041d070437 ("i40e: Missing response checks in driver when starting/stopping FW LLDP")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 3e822ba..d9e26f9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5294,6 +5294,10 @@ flags_complete:
 					dev_warn(&pf->pdev->dev,
 						 "Device configuration forbids SW from starting the LLDP agent.\n");
 					return -EINVAL;
+				case I40E_AQ_RC_EAGAIN:
+					dev_warn(&pf->pdev->dev,
+						 "Stop FW LLDP agent command is still being processed, please try again in a second.\n");
+					return -EBUSY;
 				default:
 					dev_warn(&pf->pdev->dev,
 						 "Starting FW LLDP agent failed: error: %s, %s\n",

base-commit: 776a417daec6a28fdf89426ea98126f8a03c79a1
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
