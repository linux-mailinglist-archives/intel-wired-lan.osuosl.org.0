Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B42733E1A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jun 2023 06:55:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E216423F8;
	Sat, 17 Jun 2023 04:55:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E216423F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686977726;
	bh=T+0fWw40UWUHOuxyaDswc67Px4YEj57RsmCMQ8ehRHM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BN7SEJeoz8MyQnW4VmLTcEfIGCTzvCJQPz/7BpwgS9bag/qjKhMZbXFM7Lof4Oqcx
	 YX+uXstAUzJlfw7RFEV3JKqaAUrNciX3E3DoUpfcMyMK/LfYsjJP+LnNYw705BuFmF
	 CKUuZlFODa2M8bf14MuVU2F3NvJQfm1RcJPGoKkUCokyamlofJbchl0Nli9/3iPN6e
	 cRc0/CWCT1x08O6n1JzPzcvDnD9qbVvfgHmHOjCgQgIFgwFIwADmESada4hgHD5kaX
	 QyL4e9TbWQ+44OPby6AAdvvdUQ9TmmehzaAxLyogwv5AfUvMokHsXwqSUi8jrcycxV
	 4Uidkpr7GjUkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GvQT2qiS-lJ1; Sat, 17 Jun 2023 04:55:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF5F3423DF;
	Sat, 17 Jun 2023 04:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF5F3423DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FBDC1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 04:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F4F4400CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 04:55:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F4F4400CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KCjJAG4hYI3p for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jun 2023 04:55:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7510400C7
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7510400C7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 04:55:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="356851885"
X-IronPort-AV: E=Sophos;i="6.00,249,1681196400"; d="scan'208";a="356851885"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 21:55:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="716268445"
X-IronPort-AV: E=Sophos;i="6.00,249,1681196400"; d="scan'208";a="716268445"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jun 2023 21:55:15 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qANxz-0002IC-0M
 for intel-wired-lan@lists.osuosl.org; Sat, 17 Jun 2023 04:55:15 +0000
Date: Sat, 17 Jun 2023 12:54:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306171239.Nd1Ypm9O-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686977717; x=1718513717;
 h=date:from:to:subject:message-id;
 bh=Gj77PMOavN0WY8RaYmwtF1JqgkGwuFwL/X/jUUIBE4A=;
 b=jz9KeoucDsHAnS9oWD+ho2oxniAEbzwlSO8GNYQBlTYVVCsyA2th4WzS
 dmbSfA9YdzJLTDnohR5lUVgNFfGQusf363xOO6QZc69lJIWovUzI4+8tF
 lzig6EGVRokMyK/Y92kSQGc3mMFyEaa1XZ4sjEorkWPxUq7eN5zgB+zOC
 5IkgAhVszVltzPAGHVSXNVGdSMOj28oA5VFQR0N278u1Pdu++8o+1vj8h
 XsJzYMeswnbigbyOaqvlQJ4T2tC+i/Qu5cQ9I7WGMZ/crDsCfR87tSKNt
 aXYoxcZpSUJLod1NGwe/Tjpjv1fb4GKFNslspJPIGHKxkLgXcUQUCw/ZF
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jz9Keouc
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 afdfa3db812052c83ecfdcf23d69adf40b9281b2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: afdfa3db812052c83ecfdcf23d69adf40b9281b2  igc: Handle PPS start time programming for past time values

elapsed time: 727m

configs tested: 68
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230616   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230616   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r033-20230616   gcc  
hexagon              randconfig-r026-20230616   clang
hexagon              randconfig-r041-20230616   clang
hexagon              randconfig-r045-20230616   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-r022-20230616   gcc  
i386                 randconfig-r024-20230616   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r032-20230616   gcc  
microblaze           randconfig-r006-20230616   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r031-20230616   gcc  
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r025-20230616   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r004-20230616   clang
powerpc              randconfig-r036-20230616   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230616   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230616   clang
s390                 randconfig-r044-20230616   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230616   gcc  
sh                   randconfig-r021-20230616   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r023-20230616   gcc  
sparc64              randconfig-r035-20230616   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r005-20230616   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
