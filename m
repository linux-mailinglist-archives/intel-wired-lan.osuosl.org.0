Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CE0D4478
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 17:35:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8174486C94;
	Fri, 11 Oct 2019 15:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 81tJd2cyADlc; Fri, 11 Oct 2019 15:34:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A25C868C8;
	Fri, 11 Oct 2019 15:34:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 710001BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 15:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6D1BA2033E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 15:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eCB8c-9JX1p0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 15:34:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 5254420358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 15:34:55 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id l49so472191qtc.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 08:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=2TneVaqkEeq7iRsx8qpUF3PWYTP/k7iRKEvf+OH4SAM=;
 b=hvgkB9NSY9OOOARCqHzjvawgDiVddbwdhx2EG1OuiCP48FoQLPnOa326Vc93eys/HQ
 7EDSX1VDepP6ekoR+uaacLRAVgTx//XgcaBU4/LdB/jaq3hbjs2tlvvNgyNlU7EwPYxN
 1KbxAPuznBJQYgSjPl4i7ORR9ijB80EG3SELMDE6HhyZPbDdicR6COroWcyh6pxxlG5v
 91018w7D7y3/jnwUhgMZYMk35ISopyB9uHKJyqgPzJJ77P6Z4l5ezFzPFbHxKjVprAtS
 Tr2SWpexie93ePcAmnoHP4Kmi9u4JEfecfUVQ1jxdep0903Q6Z4eXA3AFtWxIH931E9l
 ec0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=2TneVaqkEeq7iRsx8qpUF3PWYTP/k7iRKEvf+OH4SAM=;
 b=ZMcDhR9z6qUfVDfgeU5kh+tgymmyqz/iKvNqYeWxAx9+kHO7ZNHROQs7YvKYa0f/Mi
 3Vjy9b36SUkDnV+KodD49qL/26CDi4KfwqKWMO6eQUmUlW8e+bHHJwAtHNsbFIM1VsLY
 V9jyI0qJ1chhEBsQSPZQX/mz1NtwtLYZQl7zXEFOczxTzsLnDVTam6YBb1pDXEAtvwrm
 NO+7Cdaxyg6BDVTZfq3lxKI8/j/+MHO7MReYz4rgtPctjON9OBYBocYxkYe6KewGzSR9
 7z2zsWfccaHJ2wTEA0G/ZElGjAzwHYGsIdSOOI5kZYse8SUVJUqWRDkr3HOY+yTabz9y
 UZ/Q==
X-Gm-Message-State: APjAAAXY9J3pwnbkJL91A9irzHo9E8qRkfOVTqCoaWwItWEWY7qll5Jc
 FsIo0XYX7r6QmnHyjBzK8wo=
X-Google-Smtp-Source: APXvYqx5GuDSEFLUieBCplZoo7+ZF+DCt+DvOTvBNBAQa2iTVa0mNRjgSfSL9deseyETIedwJLL0oQ==
X-Received: by 2002:ac8:108e:: with SMTP id a14mr17902032qtj.225.1570808094266; 
 Fri, 11 Oct 2019 08:34:54 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id 63sm4345649qkh.82.2019.10.11.08.34.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 08:34:53 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: alexander.h.duyck@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com
Date: Fri, 11 Oct 2019 08:34:52 -0700
Message-ID: <20191011153452.22313.70522.stgit@localhost.localdomain>
In-Reply-To: <20191011153219.22313.60179.stgit@localhost.localdomain>
References: <20191011153219.22313.60179.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v2 1/2] e1000e: Use rtnl_lock
 to prevent race conditions between net and pci/pm
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

Reported-by: Morumuri Srivalli <smorumu1@in.ibm.com>
Tested-by: David Dai <zdai@linux.vnet.ibm.com>
Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c |   68 ++++++++++++++--------------
 1 file changed, 35 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index d7d56e42a6aa..db1591eef28e 100644
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
@@ -6560,6 +6566,30 @@ static void e1000e_disable_aspm_locked(struct pci_dev *pdev, u16 state)
 	__e1000e_disable_aspm(pdev, state, 1);
 }
 
+static int e1000e_pm_thaw(struct device *dev)
+{
+	struct net_device *netdev = dev_get_drvdata(dev);
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+	int rc = 0;
+
+	e1000e_set_interrupt_capability(adapter);
+
+	rtnl_lock();
+	if (netif_running(netdev)) {
+		rc = e1000_request_irq(adapter);
+		if (rc)
+			goto err_irq;
+
+		e1000e_up(adapter);
+	}
+
+	netif_device_attach(netdev);
+err_irq:
+	rtnl_unlock();
+
+	return rc;
+}
+
 #ifdef CONFIG_PM
 static int __e1000_resume(struct pci_dev *pdev)
 {
@@ -6627,26 +6657,6 @@ static int __e1000_resume(struct pci_dev *pdev)
 }
 
 #ifdef CONFIG_PM_SLEEP
-static int e1000e_pm_thaw(struct device *dev)
-{
-	struct net_device *netdev = dev_get_drvdata(dev);
-	struct e1000_adapter *adapter = netdev_priv(netdev);
-
-	e1000e_set_interrupt_capability(adapter);
-	if (netif_running(netdev)) {
-		u32 err = e1000_request_irq(adapter);
-
-		if (err)
-			return err;
-
-		e1000e_up(adapter);
-	}
-
-	netif_device_attach(netdev);
-
-	return 0;
-}
-
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
