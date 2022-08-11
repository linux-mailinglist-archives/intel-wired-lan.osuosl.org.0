Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0BE590755
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 22:26:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1862F4182C;
	Thu, 11 Aug 2022 20:26:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1862F4182C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660249606;
	bh=SMYHwMt7NxFVv0A88prYzRU8eSn8cPL12vul8DI7NzI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ktUqCxnrinvHHQ+oRxG4XpD0m6t3DI9+KLELOrLQ4/+3mxmM19W8AIqfcbkb+aDK0
	 ij/p1+lrrMaf9Kz1nzo88CwAs/hNLrmojKZTxqNk5VnudWjoCqRE5eiUwoRtkKVE/s
	 Ad1UAZaFWE/nQaYfV61oAOyk87O7HeH7V72zOr/Zc8gzrdPfmNaDDnpYroAXOo3x/L
	 euJgM1uLnXKD1o1ZaHfk3h55V+i0vNIsh4d0ehzun6twcUGrZ5QDNiCKFTETN3zV25
	 93YSIr1IJKAqrf3Y8LERPfoUgY77dJqobs76O6L++EA5mF0NRBDZOVZK2a4q5jfSEk
	 Z9h2irdT5foHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ziXd4DV6wxqJ; Thu, 11 Aug 2022 20:26:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DAF141820;
	Thu, 11 Aug 2022 20:26:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DAF141820
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94CA01BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 20:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D11341820
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 20:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D11341820
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BKj3St2VoMpW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 20:25:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41357417FA
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41357417FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 20:25:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="355459403"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="355459403"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 13:25:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="673835234"
Received: from blynch1-mobl1.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.105.53])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 13:25:35 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: jhogan@kernel.org
Date: Thu, 11 Aug 2022 17:25:24 -0300
Message-Id: <20220811202524.78323-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220811151342.19059-1-vinicius.gomes@intel.com>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660249540; x=1691785540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tw3DtI9D0ivig9Qt69fqzEvmz+8m4FAUQXopFv/RsAg=;
 b=AICIGnFNQHesAc1wa0DeX/izXjnZDVGJpsIWnVHH6km2MYTozyjQ3EiD
 wHHvAM2RxDlt7f2CQIyO7Qz+5CpvVmZzDGMh9RfqA7R36N9uvrfdRKD/7
 L/Tru1K/lo/A3XSXstScur74/+uByGDW9tM+3mWeXq1js0YGkPab3ziwh
 7eBn8Dtb5bAjLXNbn5ln09YDXTxaFVOnpRZ36C9d4VD/xm7i2EOI3Obha
 bRr75BPOQ8PuJBQizskCrCk7voKFobwqOV+OlYueYvYSJQdA5h/v28Ui+
 tC+1rDYlsEJNGxY8GdL4aJcndtKj6a6YnIlcnVRHks5U5MCvO39lOdEmW
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AICIGnFN
Subject: [Intel-wired-lan] [WIP v2] igc: fix deadlock caused by taking RTNL
 in RPM resume path
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It was reported a RTNL deadlock in the igc driver that was causing
problems during suspend/resume.

The solution is similar to commit ac8c58f5b535 ("igb: fix deadlock
caused by taking RTNL in RPM resume path").

Reported-by: James Hogan <jhogan@kernel.org>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
Sorry for the noise earlier, my kernel config didn't have runtime PM
enabled.


 drivers/net/ethernet/intel/igc/igc_main.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ebff0e04045d..9b0d4becfcfc 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6600,7 +6600,7 @@ static void igc_deliver_wake_packet(struct net_device *netdev)
 	netif_rx(skb);
 }
 
-static int __maybe_unused igc_resume(struct device *dev)
+static int __maybe_unused __igc_resume(struct device *dev, bool rpm)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -6642,20 +6642,27 @@ static int __maybe_unused igc_resume(struct device *dev)
 
 	wr32(IGC_WUS, ~0);
 
-	rtnl_lock();
+	if (!rpm)
+		rtnl_lock();
 	if (!err && netif_running(netdev))
 		err = __igc_open(netdev, true);
 
 	if (!err)
 		netif_device_attach(netdev);
-	rtnl_unlock();
+	if (!rpm)
+		rtnl_unlock();
 
 	return err;
 }
 
 static int __maybe_unused igc_runtime_resume(struct device *dev)
 {
-	return igc_resume(dev);
+	return __igc_resume(dev, true);
+}
+
+static int __maybe_unused igc_resume(struct device *dev)
+{
+	return __igc_resume(dev, false);
 }
 
 static int __maybe_unused igc_suspend(struct device *dev)
@@ -6719,7 +6726,7 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
  *  @pdev: Pointer to PCI device
  *
  *  Restart the card from scratch, as if from a cold-boot. Implementation
- *  resembles the first-half of the igc_resume routine.
+ *  resembles the first-half of the __igc_resume routine.
  **/
 static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
 {
@@ -6758,7 +6765,7 @@ static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
  *
  *  This callback is called when the error recovery driver tells us that
  *  its OK to resume normal operation. Implementation resembles the
- *  second-half of the igc_resume routine.
+ *  second-half of the __igc_resume routine.
  */
 static void igc_io_resume(struct pci_dev *pdev)
 {
-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
