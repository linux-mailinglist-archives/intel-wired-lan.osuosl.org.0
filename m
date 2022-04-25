Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5944150E2FF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 16:25:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A801760E22;
	Mon, 25 Apr 2022 14:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7HKcHZxoC4Yc; Mon, 25 Apr 2022 14:25:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 825E560E0B;
	Mon, 25 Apr 2022 14:25:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1CA721BF398
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 14:25:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 09187814B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 14:25:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w6hfnLt3yf5I for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Apr 2022 14:25:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F32C8143D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 14:25:22 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id k2so679256wrd.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 07:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OhzJ18rUdY++br4oj9YWYkBT8GEB1PEcZ+V/iXVMZrg=;
 b=Yp2ksl18LS/4Zs/ovpsVTlQwPq8RKkSp5QpY5tBP2+j05ULF7qPRftNv6iD6RV/IlN
 wBgjKe+jfS8pkoAlzDTWhfuCNXo8tuvgYq8GdjluJNdsL0Egy2XuECnoZ1b2EPAjXUe+
 jMVbqPb4/rU9tF+FQiWisfBHk5ZPwSSW1FGaE1as3zRZF/Bl8U0iJvqlG30E5ae4IJ3/
 fULg5bRvkciOv3RjeFApqNa7WkOnypR+SOycWijAO17Hx98IiaXeUtULZ3nSGJ+2vbiX
 wDgY8NgfbOWevz+rMK4KPWxSboDV2TSMJmbRhXZAbyf/q0RpPAAY7AoTalW7Zk59XBqQ
 a2EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OhzJ18rUdY++br4oj9YWYkBT8GEB1PEcZ+V/iXVMZrg=;
 b=c3ZixdwZOajArjYOxOF6ylpDdjzAqI+pwznDdUEXYarHBigilTnV3HEFgfJkZSKtnw
 RoquiIGMBBcK4ej9VIc9OXYPlpgE8ofFYj58B25tzE1tw9T82OcjsIlkPNglM44X1eqm
 Ycc5ih6stktUkTr4qIz4sxzSuFxo5t0QdWNi4gPqj8Ms6zU0+eL/tm2uOm3mtAvqFbMD
 qdbxTA2bhzPIkUGRca91HBQuIeNqYzrTZ32uFZBvF2SfvneEFu7skxxmlZ/VNWXNQe+u
 TZwXSk4L56Utcwq8h9w6axqERDVXN8S3k7kl+gyjVGFlzc6dlU1ef8E6yUN4X2F1MVrM
 5MyQ==
X-Gm-Message-State: AOAM533aIOHt+PowAMbYPv0mDEaqpKxFAQjeywiLR5/DtWJoo/9PMTBS
 dcYVdxxKuAhyUBPXfyNwBhE=
X-Google-Smtp-Source: ABdhPJzUAnIDjq4TtxReYzY4dzLCr4HXcpG6aANRg5FZdis9Nq2Rs17U9H23mO/9FxTROOaYVJ/RSA==
X-Received: by 2002:a05:6000:1f09:b0:20a:c427:c7c with SMTP id
 bv9-20020a0560001f0900b0020ac4270c7cmr14209914wrb.337.1650896720308; 
 Mon, 25 Apr 2022 07:25:20 -0700 (PDT)
Received: from alaa-emad ([197.57.226.213]) by smtp.gmail.com with ESMTPSA id
 d4-20020a05600c3ac400b0039082eeff53sm8615670wms.22.2022.04.25.07.25.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 07:25:19 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Mon, 25 Apr 2022 16:25:05 +0200
Message-Id: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 0/2] propagate extack to
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
add extack to .ndo_fdb_del and edit all fdb del handelers

Alaa Mohamed (2):
  rtnetlink: add extack support in fdb del handlers
  net: vxlan: vxlan_core.c: Add extack support to vxlan_fdb_delete

 drivers/net/ethernet/intel/ice/ice_main.c     |  2 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  4 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  2 +-
 drivers/net/macvlan.c                         |  2 +-
 drivers/net/vxlan/vxlan_core.c                | 39 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  2 +-
 net/bridge/br_private.h                       |  3 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 38 insertions(+), 22 deletions(-)

-- 
2.36.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
