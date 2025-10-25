Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E47B0C0EEBA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 16:22:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBC8161095;
	Mon, 27 Oct 2025 15:22:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q4EVvO0uAppH; Mon, 27 Oct 2025 15:22:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCB05610DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761578532;
	bh=Y7Rj9E2CdLAIkXLhpNINjdklw1IJhaMfMqQhc80+fB4=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8nBTZ+1aaQZMxp3b4cJVlYY072xrrWrBiNwB8FS6S1ICc9hsftYpPyUw1TPWla2Of
	 Xh5F2bPed4xVacwO1N+2YvOrmo8kbWhEE+Wh16FDQhLLNz12D1CQUvO8a/8JR79eF3
	 lRmj4qASSZSk+lWRV47MsBqozc/wRxdAAUW54HOOpCKgbLuTyGz+yY3SnfhIAueG7x
	 jmobzQcQ6LUCyd2B1W+29p/5db+68UW67YSNfZQ61xypLySyatcwsC7rvztKi0IPbY
	 H/FzUYSN9M9PER4FLmtMgHD9SPWFNv9oQ+ojSn/7qOFl/cpHHYsXzK7jtZnUrYdY1F
	 9yzRw04WsUQfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCB05610DF;
	Mon, 27 Oct 2025 15:22:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DAAB43F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 04:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F72980C51
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 04:05:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0nWRttXF4Zwk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 04:05:08 +0000 (UTC)
X-Greylist: delayed 1200 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 25 Oct 2025 04:05:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4B64D80C4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B64D80C4C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.189;
 helo=szxga03-in.huawei.com; envelope-from=wangliang74@huawei.com;
 receiver=<UNKNOWN> 
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B64D80C4C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 04:05:06 +0000 (UTC)
Received: from canpmsgout12.his.huawei.com (unknown [172.19.92.144])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4ctls465cwzJsbw
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 11:40:08 +0800 (CST)
Received: from mail.maildlp.com (unknown [172.19.162.112])
 by canpmsgout12.his.huawei.com (SkyGuard) with ESMTPS id 4ctlxk6vMWznTVF;
 Sat, 25 Oct 2025 11:44:10 +0800 (CST)
Received: from dggpemf500016.china.huawei.com (unknown [7.185.36.197])
 by mail.maildlp.com (Postfix) with ESMTPS id 8DF1C140278;
 Sat, 25 Oct 2025 11:44:50 +0800 (CST)
Received: from huawei.com (10.50.85.128) by dggpemf500016.china.huawei.com
 (7.185.36.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Sat, 25 Oct
 2025 11:44:49 +0800
From: Wang Liang <wangliang74@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <yuehaibing@huawei.com>,
 <zhangchangzhong@huawei.com>, <wangliang74@huawei.com>
Date: Sat, 25 Oct 2025 12:07:35 +0800
Message-ID: <20251025040735.558953-1-wangliang74@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.50.85.128]
X-ClientProxiedBy: kwepems200001.china.huawei.com (7.221.188.67) To
 dggpemf500016.china.huawei.com (7.185.36.197)
X-Mailman-Approved-At: Mon, 27 Oct 2025 15:22:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=huawei.com; s=dkim;
 c=relaxed/relaxed; q=dns/txt; h=From;
 bh=Y7Rj9E2CdLAIkXLhpNINjdklw1IJhaMfMqQhc80+fB4=;
 b=T8pDU1FwYdR5RRmiX67izPdS9NVMhoZJZ6aWK1LfM5MzIj8S5CuiPMBmc2i9ZR/DOMT3Nbxhk
 5YJgBhgh9yAjjW2M5AopCT3bmqTSEMwnfr+9yydDdmRjjBbFR2d+m7djIcC/oqkV9dmjAkCaUu6
 d+HD5qU+HLdSL9J2eL7KHPM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=huawei.com header.i=@huawei.com header.a=rsa-sha256
 header.s=dkim header.b=T8pDU1Fw
Subject: [Intel-wired-lan] [PATCH -next] i40e: Replace sscanf() with
 kstrtoint() in i40e_dbg_netdev_ops_write()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 9fcdb1c3c4ba ("i40e: remove read access to debugfs files")
introduced some checkpatch warnings like this:

  WARNING: Prefer kstrto<type> to single variable sscanf
  #240: FILE: drivers/net/ethernet/intel/i40e/i40e_debugfs.c:1655:
  +               cnt = sscanf(&cmd_buf[11], "%i", &vsi_seid);

  WARNING: Prefer kstrto<type> to single variable sscanf
  #251: FILE: drivers/net/ethernet/intel/i40e/i40e_debugfs.c:1676:
  +               cnt = sscanf(&cmd_buf[4], "%i", &vsi_seid);

  total: 0 errors, 2 warnings, 0 checks, 194 lines checked

Function kstrtoint() provides better error detection, overflow protection,
and consistent error handling than sscanf(). Replace sscanf() with
kstrtoint() in i40e_dbg_netdev_ops_write() to silence the checkpatch
warnings.

Signed-off-by: Wang Liang <wangliang74@huawei.com>
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index c17b5d290f0a..2abd12b62509 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -1604,7 +1604,7 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
 	int bytes_not_copied;
 	struct i40e_vsi *vsi;
 	int vsi_seid;
-	int i, cnt;
+	int i, ret;
 
 	/* don't allow partial writes */
 	if (*ppos != 0)
@@ -1629,9 +1629,9 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
 	if (strncmp(cmd_buf, "change_mtu", 10) == 0) {
 		int mtu;
 
-		cnt = sscanf(&cmd_buf[11], "%i %i",
+		ret = sscanf(&cmd_buf[11], "%i %i",
 			     &vsi_seid, &mtu);
-		if (cnt != 2) {
+		if (ret != 2) {
 			dev_info(&pf->pdev->dev, "change_mtu <vsi_seid> <mtu>\n");
 			goto netdev_ops_write_done;
 		}
@@ -1652,8 +1652,8 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
 		}
 
 	} else if (strncmp(cmd_buf, "set_rx_mode", 11) == 0) {
-		cnt = sscanf(&cmd_buf[11], "%i", &vsi_seid);
-		if (cnt != 1) {
+		ret = kstrtoint(&cmd_buf[11], 0, &vsi_seid);
+		if (ret) {
 			dev_info(&pf->pdev->dev, "set_rx_mode <vsi_seid>\n");
 			goto netdev_ops_write_done;
 		}
@@ -1673,8 +1673,8 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
 		}
 
 	} else if (strncmp(cmd_buf, "napi", 4) == 0) {
-		cnt = sscanf(&cmd_buf[4], "%i", &vsi_seid);
-		if (cnt != 1) {
+		ret = kstrtoint(&cmd_buf[4], 0, &vsi_seid);
+		if (ret) {
 			dev_info(&pf->pdev->dev, "napi <vsi_seid>\n");
 			goto netdev_ops_write_done;
 		}
-- 
2.34.1

