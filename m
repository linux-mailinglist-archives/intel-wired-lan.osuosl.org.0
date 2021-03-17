Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5840C33E2A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 01:30:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2607431E0;
	Wed, 17 Mar 2021 00:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gfAidOdRlj87; Wed, 17 Mar 2021 00:30:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4FF8431D8;
	Wed, 17 Mar 2021 00:30:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3368E1BF393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1FFAA60688
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9jNwcalZ8Wp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 00:30:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 580C5605E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:30:32 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id r14so230340qtt.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=JyD1AfSdasEn/u8wYDDHXH7XUQ3+kOL4jh+Dl7Iuniw=;
 b=TkbYPePWLa1bTatA0X95043R7hVQxtibwJhPXOIr00EXe42Mx+3/jm4PmyKLMM+dVO
 ZUVvIFWbtt/5NW8/bCioza2a6VLmxhKmw0k/gq1gnaymdwKwWB2h9ggMjc2B3eejiiAN
 0Adds1C2/kYrXkZ5FcEuk1SvjjLv5Kxck/4nMqI6pUo+uQZlfOJEh80ElA0tZ42HWsXe
 WfFbQ6B/t/bS1Yymc4BJ1mSioR+Gs9HgC8QMfetQltxk+tfeTKXD63RkpPdSaJFzH+mY
 CB4O8q1KDrIxyUJZ5bF3kM6mB5TiH7W5rO4x6hLEOQnuesmM1CPSdpiQb0z1VAXoXoK1
 0s7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=JyD1AfSdasEn/u8wYDDHXH7XUQ3+kOL4jh+Dl7Iuniw=;
 b=hc0Bmog23CYw1qy/pFIsmBdvpQ0dBH9DfIHt9tOtyGEU3vk2nhal35cxfTki2yLjL2
 6o+uaAZJFMNuimDYSIZPWQBU4SZXsEnJH0RlZ6bpOi8dIkB6fOCXlrW5ojM64Pmy9cS1
 AaSUAvzi/FogMOuo9my8g+iwH8BW0Kcvu4W5UJLR4Vk+tGT9pduBZIdrvHhs6ru3Fw5k
 DyEsruKD7EjWFg5mEM4GyXgv5Xhg2sahJr+B9IXu0jrlZ4b0Tfk1MVnbBL9Nxbu0f0Xy
 av6PmHrQZLEWx9ZFWoFqVtjpnqeY+maBvsl22gyJNegZXkxFS2QNJCQQyfGxswkthtC1
 5OfA==
X-Gm-Message-State: AOAM532Xr61xjmdv2xlZcWTN3Nd7bIgohINTv9EkeXLcf+GGyLWsAH4r
 oR/wlKXQXxz8ZSBxgDgfyZo=
X-Google-Smtp-Source: ABdhPJyNkGcofJay0CXpkXC49lI9UO4OfffPZNulfO4OmD7JkSt7lIcHeDBmta2GuORLdl9OlOpjTQ==
X-Received: by 2002:ac8:5212:: with SMTP id r18mr1453107qtn.290.1615941031027; 
 Tue, 16 Mar 2021 17:30:31 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id s133sm16590561qke.1.2021.03.16.17.30.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 17:30:30 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Tue, 16 Mar 2021 17:30:26 -0700
Message-ID: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 00/10] ethtool: Factor out
 common code related to writing ethtool strings
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, Kernel-team@fb.com, yisen.zhuang@huawei.com,
 gtzalik@amazon.com, simon.horman@netronome.com, haiyangz@microsoft.com,
 drivers@pensando.io, salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com,
 rmody@marvell.com, netdev@vger.kernel.org, netanel@amazon.com,
 saeedb@amazon.com, snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch set is meant to be a cleanup and refactoring of common code bits
from several drivers. Specificlly a number of drivers engage in a pattern
where they will use some variant on an sprintf or memcpy to write a string
into the ethtool string array and then they will increment their pointer by
ETH_GSTRING_LEN.

Instead of having each driver implement this independently I am refactoring
the code so that we have one central function, ethtool_sprintf that does
all this and takes a double pointer to access the data, a formatted string
to print, and the variable arguments that are associated with the string.

Changes from v1:
Fixed usage of char ** vs  unsigned char ** in hisilicon drivers

Changes from RFC:
Renamed ethtool_gsprintf to ethtool_sprintf
Fixed reverse xmas tree issue in patch 2

---

Alexander Duyck (10):
      ethtool: Add common function for filling out strings
      intel: Update drivers to use ethtool_sprintf
      nfp: Replace nfp_pr_et with ethtool_sprintf
      hisilicon: Update drivers to use ethtool_sprintf
      ena: Update driver to use ethtool_sprintf
      netvsc: Update driver to use ethtool_sprintf
      virtio_net: Update driver to use ethtool_sprintf
      vmxnet3: Update driver to use ethtool_sprintf
      bna: Update driver to use ethtool_sprintf
      ionic: Update driver to use ethtool_sprintf


 drivers/net/ethernet/amazon/ena/ena_ethtool.c |  25 +-
 .../net/ethernet/brocade/bna/bnad_ethtool.c   | 266 +++++++-----------
 .../ethernet/hisilicon/hns/hns_dsaf_gmac.c    |   9 +-
 .../net/ethernet/hisilicon/hns/hns_dsaf_ppe.c |  41 +--
 .../net/ethernet/hisilicon/hns/hns_dsaf_rcb.c |  91 +++---
 .../ethernet/hisilicon/hns/hns_dsaf_xgmac.c   |   8 +-
 .../net/ethernet/hisilicon/hns/hns_ethtool.c  | 103 +++----
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  16 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  55 ++--
 drivers/net/ethernet/intel/igb/igb_ethtool.c  |  40 +--
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  40 +--
 drivers/net/ethernet/netronome/nfp/abm/main.c |   4 +-
 .../ethernet/netronome/nfp/nfp_net_ethtool.c  |  79 +++---
 drivers/net/ethernet/netronome/nfp/nfp_port.h |   2 -
 .../net/ethernet/pensando/ionic/ionic_stats.c | 145 ++++------
 drivers/net/hyperv/netvsc_drv.c               |  33 +--
 drivers/net/virtio_net.c                      |  18 +-
 drivers/net/vmxnet3/vmxnet3_ethtool.c         |  53 ++--
 18 files changed, 389 insertions(+), 639 deletions(-)

--

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
