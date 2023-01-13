Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8B3668BE8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 06:54:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B66BF81ECD;
	Fri, 13 Jan 2023 05:54:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B66BF81ECD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673589261;
	bh=edmwDSqmyKFT2jal/RbHuNvzeyipUIdvs1wFoN157do=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6QI7g6/eX9y2PHlxWBDHlsETBdgsKkI4jXUVhrkSd/i2tfxmcT9xkAaAhfhAFk0NG
	 e6B946cj5wcZTCe1qL6E1hezmaM7wpp4CBHnaOrZ5mOBoVUUuA4tuQFDr7KUKh1NDy
	 RxabuOE2NfhdkhOoYCtS7lakOWfFyWyU/9jeJ5F4u6h7xZU7vDa+VR8+/zN5LlU1um
	 MPjxZfdgUjf9Eb5idcY7fbFL7dCbWsZ6/cZkhsAKMJPPFKRjO0723ToIYWojOUMEfD
	 km9N/aeWhtfTau24ddV40HL2TAU30U1Tq+6J4ttBnPSV4YgOxFnUfec5xISbswWZfV
	 TWN5vhKHRh9cA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Gva54NvYbmp; Fri, 13 Jan 2023 05:54:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB327813E4;
	Fri, 13 Jan 2023 05:54:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB327813E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE0671BF28F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 05:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7877E4098C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 05:54:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7877E4098C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cv3eXUnDTXWQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 05:54:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E277408EB
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E277408EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 05:54:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="323980771"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="323980771"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 21:54:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="688630268"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="688630268"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 12 Jan 2023 21:54:11 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pGD0w-000AnG-0l;
 Fri, 13 Jan 2023 05:54:06 +0000
Date: Fri, 13 Jan 2023 13:53:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63c0f1df.TasmV4iUFJc+QZ7w%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673589254; x=1705125254;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=lLjcP2UtZhDW9HnstF3YMbi2+VR8CuZf6jtWcPmjRuk=;
 b=b5IkvI8f8lChBiUpTKK5s/DL7R+HsEry5d/VDvmzyCLj4w0aVzvsSPwn
 y7SLKDUOtj8zhPugdV4SdN+3KNyxpmyTkLKhrfiEZ/ksIsriEjBZs6oxv
 OJ2eSJlVoPLiswX8/o4jrdyqlHi6Tp9iuQBvtE9+++kyCG38OevG7Bijb
 mFGgW8Vb2XgbWk/k3N7O0Bi/X1sH2PPxztZfv1STXxkbkUg+bJFCHp//x
 /hawnrVgZQqgHFnTqvFBzfQuF2LRKARf7ww8NWsrttm9sCE9RpgFA727S
 ebbJoyNCaiw4agdGkbtsIWL+DCSofQcO1IMEK+SkylC9HxBLjFz4I+sOE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b5IkvI8f
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 55b98837e37da723c8b73ec0b48fe68c682b57d7
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
branch HEAD: 55b98837e37da723c8b73ec0b48fe68c682b57d7  Merge branch 'vsock-update-tools-and-error-handling'

elapsed time: 939m

configs tested: 94
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
ia64                             allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
arm                           h3600_defconfig
arm                           sama5_defconfig
arc                        nsimosci_defconfig
sh                      rts7751r2d1_defconfig
sh                          landisk_defconfig
sh                            titan_defconfig
arc                  randconfig-r043-20230112
s390                 randconfig-r044-20230112
riscv                randconfig-r042-20230112
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
arm                      integrator_defconfig
sh                           se7721_defconfig
m68k                          atari_defconfig
arc                          axs103_defconfig
m68k                       bvme6000_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                             allyesconfig
i386                                defconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                        randconfig-a011
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a001
powerpc                      mgcoge_defconfig
sh                          urquell_defconfig
sh                           se7712_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
mips                     decstation_defconfig
powerpc                        cell_defconfig
sh                           se7705_defconfig
powerpc                 mpc834x_mds_defconfig
arm                           viper_defconfig

clang tested configs:
arm                  randconfig-r046-20230112
hexagon              randconfig-r041-20230112
hexagon              randconfig-r045-20230112
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
powerpc                          g5_defconfig
mips                          malta_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                      maltaaprp_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-k001
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
