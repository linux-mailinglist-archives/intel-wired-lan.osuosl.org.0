Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBE0B0DB9D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 15:51:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15FC86F580;
	Tue, 22 Jul 2025 13:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UiGDNicMqwxi; Tue, 22 Jul 2025 13:51:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 699C06F57C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753192288;
	bh=pD/wWijrKvVTR2o9RA6CvKO4pRLA1Dtb3qzUWgqM4ys=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W17jAJPHfKtihm1O03vsm6Rl139URG0I1IXYOe+o+26GhNJTe3ZmqIWY1sr3OFRmU
	 N8OrmD0LCerEpmwgQVjDbhedKLQxak1wsiW6xT6hwDa4yf0NcL+sxFWiEFiAxi7PFF
	 arBuctjaRbTQ/CvWvhFgTH/mnlV7Ea0wV7vqxNe9wq0UUKNt08xCwMofzwTkMSeevw
	 7mcj0Ytl7+xBmoeyJE2iH/W1ffXP358ziTJ8QQPqZDRSw+pCf/Q/n9LIcAit3VQSb/
	 fXpB/VUbbvbsocxxn9dySJLXgzqMk+rXhZY3CkSjSDMlehdb+20KaclNnb/cEiZjTi
	 +B43IAm1f9tCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 699C06F57C;
	Tue, 22 Jul 2025 13:51:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 88538E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 13:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A4D541589
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 13:51:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eRgtB4ZA7GLM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 13:51:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42e; helo=mail-pf1-x42e.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B49C941535
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B49C941535
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B49C941535
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 13:51:25 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-748d982e97cso4914117b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 06:51:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753192285; x=1753797085;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pD/wWijrKvVTR2o9RA6CvKO4pRLA1Dtb3qzUWgqM4ys=;
 b=lHaZfAQectZikQhkYKMoETnmmx05Mr2cP9pM2j1yUTi7JQgkxjONj2T51FevGXsfK3
 kYeaHKmDsEz5+678KHzBYaFarST8zoc/pLnsUqu2kNzP43QtztMHOcPYAWOvuFFQOsGQ
 hgEKfTB5IByPX1uVEla5GwY1VdKzHW1PavgaUeCWR4pCUC3p1qEWNyj1fAbicZuJf3o2
 MMxZUOS4Ja2emCzg/divVSZxoF/UWE/4J+laIpAAe0kyo1rIt1S+VuLB7WVheUeim3J0
 H7ajc8DdDYdIm7GdybqkemJS9STFCug+d55HRR5VI4TKdBJl4TA8qdp6o61VUKe8RVqH
 soKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsx3LOMYfonBKZyoNOo1tnBpROp9QSS1eQFkYunRHQWq6072L10tD8lcqCLm3e5N30i6y2K8fyoFmdtmJrkro=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwLhfNp9gYsXe7NHAMF7dJla7QjwsZgHaikAhPxMY6lHEJqKlG8
 ag/Y/XWAzRo+vXAgvfUhCfjA5ZW7Mf8YMSJ+XWf5nfsAtX4OeS/tRkzy
X-Gm-Gg: ASbGncvWSco2iFBUbgeVpyqsU/8a8iZJvZ219mDWCuNDpfAi47I1oVhAJVfFd9Lh/HR
 wtbxKsX3z0gEId+semOVZUL/j4HvJX0OKZkPSlgw5JYrAznqXliNgin36y+3hSnBE7U50IOy7ld
 DiIuc09aYzBKX7UQLXyo1V+CZPRK/+IM0r6dfli99AkV64GSAwdUmgGAwOf3KS+9GA2zF4f5E7M
 ltX2Krfwr3NIuD2KLEi4avLeB+mBEbYv1kFmq//HlGpa7n6+3bUKNRtlnrdvnm4gheMRpkMMoV7
 8XMVLuHspISnESlX4YBgjd+kFjhSkGzGa6nTccFUJTbKFP7Vk6cm1OHTym0BXDfSZJQlyO7sGV9
 C75VeR+7KKZCP1XjMgFk9VD0dpIMbwLiLrAfGxEiIXbIocba0FY+q0TtlJlQ=
X-Google-Smtp-Source: AGHT+IHXWDumReUd0Q4eySHgoAYL7xXcdMWiTo0JJ05taBpvZ5tBQBZAd1EkCjnN//6RaGRS96p7Sw==
X-Received: by 2002:a05:6a00:1749:b0:747:aa79:e2f5 with SMTP id
 d2e1a72fcca58-7571fd0736bmr32671103b3a.0.1753192284817; 
 Tue, 22 Jul 2025 06:51:24 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-759c89d3190sm7612924b3a.39.2025.07.22.06.51.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jul 2025 06:51:24 -0700 (PDT)
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
Date: Tue, 22 Jul 2025 21:50:57 +0800
Message-Id: <20250722135057.85386-3-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250722135057.85386-1-kerneljasonxing@gmail.com>
References: <20250722135057.85386-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753192285; x=1753797085; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pD/wWijrKvVTR2o9RA6CvKO4pRLA1Dtb3qzUWgqM4ys=;
 b=asQnA8L2G/JWE0vtTQ8Gm0aLz3Udk9hIrKKceoismfaGjVO7H5GMUUIwYuXMbo4azd
 Z7S4OlZsF+jsU1YmOzeuDuKqvPYT3EBU69wHCg0l34MMd2JjmmKSvC9u8lkto0ctxZJQ
 7gIKZZrMFW82GvTUpQ6wrOCidD87QYNl+AnmKDvOB1QKBv00dHty8ASisO39UscdWhe6
 e2b6FCnHQF/GsE+QGybFc7SG/BWsGgyqAYRkQ11nkH+0LC7UllOC4TcfbB0Q1BXlStwm
 9C7O40i+ILASiqgbAshC2bYEC9AtRdZjGc/MEAKz7MQDjmwTpPBuQLTcXewF5WudfFXE
 thfA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=asQnA8L2
Subject: [Intel-wired-lan] [PATCH net v2 2/2] igb: xsk: solve underflow of
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
v2
Link: https://lore.kernel.org/all/20250721083343.16482-1-kerneljasonxing@gmail.com/
1. target net tree instead of net-next
2. use for loop instead
---
 drivers/net/ethernet/intel/igb/igb_xsk.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
index 5cf67ba29269..30ce5fbb5b77 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -482,7 +482,7 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool)
 	if (!nb_pkts)
 		return true;
 
-	while (nb_pkts-- > 0) {
+	for (; i < nb_pkts; i++) {
 		dma = xsk_buff_raw_get_dma(xsk_pool, descs[i].addr);
 		xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, descs[i].len);
 
@@ -512,7 +512,6 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool)
 
 		total_bytes += descs[i].len;
 
-		i++;
 		tx_ring->next_to_use++;
 		tx_buffer_info->next_to_watch = tx_desc;
 		if (tx_ring->next_to_use == tx_ring->count)
-- 
2.41.3

