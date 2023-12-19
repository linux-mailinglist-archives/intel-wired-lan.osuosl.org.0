Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 132B181905F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 20:09:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5C4F60F97;
	Tue, 19 Dec 2023 19:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5C4F60F97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703012977;
	bh=ACMdl60tqaMXngjF4jN5PJUVVZJX72u9+9SzDbY6Pfs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mVttH4ZAyupaUleQE0PMPEVVXjR+smykfI6IFoB5scu8ehRXCclBpJsLa6AblAl6/
	 Lk+yoKGbsWBBkIKMBojHGM1tXxyCxuNdJ5Yiocam2G3zvxJvqUCpAc222/IZedh/VP
	 H3iZQ5qPqTyT0ibwvb+hvo/EHcFW5+YeQ8GkBRx0ID2w3dhdW5ZnS5pqGZoZSsFPpc
	 RyWeUNPBpTF5MEeUsPBHhbupSUws5KYIl3ldlLeSKjn2YXJzpKrslIcTkBu37xjeV5
	 MG4EiugK9LAfUIaahoyxmQq8zVKaZYq4mIUWFiTasspXgtOwd275tDDf22ourGR69R
	 A6hAJeNlai2Dg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0OxllZCHceCF; Tue, 19 Dec 2023 19:09:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8519060BDE;
	Tue, 19 Dec 2023 19:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8519060BDE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A6CD1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 19:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7D26741E10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 19:09:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D26741E10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qITGVi-7mGez for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Dec 2023 19:09:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FF3641E09
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 19:09:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FF3641E09
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2941393"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; 
   d="scan'208";a="2941393"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 11:09:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="752273043"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="752273043"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 19 Dec 2023 11:09:28 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rFfT4-0005qH-0t
 for intel-wired-lan@lists.osuosl.org; Tue, 19 Dec 2023 19:09:26 +0000
Date: Wed, 20 Dec 2023 03:09:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312200320.T4C2N7DM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703012971; x=1734548971;
 h=date:from:to:subject:message-id;
 bh=QYLm/+ix9ZZ6Nvq6494M9zlwz3EJm9Eold3kOt3Wd3g=;
 b=gdM6EtaOagGeEMSI5Et2v0bvtPbcCh66ROze3QTf6eHAseMG1PeOdFaM
 2d+dtAaMhr14gsVL5apWkQ2tA4gMOF0BL+qv0Xg1kxoh5kqe9sgAwp47Y
 A0FWPVSI0E0CBTlOCX2dsipATFYxLbOxI19OSC3ed8N/T1a42LNYbzrZW
 5z3d40r5DER8LIxO0iIUtQvUELghA8fs6BS+5SMAls04h3pRN8cczSwSD
 O0si+qKXjo6oUfTWfPjmLoEmMX7BuGysYGl7FXyK0RRl8Z2btOGTEJQTe
 PbAUnv0qV69eVVf3pfSVAQaXha++GxIRqKlNVec79aJk4OZkggtv4qrlk
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gdM6EtaO
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 f5728a418945ba53e2fdf38a6e5c5a2670965e85
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: f5728a418945ba53e2fdf38a6e5c5a2670965e85  ice: Fix PF with enabled XDP going no-carrier after reset

elapsed time: 1451m

configs tested: 150
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20231219   clang
arm                   randconfig-002-20231219   clang
arm                   randconfig-003-20231219   clang
arm                   randconfig-004-20231219   clang
arm                         s3c6400_defconfig   gcc  
arm                        shmobile_defconfig   gcc  
arm                           tegra_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231219   clang
arm64                 randconfig-002-20231219   clang
arm64                 randconfig-003-20231219   clang
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231219   clang
hexagon               randconfig-002-20231219   clang
i386                             alldefconfig   gcc  
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231219   clang
i386         buildonly-randconfig-002-20231219   clang
i386         buildonly-randconfig-003-20231219   clang
i386         buildonly-randconfig-004-20231219   clang
i386         buildonly-randconfig-005-20231219   clang
i386         buildonly-randconfig-006-20231219   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231219   clang
i386                  randconfig-002-20231219   clang
i386                  randconfig-003-20231219   clang
i386                  randconfig-004-20231219   clang
i386                  randconfig-005-20231219   clang
i386                  randconfig-006-20231219   clang
i386                  randconfig-011-20231219   gcc  
i386                  randconfig-012-20231219   gcc  
i386                  randconfig-013-20231219   gcc  
i386                  randconfig-014-20231219   gcc  
i386                  randconfig-015-20231219   gcc  
i386                  randconfig-016-20231219   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                          multi_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                           ip27_defconfig   gcc  
mips                           ip32_defconfig   gcc  
mips                       lemote2f_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc                      ppc6xx_defconfig   gcc  
powerpc               randconfig-002-20231219   clang
powerpc               randconfig-003-20231219   clang
powerpc                     redwood_defconfig   gcc  
powerpc64             randconfig-002-20231219   clang
powerpc64             randconfig-003-20231219   clang
riscv                             allnoconfig   clang
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231219   clang
riscv                 randconfig-002-20231219   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231219   clang
um                    randconfig-002-20231219   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231219   clang
x86_64       buildonly-randconfig-002-20231219   clang
x86_64       buildonly-randconfig-003-20231219   clang
x86_64       buildonly-randconfig-004-20231219   clang
x86_64       buildonly-randconfig-005-20231219   clang
x86_64       buildonly-randconfig-006-20231219   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20231219   clang
x86_64                randconfig-012-20231219   clang
x86_64                randconfig-013-20231219   clang
x86_64                randconfig-014-20231219   clang
x86_64                randconfig-015-20231219   clang
x86_64                randconfig-016-20231219   clang
x86_64                randconfig-071-20231219   clang
x86_64                randconfig-072-20231219   clang
x86_64                randconfig-073-20231219   clang
x86_64                randconfig-074-20231219   clang
x86_64                randconfig-075-20231219   clang
x86_64                randconfig-076-20231219   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                          iss_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
