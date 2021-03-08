Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC7D3318C4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Mar 2021 21:42:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEEED40125;
	Mon,  8 Mar 2021 20:42:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y3u__ryVh95a; Mon,  8 Mar 2021 20:42:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C52E54011D;
	Mon,  8 Mar 2021 20:42:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D5691BF380
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 20:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0829A82F51
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 20:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c4S9EAQfcW_V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Mar 2021 20:41:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BAB7482EFC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 20:41:59 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id o1so8550318qta.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Mar 2021 12:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=N1vxx7bSOX3ktk6FlyseMJiz5RVz3VbHu7ezGR0lIG8=;
 b=W2brxf3rsPSUmueCeV3+6QwF4oBwh4V4AiJR8+uZliQyh5GArcoM225q2uV/Nc5uME
 vFXuEnq/f/h6O7+hIWZAD5kJXfJGDjW5NDKG6WO/UiKrIqwmIF+Bie66R1X3WgG9T5Y/
 LPxATVoSMNTc9EGYJysplERRyxO5a6Yj7caeOo3prxaQl/PmKOc0tSrCEFnlc91frf71
 8XNrrLbQ34tM1zO48t7LqOd3lsL2kqnq+afinMCQGdJryBbfBZSRRQL5K+ftYUhXN16k
 drlkBLH68od8jPT/I2NpeLTush2TshMvxZQ4GBKqPZIs6KbCJe/Rt2ak6R+ySkOW6YrQ
 KxMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=N1vxx7bSOX3ktk6FlyseMJiz5RVz3VbHu7ezGR0lIG8=;
 b=IM2TV/Muqj2dRLZO1igCx2U5Sq2OoeL+p9H2VYGyHoyUdhZ7nol6fIGK1l0EX6kszY
 QdgGS2JysRxrxKU2OJtXk73yy6sYrIsGzRmI0VFG3ryEfdVBgg6UK1nX99hYVi4tQY8t
 BiPHLjdu/PvWz5SaTQv+I6jedDq0q36t/9RnQBHoLX8VoYfIbh9i2up8nUQCz8YJ6bk6
 THoB6GVi/t3yK91neiKJ2H5cQBCm8PADSAjzu1fJC4mhd9ie6UsxQZ++yFdjiIU/yLsm
 oUYP9/m9s03YzAtDl9u6b35a8rp87NsZ8Xcw54S51JsqRgFMUrPYzT6eecWFhFL8GmBy
 3Fxw==
X-Gm-Message-State: AOAM5311CNpa2glBH2xWznVouGWjd3P2YHFDIKN2LLo1y7gxyEWPL9wb
 JQFbS9tYDFOcKXUZagdqf5A=
X-Google-Smtp-Source: ABdhPJzbIw3+O2srn6pbCnJk8PDVnPMNC4sNrSlkm2cxYsgn16O56UUPFqfpH7QG1ZPIefDNeGFUDQ==
X-Received: by 2002:aed:3001:: with SMTP id 1mr17834911qte.125.1615236118418; 
 Mon, 08 Mar 2021 12:41:58 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id g18sm4862265qtp.43.2021.03.08.12.41.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 12:41:58 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 08 Mar 2021 12:41:56 -0800
Message-ID: <161523611656.36376.3641992659589167121.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net PATCH] ixgbe: Fix NULL pointer dereference
 in ethtool loopback test
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexanderduyck@fb.com>

The ixgbe driver currently generates a NULL pointer dereference when
performing the ethtool loopback test. This is due to the fact that there
isn't a q_vector associated with the test ring when it is setup as
interrupts are not normally added to the test rings.

To address this I have added code that will check for a q_vector before
returning a napi_id value. If a q_vector is not present it will return a
value of 0.

Fixes: b02e5a0ebb17 ("xsk: Propagate napi_id to XDP socket Rx path")
Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |    9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index fae84202d870..724cdd669957 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6534,6 +6534,13 @@ static int ixgbe_setup_all_tx_resources(struct ixgbe_adapter *adapter)
 	return err;
 }
 
+static int ixgbe_rx_napi_id(struct ixgbe_ring *rx_ring)
+{
+	struct ixgbe_q_vector *q_vector = rx_ring->q_vector;
+
+	return q_vector ? q_vector->napi.napi_id : 0;
+}
+
 /**
  * ixgbe_setup_rx_resources - allocate Rx resources (Descriptors)
  * @adapter: pointer to ixgbe_adapter
@@ -6582,7 +6589,7 @@ int ixgbe_setup_rx_resources(struct ixgbe_adapter *adapter,
 
 	/* XDP RX-queue info */
 	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
-			     rx_ring->queue_index, rx_ring->q_vector->napi.napi_id) < 0)
+			     rx_ring->queue_index, ixgbe_rx_napi_id(rx_ring)) < 0)
 		goto err;
 
 	rx_ring->xdp_prog = adapter->xdp_prog;


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
