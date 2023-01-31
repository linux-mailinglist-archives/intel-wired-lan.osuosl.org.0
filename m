Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B196822C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 04:24:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D79C4605EC;
	Tue, 31 Jan 2023 03:24:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D79C4605EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675135495;
	bh=BAv2sNKV90w1SEdHSToKtbEbUN1Z43qJO/sUs0KIOes=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ktmikc2w50hdahNZrH5Y9qfc0gfsHjVMASwGbR48RKozzpt+9BoqukjyfhN5iUlL8
	 wJAfiX45f+q3l3wLGIJ3jjZsDLRy0iPnoIzj1+0simFyRR/oTiqQXMF9/Io7uk02Bx
	 8SwwVTH01CvydspWafXAXi4NGl5glvX2pwfMvCzo476DWPQqEkn4EDCea21HDpz7/C
	 pBysI+hl0UUPE+eU1WW4FpR69y/jDfqp8q3I3W1S4tM6jxzv+mIVebzi+1zjgytSLm
	 JN4NZrEHJAKwnbISqtOyqkrKkbuzKVdM9xG5D8HBDH7ldbtD4RUoem9IhjStUj22VY
	 0WeUViC9EETwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Daw1lma3ZPK9; Tue, 31 Jan 2023 03:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1657605E0;
	Tue, 31 Jan 2023 03:24:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1657605E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CB501BF834
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 03:24:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45240400CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 03:24:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45240400CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vjIwrfG-tMlO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 03:24:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 808C2400B8
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 808C2400B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 03:24:49 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id g9so7249521pfk.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 19:24:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=I7aOuN0Z7cOy5dqAaUiuywFRmsjtA1MOUQCg+0SjNXU=;
 b=Naz/C/4t8Q/qLdafvC7YdES+T5/lY//rSh5CXU1PYXwV1kJpoCmw4OwtJ0gG8beybU
 DJtM3KiCU2jfiByY+berUL1W2ZpdAzhLbQEvnw1iUFcNuqKcthOSMQeUq4mK8kNZyr3D
 344RPIDdfsBQV7VXmP668ok0y5BwyQmU1ROIG6m2cxU6lYSahd/51Z/VqtW0IXa0cWlQ
 QnJ1bNDJ47JzSsIGTMplwQm7FPEOd2vGq7IrxKazf5V8JMPfOQLg6AidC1epE09rFNhV
 z6K5jO3LNOhC7u9+dV2CUb1O6bmYOerYBzeZuf7w155TA1VRj058fJDPdSTGjxftLe2y
 oHlg==
X-Gm-Message-State: AO0yUKWuZxS/Cw6tH+f+F7YOHLMB+xh7fASTRBj1HyFyBqqMe/NW+24i
 rRKsf4Pi72DUtHyJ2FBhH2c=
X-Google-Smtp-Source: AK7set/B7wVZT+I5etpqA/nHbyamv863RRwrdx2lkYxVfeAJYa94pjlygbTNxMJtL7wq1rfDVeJNqQ==
X-Received: by 2002:a62:585:0:b0:590:32a9:b276 with SMTP id
 127-20020a620585000000b0059032a9b276mr19003810pff.22.1675135488934; 
 Mon, 30 Jan 2023 19:24:48 -0800 (PST)
Received: from KERNELXING-MB0.tencent.com ([103.7.29.31])
 by smtp.gmail.com with ESMTPSA id
 189-20020a6215c6000000b005906dbf5f80sm8207545pfv.163.2023.01.30.19.24.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Jan 2023 19:24:48 -0800 (PST)
From: Jason Xing <kerneljasonxing@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 alexandr.lobakin@intel.com, maciej.fijalkowski@intel.com
Date: Tue, 31 Jan 2023 11:23:57 +0800
Message-Id: <20230131032357.34029-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=I7aOuN0Z7cOy5dqAaUiuywFRmsjtA1MOUQCg+0SjNXU=;
 b=QLP6qnxqtTVUGl8ftH1gx2SHFDp02aveZTLQWaEOtDVIhjkRGUGKMk4EpnBNTjEMlk
 1rBuU1LF13nS12x7YzruzYDNrITQ50V3D9ZwxIu4okbxWH6j68pqU6HzH4d0mgMYblMi
 HOMRc4MZmxa1zygmqSMOatsw5R+MuyeIzSQpi0Ace2iJBsdIqOjuWrePd48IjOjX935U
 1Fplq+GekDXsYlncVjlLu2ia7+kYovFP9bJz/HTX+W4iKtHLgdnnmRaOdpF8rghpjDoV
 b6+BdmJPqzpfznLLxThiKt0XOAxz0eHB3wZan1KdmVHd9wSahApJzACHQucJ+R4LhFaP
 0zOQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=QLP6qnxq
Subject: [Intel-wired-lan] [PATCH v3 net] ixgbe: allow to increase MTU to 3K
 with XDP enabled
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
Cc: kerneljasonxing@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <kernelxing@tencent.com>

Recently I encountered one case where I cannot increase the MTU size
directly from 1500 to a much bigger value with XDP enabled if the
server is equipped with IXGBE card, which happened on thousands of
servers in production environment. After appling the current patch,
we can set the maximum MTU size to 3K.

This patch follows the behavior of changing MTU as i40e/ice does.

Referrences:
[1] commit 23b44513c3e6 ("ice: allow 3k MTU for XDP")
[2] commit 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")

Fixes: fabf1bce103a ("ixgbe: Prevent unsupported configurations with XDP")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
v3:
1) modify the titile and body message.

v2:
1) change the commit message.
2) modify the logic when changing MTU size suggested by Maciej and Alexander.
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 25 ++++++++++++-------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ab8370c413f3..2c1b6eb60436 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6777,6 +6777,18 @@ static void ixgbe_free_all_rx_resources(struct ixgbe_adapter *adapter)
 			ixgbe_free_rx_resources(adapter->rx_ring[i]);
 }
 
+/**
+ * ixgbe_max_xdp_frame_size - returns the maximum allowed frame size for XDP
+ * @adapter - device handle, pointer to adapter
+ */
+static int ixgbe_max_xdp_frame_size(struct ixgbe_adapter *adapter)
+{
+	if (PAGE_SIZE >= 8192 || adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
+		return IXGBE_RXBUFFER_2K;
+	else
+		return IXGBE_RXBUFFER_3K;
+}
+
 /**
  * ixgbe_change_mtu - Change the Maximum Transfer Unit
  * @netdev: network interface device structure
@@ -6788,18 +6800,13 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 
-	if (adapter->xdp_prog) {
+	if (ixgbe_enabled_xdp_adapter(adapter)) {
 		int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
 				     VLAN_HLEN;
-		int i;
-
-		for (i = 0; i < adapter->num_rx_queues; i++) {
-			struct ixgbe_ring *ring = adapter->rx_ring[i];
 
-			if (new_frame_size > ixgbe_rx_bufsz(ring)) {
-				e_warn(probe, "Requested MTU size is not supported with XDP\n");
-				return -EINVAL;
-			}
+		if (new_frame_size > ixgbe_max_xdp_frame_size(adapter)) {
+			e_warn(probe, "Requested MTU size is not supported with XDP\n");
+			return -EINVAL;
 		}
 	}
 
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
