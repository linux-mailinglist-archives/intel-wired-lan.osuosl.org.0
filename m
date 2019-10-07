Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50891CEA96
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2019 19:28:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E10DD877ED;
	Mon,  7 Oct 2019 17:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JkS2NhYnbNSH; Mon,  7 Oct 2019 17:28:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB204875F9;
	Mon,  7 Oct 2019 17:27:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C9DD1BF419
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:27:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1871E86483
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:27:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 23rZ6meOZCQb for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2019 17:27:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3D3598646F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:27:57 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q7so9064946pfh.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Oct 2019 10:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=rewVBm4IqqEvTaYiuvZUBNZZiDgXMthoGgqbVwwE7fI=;
 b=RVrYNxECPmgNvxSfK06La7b07vRhlukaBBdvvvYhmTRZo+aO+qTFH2ZblgGiJxB9/5
 OvP5MHzQJKg0rzKqupUtvizgdPVhCKRAfrl49yPNVOVlXxRj4npFks9mYqju8oOCAGQA
 dGvcGzd+f++le3NzgBXVDh49kuno995vYdpX8WI3wyUL4iMiYtAfbzX3WrQnWf8RTa93
 oupjUTkdAb3z8UShfYW7aIlM2F3OFyXoVUq5uLaols5fO7kLCvhUr4DbN49+FIN01Lyu
 hBW1an4CIKtF0lcrO6Yfz34VNGvjnv0RBxADmA2g5Paue/HhIaFbgH57xCO8M/TXH8An
 BGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=rewVBm4IqqEvTaYiuvZUBNZZiDgXMthoGgqbVwwE7fI=;
 b=hJSS6bDxZhSsWZRVAWwtLclJgXhMXs9vX/OV9eJVONFWsuctNO+A1W6FQFHRp2JDUv
 5lHrI3JrTs+KG9vXbFG0qWLCdtOFPiiKrk8xHIl6S/g+e4r8xxNRxLFyVq4o1B4Msju7
 tVGV26tB5FNfhLbT4Pbz7IfYPp2QGw9uQ2/Uk+cY6exqlloU53sy2GBwkdmc0/eyStRw
 I+eBKtvLKgj8Si0YN9w+5os4LiLs1dKsA89Oez9EeuN1pZXLhvJhtvHco39khiA+lheY
 8iTDIK5qK4+NZnNfWnjbayvi+jHi6bCTUtKRO7/z3xYhAvhoiZdbIet/xbDDs+drjbhW
 Z6gA==
X-Gm-Message-State: APjAAAWquQ3T9Dl8r9JQhF52jNLx/IQeacibrY5afKCK+oPCyuF80KTK
 5L+ejbqWmZhKpbJ8CqP+/fo=
X-Google-Smtp-Source: APXvYqyBCbO+Qi4CHuA8UQrMr7Jemry4iV0QSvxPw701kJ52QWmD9TrnfhS56eXUMVEYY/OzlknSgg==
X-Received: by 2002:a17:90a:1aa9:: with SMTP id
 p38mr447244pjp.142.1570469276472; 
 Mon, 07 Oct 2019 10:27:56 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id k95sm115110pje.10.2019.10.07.10.27.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Oct 2019 10:27:55 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: alexander.duyck@gmail.com
Date: Mon, 07 Oct 2019 10:27:55 -0700
Message-ID: <20191007172559.11166.29328.stgit@localhost.localdomain>
In-Reply-To: <CAKgT0UdwqGGKvaSJ+3vd-_d-6t9MB=No+7SpkbOT2PnynRK+2w@mail.gmail.com>
References: <CAKgT0UdwqGGKvaSJ+3vd-_d-6t9MB=No+7SpkbOT2PnynRK+2w@mail.gmail.com>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH v2] e1000e: Use rtnl_lock to prevent
 race conditions between net and pci/pm
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
Cc: zdai@linux.vnet.ibm.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 zdai@us.ibm.com, davem@davemloft.net
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

RFC v2: Dropped some unused variables
	Added logic to check for device present before removing to pm_freeze
	Fixed misplaced err_irq to before rtnl_unlock()

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
