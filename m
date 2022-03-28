Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F804E9A45
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Mar 2022 16:59:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64C7E819D6;
	Mon, 28 Mar 2022 14:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3BYglkQYuytW; Mon, 28 Mar 2022 14:59:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AB6B8190B;
	Mon, 28 Mar 2022 14:59:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5407D1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 14:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3D37240A6F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 14:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wUSVWHz1LSsV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Mar 2022 14:59:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D97FB4042B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 14:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648479551; x=1680015551;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NF/eXnSicGKb23QH01tJ7v6/sGXk4gClfdhRtgNvZw0=;
 b=W9ISVqA2+psCbSwWe2v8GyjOptIhRT22tuYVASk9yrZDCoKIpBf698m1
 XGH/MDzGspIty0cNNjWPTKrggaRypkICNyQ+A7bBkz5uk4jv9NDbMiwN8
 oOGR9ytcEwninYVUaekoR+sl3utkfEysVfu/ZiYm8t//kZyFnCHkTbhZo
 wjBe2oeM0QF5B/93SU5P0G6Clr5UZ7+huxLEueXQoiO+StZFgxmcP6Mmr
 nepjeG6hvOAqoMDPkANzxNART29WA9Zj8FWM9ZpUNk1xApQPF4GUG3+HT
 RZYzkmw3ksiyBUQCMbIxJNhJs5o1eJ61L+XEYAAkAjDWHHsqyzo/0kKWH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="283906556"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="283906556"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 07:58:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="652086211"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 28 Mar 2022 07:58:50 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22SEwnLG015696; Mon, 28 Mar 2022 15:58:49 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Mar 2022 16:58:26 +0200
Message-Id: <20220328145828.10097-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/2] ice: improve port
 representor naming scheme
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset adds support for systemd defined naming scheme for port
representors, as well as re-enables displaying PCI bus-info in ethtool.

bus-info information has previously been removed from ethtool for port
representors, as a workaround for a bug in lshw tool, where the tool would
sometimes display wrong descriptions for port representors/PF. Now the bug
has been fixed in lshw tool [1].

Removing the workaround can be considered a regression (user might be
running an older, unpatched version of lshw) (see [2] for discussion).
However, calling SET_NETDEV_DEV also produces the same effect as removing
the workaround, i.e. lshw is able to access PCI bus-info (this time not
via ethtool, but in some other way) and the bug can occur.

Adding SET_NETDEV_DEV is important, as it greatly improves netdev naming -
- port representors are named based on PF name. Currently port representors
are named "ethX", which might be confusing, especially when spawning VFs on
multiple PFs. Furthermore, it's currently harder to determine to which PF
does a particular port representor belong, as bus-info is not shown in
ethtool.

Consider the following three cases:


Case 1: current code - driver workaround in place, no SET_NETDEV_DEV,
lshw with or without fix. Port representors are not displayed because they
don't have bus-info (the workaround), PFs are labelled correctly:

$ sudo ./lshw -c net -businfo
Bus info          Device      Class          Description
========================================================
pci@0000:02:00.0  ens6f0      network        Ethernet Controller E810-XXV for SFP <-- PF
pci@0000:02:00.1  ens6f1      network        Ethernet Controller E810-XXV for SFP
pci@0000:02:01.0  ens6f0v0    network        Ethernet Adaptive Virtual Function <-- VF
pci@0000:02:01.1  ens6f0v1    network        Ethernet Adaptive Virtual Function
...


Case 2: driver workaround in place, SET_NETDEV_DEV, no lshw fix. Port
representors have predictable names. lshw is able to get bus-info because
of SET_NETDEV_DEV and netdevs CAN be mislabelled:

$ sudo ./lshw -c net -businfo
Bus info          Device           Class          Description
=============================================================
pci@0000:02:00.0  ens6f0npf0vf60   network        Ethernet Controller E810-XXV for SFP <-- mislabelled port representor
pci@0000:02:00.1  ens6f1           network        Ethernet Controller E810-XXV for SFP
pci@0000:02:01.0  ens6f0v0         network        Ethernet Adaptive Virtual Function
pci@0000:02:01.1  ens6f0v1         network        Ethernet Adaptive Virtual Function
...
pci@0000:02:00.0  ens6f0npf0vf26   network        Ethernet interface
pci@0000:02:00.0  ens6f0           network        Ethernet interface <-- mislabelled PF
pci@0000:02:00.0  ens6f0npf0vf81   network        Ethernet interface
...
$ sudo ethtool -i ens6f0npf0vf60
driver: ice
...
bus-info:
...

Output of lshw would be the same with workaround removed; it does not
change the fact that lshw labels netdevs incorrectly, while at the same
time it prevents ethtool from displaying potentially useful data
(bus-info).


Case 3: workaround removed, SET_NETDEV_DEV, lshw fix:

$ sudo ./lshw -c net -businfo
Bus info          Device           Class          Description
=============================================================
pci@0000:02:00.0  ens6f0npf0vf73   network        Ethernet Controller E810-XXV for SFP
pci@0000:02:00.1  ens6f1           network        Ethernet Controller E810-XXV for SFP
pci@0000:02:01.0  ens6f0v0         network        Ethernet Adaptive Virtual Function
pci@0000:02:01.1  ens6f0v1         network        Ethernet Adaptive Virtual Function
...
pci@0000:02:00.0  ens6f0npf0vf5    network        Ethernet Controller E810-XXV for SFP
pci@0000:02:00.0  ens6f0           network        Ethernet Controller E810-XXV for SFP
pci@0000:02:00.0  ens6f0npf0vf60   network        Ethernet Controller E810-XXV for SFP
...
$ sudo ethtool -i ens6f0npf0vf73
driver: ice
...
bus-info: 0000:02:00.0
...

In this case poort representors have predictable names, netdevs are not
mislabelled in lshw, and bus-info is shown in ethtool.

[1] https://ezix.org/src/pkg/lshw/commit/9bf4e4c9c1
[2] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220321144731.3935-1-marcin.szycik@linux.intel.com

Marcin Szycik (1):
  Revert "ice: Hide bus-info in ethtool for PRs in switchdev mode"

Michal Swiatkowski (1):
  ice: link representors to PCI device

 drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 +++-----
 drivers/net/ethernet/intel/ice/ice_repr.c    | 1 +
 2 files changed, 4 insertions(+), 5 deletions(-)

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
