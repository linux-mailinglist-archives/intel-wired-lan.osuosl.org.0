Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A369E6765F6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 12:23:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D0584168F;
	Sat, 21 Jan 2023 11:23:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D0584168F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674300207;
	bh=1i92nXrrhr+heDGWsfTsa8DPJIvappBBszhRAxG2gL0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=L97bK68k16zbD34xA6pM5H1qUuy4LGGWQL8U50OSdxPSVlunPT3H1Uqttugekg/w/
	 quHgIjzulcxFMAqTNoT0G4WWVv/UAbGW1eqDnKfAlMc9MZ8PG6eFoBigVQE+HFyQLt
	 UCiKH/gCSNU5Puro/DCag5bd9wSubjSU+qK4Tz0el28pJhIHBGKyGXVcFdjh2z00ET
	 UXOTlwt3x/GtTl8D0ZYyIjYtUp/8aFx2DnmgMsfz7st7rz8NvxuCL9yLugpDpxv4gM
	 bJ/X04X02pCHB2ePoVu/0mN4oPZUZq+QMwkJCOL2fEZ/6I4NZa2EKCQZfNRxchHRTe
	 /AhWJJhKsKPpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PUd-EDwPC7xZ; Sat, 21 Jan 2023 11:23:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF742410C9;
	Sat, 21 Jan 2023 11:23:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF742410C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 692CD1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 11:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DB8A40105
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 11:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DB8A40105
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 88cQlF1uuehI for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 11:23:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7C9A400F1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7C9A400F1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 11:23:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="306136426"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="306136426"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2023 03:23:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="662823997"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="662823997"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jan 2023 03:23:17 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJBxs-0003zy-0x;
 Sat, 21 Jan 2023 11:23:16 +0000
Date: Sat, 21 Jan 2023 19:23:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63cbcb23.ywszLGMLMgFNhNPI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674300198; x=1705836198;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=c/u1vPSarirAjAtbSI785XNc90uWpyUhlwlI68jurlo=;
 b=aZx1ZerDfMf8muM/BuWgEZPtqDUC9TMxl+Fsbmw4naXP3y0ivfQAhEv5
 VPxfep5G/0/0gb9IzUZaivsP2Hc62i0FJG7FhVLil2muGYnaUXu0Kl/6k
 8/HTsyvlYhxi1ZYPSwE9PpNSsFxOBgOkq1iIXwCIuGT71I/JzjgfIxBRD
 FDXqJo424yMhukLMFMlbht2YFBGvburp/bVjimLT8gIciixps7DrEf9vD
 P/M+iN3pfwosAuVLhgI1x704zHEmObV/OTwB6I3DiBeahbF/bqEhxEfxN
 9xUSOsPEsYrXE5jWkIB5FMycWBz3Kv54MEq+2YFjlZ8/1FqNXfMXUQMAP
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aZx1ZerD
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 b3c588cd553d6996cc97f3dc0a7081b9a9b36b48
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
branch HEAD: b3c588cd553d6996cc97f3dc0a7081b9a9b36b48  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 870m

configs tested: 80
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arm                  randconfig-r046-20230119
arc                  randconfig-r043-20230119
um                           x86_64_defconfig
um                             i386_defconfig
arm                                 defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm64                            allyesconfig
x86_64                        randconfig-a006
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
i386                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arm                            hisi_defconfig
arm                      footbridge_defconfig
mips                           ci20_defconfig
i386                          randconfig-c001
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sh                         apsh4a3a_defconfig
mips                           ip32_defconfig
mips                      maltasmvp_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
s390                       zfcpdump_defconfig
sh                           se7751_defconfig
sh                          rsk7269_defconfig
mips                        vocore2_defconfig
sh                           se7780_defconfig
sh                   sh7770_generic_defconfig
loongarch                         allnoconfig

clang tested configs:
hexagon              randconfig-r045-20230119
hexagon              randconfig-r041-20230119
riscv                randconfig-r042-20230119
s390                 randconfig-r044-20230119
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a016
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
