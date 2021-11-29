Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A43462313
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 22:14:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2983B60BB2;
	Mon, 29 Nov 2021 21:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LZ7K-DxDH1zi; Mon, 29 Nov 2021 21:14:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F94560B61;
	Mon, 29 Nov 2021 21:14:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A7D31BF38C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 21:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70950401BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 21:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ps5VFb4RRJk8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 21:14:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEC70401AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 21:14:16 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id a9so39704832wrr.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 13:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:from:to:cc
 :subject:content-transfer-encoding;
 bh=srpjM+m9JSVbLhmkoMDgkNUzsBwUW0ZKuLG4RFIBe9U=;
 b=VE4YeEhY07b0ts76fiWRR4NNPUyDIbFXDC20ibjjGzAErJw+czwq31XOaT8vrJnz6j
 vBeNOILKJ8jzb9rcgy0jbKUc+pMpajA+GtMOGfG20OJidzrFzcgUUw9BlSHyEZTHSX3l
 pi0e4hWpfn0GHRS9N2NMAtWI2mS1FbxJCNrBaR+5fcV1iTmGIkpgQlWGTfaANm98x1fC
 BTXo3If3OxbT18VJkLNAj1ZHnKT7IwchZeq1aYTmjvQVoFDn0rMY+Jo5UJG9zO93hTET
 dKWi2/9U8B5KwlSWgjolK7Wb6c5wOdYXMtIld1tCbfsvVWgT4/D9alo7BfVcGSlHPXCw
 J7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:from:to:cc:subject:content-transfer-encoding;
 bh=srpjM+m9JSVbLhmkoMDgkNUzsBwUW0ZKuLG4RFIBe9U=;
 b=EWWL5Ko8R+RL9SM1dtfvOBIwCrdXv49vYGFEFClhyf8h4m9i162vNREUuGurIfbRoK
 nDjpzmU95u6YqDqvneXnxJf3KAHfMJk2U03Pouz31wWQOXweEbnUioNAgFRJFbUZYZBS
 uT04TbBo5GMznxjr1hpog9XZ1Zyn4HMzHv7YcoPzijLj3Zb6GJwAdVTRXfoQoVUWT01E
 I/9xGT+PoOmKdWTWjf9M95keDXLCUkSyh6FMKoV3sNQt/SI8s8MD2eEdI2EmDz/cCQIU
 9iEapkxud+M/PjfZBw6wR1uLpg3Ik9/5otu+08jwRBxfOO1XKLxyrKBaMihSNoQTgxQ8
 F8EA==
X-Gm-Message-State: AOAM5319z+PRX5aPLv/Hrrm0a5Edv9zVjZXpG7UmKlACkzpvBBj9EWQ8
 BiSI+85OTUv6SS7lPAh/wpk=
X-Google-Smtp-Source: ABdhPJy38C4v2oUW6VpP+dLOpd170KnfpHdmsZwqBVhAuS7jgxo+TOWeGoBLpeakOFYhC4jOSFSBjQ==
X-Received: by 2002:a05:6000:168f:: with SMTP id
 y15mr36091337wrd.61.1638220454987; 
 Mon, 29 Nov 2021 13:14:14 -0800 (PST)
Received: from ?IPV6:2003:ea:8f1a:f00:8596:696b:f4cd:9c8e?
 (p200300ea8f1a0f008596696bf4cd9c8e.dip0.t-ipconnect.de.
 [2003:ea:8f1a:f00:8596:696b:f4cd:9c8e])
 by smtp.googlemail.com with ESMTPSA id k37sm410371wms.21.2021.11.29.13.14.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 13:14:14 -0800 (PST)
Message-ID: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
Date: Mon, 29 Nov 2021 22:14:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Subject: [Intel-wired-lan] [PATCH net] igb: fix deadlock caused by taking
 RTNL in RPM resume path
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Recent net core changes caused an issue with few Intel drivers
(reportedly igb), where taking RTNL in RPM resume path results in a
deadlock. See [0] for a bug report. I don't think the core changes
are wrong, but taking RTNL in RPM resume path isn't needed.
The Intel drivers are the only ones doing this. See [1] for a
discussion on the issue. Following patch changes the RPM resume path
to not take RTNL.

[0] https://bugzilla.kernel.org/show_bug.cgi?id=215129
[1] https://lore.kernel.org/netdev/20211125074949.5f897431@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/t/

Fixes: bd869245a3dc ("net: core: try to runtime-resume detached device in __dev_open")
Fixes: f32a21376573 ("ethtool: runtime-resume netdev parent before ethtool ioctl ops")
Tested-by: Martin Stolpe <martin.stolpe@gmail.com>
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index dd208930f..8073cce73 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9254,7 +9254,7 @@ static int __maybe_unused igb_suspend(struct device *dev)
 	return __igb_shutdown(to_pci_dev(dev), NULL, 0);
 }
 
-static int __maybe_unused igb_resume(struct device *dev)
+static int __maybe_unused __igb_resume(struct device *dev, bool rpm)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -9297,17 +9297,24 @@ static int __maybe_unused igb_resume(struct device *dev)
 
 	wr32(E1000_WUS, ~0);
 
-	rtnl_lock();
+	if (!rpm)
+		rtnl_lock();
 	if (!err && netif_running(netdev))
 		err = __igb_open(netdev, true);
 
 	if (!err)
 		netif_device_attach(netdev);
-	rtnl_unlock();
+	if (!rpm)
+		rtnl_unlock();
 
 	return err;
 }
 
+static int __maybe_unused igb_resume(struct device *dev)
+{
+	return __igb_resume(dev, false);
+}
+
 static int __maybe_unused igb_runtime_idle(struct device *dev)
 {
 	struct net_device *netdev = dev_get_drvdata(dev);
@@ -9326,7 +9333,7 @@ static int __maybe_unused igb_runtime_suspend(struct device *dev)
 
 static int __maybe_unused igb_runtime_resume(struct device *dev)
 {
-	return igb_resume(dev);
+	return __igb_resume(dev, true);
 }
 
 static void igb_shutdown(struct pci_dev *pdev)
@@ -9442,7 +9449,7 @@ static pci_ers_result_t igb_io_error_detected(struct pci_dev *pdev,
  *  @pdev: Pointer to PCI device
  *
  *  Restart the card from scratch, as if from a cold-boot. Implementation
- *  resembles the first-half of the igb_resume routine.
+ *  resembles the first-half of the __igb_resume routine.
  **/
 static pci_ers_result_t igb_io_slot_reset(struct pci_dev *pdev)
 {
@@ -9482,7 +9489,7 @@ static pci_ers_result_t igb_io_slot_reset(struct pci_dev *pdev)
  *
  *  This callback is called when the error recovery driver tells us that
  *  its OK to resume normal operation. Implementation resembles the
- *  second-half of the igb_resume routine.
+ *  second-half of the __igb_resume routine.
  */
 static void igb_io_resume(struct pci_dev *pdev)
 {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
