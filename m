Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1052732634
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 06:29:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D0C283BCA;
	Fri, 16 Jun 2023 04:29:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D0C283BCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686889782;
	bh=Yu/pvxUPDsEVoEu/Atf46ZGnOsDd8x53526UeqaEvQw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SaoEtY/oGgDR+9yuGZjOw5Os5zaW8LJVU2nNYD69o4BLNDHkq1+PlcPszOlupTAz1
	 OMingHvr/V2NHis4ScVJFwHEs4U9mMwAivpMKvHBR0YmF+6xBilGhg+nxCkszlRCjs
	 rVym2Ln8lY0QBA7S8xuPKvBFoHNYKmJUOiYJb+YhdepE7ZRgCht+YXV7UWb0s5vrPT
	 I63xHknPuL3G3hICHfDkdJYm4e3qM3PUj3E0I0bAkk5U6YcJdT2x8zfXFzet4lebS9
	 XeWHeGHQ/be3jZK5yBSOKZ6J5ipxJ9/v1Ks0skT0JtFio7JwUFlbYqkYTMuXRFFFaY
	 Bljzxorm7XCjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h3zNFZ75O5ys; Fri, 16 Jun 2023 04:29:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F342832DC;
	Fri, 16 Jun 2023 04:29:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F342832DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 161A31BF30C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 04:29:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0DBB415E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 04:29:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0DBB415E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7IrBS9nn8cFV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 04:29:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6093415C3
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6093415C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 04:29:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="356602801"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="356602801"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 21:29:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="712712398"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="712712398"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 15 Jun 2023 21:29:07 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qA158-0000nI-37
 for intel-wired-lan@lists.osuosl.org; Fri, 16 Jun 2023 04:29:06 +0000
Date: Fri, 16 Jun 2023 12:28:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306161251.oEsxSEx5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686889774; x=1718425774;
 h=date:from:to:subject:message-id;
 bh=sG8T5rc3o0n+jW6mA7PTtfSP81sFiOQSHjvs2sWtXys=;
 b=DymT38Me+XKEv90pZS9EZRMw03IXoQ+XXMeFiaTGzvmD/656lynsgErm
 vvxsG8JGS8D6akemtxmRvxn1Ed/IbhhGjA2TG03aLt+4aKyWS6SG7lVB2
 v1VY8BDynA/PQk9ECOX7sAW47RdSFwTmAgD7WShP3p7+8A+gC+uKDnAos
 fAkYGHrRXmFzDphTQZYJLcASrXkDWJSZsq5h0xUccZieWSpH+Qyh2XJRZ
 61eWDHxKAtzrDgUxDF7JsKBa5q6q1T1BgNq6NI3bC0ixXjNvXu+d4f1Mm
 kzVjwH0RSxovhwAT1Sl8H9NFzSS3jRehSVf/E5fF/8cLBFPxeK22guGqh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DymT38Me
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6cb737781bde573debf0618d2db9f9f675731c60
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
branch HEAD: 6cb737781bde573debf0618d2db9f9f675731c60  ice: Fix tx queue rate limit when TCs are configured

elapsed time: 723m

configs tested: 113
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230615   gcc  
alpha                randconfig-r023-20230615   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230615   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230614   clang
arm                                 defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                  randconfig-r046-20230615   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r033-20230615   clang
hexagon              randconfig-r041-20230615   clang
hexagon              randconfig-r045-20230615   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r005-20230614   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230614   clang
i386                 randconfig-i002-20230614   clang
i386                 randconfig-i003-20230614   clang
i386                 randconfig-i004-20230614   clang
i386                 randconfig-i005-20230614   clang
i386                 randconfig-i006-20230614   clang
i386                 randconfig-i011-20230615   clang
i386                 randconfig-i012-20230615   clang
i386                 randconfig-i013-20230615   clang
i386                 randconfig-i014-20230615   clang
i386                 randconfig-i015-20230615   clang
i386                 randconfig-i016-20230615   clang
i386                 randconfig-r004-20230615   gcc  
i386                 randconfig-r024-20230615   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r014-20230614   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r012-20230614   gcc  
m68k                 randconfig-r013-20230614   gcc  
m68k                           virt_defconfig   gcc  
microblaze           randconfig-r013-20230614   gcc  
microblaze           randconfig-r031-20230615   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                    maltaup_xpa_defconfig   gcc  
mips                        omega2p_defconfig   clang
mips                 randconfig-r035-20230615   clang
nios2                               defconfig   gcc  
openrisc             randconfig-r016-20230614   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230614   gcc  
parisc               randconfig-r025-20230615   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     kilauea_defconfig   clang
powerpc                      makalu_defconfig   gcc  
powerpc              randconfig-r002-20230615   gcc  
powerpc              randconfig-r011-20230614   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv        buildonly-randconfig-r003-20230614   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r015-20230614   gcc  
riscv                randconfig-r036-20230615   gcc  
riscv                randconfig-r042-20230615   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230614   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230615   gcc  
s390                 randconfig-r021-20230615   clang
s390                 randconfig-r026-20230615   clang
s390                 randconfig-r032-20230615   gcc  
s390                 randconfig-r044-20230615   clang
sh                               allmodconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                   randconfig-r001-20230615   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230615   gcc  
x86_64               randconfig-a002-20230615   gcc  
x86_64               randconfig-a003-20230615   gcc  
x86_64               randconfig-a004-20230615   gcc  
x86_64               randconfig-a005-20230615   gcc  
x86_64               randconfig-a006-20230615   gcc  
x86_64               randconfig-a011-20230615   clang
x86_64               randconfig-a012-20230615   clang
x86_64               randconfig-a013-20230615   clang
x86_64               randconfig-a014-20230615   clang
x86_64               randconfig-a015-20230615   clang
x86_64               randconfig-a016-20230615   clang
x86_64               randconfig-r022-20230615   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r006-20230614   gcc  
xtensa               randconfig-r003-20230615   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
