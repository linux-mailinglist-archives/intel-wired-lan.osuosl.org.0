Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7CC712AA9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 May 2023 18:32:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2972D6F563;
	Fri, 26 May 2023 16:31:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2972D6F563
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685118718;
	bh=8JTHiNx7n/gAADwLORAGZkE/Ow8a05zRE59G9HNnlxQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GX11EzPmPWJwrP3oM7xPjZE6smGbVnSCed+uznb0BmcBI99iRwKh/6DicXsqOj4A/
	 ZdSfWjQHPAQA+TxS0ull3V9JpjhSSJJ1ILAapDDv81Gh7HNEYrpc7iSBw5IT+P2PLo
	 sVJtueIe6JCE+Mt2XtLI/JX+RnbLVWVqZDcU9w3UIylhrO/oqU8WixN/yCCk9A164K
	 N9k3QiaSUL7OO6mal0AlN3ZUJ1PR3q/6WN18S4CB/NGXXVNG/AJR6oa6VDpWnbvYl+
	 aLA5lvSs17mnkcyJ/lhnhR/R2JOirnCFngi1aBth8HGiSQR9au6TPaSMGu8uocoVS/
	 KTx+D+kFTef7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ajIUmS21viW; Fri, 26 May 2023 16:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1733760F07;
	Fri, 26 May 2023 16:31:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1733760F07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 174251BF286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 16:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E35994298A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 16:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E35994298A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pswPJR9Gs-ng for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 16:31:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B79C4297E
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4B79C4297E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 16:31:50 +0000 (UTC)
Received: from localhost.localdomain (unknown [222.129.46.53])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id C31F13F31A; 
 Fri, 26 May 2023 16:31:42 +0000 (UTC)
From: Aaron Ma <aaron.ma@canonical.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 27 May 2023 00:30:01 +0800
Message-Id: <20230526163001.67626-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1685118707;
 bh=57miZDXOCNaK6tD9EQyTdzb3H2EJUEdxtiowrYgkh8M=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=vYJkBs4CRMDmglsfLsozufsMSpdWWObOoz+hbVQbTxd+nmNcC53zfm/H+Nv+/vD94
 5INDWT7zg89xW1W7MqodtQUmF7AKCQpwb9Sxt142yXYUEMX6RQCPE+AkdPVXlCiWxr
 UFubze04ej+LBU6p00lVYmwfpjcY3hb5c6BuNO0uTBckh3f20rtrgeZSgT/j7Wudsw
 tzORwQha7V+EQiCFhp9HgiHvsxfu65Vif0el8fZo0OJDLGrlHxlHwdC56sdVjODLE4
 H8my+zxCJ8muF4qSNkJYxQyWd04WL+bJYeyd39Z68m7fMQNKhLoEfKovP2dsvoInTu
 QVayoXkbAy5rw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=vYJkBs4C
Subject: [Intel-wired-lan] [PATCH] igb: fix hang issue of AER error during
 resume
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PCIe AER error_detected caused a race issue with igb_resume.
Protect error_detected when igb is in down state.

Error logs:
kernel: igb 0000:02:00.0: disabling already-disabled device
kernel: WARNING: CPU: 0 PID: 277 at drivers/pci/pci.c:2248 pci_disable_device+0xc4/0xf0
kernel: RIP: 0010:pci_disable_device+0xc4/0xf0
kernel: Call Trace:
kernel:  <TASK>
kernel:  igb_io_error_detected+0x3e/0x60
kernel:  report_error_detected+0xd6/0x1c0
kernel:  ? __pfx_report_normal_detected+0x10/0x10
kernel:  report_normal_detected+0x16/0x30
kernel:  pci_walk_bus+0x74/0xa0
kernel:  pcie_do_recovery+0xb9/0x340
kernel:  ? __pfx_aer_root_reset+0x10/0x10
kernel:  aer_process_err_devices+0x168/0x220
kernel:  aer_isr+0x1b5/0x1e0
kernel:  ? __pfx_irq_thread_fn+0x10/0x10
kernel:  irq_thread_fn+0x21/0x70
kernel:  irq_thread+0xf8/0x1c0
kernel:  ? __pfx_irq_thread_dtor+0x10/0x10
kernel:  ? __pfx_irq_thread+0x10/0x10
kernel:  kthread+0xef/0x120
kernel:  ? __pfx_kthread+0x10/0x10
kernel:  ret_from_fork+0x29/0x50
kernel:  </TASK>
kernel: ---[ end trace 0000000000000000 ]---

Link: https://bugzilla.kernel.org/show_bug.cgi?id=217446
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 58872a4c2540..8333d4ac8169 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9581,14 +9581,21 @@ static pci_ers_result_t igb_io_error_detected(struct pci_dev *pdev,
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igb_adapter *adapter = netdev_priv(netdev);
 
+	if (test_bit(__IGB_DOWN, &adapter->state))
+		return PCI_ERS_RESULT_DISCONNECT;
+
+	rtnl_lock();
 	netif_device_detach(netdev);
 
-	if (state == pci_channel_io_perm_failure)
+	if (state == pci_channel_io_perm_failure) {
+		rtnl_unlock();
 		return PCI_ERS_RESULT_DISCONNECT;
+	}
 
 	if (netif_running(netdev))
 		igb_down(adapter);
 	pci_disable_device(pdev);
+	rtnl_unlock();
 
 	/* Request a slot reset. */
 	return PCI_ERS_RESULT_NEED_RESET;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
