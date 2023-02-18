Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA58369B931
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Feb 2023 10:54:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BC088212A;
	Sat, 18 Feb 2023 09:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BC088212A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676714047;
	bh=XvSIIG4KwJM3WsBz0gVwnp6IBrRsYvNTOkUuWYD6KrE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Vmlg9+cKHAuioRznv7c7lRENlv1YrDnP+vhLg4MUeW2Qg6HJg7Z0YT3BDC4NjQ2b3
	 v5bUjJy7oeChO9DiU+NQ4uCzG71PGdF74/QxNIuSDPvO49BsJRR7hFDEzyufv7YeV0
	 RhbHyy2x+eotfQOZhkt50iC2wNbl5M0uJAx35q4Axm0sTEhOAcyxL2lRIw22anCk7m
	 fbt9x00gvHSSwvPzWFohsknhXXqZKFpNto/FqNQKdmE+FL8ZdhZmaTc5PtN3MLit1R
	 BQYK+gMmQTKc/jGuXH4GRekWp0o9RrVOK3/Wqdokf5PqF7e5Hff1sdj2QLV9lzRBKt
	 O9R8iYdTWxXpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3b85D8FrwFgY; Sat, 18 Feb 2023 09:54:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C6C882114;
	Sat, 18 Feb 2023 09:54:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C6C882114
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 052941BF381
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Feb 2023 09:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D186C60B8D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Feb 2023 09:54:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D186C60B8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GCocEhlxOfaX for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Feb 2023 09:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD21160AE0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD21160AE0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Feb 2023 09:53:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="396837602"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="396837602"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2023 01:53:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="672866393"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="672866393"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 18 Feb 2023 01:53:55 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pTJul-000CHR-0G;
 Sat, 18 Feb 2023 09:53:55 +0000
Date: Sat, 18 Feb 2023 17:53:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f0a029.wSx2t5NbxUHq++Uu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676714037; x=1708250037;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tKC5Zgbk8biPi91z2KpdGDe2r4R4+u1zmj2PlTXpbBQ=;
 b=bgVFMWGrnrTcEt+j3BLpjah93hYOQdV2NythpxtPb2kdlQCJuA/Vzspu
 x469+7EBrwFMZzlS7e+pG06IY/ncGBXxxl/FrGa9PtW8h32Opva3EaJC1
 1GOvkt670jnddfkgQTOqU8iEJKpAxxvuOF17N8yBkkOLbYYUQBPx4XMIC
 k6uPohGU0KDHC6rtghA0Aae24yVrISGSy+pnBxgi2awZTMPZKuQA59iSo
 X6iz4819gW3vJ7qNq1KSmTYYO72sgpmORijKYOkZpnFG3jRGcI0U2p3V9
 C/YLZIeZbB3AgK+7hQIGUPnVQHUAnDyx1hQWWFEBO55PqJfMVLSZ0UTan
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bgVFMWGr
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 bce6649a76395a4fde6b96f7652dfd44d0358f75
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: bce6649a76395a4fde6b96f7652dfd44d0358f75  ice: Write all GNSS buffers instead of first one

elapsed time: 919m

configs tested: 79
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                         haps_hs_defconfig
arc                  randconfig-r043-20230217
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                       multi_v4t_defconfig
arm                         nhk8815_defconfig
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                            mac_defconfig
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
riscv                randconfig-r042-20230217
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230217
sh                               allmodconfig
sh                         ecovec24_defconfig
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
xtensa                    xip_kc705_defconfig

clang tested configs:
arm                  randconfig-r046-20230217
hexagon              randconfig-r041-20230217
hexagon              randconfig-r045-20230217
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
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
