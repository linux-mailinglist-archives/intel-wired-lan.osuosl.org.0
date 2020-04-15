Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B471AA9B9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2020 16:19:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8039D8734E;
	Wed, 15 Apr 2020 14:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Bz941V0M5ME; Wed, 15 Apr 2020 14:19:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C746587263;
	Wed, 15 Apr 2020 14:19:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C560F1BF372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2020 14:19:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BA5022013C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2020 14:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BnxHdF-B61Jy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2020 14:19:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by silver.osuosl.org (Postfix) with ESMTPS id BB9102010E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2020 14:19:20 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.72,387,1580770800"; d="scan'208";a="345994838"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 16:18:57 +0200
Date: Wed, 15 Apr 2020 16:18:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Shiraz Saleem <shiraz.saleem@intel.com>, 
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 kbuild-all@lists.01.org
Message-ID: <alpine.DEB.2.21.2004151617570.2381@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:rdma 24/25]
 drivers/infiniband/hw/irdma/irdma_if.c:138:56-61: WARNING: conversion to
 bool not needed here (fwd)
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

Hello,

I have forwarded patches about the first and third issues below, but there
is another issue about a duplicated argument to & or | that could be
looked into.

julia

---------- Forwarded message ----------
Date: Wed, 15 Apr 2020 22:04:23 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: lkp@intel.com, Julia Lawall <julia.lawall@lip6.fr>
Subject: [jkirsher-next-queue:rdma 24/25]
    drivers/infiniband/hw/irdma/irdma_if.c:138:56-61: WARNING: conversion to
    bool not needed here

CC: kbuild-all@lists.01.org
CC: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
TO: Shiraz Saleem <shiraz.saleem@intel.com>
CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git rdma
head:   4d75d9adac8df983bc733b92711683a7cd7ddd40
commit: f473122f41f69394e29a834fbfcd569dcdd1d879 [24/25] RDMA/irdma: Add irdma Kconfig/Makefile and remove i40iw
:::::: branch date: 2 days ago
:::::: commit date: 2 days ago

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>


coccinelle warnings: (new ones prefixed by >>)

>> drivers/infiniband/hw/irdma/irdma_if.c:138:56-61: WARNING: conversion to bool not needed here
--
>> drivers/infiniband/hw/irdma/ctrl.c:581:7-59: duplicated argument to & or |
--
>> drivers/infiniband/hw/irdma/verbs.c:2387:2-3: Unneeded semicolon

Please review and possibly fold the followup patch.

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
