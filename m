Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F13E1961A93
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 01:29:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 380BF811BF;
	Tue, 27 Aug 2024 23:29:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zsln7-0H6OU9; Tue, 27 Aug 2024 23:29:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E7EA811E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724801368;
	bh=Blh2qiTn1xCCFtlpjKW57JDAIPhGSCVaKCMVbWP8t+8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mj3ORRm3kQRD872QzhqEr22DqMzGGEn7+FvNrEdXzy76/62D244yVVgs5GVEgN4gk
	 DBw/378M2TFU0n3duB87viJPCKOWvAvmTGRoHutpBN0T1mYRmEgESv7tE/zwbaREOi
	 FL9LjSQArv4IpCsTFwiz+evH3AKJlYMG2eL4vHfAmk5uMH6kseqaYOG8QDuPICD5Y9
	 TdsI2JTMNP4K88Uf6aIFpndh9qfuvWF8wP8PuNRjSw7pslOqGul3ZpAlFO8rOp0AK+
	 uCv93n7fLDwqfH6q643ldkzomR8fzkEV4SXuTxQuKKW05hXGy7/mpmVUEejQ75ogAB
	 h4UpIjKMKRZEA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E7EA811E2;
	Tue, 27 Aug 2024 23:29:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D55E1BF831
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 23:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2647140667
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 23:29:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PEJByNEgixTI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 23:29:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 677A240275
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 677A240275
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 677A240275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 23:29:24 +0000 (UTC)
X-CSE-ConnectionGUID: SN7cQk1bReuwdTe0vAoGGg==
X-CSE-MsgGUID: y+4muxpyRkuJDFJ/ZXwmow==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23184579"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="23184579"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 16:29:23 -0700
X-CSE-ConnectionGUID: AB39CFddQqajg4PUwT/3bQ==
X-CSE-MsgGUID: 3NcAbzGVRaOdTB9b665ivQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="67891037"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 27 Aug 2024 16:29:22 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sj5cl-000KCo-1F
 for intel-wired-lan@lists.osuosl.org; Tue, 27 Aug 2024 23:29:19 +0000
Date: Wed, 28 Aug 2024 07:28:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408280743.Dg0EX8nj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724801364; x=1756337364;
 h=date:from:to:subject:message-id;
 bh=q8K3gSXRrv3Qwf3lpYNLqgh96MGreu3d2mBz0wK9nq4=;
 b=gELmVL+fRyRSSWOBo/Er3uUARyPgXQ7lUh5QvPNAKo0+1YIkZAwZ3p4q
 n+4Wb900hch+teKGvtQmxtg0wNRGBDCzgCS7gtzFelhAf9H15SeiTY0vX
 7F5pBoUyWp1ZSDnoTLnRovXPkGWl8Mv7YkFdyesZlZJ8cNSaz9lkVzGRH
 TUGVHLSIvd+nLtAWwbTplnaHwPXgou9BzbNWe/OoroSheCAkOWn4l581B
 innhGVQHhwYgfwbHKPlaovaNQNeEEWMud3HxvzCfcKCIvdLRzXfw+oCGN
 UuhWmdss1dVfy/QuzrYdYZetKJehaIfhxT9oMbp095skuquZJLxbWZoc1
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gELmVL+f
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7056c395ebcb944d02682b82d3300a83ab50c464
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 7056c395ebcb944d02682b82d3300a83ab50c464  ice: do not bring the VSI up, if it was down before the XDP setup

elapsed time: 1463m

configs tested: 239
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240827   gcc-13.2.0
arc                   randconfig-002-20240827   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                      footbridge_defconfig   clang-20
arm                      footbridge_defconfig   gcc-13.2.0
arm                            mmp2_defconfig   gcc-13.2.0
arm                         nhk8815_defconfig   clang-20
arm                           omap1_defconfig   clang-20
arm                   randconfig-001-20240827   gcc-13.2.0
arm                   randconfig-002-20240827   gcc-13.2.0
arm                   randconfig-003-20240827   gcc-13.2.0
arm                   randconfig-004-20240827   gcc-13.2.0
arm                         s5pv210_defconfig   clang-20
arm                         s5pv210_defconfig   gcc-13.2.0
arm                          sp7021_defconfig   clang-20
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240827   gcc-13.2.0
arm64                 randconfig-002-20240827   gcc-13.2.0
arm64                 randconfig-003-20240827   gcc-13.2.0
arm64                 randconfig-004-20240827   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240827   gcc-13.2.0
csky                  randconfig-002-20240827   gcc-13.2.0
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240827   gcc-12
i386         buildonly-randconfig-001-20240828   gcc-12
i386         buildonly-randconfig-002-20240827   clang-18
i386         buildonly-randconfig-002-20240827   gcc-12
i386         buildonly-randconfig-002-20240828   gcc-12
i386         buildonly-randconfig-003-20240827   gcc-12
i386         buildonly-randconfig-003-20240828   gcc-12
i386         buildonly-randconfig-004-20240827   clang-18
i386         buildonly-randconfig-004-20240827   gcc-12
i386         buildonly-randconfig-004-20240828   gcc-12
i386         buildonly-randconfig-005-20240827   clang-18
i386         buildonly-randconfig-005-20240827   gcc-12
i386         buildonly-randconfig-005-20240828   gcc-12
i386         buildonly-randconfig-006-20240827   gcc-12
i386         buildonly-randconfig-006-20240828   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240827   gcc-12
i386                  randconfig-001-20240828   gcc-12
i386                  randconfig-002-20240827   gcc-12
i386                  randconfig-002-20240828   gcc-12
i386                  randconfig-003-20240827   gcc-12
i386                  randconfig-003-20240828   gcc-12
i386                  randconfig-004-20240827   gcc-12
i386                  randconfig-004-20240828   gcc-12
i386                  randconfig-005-20240827   gcc-12
i386                  randconfig-005-20240828   gcc-12
i386                  randconfig-006-20240827   clang-18
i386                  randconfig-006-20240827   gcc-12
i386                  randconfig-006-20240828   gcc-12
i386                  randconfig-011-20240827   clang-18
i386                  randconfig-011-20240827   gcc-12
i386                  randconfig-011-20240828   gcc-12
i386                  randconfig-012-20240827   clang-18
i386                  randconfig-012-20240827   gcc-12
i386                  randconfig-012-20240828   gcc-12
i386                  randconfig-013-20240827   clang-18
i386                  randconfig-013-20240827   gcc-12
i386                  randconfig-013-20240828   gcc-12
i386                  randconfig-014-20240827   gcc-12
i386                  randconfig-014-20240828   gcc-12
i386                  randconfig-015-20240827   gcc-12
i386                  randconfig-015-20240828   gcc-12
i386                  randconfig-016-20240827   clang-18
i386                  randconfig-016-20240827   gcc-12
i386                  randconfig-016-20240828   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240827   gcc-13.2.0
loongarch             randconfig-002-20240827   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
microblaze                      mmu_defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                           ci20_defconfig   clang-20
mips                     cu1000-neo_defconfig   gcc-13.2.0
mips                      malta_kvm_defconfig   gcc-13.2.0
mips                      maltasmvp_defconfig   gcc-13.2.0
mips                  maltasmvp_eva_defconfig   clang-20
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240827   gcc-13.2.0
nios2                 randconfig-002-20240827   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240827   gcc-13.2.0
parisc                randconfig-002-20240827   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                        cell_defconfig   clang-20
powerpc                        icon_defconfig   clang-20
powerpc               randconfig-001-20240827   gcc-13.2.0
powerpc               randconfig-002-20240827   gcc-13.2.0
powerpc               randconfig-003-20240827   gcc-13.2.0
powerpc                     sequoia_defconfig   clang-20
powerpc                    socrates_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240827   gcc-13.2.0
powerpc64             randconfig-002-20240827   gcc-13.2.0
powerpc64             randconfig-003-20240827   gcc-13.2.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240827   gcc-13.2.0
riscv                 randconfig-002-20240827   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240827   gcc-13.2.0
s390                  randconfig-002-20240827   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                         ecovec24_defconfig   gcc-13.2.0
sh                            migor_defconfig   gcc-13.2.0
sh                    randconfig-001-20240827   gcc-13.2.0
sh                    randconfig-002-20240827   gcc-13.2.0
sh                          rsk7203_defconfig   gcc-13.2.0
sh                           se7712_defconfig   gcc-13.2.0
sh                   secureedge5410_defconfig   gcc-13.2.0
sh                             shx3_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240827   gcc-13.2.0
sparc64               randconfig-002-20240827   gcc-13.2.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240827   gcc-13.2.0
um                    randconfig-002-20240827   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240827   clang-18
x86_64       buildonly-randconfig-001-20240828   clang-18
x86_64       buildonly-randconfig-002-20240827   clang-18
x86_64       buildonly-randconfig-002-20240828   clang-18
x86_64       buildonly-randconfig-003-20240827   clang-18
x86_64       buildonly-randconfig-003-20240828   clang-18
x86_64       buildonly-randconfig-004-20240827   clang-18
x86_64       buildonly-randconfig-004-20240828   clang-18
x86_64       buildonly-randconfig-005-20240827   clang-18
x86_64       buildonly-randconfig-005-20240828   clang-18
x86_64       buildonly-randconfig-006-20240827   clang-18
x86_64       buildonly-randconfig-006-20240828   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240827   clang-18
x86_64                randconfig-001-20240828   clang-18
x86_64                randconfig-002-20240827   clang-18
x86_64                randconfig-002-20240828   clang-18
x86_64                randconfig-003-20240827   clang-18
x86_64                randconfig-003-20240828   clang-18
x86_64                randconfig-004-20240827   clang-18
x86_64                randconfig-004-20240828   clang-18
x86_64                randconfig-005-20240827   clang-18
x86_64                randconfig-005-20240828   clang-18
x86_64                randconfig-006-20240827   clang-18
x86_64                randconfig-006-20240828   clang-18
x86_64                randconfig-011-20240827   clang-18
x86_64                randconfig-011-20240828   clang-18
x86_64                randconfig-012-20240827   clang-18
x86_64                randconfig-012-20240828   clang-18
x86_64                randconfig-013-20240827   clang-18
x86_64                randconfig-013-20240828   clang-18
x86_64                randconfig-014-20240827   clang-18
x86_64                randconfig-014-20240828   clang-18
x86_64                randconfig-015-20240827   clang-18
x86_64                randconfig-015-20240828   clang-18
x86_64                randconfig-016-20240827   clang-18
x86_64                randconfig-016-20240828   clang-18
x86_64                randconfig-071-20240827   clang-18
x86_64                randconfig-071-20240828   clang-18
x86_64                randconfig-072-20240827   clang-18
x86_64                randconfig-072-20240828   clang-18
x86_64                randconfig-073-20240827   clang-18
x86_64                randconfig-073-20240828   clang-18
x86_64                randconfig-074-20240827   clang-18
x86_64                randconfig-074-20240828   clang-18
x86_64                randconfig-075-20240827   clang-18
x86_64                randconfig-075-20240828   clang-18
x86_64                randconfig-076-20240827   clang-18
x86_64                randconfig-076-20240828   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240827   gcc-13.2.0
xtensa                randconfig-002-20240827   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
