Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFAF32DFF1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Mar 2021 04:10:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CDB56FB47;
	Fri,  5 Mar 2021 03:10:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5xuqJMULVupB; Fri,  5 Mar 2021 03:10:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 423796F52F;
	Fri,  5 Mar 2021 03:10:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB12D1BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 03:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B55264ECA8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 03:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FjA8ZSd3K3Nk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Mar 2021 03:10:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 820124ECA6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 03:10:18 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id o10so385319pgg.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 04 Mar 2021 19:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=s/06w5QgrfcMPtzUsdqEmwK0JlC5zZBUGgXhBq3TD64=;
 b=kGo37IFXZYumoVwQb3oAseOH7lw4OlGNqzdR6jwpJACgIljfSdjXqSM/AYoZFpxSjK
 LRXDj8ny61n0kBGNu3zJ8poETfpKZNaOWLMD9LMcbr6Bll4ESU9UPxMiPYG0fDhp2Obz
 h8ywDyEt1v1htnK8da0Wa/xF4c1EpPvOeNVxlUm1AnoR8BP/9PFa4+KfEDD3ST453chV
 egxGRDiliEzoG5aOkYCAThQ8tuNmQ3ZyKr4Hk8O/qFJfPGoGqGmUvxsyhvJgqczgt1Q6
 mbXY3pYohslqamKxEHttVnrhDwbir0SEOEtFh532Ilb0b9/faNgDBP7XcER9eZZW0qXi
 vXQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=s/06w5QgrfcMPtzUsdqEmwK0JlC5zZBUGgXhBq3TD64=;
 b=jsLKzdpZRl8ly22M2DJz5kfpo6JN9G1leYDzLCXQr1H6NaqcD9Fx6X86IZHhI9a5wv
 UU4QUz/xHcna3YjG3iJoBySpyQ8k3HspVz12+nba2MrqoQkuoZiCj1YTTjv50zLCpJNE
 +VS3dI0QAL+jKfdDXuTRCqgkOJUBplTvTNkLZtA898Zx+WTBIbpNtohJ+zG34uOh1xK1
 vEunZVjJP0Kn//Q/oGCQguTnY41HVfOATjYPFdnJ2ZMxk4IxQ8QnIqoCITaVVn8m3HzG
 HPWCA+NCzNxHEQCTDjnTbGrTQf/Xct8Jn3nhYTHf989BGm14wey7rQJfAi4lNQp5Rjuf
 xjFw==
X-Gm-Message-State: AOAM531eeFc4XZdBekvBYRiuNv7U/CE/OC5gqIh628/L0bCeioqM2Imu
 22MZJNhFKGsKaPxh2TrUq4g=
X-Google-Smtp-Source: ABdhPJxJroc+YD7f8mRyciCHP8r3jc3N5NIQ6PbIRzQqkEN8zgiK9Eqt6sXv1Xj5ZTbry5MVdj4W7A==
X-Received: by 2002:aa7:91cf:0:b029:1cb:1c6f:b77d with SMTP id
 z15-20020aa791cf0000b02901cb1c6fb77dmr7007696pfa.74.1614913817878; 
 Thu, 04 Mar 2021 19:10:17 -0800 (PST)
Received: from localhost.localdomain ([45.135.186.129])
 by smtp.gmail.com with ESMTPSA id 14sm682122pfo.141.2021.03.04.19.10.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Mar 2021 19:10:17 -0800 (PST)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Thu,  4 Mar 2021 19:10:10 -0800
Message-Id: <20210305031010.5396-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] net: intel: iavf: fix error return code
 of iavf_init_get_resources()
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
Cc: netdev@vger.kernel.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When iavf_process_config() fails, no error return code of
iavf_init_get_resources() is assigned.
To fix this bug, err is assigned with the return value of 
iavf_process_config(), and then err is checked.

Reported-by: TOTE Robot <oslab@tsinghua.edu.cn>
Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 0a867d64d467..dc5b3c06d1e0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1776,7 +1776,8 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 		goto err_alloc;
 	}
 
-	if (iavf_process_config(adapter))
+	err = iavf_process_config(adapter);
+	if (err)
 		goto err_alloc;
 	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
