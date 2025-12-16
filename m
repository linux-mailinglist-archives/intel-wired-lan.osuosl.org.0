Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E178CC059A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Dec 2025 01:29:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2924C40AF8;
	Tue, 16 Dec 2025 00:28:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5T-ByH8bAroZ; Tue, 16 Dec 2025 00:28:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6325F40AEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765844938;
	bh=vS+iE22pE5yQk0ecXq1w/+qZcaWovgCEPqFWh4+wKk0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Wy06TY0yQsMniSr3yE2qvrNOPMQELZNL9u2uc2ohF3myi8hy1YT5wZW4knRMTsOdl
	 EIrg6fjlUKdz7/HvyToRpkKijOkHvZenUrUPnXANwz2BY2BSE6MBC7jHZhmy/9+Ojx
	 8G8ZQ5dmQe1DF1ZLI9LejOZyz7XGONfLonqcx5Tpk9C+zfl+3YXS/dTGGxut1hxIGf
	 OxfJxiKJjKNrdLAddDVpFv7NlBSRQBsZY3IEDVbo3nkfR3czN57ZD/CNwd/VXIVAu2
	 loncfOYCIdZtTcgO+zsRA5L68adGyFpukaLfmMiiteQSao5xd1neTBdM32VbLXwDZS
	 9QTIF8BZZr4dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6325F40AEF;
	Tue, 16 Dec 2025 00:28:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 793E3219
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 00:28:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AF714034A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 00:28:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mj-ydkClQasd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Dec 2025 00:28:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b129; helo=mail-yx1-xb129.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ADB94400B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADB94400B7
Received: from mail-yx1-xb129.google.com (mail-yx1-xb129.google.com
 [IPv6:2607:f8b0:4864:20::b129])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ADB94400B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 00:28:55 +0000 (UTC)
Received: by mail-yx1-xb129.google.com with SMTP id
 956f58d0204a3-6446bae1e17so3628514d50.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 16:28:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765844934; x=1766449734;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vS+iE22pE5yQk0ecXq1w/+qZcaWovgCEPqFWh4+wKk0=;
 b=Ei+zKuA/O0sl4rdQhADl9vYHWb1NrxxM2kOsQVL7hnM0MZ/GLKCX1WlMsoR05/zrtq
 FhOXnMg3RR8/26HXgu5AcJvKVodx5MsYF3+oDTeHMlvanJ6cvSxbRlxXGMmpkruKHayz
 xa5jhXBhirjR8CoVxTFxV28JYqJekd8qT9PX6v0p24a4INPXfDQUNyiz4UYjz6CihioT
 Nr1HZlauUqKrrof96o/OvmMtNVgatORR5/Cu0jbQq3tIjwUtQqk77LEAldcDrirfomXn
 ynWebZzjE5Y/20IznBDd2aNXvojr6a4/FnRe1VuiomVvJFzQTkKLXwSnfbLvyON5OYdt
 /1yw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUm4dASdq3+LWMibs2sAM+5YWW1Mte/WRFrAjpWrK0cXgwLnOOfzwjgyHHtxvhbjZfIEylMz5Kltiryrp3Y2ZE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxIaz1mFaCQkGx+5NDFEkjXA8EKHlMl/dpjLt86yhl0olDK1Wof
 Gr2wLuOGOTRmV51bxrecaEFTFacKdOULQHSurLp5IOrEXcB4IKurA0zC
X-Gm-Gg: AY/fxX4HlWdqhaSTOxV+HTOdqlihIZf/IVYPPdH8TXSIGmj9Eol/qLAUN30lbcw5ttT
 rwKpVdZnf8ASbdCAMyjbG3mI9eeqdIe052pARXQ2M9GlQg3mdBiXOxOaDbubSRU4KJhFU9DrMYP
 j8r+Btjs+qXDC+MjI0omYn02BSja4xwfxAQ4GVCGEfJwtY+0lyMDfKR1f3FcWH8YGbjwTaW8sPe
 e5AefwS0huiQsf4b9ADsuN1XPRv1ys/0mK7P0/umHhkgO5kWqRLoK50sM9Rz3zjeFuxgIoRLRNE
 iZSFxOb3BhA04vxrAEbWfSaU66yzW1qkg0ZzRPPABiTZdW/FkmBuVZvxZgDNqyaZ5EnejJPOgWK
 YL0xYbex3q7AO4PX13NwNiI7huSRizBmKijJYwDEPsmeZKxyCl5IzNuI4TocsaiRZOfjrv13qVG
 I3/E3lZg==
X-Google-Smtp-Source: AGHT+IF6G9gSXRla2Tz5bO6Ji7opQVGOgE8yQgrLkp9/eG0gts1hC1CXc9Ec1S8HnYTPHfxxJ7DoYA==
X-Received: by 2002:a05:690e:1a61:b0:644:6c45:4ee9 with SMTP id
 956f58d0204a3-645555fa40fmr7908718d50.39.1765844934492; 
 Mon, 15 Dec 2025 16:28:54 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:6b0:1f10:bc87:9bd7])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78e74a42aeasm33437797b3.52.2025.12.15.16.28.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Dec 2025 16:28:54 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Date: Mon, 15 Dec 2025 19:28:52 -0500
Message-ID: <20251216002852.334561-1-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765844934; x=1766449734; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=vS+iE22pE5yQk0ecXq1w/+qZcaWovgCEPqFWh4+wKk0=;
 b=LEPiHP6mx+L4tZHB4JxzSoecliv8r76WXYOb/NU0a7eY7g5jnBNMLfc5ExyoKVFGVK
 I+fXswAcAYU0OlRw9hEWJuVT2PXXgLZ2YfDnKQ3KfEuNZWDLBPcX+Bl+I3YSuUlad+6S
 7Bjuq1GjIyz4gvwGpVaR+Z0lGTBS+u8DiYLEliwKt0o/WiqtNtTtJ0Tg73aGGCK7gf0r
 D61yajAyWqOw9y6C494IjM8t1cPId2I7sk6/z0sOCRjth2m0uxFZ/ljXsVy7vtveI8Ds
 oWFsPLYInDrjhHwUx4XsppWRny5G/xeiAr3DRfsl2Qi2sI5Xlyd4j3pknDMWHCof+5yT
 Y/JA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=LEPiHP6m
Subject: [Intel-wired-lan] [PATCH] i40e: drop useless bitmap_weight() call
 in i40e_set_rxfh_fields()
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
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 24 ++++++++-----------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index f2c2646ea298..54b0348fdee3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3720,20 +3720,16 @@ static int i40e_set_rxfh_fields(struct net_device *netdev,
 		return -EINVAL;
 	}
 
-	if (bitmap_weight(flow_pctypes, FLOW_PCTYPES_SIZE)) {
-		u8 flow_id;
-
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
+	for_each_set_bit(flow_id, flow_pctypes, FLOW_PCTYPES_SIZE) {
+		i_setc = (u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id)) |
+			 ((u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id)) << 32);
+		i_set = i40e_get_rss_hash_bits(&pf->hw, nfc, i_setc);
+
+		i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id),
+				  (u32)i_set);
+		i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id),
+				  (u32)(i_set >> 32));
+		hena |= BIT_ULL(flow_id);
 	}
 
 	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(0), (u32)hena);
-- 
2.43.0

