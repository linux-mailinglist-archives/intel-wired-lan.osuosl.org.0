Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DC2699A17
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 17:33:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D19AD404A5;
	Thu, 16 Feb 2023 16:33:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D19AD404A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676565221;
	bh=oZ3nVEZMapreJPBi/jm7USDhMRKwAAo+z8PiZQ0ndRo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qQrw9jXbG6clPtvJcc1wgIf6N+x8m/YV0g7s3MPliFl+EYrJoVS/T1d0I2QTEyRBJ
	 dbJzibbZRWNwS6qK7HDTiAK/2JTes6pszNfvappvItkNFfvVYn/uCqEl88upfYwAhY
	 LI8l5dcXFnJ5kQ3I7N3nQON3CB264VoknCVgIHXwzT0fUu+ZYi78Rxd3zm3b6ParQ4
	 QqWR8fBHsPF7ZeGOyZQIMOjuPaiAsGwmgOrZDn3PxL+Ehu8IX/M6VWXbHEoedlr/LQ
	 zrR3FwWbtQphW2mD4duG8IFO6vF1x227shykj2ERRmqV4LKZV5cWbUpmxDRdqvFJwV
	 0HOL3WiKB2Wmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pQhCIdRFTQWb; Thu, 16 Feb 2023 16:33:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77D7B4032A;
	Thu, 16 Feb 2023 16:33:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77D7B4032A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44B931BF30D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1DE6F4102B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:33:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DE6F4102B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uo502g9rRBDe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 16:33:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2473E40BAD
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2473E40BAD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:33:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="329480798"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="329480798"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 08:33:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="670172797"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="670172797"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 16 Feb 2023 08:33:31 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pShCM-000ALt-1m;
 Thu, 16 Feb 2023 16:33:30 +0000
Date: Fri, 17 Feb 2023 00:32:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ee5aa2.ZvCCH/skAVSg+AXh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676565213; x=1708101213;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uvGrdjyKrG++TrG5Gs09sbV2p0GAhhvTk/zaOg3pGqU=;
 b=ak7xDQTH5ARVxtqVUDqJzUCM0iQctdOBMzIpHhXhCfWcpsjubSzD9KIc
 MhBSCzApCalEU2HxDTkpRpaL1QeqAuXgFogiYHTNj0jKTgwx0Mxvwxx/i
 VSjlfCLzUQd5khROcrKhsWQMXRMQ0VSd01rxuzzzkLLqXLEeVDyixz6xX
 MDJlC/aeE54GyBtrfjnrMU3awDCNUkm6zYm1hfqacypPqDGNmuk6YfZX4
 b3RgE6KkFW26Sw84pMBJAIDM6s90C/kIPIQfcIA96q+Zpsga63H5UBZvE
 3Aw5soacg6oyKNeeVC4oKKgg4DJJ5QX2zvNsO8DGlUkdgArjVrdzTfjN/
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ak7xDQTH
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 dee4bf7167cfcae642e0cf04bef81dca49cc286f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: dee4bf7167cfcae642e0cf04bef81dca49cc286f  Merge branch '10GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue

elapsed time: 752m

configs tested: 57
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230212
arc                  randconfig-r043-20230213
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230212
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                 randconfig-a016-20230213
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                randconfig-r042-20230213
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230213
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3

clang tested configs:
arm                  randconfig-r046-20230213
hexagon              randconfig-r041-20230212
hexagon              randconfig-r041-20230213
hexagon              randconfig-r045-20230212
hexagon              randconfig-r045-20230213
riscv                randconfig-r042-20230212
s390                 randconfig-r044-20230212
x86_64               randconfig-a006-20230213

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
