Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA86D02B0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 23:16:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C73C0228F1;
	Tue,  8 Oct 2019 21:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NiFu3mqIcXq5; Tue,  8 Oct 2019 21:16:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6BD9122849;
	Tue,  8 Oct 2019 21:16:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA9341BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 21:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C44E0864AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 21:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F1zxGLdQ-7yX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 21:16:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B6EE5862D4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 21:16:40 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 205so143346pfw.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2019 14:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=9BgLihdw1ZoyXxJf00Tp5DPDBIpdV66c7ObSF0tnLfs=;
 b=pKvwcmZ3xe0XMI3Ya/L5wFZ7MGKLCiROvKWI0Kd4vXrPCLv/DjL+FOADw7hpe1jP53
 Qj0qlXiAilGyuwiLvj9UsqxIwcL7fsEY6b9U23v3ix+I5+td4jtaGaghqmGlUmwb6c+b
 Cn2frpZlHhvn+X/AhqbAqQdJqyVQgo01kM042F2mhsAR6hvCG7R4rddIFKL2XhZscBZC
 +BWquFmjZU5iMMaTpNvZg/xcUGYTxZlwgvJb4pewCILoMRSJObIM1aGeIlECX4GgWFkV
 GBXrqamNhfqGnGE1PYlfGJ6e43K3rUn22/etB81boYhfYkkjVCOCIg7Xzxheaj4U3YVP
 XUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=9BgLihdw1ZoyXxJf00Tp5DPDBIpdV66c7ObSF0tnLfs=;
 b=WV+PKBAfRcVJ0iOTMrdIslx4EdYc5AkwPpy23fXN9RaZWTNKKd2ZRCGb7C3OD2K9s4
 2iXKgbIF9weWoa/ZQ8rXc06k7sKlR48rz5MC3f8qfpeT5b7psCMJv78IZSqDWZZREwAw
 KBWfsW0stCsAPDaHoEvp3iKpzVyee9IH5zK6A8PzTItgoEwLrQaHZ0NU6mxPYrzlQsQf
 dhiXMbUHnUYYxMr2ZQ9Y0gw0GcWGmDN+hfmr4XGZXfYyphUavY+/TmTkFmRRMWbhkJEU
 GvHIBP2Ofu2JeIK8aRcBbPAmhQDZqjrToDmmH8NE5E9ix0kUcJ2sIN5MKUHpcteDwu8p
 IVfg==
X-Gm-Message-State: APjAAAXLeTe++jNl8eUUxg5ppb5Fs++snTW6hiCPYdAEEJ3famuOuQqc
 NajgztoENv3BaXJoCLsADpI=
X-Google-Smtp-Source: APXvYqzsQzfz8Sq+HWGNdatcN5154Rodhhpyu6UgfUFg8rd7NvsUxAviSh9bDWId77DslFKGRkC33Q==
X-Received: by 2002:a17:90a:1617:: with SMTP id
 n23mr8326148pja.75.1570569399944; 
 Tue, 08 Oct 2019 14:16:39 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id 193sm54319pfc.59.2019.10.08.14.16.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Oct 2019 14:16:39 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: alexander.h.duyck@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com
Date: Tue, 08 Oct 2019 14:16:38 -0700
Message-ID: <20191008211638.4575.93695.stgit@localhost.localdomain>
In-Reply-To: <20191008210639.4575.44144.stgit@localhost.localdomain>
References: <20191008210639.4575.44144.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH 1/2] e1000e: Use rtnl_lock to
 prevent race conditions between net and pci/pm
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
Cc: netdev@vger.kernel.org, zdai@us.ibm.com, zdai@linux.vnet.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

This patch is meant to address possible race conditions that can exist
between network configuration and power management. A similar issue was
fixed for igb in commit 9474933caf21 ("igb: close/suspend race in
netif_device_detach").

In addition it consolidates the code so that the PCI error handling code
will essentially perform the power management freeze on the device prior to
attempting a reset, and will thaw the device afterwards if that is what it
is planning to do. Otherwise when we call close on the interface it should
see it is detached and not attempt to call the logic to down the interface
and free the IRQs again.

>From what I can tell the check that was adding the check for __E1000_DOWN
in e1000e_close was added when runtime power management was added. However
it should not be relevant for us as we perform a call to
pm_runtime_get_sync before we call e1000_down/free_irq so it should always
be back up before we call into this anyway.

Reported-by: Morumuri Srivalli  <smorumu1@in.ibm.com>
Tested-by: David Dai <zdai@linux.vnet.ibm.com>
Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c |   40 +++++++++++++++-------------
 1 file changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index d7d56e42a6aa..8b4e589aca36 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -4715,12 +4715,12 @@ int e1000e_close(struct net_device *netdev)
 
 	pm_runtime_get_sync(&pdev->dev);
 
-	if (!test_bit(__E1000_DOWN, &adapter->state)) {
+	if (netif_device_present(netdev)) {
 		e1000e_down(adapter, true);
 		e1000_free_irq(adapter);
 
 		/* Link status message must follow this format */
-		pr_info("%s NIC Link is Down\n", adapter->netdev->name);
+		pr_info("%s NIC Link is Down\n", netdev->name);
 	}
 
 	napi_disable(&adapter->napi);
@@ -6298,10 +6298,14 @@ static int e1000e_pm_freeze(struct device *dev)
 {
 	struct net_device *netdev = dev_get_drvdata(dev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
+	bool present;
 
+	rtnl_lock();
+
+	present = netif_device_present(netdev);
 	netif_device_detach(netdev);
 
-	if (netif_running(netdev)) {
+	if (present && netif_running(netdev)) {
 		int count = E1000_CHECK_RESET_COUNT;
 
 		while (test_bit(__E1000_RESETTING, &adapter->state) && count--)
@@ -6313,6 +6317,8 @@ static int e1000e_pm_freeze(struct device *dev)
 		e1000e_down(adapter, false);
 		e1000_free_irq(adapter);
 	}
+	rtnl_unlock();
+
 	e1000e_reset_interrupt_capability(adapter);
 
 	/* Allow time for pending master requests to run */
@@ -6626,27 +6632,31 @@ static int __e1000_resume(struct pci_dev *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM_SLEEP
 static int e1000e_pm_thaw(struct device *dev)
 {
 	struct net_device *netdev = dev_get_drvdata(dev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
+	int rc = 0;
 
 	e1000e_set_interrupt_capability(adapter);
-	if (netif_running(netdev)) {
-		u32 err = e1000_request_irq(adapter);
 
-		if (err)
-			return err;
+	rtnl_lock();
+	if (netif_running(netdev)) {
+		rc = e1000_request_irq(adapter);
+		if (rc)
+			goto err_irq;
 
 		e1000e_up(adapter);
 	}
 
 	netif_device_attach(netdev);
+err_irq:
+	rtnl_unlock();
 
-	return 0;
+	return rc;
 }
 
+#ifdef CONFIG_PM_SLEEP
 static int e1000e_pm_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
@@ -6818,16 +6828,11 @@ static void e1000_netpoll(struct net_device *netdev)
 static pci_ers_result_t e1000_io_error_detected(struct pci_dev *pdev,
 						pci_channel_state_t state)
 {
-	struct net_device *netdev = pci_get_drvdata(pdev);
-	struct e1000_adapter *adapter = netdev_priv(netdev);
-
-	netif_device_detach(netdev);
+	e1000e_pm_freeze(&pdev->dev);
 
 	if (state == pci_channel_io_perm_failure)
 		return PCI_ERS_RESULT_DISCONNECT;
 
-	if (netif_running(netdev))
-		e1000e_down(adapter, true);
 	pci_disable_device(pdev);
 
 	/* Request a slot slot reset. */
@@ -6893,10 +6898,7 @@ static void e1000_io_resume(struct pci_dev *pdev)
 
 	e1000_init_manageability_pt(adapter);
 
-	if (netif_running(netdev))
-		e1000e_up(adapter);
-
-	netif_device_attach(netdev);
+	e1000e_pm_thaw(&pdev->dev);
 
 	/* If the controller has AMT, do not set DRV_LOAD until the interface
 	 * is up.  For all other cases, let the f/w know that the h/w is now

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
