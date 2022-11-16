Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5FA62B29F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 06:15:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E45D081ED9;
	Wed, 16 Nov 2022 05:15:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E45D081ED9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668575744;
	bh=0aqn2xMWdGllRlzuXVUMLWcm11iK/ZjNzAfRL6c4H0k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=epPjzSa6WSBSKh7PGx5w4/7Ns7lhDdiRMbevS+BQJOABDCu5MWO85wob3r+KfUiJO
	 R2nyAO1u39nRHVLq5NLjuAPm4QIUYU+9hmtbcS5cHOjZs70RKs/483LLo/MOvLc8+z
	 twoAlvXLU5fP2oK8YqDpyrt5CztjNRWMBLlC4Vy7AnLazOFa2THnNsuLQ/TlL75P5v
	 531Hbrm5Nr+LSAG7R3kf6Db9/qRhNl86JpN59SJ+2B2bfqMV841J9sv5Zykjtc0PEz
	 V492ecOMb2XJErE1sB5Qp4uTotFHv8kwTBBdI462edutVJ6OZUd9sV1GYNTTJK8VYf
	 3bDOP+Q2P7muw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BxAkChsMYIhD; Wed, 16 Nov 2022 05:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D685181ECD;
	Wed, 16 Nov 2022 05:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D685181ECD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 276D91BF846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 05:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 00A6B81ECD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 05:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00A6B81ECD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ofQVTC6M5ey for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 05:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 002A981EC8
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 002A981EC8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 05:15:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="313603590"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="313603590"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 21:15:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="813949174"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="813949174"
Received: from lkp-server01.sh.intel.com (HELO ebd99836cbe0) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 15 Nov 2022 21:15:32 -0800
Received: from kbuild by ebd99836cbe0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovAln-00021z-2S;
 Wed, 16 Nov 2022 05:15:31 +0000
Date: Wed, 16 Nov 2022 13:14:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <637471bb.oCPk9cYt8zB0gDLE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668575735; x=1700111735;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9JlmESFnrmk7fh5TEJrdWQoP6/cM/BRVnt1z7y5Iis8=;
 b=I5a1XD9AdPmSLx8pLCdL9vDl1fLGX5qeHvMkyIhHiLS7Z3WvY6+k/H49
 ls11eNQnohbnerZ/0HHXGZpSU8oiTf1UVOX9r7CLiEHDMM/cq5YvkFc7o
 EGpI9ku/7MffmJwKB26P3klS+g1KCfjwlwD/H6YpfJqV4R++2tQkqeqtd
 iNJbnNawZchcRG/ldRR9Ozke45Ut7zUlA4JPZ0b/gwny5JLlw4Rx2mvT0
 eJHwflmG7N0BfMpEb0sIZeFSazt870Zs2qgQKZi5v8sBud7KLTJH56lhm
 gQWJznblJxI/hpfEUGAsHJSvviERXaqYALCkqCKUogkJEhl0/i03zJdGm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I5a1XD9A
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD REGRESSION
 7eba4505394e21df44dcace6b5d741a8e2deea3a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 7eba4505394e21df44dcace6b5d741a8e2deea3a  net: dcb: move getapptrust to separate function

Error/Warning: (recently discovered and may have been fixed)

include/net/sock.h:387:37: error: 'const struct sock_common' has no member named 'skc_v6_rcv_saddr'; did you mean 'skc_rcv_saddr'?
net/ipv4/tcp_input.c:6848:18: error: no member named 'skc_v6_rcv_saddr' in 'struct sock_common'; did you mean 'skc_rcv_saddr'?

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arc-defconfig
|   `-- include-net-sock.h:error:const-struct-sock_common-has-no-member-named-skc_v6_rcv_saddr
|-- arm-lubbock_defconfig
|   `-- include-net-sock.h:error:const-struct-sock_common-has-no-member-named-skc_v6_rcv_saddr
`-- mips-buildonly-randconfig-r006-20221115
    `-- include-net-sock.h:error:const-struct-sock_common-has-no-member-named-skc_v6_rcv_saddr
clang_recent_errors
`-- i386-randconfig-a015
    `-- net-ipv4-tcp_input.c:error:no-member-named-skc_v6_rcv_saddr-in-struct-sock_common

elapsed time: 802m

configs tested: 52
configs skipped: 2

gcc tested configs:
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                 randconfig-a001-20221114
arc                  randconfig-r043-20221115
i386                 randconfig-a004-20221114
riscv                randconfig-r042-20221115
i386                 randconfig-a002-20221114
s390                 randconfig-r044-20221115
i386                 randconfig-a005-20221114
i386                 randconfig-a003-20221114
i386                 randconfig-a006-20221114
ia64                             allmodconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                                defconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
arm                                 defconfig
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
m68k                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
arc                                 defconfig
x86_64                          rhel-8.3-func
alpha                               defconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                           allyesconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20221115
hexagon              randconfig-r045-20221115
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
