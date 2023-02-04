Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCDB68AA45
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 14:37:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F293841BDA;
	Sat,  4 Feb 2023 13:36:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F293841BDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675517819;
	bh=jUUgmTDhkfx86kO60mekVkVYU8LI7WRP1gdLoHoY9r0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CIn6Ybkcy1pTKs8//yPOOUvQzFzhxzLCY/tOp0PJsTWFjSDf1lmB4eZBWA0Skyt2X
	 NNhEATEqTJSTJH1PChcndJA+ZBo8jnc60meT5DOo7VEWutrmxSfsAfHYy0laFO481B
	 LDn6OPJ93RRSjYJ1l1eXWkAoOS8oaLxIb0TmDbBcx+L5rzqE7/XAYASjg4g+NOAFz8
	 cjjp9873Ico2x8QMGOrDV05CcNIoAEkdELQ/bSkK/HvYbsvP1UeY8HKj3ljOVspkOX
	 7uJnKE8uO7ZbiIJxt47W4chbKVTAZFI0CZFIIpf9M0d0VZBGHMw31iStpuw8bWEP2s
	 8B83zIi9/A5vw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fVGgjm0z9SMe; Sat,  4 Feb 2023 13:36:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEEC741B99;
	Sat,  4 Feb 2023 13:36:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEEC741B99
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 098BC1BF362
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:36:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D773782014
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:36:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D773782014
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vlUnM631v5BZ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Feb 2023 13:36:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44F8D8200F
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44F8D8200F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:36:51 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 f16-20020a17090a9b1000b0023058bbd7b2so6753376pjp.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Feb 2023 05:36:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MWIPEpOQO7SVE2HbqMg/0fsvjNdObXiPOV4KlQDmpz8=;
 b=cO8Dl4ezQgosKKMgZGy3g9kiQ6421Dse6aIlF40QK9ekLVlvbxF4ZhE0XA5TLxNjjo
 wd/Zac+rFS+FK2z1gPIOic7VKmFn21UpiX3+mP0MSV8O304PUbQAJvAkM3oCocrf0vaK
 NKh6GujagVGcUwPV3DKs93fCF1edFggtbGHbInrbUZW9bK9QIKv9WijgNz4V8chHe9vj
 ot0VXgPsmhEEy+QxRtKsZBCwRuuW0sUQdluuPt35zoIzptcqgcRV9Bz8u1bj0dnCx2Na
 Q2Ns+3mJ6HLwfgI2AhlmMBQRjaA/DjgIRwkSpMNuuvmUocpOA5v7qLZ8NdaFhXcjrzb4
 MI1w==
X-Gm-Message-State: AO0yUKX0I6keC1aRiilN5d/YDq42IilQPdB2hgdfmfndoNknn8guPWXa
 sUlRuNhyUmjV6BMXKfwArhs=
X-Google-Smtp-Source: AK7set83rrYjrPS1zC57yRLaN6psKEuRjO2Mo7XwSJhF+t4WbJU3RY4J1yPg2LrRpxOooQPhnuXBNw==
X-Received: by 2002:a17:902:dcc5:b0:199:29:4d54 with SMTP id
 t5-20020a170902dcc500b0019900294d54mr165161pll.59.1675517810989; 
 Sat, 04 Feb 2023 05:36:50 -0800 (PST)
Received: from KERNELXING-MB0.tencent.com ([114.253.32.172])
 by smtp.gmail.com with ESMTPSA id
 21-20020a170902c25500b0019605a51d50sm3463575plg.61.2023.02.04.05.36.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Feb 2023 05:36:50 -0800 (PST)
From: Jason Xing <kerneljasonxing@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 alexandr.lobakin@intel.com, maciej.fijalkowski@intel.com
Date: Sat,  4 Feb 2023 21:35:35 +0800
Message-Id: <20230204133535.99921-4-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230204133535.99921-1-kerneljasonxing@gmail.com>
References: <20230204133535.99921-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MWIPEpOQO7SVE2HbqMg/0fsvjNdObXiPOV4KlQDmpz8=;
 b=I6V6IuATguSQYK8Wpo+KJN/1xC0HuTYd+ZzuFWLnuV4E8BhVjKMaY9wDcMReQvVdPx
 KSmHl8UvkMvGKdbIBk60XhlHnBhyQivq0OANQaqUxAyXP5ISENVQvyivxC1oizmqtH3Z
 gJytAN5CWmQmZdJ6Soi74HDr7Blu6EzpYJnSRhNHIaFAZkDCOAE8vyAo1q7ncKpRlmoy
 PMNZffCmFzrGYLbY+BMcQstNoEo4glmuj9taR1FcpM+KPVw95CNn7zEPW76v+yFGJsK/
 6izCjdalZtSlwYUDd3PEpo++wcNqN4oO/GEzcma4qmtU68jzRF6axeRZqjEKTvCBL19P
 3JVg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=I6V6IuAT
Subject: [Intel-wired-lan] [PATCH net 3/3] ixgbe: add double of VLAN header
 when computing the max MTU
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

Include the second VLAN HLEN into account when computing the maximum
MTU size as other drivers do.

Fixes: fabf1bce103a ("ixgbe: Prevent unsupported configurations with XDP")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index bc68b8f2176d..8736ca4b2628 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -73,6 +73,8 @@
 #define IXGBE_RXBUFFER_4K    4096
 #define IXGBE_MAX_RXBUFFER  16384  /* largest size for a single descriptor */
 
+#define IXGBE_PKT_HDR_PAD   (ETH_HLEN + ETH_FCS_LEN + (VLAN_HLEN * 2))
+
 /* Attempt to maximize the headroom available for incoming frames.  We
  * use a 2K buffer for receives and need 1536/1534 to store the data for
  * the frame.  This leaves us with 512 bytes of room.  From that we need
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 2c1b6eb60436..149f7baf40fe 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6801,8 +6801,7 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 
 	if (ixgbe_enabled_xdp_adapter(adapter)) {
-		int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
-				     VLAN_HLEN;
+		int new_frame_size = new_mtu + IXGBE_PKT_HDR_PAD;
 
 		if (new_frame_size > ixgbe_max_xdp_frame_size(adapter)) {
 			e_warn(probe, "Requested MTU size is not supported with XDP\n");
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
