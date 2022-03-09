Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6EC4D3531
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Mar 2022 18:22:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE0B4409FF;
	Wed,  9 Mar 2022 17:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2VMOAETM7fVC; Wed,  9 Mar 2022 17:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 712C440232;
	Wed,  9 Mar 2022 17:22:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C60AC1BF25B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 17:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B4047416C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 17:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zijffVVQSTS2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Mar 2022 17:22:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E18AF4168C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 17:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646846543; x=1678382543;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=7f4iZMrBn6wHaM9lEp6l01evKdwSBfvVFOQjl7wiQVI=;
 b=bzrud8S4jfQnwnC1N+ocLcl73S6X1NW1SlFge9j1eClWE3+vEJCSgX2x
 BtYhUMPLNLw/eO9K6+5evJ27JyeLB/YPsxpYk+8p4tgXtxaAbFNb6vmFO
 oQmTTBsfzcL1xoIewrj3IJf1YNpIUtazBQSwie7XhRl0e3yozWzAtqwGT
 5lVUwD9ZZ90bUNWbbgjLv31lkYDFCWsJoa60R6oDyiMCokis4m4XHbOai
 +jXRrsQZoXLwxLySw+4V8VzC21mg09NRIudOOOpvLJpC9c+j0YDEKuhFD
 dUfvkRMh8RZziRZW1NjT6qtnn/3P3PCOP5rAXu0m7iEmCs/TUjwm5tDtj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235645308"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="235645308"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 09:22:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="513607490"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 09 Mar 2022 09:22:18 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nS00v-0003bi-HR; Wed, 09 Mar 2022 17:22:17 +0000
Date: Thu, 10 Mar 2022 01:21:25 +0800
From: kernel test robot <lkp@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <202203100120.Jk1QDYfg-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 192/252]
 include/net/tcp.h:1697:1: error: expected identifier or '(' before '{'
 token
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 David Ahern <dsahern@kernel.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   1f3c9cdce1f36b6edf8296139dafa6cb39826543
commit: 1330b6ef3313fcec577d2b020c290dc8b9f11f1a [192/252] skb: make drop reason booleanable
config: um-i386_defconfig (https://download.01.org/0day-ci/archive/20220310/202203100120.Jk1QDYfg-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=1330b6ef3313fcec577d2b020c290dc8b9f11f1a
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue dev-queue
        git checkout 1330b6ef3313fcec577d2b020c290dc8b9f11f1a
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=um SUBARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/net/slip/slhc.c:74:
>> include/net/tcp.h:1697:1: error: expected identifier or '(' before '{' token
    1697 | {
         | ^
   include/net/tcp.h:1694:1: warning: 'tcp_inbound_md5_hash' declared 'static' but never defined [-Wunused-function]
    1694 | tcp_inbound_md5_hash(const struct sock *sk, const struct sk_buff *skb,
         | ^~~~~~~~~~~~~~~~~~~~
--
   In file included from net/ipv4/tcp_ipv4.c:64:
>> include/net/tcp.h:1697:1: error: expected identifier or '(' before '{' token
    1697 | {
         | ^
   include/net/tcp.h:1694:1: warning: 'tcp_inbound_md5_hash' used but never defined
    1694 | tcp_inbound_md5_hash(const struct sock *sk, const struct sk_buff *skb,
         | ^~~~~~~~~~~~~~~~~~~~
--
   In file included from net/ipv4/route.c:95:
>> include/net/tcp.h:1697:1: error: expected identifier or '(' before '{' token
    1697 | {
         | ^
   net/ipv4/route.c: In function 'ip_rt_send_redirect':
   net/ipv4/route.c:869:6: warning: variable 'log_martians' set but not used [-Wunused-but-set-variable]
     869 |  int log_martians;
         |      ^~~~~~~~~~~~
   In file included from net/ipv4/route.c:95:
   net/ipv4/route.c: At top level:
   include/net/tcp.h:1694:1: warning: 'tcp_inbound_md5_hash' declared 'static' but never defined [-Wunused-function]
    1694 | tcp_inbound_md5_hash(const struct sock *sk, const struct sk_buff *skb,
         | ^~~~~~~~~~~~~~~~~~~~


vim +1697 include/net/tcp.h

1330b6ef3313fc Jakub Kicinski    2022-03-07  1692  
1330b6ef3313fc Jakub Kicinski    2022-03-07  1693  static inline enum skb_drop_reason
1330b6ef3313fc Jakub Kicinski    2022-03-07  1694  tcp_inbound_md5_hash(const struct sock *sk, const struct sk_buff *skb,
7bbb765b734966 Dmitry Safonov    2022-02-23  1695  		     const void *saddr, const void *daddr,
1330b6ef3313fc Jakub Kicinski    2022-03-07  1696  		     int family, int dif, int sdif);
7bbb765b734966 Dmitry Safonov    2022-02-23 @1697  {
1330b6ef3313fc Jakub Kicinski    2022-03-07  1698  	return SKB_NOT_DROPPED_YET;
7bbb765b734966 Dmitry Safonov    2022-02-23  1699  }
9501f9722922f2 YOSHIFUJI Hideaki 2008-04-18  1700  #define tcp_twsk_md5_key(twsk)	NULL
9501f9722922f2 YOSHIFUJI Hideaki 2008-04-18  1701  #endif
9501f9722922f2 YOSHIFUJI Hideaki 2008-04-18  1702  

:::::: The code at line 1697 was first introduced by commit
:::::: 7bbb765b73496699a165d505ecdce962f903b422 net/tcp: Merge TCP-MD5 inbound callbacks

:::::: TO: Dmitry Safonov <dima@arista.com>
:::::: CC: Jakub Kicinski <kuba@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
