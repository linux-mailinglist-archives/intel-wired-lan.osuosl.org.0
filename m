Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 579DAADB68D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 18:21:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A834B80E09;
	Mon, 16 Jun 2025 16:21:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nEgz4g_bh3jW; Mon, 16 Jun 2025 16:21:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2E3480E04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750090887;
	bh=hOzLGPoCr0MeSXGXJzKmOKNWDgmi51GcdPfztdwS3U8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jZdM+RoWKp6McVm2343uaSy744Iz8CbsHwFRbSEqZiy5mcPqmS5LmMI9EaX+BJEP1
	 y3wqO8AwNcacwuAjgKSOrpZGfLYiqhJYTJvl4kfz1F7RM6YSAIkwRUX3uvb/aJq2mq
	 be9d04WPUuS5dA3SZfJxe5j3qE41v3Ywz+yOgsHAIqZM5d4/UoCeZJAQeo/gOnC77S
	 w82EKW0sCjUM/MeDJtE6v5oM7sLeFcQqXlhYls8FmGBvQxdYIWoHkRAwFNi+Bplqol
	 g0QRIyWNRHYIaKzBAOoey+/ic5d1w8lVfIyfcpg9hZyKFH3h/ea6ykjggJ8Tj/s+CZ
	 8oE6TfJ76GTEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2E3480E04;
	Mon, 16 Jun 2025 16:21:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DC8916B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F9DF40329
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cSm4Igjigsnz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 16:21:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::536; helo=mail-pg1-x536.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF36B40312
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF36B40312
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF36B40312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:24 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id
 41be03b00d2f7-b2c41acd479so2832856a12.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 09:21:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750090884; x=1750695684;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hOzLGPoCr0MeSXGXJzKmOKNWDgmi51GcdPfztdwS3U8=;
 b=mq32dWiw/9NmNI5vuk/3EjX5/CbMwGxgGIRa9KPHjQ+ts5EV/R4v7Yp079E0yF5yAc
 uwqQBTKtNPfL8TjXkqTYxQAZXtOyjtvgDhgL/KEF1Q277+jZZqXCDzvfvtoBUzzf5d/A
 8v/4FYpcReNGcgSPmx1bX7Tceby40sIYzcuKj3nwaD+N4PrUURsnxdu/DdhJmzuyR4Yt
 kgjKrG6md3B384cioSTcNUPMYU4p1NCgCfZF187DNObfKCY+uC5dI9aymcPjYVfxQpc2
 EuZPtzzFl6yoBmjOzPHvGWtoZhe6L159Og3P+Gwox6DqN/R9RuFuEulsLaXiojS/mmxl
 UZ/A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUqgILOOTWGvPSkBLz2WXFPKHz9HlZ5bWSU11sK4dsIpXsOaRs1lk+0+V40iCmSSPdrdbL+2tKI9smpuant2fA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxJOMQQR8mVtR9b2MbvTvlptDK2uzHFGwunEm1DycytnPCYcuo5
 /GeCJi5CdTlbIDTFP42Csv3ealQAXmeZ0+74n8qGN781Zdn/ElhXRms=
X-Gm-Gg: ASbGncvYYaQ206QHC95B4HAfiWyGNCZOqldeFF3WaOCb1xQQWFJF//0FSSgSUZ2V69S
 p6fZm2uEQtw6c9ABtlr3A4I9fiNhW17kSfAnzlSuB8r7AalPu0wra8/9tOxR7d9palw3I2aeh9F
 XI+DrFq97IkRj31nxBGSbFBC70dZW0IkLulERGyQsfLdcfSHm9PSbRkg9KXGp4CHtE2QN1tBTjU
 ZGFz0kYZKFj83gNY1GDDDVIC39ZdALvG4p305vCvglB332fpZh0LVUMbaKhB0NEmcfhbdrHRdeh
 PzciubhtAIQHprwF8qlfyKcTnGqswodV057fhKEJ/zEdKeNRLFzLpCF+49BUyBhjQz4Cf8fhVRH
 +1Jiwa6iR3++iM6DABBJAcUA=
X-Google-Smtp-Source: AGHT+IGZvOQH3Qch7I0qSswC74QzMJM0k/uZMNM7l+NTLMMpD2tzor7yNnd4dIMkv3IMj/awGe4+rw==
X-Received: by 2002:a05:6a21:b8b:b0:1f3:33c2:29c5 with SMTP id
 adf61e73a8af0-21fbd559187mr15017168637.7.1750090883975; 
 Mon, 16 Jun 2025 09:21:23 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-74890084013sm7296033b3a.96.2025.06.16.09.21.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 09:21:23 -0700 (PDT)
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
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, tglx@linutronix.de,
 mingo@kernel.org, ruanjinjie@huawei.com, idosch@nvidia.com,
 razor@blackwall.org, petrm@nvidia.com, kuniyu@google.com, sdf@fomichev.me,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org, leon@kernel.org
Date: Mon, 16 Jun 2025 09:21:15 -0700
Message-ID: <20250616162117.287806-5-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616162117.287806-1-stfomichev@gmail.com>
References: <20250616162117.287806-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750090884; x=1750695684; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hOzLGPoCr0MeSXGXJzKmOKNWDgmi51GcdPfztdwS3U8=;
 b=PiHiYaD+HZ5VtffwtjRnl3cOyvyr03YtAEilej0RhC/5xaGccAHjlCJVMi5RzOObRC
 rV3+m4S7BkprhXaDROvZYYtFsxmvM6BaxXGQJceTZS6/cmBmvPxAyw8dpWoqI/9uRTz2
 Qe+cJ8XT+FlI524fq+pWqZbJOoRFBKlYQBkqVv5a4bYDhiGe5Km1zpyyaknfDeo3ShWb
 J9Q+Xh4DPL7VW+L2Qe+i5ITKD9WhFMvOkex1gLgbyhfRpRJ0pX+BqEOGxHSd4HMrnUvx
 NUJThCebcWaPueCCVc9oKkpZhSaoz4t0nDFQ8+GxTKoFc+cHYwrUcQQaiSd/M6gTO9aP
 K9ig==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=PiHiYaD+
Subject: [Intel-wired-lan] [PATCH net-next v5 4/6] net: remove redundant
 ASSERT_RTNL() in queue setup functions
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

The existing netdev_ops_assert_locked() already asserts that either
the RTNL lock or the per-device lock is held, making the explicit
ASSERT_RTNL() redundant.

Cc: Michael Chan <michael.chan@broadcom.com>
Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
---
 net/core/dev.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/core/dev.c b/net/core/dev.c
index 43f56b44f351..df1678b1fe24 100644
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

