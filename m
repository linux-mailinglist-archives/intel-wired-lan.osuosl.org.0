Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 540CBCC699
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Oct 2019 01:36:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF2F487784;
	Fri,  4 Oct 2019 23:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPCh6JhYXlWL; Fri,  4 Oct 2019 23:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D728E87DF6;
	Fri,  4 Oct 2019 23:36:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 294E11BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 23:36:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 24EE387DC7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 23:36:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XZ+As2d-iB0U for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2019 23:36:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4BEB787784
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 23:36:30 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q21so4782823pfn.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Oct 2019 16:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=uq5dLXCgT8nJTGVExdBj8Luqw5LRTYqv/HDSGnL/8bQ=;
 b=C4QFkSbdL80M+PyNr5WjJ+pNwZAuWdXCHac6uCU82O9qb+50g2pJTgu1iK3Rjfnpyy
 16wY0CfxUtWVqhJI8sHmGvFaYD26juIQ1MHMlbCAdslJ9qUKwXSyU3UPJVDitkBOeRAm
 Trf5ZR4rSffI9S1RYClsS5zx+XAhAgo4VsvMMWVk1TgVJ0UPXoz1FTOWXlul06suhnF/
 wJW8gH73t6AxOi/164gd/TW9DM04ayTz02ry+tiZuFU8BlPnaUUrRl6+0cW4cPONdDF0
 4ax5mkwk8m17CGUM1x6ojljGAaLax3fbIIC3U0Z/ffPGOfj2dZQum4xst0TOz6/uq8Sd
 1ZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=uq5dLXCgT8nJTGVExdBj8Luqw5LRTYqv/HDSGnL/8bQ=;
 b=lJFHCru6HkParBkSfbuXxiIzVS0LF9936OYTN1puygZ2ffJa2ARRbkv1FUayPb4wAo
 nCsaFaA3192NnjksY7UrglPmlcMj1q83gOPD7TUZhpRnPrBoyptRiEIuR14vDxrAlZDp
 s2IPwEDjBBSPg+glSts0ttQYxWsTFq74dj3jKt03PpfuCTgTiliMG8tmR6AzVX6CDh2Q
 T52Rfv3TA+zx4xaciX8Y62h6s5vSjXUfvmjroeO4K8oA3dALAGRsJ+szTx6md3zeZtaQ
 Cqa3aUOxTTqP3TRW5gUz6w54C+Aez62WYSEMEH14nS9W51JlQ+gLI+cN2aV0/DbTkbXm
 BLLA==
X-Gm-Message-State: APjAAAV3TymGc/13Z64Tyb8nRcYW+uhFJgaZIpehMFG/TJFkUuaRNMnK
 3NhP8Gb413xim2rELDkij6k=
X-Google-Smtp-Source: APXvYqxkTKd7qSSmhsjfIIXj9NqcVmR19wGr95pMepA+eZ5L+dtWv0zuz/vq5r6xBZ9M64jkBZMukA==
X-Received: by 2002:a17:90a:3847:: with SMTP id
 l7mr19970718pjf.118.1570232189510; 
 Fri, 04 Oct 2019 16:36:29 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id y80sm8012493pfc.30.2019.10.04.16.36.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 16:36:28 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: zdai@linux.vnet.ibm.com
Date: Fri, 04 Oct 2019 16:36:28 -0700
Message-ID: <20191004233052.28865.1609.stgit@localhost.localdomain>
In-Reply-To: <1570208647.1250.55.camel@oc5348122405>
References: <1570208647.1250.55.camel@oc5348122405>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH] e1000e: Use rtnl_lock to prevent race
 conditions between net and pci/pm
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, zdai@us.ibm.com, davem@davemloft.net
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

Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---

I'm putting this out as an RFC for now. I haven't had a chance to do much
testing yet, but I have verified no build issues, and the driver appears
to load, link, and pass traffic without problems.

This should address issues seen with either double freeing or never freeing
IRQs that have been seen on this and similar drivers in the past.

I'll submit this formally after testing it over the weekend assuming there
are no issues.

 drivers/net/ethernet/intel/e1000e/netdev.c |   33 ++++++++++++++--------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index d7d56e42a6aa..182a2c8f12d8 100644
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
@@ -6299,6 +6299,7 @@ static int e1000e_pm_freeze(struct device *dev)
 	struct net_device *netdev = dev_get_drvdata(dev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 
+	rtnl_lock();
 	netif_device_detach(netdev);
 
 	if (netif_running(netdev)) {
@@ -6313,6 +6314,8 @@ static int e1000e_pm_freeze(struct device *dev)
 		e1000e_down(adapter, false);
 		e1000_free_irq(adapter);
 	}
+	rtnl_unlock();
+
 	e1000e_reset_interrupt_capability(adapter);
 
 	/* Allow time for pending master requests to run */
@@ -6626,27 +6629,30 @@ static int __e1000_resume(struct pci_dev *pdev)
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
-
-	return 0;
+	rtnl_unlock();
+err_irq:
+	return rc;
 }
 
+#ifdef CONFIG_PM_SLEEP
 static int e1000e_pm_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
@@ -6821,13 +6827,11 @@ static pci_ers_result_t e1000_io_error_detected(struct pci_dev *pdev,
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 
-	netif_device_detach(netdev);
+	e1000e_pm_freeze(&pdev->dev);
 
 	if (state == pci_channel_io_perm_failure)
 		return PCI_ERS_RESULT_DISCONNECT;
 
-	if (netif_running(netdev))
-		e1000e_down(adapter, true);
 	pci_disable_device(pdev);
 
 	/* Request a slot slot reset. */
@@ -6893,10 +6897,7 @@ static void e1000_io_resume(struct pci_dev *pdev)
 
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
