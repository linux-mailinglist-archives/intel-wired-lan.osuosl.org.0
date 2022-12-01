Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA91563ECFA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 10:56:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 212CA418AD;
	Thu,  1 Dec 2022 09:56:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 212CA418AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669888617;
	bh=wo+1WoGxbg0vjVBkAu+fvHKAzZFD3Tpw1tGGEUcaCfk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=g6fxVo3YN5QlTEnmi6cNhj/FP3Eny0b3ajwmYtVtGKu82NS2OUXFma0rExe/pqubq
	 Rb0dmTKOmlYvrJQ5j6tw2REpeZApSfAOU6vtHi2VhbmviN0ec34gE6hljsi+2PSjMC
	 t+3wAINBBwelSTL93OIZhRS+pwN6Ax/HlBa879hhszSdS9V5vI846ovsQAK+8rLMx7
	 9vtHaThQO/sPMkmYCK4J/Y6Offl3brR6IsnVIbKDxm4Y74bu+bCVhR2YBF00XjRxiG
	 Um0HG7NitJh631aTF+aKM7G8qJgA8CS7doKWXQIgUp9ZGj5YdBBdWmXflfKjmZPYR8
	 Q51KJDQkPZQQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bWnYvS_sTrBU; Thu,  1 Dec 2022 09:56:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5DC8418A8;
	Thu,  1 Dec 2022 09:56:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5DC8418A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FBA31BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0BABE40897
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:56:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BABE40897
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UbgVdWEzsyoX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 09:56:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2716440896
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2716440896
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:56:49 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id s196so1230584pgs.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Dec 2022 01:56:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gEi5WooIzymVJWTmisumqALsHWCs8mFJrm8lGYU0gwg=;
 b=rVKCysxQONwWZC65XOGp76gSOjcW/1DzUZMiui468QmFJwV3kvVK1ZCuD56tpH342I
 KqVxiGznDvb4wldtZapjZXMTGlfwtybclOAojnoilAiMZPGnt+SjAB3HkwDvZ3Myf0bu
 eJBomJYBIIUZi5TzXMRTWcL8fYETmYii+v7fsFLxIJHWEsoGMvJBn8nhBhD4F1uquphc
 wuE/8yM3Q9Ehplpa6SCmq8QQnS6us4SPUTMwM9imFp+xWiXYXxpuACeSItLh/Tdzt6fA
 BEE2Gd/lQs7n02albOB7OFrmPzsRAZY1dTJ+bayMylHoDMFF22EF1e84J4E2DuLqCVwY
 rkUQ==
X-Gm-Message-State: ANoB5pk4IpjFRvrP1JHj2Q72VuhdefSPpEdWmJYoCdKEAUWZDWsDId9g
 LThOifJLV/95dT/8A5b3VNsaGw==
X-Google-Smtp-Source: AA0mqf6/kB86fKTvI6Alt6QeX/Re8QGsHujO7z6ZxIRp/ruxn0H9ZYp/9b2o18P9qS5nzK12O0Sr7Q==
X-Received: by 2002:a62:5844:0:b0:563:1231:1da with SMTP id
 m65-20020a625844000000b00563123101damr50373568pfb.5.1669888608459; 
 Thu, 01 Dec 2022 01:56:48 -0800 (PST)
Received: from alarm.flets-east.jp ([2400:4050:c360:8200:7b99:f7c3:d084:f1e2])
 by smtp.gmail.com with ESMTPSA id
 j3-20020a170902da8300b001714e7608fdsm3146244plx.256.2022.12.01.01.56.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Dec 2022 01:56:48 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Thu,  1 Dec 2022 18:56:38 +0900
Message-Id: <20221201095638.63652-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=gEi5WooIzymVJWTmisumqALsHWCs8mFJrm8lGYU0gwg=;
 b=lhsxbXMptzbThlto8/s9mq8gvOTeQm71kwyFost1kp4jJfu3FfEwyfW7FlEez3IAT0
 2fpaIR9O13gitkUK3SPHjae1AzvyxVIAVkabSih35tKaIDAGUMUm0wzJ6dJshVtcmLGN
 UpsJ3vovMBypF8U1dbftpieUXFgFcq8RJOA9LmWv/WXOeluYInOfunSYysa7LLP0wzBf
 GdmgMnyDkgtaTPv79HlDRjeNoUy4sNAp36s12S0c68a5NbhupNNDVJpM/TePN/8y1L0y
 i8ASwM+6bdRVyao00W2CiX68Ztw1DWhQ4sba2Ps1x+4kwu7L3JDWCJH/65H3Cyf8DYi7
 A4zQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=lhsxbXMp
Subject: [Intel-wired-lan] [PATCH net v3 RESEND] igbvf: Regard vf reset nack
 as success
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
Resending as I forgot to CC Tony Nguyen. Sorry for messing your mailbox.
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
