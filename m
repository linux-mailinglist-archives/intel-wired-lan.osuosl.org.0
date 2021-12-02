Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A7B4662B9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 12:49:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55BB141D65;
	Thu,  2 Dec 2021 11:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oauVGp2Y8S-H; Thu,  2 Dec 2021 11:49:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 524C6402D2;
	Thu,  2 Dec 2021 11:49:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2028D1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A963403BA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HFBeqqJlOAQi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 11:49:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F083C400F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:49:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="297489763"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="297489763"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 03:49:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="459630558"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 02 Dec 2021 03:49:30 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mskaf-000GGw-K4; Thu, 02 Dec 2021 11:49:29 +0000
Date: Thu, 2 Dec 2021 19:48:55 +0800
From: kernel test robot <lkp@intel.com>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 arkadiusz.kubalewski@intel.com
Message-ID: <202112021948.p1Sqfiw5-lkp@intel.com>
References: <20211201180208.640179-3-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211201180208.640179-3-maciej.machnikowski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 2/4] ethtool: Add ability
 to configure recovered clock for SyncE feature
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
Cc: kbuild-all@lists.01.org, abyagowi@fb.com, richardcochran@gmail.com,
 linux-kselftest@vger.kernel.org, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Maciej,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]

url:    https://github.com/0day-ci/linux/commits/Maciej-Machnikowski/Add-ethtool-interface-for-SyncE/20211202-021915
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 23ea630f86c70cbe6691f9f839e7b6742f0e9ad3
reproduce: make htmldocs

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

include/uapi/linux/ethtool.h:1: warning: 'ethtool_rclk_pin_state' not found

vim +/ethtool_rclk_pin_state +1 include/uapi/linux/ethtool.h

6f52b16c5b29b8 Greg Kroah-Hartman 2017-11-01  @1  /* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
607ca46e97a1b6 David Howells      2012-10-13   2  /*
607ca46e97a1b6 David Howells      2012-10-13   3   * ethtool.h: Defines for Linux ethtool.
607ca46e97a1b6 David Howells      2012-10-13   4   *
607ca46e97a1b6 David Howells      2012-10-13   5   * Copyright (C) 1998 David S. Miller (davem@redhat.com)
607ca46e97a1b6 David Howells      2012-10-13   6   * Copyright 2001 Jeff Garzik <jgarzik@pobox.com>
607ca46e97a1b6 David Howells      2012-10-13   7   * Portions Copyright 2001 Sun Microsystems (thockin@sun.com)
607ca46e97a1b6 David Howells      2012-10-13   8   * Portions Copyright 2002 Intel (eli.kupermann@intel.com,
607ca46e97a1b6 David Howells      2012-10-13   9   *                                christopher.leech@intel.com,
607ca46e97a1b6 David Howells      2012-10-13  10   *                                scott.feldman@intel.com)
607ca46e97a1b6 David Howells      2012-10-13  11   * Portions Copyright (C) Sun Microsystems 2008
607ca46e97a1b6 David Howells      2012-10-13  12   */
607ca46e97a1b6 David Howells      2012-10-13  13  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
