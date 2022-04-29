Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5791E5149D5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Apr 2022 14:49:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F215340A88;
	Fri, 29 Apr 2022 12:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4qj0pviBT116; Fri, 29 Apr 2022 12:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA808408B2;
	Fri, 29 Apr 2022 12:49:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34B761BF588
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 12:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 20A5F41CAC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 12:49:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XuV7UuRQY4op for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Apr 2022 12:49:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69B3C41CAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 12:49:12 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id w4so10628949wrg.12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 05:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6gx1I2LEKWcJc0uFAMan792S2TeZ8Y9b5WwgAcqsFho=;
 b=eqsr3iRoOLraeHQfAN1F8lxbHhTSxdIjUQr8ExFzQAGCUmElefmB7guzyjC0kxl5je
 HT0OIrgMVP7TYB+jH1by1xcLHdxR/iPH0RxBMg5q8hDehljaEk52mNtAkz7VAAAfq6uQ
 U598+3czQfs9pI2uIeUeVm6xVsHA+ogUhmyhCFfyVDEr1zdRF7yHyA3ybZoPFqixxaT/
 X/6mA+22S80hqy84zvJQgTv/OkAWwpJyHz4aD/4jYED4VSKNHVEP2I/N4UZ4TPedAj0+
 bMQcG1Int7xYiYvMjssXccYPNgZwB9G02qDFer0iaKKzUSx93WZuxt9XIQVsQf2k38am
 8hHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6gx1I2LEKWcJc0uFAMan792S2TeZ8Y9b5WwgAcqsFho=;
 b=MHx05vQsJYq7dVyYcaWy/0KDGbiy1OhScawwAewRAfkavj+QCop8ymTNzWcGbpV2eO
 LC14Gi+tNxCLFzTaIKn4aiSYe+5lOtjhsI9KkgddchK5wc5MvzoLPBFjZIsRakq8FJHC
 tKclq3GeDkJGD2bfZJKvtPCjrZ3bTmzfpPGI2CD48+HAyKMQr6KTDNeKJ2zaa8w3Xbcy
 QdE0aWzJY7gR4PNvuewpexgbAvf/8znJCHBzyBxCRZ9DthSHM4Ow2XNRSWkuGsBWQriX
 3z1F1GfFl56GY+7SsfuSJB/dOXNfgX+f1c9mXcpnxcq+0BPN2XJcatrezRTxS2ey5C2d
 hq9g==
X-Gm-Message-State: AOAM530VazomyT62HIkEHpgHTRqpYVQZXJLYindYPjXEwmXd20OU5QQk
 po2XTqoIfqp4hf+kYvPcczA=
X-Google-Smtp-Source: ABdhPJxuNgz+00AZk2K+3MHKXW1rmmSUinMRc2h419aF6uzywdkwSk8Wwqe7afiMqRAzA0LmEjtA6A==
X-Received: by 2002:a5d:498d:0:b0:20a:dc6b:35c9 with SMTP id
 r13-20020a5d498d000000b0020adc6b35c9mr19910335wrq.176.1651236550512; 
 Fri, 29 Apr 2022 05:49:10 -0700 (PDT)
Received: from alaa-emad ([197.57.200.226]) by smtp.gmail.com with ESMTPSA id
 g18-20020a05600c4ed200b00393e810038esm2899835wmq.34.2022.04.29.05.49.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 05:49:10 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Fri, 29 Apr 2022 14:49:05 +0200
Message-Id: <cover.1651236081.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v5 0/2] propagate extack to
 vxlan_fdb_delete
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
Cc: eng.alaamohamedsoliman.am@gmail.com, shshaikh@marvell.com,
 jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com,
 alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, razor@blackwall.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, claudiu.manoil@nxp.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In order to propagate extack to vxlan_fdb_delete and vxlan_fdb_parse,
add extack to .ndo_fdb_del and edit all fdb del handelers.

Alaa Mohamed (2):
  rtnetlink: add extack support in fdb del handlers
  net: vxlan: Add extack support to vxlan_fdb_delete

 drivers/net/ethernet/intel/ice/ice_main.c     |  2 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  3 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  3 +-
 drivers/net/macvlan.c                         |  3 +-
 drivers/net/vxlan/vxlan_core.c                | 41 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  3 +-
 net/bridge/br_private.h                       |  3 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 43 insertions(+), 21 deletions(-)

-- 
2.36.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
