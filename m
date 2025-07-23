Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2942B0F52C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 16:23:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9474D8108D;
	Wed, 23 Jul 2025 14:23:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CLLkWGYAcPSw; Wed, 23 Jul 2025 14:23:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAF6E80C64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753280631;
	bh=Fj5WqG0SJ2Uu2EiwaVSrVFDSkAPLmbdJzZnTerK4rAc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=civ3IAK2qFJn2P54keepV1nAgrtfLicTJOUHv3pxKzHyn8gHX9TZLn9u55P3yzQs0
	 i0kc8cVMmV09EOior0Sv1IGaoqivMWKlC8s1cTXN9V8zE49LrHfUqKjP24lQrnZyqb
	 Wk+l450wPKdEs5X1avHsc3L8moTeAuinWxZyz7SvryTpWGGU5oA21BDxxmCvKZXZYO
	 S2BneZ3FjjROfl7yFh+EmpJVnHcgA4FXTzrxJYHyNukL7MBsxGV1DocbdDXXug/cpt
	 vRkyv9RKWvc4nQoM2CsunIvlPpDLs9CLzhTWdskx5J7iQql7XViURNMUy/G/JulnBO
	 pRURzgbF5Ko5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAF6E80C64;
	Wed, 23 Jul 2025 14:23:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D86B0CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 14:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5E4260A73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 14:23:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u2b9eMNmA4as for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 14:23:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D9C4D60895
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9C4D60895
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9C4D60895
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 14:23:48 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-23f8d27eeeaso18495485ad.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 07:23:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753280628; x=1753885428;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Fj5WqG0SJ2Uu2EiwaVSrVFDSkAPLmbdJzZnTerK4rAc=;
 b=KuLVSEjK++swIMDV7k124+BSeOQJE9+4vM2H+APTbXJzssm+z2W2WjuXYyfGWyzqzP
 p4chVlXbcyPaTav0uPCSVTZsoFQo1u//EH/MkoYheh8tliqJrI6S4wv3pR4fnErTELqL
 wcBu/Ymc8MORpzMg2XMXSpDoOTyY4aZIuAjLoN0p+G4fzLAkLz35qCiD8cNjAMYNx6ko
 qyJiyE6XP7GoXgUGb5cZP4QBYN9ZFY90dS5YKHkADpDxjNSqQROd+xnrzXqxzhqQdI45
 3U/DFpQ8mTcnciOuatB4yASBwZedIYKOLjqak7owxHNfUAwae6u4zLgRb2VyF72aejjr
 Ys0w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVon+qa+nQ1dufFXH5zQDtP3wwFkbvzw+0SQvRKUVOVl9FhyRr3tZffL6tfHOd+jkmupba8Wc0r+lkhqFofKS4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzbcQx8QSnRfbeRocqq8VUVwDEPaTp+6uOQfg6nit1ktahNfhLG
 3/ewGTKKxgRqTMPaiEMkF9v3f1KQKc7oAxYKNOr6jpcMJ6QUeDCUxXvvn7eCT+DrDvrkCg==
X-Gm-Gg: ASbGnctno+TrivWRHEcybncBsxQTpaWAYiFTp2tR3K6/ozaXOBRSz9NxdYIwfAM8/zQ
 9n8x5qb3Otec4UhcEES8ZvR25/ygdEqboKyeFWhABgvJYDnC+c/mWc9f8vhma92ufMq7Jf0PUfl
 w2oGIobU5uZMe8iosYHJ51rdnYFvqrPlkd+ZRAUJTtW8/pyqNooHq/sccXPbMugrMLfa4n6Mnqi
 QXjJMug6bWYO4hvFgrObCiO959wWrfsz6MgIPJ3xTuAS4kSIQl993mJVobxGkziSzeAmX4UlJ0b
 zxQ596/paGCMtCB0uvqUY2DdfJd2/M4c7ngnvTkTiKatfIkKfInB7X8LcKySlau6+BLfB/tXk8m
 +eoylaXyUjUWRePl8nWEonL6H4d/oCvquJhskgWTqGMzuRvY8EEyJRQz1MZE=
X-Google-Smtp-Source: AGHT+IEnG0E7oKJq09UZhheN56FjJBTTkrONfklWiZ/yow6qAsYP7nD7qZdnI57JncC+db1EnBFkKA==
X-Received: by 2002:a17:903:1aa6:b0:235:f3e6:467f with SMTP id
 d9443c01a7336-23f9812b4bamr50464715ad.2.1753280628189; 
 Wed, 23 Jul 2025 07:23:48 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.28.60])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-23e3b6b4a9esm97929595ad.93.2025.07.23.07.23.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jul 2025 07:23:47 -0700 (PDT)
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
 Jason Xing <kernelxing@tencent.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 23 Jul 2025 22:23:27 +0800
Message-Id: <20250723142327.85187-3-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250723142327.85187-1-kerneljasonxing@gmail.com>
References: <20250723142327.85187-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753280628; x=1753885428; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Fj5WqG0SJ2Uu2EiwaVSrVFDSkAPLmbdJzZnTerK4rAc=;
 b=fVlAZ0bi4Cl8QJjYLFDxnU2aELX/yJWarcW49VQu7nlkXPUn+/EB9Yom1z6pHaGfPn
 iDq+/HN2ec70VKdfVKqQwve6EwAvF4J0XbKvNXq25WacANJNe/dDKrq5V1YlRSTj8c3R
 EqoESo/DmIO/GpNg8kgupsusDHhjCS02Nq1BWq+ytEFYKz/M37qXhRwlK+dw2l9SiDNs
 8aDuD0d3wkVf9LLYrC7cBdcB0yt0KXt6XDaki0C5lnQ+gqQrj+rF6LJS3zfcTIg4TPbf
 TrXFG2w2OzHjcQUgDZRlOswjik2Ydp9ExDxNmaiuHJPV2dHMN4toEYrsLNnktNtx8Znr
 ouBw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=fVlAZ0bi
Subject: [Intel-wired-lan] [PATCH net v3 2/2] igb: xsk: solve negative
 overflow of nb_pkts in zerocopy mode
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
igb_xmit_zc(), negative overflow of nb_pkts will occur, which renders
the return value always false. But theoretically, the result should be
set after calling xsk_tx_peek_release_desc_batch(). We can take
i40e_xmit_zc() as a good example.

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
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v3
Link: https://lore.kernel.org/all/CAL+tcoAnB+8ZLPyWQ3XsvWTa=JO1yCKWvrKVp+2WCP=kGpfSPg@mail.gmail.com/
1. collect reviewed-by tag
2. replace 'underflow' with 'negative overflow' in a technical way.

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

