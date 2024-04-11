Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A95208A1B3D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 19:26:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF7B26128F;
	Thu, 11 Apr 2024 17:26:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b470jfoFdm-S; Thu, 11 Apr 2024 17:26:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA401612E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712856384;
	bh=RGWlhbnxSOs29LvytJoWXjgr5obg/1j562Dnstvw0t4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QUrLfNegYbf1in2Si/RNrVPP6KNNPSvMENA5x9Oa5YWhS7STl3Df14Z3a+kz7kZ0k
	 FvayP+THgCTMj1ea3qz/RLjUK/OeBiEzocPz3NCMYzlx5HAlVT9SFzJDP+/SJbCXTh
	 7ondAN3o8rrS58MkU9oBG0YbfdLzCmTfSinHymnucONrrldAvfweRXiRV379vYJhYH
	 pEguqNN2MXtIuFef2c4LcpnO/5HdksA3hz6GiE/Z6ZMkeUGjeDpFky+gh3LI+hB+DB
	 JB+Bme0zNhsdvd/SZSUn8GUhXwSYVVlZgyRVn2KSqb121Ov4x7VF//ABrhDx/3jaqJ
	 fypAahPqMOUgA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA401612E5;
	Thu, 11 Apr 2024 17:26:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 906241BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 17:26:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BFA340196
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 17:26:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r-0HmYfdClUt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 17:26:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 27E484011A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27E484011A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 27E484011A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 17:26:20 +0000 (UTC)
X-CSE-ConnectionGUID: kEyORacvSWuju30DrHYrbw==
X-CSE-MsgGUID: v/KX1fTKRpCp8kyuzu4zYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8460880"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; 
   d="scan'208";a="8460880"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 10:26:20 -0700
X-CSE-ConnectionGUID: R7QCHYIBQLGto39n/6Q+Uw==
X-CSE-MsgGUID: 9EH2GyzTScCM0L4UqpBuQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="25433858"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 11 Apr 2024 10:26:19 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ruyBl-0008qf-0e
 for intel-wired-lan@lists.osuosl.org; Thu, 11 Apr 2024 17:26:17 +0000
Date: Fri, 12 Apr 2024 01:25:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404120124.VvQu2bvB-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712856381; x=1744392381;
 h=date:from:to:subject:message-id;
 bh=2+qPjN5CD60kJihfcdX8gRhWUzgUfQKmlqi0rvOYq98=;
 b=UM+RUVTtgBf99BRRwFKSnKdlZeSu2mcvO5qFBFJkWZ3nmM1kyawZc43/
 h4ISh+5IQz/VZ8ALBwHvN/fmsAj8A3AekVNXDmnBH1j3nJnCG48+PWO4Z
 utr6rnZPT0neHlxqBAMLQWIEz4bRs6s/a52DpbcOAaYh8XHEAs9QCSVlQ
 tNxf7MgBl2jXoG4Y3GFkgt++ffrpQS3NGSigg9x0GPsTEfHkhIUrHV7TR
 HpurBk63U0uTOGFW94zdu9q7lnw/bIadb+OehG87t3eI5jQV4qblmGl5D
 AdZpWvk9XHVy5DO0Vlp9n6iENa0N6kuebbpK3RekHryVA1Iu8+CiZ8eg7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UM+RUVTt
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 414e576fb08f108b061cbc1fb964e51ff3467985
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 414e576fb08f108b061cbc1fb964e51ff3467985  Merge branch 'selftests-move-bpf-offload-test-from-bpf-to-net'

elapsed time: 1173m

configs tested: 156
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                   randconfig-001-20240411   gcc  
arc                   randconfig-002-20240411   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                           omap1_defconfig   gcc  
arm                   randconfig-001-20240411   gcc  
arm                   randconfig-002-20240411   gcc  
arm                   randconfig-004-20240411   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-002-20240411   gcc  
arm64                 randconfig-003-20240411   gcc  
arm64                 randconfig-004-20240411   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240411   gcc  
csky                  randconfig-002-20240411   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240411   clang
i386         buildonly-randconfig-002-20240411   clang
i386         buildonly-randconfig-003-20240411   clang
i386         buildonly-randconfig-004-20240411   clang
i386         buildonly-randconfig-005-20240411   clang
i386         buildonly-randconfig-006-20240411   clang
i386                                defconfig   clang
i386                  randconfig-001-20240411   gcc  
i386                  randconfig-002-20240411   gcc  
i386                  randconfig-003-20240411   clang
i386                  randconfig-004-20240411   clang
i386                  randconfig-005-20240411   gcc  
i386                  randconfig-006-20240411   clang
i386                  randconfig-011-20240411   clang
i386                  randconfig-012-20240411   gcc  
i386                  randconfig-013-20240411   gcc  
i386                  randconfig-014-20240411   gcc  
i386                  randconfig-015-20240411   clang
i386                  randconfig-016-20240411   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240411   gcc  
loongarch             randconfig-002-20240411   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                           sun3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240411   gcc  
nios2                 randconfig-002-20240411   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc                randconfig-001-20240411   gcc  
parisc                randconfig-002-20240411   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240411   gcc  
powerpc               randconfig-003-20240411   gcc  
powerpc64             randconfig-002-20240411   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-002-20240411   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                    randconfig-001-20240411   gcc  
sh                    randconfig-002-20240411   gcc  
sh                           se7206_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240411   gcc  
sparc64               randconfig-002-20240411   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240411   gcc  
um                    randconfig-002-20240411   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240411   gcc  
x86_64       buildonly-randconfig-004-20240411   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-003-20240411   gcc  
x86_64                randconfig-005-20240411   gcc  
x86_64                randconfig-012-20240411   gcc  
x86_64                randconfig-014-20240411   gcc  
x86_64                randconfig-015-20240411   gcc  
x86_64                randconfig-016-20240411   gcc  
x86_64                randconfig-074-20240411   gcc  
x86_64                randconfig-075-20240411   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240411   gcc  
xtensa                randconfig-002-20240411   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
