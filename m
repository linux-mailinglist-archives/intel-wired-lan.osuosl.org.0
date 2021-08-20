Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC703F2D9F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 16:03:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A165605D9;
	Fri, 20 Aug 2021 14:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DBuuM5ynOli8; Fri, 20 Aug 2021 14:03:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18E26613FB;
	Fri, 20 Aug 2021 14:03:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 700A61BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 02:37:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DA9C40710
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 02:37:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AeIhgI3i1GPk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 02:37:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FDCB4070F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 02:37:36 +0000 (UTC)
Received: by mail-qv1-xf36.google.com with SMTP id z2so215362qvl.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wWMQ9DoOno+c3OyqFMSEWNvDVLmVwUI+Xz33Hz9sthU=;
 b=halUh/5EkZaX/YBXMqTWvGtnH7NSWBlqI1rpxq0sMoxRkLhGjK4xQxOzJjbK4I6uRa
 AJuNfyHWivm2mbLD0aKTnrqHLyzUJUL0/S/Vm9bmdd6TzPubOFNfvLulxuywrwBoZS3G
 kUdDG3b7e9buH/sxmzB9m+KzZVpA1ZiUYMKSfBOSbqR5bSFcBwulODmFOEibRPzeWCJn
 9qRhSpbcAT3Uy6yecQEgNmH0+gc7nBCpi0629uKGVUrILvS1aOUPt4S5KeaB4b1NN3pm
 xd55CJba6wx/ZMu8Q9olzto3Te27JaE6tHfihuD9gJbZdMNXWTNfqHUmnr6cvCrh9aoV
 MTZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wWMQ9DoOno+c3OyqFMSEWNvDVLmVwUI+Xz33Hz9sthU=;
 b=kegraOY10s5Lrygb6LUaOO65fwG/X1+bi5NuGs6ePDg26PgtUFQO2JZ3+z0oD1LWE8
 msycZRBgHVhNl0ft5RpdRg9MD7Ah1NjJKXm3ps73KVpMr6zg9s1wKtpqPKzBkRzLpmJq
 DAKMC/ZTR/9ML2VOBuQHlyXl6nNEwsEQ3fSLgscQ0B4fH1Nz7nbGQoI8eZT/wXEhqC6t
 XE1uobdgyH1Z4/9NHawQZVd3WpXq5F8/g/GsaZ7w9w3simFoxtbCdcrfjTjhoBKDeTm2
 EycrPE9ZiRicSpa8uYH4wWTUTIyFmv9qawVa4yrgPaI0PFB7jzNR1NVUanaXuc1wOd9Y
 d5QQ==
X-Gm-Message-State: AOAM532eXDWPKn481QR4uUV41q0Mh5NXD2Z9UegjJBMjkxV3p+H1lv2Q
 UCcMfiV2kM+pdEehLLYuES4=
X-Google-Smtp-Source: ABdhPJxpWI66ECfv2tS7crK+5x37kpF5iynRBZkNqa/BPKoimx9JnWtPYDhB7OPwgoTw6vV6FNaiuA==
X-Received: by 2002:a0c:ff48:: with SMTP id y8mr17901761qvt.29.1629427055094; 
 Thu, 19 Aug 2021 19:37:35 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id c1sm2114382qtj.36.2021.08.19.19.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 19:37:34 -0700 (PDT)
From: jing yangyang <cgel.zte@gmail.com>
X-Google-Original-From: jing yangyang <jing.yangyang@zte.com.cn>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Thu, 19 Aug 2021 19:37:13 -0700
Message-Id: <e2578530d099fbc0553c97585440192e548bd3dd.1629217036.git.jing.yangyang@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 20 Aug 2021 14:03:32 +0000
Subject: [Intel-wired-lan] [PATCH linux-next] net: ethernet: fix
 returnvar.cocci warnings
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
Cc: jing yangyang <jing.yangyang@zte.com.cn>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove unneeded variables when "0" can be returned.

Generated by: scripts/coccinelle/misc/returnvar.cocci

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: jing yangyang <jing.yangyang@zte.com.cn>
---
 drivers/net/ethernet/intel/iavf/iavf_adminq.c | 4 +---
 drivers/net/ethernet/mellanox/mlx4/port.c     | 8 ++------
 2 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
index 9fa3fa9..cd4e6a2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
@@ -551,15 +551,13 @@ enum iavf_status iavf_init_adminq(struct iavf_hw *hw)
  **/
 enum iavf_status iavf_shutdown_adminq(struct iavf_hw *hw)
 {
-	enum iavf_status ret_code = 0;
-
 	if (iavf_check_asq_alive(hw))
 		iavf_aq_queue_shutdown(hw, true);
 
 	iavf_shutdown_asq(hw);
 	iavf_shutdown_arq(hw);
 
-	return ret_code;
+	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/mellanox/mlx4/port.c b/drivers/net/ethernet/mellanox/mlx4/port.c
index 256a06b..754c253 100644
--- a/drivers/net/ethernet/mellanox/mlx4/port.c
+++ b/drivers/net/ethernet/mellanox/mlx4/port.c
@@ -1820,9 +1820,7 @@ int mlx4_SET_MCAST_FLTR_wrapper(struct mlx4_dev *dev, int slave,
 				struct mlx4_cmd_mailbox *outbox,
 				struct mlx4_cmd_info *cmd)
 {
-	int err = 0;
-
-	return err;
+	return 0;
 }
 
 int mlx4_SET_MCAST_FLTR(struct mlx4_dev *dev, u8 port,
@@ -1840,9 +1838,7 @@ int mlx4_SET_VLAN_FLTR_wrapper(struct mlx4_dev *dev, int slave,
 			       struct mlx4_cmd_mailbox *outbox,
 			       struct mlx4_cmd_info *cmd)
 {
-	int err = 0;
-
-	return err;
+	return 0;
 }
 
 int mlx4_DUMP_ETH_STATS_wrapper(struct mlx4_dev *dev, int slave,
-- 
1.8.3.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
