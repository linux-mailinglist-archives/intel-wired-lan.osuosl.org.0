Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 148C468AA40
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 14:36:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52A9660E92;
	Sat,  4 Feb 2023 13:36:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52A9660E92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675517803;
	bh=BAv2sNKV90w1SEdHSToKtbEbUN1Z43qJO/sUs0KIOes=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ftnL23zJjus8YITe7ExO3xPDcWdXAkHNi534xdU5NkOdYrLYUqVBXsavlD9Ej4Em/
	 vG0tBQMFjQUgj9WxNYVEMsaCM3I5Tp2mavbzYQp4nspLNqUCZRdSJQpVmeKxzcHHi6
	 bLKTqnRCMlEQW22hsiXXaJblArFuYHdCKx4+mvsJ2exlzbG/F23uC9Vir0N2fngxBJ
	 KhZQI56NAvZ0MgkwsRGdyUBPWSNW8j6dyxx79cVobI4p4OoStGWoFwdkMUbAchfLsW
	 x9J+yfFFRENwIl9E9OVzzFksM+HdU01GJQvK7h8pR3QWfVG54HzONYEYipuKXa5Tqy
	 /7j4/2m+Mjmrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pQf21HOJRDNg; Sat,  4 Feb 2023 13:36:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EB5660C17;
	Sat,  4 Feb 2023 13:36:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EB5660C17
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB6ED1BF362
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 844F1401AE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 844F1401AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uz0eQA3WtSXy for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Feb 2023 13:36:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0AC140136
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0AC140136
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:36:35 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id v23so7905065plo.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Feb 2023 05:36:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=I7aOuN0Z7cOy5dqAaUiuywFRmsjtA1MOUQCg+0SjNXU=;
 b=gg2+xzRWkQATgNwWsOWOK2MzTF0eIkN8JmpNUOpfYTjaMTOoP3RuZov0rKh35Q9IH9
 OvxZwBBXx5IuL39Accy+W5R/5HD/vwnqTeUUfkUHOEoYSyfRRqTPLATtnYwwBNBEEBPN
 9PR7muH6rGQLlzpxS8ul7G6WgPLaBNwlUPr7ir8L7B8d0S6wKiOWgRIdzLtL7EQegcFD
 XlgWo04ZNT44WdKqOxGRYIB+T7SKG9DcpRPl/4zrR/8hm14GHXORxFNwbk1IFLj/iSVF
 1WnOfCovI2V3BYbHp4MXmDf01RFApiCwVCi/k4J+9MKUOgKmdTjNWAp2OzBE9SulOY7b
 S6xw==
X-Gm-Message-State: AO0yUKUJ5l+dDvdiaSOhtGDojbQrxMsCrwnROCmzYwNi8PjZDLrNgMgv
 /ZE3FxopjMr4vs4qqlQbrkfykC/XaUi+KmV7
X-Google-Smtp-Source: AK7set82L+r+w/YrVVuZAZANVizJHQi1In+ibQ/DGgzNViqqEPE3/I68sA2MSzKX5CKJXUzpeZXg7A==
X-Received: by 2002:a17:902:c792:b0:198:f13d:14d4 with SMTP id
 w18-20020a170902c79200b00198f13d14d4mr2096692pla.55.1675517795162; 
 Sat, 04 Feb 2023 05:36:35 -0800 (PST)
Received: from KERNELXING-MB0.tencent.com ([114.253.32.172])
 by smtp.gmail.com with ESMTPSA id
 21-20020a170902c25500b0019605a51d50sm3463575plg.61.2023.02.04.05.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Feb 2023 05:36:34 -0800 (PST)
From: Jason Xing <kerneljasonxing@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 alexandr.lobakin@intel.com, maciej.fijalkowski@intel.com
Date: Sat,  4 Feb 2023 21:35:33 +0800
Message-Id: <20230204133535.99921-2-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230204133535.99921-1-kerneljasonxing@gmail.com>
References: <20230204133535.99921-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I7aOuN0Z7cOy5dqAaUiuywFRmsjtA1MOUQCg+0SjNXU=;
 b=hQQzKyaWdvmDukB36qd0U5WCkp30kIycSrZRPaiYB6pruSWlSVqjbWe4IfTgeuB0yR
 utHtWsyC5FHYj7jhdKBwoJt7BJcbWiTGic0/xWP98GLBGRBUmJrzQzo/KYU9ov/g9x7z
 SLTd07Li+6rqmJAx/49QJH7roZibn/7/Wt+ZfNuTPScFP9Rv1IilK/PIPG030I+Uj/xt
 ZuOYv6p2oYQbemS0aDa1ua+ujhyIoUgMXaRhkM2aqtctNEEX87Su3XdzhhV/plrSKja+
 k2QuO1K1OJfY+Rmy2lYd2MmOK9UB0vJ4LItB1FW0VW+t32TlgiRp63x4ucZQplmHA/Er
 eXIw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=hQQzKyaW
Subject: [Intel-wired-lan] [PATCH net v3 1/3] ixgbe: allow to increase MTU
 to 3K with XDP enabled
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
