Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B8B69F878
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 16:57:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15A78416DA;
	Wed, 22 Feb 2023 15:57:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15A78416DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677081452;
	bh=M1orPTL8e12CerW9zLGqXUsG8zWD1BNn9UpqYqfWWNs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HG0LbKDVqPfnWfp5Ooz5GyFwqdY2Hu0h/dEIMWExJZivSCkcEvZ8eXCdI/d5Cb5Nr
	 tjOt4Zo6hvN1pwfZutc66oMcjBj8kXtfP+rkix64zze6LRumvJ013SuiUTYEBHg13A
	 4C+cI0lulK54gWESZlUthzC0VduZ78KlGrKUo+oSNK0DPsQI5/XFgouFmyGaLhds0H
	 jndwIvQPch9N6MzNAU2zhfl9zfWCGCcrgjjFG3PRdyq1BRgLa2UNUhWLzD/nIX+CNR
	 NLZdoDLpMtKnKpdF1B29dY+TXAP/0DfDaFBFog8y0JaD5TmYKS1VszlNZjIWx5Y+B7
	 21M3KN4LF4T2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OpHpgTGi5gHD; Wed, 22 Feb 2023 15:57:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EECD0416BD;
	Wed, 22 Feb 2023 15:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EECD0416BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F9E61BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 15:57:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8F246116E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 15:57:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8F246116E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JW4bFNA_hAka for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 15:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A4146116C
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A4146116C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 15:57:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="330687282"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="330687282"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 07:57:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="674146838"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="674146838"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 22 Feb 2023 07:57:22 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pUrUf-0000XN-1J;
 Wed, 22 Feb 2023 15:57:21 +0000
Date: Wed, 22 Feb 2023 23:56:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f63b29.Anu3MFD7CL0DnNtJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677081444; x=1708617444;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=QSJg9fY7Tqc0lSoa+UNGYoMz64ZW/OA/y8L+TpKqqsg=;
 b=Atb/D03VaR+8N4C+7+62q5fOlp3swW5SiC7ACBPVQmlxigWnOYuPml4V
 Qb9f1zIjlmktTJlEOIs2aq41kRWoKeqJtzeqeQsl3RMtsjRWs8zR5Tku1
 geYkACzPKKbnbo/qr3fuz923qrbIE56KHNus7GyGmPJXjzjHZ21GglEgj
 sfTBNtpsMh03bMbnaoWp/+e1WSDXx2vXCb2DXN1vBperDsEbV59U9VTVv
 Xhz9NdNrLY6wfK8ALaWX37fWql3p4/o88Qrs2TM6XRXkE2+01vH2cHXY4
 9SxdeWb9P+SPqDmAJBkbTBi6B6RxR1Ui9DXUmm/P81jQLxqh2m239zQFT
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Atb/D03V
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 f922c7b1c1c45740d329bf248936fdb78c0cff6e
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
branch HEAD: f922c7b1c1c45740d329bf248936fdb78c0cff6e  sefltests: netdevsim: wait for devlink instance after netns removal

elapsed time: 1504m

configs tested: 67
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230219
arc                  randconfig-r043-20230220
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230220
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
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
riscv                randconfig-r042-20230219
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230219
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3

clang tested configs:
arm                  randconfig-r046-20230219
hexagon              randconfig-r041-20230219
hexagon              randconfig-r041-20230220
hexagon              randconfig-r045-20230219
hexagon              randconfig-r045-20230220
riscv                randconfig-r042-20230220
s390                 randconfig-r044-20230220
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
