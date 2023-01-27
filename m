Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78ED067E4FD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 13:20:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9ED7341CBB;
	Fri, 27 Jan 2023 12:20:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ED7341CBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674822033;
	bh=RmirnXBE2h1WTTCes8l+R1txvV4T5PqViXLAEEO1QQU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ltioaGF6FT6V66wnFDKKq7yAVXolarNnXX+6E3Ai5putGNmakazfmr9BabY3LPYmX
	 NJom9HftFvSgm6FYbkkcDQuy47B1zy0kSsXKr/wUfFzmTYifdaqS+7TauypIZ6OKhm
	 q0fY5D81KPwESewoig1d0z68RO0806a6s5kOml6I57DVUw58M0fahWO5qLCeK+3zDR
	 jq36AST9mYdgCEbIMCNsJ8pDd99lzhx0DenIBeIQzsfZvdAj33IuiDBlWl0+cvXG2h
	 qqxv4GkjO2paaiEG1wElRPyEaCNp8UV4VEo0wBsqy0zHneyS1STySocGWVgZoc8Pug
	 qqiQWadtB43wQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e1XSYgbMgtto; Fri, 27 Jan 2023 12:20:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B56F41CB9;
	Fri, 27 Jan 2023 12:20:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B56F41CB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A28A71BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A63D827CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:20:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A63D827CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t1SDvPkCccSO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 12:20:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77CFE82726
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77CFE82726
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:20:26 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id p24so4730800plw.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 04:20:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LLT1Nv3FsKGMyXLmpa+ThlcdDGK8ls8MWUnHvX54ufk=;
 b=5m0EyEgPL1JiN02g8FZU3uO2JdXqj+OASsK45wxhoxQt1A/qiHks4tQq4A4zMX6PKV
 t+pQX4lg86fXFVM4WW7xNr/CZrmlbFOnJM/CSwq2pPOdzcJwCXW2ZCybjroSBfPz0q0y
 Aca9qLK47MNBZB6iKK4/p3W9rc/23emKInoSo1+4HmdL+kPBXy69edMvxaV0hrIq/c/s
 FhzpXqJHk8DPy+F0+sg3YeDYxYooT1Mi66VY5IiWg2NQ72NemJAaaBh4d/dPBG7xkcCo
 FyULFHaqbEDCYF3nQAuHTrMr1ZJ9qiJk0CvM3hxsvHxZLDIXrP0waNtRyyT4mnk/eKIT
 WidA==
X-Gm-Message-State: AO0yUKUPbJuIRos1kUySTpzb0jOPCgAJSaEZtqOZTOI/9g3bXe6hJ9Gl
 cR/2mXDTQWNZzx2IXBnipBo=
X-Google-Smtp-Source: AK7set82V7nuhM/DZp31PjOW8pLz2TzfBZeTfHCbBHNMeYlsVOHaZWR2stNZ1kLzsMWNujdXcPJ+6g==
X-Received: by 2002:a17:903:2444:b0:196:15f6:bafc with SMTP id
 l4-20020a170903244400b0019615f6bafcmr13847684pls.47.1674822025876; 
 Fri, 27 Jan 2023 04:20:25 -0800 (PST)
Received: from KERNELXING-MB0.tencent.com ([114.253.32.172])
 by smtp.gmail.com with ESMTPSA id
 d18-20020a170903231200b0019339f3368asm2762942plh.3.2023.01.27.04.20.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Jan 2023 04:20:25 -0800 (PST)
From: Jason Xing <kerneljasonxing@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 alexandr.lobakin@intel.com
Date: Fri, 27 Jan 2023 20:20:18 +0800
Message-Id: <20230127122018.2839-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=LLT1Nv3FsKGMyXLmpa+ThlcdDGK8ls8MWUnHvX54ufk=;
 b=H/A/5YZowQIRbQhn7LrdJgM3fSXHE4dLbYV2js9dGcDWk3J5c6Zmz4NIWQskDigE17
 bw9Q1PyqorE4xx5Hm5CvkH3r77hNYlZJnjKM4Ikv1TeqZuPFO2AL2lUe5HDKu+EaYs9R
 zCuz5dx81flK7bivAKOoWzkIvGmqKOKyzY6RfDJBJbe7aSm5ThV+ltB4lBVbEYr1R5yS
 6jI+PLuoqnxrNk6oCd9yexwPIwZd16pMS8Xc4WOhZUgHhV5ipd41qAJCdLteUdHyaVPQ
 G6Kf3o2QamOfmnhp/ch5ZeQhIcqcQl7SfOLEvfkniZrIaBP+Kik48xH1jgplegwrE3LR
 fIpQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=H/A/5YZo
Subject: [Intel-wired-lan] [PATCH v2 net] ixgbe: allow to increase MTU to
 some extent with XDP enabled
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

I encountered one case where I cannot increase the MTU size directly
from 1500 to 2000 with XDP enabled if the server is equipped with
IXGBE card, which happened on thousands of servers in production
environment.

This patch follows the behavior of changing MTU as i40e/ice does.

Referrences:
commit 23b44513c3e6f ("ice: allow 3k MTU for XDP")
commit 0c8493d90b6bb ("i40e: add XDP support for pass and drop actions")

Link: https://lore.kernel.org/lkml/20230121085521.9566-1-kerneljasonxing@gmail.com/
Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
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
