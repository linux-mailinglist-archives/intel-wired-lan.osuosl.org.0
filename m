Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E06CCA063
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 02:58:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7199940F77;
	Thu, 18 Dec 2025 01:58:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sURDHwX3zKQW; Thu, 18 Dec 2025 01:58:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6BBB40F79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766023083;
	bh=bQOfmftLH8KAfTXHZBw4TB9dKu3rPCHujQ+Dm7h606A=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NgL9lUxPAMStrgd0tvm/1FlZfHh2ZLZMS4UQ2kPGcKX2E6o+HH0ujQOpaZT/Tkneb
	 ZfovDTsFfJSeAZgPbfmKBis4A5BhSdIMjifIwL67chzQQwAD9R4BBiQ9q+Bs7t9sZ/
	 bV3gcPCVOfqLuFj9Gm8AIhkZA1CyiF6WeHE2cLKWuw5AR41TFKyVjtxGxOVLbHXEkI
	 P0UX0bDMxITTStIsKC6jCVDLQiD4uAL5fq6M4pAKZf6+NuGIRsniyIi00VxqsGfTZZ
	 pqzN3B0C3lcBRzuFeEa4FkdW7kr9ZOb8TY2c02tesc6fHVNn01KllQ7bS0waFT0ivi
	 Z8W7HDOJKLCpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6BBB40F79;
	Thu, 18 Dec 2025 01:58:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 76D582A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 01:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68A7B8248C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 01:58:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gcVQ6pNhgQn5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 01:58:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b130; helo=mail-yx1-xb130.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7EFD582423
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EFD582423
Received: from mail-yx1-xb130.google.com (mail-yx1-xb130.google.com
 [IPv6:2607:f8b0:4864:20::b130])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7EFD582423
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 01:58:01 +0000 (UTC)
Received: by mail-yx1-xb130.google.com with SMTP id
 956f58d0204a3-6447743ce59so113778d50.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 17:58:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766023080; x=1766627880;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bQOfmftLH8KAfTXHZBw4TB9dKu3rPCHujQ+Dm7h606A=;
 b=rC6rNkeoBf6Kig1O5W/mZ/KKpg0lQXluDR8DsvyM+35thua8JvSbvub12h4F/LqDqu
 4QzdQWqkEmw+kdvKr9B5chtPXoM9FTxWcnNjqegAXROe0rbaVKNtsjh4hsFD2/zmjCw7
 OHXWTavBOd1clLGbq6FQ8le8EKzxtuJRqBrGB2C/BGDkHouIcZHw9vnm0SHCW3icM2C4
 qmT32Aq8Cn3sJUYpi0fPG/11NvCkYrDbRvABnAvR9FsrovlN6Moe1ooLJ+rwVeq28OMJ
 2vWn6HAvxzOYh4WtdmCRL3NhSitAEsLPTYjm4JNrw1w5LUJ6pujFdj+nvnClBhauVbpA
 w4mg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVGPDpRks6pifw9OsGdAhl6niAllsQRhIcM8nOqwfNv+ZMu2fxNo9Q067OgkHRFYNOajC4oX6AoshImmInakTA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxWjvGbTAhB0cTPsBqhUmVtAHy50uBxImz4k2WULO0KCsXjvkbI
 HS4wg90QSFfjvAx8CSznWT9pbkx0SoDYQmajToA1tZvfKrTZUnmlu7gF
X-Gm-Gg: AY/fxX7I/OXRkf6beeP4lE4vCNzW4Az4R7icLg+kgspJnlMYyAaAXRc05n/YBHtKD2l
 uXD7/YibuQUe6N1bmnFRvHJnRh/1Tcse4eKk1/3y8lC1BA/i2N0Emos97lPUE77uC37ZB2kU7fg
 xR+PITSmbj4P0PooUcEBZSw+6u+Gb9YVTqDRcflRPSyqL1DvngXfUt5I/z65INkDYtEQ4L6VKOn
 Cew5+CzK8kCx124sJwvmN1EHalvgFhqpCOXr16agO1wYwzgyg0VinjTWP0WfKv7y/SvoWc5h6l6
 v6hvYwGTGT6DuobBD7ePTEWc2KrocdpOKoHcLIJwERN3nhpzwWIN7qDSsqLk/hRDwmD704gX0Hj
 EjB/lG+hqi2vnM/3R/6FZv4j88Imu0rgLBp3fYdx6Rf16w0Lk69kppARQHbpOUdkjzDLHY6PNpv
 Xt9M7VYDo=
X-Google-Smtp-Source: AGHT+IF7Lkwj0sSdZaNQ3dsB15WX1orUqF+lFaxr1wSODVAJtotITBD0kMje1L4hZ+gr1DxEnLMwlw==
X-Received: by 2002:a05:690e:1407:b0:644:60d9:865a with SMTP id
 956f58d0204a3-6455567d629mr14606696d50.93.1766023080117; 
 Wed, 17 Dec 2025 17:58:00 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:52c0:aec0:bf15:a891])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-646636e86ccsm472527d50.5.2025.12.17.17.57.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Dec 2025 17:57:59 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Date: Wed, 17 Dec 2025 20:57:57 -0500
Message-ID: <20251218015758.682498-1-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766023080; x=1766627880; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=bQOfmftLH8KAfTXHZBw4TB9dKu3rPCHujQ+Dm7h606A=;
 b=Z7YHdnpELUCpdwpTVWtLTICV6VtpvebCXRkg5Fopr1X1fy+Mxc/qeIc15KNY8IA7V0
 RxI/TcXdPTr+r15ynPu0xcJiqJdwCwGdg/jwQ/7ZPrNmQQtmUt/Ka38CbTLK7vpW/IBM
 AXmdHb46RJjaxxcZ1YG5QnZ7vUtDASa+fnhA0unqvYw8+cByhAY5I/ozIsweb+Xk/rB2
 eB2e5zQ5uKtIQ7eR4Yvz6ISN43RH0ZregZunVJM1q/tgJjtyH4DBabMk0cb84d6k1YTu
 rGBvP0RTBZNEnQmcr+CEsuu6Xx0lTILOIvNd+QTK9Su4ARDigu7ZMw5x60i5r+f9GzIq
 WsIw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Z7YHdnpE
Subject: [Intel-wired-lan] [PATCH v2] i40e: drop useless bitmap_weight()
 call in i40e_set_rxfh_fields()
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

bitmap_weight() is O(N) and useless here, because the following
for_each_set_bit() returns immediately in case of empty flow_pctypes.

Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
---
v1: https://lore.kernel.org/all/20251216002852.334561-1-yury.norov@gmail.com/
v2: don't drop flow_id (Aleksandr).

 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 21 +++++++------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index f2c2646ea298..e64880b6b047 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3637,6 +3637,7 @@ static int i40e_set_rxfh_fields(struct net_device *netdev,
 		   ((u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(1)) << 32);
 	DECLARE_BITMAP(flow_pctypes, FLOW_PCTYPES_SIZE);
 	u64 i_set, i_setc;
+	u8 flow_id;
 
 	bitmap_zero(flow_pctypes, FLOW_PCTYPES_SIZE);
 
@@ -3720,20 +3721,14 @@ static int i40e_set_rxfh_fields(struct net_device *netdev,
 		return -EINVAL;
 	}
 
-	if (bitmap_weight(flow_pctypes, FLOW_PCTYPES_SIZE)) {
-		u8 flow_id;
+	for_each_set_bit(flow_id, flow_pctypes, FLOW_PCTYPES_SIZE) {
+		i_setc = (u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id)) |
+			 ((u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id)) << 32);
+		i_set = i40e_get_rss_hash_bits(&pf->hw, nfc, i_setc);
 
-		for_each_set_bit(flow_id, flow_pctypes, FLOW_PCTYPES_SIZE) {
-			i_setc = (u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id)) |
-				 ((u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id)) << 32);
-			i_set = i40e_get_rss_hash_bits(&pf->hw, nfc, i_setc);
-
-			i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id),
-					  (u32)i_set);
-			i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id),
-					  (u32)(i_set >> 32));
-			hena |= BIT_ULL(flow_id);
-		}
+		i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id), (u32)i_set);
+		i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id), (u32)(i_set >> 32));
+		hena |= BIT_ULL(flow_id);
 	}
 
 	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(0), (u32)hena);
-- 
2.43.0

