Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E01C325AB7F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Sep 2020 14:55:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B67586644;
	Wed,  2 Sep 2020 12:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Xuo41-xF1qW; Wed,  2 Sep 2020 12:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A474886670;
	Wed,  2 Sep 2020 12:55:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50F841BF356
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 12:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44B7220414
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 12:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TjXlbkkzSiFi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 12:55:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 2471E20411
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 12:55:05 +0000 (UTC)
IronPort-SDR: 9MxK7uG+DcLyW+KC3igN9rcw3YA0u9KCvCc3LwRDBKpHJXhE93vMKg5f6sKteFmBq/F06Ah5B2
 1H1lhlsFGLXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="175426818"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="175426818"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 05:55:04 -0700
IronPort-SDR: TCg+8oILROZiXb8ETcH3Fssdc9VfF6GYIDwceCAvvgmUfHiKPdpjQuF5IXO21ZVXn/zgHzv+fp
 8vbMdLyCYBtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="375526546"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga001.jf.intel.com with ESMTP; 02 Sep 2020 05:55:03 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Sep 2020 12:54:59 +0000
Message-Id: <20200902125459.30641-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] iavf-linux: Fix incorrect adapter get in
 iavf_resume
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

When calling iavf_resume there was a crash because wrong
function was used to get iavf_adapter and net_device pointers.
Changed how iavf_resume is getting iavf_adapter and net_device
pointers from pci_dev.

Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index d870343cf..cf539db79 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3806,8 +3806,8 @@ static int __maybe_unused iavf_suspend(struct device *dev_d)
 static int __maybe_unused iavf_resume(struct device *dev_d)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_d);
-	struct iavf_adapter *adapter = pci_get_drvdata(pdev);
-	struct net_device *netdev = adapter->netdev;
+	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u32 err;
 
 	pci_set_master(pdev);
-- 
2.17.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
