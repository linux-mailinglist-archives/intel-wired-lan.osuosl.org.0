Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DED78506D3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Feb 2024 23:08:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBFA860639;
	Sat, 10 Feb 2024 22:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FgLKW6vdh0rl; Sat, 10 Feb 2024 22:08:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7B6260620
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707602918;
	bh=aTm+zf836yXsONX0N7qPKVnnwoLZckPO1Iegic392fA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ev9p6yT6K+dlIGBfz+5ujcVW2fucj4cuAj6hLwrTw4blHnz25y3qXROL46Vf0v+ln
	 pvNxRqx8Od+TY/yPmp7hmqyiZw2KbKVeX+XMJ48k+CNkjd/iIo7z2P3nSYRL2/3pjh
	 4MK6EFV4iU4vrHwYOKN/EMt2TwVII7m2EzXvrHGHuG9RqOGzgjyC9lM1T9H9n3HS3+
	 R49FbrSYVfITSGbzRtRHBcOrssZ36uxjdnspjvDoQOhAyK/mZJ6sRl47GRx0XAkkBR
	 JQ2JySD+IU3//N9IeMOz3bk/1A9hZqKyD4TRmNNWuOuTbtsRRtisDx1G4VWdeg+iv2
	 yaerw+fsoZM1g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7B6260620;
	Sat, 10 Feb 2024 22:08:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 731B31BF290
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 22:08:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5958E404E5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 22:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id na96pJo7uCtl for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Feb 2024 22:08:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D9EA404E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D9EA404E9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D9EA404E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 22:08:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10980"; a="1474826"
X-IronPort-AV: E=Sophos;i="6.05,259,1701158400"; 
   d="scan'208";a="1474826"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2024 14:01:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,259,1701158400"; 
   d="scan'208";a="2211150"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2024 14:01:20 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 10 Feb 2024 14:01:09 -0800
Message-Id: <20240210220109.3179408-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
References: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707602908; x=1739138908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yqkC3nDo6oAPPJm3ckB44ys8NP8v9sXxc0s5t6E8xRk=;
 b=lwAYk+q83BmH4FJP9tvHh7wgRbXOxIhvd0DZR4m9oFdQtQr0MUaAKkr7
 mQfQNIcK25RitqUgdQibCjCI6o0b94jPMEeQV1l8Tsw21MFPyjD2RvZkT
 k/KNQRTWaPw/9hr+L0wE+EgLujEz/ovKvMsW/u5MBUVnQKAgHCqHk7r8h
 1XpefrHOU1EtFgMz0VdUB/sxGRmxp0drQ4WceCu7YHYqqlB7+AeMkLWoQ
 SbBlPhjVSYguOSB+FO1kJ+2e+aZ9vYAjPL4KsYvxzUnsbX2CfdbsaR/QR
 5XA5DYSG1SNxmSpSOvWKzUlaZ62KhOmUwuej9F5sYjOhPyicTHYjBF256
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lwAYk+q8
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] net: intel: implement
 modern PM ops declarations
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Alan Brady <alan.brady@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Switch the Intel networking drivers to use the new power management ops
declaration formats and macros, which allows us to drop __maybe_unused,
as well as a bunch of ifdef checking CONFIG_PM.

This is safe to do because the compiler drops the unused functions,
verified by checking for any of the power management function symbols
being present in System.map for a build without CONFIG_PM.

If a driver has runtime PM, define the ops with pm_ptr(), and if the
driver has Simple PM, use pm_sleep_ptr(), as well as the new versions of
the macros for declaring the members of the pm_ops structs.

Checked with network-enabled allnoconfig, allyesconfig, allmodconfig on
x64_64.

Reviewed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
e1p-v2: dropped errant idpf change, updated after v2 1/2 updates to
move the declation down for igb_pm_ops.
---
 drivers/net/ethernet/intel/e100.c             |  8 +++----
 drivers/net/ethernet/intel/e1000/e1000_main.c | 14 +++++------
 drivers/net/ethernet/intel/e1000e/netdev.c    | 22 +++++++----------
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c  | 10 ++++----
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 10 ++++----
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  8 +++----
 drivers/net/ethernet/intel/igb/igb_main.c     | 24 ++++++++-----------
 drivers/net/ethernet/intel/igbvf/netdev.c     |  6 ++---
 drivers/net/ethernet/intel/igc/igc_main.c     | 24 +++++++------------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  8 +++----
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  8 +++----
 11 files changed, 60 insertions(+), 82 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 01f0f12035ca..5a9e8cf4b2ee 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -3037,7 +3037,7 @@ static int __e100_power_off(struct pci_dev *pdev, bool wake)
 	return 0;
 }
 
-static int __maybe_unused e100_suspend(struct device *dev_d)
+static int e100_suspend(struct device *dev_d)
 {
 	bool wake;
 
@@ -3046,7 +3046,7 @@ static int __maybe_unused e100_suspend(struct device *dev_d)
 	return 0;
 }
 
-static int __maybe_unused e100_resume(struct device *dev_d)
+static int e100_resume(struct device *dev_d)
 {
 	struct net_device *netdev = dev_get_drvdata(dev_d);
 	struct nic *nic = netdev_priv(netdev);
@@ -3163,7 +3163,7 @@ static const struct pci_error_handlers e100_err_handler = {
 	.resume = e100_io_resume,
 };
 
-static SIMPLE_DEV_PM_OPS(e100_pm_ops, e100_suspend, e100_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(e100_pm_ops, e100_suspend, e100_resume);
 
 static struct pci_driver e100_driver = {
 	.name =         DRV_NAME,
@@ -3172,7 +3172,7 @@ static struct pci_driver e100_driver = {
 	.remove =       e100_remove,
 
 	/* Power Management hooks */
-	.driver.pm =	&e100_pm_ops,
+	.driver.pm =	pm_sleep_ptr(&e100_pm_ops),
 
 	.shutdown =     e100_shutdown,
 	.err_handler = &e100_err_handler,
diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 1d1e93686af2..5b43f9b194fc 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -149,8 +149,8 @@ static int e1000_vlan_rx_kill_vid(struct net_device *netdev,
 				  __be16 proto, u16 vid);
 static void e1000_restore_vlan(struct e1000_adapter *adapter);
 
-static int __maybe_unused e1000_suspend(struct device *dev);
-static int __maybe_unused e1000_resume(struct device *dev);
+static int e1000_suspend(struct device *dev);
+static int e1000_resume(struct device *dev);
 static void e1000_shutdown(struct pci_dev *pdev);
 
 #ifdef CONFIG_NET_POLL_CONTROLLER
@@ -175,16 +175,14 @@ static const struct pci_error_handlers e1000_err_handler = {
 	.resume = e1000_io_resume,
 };
 
-static SIMPLE_DEV_PM_OPS(e1000_pm_ops, e1000_suspend, e1000_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(e1000_pm_ops, e1000_suspend, e1000_resume);
 
 static struct pci_driver e1000_driver = {
 	.name     = e1000_driver_name,
 	.id_table = e1000_pci_tbl,
 	.probe    = e1000_probe,
 	.remove   = e1000_remove,
-	.driver = {
-		.pm = &e1000_pm_ops,
-	},
+	.driver.pm = pm_sleep_ptr(&e1000_pm_ops),
 	.shutdown = e1000_shutdown,
 	.err_handler = &e1000_err_handler
 };
@@ -5135,7 +5133,7 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool *enable_wake)
 	return 0;
 }
 
-static int __maybe_unused e1000_suspend(struct device *dev)
+static int e1000_suspend(struct device *dev)
 {
 	int retval;
 	struct pci_dev *pdev = to_pci_dev(dev);
@@ -5147,7 +5145,7 @@ static int __maybe_unused e1000_suspend(struct device *dev)
 	return retval;
 }
 
-static int __maybe_unused e1000_resume(struct device *dev)
+static int e1000_resume(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index af5d9d97a0d6..cb2d56054bba 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6950,13 +6950,13 @@ static int __e1000_resume(struct pci_dev *pdev)
 	return 0;
 }
 
-static __maybe_unused int e1000e_pm_prepare(struct device *dev)
+static int e1000e_pm_prepare(struct device *dev)
 {
 	return pm_runtime_suspended(dev) &&
 		pm_suspend_via_firmware();
 }
 
-static __maybe_unused int e1000e_pm_suspend(struct device *dev)
+static int e1000e_pm_suspend(struct device *dev)
 {
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
 	struct e1000_adapter *adapter = netdev_priv(netdev);
@@ -6979,7 +6979,7 @@ static __maybe_unused int e1000e_pm_suspend(struct device *dev)
 	return rc;
 }
 
-static __maybe_unused int e1000e_pm_resume(struct device *dev)
+static int e1000e_pm_resume(struct device *dev)
 {
 	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
 	struct e1000_adapter *adapter = netdev_priv(netdev);
@@ -7013,7 +7013,7 @@ static __maybe_unused int e1000e_pm_runtime_idle(struct device *dev)
 	return -EBUSY;
 }
 
-static __maybe_unused int e1000e_pm_runtime_resume(struct device *dev)
+static int e1000e_pm_runtime_resume(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -7032,7 +7032,7 @@ static __maybe_unused int e1000e_pm_runtime_resume(struct device *dev)
 	return rc;
 }
 
-static __maybe_unused int e1000e_pm_runtime_suspend(struct device *dev)
+static int e1000e_pm_runtime_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -7919,8 +7919,7 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 };
 MODULE_DEVICE_TABLE(pci, e1000_pci_tbl);
 
-static const struct dev_pm_ops e1000_pm_ops = {
-#ifdef CONFIG_PM_SLEEP
+static const struct dev_pm_ops e1000e_pm_ops = {
 	.prepare	= e1000e_pm_prepare,
 	.suspend	= e1000e_pm_suspend,
 	.resume		= e1000e_pm_resume,
@@ -7928,9 +7927,8 @@ static const struct dev_pm_ops e1000_pm_ops = {
 	.thaw		= e1000e_pm_thaw,
 	.poweroff	= e1000e_pm_suspend,
 	.restore	= e1000e_pm_resume,
-#endif
-	SET_RUNTIME_PM_OPS(e1000e_pm_runtime_suspend, e1000e_pm_runtime_resume,
-			   e1000e_pm_runtime_idle)
+	RUNTIME_PM_OPS(e1000e_pm_runtime_suspend, e1000e_pm_runtime_resume,
+		       e1000e_pm_runtime_idle)
 };
 
 /* PCI Device API Driver */
@@ -7939,9 +7937,7 @@ static struct pci_driver e1000_driver = {
 	.id_table = e1000_pci_tbl,
 	.probe    = e1000_probe,
 	.remove   = e1000_remove,
-	.driver   = {
-		.pm = &e1000_pm_ops,
-	},
+	.driver.pm = pm_ptr(&e1000e_pm_ops),
 	.shutdown = e1000_shutdown,
 	.err_handler = &e1000_err_handler
 };
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
index d748b98274e7..92de609b7218 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
@@ -2342,7 +2342,7 @@ static int fm10k_handle_resume(struct fm10k_intfc *interface)
  * suspend or hibernation. This function does not need to handle lower PCIe
  * device state as the stack takes care of that for us.
  **/
-static int __maybe_unused fm10k_resume(struct device *dev)
+static int fm10k_resume(struct device *dev)
 {
 	struct fm10k_intfc *interface = dev_get_drvdata(dev);
 	struct net_device *netdev = interface->netdev;
@@ -2369,7 +2369,7 @@ static int __maybe_unused fm10k_resume(struct device *dev)
  * system suspend or hibernation. This function does not need to handle lower
  * PCIe device state as the stack takes care of that for us.
  **/
-static int __maybe_unused fm10k_suspend(struct device *dev)
+static int fm10k_suspend(struct device *dev)
 {
 	struct fm10k_intfc *interface = dev_get_drvdata(dev);
 	struct net_device *netdev = interface->netdev;
@@ -2502,16 +2502,14 @@ static const struct pci_error_handlers fm10k_err_handler = {
 	.reset_done = fm10k_io_reset_done,
 };
 
-static SIMPLE_DEV_PM_OPS(fm10k_pm_ops, fm10k_suspend, fm10k_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(fm10k_pm_ops, fm10k_suspend, fm10k_resume);
 
 static struct pci_driver fm10k_driver = {
 	.name			= fm10k_driver_name,
 	.id_table		= fm10k_pci_tbl,
 	.probe			= fm10k_probe,
 	.remove			= fm10k_remove,
-	.driver = {
-		.pm		= &fm10k_pm_ops,
-	},
+	.driver.pm		= pm_sleep_ptr(&fm10k_pm_ops),
 	.sriov_configure	= fm10k_iov_configure,
 	.err_handler		= &fm10k_err_handler
 };
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6e7fd473abfd..cb78f9b948ef 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16596,7 +16596,7 @@ static void i40e_shutdown(struct pci_dev *pdev)
  * i40e_suspend - PM callback for moving to D3
  * @dev: generic device information structure
  **/
-static int __maybe_unused i40e_suspend(struct device *dev)
+static int i40e_suspend(struct device *dev)
 {
 	struct i40e_pf *pf = dev_get_drvdata(dev);
 	struct i40e_hw *hw = &pf->hw;
@@ -16647,7 +16647,7 @@ static int __maybe_unused i40e_suspend(struct device *dev)
  * i40e_resume - PM callback for waking up from D3
  * @dev: generic device information structure
  **/
-static int __maybe_unused i40e_resume(struct device *dev)
+static int i40e_resume(struct device *dev)
 {
 	struct i40e_pf *pf = dev_get_drvdata(dev);
 	int err;
@@ -16693,16 +16693,14 @@ static const struct pci_error_handlers i40e_err_handler = {
 	.resume = i40e_pci_error_resume,
 };
 
-static SIMPLE_DEV_PM_OPS(i40e_pm_ops, i40e_suspend, i40e_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(i40e_pm_ops, i40e_suspend, i40e_resume);
 
 static struct pci_driver i40e_driver = {
 	.name     = i40e_driver_name,
 	.id_table = i40e_pci_tbl,
 	.probe    = i40e_probe,
 	.remove   = i40e_remove,
-	.driver   = {
-		.pm = &i40e_pm_ops,
-	},
+	.driver.pm = pm_sleep_ptr(&i40e_pm_ops),
 	.shutdown = i40e_shutdown,
 	.err_handler = &i40e_err_handler,
 	.sriov_configure = i40e_pci_sriov_configure,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 335fd13e86f7..b9ae6281def5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5032,7 +5032,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
  *
  * Called when the system (VM) is entering sleep/suspend.
  **/
-static int __maybe_unused iavf_suspend(struct device *dev_d)
+static int iavf_suspend(struct device *dev_d)
 {
 	struct net_device *netdev = dev_get_drvdata(dev_d);
 	struct iavf_adapter *adapter = netdev_priv(netdev);
@@ -5060,7 +5060,7 @@ static int __maybe_unused iavf_suspend(struct device *dev_d)
  *
  * Called when the system (VM) is resumed from sleep/suspend.
  **/
-static int __maybe_unused iavf_resume(struct device *dev_d)
+static int iavf_resume(struct device *dev_d)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_d);
 	struct iavf_adapter *adapter;
@@ -5247,14 +5247,14 @@ static void iavf_shutdown(struct pci_dev *pdev)
 		pci_set_power_state(pdev, PCI_D3hot);
 }
 
-static SIMPLE_DEV_PM_OPS(iavf_pm_ops, iavf_suspend, iavf_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(iavf_pm_ops, iavf_suspend, iavf_resume);
 
 static struct pci_driver iavf_driver = {
 	.name      = iavf_driver_name,
 	.id_table  = iavf_pci_tbl,
 	.probe     = iavf_probe,
 	.remove    = iavf_remove,
-	.driver.pm = &iavf_pm_ops,
+	.driver.pm = pm_sleep_ptr(&iavf_pm_ops),
 	.shutdown  = iavf_shutdown,
 };
 
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index fdca4901defa..4ee220821ff1 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9438,12 +9438,12 @@ static void igb_deliver_wake_packet(struct net_device *netdev)
 	netif_rx(skb);
 }
 
-static int __maybe_unused igb_suspend(struct device *dev)
+static int igb_suspend(struct device *dev)
 {
 	return __igb_shutdown(to_pci_dev(dev), NULL, 0);
 }
 
-static int __maybe_unused __igb_resume(struct device *dev, bool rpm)
+static int __igb_resume(struct device *dev, bool rpm)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -9499,12 +9499,12 @@ static int __maybe_unused __igb_resume(struct device *dev, bool rpm)
 	return err;
 }
 
-static int __maybe_unused igb_resume(struct device *dev)
+static int igb_resume(struct device *dev)
 {
 	return __igb_resume(dev, false);
 }
 
-static int __maybe_unused igb_runtime_idle(struct device *dev)
+static int igb_runtime_idle(struct device *dev)
 {
 	struct net_device *netdev = dev_get_drvdata(dev);
 	struct igb_adapter *adapter = netdev_priv(netdev);
@@ -9515,12 +9515,12 @@ static int __maybe_unused igb_runtime_idle(struct device *dev)
 	return -EBUSY;
 }
 
-static int __maybe_unused igb_runtime_suspend(struct device *dev)
+static int igb_runtime_suspend(struct device *dev)
 {
 	return __igb_shutdown(to_pci_dev(dev), NULL, 1);
 }
 
-static int __maybe_unused igb_runtime_resume(struct device *dev)
+static int igb_runtime_resume(struct device *dev)
 {
 	return __igb_resume(dev, true);
 }
@@ -10143,20 +10143,16 @@ static void igb_nfc_filter_restore(struct igb_adapter *adapter)
 	spin_unlock(&adapter->nfc_lock);
 }
 
-#ifdef CONFIG_PM
-static const struct dev_pm_ops igb_pm_ops = {
-	SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
-	SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
-			igb_runtime_idle)
-};
-#endif
+static _DEFINE_DEV_PM_OPS(igb_pm_ops, igb_suspend, igb_resume,
+			  igb_runtime_suspend, igb_runtime_resume,
+			  igb_runtime_idle);
 
 static struct pci_driver igb_driver = {
 	.name     = igb_driver_name,
 	.id_table = igb_pci_tbl,
 	.probe    = igb_probe,
 	.remove   = igb_remove,
-	.driver.pm = &igb_pm_ops,
+	.driver.pm = pm_ptr(&igb_pm_ops),
 	.shutdown = igb_shutdown,
 	.sriov_configure = igb_pci_sriov_configure,
 	.err_handler = &igb_err_handler
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index a4d4f00e6a87..9b5faf7d4c19 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2470,7 +2470,7 @@ static int igbvf_suspend(struct device *dev_d)
 	return 0;
 }
 
-static int __maybe_unused igbvf_resume(struct device *dev_d)
+static int igbvf_resume(struct device *dev_d)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_d);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -2957,7 +2957,7 @@ static const struct pci_device_id igbvf_pci_tbl[] = {
 };
 MODULE_DEVICE_TABLE(pci, igbvf_pci_tbl);
 
-static SIMPLE_DEV_PM_OPS(igbvf_pm_ops, igbvf_suspend, igbvf_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(igbvf_pm_ops, igbvf_suspend, igbvf_resume);
 
 /* PCI Device API Driver */
 static struct pci_driver igbvf_driver = {
@@ -2965,7 +2965,7 @@ static struct pci_driver igbvf_driver = {
 	.id_table	= igbvf_pci_tbl,
 	.probe		= igbvf_probe,
 	.remove		= igbvf_remove,
-	.driver.pm	= &igbvf_pm_ops,
+	.driver.pm	= pm_sleep_ptr(&igbvf_pm_ops),
 	.shutdown	= igbvf_shutdown,
 	.err_handler	= &igbvf_err_handler
 };
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c3fe62813f43..3f26d03582bb 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7114,8 +7114,7 @@ static int __igc_shutdown(struct pci_dev *pdev, bool *enable_wake,
 	return 0;
 }
 
-#ifdef CONFIG_PM
-static int __maybe_unused igc_runtime_suspend(struct device *dev)
+static int igc_runtime_suspend(struct device *dev)
 {
 	return __igc_shutdown(to_pci_dev(dev), NULL, 1);
 }
@@ -7150,7 +7149,7 @@ static void igc_deliver_wake_packet(struct net_device *netdev)
 	netif_rx(skb);
 }
 
-static int __maybe_unused igc_resume(struct device *dev)
+static int igc_resume(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -7203,12 +7202,12 @@ static int __maybe_unused igc_resume(struct device *dev)
 	return err;
 }
 
-static int __maybe_unused igc_runtime_resume(struct device *dev)
+static int igc_runtime_resume(struct device *dev)
 {
 	return igc_resume(dev);
 }
 
-static int __maybe_unused igc_suspend(struct device *dev)
+static int igc_suspend(struct device *dev)
 {
 	return __igc_shutdown(to_pci_dev(dev), NULL, 0);
 }
@@ -7223,7 +7222,6 @@ static int __maybe_unused igc_runtime_idle(struct device *dev)
 
 	return -EBUSY;
 }
-#endif /* CONFIG_PM */
 
 static void igc_shutdown(struct pci_dev *pdev)
 {
@@ -7338,22 +7336,16 @@ static const struct pci_error_handlers igc_err_handler = {
 	.resume = igc_io_resume,
 };
 
-#ifdef CONFIG_PM
-static const struct dev_pm_ops igc_pm_ops = {
-	SET_SYSTEM_SLEEP_PM_OPS(igc_suspend, igc_resume)
-	SET_RUNTIME_PM_OPS(igc_runtime_suspend, igc_runtime_resume,
-			   igc_runtime_idle)
-};
-#endif
+static _DEFINE_DEV_PM_OPS(igc_pm_ops, igc_suspend, igc_resume,
+			  igc_runtime_suspend, igc_runtime_resume,
+			  igc_runtime_idle);
 
 static struct pci_driver igc_driver = {
 	.name     = igc_driver_name,
 	.id_table = igc_pci_tbl,
 	.probe    = igc_probe,
 	.remove   = igc_remove,
-#ifdef CONFIG_PM
-	.driver.pm = &igc_pm_ops,
-#endif
+	.driver.pm = pm_ptr(&igc_pm_ops),
 	.shutdown = igc_shutdown,
 	.err_handler = &igc_err_handler,
 };
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index e23c3614fb10..97c82e04bf14 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6944,7 +6944,7 @@ int ixgbe_close(struct net_device *netdev)
 	return 0;
 }
 
-static int __maybe_unused ixgbe_resume(struct device *dev_d)
+static int ixgbe_resume(struct device *dev_d)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_d);
 	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
@@ -7052,7 +7052,7 @@ static int __ixgbe_shutdown(struct pci_dev *pdev, bool *enable_wake)
 	return 0;
 }
 
-static int __maybe_unused ixgbe_suspend(struct device *dev_d)
+static int ixgbe_suspend(struct device *dev_d)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_d);
 	int retval;
@@ -11516,14 +11516,14 @@ static const struct pci_error_handlers ixgbe_err_handler = {
 	.resume = ixgbe_io_resume,
 };
 
-static SIMPLE_DEV_PM_OPS(ixgbe_pm_ops, ixgbe_suspend, ixgbe_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(ixgbe_pm_ops, ixgbe_suspend, ixgbe_resume);
 
 static struct pci_driver ixgbe_driver = {
 	.name      = ixgbe_driver_name,
 	.id_table  = ixgbe_pci_tbl,
 	.probe     = ixgbe_probe,
 	.remove    = ixgbe_remove,
-	.driver.pm = &ixgbe_pm_ops,
+	.driver.pm = pm_sleep_ptr(&ixgbe_pm_ops),
 	.shutdown  = ixgbe_shutdown,
 	.sriov_configure = ixgbe_pci_sriov_configure,
 	.err_handler = &ixgbe_err_handler
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index a44e4bd56142..c852d8ac0c37 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -4300,7 +4300,7 @@ static int ixgbevf_change_mtu(struct net_device *netdev, int new_mtu)
 	return 0;
 }
 
-static int __maybe_unused ixgbevf_suspend(struct device *dev_d)
+static int ixgbevf_suspend(struct device *dev_d)
 {
 	struct net_device *netdev = dev_get_drvdata(dev_d);
 	struct ixgbevf_adapter *adapter = netdev_priv(netdev);
@@ -4317,7 +4317,7 @@ static int __maybe_unused ixgbevf_suspend(struct device *dev_d)
 	return 0;
 }
 
-static int __maybe_unused ixgbevf_resume(struct device *dev_d)
+static int ixgbevf_resume(struct device *dev_d)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_d);
 	struct net_device *netdev = pci_get_drvdata(pdev);
@@ -4854,7 +4854,7 @@ static const struct pci_error_handlers ixgbevf_err_handler = {
 	.resume = ixgbevf_io_resume,
 };
 
-static SIMPLE_DEV_PM_OPS(ixgbevf_pm_ops, ixgbevf_suspend, ixgbevf_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(ixgbevf_pm_ops, ixgbevf_suspend, ixgbevf_resume);
 
 static struct pci_driver ixgbevf_driver = {
 	.name		= ixgbevf_driver_name,
@@ -4863,7 +4863,7 @@ static struct pci_driver ixgbevf_driver = {
 	.remove		= ixgbevf_remove,
 
 	/* Power Management Hooks */
-	.driver.pm	= &ixgbevf_pm_ops,
+	.driver.pm	= pm_sleep_ptr(&ixgbevf_pm_ops),
 
 	.shutdown	= ixgbevf_shutdown,
 	.err_handler	= &ixgbevf_err_handler
-- 
2.39.3

