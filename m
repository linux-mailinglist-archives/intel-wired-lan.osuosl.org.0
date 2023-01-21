Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA2567642A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 07:28:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC19260FD9;
	Sat, 21 Jan 2023 06:28:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC19260FD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674282490;
	bh=EyZx2tSxtS3Q2is3leYUb58bbIs7FolYFraUMffjEvQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9D1EFRYn+TOY8ykNoTmLSp9eG7VYgk6Swcxyl9zqYj9A6SbPs96wouqv9v2g3SI9p
	 HZtjWVl6Y6fUXgWdc5GZY9T7gRUgaWCbU9OVjIMm0djOpgKFNyF+k3QomvsYl4jeEr
	 qDMpKANMnR4axD1k41inZgQTtw2fvi3bKAwYeLSItszmF4AE1GPkS/QK7FUYfYEjQK
	 /5oiQZjK2h33VQAjtp9UoP24pctEjCwX3AhHO84D+XeHGNG4pwf/Blrl7Om5qRfmv8
	 XtBpj6+Yn/xcGKNKMbv9b+LmnlbED++E/UBYmoeHp55ESUg/11sjX24TIY6mQPf1+J
	 iUlA795PPtkLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q128Rp7mKKGA; Sat, 21 Jan 2023 06:28:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD10C60E05;
	Sat, 21 Jan 2023 06:28:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD10C60E05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D07771BF616
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 06:28:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB09E60E05
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 06:28:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB09E60E05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jdb6fkzvYGoS for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 06:28:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF7B760DF0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF7B760DF0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 06:28:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="324451373"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="324451373"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 22:28:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="803318930"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="803318930"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2023 22:28:01 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJ7M8-0003fu-1S;
 Sat, 21 Jan 2023 06:28:00 +0000
Date: Sat, 21 Jan 2023 14:27:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63cb85b5.v4RHCJ2V4EzNlgZK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674282482; x=1705818482;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dT+s8xMQnwZSFdWQP+uxK3ea9oHZypy7SiKPGhPyq+4=;
 b=NlYexAu8tys7HRNbOVU1CqTF3S3tiEGErPz3VHsq17NrUXI+k85HtINl
 wDz2LNmS97p5TTMjnOHo+OKhN3ShMswhtLsvHyFGOPmrAxwyzCjNoW7ue
 JGHD906fS1MjTfymolIYIdYL5w9m8PDxDI38V93MRiRycJMTGUrhmXScm
 bjbwqoFsdy/Db1ecx6ooVv5cmLtruYJodsXMFJpHDeuvpGvB6l8q+PLxI
 awxyBHxJJ4psUf8qtVSfhGtbOWt9PdqMFmqW510X8maqBps+ak7Pfq3GU
 rU5pjxV5vWuOV49HVHBJxOQkh+hOlctPsH/cglcwSywtZJiHgTfyFsFHT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NlYexAu8
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 dbb0decd2143267d4e628567a9c93c3e48702a0e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: dbb0decd2143267d4e628567a9c93c3e48702a0e  ice: Fix broken link in ice NAPI doc

elapsed time: 722m

configs tested: 66
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
x86_64                            allnoconfig
s390                                defconfig
s390                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
s390                             allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-c001
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
um                           x86_64_defconfig
um                             i386_defconfig
ia64                             allmodconfig
i386                                defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
powerpc                           allnoconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
m68k                             allyesconfig
sh                               allmodconfig
i386                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
arm                            hisi_defconfig
arm                      footbridge_defconfig
mips                           ci20_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
x86_64                          rhel-8.3-rust
riscv                randconfig-r042-20230119
s390                 randconfig-r044-20230119
hexagon              randconfig-r041-20230119
hexagon              randconfig-r045-20230119
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
mips                       lemote2f_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                     ksi8560_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
powerpc                     tqm8540_defconfig
powerpc                    ge_imp3a_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
