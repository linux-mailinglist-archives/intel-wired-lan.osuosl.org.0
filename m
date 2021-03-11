Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D3B3369AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 02:35:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A796842FFF;
	Thu, 11 Mar 2021 01:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cPdUtrXOvLzp; Thu, 11 Mar 2021 01:35:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C686400C3;
	Thu, 11 Mar 2021 01:35:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7A3E1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4E88400C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ZZ3CKigqtaU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 01:35:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 961F242FFF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:13 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id n26so148045qtv.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 17:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=cGFy0Tnvylt4LZdGihf8eHHsCvptUxZPZzwu3GGPgnQ=;
 b=mGmRrUw2IaEEqVO0FC7rdPuj1wxJrp5r5d1wVyadLhtu1TNW3//dXut+CBeA3M2lRI
 qg4LMmKnaZFwn7liKCxoorpgB8PJFOJWh41towIyoYuLp/HGjz2S2u5ThEodBqhSShcw
 2AN/AdJfATSUm6NI/gIjpHn5A4vRt1TZV8DUpH+Zm5k6I7ztLxjxKNehUVahns6jcFb0
 gEug4XkugUXTnTx973Zcv4OiGwi1WZM73a6G5hmi7WCEwlsWpp8FRzwzh6WBErdyNbEi
 5nbQGdapY7uFIWTCR8JVYtL4ybqB3XJiuGssHqOyEd+xgfPA94ddEmlNfNiffc4LKZPY
 5/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=cGFy0Tnvylt4LZdGihf8eHHsCvptUxZPZzwu3GGPgnQ=;
 b=AkiXCwvnIqLSZr8xiAU+qjdpK1BhrC6XJOHNq85SptBJUGFoL1BU/8jR1pyyxBIgzD
 wxBEezagc+sHOLUroxhYba3iU6rGBYW8Lh/VoRv+/YuuctvLGvYBWm80U5SrlGgMTKd8
 vQWT+s5oq9QO9/li96qywsYcgneXXAOMWDL/go5RWibHTGfcbHCYPjMDl3XiE5H/P/GF
 Ar33gXU7hY1LqSpQ06yVXr0JHQsVdznUi3VvnRs5bYps1W3q5aXo+UQ+0B7tBDUwEASc
 id5cTW6+spANzGroUoZj1kVI6aQ/6Ej6M4dMtl7C0a+GUa4yyzqurlpzG5TtBwdBgj5o
 +JZA==
X-Gm-Message-State: AOAM531swFtc3n7r+Z+6QKXkYSy+2OAfmKM3MPhVqVfs9nw/cdWOXdoW
 qQVI6Ae45hZpzwZIsboUd98=
X-Google-Smtp-Source: ABdhPJzat83bmnIvYnVpwumkmXGe6REerEJy5SkcUb2EUReo2szHOIV5BQmiM7sJHene+dBNgnNS1Q==
X-Received: by 2002:ac8:1117:: with SMTP id c23mr5417652qtj.297.1615426512243; 
 Wed, 10 Mar 2021 17:35:12 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id n140sm830580qka.124.2021.03.10.17.35.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 17:35:11 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: kuba@kernel.org
Date: Wed, 10 Mar 2021 17:35:08 -0800
Message-ID: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 00/10] ethtool: Factor out common code
 related to writing ethtool strings
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
 intel-wired-lan@lists.osuosl.org, yisen.zhuang@huawei.com, gtzalik@amazon.com,
 simon.horman@netronome.com, haiyangz@microsoft.com, drivers@pensando.io,
 salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com,
 netdev@vger.kernel.org, netanel@amazon.com, saeedb@amazon.com,
 snelson@pensando.io, skalluru@marvell.com
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
the code so that we have one central function, ethtool_gsprintf that does
all this whch takes a double pointer to access the data, a formatted string
to print, and the variable arguments that are associated with the string.


---

Alexander Duyck (10):
      ethtool: Add common function for filling out strings
      intel: Update drivers to use ethtool_gsprintf
      nfp: Replace nfp_pr_et with ethtool_gsprintf
      hisilicon: Update drivers to use ethtool_gsprintf
      ena: Update driver to use ethtool_gsprintf
      netvsc: Update driver to use ethtool_gsprintf
      virtio_net: Update driver to use ethtool_gsprintf
      vmxnet3: Update driver to use ethtool_gsprintf
      bna: Update driver to use ethtool_gsprintf
      ionic: Update driver to use ethtool_gsprintf


 drivers/net/ethernet/amazon/ena/ena_ethtool.c |  25 +-
 .../net/ethernet/brocade/bna/bnad_ethtool.c   | 266 +++++++-----------
 .../ethernet/hisilicon/hns/hns_dsaf_gmac.c    |   7 +-
 .../net/ethernet/hisilicon/hns/hns_dsaf_ppe.c |  37 +--
 .../net/ethernet/hisilicon/hns/hns_dsaf_rcb.c |  89 ++----
 .../ethernet/hisilicon/hns/hns_dsaf_xgmac.c   |   6 +-
 .../net/ethernet/hisilicon/hns/hns_ethtool.c  |  97 +++----
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
 18 files changed, 381 insertions(+), 631 deletions(-)

--

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
