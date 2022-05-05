Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD7551C37B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 17:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F52A40C32;
	Thu,  5 May 2022 15:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NO5NRfPgsyTz; Thu,  5 May 2022 15:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10BC34047C;
	Thu,  5 May 2022 15:10:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D8751BF391
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 15:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5521960B10
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 15:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4KquNRGvati5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 15:10:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A128360AC0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 15:10:10 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id v12so6501949wrv.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 May 2022 08:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+/sF+rK/sk8Mcq8ZDKrTQ+5QhRG26LQDZuCE59tq5gg=;
 b=WyanZJ4pfugP4UBrAHAI3jE+0AMPPz0h7gFUM9vNG+p5YrdeWWhgzma2gPVbbEw7nQ
 zqyXYKcg6ZlClU+WsCyXFa9pOTdvmphmLTQBVM970g+nAyt6eS078/B7r+Yd2D4Muq6n
 tAQ/j/L/oDKTLJ2BpBFlbUakTEiPv6kzIRg2ny56L8R9Zq1zQM0TXBtzngd0ygArbjI2
 hkOt6i+dsXb84AMFlA6JORanoOhW8jKTQJmasSfefZ/stu/MnlyiD+jTUcuWdV+cgtuH
 DUyIzIrpkgZJdZNH7TxCKR41L621Fs4c3vS28PpKOYcmjt5RTsDegQQyR3I10AjN2LwM
 20oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+/sF+rK/sk8Mcq8ZDKrTQ+5QhRG26LQDZuCE59tq5gg=;
 b=YAzSnxo3EXbpNr0yMY4qVVYrNlxfrLy6cNdxBWLYfFV+osHgs64I9lib7NbhWnn3U8
 GenmqC2T/L7VtuYamq+3xqHoNowiEzd7PH2KNqKm55I2jLEuL7sJxVONJJAicFWC7o8W
 Oj8hZ8KeqJu6Rd2vtluuNlXZuogkKKalG6Gae1VK1KR5hHD+efktvMpqbaC3fyqu/nAl
 OIv5gMB3C1bJCoUcrHrDQF6yRE+8Z0QngY1uv+KAfgXwUGhDQkVCIliV47HptP1gDqNC
 b56beBEpsReCYX8HlRu+980SFA34fyvxayBy30YzlvmJdxxZ0zldaAObAxbUOgVhqftq
 +2Vg==
X-Gm-Message-State: AOAM5316W0WU8ZWKrJeOTV9ZGTwGT0K2zrrW9bHveLn6OVhPFVl51bgW
 kYhFvjFMATkJnSQNcmamAN4=
X-Google-Smtp-Source: ABdhPJyH3FeC0GOlGDlLA3jmninPUid5beNQGRlfuR6gYFWw5/iHWVU9gj8FHEZ8LDE1fOqtvSu2cQ==
X-Received: by 2002:adf:e491:0:b0:20a:cf97:58df with SMTP id
 i17-20020adfe491000000b0020acf9758dfmr21162391wrm.213.1651763408733; 
 Thu, 05 May 2022 08:10:08 -0700 (PDT)
Received: from alaa-emad ([197.57.200.226]) by smtp.gmail.com with ESMTPSA id
 s6-20020adfea86000000b0020c5253d907sm1419204wrm.83.2022.05.05.08.10.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 08:10:08 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Thu,  5 May 2022 17:09:56 +0200
Message-Id: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v6 0/2] propagate extack to
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

 drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  3 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  3 +-
 drivers/net/macvlan.c                         |  3 +-
 drivers/net/vxlan/vxlan_core.c                | 41 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  3 +-
 net/bridge/br_private.h                       |  3 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 44 insertions(+), 21 deletions(-)

-- 
2.36.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
