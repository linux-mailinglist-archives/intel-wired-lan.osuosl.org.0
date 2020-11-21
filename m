Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC872BC8FC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Nov 2020 20:58:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 09F9E20454;
	Sun, 22 Nov 2020 19:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fiYXgD56a+vb; Sun, 22 Nov 2020 19:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CC79E20448;
	Sun, 22 Nov 2020 19:58:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9994D1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 10:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 92DE28702D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 10:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JS+7X-U-tPhn for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 10:17:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F4B887023
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 10:17:33 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 10so10346722pfp.5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 02:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YT+znqx5PpPmIZxX/FLP9CFfMwZHU4kV1tsIA7vkhsU=;
 b=Eb8uZSVQ/Pp7j+L5qbCgkD3TkOBa8YoHyXBgMOr6lr4fvdRnKXQ1TyGwpLC6V/hktw
 NsTyuW/95uh4lNc4acWKXYQXkyzLYEVCb23SY5qEr6bTedfgSBmCsBL7IMVBOGbgx9T2
 w45LhvoCzfJ8plr/WgNDFyGootbBMdyo45riPdcOGIDkF5s6UngiTqDmyLDSqbmJZecv
 zntgakaBAhIMmh/4ElFQGvey2dXrF3gtr9UdDXrQK3mlHhQ+1ptw+6vWLdUEjoyBYpBc
 JjA+nZcgI6dXHxpwCBn20Fea+GzJ7DlPi2t5lc/no1gqBm1YdqHkndwHks8zM7wJhvw4
 qimQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YT+znqx5PpPmIZxX/FLP9CFfMwZHU4kV1tsIA7vkhsU=;
 b=I+I8kutZ3tPl3fzt+qIopY/0Gcj8Z6DRD4BCoGn4btdV5UbXYhnKT5424aLrBZk+ZZ
 NQ5yX4JDiZawS9I67axZmF6x64Gw5ENN7idr1oJBESgJyQSp1svf3fk/LV3ap4gKmEcg
 bmh4LAuU614KU9g55agxRUDGzSZ3/YaLXpotNYo9r8v7IenNRtuGdup7EKqWRA1soDJn
 PsOhdbIAoDYuLi5+xoX7s178OkS/4qT7CBNC6P312xeNsls0Wg6tYvm3ptY+mS9UVLuY
 ousriQ9oZA07Zvmbqjcn/b618WCdbvY5r/FsNZq4S6jqZFpa/EqF+xFvShQ/8S06zXj5
 bc4Q==
X-Gm-Message-State: AOAM531EPt8myo9UT6/vmN6qRdfB1dmgaMHYFtlBT5pLYc2Nzs5Bl2+l
 Axjb3M2FekAasa3sXntA5A==
X-Google-Smtp-Source: ABdhPJyb2Wm1B6Kg1dH8CB+EuU10An/HhotkKgMdMm04yYUfOQZkC8eVM1m2UybrM2RVgFRGqggAbw==
X-Received: by 2002:a63:db09:: with SMTP id e9mr20942894pgg.60.1605953853030; 
 Sat, 21 Nov 2020 02:17:33 -0800 (PST)
Received: from he-cluster.localdomain (67.216.221.250.16clouds.com.
 [67.216.221.250])
 by smtp.gmail.com with ESMTPSA id 198sm4530460pgd.31.2020.11.21.02.17.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Nov 2020 02:17:32 -0800 (PST)
From: xiakaixu1987@gmail.com
X-Google-Original-From: kaixuxia@tencent.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 davem@davemloft.net
Date: Sat, 21 Nov 2020 18:17:27 +0800
Message-Id: <1605953847-12401-1-git-send-email-kaixuxia@tencent.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Approved-At: Sun, 22 Nov 2020 19:58:21 +0000
Subject: [Intel-wired-lan] [PATCH] e1000e: remove the redundant value
 assignment in e1000_update_nvm_checksum_spt
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
 linux-kernel@vger.kernel.org, Kaixu Xia <kaixuxia@tencent.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kaixu Xia <kaixuxia@tencent.com>

Both of the statements are value assignment of the variable act_offset.
The first value assignment is overwritten by the second and is useless.
Remove it.

Reported-by: Tosk Robot <tencent_os_robot@tencent.com>
Signed-off-by: Kaixu Xia <kaixuxia@tencent.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 9aa6fad8ed47..f05070ed18c9 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -3875,13 +3875,6 @@ static s32 e1000_update_nvm_checksum_spt(struct e1000_hw *hw)
 	if (ret_val)
 		goto release;
 
-	/* And invalidate the previously valid segment by setting
-	 * its signature word (0x13) high_byte to 0b. This can be
-	 * done without an erase because flash erase sets all bits
-	 * to 1's. We can write 1's to 0's without an erase
-	 */
-	act_offset = (old_bank_offset + E1000_ICH_NVM_SIG_WORD) * 2 + 1;
-
 	/* offset in words but we read dword */
 	act_offset = old_bank_offset + E1000_ICH_NVM_SIG_WORD - 1;
 	ret_val = e1000_read_flash_dword_ich8lan(hw, act_offset, &dword);
-- 
2.20.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
