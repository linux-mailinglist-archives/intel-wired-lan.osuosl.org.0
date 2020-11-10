Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E18762AD456
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Nov 2020 12:02:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7DB2620767;
	Tue, 10 Nov 2020 11:02:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yZ8E26auz9kQ; Tue, 10 Nov 2020 11:02:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 26E9E2277A;
	Tue, 10 Nov 2020 11:02:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC4C11BF298
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A34BA22636
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hNu+oZ4Noaii for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Nov 2020 11:02:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C85CC20767
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:12 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id a18so10917987pfl.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 03:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KQXOqU3sgAKcC6WLzuY/tSnBXRqhvqvJ7oAX30tadAw=;
 b=J4S9UgYKANhxiw2JmO3tlzoy5UuSeHrXUJCm0oVAE7sN+LrVEDHg2UxiD99M5qNGGm
 blEFWXeW+4xeniL2ggf6nJuaU80JpCYjGgRyZd9NFL3lxuEeWNZxvT5R6hfwLtL0Cpls
 KORD1J0PVKV1/BVlcTJl+FGLs5/3cierBUEx8vNzJMrh8FAo0sAzgJAPVJddki2BFI5f
 7HB4QlCg6HpCmTX5j6CxeUycukZI+wz2j2ktrXwspHooEuNoDFkRw64brjF6z2bdL4WU
 fT26VWnb8FrHnvlk410js1EX/LxlDFRUet0MOajNOPswMD2GVNFJBv4B9K8lsVDGpcQe
 7Xfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KQXOqU3sgAKcC6WLzuY/tSnBXRqhvqvJ7oAX30tadAw=;
 b=QEtP3J/5qIjP46qntU9GgWA78Jolfl+klZrGX2NgkP4PFHaXA5eiJGCg7JHY9tvdqQ
 nDvlnL41udyr0fJSRkog/4D1+b8odkorP6OA9qbEL2TUuO7x26VNGJdb/LuUlgjBgnIV
 KDYggKme4/ofP3y9iOlytQzrj34sUSNGqej+Ziq0l8XOW3MF2liPR0aZJPsRk8QM3Hrv
 AdQBDdEyFIzQkPz36VjvU3EJWOM0EpbmLYVIhm9dZfKIJVfsvUSlDSEWFy8gXKlkDQZz
 UWPNHqFcDU2+x1G4UOmg9eLYD8BlFjdYRA+b9zaAKu7URzpsB2KO4BquHOngVKX6TYC3
 oioQ==
X-Gm-Message-State: AOAM532ZKRGJ9oCg+Jd/zKGfpNY43eCRanhWv1CVMQqtQpitGLVSZfOf
 4a/s5g3V3xJYu+HYe/DW/BQ=
X-Google-Smtp-Source: ABdhPJwRGuwTsExWngoV4BxMxccDa3HVjgGDrCrK4lSaC31y1Ni9oHZqVYAKWALykQm97u8XgALuaw==
X-Received: by 2002:a62:1901:0:b029:18c:659c:e55f with SMTP id
 1-20020a6219010000b029018c659ce55fmr469087pfz.51.1605006132418; 
 Tue, 10 Nov 2020 03:02:12 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id 22sm3012024pjb.40.2020.11.10.03.02.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Nov 2020 03:02:11 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, john.fastabend@gmail.com
Date: Tue, 10 Nov 2020 12:01:31 +0100
Message-Id: <1605006094-31097-3-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1605006094-31097-1-git-send-email-magnus.karlsson@gmail.com>
References: <1605006094-31097-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next v2 2/5] i40e: remove unnecessary
 sw_ring access from xsk Tx
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
Cc: maciejromanfijalkowski@gmail.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Remove the unnecessary access to the software ring for the AF_XDP
zero-copy driver. This was used to record the length of the packet so
that the driver Tx completion code could sum this up to produce the
total bytes sent. This is now performed during the transmission of the
packet, so no need to record this in the software ring.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
Acked-by: John Fastabend <john.fastabend@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 6acede0..61aa1fc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -392,7 +392,6 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 {
 	unsigned int sent_frames = 0, total_bytes = 0;
 	struct i40e_tx_desc *tx_desc = NULL;
-	struct i40e_tx_buffer *tx_bi;
 	struct xdp_desc desc;
 	dma_addr_t dma;
 
@@ -404,9 +403,6 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 		xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma,
 						 desc.len);
 
-		tx_bi = &xdp_ring->tx_bi[xdp_ring->next_to_use];
-		tx_bi->bytecount = desc.len;
-
 		tx_desc = I40E_TX_DESC(xdp_ring, xdp_ring->next_to_use);
 		tx_desc->buffer_addr = cpu_to_le64(dma);
 		tx_desc->cmd_type_offset_bsz =
@@ -415,7 +411,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 				   0, desc.len, 0);
 
 		sent_frames++;
-		total_bytes += tx_bi->bytecount;
+		total_bytes += desc.len;
 
 		xdp_ring->next_to_use++;
 		if (xdp_ring->next_to_use == xdp_ring->count)
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
