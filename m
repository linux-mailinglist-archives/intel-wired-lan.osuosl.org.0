Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7214287A03
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2019 14:31:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABA5586C82;
	Fri,  9 Aug 2019 12:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aylrFcuQ8j4M; Fri,  9 Aug 2019 12:31:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1617285E93;
	Fri,  9 Aug 2019 12:31:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE94F1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2019 12:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EBD86226A2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2019 12:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iaJpY5VhezyA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2019 12:31:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 383C4203B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2019 12:31:38 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9390F21783;
 Fri,  9 Aug 2019 12:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565353898;
 bh=L2KXkheRoHKjYKV85GvatHU+MtUf78ksKzsQO2I9arA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Aol/JY1p/cJuCmH7NCrufOwJ8wRP6jO4IcLrPra8RxN/gAL1Q4FCQ0nqSH4Epv1r6
 AxwPKcVMhtzLPA9uDXeROcX7FzV7ruAWobz90F0A21Xl7OqRrF0MaWs8RHf8yoywlu
 kOMcPIBD/8NXQsI9XOUwt+vMnwu8H0m9FvZX9DxE=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: netdev@vger.kernel.org
Date: Fri,  9 Aug 2019 14:31:07 +0200
Message-Id: <20190809123108.27065-17-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190809123108.27065-1-gregkh@linuxfoundation.org>
References: <20190809123108.27065-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 16/17] ixgbe: no need to check return
 value of debugfs_create functions
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 .../net/ethernet/intel/ixgbe/ixgbe_debugfs.c  | 22 +++++--------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c
index 50dfb02fa34c..171cdc552961 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c
@@ -190,22 +190,12 @@ static const struct file_operations ixgbe_dbg_netdev_ops_fops = {
 void ixgbe_dbg_adapter_init(struct ixgbe_adapter *adapter)
 {
 	const char *name = pci_name(adapter->pdev);
-	struct dentry *pfile;
+
 	adapter->ixgbe_dbg_adapter = debugfs_create_dir(name, ixgbe_dbg_root);
-	if (adapter->ixgbe_dbg_adapter) {
-		pfile = debugfs_create_file("reg_ops", 0600,
-					    adapter->ixgbe_dbg_adapter, adapter,
-					    &ixgbe_dbg_reg_ops_fops);
-		if (!pfile)
-			e_dev_err("debugfs reg_ops for %s failed\n", name);
-		pfile = debugfs_create_file("netdev_ops", 0600,
-					    adapter->ixgbe_dbg_adapter, adapter,
-					    &ixgbe_dbg_netdev_ops_fops);
-		if (!pfile)
-			e_dev_err("debugfs netdev_ops for %s failed\n", name);
-	} else {
-		e_dev_err("debugfs entry for %s failed\n", name);
-	}
+	debugfs_create_file("reg_ops", 0600, adapter->ixgbe_dbg_adapter,
+			    adapter, &ixgbe_dbg_reg_ops_fops);
+	debugfs_create_file("netdev_ops", 0600, adapter->ixgbe_dbg_adapter,
+			    adapter, &ixgbe_dbg_netdev_ops_fops);
 }
 
 /**
@@ -224,8 +214,6 @@ void ixgbe_dbg_adapter_exit(struct ixgbe_adapter *adapter)
 void ixgbe_dbg_init(void)
 {
 	ixgbe_dbg_root = debugfs_create_dir(ixgbe_driver_name, NULL);
-	if (ixgbe_dbg_root == NULL)
-		pr_err("init of debugfs failed\n");
 }
 
 /**
-- 
2.22.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
