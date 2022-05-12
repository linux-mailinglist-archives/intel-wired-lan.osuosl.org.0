Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E2B524992
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 11:56:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C375183EEE;
	Thu, 12 May 2022 09:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZUKFMaEXAMYY; Thu, 12 May 2022 09:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEB7883ED9;
	Thu, 12 May 2022 09:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B8DC1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 09:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1773E83EDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 09:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PNrf2RrNNAlV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 09:56:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5AA7283E6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 09:56:15 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 bd25-20020a05600c1f1900b0039485220e16so3914439wmb.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 02:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vI+rvT4jTUHk9Zem0CL850oZR0u8HlCjb7Iy9meG1aA=;
 b=lpSgAFrVHDgV+Ou+xzBr6yczkXty0cfBXPNVhifBOx1K1XlM2aoHmrC6HkVUDLQ5ZI
 LOsK5ttHwnnfAVf2UbNhSKRDGx0pgAGhRAulH3RIF4IXyXoRrRUkkj0KuLaFhx3Z0uyO
 eM4g7zPUeD33kOSGvfCxdRRRowYbAqNdlNJkSvjw/Iv0+p0O4sYlUOHQ6A/JBMsPNvPz
 cdYyfzqRam7EHGtogYWasfcT52OZ/Aby5niqbNVNjiRyvHIAMnUv53M4bIoB/oLqxeht
 3HEk9TePNnhNLd4eksRgG/sJOnb0kXALligFZZ51HpBr7q1/hLac3RJTcFgm2yz4lyIt
 AjKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vI+rvT4jTUHk9Zem0CL850oZR0u8HlCjb7Iy9meG1aA=;
 b=Lu2IeQ2VUyzNGjqiey9o7qcwbYiHnCwCvILbjPob9B35YHv8P8EBdEoVl5A4bhJgmd
 7s6MOWHWixIlQnnx1ccGalRXhU14tE3k0Mj40kuzr95DObkap9I5k57y2bSc1uR6XZg8
 Uh35VNKcsFgPjTrylN98qozSiof4epDQlaU7epXfi29O9A0B4QrnwDpMV6sYuK4zg78N
 Fup5HfxXleZod4urwfQKhmroblkM6YUcHVZYA1+/8ddc+Ne7btKqx4pK84UNgWpuPlRp
 263+Kai+Xf0OlgZJ6F5p8raFVCr6xKImfto95zF8twqRMuGY236ZVsjsIyBqZz2bhI/9
 KJiw==
X-Gm-Message-State: AOAM53348vMRwCnzL9+OhjB0Jqxh78x02jfkR7Y2fBDPR9BAZGDD0X41
 N4StbjHhS7/WZEsslu08aeU=
X-Google-Smtp-Source: ABdhPJzeOkR8gXtslb2c3OAosJp6H5XjNvatCGsuZGEiFUK0wnEiEhEtz1Qdscrp0cS4adhAzk+RXw==
X-Received: by 2002:a05:600c:1547:b0:394:882a:3b5 with SMTP id
 f7-20020a05600c154700b00394882a03b5mr9296978wmg.97.1652349373138; 
 Thu, 12 May 2022 02:56:13 -0700 (PDT)
Received: from alaa-emad ([197.57.250.210]) by smtp.gmail.com with ESMTPSA id
 z15-20020a05600c0a0f00b0039457b94069sm2306913wmp.42.2022.05.12.02.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 May 2022 02:56:12 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 12 May 2022 11:55:52 +0200
Message-Id: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v7 0/2] propagate extack to
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
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
