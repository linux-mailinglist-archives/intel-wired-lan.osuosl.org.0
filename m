Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BB1339563
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Mar 2021 18:48:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E2E26FAF6;
	Fri, 12 Mar 2021 17:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UwkvW5SqfsYA; Fri, 12 Mar 2021 17:48:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D0B86FA35;
	Fri, 12 Mar 2021 17:48:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BCA341BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A514E6FA35
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 08K91Q-IPxQE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Mar 2021 17:48:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3222E605DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 17:48:03 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id o10so16348896pgg.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Mar 2021 09:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=JujqZ6a4DmxzimQ0g7KvclcEk5s4VwtmJHbcoMqSQjc=;
 b=rcxMYdpEO6lHAHPh4RETobEtXCQrqgLx3Rb0IfqN5vgUEEsWzH8qrSCptI0QhoZrnS
 +INuncQS3/J7CWxHGN+7ln5hdUcL0m7ew3JrvUXcNLoKu/q/UzEuyq5Gmp0u83Igy9eD
 HCruWTBcSG4vl0Ex8UOWxX+JeW1atjEXj3tN73nYFmSYjWx2QiTjeUoQEsi1pQMR5T9e
 C3Ov/dk9ZT4F1x6AmaSkrd/x1qv8xPL3f0DlT3PQxgdIpIw/mm1uNaR8zUNda1+2gqzA
 TZJhijEpykqn3J4V6g4s+avtx4RcveFwGqRS+WxZMEO4+bZq0Vd8vHwRazauuA9CPZUB
 nWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=JujqZ6a4DmxzimQ0g7KvclcEk5s4VwtmJHbcoMqSQjc=;
 b=L+ZQ+ojjaV2ghNGYC0azd1+D70PvuWti8JDaFNVBmI6eKjb/OvY2yvmMkGyjxtqxSr
 zJYW1/xD9dA+D0fTXaM2hPEw1O+M8fRxbjUO1EskrlFFp6swPYFgWxtFEU187LK7PGMu
 XXtZYcMdkvrWy/xK3KZXZddnJNsW844bI6fWvHAkaikA7cCBXgVYVks7NW5jSuqRtE4l
 jfDk8snS8J6Vub0VrboOvWeMZStRb2TJ1nIHbJOywXHcXIPmy0n6l/JS9v2XkM1ONQ4I
 9fcpc78rkmg0nCVmZlGBMbiLuPezuba4D3YKhUSNPyDkfL4Q02Eix8cdMJckyU1pbJjO
 Fo5Q==
X-Gm-Message-State: AOAM530fYkNuggs7b9WXD7njaXQmK4+q0PkB5llxYXqRd1qeg+lfl6fl
 F6p9SzWkkPeDJott5jLbsaM=
X-Google-Smtp-Source: ABdhPJxIxzPr/Sn3NRSXifls8FfVyr98rA8KnH45DnR3NedshdnHABjldzx3v6Va9KmFVinuZA9pMA==
X-Received: by 2002:a62:bd05:0:b029:1ab:6d2:5edf with SMTP id
 a5-20020a62bd050000b02901ab06d25edfmr13189721pff.32.1615571282442; 
 Fri, 12 Mar 2021 09:48:02 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id e190sm6273082pfe.3.2021.03.12.09.48.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 09:48:02 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Fri, 12 Mar 2021 09:48:00 -0800
Message-ID: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 00/10] ethtool: Factor out common
 code related to writing ethtool strings
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
from several drivers. Specifically a number of drivers engage in a pattern
where they will use some variant on an sprintf or memcpy to write a string
into the ethtool string array and then they will increment their pointer by
ETH_GSTRING_LEN.

Instead of having each driver implement this independently I am refactoring
the code so that we have one central function, ethtool_sprintf that does
all this and takes a double pointer to access the data, a formatted string
to print, and the variable arguments that are associated with the string.

Changes from RFC:
Renamed ethtool_gsprintf to ethtool_sprintf
Fixed reverse xmas tree issue in patch 2
Added Acked-by/Reviewed-by tags from RFC review

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
