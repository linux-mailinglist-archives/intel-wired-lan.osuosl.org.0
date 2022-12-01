Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4370E63ED80
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 11:20:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BDF1418B8;
	Thu,  1 Dec 2022 10:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BDF1418B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669890024;
	bh=S44UkwFEcWVgNa5c7iJPnNl6Tql2qN4YYT2hyjJ5iU4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7ei9BFHmy84BUs3PetPoFr+z0FobbPyFoUMffdEpTLXrKKvSXU1Yg/2G7vUnZ+muF
	 gQfu02vOISza3I8+TsRiQsaje3O/9OxCWEX5CSThMljCo1TXNrZEplyY8kqf8obpJZ
	 bhEIKyHmXHaM1uyr++6AYeOa6KNiwSpjfMNw1w0IXWLpYFKm1hp31Abw77nmQr88d0
	 UN893zFEduBTZ6oNSLA4iNybLperUgJuQcEQTpe5ypV6YqF8+j78hvLNrl2kIB2UfX
	 5/4uz9dxEc8UwBievPgInuc5XYCcvyPRi0lM77T35Bq0VXj0IUdzEvvZ1INK5qeYN+
	 76DNw91O3WQwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h2eOZxYA75XA; Thu,  1 Dec 2022 10:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05F08418AC;
	Thu,  1 Dec 2022 10:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05F08418AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2CD281BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 10:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 059EC418AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 10:20:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 059EC418AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id suHrNHCZP44o for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 10:20:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D048418AC
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D048418AC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 10:20:16 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id q1so1256372pgl.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Dec 2022 02:20:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=j+iNLgZBHVFYVqAiKpaqYdWWjZFUYRy5zBVAjX1O+nQ=;
 b=elo59nv95exqdjguqi2apvtYeva2nQV8YOuTsGaNOy13FQV45KaOVOW8Rxrmt9K6RU
 Pd4ENe4AbhStAnrQUo5t1IlgHdame3Cg4TAHS5euzwz8yLJ007Pvo5yFSQ2qAafetPXt
 m++X06h2b4/6e75BksarHj8x+ZPjunwm/3AxR86WTAMM0adytMdBXjCVknpWVhM+GVCe
 HzIohJ9oZKkv81mphJRXL2TFYv6hfnVlpstma8rOMXpX29+XcEcE4Nr5LW3+OxlNDmRD
 yt2wd5fPeJP2ZhIjaVoQMJSdf0AV9sPn+8G72ZBz/UJv/qkPB95CHnR316oMvn+JTVyx
 TVKQ==
X-Gm-Message-State: ANoB5pmXwzM+VbZQmVmxVbwv/NHHwP8EeFZCjmb4R8sYbEKlIXz5mVX1
 lGzYyRwc8YlCft+6L0q4IFhOPg==
X-Google-Smtp-Source: AA0mqf7fksbSZOyCBni3D+9eCcjk09sHMqEqioylnSOV7zMZWndYABL6qD4HKFDypG6UJN8iiAW1zw==
X-Received: by 2002:a05:6a00:324e:b0:575:871f:2e7a with SMTP id
 bn14-20020a056a00324e00b00575871f2e7amr11661250pfb.35.1669890015643; 
 Thu, 01 Dec 2022 02:20:15 -0800 (PST)
Received: from alarm.flets-east.jp ([2400:4050:c360:8200:7b99:f7c3:d084:f1e2])
 by smtp.gmail.com with ESMTPSA id
 j5-20020a170902690500b001708c4ebbaesm3164914plk.309.2022.12.01.02.20.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Dec 2022 02:20:15 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Thu,  1 Dec 2022 19:20:03 +0900
Message-Id: <20221201102003.67861-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=j+iNLgZBHVFYVqAiKpaqYdWWjZFUYRy5zBVAjX1O+nQ=;
 b=YJWv5iOEvqI+beFxfLWL+0HTOZlErkbrpNcTf4vFnDqxK8klrn+BorJpFEMBEdaVLs
 cnCCj3rLdSXDQQpIXtvi5IZ7L4kV0eNf0/7SnUv1LJ4zNJPZhpvV5JO/ZCxYMaXa2eWC
 9h40Nv/9x6dEHPPbDONVxIfvE0i5uvkLJN2wuvPy1QGl6Hfd15fAjY+1t4Xjw91U/SV0
 stIl21nN9reZb88gtoWcLzg7DMyQPFCjx5bplFUAQ3bvD7iw+3a7RswoQ0Qjg2yNtSI1
 xtk4wemqixDdUN9oYzTPthVUSg0LtfIkVFHL9KuLyxDwgnb2AIpkyHAfm+elNiZFtLY0
 6CZg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=YJWv5iOE
Subject: [Intel-wired-lan] [PATCH net v4] igbvf: Regard vf reset nack as
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Leon Romanovsky <leon@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
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
V3 -> V4: Removed blank lines between cases
V2 -> V3: Added Fixes: tag

 drivers/net/ethernet/intel/igbvf/vf.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/vf.c b/drivers/net/ethernet/intel/igbvf/vf.c
index b8ba3f94c363..a47a2e3e548c 100644
--- a/drivers/net/ethernet/intel/igbvf/vf.c
+++ b/drivers/net/ethernet/intel/igbvf/vf.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2009 - 2018 Intel Corporation. */
 
+#include <linux/etherdevice.h>
+
 #include "vf.h"
 
 static s32 e1000_check_for_link_vf(struct e1000_hw *hw);
@@ -131,11 +133,16 @@ static s32 e1000_reset_hw_vf(struct e1000_hw *hw)
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
+			case E1000_VF_RESET | E1000_VT_MSGTYPE_NACK:
+				eth_zero_addr(hw->mac.perm_addr);
+				break;
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
