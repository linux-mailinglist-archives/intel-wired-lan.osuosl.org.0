Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AA3ABE4CE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 22:36:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 410AC6103A;
	Tue, 20 May 2025 20:36:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BoZNx6BqFpS4; Tue, 20 May 2025 20:36:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0753610A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747773379;
	bh=a5Y9lrCw7xR2ho0EkMK1AgoBE7OrT8n9eYd5ybPQld0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1DptMo6bSkBFbOsP7qI1x6nuD9TQPvJU4cW6yDp7zSqqaQjhBze+LTjVgG70z8bIM
	 e6ZZXi1ptT3fCLumf02UUoeD0UJz2RbSa17Laow7BGr9WPZZj1CdB9PlgmAWVtbuvD
	 tFGi3B6ZB4fDJGibu10h4wgCezG9thj1hFSd6EQtwcmXenYeocxRsLrjgE3tgHcSMZ
	 9m36I3SxiMoXkF7YD153w5JhhZait8FpyJcPQ93HpRFrF02BFglEdguYLBrAcSCsYK
	 2qdXUVBFI2WmKErt9Cv6fBREIer4J8paGue0hQtqjUeYElvn0nXLvqK2WFei8tmY2/
	 Za5izhNcSGiBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0753610A9;
	Tue, 20 May 2025 20:36:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AA9FF205
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 20:36:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9100680DE1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 20:36:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VUBtyaFsETKp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 20:36:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1034; helo=mail-pj1-x1034.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1A7E180D6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A7E180D6C
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A7E180D6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 20:36:17 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 98e67ed59e1d1-306bf444ba2so5874844a91.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 13:36:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747773377; x=1748378177;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=a5Y9lrCw7xR2ho0EkMK1AgoBE7OrT8n9eYd5ybPQld0=;
 b=iNBdk6cg0SzL+Srw4cXikTmKBkbBUiZeIGdFFJUCCJSR0LJElmjgPU2XzxMDQmHns7
 PhETUSIlDOyRMDH3rUVGZ1kw2lgy3zZJY6EqOsZNOC3+lPot6S3uyK9LaKxTwdvNciqk
 Ue1Os0Bu1QLMtzvfmpND05hs3utJo9T8wemfX5QTag0RT1uuNqR+8v4whgQIUl3cHAx/
 vFxlZuYpzbXjTyHYQ+KWPlGwHzEcFkAj4ZYpBkbmsL5Q/RMuXDsvviuvNyS9PM6vdNFv
 lYJ2t7zDnasOs9yJjg0m3WiA36UT3g3pk9CNagW/w/J74X07gXLlPxS0VtDZJP/sZteb
 Tatw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUVdhEbJkzjFqVTX7lQBhabW8CpZlZ2XrtwcIwEIAwko2UbjSyu7rX+HSJbz7ln0yZNiLbGvZzjcZn94UGBuiY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwPuk141xakcYz4tm6aozDt11ub5HfTjj1owRGyMPr5ogz4Fa5n
 YlsxqjVvAhzyS9KStnFyWQ3229wih6qrWlnYKySLmqnGsINsDk2ZE3I=
X-Gm-Gg: ASbGncu+ui75O4z8wOkus209SBxXgoH4ljfMsfLrhrowmOLC7Dg09Dxs+qi6oJob3g0
 SOj1G9aAK5qfrzEmFINpX2W02FVhn5VJmqt6G2zLwAd4Xyvb+8246kIpsXm89mM8KAw/zi8zp3A
 IBaC6LqcvRnkCMUy4FCwtOCU019apF1p8JrqdZ/zbQQgMHRzWxvLG/Ll2YLjDC8X1TGamYeX5CP
 AyfP47ZTEsGeUT4PXUj6oUPLmE/BomJlKdo4DUueJflXUlpiN63CvmuEmg6hcg+2SD2DEDXvJG6
 3ba45b6GjivdPJ3yjGRBMghCZfV4CNFhWKFBqcHtnu7RoNWGToN5s8jAXob3U8Lho5OWoki3qtd
 4eT1ynYV0h/+j
X-Google-Smtp-Source: AGHT+IHWgke1DG8ChG5fslNyhSb3j/oJctAD2YHyTgUEC0y6COR53m/9wy1aosXnbUA1AqrRETKSPg==
X-Received: by 2002:a17:90b:5105:b0:2ff:62f8:9a12 with SMTP id
 98e67ed59e1d1-30e7d5b763emr25797392a91.23.1747773377342; 
 Tue, 20 May 2025 13:36:17 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 98e67ed59e1d1-30f36491d85sm2158936a91.29.2025.05.20.13.36.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 May 2025 13:36:16 -0700 (PDT)
From: Stanislav Fomichev <stfomichev@gmail.com>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, ruanjinjie@huawei.com,
 mheib@redhat.com, stfomichev@gmail.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com, leon@kernel.org
Date: Tue, 20 May 2025 13:36:12 -0700
Message-ID: <20250520203614.2693870-2-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250520203614.2693870-1-stfomichev@gmail.com>
References: <20250520203614.2693870-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747773377; x=1748378177; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=a5Y9lrCw7xR2ho0EkMK1AgoBE7OrT8n9eYd5ybPQld0=;
 b=d6uKD79IJumQGbrWkKkfYJflOPaWunPPYXhqlXcM3M3SY/HTNV0mCxSOs25B5fYbRw
 4Wy8hm2yC1Lzvsz4hK5yYHLeacrKJpVk1jOv5mp2JY4GcQVRsgtl6Su/w9mvhqcRqHCl
 WX2FadqpVmSQEDfOdU/6puJBiymFsYaoUGC1A4dAJCGXDJOuGvYCOIn+X1/+ADh2Tmm5
 1VUriA6ARSJDsx/L/+AHQTEVtCXDKSSPbVyBUD6VNTzegmnilCJCtgz+/sVY2CPdQtHV
 Cqry+u96v21qhxAhM48dC7PFXjLU2k7oHRESjKOJEZ09mUEfQM7nMrHFvbg1QFBXgF3/
 FO6w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=d6uKD79I
Subject: [Intel-wired-lan] [PATCH net-next 1/3] net: ASSERT_RTNL remove
 netif_set_real_num_{rx, tx}_queues
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Existing netdev_ops_assert_locked takes care of asserting either
netdev lock or RTNL.

Cc: Michael Chan <michael.chan@broadcom.com>
Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
---
 net/core/dev.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/core/dev.c b/net/core/dev.c
index fccf2167b235..5ea718036921 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -3179,7 +3179,6 @@ int netif_set_real_num_tx_queues(struct net_device *dev, unsigned int txq)
 
 	if (dev->reg_state == NETREG_REGISTERED ||
 	    dev->reg_state == NETREG_UNREGISTERING) {
-		ASSERT_RTNL();
 		netdev_ops_assert_locked(dev);
 
 		rc = netdev_queue_update_kobjects(dev, dev->real_num_tx_queues,
@@ -3229,7 +3228,6 @@ int netif_set_real_num_rx_queues(struct net_device *dev, unsigned int rxq)
 		return -EINVAL;
 
 	if (dev->reg_state == NETREG_REGISTERED) {
-		ASSERT_RTNL();
 		netdev_ops_assert_locked(dev);
 
 		rc = net_rx_queue_update_kobjects(dev, dev->real_num_rx_queues,
-- 
2.49.0

