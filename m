Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC3D634027
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 16:27:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5A1241888;
	Tue, 22 Nov 2022 15:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5A1241888
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669130828;
	bh=VDyV739BD9u6bE4ncWn2oxMl7Tw2nD43J+ciJTO11BM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=84K8dtfP9tUggB6tBjACvqxRlQg6HTBP/PLhc9ATtn6U4JruLfYYmNWjJXoTfYNsr
	 oIopbr0QX8Q2ghqk/xItJWSHSxMKMYNY/cXQjmWQWAuUaai7uiv9U1LIJZqsv9Bbxq
	 ghfbWbi+e4DPYsJIu9MvofY9hwqa761EaoRbt1SWDwsf0U+OKgjnajS2KH7gMBT7S+
	 J/EwEKsonyGHt8+ZmsOZ0AxmIpo3Z+Pb81BNJhRcKuUNFrE04liNKcx7bZIbZJIfQp
	 16EV5vFBG0r2EEDjz93GfUa0VQAdNYBJ2Ib1YJHj7T0I1Bm8prGoC4VdZxXvZqv0T0
	 941lXKXk6JUJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H3veHjCv2XBE; Tue, 22 Nov 2022 15:27:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 963CD417D9;
	Tue, 22 Nov 2022 15:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 963CD417D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 357481BF330
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 15:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1996540133
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 15:27:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1996540133
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ba4sjFOdLrcu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 15:27:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D38C6400CB
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D38C6400CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 15:27:00 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id b62so14405096pgc.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 07:27:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3eN8PG1tu0zv6ECYGZ0bUFaylUuOM6J9ZGH6Fn6kJHo=;
 b=wUOt35roP7c8ggDVasA9IYpr+V3T8borABVhplRBYp3CuKP1hfI+Gihgi9pJHqP07k
 rvejkeyoOgExHrPUxMjIkxUpJyLOjJKQ8iNHozdjsWVai2VtiiKJhw2D46D3LgAGouCG
 NajH11pk2tJm16onoU9m3f8yfqRf7t+Jj6nUf67nxtVm56elEiPe5UBgoZ697QxywaYZ
 w/eeuB/e3zG5vCHA4gx4lZOZS90TU8sE5nZywm6sl8R8XpVqrdOSWBhh53rb5pT+ChuJ
 KHBaVOlNsWP8Ov+Dvz+1PL9VkGYSTSn3BGCMhnZ+ybGTvlL9h9zlwOZ4DGuvfNGR9xlG
 7IHw==
X-Gm-Message-State: ANoB5pmi+Y7AVoay5zJ/h84VBUt5ijufgaZnavRJIko/EwJKl0KmvdwM
 x7IBkBj6rSWdsNLSwNgbzwNOxg==
X-Google-Smtp-Source: AA0mqf62k0bqINVN7BK4sgHzvRy7LZL/c5HZpP1IiynzWyp5FdyrjeP2xnyMjAcErD7lncdNpbEc4w==
X-Received: by 2002:a62:5e41:0:b0:56b:db09:a235 with SMTP id
 s62-20020a625e41000000b0056bdb09a235mr6211427pfb.20.1669130820272; 
 Tue, 22 Nov 2022 07:27:00 -0800 (PST)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 m9-20020a170902f64900b00176d218889esm12161633plg.228.2022.11.22.07.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Nov 2022 07:26:59 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Wed, 23 Nov 2022 00:26:30 +0900
Message-Id: <20221122152630.76190-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=3eN8PG1tu0zv6ECYGZ0bUFaylUuOM6J9ZGH6Fn6kJHo=;
 b=MF2ry8jCjEfJSczD2TlSQRhxgxw/769GkaMOON9oAkxuEIN97YK7PZjef+RkvUqmn6
 c7AjFerXB1PJT2u2UzDPulK7aXgB17t38IkHEMHHKIogmM4cbG1WwJK6iglP6/5mXOrt
 JmUu/ADf6amE5NTKz6Npi0hz37SGswSnxd+WcFtY0rB4YMUuwQ2w+DwouTzl4kNxpGZr
 CrgSBr2d6j1OSLNtjFltNveJZwLExs/unNW9lRX31lK/abl95eV/kH0TDAvbWCtkhje9
 EkbTVXMgxMLewSuaN4hKU4P4MDuGb074N7xhcU37E00p2MKSPiBCSK+7zoaWT6ce5axZ
 o2ng==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=MF2ry8jC
Subject: [Intel-wired-lan] [PATCH v2] igbvf: Regard vf reset nack as success
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Yan Vugenfirer <yan@daynix.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
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

Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
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
