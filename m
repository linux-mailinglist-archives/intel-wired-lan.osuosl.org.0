Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA315F206F
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Oct 2022 00:50:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCDB54056A;
	Sat,  1 Oct 2022 22:50:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCDB54056A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664664641;
	bh=80ShfKX9v9S0tAOF7Fko/+pR+5YK1jDgPUH9jdxKGCs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Z36ZH2zkf8327GssuzzRdbUBeW56HeNt0u/hZ7n3Y6V3MhMtHhYEKQODhY2G0Suxs
	 jkPoXk20H/bG3Z4tngIlN+jrYk1Emz/v77Er0lNNfNu/XyGA0t9MZgtqKHSgMHz0cC
	 eKoTSBjRPIA5iWBV43cSfvj5nZCT+6Odc6jL9UuWqiptTLvkKdAMfzcs7hoE0h5wu1
	 pV/7CyFBDNgviS1uMnQeASsNDPdECMBHC6qzznIc1bFJLouALlNXRkdBBsKyEQ2i6v
	 VzAC+YTAwBi9wZS2rvEXYbM2hhIGaW0BH6ZPkOYe6qr/AsLWNgOJpMfh8xjQzH8I9f
	 yegfRObR7G/oA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hlmDhTYmvIXO; Sat,  1 Oct 2022 22:50:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F5FA40490;
	Sat,  1 Oct 2022 22:50:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F5FA40490
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57A061BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Oct 2022 22:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3BE89415E3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Oct 2022 22:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BE89415E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ejk8o0cjIzyT for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Oct 2022 22:50:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02D0F408C7
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02D0F408C7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Oct 2022 22:50:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="282136996"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="282136996"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2022 15:50:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="623147689"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="623147689"
Received: from lkp-server01.sh.intel.com (HELO 14cc182da2d0) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 01 Oct 2022 15:49:59 -0700
Received: from kbuild by 14cc182da2d0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oelJ0-0002pF-1x;
 Sat, 01 Oct 2022 22:49:58 +0000
Date: Sun, 02 Oct 2022 06:48:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6338c3da.EhhqvUBjpos/ZOI0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664664632; x=1696200632;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Ygb9rhD4WKVQh59Q++qtxqga0F9VzMXux5Yj/K7JGo8=;
 b=Cg63x3y0vRam76TP7fzVOa/he22WN4GwcTf/tUPFKN9soaI22shx9WfU
 cOOKEAU22YLE+LnVsqGTcmD9wKj3OyBgStV90CdP3Oyh5SGt2hjRP7fDn
 NoADqsTNwFvGwzItPv7GR5WuWYVcIzRkuuda5C+q684n0r7oYFYBD3jwo
 DI7MblyxKd1eUz8JJ3AU6DJ1oX+cw9esuk/sx/OVeOWS3Kn11Si4Gals7
 TxcOAA/kOdy/FW4Zz2EZGkvjLPt37QpkE6UujI4ZkctpL4yL3VoWE2pXj
 RJOoDCrM4HdQqrjGQcXBgLWf5zAmvWPpzabAs3Jzy1/qi+Y1Y1lYauftC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cg63x3y0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 cfc4b12ba3acb41e112c1651b2f588e63f0ae86f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: cfc4b12ba3acb41e112c1651b2f588e63f0ae86f  ice: use GNSS subsystem instead of TTY

Error/Warning reports:

https://lore.kernel.org/lkml/202209211139.VPM7En0j-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

ice_main.c:(.text+0x113fc): undefined reference to `ice_gnss_init'
ice_main.c:(.text+0x11f8c): undefined reference to `ice_gnss_exit'
ice_main.c:(.text+0x13f42): undefined reference to `ice_gnss_init'
ice_main.c:(.text+0x4cb2): undefined reference to `ice_gnss_exit'
ice_main.c:(.text+0x637ff9e): undefined reference to `ice_gnss_exit'
ice_main.c:(.text+0x6383271): undefined reference to `ice_gnss_init'
ice_main.c:(.text+0x7000): undefined reference to `ice_gnss_init'
ice_main.c:(.text+0x9c56): undefined reference to `ice_gnss_exit'
ice_main.c:(.text+0xa624): undefined reference to `ice_gnss_exit'
ice_main.c:(.text+0xcc88): undefined reference to `ice_gnss_init'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allyesconfig
|   |-- ice_main.c:(.text):undefined-reference-to-ice_gnss_exit
|   `-- ice_main.c:(.text):undefined-reference-to-ice_gnss_init
|-- arm64-allyesconfig
|   |-- ice_main.c:(.text):undefined-reference-to-ice_gnss_exit
|   `-- ice_main.c:(.text):undefined-reference-to-ice_gnss_init
|-- i386-allyesconfig
|   |-- ice_main.c:(.text):undefined-reference-to-ice_gnss_exit
|   `-- ice_main.c:(.text):undefined-reference-to-ice_gnss_init
|-- s390-allyesconfig
|   |-- ice_main.c:(.text):undefined-reference-to-ice_gnss_exit
|   `-- ice_main.c:(.text):undefined-reference-to-ice_gnss_init
`-- x86_64-allyesconfig
    |-- ice_main.c:(.text):undefined-reference-to-ice_gnss_exit
    `-- ice_main.c:(.text):undefined-reference-to-ice_gnss_init
clang_recent_errors
`-- s390-randconfig-r011-20220926
    |-- ice_lib.c:(.text):undefined-reference-to-ice_gnss_is_gps_present
    |-- ice_main.c:(.text):undefined-reference-to-ice_gnss_exit
    `-- ice_main.c:(.text):undefined-reference-to-ice_gnss_init

elapsed time: 1409m

configs tested: 63
configs skipped: 2

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
arc                                 defconfig
alpha                               defconfig
x86_64                          rhel-8.3-func
s390                                defconfig
s390                             allmodconfig
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
s390                             allyesconfig
i386                                defconfig
x86_64                           rhel-8.3-syz
i386                 randconfig-a001-20220926
x86_64                         rhel-8.3-kunit
i386                 randconfig-a004-20220926
x86_64                           rhel-8.3-kvm
i386                 randconfig-a002-20220926
i386                 randconfig-a003-20220926
i386                 randconfig-a005-20220926
i386                          randconfig-a014
i386                 randconfig-a006-20220926
x86_64                        randconfig-a004
arm                                 defconfig
sh                               allmodconfig
i386                          randconfig-a012
x86_64                        randconfig-a002
i386                          randconfig-a016
x86_64                        randconfig-a006
mips                             allyesconfig
powerpc                          allmodconfig
arc                  randconfig-r043-20220925
i386                             allyesconfig
riscv                randconfig-r042-20220925
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arc                  randconfig-r043-20220926
arm                              allyesconfig
s390                 randconfig-r044-20220925
arm64                            allyesconfig
m68k                             allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64               randconfig-a014-20220926
x86_64               randconfig-a013-20220926
i386                          randconfig-a013
x86_64               randconfig-a011-20220926
i386                          randconfig-a011
x86_64               randconfig-a016-20220926
x86_64               randconfig-a015-20220926
x86_64                        randconfig-a001
x86_64               randconfig-a012-20220926
i386                          randconfig-a015
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
