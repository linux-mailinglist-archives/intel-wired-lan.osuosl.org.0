Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 577437F589
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2019 12:55:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D5FF820455;
	Fri,  2 Aug 2019 10:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bsdiNxHtgZ3b; Fri,  2 Aug 2019 10:55:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B5105204DB;
	Fri,  2 Aug 2019 10:55:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52BDB1BF356
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 10:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4C4BA87B05
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 10:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ZjEuMFLnEBF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2019 10:55:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AAFEA87A2F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 10:55:06 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p184so35851483pfp.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Aug 2019 03:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DIqOI2KhnovE2Wnn/sL/EUNF3A52jl9llVbTYD86JMc=;
 b=srMJDRVV8ygDsohT0GoVuEcKCpACjwtqHx6wxeRhf8dlMqfZgWenGwR3OhfdebtaPn
 7KxUDWtnLUEjat1S8i1wsaYqGkjsrj7IWyhKZIGULZ/jnwjvLkhBk26tdtqCyYyZa89y
 cWRKBS2/4Soe06tTBS0S93QKwqcgm4ECGKhzpNLxGGBnSyfwe4TOtp35XknKVbTjjVSI
 pmMurfmHTPw37WouScJHwO65WdJmWZ5Lr3Zi9f0eIU9L2SHkrSGRMVSVG3+WFcZHeP+U
 Q9TF4i/8l7KWsIoQLSolkikbA13CHToGCC9S6MNnN+0X0dYBBxzu6uPISFglsMMc2B4A
 /5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DIqOI2KhnovE2Wnn/sL/EUNF3A52jl9llVbTYD86JMc=;
 b=JEvinX9gQn2Y0ApCsEs5mshBP0xvkQVugHxg23IX1Au443IHoieL8rASqGKC/Ds9SH
 EGpuOCRo2oS/MaeJTARJCB6hR5hcCMeFPESIU4nNwfqsygUZAT8wHH7e6PZJme0c9YPW
 wZ40TIy1mUUqCCoY7xSkOJCRu3FmeLekYbMvUsRK6fji+0fTW+3ywQKq3PparfcnGy6z
 Y5woeX/+pBKInUiUyutwe5jC4YqBKJpYfXUKwVhRtz8gnuPVLumwnVeQMhRaS/fBK9fW
 BBMl789Mklbfyvf/FJkb8EVEAaEcgaH7zZV8IMuospyBRLBQFN1/ZdrVeiVG08QA3jiN
 rqHg==
X-Gm-Message-State: APjAAAVCazwNk91ClmeRgx7wfSFFPpnaiLP7U/vFzdwEXiGLfAlHaHuP
 4Hc611h4l+lx9XH+MXlG/yI=
X-Google-Smtp-Source: APXvYqwMFjm28/XJVWXgLOL7J4uLlnk5tcztUOTOT97vTba5XRvZcyegYR38vqyrRvSWGSOFZ8sPeQ==
X-Received: by 2002:a63:b555:: with SMTP id
 u21mr125832838pgo.222.1564743306326; 
 Fri, 02 Aug 2019 03:55:06 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id q69sm10647674pjb.0.2019.08.02.03.55.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 03:55:05 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Fri,  2 Aug 2019 18:54:57 +0800
Message-Id: <20190802105457.16596-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/2] ixgbe: Explicitly initialize
 reference count to 0
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
Cc: netdev@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver does not explicitly call atomic_set to initialize
refcount to 0.
Add the call so that it will be more straight forward to
convert refcount from atomic_t to refcount_t.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
index ccd852ad62a4..00710f43cfd2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
@@ -773,6 +773,7 @@ int ixgbe_setup_fcoe_ddp_resources(struct ixgbe_adapter *adapter)
 
 	fcoe->extra_ddp_buffer = buffer;
 	fcoe->extra_ddp_buffer_dma = dma;
+	atomic_set(&fcoe->refcnt, 0);
 
 	/* allocate pci pool for each cpu */
 	for_each_possible_cpu(cpu) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
