Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D83AB0BEFD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 10:34:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1818A61CC7;
	Mon, 21 Jul 2025 08:34:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kWL6jOVV6COR; Mon, 21 Jul 2025 08:34:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B3F861CC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753086846;
	bh=lbtNVv68Al+8cVNVFbCAZPRp/ZwmAyAvC1F+49a5gy8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aQavBKw5SK1RTJjd86hFt4clQC5p6Kq2VFW+o/I2v5UYkUZSK2vGuXN/6LTQkidGz
	 82Sd+I2J1IlDLlegbXwtttQJIpU9qtj9P3I6APsLOC/e9llB7lhRXo2xnwvKspzJMa
	 CDFnfNzZrW4aqRfc/RnIllgiVYRHQXcnSF6EjcCrhqMCtN+yyHaZwItAf5w6ddxDv7
	 ioPyHb6mcftWbr++7akfFOdtQKJOCCDa1jRsB6sRqbislDM8788xHfA7vbWEqlrTUV
	 K6dYEiXndv7Lp/O2ocYipbaUb8q4Z01MeMbqV3LPtTrVgfcX8sduNKd32LfblDD+wJ
	 0PuyBZ8TZxPVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B3F861CC5;
	Mon, 21 Jul 2025 08:34:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D10CDA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F27E42787
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:34:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qnlt49vZW2YK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 08:34:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6366340EC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6366340EC6
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6366340EC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:34:03 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-235d6de331fso46064245ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 01:34:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753086843; x=1753691643;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lbtNVv68Al+8cVNVFbCAZPRp/ZwmAyAvC1F+49a5gy8=;
 b=juP82HW+FCPq2v/w9S2WGYumszKmEC4bWqnNTB/RriW0RqEYLfnrCr0/n8SHLOq2U5
 aID6noy1HOweG8VygprnpyvUXsULX9MKDnJq9I9/c7jNU1E8K6IC2e10kwxG33CNqCBk
 hjB3v4hgvlOJKjRzPVwaYVI/KpCEzpSO/OjSEtcANuA+1YtfV82zy0BhrXh6NwFS2kkZ
 wlsh+rqQBCqtmQRcnmzzRPNp+HBLJuavUNhVnoeUYzyOLc2tjidUdErGgkmaRtN6qI9Z
 XUnJVu58Xa8oqvgGwX70rjG3D+qJfdJ2qSGtJ+r3suGrlNDsvFjHHSKxLzrqfHZjz3CE
 By8w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNQPzZhKW6EwdcYIncBqyLVqa+oWlG70dxXd530w3eNtKYCrB3QkhykXACNaTbhAkP/mlech7XKAHQgMznQBY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YybTzsVW/RHG5ZouybyfBs0p+PRzEul/eLOUAvDwRUh7+HpBMDj
 z3pE/eAwtSBo7CwGOzWeiPSzZQW7R7iZ9i1U/lRABok7+P7XQm3v5/yV
X-Gm-Gg: ASbGnctKXGz1T6soy7ngItK2EoXJVMicc69OM8ictpDy9rvAqL/d3roQRCggFIgHX1h
 RCc5fRZ2R7CWlLvZKgB3W/OBWAUUOzv0yrarEkEDm25or6owfllJA+3Po9Locops/xFZIwTgNuS
 jIPO0jSGTemKItaPeD5PVMMYmBgAjzWjRRlGQNwnKPsaKliyP4Kl22xgF9b9qkEeg6AYsyQLirV
 fImhcXKXSumC3r9NSIsVL50B1KT7IKJoxIp3SwzjKE25Cy3PPIWfVsPY4OVsIFGZ/dc+BAvrUGW
 SogKdDzIdmWpTaRkoLdAb+AJ0F0T2hN8obD5sykDoAZW51eSZnswClLWnkMtbdZoA+KAN7aV0sG
 GDmP4+va7Me7KAqelOWhY77oc0iSNqOSaFSbVE5Mb8kmKS9LhMWvHqEwdFgY=
X-Google-Smtp-Source: AGHT+IGyQK7XJLz3sOROYFmqcWgOIYrK0cMqYO+1HcoFFA3G5PlGwInuETMs6mPtONWOozx+/OJv8Q==
X-Received: by 2002:a17:90b:2684:b0:311:ff18:b84b with SMTP id
 98e67ed59e1d1-31c9f47c7d7mr25319465a91.25.1753086842487; 
 Mon, 21 Jul 2025 01:34:02 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-31cb7742596sm7082116a91.27.2025.07.21.01.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jul 2025 01:34:02 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
Cc: linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Date: Mon, 21 Jul 2025 16:33:43 +0800
Message-Id: <20250721083343.16482-3-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250721083343.16482-1-kerneljasonxing@gmail.com>
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753086843; x=1753691643; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lbtNVv68Al+8cVNVFbCAZPRp/ZwmAyAvC1F+49a5gy8=;
 b=M3ZI7xd/VyoVb4jeI6cU3+FgwGXw/iN2XI5cWq/z59doD+YBfDE1OTP0m77JrxF2J6
 VY7eghfdifHRcErY5lYRpocilRRil7oucUhRC7lZns0WxkvVAGq6MwIxwkx4aembJ1vg
 Xlzy2SIexYnQHp/7u8o8e4eDyhliF0viPdESMEVCs2coqGk28XYFf1l5hhWg9n4AIsV8
 mPsExmZnr6RteHXWdn42RPSgnVyLN+xxfyr/deQzffO3kBO/k8WKPCm1jVH1+1yMwrgO
 OCgh85U3SYLBhghhmeiuVW9bWGITD6UBNkjVixBXdudosx3JfKvA4SGEnBrF5/fD+vcS
 0T6A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=M3ZI7xd/
Subject: [Intel-wired-lan] [PATCH net-next 2/2] igb: xsk: solve underflow of
 nb_pkts in zerocopy mode
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

From: Jason Xing <kernelxing@tencent.com>

There is no break time in the while() loop, so every time at the end of
igb_xmit_zc(), underflow of nb_pkts will occur, which renders the return
value always false. But theoretically, the result should be set after
calling xsk_tx_peek_release_desc_batch(). We can take i40e_xmit_zc() as
a good example.

Returning false means we're not done with transmission and we need one
more poll, which is exactly what igb_xmit_zc() always did before this
patch. After this patch, the return value depends on the nb_pkts value.
Two cases might happen then:
1. if (nb_pkts < budget), it means we process all the possible data, so
   return true and no more necessary poll will be triggered because of
   this.
2. if (nb_pkts == budget), it means we might have more data, so return
   false to let another poll run again.

Fixes: f8e284a02afc ("igb: Add AF_XDP zero-copy Tx support")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
 drivers/net/ethernet/intel/igb/igb_xsk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 5cf67ba29269..243f4246fee8 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -482,7 +482,7 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool)
 	if (!nb_pkts)
 		return true;
 
-	while (nb_pkts-- > 0) {
+	while (i < nb_pkts) {
 		dma = xsk_buff_raw_get_dma(xsk_pool, descs[i].addr);
 		xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, descs[i].len);
 
-- 
2.41.3

