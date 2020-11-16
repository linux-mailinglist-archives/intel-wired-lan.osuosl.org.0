Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8883E2B4250
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 12:13:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16C9487131;
	Mon, 16 Nov 2020 11:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pddMAN-GG1WI; Mon, 16 Nov 2020 11:13:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A80F8712B;
	Mon, 16 Nov 2020 11:13:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CADC11BF42C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:13:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD98420112
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OktD-DNeJpCK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 11:13:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id A4AF120017
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:13:50 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id t18so8232504plo.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 03:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=44RUaPFcwFiB3nkeuTIXUu39UgaMmkBucMAXuU99ZwQ=;
 b=TIcuSgUWSWuwn2Jjx1KnB6sHrdeMikkoB9olf3FVb3jeqC3BzKywc7h6cKpbHMBeX3
 +NEr1FzsgcBQBmtEwqaNPYoOya73w9zL+Q90R2ToYPhHOsPcvJesPpVSyjwmnxm0LpJN
 1QXDy+xlDUxI9Nu8Sw+nfSJ5trm8df+m7JZhLzjAQknzTVRjM3byAfcJqtOeDYoHg7+9
 HTK20aO3/V2kwQWHCWudepK15mqqNhP/wJwxPayM6HtQGGDZskemvInKngX5aDttsBdP
 iw8ua714FhhRDHCdNCl3+rbbG7pUQk/XSXEnBP/DjOucqNkTTo0OTG+T7Oj0b1sQUR1p
 /rmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=44RUaPFcwFiB3nkeuTIXUu39UgaMmkBucMAXuU99ZwQ=;
 b=Wop9DCQB1itLxsfQZNg1Pw4md3+jcv5GZNK1YFIdPZnxpkNKN2ZhM69dEi2YXeS8QC
 l8Eo2H2c/4INeMeYqNknqMMTaWFArwRClEwgiVnf5yCegVlr4teysEvFM4yWrCq8GOrB
 tB5aiOA/XoUpZOLqTcgfxaSbidpRvOQeebKICvV39k/Idq6gcbEr5QlgpsjnGx0gp1nk
 F1esitxdQQW6OlTfBXE17+4QibzBHvtgEC55pRRjcNWpfxCBvFFYfKsV743F8IZtd2PY
 5NMaNFOkssswDlEMF9FJ/yMdvKFuij5FhAy5FTLGHSAYU/MG0YeM/Ij5J4vieYm9q3ik
 QLmw==
X-Gm-Message-State: AOAM531XAhm2dh6FVlLqxrnQAq4daP8HxtTur3X+b0xU8tH67sobagHv
 0VZ5lP487Y116JiD4ZYe43I=
X-Google-Smtp-Source: ABdhPJyZfCFm7Pec1GQujbx90ewEdjqUNaZF5VJN51QlLDhc5+u0TOr06c1NI6pNZtLBSC/TZGogQQ==
X-Received: by 2002:a17:902:361:b029:d7:cd0b:e6f2 with SMTP id
 88-20020a1709020361b02900d7cd0be6f2mr12816425pld.77.1605525230298; 
 Mon, 16 Nov 2020 03:13:50 -0800 (PST)
Received: from localhost.localdomain ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id u24sm19486826pfm.81.2020.11.16.03.13.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Nov 2020 03:13:49 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, john.fastabend@gmail.com
Date: Mon, 16 Nov 2020 12:12:44 +0100
Message-Id: <1605525167-14450-3-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
References: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next v3 2/5] i40e: remove unnecessary
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
index 567fd67..20d2632 100644
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
