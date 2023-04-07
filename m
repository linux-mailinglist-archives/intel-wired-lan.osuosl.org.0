Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466966DAC66
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Apr 2023 13:56:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57A5541E30;
	Fri,  7 Apr 2023 11:56:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57A5541E30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680868565;
	bh=P7l3anfshQbATG+G6G/+2ryxQG98Alz/bY8ILpb120k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4DYLPEqV9gz7cjRkOQpFPAnF0bF1YIB56B329QvMWLjz/5y10R42m7bXmDQNKnI9U
	 d/N2YOekn8yrMwzUVnPlCkUSYD/zUoM7RM7ihwULi7fbQhJ+rDO97qaBY1+k0RAs77
	 WHkz4/8+JlAo8XHq/wn00vj84JbPQ5zayBlLunEuZFJIzLKzrW8wpdUoExLA90E8nt
	 ttQGslnGxbksiWdlCzMkWuzFl4jCjZGKbDb63FatrbV9T+1DHyvsGr14cpy7BJVyVD
	 6pT2384N+Jv1jGikIKXng0kpnV+sfiaKYb/cXvV57Knv65AVg7mrLA0rLVIcgBGq5w
	 d2uv3MCmCqpqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U7ZiMAWVtU0w; Fri,  7 Apr 2023 11:56:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D549A405F0;
	Fri,  7 Apr 2023 11:56:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D549A405F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32B8A1C2E3B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0737F84551
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0737F84551
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IeY-f_azF1cy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Apr 2023 11:55:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13F5D8454C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13F5D8454C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:55:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="370809668"
X-IronPort-AV: E=Sophos;i="5.98,326,1673942400"; d="scan'208";a="370809668"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2023 04:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="664865684"
X-IronPort-AV: E=Sophos;i="5.98,326,1673942400"; d="scan'208";a="664865684"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 07 Apr 2023 04:55:44 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pkkgx-000SSK-1X;
 Fri, 07 Apr 2023 11:55:43 +0000
Date: Fri, 07 Apr 2023 19:55:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6430049e.Ayio2qMHGJmDTKOb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680868547; x=1712404547;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=za1gNJdskcmz0z4RrlQAqtKM/x9B0E/SSjw1JfZ9WMs=;
 b=eXWkrkJH3QoPCxGV4sMG/F1KalbZI84lyTsqnVr7vlVZFVsmOjx94eU0
 dk4zFqbH+qrej5T3TfQ+K50RYcAxyafFWVtcX+guPHk4jC0RNVtuV18B3
 nR/JHsWyo7olK20iD2rGQK/XHjV1QG/0wxQe4NuyJ+bJzWbwryEgwlNix
 aFQzqdubJ34fEYOog/CA3YCj7TcWXZWXh492OhvaRHJVHqMHvCf1JUMdQ
 3Z34IlIo7DbINeCWOvAdb59Qqgr+6+6beW1ZYjqtBFS+rhHJiJg2c+Vay
 IBULEU6urSJ1sYRCAO6TCb2IVyGRK3IV9vYkHbZS6XBfQhFY9xPDYLUh1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eXWkrkJH
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 d9c960675adcc6e26bb6464b6b500fd75fd55dcf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: d9c960675adcc6e26bb6464b6b500fd75fd55dcf  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 878m

configs tested: 143
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230403   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230403   gcc  
alpha                randconfig-r005-20230403   gcc  
alpha                randconfig-r023-20230403   gcc  
alpha                randconfig-r036-20230403   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230405   gcc  
arc                  randconfig-r002-20230403   gcc  
arc                  randconfig-r006-20230403   gcc  
arc                  randconfig-r016-20230403   gcc  
arc                  randconfig-r021-20230403   gcc  
arc                  randconfig-r025-20230403   gcc  
arc                  randconfig-r033-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arc                  randconfig-r043-20230406   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230403   clang
arm          buildonly-randconfig-r003-20230403   clang
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230405   gcc  
arm                  randconfig-r034-20230403   gcc  
arm                  randconfig-r046-20230403   clang
arm                  randconfig-r046-20230406   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230403   clang
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230403   clang
arm64                randconfig-r015-20230403   gcc  
arm64                randconfig-r021-20230403   gcc  
arm64                randconfig-r021-20230405   gcc  
arm64                randconfig-r032-20230403   clang
csky         buildonly-randconfig-r002-20230403   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r021-20230404   gcc  
csky                 randconfig-r032-20230405   gcc  
csky                 randconfig-r035-20230405   gcc  
hexagon      buildonly-randconfig-r001-20230403   clang
hexagon              randconfig-r041-20230403   clang
hexagon              randconfig-r041-20230406   clang
hexagon              randconfig-r045-20230403   clang
hexagon              randconfig-r045-20230406   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a016-20230403   gcc  
i386                 randconfig-r022-20230403   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r022-20230403   gcc  
ia64                 randconfig-r023-20230403   gcc  
ia64                 randconfig-r026-20230403   gcc  
ia64                 randconfig-r026-20230404   gcc  
ia64                 randconfig-r026-20230405   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r006-20230403   gcc  
loongarch            randconfig-r022-20230403   gcc  
loongarch            randconfig-r025-20230403   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230403   gcc  
m68k         buildonly-randconfig-r006-20230403   gcc  
m68k                                defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
m68k                 randconfig-r001-20230403   gcc  
m68k                 randconfig-r024-20230403   gcc  
m68k                 randconfig-r025-20230405   gcc  
m68k                 randconfig-r031-20230405   gcc  
microblaze           randconfig-r023-20230405   gcc  
microblaze           randconfig-r024-20230403   gcc  
microblaze           randconfig-r031-20230403   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                 randconfig-r002-20230405   gcc  
mips                 randconfig-r004-20230403   gcc  
mips                 randconfig-r011-20230403   clang
mips                 randconfig-r033-20230405   gcc  
mips                          rb532_defconfig   gcc  
nios2        buildonly-randconfig-r005-20230403   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230403   gcc  
nios2                randconfig-r024-20230403   gcc  
nios2                randconfig-r034-20230403   gcc  
openrisc             randconfig-r026-20230403   gcc  
openrisc             randconfig-r034-20230405   gcc  
openrisc             randconfig-r035-20230403   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230405   gcc  
parisc               randconfig-r022-20230405   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230403   gcc  
powerpc              randconfig-r025-20230403   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230403   clang
riscv                randconfig-r004-20230403   clang
riscv                randconfig-r024-20230405   gcc  
riscv                randconfig-r042-20230403   gcc  
riscv                randconfig-r042-20230406   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230403   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230403   gcc  
s390                 randconfig-r044-20230406   clang
sh                               allmodconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                         microdev_defconfig   gcc  
sparc        buildonly-randconfig-r004-20230403   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r022-20230404   gcc  
sparc                randconfig-r032-20230403   gcc  
sparc64              randconfig-r005-20230403   gcc  
sparc64              randconfig-r021-20230403   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a006-20230403   clang
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64                        randconfig-a016   clang
x86_64               randconfig-k001-20230403   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230403   gcc  
xtensa               randconfig-r024-20230404   gcc  
xtensa               randconfig-r026-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
