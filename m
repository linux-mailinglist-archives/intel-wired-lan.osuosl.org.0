Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FA1697B6B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 13:04:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D30ED41608;
	Wed, 15 Feb 2023 12:04:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D30ED41608
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676462697;
	bh=aEwGwsCyWGcm59StP5jBWwq9Hkacl/8knTeQaYEtf2M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Wj2MRRB3m5j5kKnvz25sCsJOBXpSAy43MRVyE/z59+vHQMwyib2954/nzMOvNbn5F
	 Hj7mXCzY2X0eNqwgZNBgGpgvttGatEEEnv+MWWsiBSbIPzJK0K+Wp+02nncCcDpTW/
	 IhDp037SOJwtjk0gR8DygcVJxu1LckJ427zzPgiVqkTy6WtjhtZqD2ZuBV84wRqXxk
	 gDYXVal9YQcUDF/Vl73tjSCBxB39lZ9+n3LZiaK7WCjH3lOawy0HKdhMa58RyMY8VQ
	 DLnviMhnDh3loZn32ASFrTqCaj74ntyGmQ9KZUnqkTu9X+82V5OKhsicu+EBJWNzPh
	 Gh4D4vkgw1x/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iy1aLgiF9aJC; Wed, 15 Feb 2023 12:04:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87AEA403C1;
	Wed, 15 Feb 2023 12:04:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87AEA403C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 59B291BF82F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:04:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3252160F15
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:04:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3252160F15
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4TEWTDG4MP52 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Feb 2023 12:04:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 232DF60E37
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 232DF60E37
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:04:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="396033001"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="396033001"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 04:04:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="915127262"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="915127262"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 15 Feb 2023 04:04:45 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pSGWi-0009Kv-2k;
 Wed, 15 Feb 2023 12:04:44 +0000
Date: Wed, 15 Feb 2023 20:04:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ecca5a.1OH5ZzGtqR1rl49o%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676462690; x=1707998690;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=NQ5oew/CREy1UWGaNdJoqgjOo3Dm9Vwg3aHJJgLh6sY=;
 b=gcWsSg9Vfr1yec9nJJ6mu4pk+Lv3tdKdSKpkKp8rFJfAzYFhfYIex5bh
 ght0sU+c3mI0F918kXC3WagdaPh2HRlCuY7rSqQzc0/ART6bFD9z8Yt1G
 Mj96YQH9f6q4wPSyvcleE3NWr8bW/APniJh3cC1ppUWKuvdQVCcYAJcmV
 PbyM++aZAT2sqxOxNsJvnqhDIQf5iKCUuyOzFrC2kpqn2QEL0ZvO54yBD
 3Ts71OhenffiCNou7/ZMDpHBi1ZQh0h6mzc75spwKkzdQt5GBVH/EimiG
 qHsoP/eJHMGzfcxFGFP1XWy7vgv8YbswwvjC9P4Fq0IQ1YMPrvxcsgE9J
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gcWsSg9V
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 13b599f15e1cb59d6cc907908532dc45bf048e3a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 13b599f15e1cb59d6cc907908532dc45bf048e3a  ice: Mention CEE DCBX in code comment

elapsed time: 863m

configs tested: 94
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
arc                  randconfig-r043-20230214
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230212
arm                  randconfig-r046-20230214
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                 randconfig-a011-20230213
i386                 randconfig-a012-20230213
i386                 randconfig-a013-20230213
i386                 randconfig-a014-20230213
i386                 randconfig-a015-20230213
i386                 randconfig-a016-20230213
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                          sun3x_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                        bcm47xx_defconfig
nios2                               defconfig
parisc                              defconfig
parisc                generic-32bit_defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                      mgcoge_defconfig
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
sh                            migor_defconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64               randconfig-a011-20230213
x86_64               randconfig-a012-20230213
x86_64               randconfig-a013-20230213
x86_64               randconfig-a014-20230213
x86_64               randconfig-a015-20230213
x86_64               randconfig-a016-20230213
x86_64                               rhel-8.3
xtensa                    smp_lx200_defconfig

clang tested configs:
arm                         orion5x_defconfig
arm                      pxa255-idp_defconfig
arm                  randconfig-r046-20230213
hexagon              randconfig-r041-20230212
hexagon              randconfig-r041-20230213
hexagon              randconfig-r041-20230214
hexagon              randconfig-r045-20230212
hexagon              randconfig-r045-20230213
hexagon              randconfig-r045-20230214
i386                 randconfig-a001-20230213
i386                 randconfig-a002-20230213
i386                 randconfig-a003-20230213
i386                 randconfig-a004-20230213
i386                 randconfig-a005-20230213
i386                 randconfig-a006-20230213
mips                           ip27_defconfig
riscv                randconfig-r042-20230212
riscv                randconfig-r042-20230214
s390                 randconfig-r044-20230212
s390                 randconfig-r044-20230214
x86_64               randconfig-a001-20230213
x86_64               randconfig-a002-20230213
x86_64               randconfig-a003-20230213
x86_64               randconfig-a004-20230213
x86_64               randconfig-a005-20230213
x86_64               randconfig-a006-20230213

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
