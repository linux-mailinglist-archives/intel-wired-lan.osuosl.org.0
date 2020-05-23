Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCF11DF761
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 May 2020 15:13:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 984F088446;
	Sat, 23 May 2020 13:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m1GppNFHD4lA; Sat, 23 May 2020 13:13:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4890288503;
	Sat, 23 May 2020 13:13:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 866BA1BF34C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 13:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75A63884E5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 13:13:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-pXMy-k0RCY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 May 2020 13:13:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A955D88446
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 13:13:41 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id x13so6474020pfn.11
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 06:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=H8pDFipnynsk4X9dPZFc4G5VJ+Iod2lTWU7AAQ+F64A=;
 b=d6zPa6bfCge/OEzuOBCipFM61kSveZ6IXS80k0pe1JMnCxANiMUBC02P4pEPgCpX/l
 9fJASJNGlA0D9XCySR6of+WKuRVF6ib+xx/w5yzyWAU3/XsLymxnnFVjO+EoAxyOpeyY
 YVV+GhbUUVACDNKJSD0H+M9Oe/F71/se6K2owzEQ9U3kM4ICyKbWmP6NL8o2c6aBzZNI
 SyNP/pLd9Nf7YuK5F4RtYN/P40h1Pgo0vZXW2XcHaa592A5ZGl5isA0R01TT8+xhA2CE
 T3fXp47j1hrWJXWvocf0kfuuvOHHmq70H9hSFrcL7y8Day2a4JWhJmcUOW1U6Wb4y3ae
 4rCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=H8pDFipnynsk4X9dPZFc4G5VJ+Iod2lTWU7AAQ+F64A=;
 b=ldbPVeWfY6ABWbp81mXY9Ogg3BQc5MSLp1UnR5CFniktmA9dYEo7RVZsc5QJYpMwWa
 lBoT3IPj+fNc3R0YFtt6eeIKaJISobQwc5HnTW2yjQajqfi92rux8wCaHXNWescK9zYa
 COLWd7xtbJNAA41vPvcvucPPpo1HqapfSQN4JNw/+cGxnXAeIeHyyvg5fPcQtOtdoARm
 FqLVbl/GrmoydQYnPCzIlfxd+AUgITmLvwdKAa1y7A11rGnNRoDkrZ0Sk2DpaVq4kSwe
 Avk+0Mrmfpksdv7NzitELDt/5lb91ETom8KQljqeNDJAF3zKV8DSRzegDp5YbuD0YfKC
 SFXQ==
X-Gm-Message-State: AOAM531T7eR6RR5LMdQtr8Bu/VI+knl02OK+j38HIhKL44400OHg/RIL
 D4T6dJXZyaHO6wEyeRa8zHI=
X-Google-Smtp-Source: ABdhPJzn4ahbjc4uF3F0G80Mlr9dXdVeoYkcPPDAUFoQXK30/ymi69aOdssi+fEGEZNakIN+xRFn3A==
X-Received: by 2002:a63:774d:: with SMTP id s74mr9438pgc.315.1590239621095;
 Sat, 23 May 2020 06:13:41 -0700 (PDT)
Received: from localhost.localdomain ([157.51.175.150])
 by smtp.gmail.com with ESMTPSA id 9sm8741528pju.1.2020.05.23.06.13.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 06:13:40 -0700 (PDT)
From: Hari <harichandrakanthan@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Sat, 23 May 2020 18:43:26 +0530
Message-Id: <20200523131326.23409-1-harichandrakanthan@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] e1000: Fix typo in the comment
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Hari <harichandrakanthan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Continuous Double "the" in a comment. Changed it to single "the"

Signed-off-by: Hari <harichandrakanthan@gmail.com>
---
 drivers/net/ethernet/intel/e1000/e1000_hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index 48428d6a00be..623e516a9630 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -3960,7 +3960,7 @@ static s32 e1000_do_read_eeprom(struct e1000_hw *hw, u16 offset, u16 words,
  * @hw: Struct containing variables accessed by shared code
  *
  * Reads the first 64 16 bit words of the EEPROM and sums the values read.
- * If the the sum of the 64 16 bit words is 0xBABA, the EEPROM's checksum is
+ * If the sum of the 64 16 bit words is 0xBABA, the EEPROM's checksum is
  * valid.
  */
 s32 e1000_validate_eeprom_checksum(struct e1000_hw *hw)
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
