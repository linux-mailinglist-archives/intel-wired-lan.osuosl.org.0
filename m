Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 016C87F58B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2019 12:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8D2F87A8A;
	Fri,  2 Aug 2019 10:55:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7-VmixEj7EHN; Fri,  2 Aug 2019 10:55:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2570D87B05;
	Fri,  2 Aug 2019 10:55:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 37FE11BF356
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 10:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 31F93868DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 10:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pBAC_XP-5Y9l for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2019 10:55:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9A9C4868D9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 10:55:12 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d1so3073068pgp.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Aug 2019 03:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s3ianRPCP2Zu9bnZaFDrTAINsaT4fxD5fOtOtR4Ftwg=;
 b=edKvkr2YLIpIwx88PyQUx4RInX3evd5YZicPc5fVUrirsHVeUJEV18bp69Zsr/uwZR
 7aEy0TZ09nh32GepyRrJ/2r4tgsVN4KfX4CvTzM9oCWZuVThYFYrEY86NzdIS42I3lvG
 W7hbLhLjK5sCECqKDZXL28jX4STloI6gjFBeF7BZaNGONsTPKTOLJHTc0zMFXRxKa/fd
 cIwHFYqkSOh0BkHPPorRoUVGUsANLrsYzVbkxP+hq3xNwhRy5iEsugguKukd63Q6WjEG
 RllZ1/urSwAAeorhM/DK5j3DUIXDFZyO8yD7wPISRGd2SLksT7PpLvUb6GiT5xRsQ9LQ
 kXMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s3ianRPCP2Zu9bnZaFDrTAINsaT4fxD5fOtOtR4Ftwg=;
 b=syyROOGUYZTfBVlOldEuo3ev4xsQdVIf4b7o/oU6wsiQHeRTQDEf+FJbbLKX2Ige5N
 EMQi1vk11Xti7Lno/ofzKYvQ2SDME2XtqCxIyfEnUA5lyMIx2v/+rkMzLPqxqb6oEJfA
 t3ooDnKZXztw4nndL+g+EyldOMPCHypf8ln5vXcDG5QPlP9EQdwogfzzf+Zf6EO1m5g1
 fFG/Fh9AG5HlTxqQxSuS/4taA4XigaLAXSyblNnh3j2J4gOZoOJ4Rk8siNaNEBVZv2Jr
 NvBDn6tvKMzQTP/XWGzlxSaj5G7/Xrc++sVNpAqRYS5WTUyyNPW/3yb8iI9F3qfvyLue
 0qoQ==
X-Gm-Message-State: APjAAAVUZxFiGzb2xX8CEiIuEX8dqT9GEG3fAwqbmVJvWy000MH8DxUG
 X/rt1aeEAI+QPWAbf7TZOwU=
X-Google-Smtp-Source: APXvYqwJ3AXNGPKR8CvVwn+1NJfF2I4wPyeLWTaJjlRgYhQbwttCQHeRPx8gz0KA9Lhih7E3N2eWXQ==
X-Received: by 2002:a62:874d:: with SMTP id i74mr57943418pfe.94.1564743312378; 
 Fri, 02 Aug 2019 03:55:12 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id v7sm34909052pff.87.2019.08.02.03.55.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 03:55:11 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Fri,  2 Aug 2019 18:55:07 +0800
Message-Id: <20190802105507.16650-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/2] ixgbe: Use refcount_t for refcount
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

refcount_t is better for reference counters since its
implementation can prevent overflows.
So convert atomic_t ref counters to refcount_t.

Also convert refcount from 0-based to 1-based.

This patch depends on PATCH 1/2.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 6 +++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
index 00710f43cfd2..d313d00065cd 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
@@ -773,7 +773,7 @@ int ixgbe_setup_fcoe_ddp_resources(struct ixgbe_adapter *adapter)
 
 	fcoe->extra_ddp_buffer = buffer;
 	fcoe->extra_ddp_buffer_dma = dma;
-	atomic_set(&fcoe->refcnt, 0);
+	refcount_set(&fcoe->refcnt, 1);
 
 	/* allocate pci pool for each cpu */
 	for_each_possible_cpu(cpu) {
@@ -837,7 +837,7 @@ int ixgbe_fcoe_enable(struct net_device *netdev)
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 	struct ixgbe_fcoe *fcoe = &adapter->fcoe;
 
-	atomic_inc(&fcoe->refcnt);
+	refcount_inc(&fcoe->refcnt);
 
 	if (!(adapter->flags & IXGBE_FLAG_FCOE_CAPABLE))
 		return -EINVAL;
@@ -883,7 +883,7 @@ int ixgbe_fcoe_disable(struct net_device *netdev)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 
-	if (!atomic_dec_and_test(&adapter->fcoe.refcnt))
+	if (!refcount_dec_and_test(&adapter->fcoe.refcnt))
 		return -EINVAL;
 
 	if (!(adapter->flags & IXGBE_FLAG_FCOE_ENABLED))
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.h
index 724f5382329f..7ace5fee6ede 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.h
@@ -51,7 +51,7 @@ struct ixgbe_fcoe_ddp_pool {
 
 struct ixgbe_fcoe {
 	struct ixgbe_fcoe_ddp_pool __percpu *ddp_pool;
-	atomic_t refcnt;
+	refcount_t refcnt;
 	spinlock_t lock;
 	struct ixgbe_fcoe_ddp ddp[IXGBE_FCOE_DDP_MAX_X550];
 	void *extra_ddp_buffer;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
