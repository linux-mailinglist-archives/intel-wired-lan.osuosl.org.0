Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFD53F5F93
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 15:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D708A60A3C;
	Tue, 24 Aug 2021 13:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 55f7nPIXLQSV; Tue, 24 Aug 2021 13:54:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D4FD608CF;
	Tue, 24 Aug 2021 13:54:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 519791BF28F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 10:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3EC38400AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 10:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UYS6tzQouizk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 10:53:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 88D32400A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 10:53:01 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id w68so17990167pfd.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 03:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LNPUq/my7v0mlOT+sydB1v9A4usTz8ZuFnFZblPYipE=;
 b=ac6NqL2kYMbSjIW7lO8U2EAfeZ8ZSvdYpRAN5FtVqf26LMPDTR/PlH9M2ZVJqumiQW
 RJDD+CSR17WXxqAkHvZ0bDjZ08DUhoo9s+30kz8LmAM0Q5g52gTe1ZAN3aG+YV5Wls8z
 ehmq4UcLfCOGpaui3XKMdm9knQgZO0LvG6jZkyqUnadxQQVmu0vU9X3iDAFyJhQhptTt
 LMzauYG6fQWOJbmpUlMzdAWEGD9PZD5pCdGe/baFjq5R5Gw9fo8Yk6bqQ6pXfPeri4Mv
 BIcAnN0KkSLu472Ek1yiBAUbpXNK/vaY9z6jz4/hhrwlCM5R2hD2ugLKZh2+1u8HWvRw
 zYpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LNPUq/my7v0mlOT+sydB1v9A4usTz8ZuFnFZblPYipE=;
 b=eCBMebK2KWkGgsOQw4fYKapzuRPauXnTMomRNGVC6b+QAZBn00iLXRoLHBGLYZQbyD
 ptJhD5k7Tm2G8rph7SM9Qbnu3v67EA2nv1hHOTN2FUikglKuofcximyZaiFBkh1xp59m
 XRfSCtuyiPlzaRopHwTIF7elXoGiYkWDF/XpH4R2znGWS1ERhMyqDbIjzLOCsOuA9mGy
 0Xf794ahZFJJjNFj2Sf9Rxay+LYcCsKIwlZ8l1kAPU6HIC5gyK/pSBjOMCqGrpeYv3Tj
 ITPuS4UCmJCQ3Z++kaX5zvg1RjeooggkO9pSi0GuYqXK1nzPxLiF/fmxErIz3YttblWJ
 Reuw==
X-Gm-Message-State: AOAM532pvkLIqClz2o2KTseS2xcygXtBPhL7bEdo7qxu19ts/NY2S3H0
 eycpgFmtijrmGQKoxJBhiec=
X-Google-Smtp-Source: ABdhPJyDnSmefDKPzZ1Z0XNecxC4jE/Ejbls2ucBKiWsPZI9M7jABvsh6Bf8IyUVEzp6yyrPXBJaLw==
X-Received: by 2002:a63:170d:: with SMTP id x13mr35222225pgl.216.1629802380966; 
 Tue, 24 Aug 2021 03:53:00 -0700 (PDT)
Received: from localhost.localdomain ([162.219.34.246])
 by smtp.gmail.com with ESMTPSA id q12sm2085126pfj.153.2021.08.24.03.52.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Aug 2021 03:53:00 -0700 (PDT)
From: kerneljasonxing@gmail.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org
Date: Tue, 24 Aug 2021 18:49:18 +0800
Message-Id: <20210824104918.7930-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.30.1 (Apple Git-130)
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 24 Aug 2021 13:54:31 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbe: let the xdpdrv work with more than
 64 cpus
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
Cc: Shujin Li <lishujin@kuaishou.com>, Jason Xing <xingwanli@kuaishou.com>,
 kerneljasonxing@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <xingwanli@kuaishou.com>

Originally, ixgbe driver doesn't allow the mounting of xdpdrv if the
server is equipped with more than 64 cpus online. So it turns out that
the loading of xdpdrv causes the "NOMEM" failure.

Actually, we can adjust the algorithm and then make it work, which has
no harm at all, only if we set the maxmium number of xdp queues.

Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
Co-developed-by: Shujin Li <lishujin@kuaishou.com>
Signed-off-by: Shujin Li <lishujin@kuaishou.com>
Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index 0218f6c..5953996 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -299,7 +299,7 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
 
 static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
 {
-	return adapter->xdp_prog ? nr_cpu_ids : 0;
+	return adapter->xdp_prog ? min_t(int, MAX_XDP_QUEUES, nr_cpu_ids) : 0;
 }
 
 #define IXGBE_RSS_64Q_MASK	0x3F
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 14aea40..b36d16b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10130,9 +10130,6 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 			return -EINVAL;
 	}
 
-	if (nr_cpu_ids > MAX_XDP_QUEUES)
-		return -ENOMEM;
-
 	old_prog = xchg(&adapter->xdp_prog, prog);
 	need_reset = (!!prog != !!old_prog);
 
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
