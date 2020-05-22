Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BC91DF11B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 23:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D532884EB;
	Fri, 22 May 2020 21:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5Gd6EzXaK1P; Fri, 22 May 2020 21:29:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3479885FB;
	Fri, 22 May 2020 21:29:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40B6B1BF337
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 10:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 39FD988026
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 10:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QjHwyN5tqYie for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 10:31:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 96D7687F79
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 10:31:03 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id s69so4748243pjb.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 03:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=H8pDFipnynsk4X9dPZFc4G5VJ+Iod2lTWU7AAQ+F64A=;
 b=u7TP4XLco+GLRI32lIVLxsUEAEU8GblSNsqpkn0pxa+0NT6VHYCmPVw0ruogBA/hiI
 W6HWu7FF6igZAwDfCGztzJ++AgTDOhSoCxeVX3ZIK5gx6h+/t917y97o6dgz1ptVGOEm
 kU4n8AVKU+s2Q2Vs6RtrYVxhNCckWNQp6rjOQm5djgAZQzL66g3H3MKVvys3D1aQ9kf8
 Oo+QjeL55J4pudwwLbM6f6FC7tXp0IxU9PIorUQ0/9Go3NuYZf5G/2bdZ8rWMupiHBrM
 DsfDo/hRLvES5ysDT3gVbljvbdNkNOGFmGJ7zaFwU3hMv59jZ1XAtUxlldVXs89T9UzG
 4qsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=H8pDFipnynsk4X9dPZFc4G5VJ+Iod2lTWU7AAQ+F64A=;
 b=ph7TCYEyCSeIAIndPg/ntN8SICi69OosJ+/thdiDVOjZKsxA9JBhUY31Z6SKDnefFV
 qIjuTzuJeyLueyOoxVbpB0EReLUO79MnjAso3e2J+n+g8XjL0JbAbftypAFhwHEU9p4w
 Puj8kFVHOOEG9FRYKDzZQy8MOs37g1t/7DLX9brredSz7qdgAgQTUDhU4Yk+bKV1EMkn
 SqhAi938++LGzQ9iU7uFMqeOYTh5KLn34ewNU/owbX0dZZFrRaQoRYqGecpeket94fQs
 dMcPigaIc5rI89aBCDfTdK0pfsWIYGFoZCRpDgVKfh2ZrPiyFUwMwSzJj7BYdBNx2mj4
 FXcw==
X-Gm-Message-State: AOAM532xhddNLSNCAbEhkbjZWJ5yjc26WMnP6LFeoypCdM1ZzL8V5eSE
 dAaIV/FA6io5rPJJqNeHgGQ=
X-Google-Smtp-Source: ABdhPJwujMCjom57osVJ9fq0ac205yggKIMAusPBKFt0tivdubT9md8eBXPdMbtGkI2xZyApsb8Lmg==
X-Received: by 2002:a17:902:b706:: with SMTP id
 d6mr14769254pls.16.1590143462980; 
 Fri, 22 May 2020 03:31:02 -0700 (PDT)
Received: from localhost.localdomain ([157.51.227.23])
 by smtp.gmail.com with ESMTPSA id x14sm6488232pfi.60.2020.05.22.03.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 03:31:02 -0700 (PDT)
From: Hari <harichandrakanthan@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Fri, 22 May 2020 16:00:24 +0530
Message-Id: <20200522103024.9697-1-harichandrakanthan@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Fri, 22 May 2020 21:29:19 +0000
Subject: [Intel-wired-lan] [PATCH] Fix typo in the comment
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
