Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02B688AA0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Aug 2019 12:18:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D458C87EB5;
	Sat, 10 Aug 2019 10:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b020e3yWDGeH; Sat, 10 Aug 2019 10:18:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0976987EC4;
	Sat, 10 Aug 2019 10:18:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0767C1BF355
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2019 10:17:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0451887221
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2019 10:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yky7K80pMVrh for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Aug 2019 10:17:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 80B138701E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2019 10:17:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE7AD20B7C;
 Sat, 10 Aug 2019 10:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565432278;
 bh=eZCNw2T0pwR0XZKm3lCuhtzleU2BOFgFGsSlDmTtInU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k1WgvDC/7sp4HYce5PcOJuXz/Au/KuY6wYRQkxkIPpCV2pZklWoOEhJhmEl6OmHud
 DtKD8SF55SdINlF/OHolzKcoylMrp8drz7A2I/t+gjPvB2/HZgJ+5SD8QaK4CvSqtb
 Y1ugUPgqjzN6+EAk/qaOEvy8bTpFZeeaE5XrS9YQ=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: netdev@vger.kernel.org
Date: Sat, 10 Aug 2019 12:17:30 +0200
Message-Id: <20190810101732.26612-16-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190810101732.26612-1-gregkh@linuxfoundation.org>
References: <20190810101732.26612-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 15/17] i40e: no need to check return
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
 .../net/ethernet/intel/i40e/i40e_debugfs.c    | 22 ++++---------------
 1 file changed, 4 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 55d20acfcf70..41232898d8ae 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -1732,29 +1732,15 @@ static const struct file_operations i40e_dbg_netdev_ops_fops = {
  **/
 void i40e_dbg_pf_init(struct i40e_pf *pf)
 {
-	struct dentry *pfile;
 	const char *name = pci_name(pf->pdev);
-	const struct device *dev = &pf->pdev->dev;
 
 	pf->i40e_dbg_pf = debugfs_create_dir(name, i40e_dbg_root);
-	if (!pf->i40e_dbg_pf)
-		return;
-
-	pfile = debugfs_create_file("command", 0600, pf->i40e_dbg_pf, pf,
-				    &i40e_dbg_command_fops);
-	if (!pfile)
-		goto create_failed;
 
-	pfile = debugfs_create_file("netdev_ops", 0600, pf->i40e_dbg_pf, pf,
-				    &i40e_dbg_netdev_ops_fops);
-	if (!pfile)
-		goto create_failed;
+	debugfs_create_file("command", 0600, pf->i40e_dbg_pf, pf,
+			    &i40e_dbg_command_fops);
 
-	return;
-
-create_failed:
-	dev_info(dev, "debugfs dir/file for %s failed\n", name);
-	debugfs_remove_recursive(pf->i40e_dbg_pf);
+	debugfs_create_file("netdev_ops", 0600, pf->i40e_dbg_pf, pf,
+			    &i40e_dbg_netdev_ops_fops);
 }
 
 /**
-- 
2.22.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
