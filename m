Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2AE58FF0F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 17:16:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 802724179C;
	Thu, 11 Aug 2022 15:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 802724179C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660230992;
	bh=jb9wA+8wD6oYmoXXM4PqZ8rJKh7GvTO4dpinZMkDupc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p1o4rJduAkxx1bAh9yV/iugqy4Op0YSSEWt9s0C3X/2MxMlxBhJ1uHqXfBJXCH77w
	 3bGMWMmppn/m7gpczHIbtsUY6LEWDTko/rSIWGMaGkMXodQ4fx1dyYrLuPulr8jwZA
	 BEZ7R55xEXQnR2Q3xz/G+fXpNqu1Xqs0x8m7Dhr/W2K6lMfKidTnewvao3PRuhBBHn
	 6aNHbGnK1HJxp/Ckzr49MwFG98sC1H1L0Yf04GX0N6eZv8ArtqHLfkzPxqMbite0mY
	 F/XiYqH6a/QFT6tXLuJhbjUTWrpDAJsPajmSyOXYVEi4wYIp2ljw/rvnUHrSZFntJt
	 gYUFsxHMpMOgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CHIU9kPkieS0; Thu, 11 Aug 2022 15:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1784F4176F;
	Thu, 11 Aug 2022 15:16:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1784F4176F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C88D1BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 15:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70FE34176F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 15:16:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70FE34176F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RS24akZczZXW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 15:16:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ABCB41768
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3ABCB41768
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 15:16:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="274429725"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="274429725"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:14:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="781634966"
Received: from jmhiguer-mobl.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.212.17.132])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:13:59 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: jhogan@kernel.org
Date: Thu, 11 Aug 2022 12:13:42 -0300
Message-Id: <20220811151342.19059-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <4765029.31r3eYUQgx@saruman>
References: <4765029.31r3eYUQgx@saruman>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230983; x=1691766983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0fEKQjA1HCk9crC+7tHW1/TWCNPNYgFPRzpLwyPy/HM=;
 b=CoZ8hJZ3nRhEpNchgg/Ohrcjz6qU8j7bKrValQetcnKEylUIZf+Ynjll
 vDY/gtb7VZbbJB14mxzHtqZWs3ngRzPrElCOyOzPJxA+KOcWRBYP49vQV
 C08PyO+JzchxbbnlNdo0vT9nf0w7Syfqtd90txfV0D0K5xLc3iZ9tjtXG
 trht0BZ6S124alFqot37mHfA0JxpywVquXmsVTw7piRXQTkv01rTEVBCP
 5e/PdYdJoixzGTn+mX/dqJN3okgvvqJln8upH/zy3Q5E+0qYC8YsIcTTx
 Nf7Xm7lplGg+K9P5IQjT+VhdV9nT/fVJHuR4WT5UaON+Ws23sFjYVfAQC
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CoZ8hJZ3
Subject: [Intel-wired-lan] [PATCH] igc: fix deadlock caused by taking RTNL
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
Hi James,

Thanks to your investigation I found commit ac8c58f5b535, and it looks
like it could solve the issue you are seeing.

Could you please see if this patch helps. It's only compile and boot
tested.

Sorry the delay, I am travelling.

Cheers,


 drivers/net/ethernet/intel/igc/igc_main.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ebff0e04045d..5079dc581d8d 100644
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
@@ -6642,23 +6642,30 @@ static int __maybe_unused igc_resume(struct device *dev)
 
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
 }
 
-static int __maybe_unused igc_suspend(struct device *dev)
+static int __maybe_unused igc_resume(struct device *dev)
+{
+	return __igc_resume(dev, false);
+}
+
+static int __maybe_unused __igc_suspend(struct device *dev)
 {
 	return __igc_shutdown(to_pci_dev(dev), NULL, 0);
 }
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
