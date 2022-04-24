Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A06E550D197
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Apr 2022 14:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A52340A6A;
	Sun, 24 Apr 2022 12:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f6AuF2HhI_Yc; Sun, 24 Apr 2022 12:10:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B7B740918;
	Sun, 24 Apr 2022 12:10:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E7EEC1BF402
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:10:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D4E528196A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qwJoVQZ1Ohlm for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 12:10:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C8D9818D7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:10:02 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id d22so3392452wrc.13
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 05:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2JuRhXyb4Ip8swSB1obPedgsH1Io7sAcBXX0fUCg2UY=;
 b=jbX6/SXWTvvMbmrClbsX++gd1w+2OD/ikoRsd8tpj0m1wta4k5jOn0afedb92k1P2z
 +XQINnTMiG5QDJtcBkVePlDctVDMI27MIwacGSG55x9yPASrF13hi0M8Ja2lghZD/7WR
 aXO5aN1Gh/AUJTaW9VNqPFqczdDVzbeF0OA9JE5wqmxFMuDXeYDBVGjpfbtf1O14672Z
 k0J9PvfQNxqWYo8gRQJTFJr8FYgMYDVYXuhFOpuiATTnF+DkdwHMZJ1VGOAITW3S62Dn
 t5P7EgxV/cY6odv9qhQkvAoMe9QfLSeQSgAVGmprh1KoqLCMDIvg45x0UWdIfoYGDHwT
 lWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2JuRhXyb4Ip8swSB1obPedgsH1Io7sAcBXX0fUCg2UY=;
 b=guCOOvjJrRS/b90tj4cZE4ewX0Rr6cwOqFtD1oY3DoIdISkBOLoxJWbngY+ZeJBjfZ
 nRbX9DHoCV+ZUnA5AcObAz7YMWvHicPOUs12pa5fMYU5CxDGj5OFbobvx0JndCyH8jtt
 P/rzCz0fz3yNwG6FEYo6tVBiXz+xkkl7Y3IIxsZl3fecpYIKnOTRlgY/QTAE1FP++AzW
 Oc5GegjPL1O9kmfNlLzBigrNB7IptS729FcQeXaUFKXYID+2JydZtyGUAH1ShRzF/UOH
 nGQx4AgswY3QqwXVHOJ05R3fI8PiEIef6vsCXfD52pKt0aQSayIYP9NG+BAbZK3sqnDC
 Wc7g==
X-Gm-Message-State: AOAM5317zGCjBJNAVyb6RjCpbaeMq6UhFzg5LI1U8kfLwUe2jGGDoKmS
 BserEA4nS2TYndZImPs1FIE=
X-Google-Smtp-Source: ABdhPJw0KYa7fhoRDswIm3fxHdgxTAvbu2xgjiARxGl5eH6CMPiXt8aK1ddLkk2hzdMh9Cw0a6r7JQ==
X-Received: by 2002:a05:6000:100c:b0:20a:c68a:e9a with SMTP id
 a12-20020a056000100c00b0020ac68a0e9amr10622884wrx.314.1650802201258; 
 Sun, 24 Apr 2022 05:10:01 -0700 (PDT)
Received: from alaa-emad ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 a4-20020a056000188400b0020a9ec6e8e3sm7124788wri.55.2022.04.24.05.10.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Apr 2022 05:10:00 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Sun, 24 Apr 2022 14:09:43 +0200
Message-Id: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 0/2] propagate extack to
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

 drivers/net/ethernet/intel/ice/ice_main.c     |  4 +-
 drivers/net/ethernet/mscc/ocelot_net.c        |  4 +-
 .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |  2 +-
 drivers/net/macvlan.c                         |  2 +-
 drivers/net/vxlan/vxlan_core.c                | 38 +++++++++++++------
 include/linux/netdevice.h                     |  2 +-
 net/bridge/br_fdb.c                           |  2 +-
 net/bridge/br_private.h                       |  2 +-
 net/core/rtnetlink.c                          |  4 +-
 9 files changed, 37 insertions(+), 23 deletions(-)

-- 
2.36.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
