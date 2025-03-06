Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A86FAA55054
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 17:13:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0613C83F1D;
	Thu,  6 Mar 2025 16:13:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hWerov6VDBOW; Thu,  6 Mar 2025 16:13:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5537F83F1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741277589;
	bh=SC6AHDf1+LSGmHO4yF1LlfxNEvEUB10IW0zw+9ERfVQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RcQmJPrB9i6BJT4h3hVjwG1M+CGrUNR7P1W1VZZeAeePekmQyrl1J4KkE6Mwo2Cya
	 jPkT/6u0zpSI4y2wGz8S7DlNDSDFLQE9a+Iq519E6RMipi23cVBCteErMBMVW2TiDp
	 sg8uaeWEJPaacYS9e7mwM9NPYNOyecv7fDoRrlEEMVuLIJCVQM++cbmOIR2Z9G2xFp
	 Q+7c9T88rtS07Qu9oT98yXBIIJ33P3gYtUwkF+zODvZS+fDOTl/duuw+RvCVNFVOrc
	 qFKeiBnEZRUKpJG9/wfSk5A42qerMvyNgt7uoUEC7/rg4mqAq0v4q4I3Uu9W9PYJ83
	 nLgfGdCuqSTfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5537F83F1C;
	Thu,  6 Mar 2025 16:13:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5126295F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 10:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2119640CCF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 10:14:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GVhKJeWiPvz0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 10:14:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22d; helo=mail-lj1-x22d.google.com;
 envelope-from=rand.sec96@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12D6840500
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12D6840500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12D6840500
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 10:14:17 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id
 38308e7fff4ca-30be983a3b9so4337711fa.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Mar 2025 02:14:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741256056; x=1741860856;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=SC6AHDf1+LSGmHO4yF1LlfxNEvEUB10IW0zw+9ERfVQ=;
 b=Zx5M3nG4eyuDKYbZCHdeS1GmpJudmgPmsRwy2xhq2bayucYHlPZ6oM6myZQW/WIQG7
 0gYG8yWB6K1R0zGL5dvtHNKlMZrjPEcAPpttgsTghA/LYRbYv5TMkplzxwEoEPcvDJ2w
 zG/gNrVKa8QAqos98NUOfKKeN4dhORkuTrkhq8QvvyzvJZn7sHsIYloN5QL/PdcwLwfO
 6y2xoG/FO5X3Bij+3ZYsEMEZE2nqVikl4O3ATbsiYuZ3P3hO+IVM5lh4HYZvSe058E0a
 YD9jzoDhDLVZn2fotlIxglpfEC9WPrQmmCFmgM3cItHeM6SfOC0CColf1pY4A0PTaZIx
 7wig==
X-Forwarded-Encrypted: i=1;
 AJvYcCVf4t43cF1V9D4sEhUwFrBRylz1u6i1DBY0E5F6L1eAw80Vw0bcQwrJsu9K++ko8AVrAG6gxKezPsS0DSbMtxg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyoYvt+41cSqms2oE27kxtgYiN8qXo8vp60y6ZpjmJd1YnCemHy
 Q+d8K5XopYMdkUH1/8Qris1xoC36FLBosI6QZFcYKioK/5ooRL1L
X-Gm-Gg: ASbGncso9AzGGpTJre+LFPSophsUnxnTqGi74C24wAPeikF68p3RX4DAw2av7TQcXFl
 Aawz5Gkg+vq7vCZl5kBQHd0uBZYhGSuhG8QkcJ6YSIfSnnpoq2ufHhWwuIzKZD6ALw/P8ODpNUg
 i63fZjFca7WogTykDMWzefZmgri0tBPVh1WGo3aulNKiFiSNgSBsnyJmC151DkOuYDbXwYm6STE
 3umtEdM1GqbIY+iuk4WuQ+y1yeFDwgETU/c4G4FxAhBoGLz04EPMk9qNB9tKnOP2cFbiaTFonGZ
 MrBvYB3CLgyAtMGRWn02zgf97RCEVlktCuXukGswyQFpNQNHKpHRFWYfePbgKklEsJfFVv9a66H
 zJ9q12Mj47Lg=
X-Google-Smtp-Source: AGHT+IHVUL4RmtkhR/oSDlMOZ3ZOLWUDnE3XMBPxWsK2S/UqrYa1tBtOoYQq3Q6pxGdr9M6ejBkxaA==
X-Received: by 2002:a2e:bc06:0:b0:30b:cd68:b69c with SMTP id
 38308e7fff4ca-30bd7a1c6admr24523521fa.3.1741256055483; 
 Thu, 06 Mar 2025 02:14:15 -0800 (PST)
Received: from rand-ubuntu-development.dl.local (mail.confident.ru.
 [85.114.29.218]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-30be98d09e2sm1550631fa.12.2025.03.06.02.14.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Mar 2025 02:14:15 -0800 (PST)
From: Rand Deeb <rand.sec96@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Cc: deeb.rand@confident.ru, lvc-project@linuxtesting.org,
 voskresenski.stanislav@confident.ru, Rand Deeb <rand.sec96@gmail.com>
Date: Thu,  6 Mar 2025 13:12:00 +0300
Message-Id: <20250306101201.1938376-1-rand.sec96@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 06 Mar 2025 16:13:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741256056; x=1741860856; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=SC6AHDf1+LSGmHO4yF1LlfxNEvEUB10IW0zw+9ERfVQ=;
 b=GyxW/AjQQY4plUGD5qSQAj6c33fwJzCuBGipBp5wH5TvJzSGVzXEe4T89vZ30nPbVU
 P3xeHktf9GkK6g8E9Ng19fWWwMpCO/bzAiDS+2YSOE1WHaGOxnKA4DmO5ivnHLmzrD7u
 QCRbxbwoi5vPfEYpC8y6PxEqmOzX0ZS9inW8JHK3/JFExhZ/m8H2nRlnCjuQE3oEzdPy
 gsLqXLDwkEtcAfm18/CTezM9ne970dMGecbJC2KJOvO4/ylfsG7/e9hCsN40ozvyN9WW
 b4l1nnrNBYsNsbYUeqJTxggj86l1oJ/+EJPrlHCaE+1lM4cHRQDqQiNrXcm1pnfNxYSC
 UP1A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=GyxW/AjQ
Subject: [Intel-wired-lan] [PATCH] ixgbe: Fix unreachable retry logic in
 combined and byte I2C write functions
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

The current implementation of `ixgbe_write_i2c_combined_generic_int` and
`ixgbe_write_i2c_byte_generic_int` sets `max_retry` to `1`, which makes
the condition `retry < max_retry` always evaluate to `false`. This renders
the retry mechanism ineffective, as the debug message and retry logic are
never executed.

This patch increases `max_retry` to `3` in both functions, aligning them
with the retry logic in `ixgbe_read_i2c_combined_generic_int`. This
ensures that the retry mechanism functions as intended, improving
robustness in case of I2C write failures.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 0a03a8bb5f88..2d54828bdfbb 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -167,7 +167,7 @@ int ixgbe_write_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
 					 u16 reg, u16 val, bool lock)
 {
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
-	int max_retry = 1;
+	int max_retry = 3;
 	int retry = 0;
 	u8 reg_high;
 	u8 csum;
@@ -2285,7 +2285,7 @@ static int ixgbe_write_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
 					    u8 dev_addr, u8 data, bool lock)
 {
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
-	u32 max_retry = 1;
+	u32 max_retry = 3;
 	u32 retry = 0;
 	int status;
 
-- 
2.34.1

