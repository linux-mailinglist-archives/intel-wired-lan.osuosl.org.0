Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD7863ECB9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 10:44:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 410AC418A8;
	Thu,  1 Dec 2022 09:44:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 410AC418A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669887851;
	bh=AB00CHUs0TOmX5EPAOvRWCgjvhJFSCRN/iXSCDEwBFc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vyNp6rdnyTAqvsKHt+Aood5xE2i3SKionxJKwD9PWyEY8BkbRnCXd/9mSMHT9+v15
	 mjAxoRv1zUX3kMeYyW/IaMLfkOhjlgbXk25DceV1y/IM71fGRGf0KbHsLVRhOyuvUU
	 hRnTv3WPGK3pCG5cMMAKuTO+b81+HtUnOJ5g/MSi7sSDdB0vj8c+mASCZI0tMdb9OT
	 q35ebzzPrzj3uXFL/q1K9VVltgAN+7O6cUEfBqXHwhgaA2tJqXyIm/w1wk2WJ9dQ+A
	 EN6nNHhLMfOW3XNqA+3x4x+MXZbw569ucqpbqGp+2h8nGlTo87cES5nmrLp3maN1u5
	 7jUBMlAYg9cKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wr6x31NQ2pbU; Thu,  1 Dec 2022 09:44:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E88D94185F;
	Thu,  1 Dec 2022 09:44:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E88D94185F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BFC91BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:44:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22C7040470
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:44:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22C7040470
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vD_U4EYJXM9u for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 09:44:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A0D440393
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A0D440393
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:44:03 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id o1so1334916pfp.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Dec 2022 01:44:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0mg5gF5Bc8jYhcH7zz7tLGXFeH5/FEWq/MS0hfM5LXE=;
 b=JvmKOwf+xPaNv2Micwppzn2Ze9rmStuwDG2SO1XeJkLKg5+NE5Wyhvxh9O7w7W6qbc
 At49t+UfIQi+L4DN1iHdLFj8qEyCG98LlJ5DHAI9o+E/ti0QE5EdwP7TfOCFTbc9D3wW
 T2bTLOvfyZyTyOa5QA8dh/UO9kVleWKMBxICoRBnYwhSU7kX3YjNVO5676A/QFgssy6I
 K1nMNOuaovngJWQwnJR5EQ7JUTvPlo6ZAQZuE2DEtz8ToRJMdngsaLK1hhLTZQy+W4GY
 4e0AGHL8n1NaKrUICdb7KnFu4wzoGGIKx2cC4qiBHUgwJ4M/ga1nvA1lEl79gVSiYB1C
 /W9w==
X-Gm-Message-State: ANoB5pnPbGEKd0HU0c3MItgjfal47s0ST9EphbMWl9QKjqcTDoWpF4Rv
 GdCzdBKs6fD16hkQ1L7guVTh+A==
X-Google-Smtp-Source: AA0mqf6slQpb9xPr0WH3wGhYCbp2Gfc6+Cpbn3pDDlI0O/ecnNX2Wh2sasXFp8o9w0V136i7Qu9H9w==
X-Received: by 2002:aa7:81d8:0:b0:561:c694:80b with SMTP id
 c24-20020aa781d8000000b00561c694080bmr46928664pfn.47.1669887842856; 
 Thu, 01 Dec 2022 01:44:02 -0800 (PST)
Received: from alarm.flets-east.jp ([2400:4050:c360:8200:7b99:f7c3:d084:f1e2])
 by smtp.gmail.com with ESMTPSA id
 u11-20020a170902e80b00b0018996404dd5sm3152297plg.109.2022.12.01.01.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Dec 2022 01:44:02 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Thu,  1 Dec 2022 18:43:35 +0900
Message-Id: <20221201094335.60940-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=0mg5gF5Bc8jYhcH7zz7tLGXFeH5/FEWq/MS0hfM5LXE=;
 b=vFi/RDoTTAN0UIF3zWyyp8VvrLHeJL8VWsQ2cYgvqzCiICTpkJ95gSt3suEHnIkeDr
 SL8QRzHbt6jVBgrMnuD86/aQYEYco5/+vnLI0bHb9CIBlTh5dEs09CcsC/IeNa8qM9c6
 dQK8dqz2QfEk6YA594WR/BrVGd4ZBZ0zvQWv6Dh8cQw0W7HiU0XHOLHzHaR9YTkTygBE
 YAZQZig3OjPRaDkbC/6nQYrcI0chnV3Cn4jKwLkHW18NBOs9UMpgnMAIw0FTu/4UQ9du
 WAr6GIxNuz1U93QoA198DWneDGlWpEtqS4Aj5cPRpKFliz4Ac2brcy1BevP4Nqssy4nD
 ZKeA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=vFi/RDoT
Subject: [Intel-wired-lan] [PATCH net v3] igbvf: Regard vf reset nack as
 success
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Yan Vugenfirer <yan@daynix.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

vf reset nack actually represents the reset operation itself is
performed but no address is assigned. Therefore, e1000_reset_hw_vf
should fill the "perm_addr" with the zero address and return success on
such an occasion. This prevents its callers in netdev.c from saying PF
still resetting, and instead allows them to correctly report that no
address is assigned.

Fixes: 6ddbc4cf1f4d ("igb: Indicate failure on vf reset for empty mac address")
Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
V2 -> V3: Added Fixes: tag

 drivers/net/ethernet/intel/igbvf/vf.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/vf.c b/drivers/net/ethernet/intel/igbvf/vf.c
index b8ba3f94c363..2691ae2a8002 100644
--- a/drivers/net/ethernet/intel/igbvf/vf.c
+++ b/drivers/net/ethernet/intel/igbvf/vf.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2009 - 2018 Intel Corporation. */
 
+#include <linux/etherdevice.h>
+
 #include "vf.h"
 
 static s32 e1000_check_for_link_vf(struct e1000_hw *hw);
@@ -131,11 +133,18 @@ static s32 e1000_reset_hw_vf(struct e1000_hw *hw)
 		/* set our "perm_addr" based on info provided by PF */
 		ret_val = mbx->ops.read_posted(hw, msgbuf, 3);
 		if (!ret_val) {
-			if (msgbuf[0] == (E1000_VF_RESET |
-					  E1000_VT_MSGTYPE_ACK))
+			switch (msgbuf[0]) {
+			case E1000_VF_RESET | E1000_VT_MSGTYPE_ACK:
 				memcpy(hw->mac.perm_addr, addr, ETH_ALEN);
-			else
+				break;
+
+			case E1000_VF_RESET | E1000_VT_MSGTYPE_NACK:
+				eth_zero_addr(hw->mac.perm_addr);
+				break;
+
+			default:
 				ret_val = -E1000_ERR_MAC_INIT;
+			}
 		}
 	}
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
