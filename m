Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 698DA4B3009
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 23:05:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCAD860F2D;
	Fri, 11 Feb 2022 22:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wqjtN5pxE23U; Fri, 11 Feb 2022 22:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D32F560B48;
	Fri, 11 Feb 2022 22:05:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC5A91BF34E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 22:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A9287400E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 22:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QG_HhjUUOX_d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Feb 2022 22:05:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8838A400C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 22:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644617114; x=1676153114;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=WNMdlhJHH0sjtabvDXstOjZlPxdvaJHen4RjdZVO5pQ=;
 b=CCE0Sk3pz4PNKAc1OXP/vogTeUTETKnBZxf7xH6B7lml1gGFXmbfP3Xk
 65r3RsjP7eiXWU1ULXyqIvjWGvCUh4WSwJhALG4NW59w58E+j1iBZRHpc
 N344yIF6BLauJCuNrULGB2fhxuKOWHrurGHCFCzCIN7gYJKb5BCjnta+f
 dKIO6/MAGUNqKyIT+8xDjIfVJbJyewED0QlGTQZ5mhta3yu2n0GagK0pO
 H4g6NVJYbWIT/nVXyTAcJaplnqROiaW4cScVQtlOpNYK3+JKpReYzKCTP
 ASoz+peOCY+qJk7YdbX2VHaZute0YdOpczA/vqg+I46EaKYVoGb+jBBYP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="250025045"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="250025045"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 14:05:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="623343093"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Feb 2022 14:05:09 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nIe2P-0005FA-8z; Fri, 11 Feb 2022 22:05:09 +0000
Date: Sat, 12 Feb 2022 06:04:51 +0800
From: kernel test robot <lkp@intel.com>
To: Eric Dumazet <edumazet@google.com>
Message-ID: <202202120545.c2k6AbiS-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue 21/44]
 net/netfilter/xt_socket.c:224:17: error: implicit declaration of function
 'nf_defrag_ipv6_disable'; did you mean 'nf_defrag_ipv4_disable'?
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Pablo Neira Ayuso <pablo@netfilter.org>,
 Florian Westphal <fw@strlen.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
head:   d35ad64359ca21540d9bf84b4bb072ca21b2f4ac
commit: 75063c9294fb239bbe64eb72141b6871fe526d29 [21/44] netfilter: xt_socket: fix a typo in socket_mt_destroy()
config: sparc-randconfig-s031-20220211 (https://download.01.org/0day-ci/archive/20220212/202202120545.c2k6AbiS-lkp@intel.com/config)
compiler: sparc-linux-gcc (GCC) 11.2.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # apt-get install sparse
        # sparse version: v0.6.4-dirty
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/commit/?id=75063c9294fb239bbe64eb72141b6871fe526d29
        git remote add tnguy-net-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git
        git fetch --no-tags tnguy-net-queue dev-queue
        git checkout 75063c9294fb239bbe64eb72141b6871fe526d29
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=sparc SHELL=/bin/bash net/netfilter/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   net/netfilter/xt_socket.c: In function 'socket_mt_destroy':
>> net/netfilter/xt_socket.c:224:17: error: implicit declaration of function 'nf_defrag_ipv6_disable'; did you mean 'nf_defrag_ipv4_disable'? [-Werror=implicit-function-declaration]
     224 |                 nf_defrag_ipv6_disable(par->net);
         |                 ^~~~~~~~~~~~~~~~~~~~~~
         |                 nf_defrag_ipv4_disable
   cc1: some warnings being treated as errors


vim +224 net/netfilter/xt_socket.c

   218	
   219	static void socket_mt_destroy(const struct xt_mtdtor_param *par)
   220	{
   221		if (par->family == NFPROTO_IPV4)
   222			nf_defrag_ipv4_disable(par->net);
   223		else if (par->family == NFPROTO_IPV6)
 > 224			nf_defrag_ipv6_disable(par->net);
   225	}
   226	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
