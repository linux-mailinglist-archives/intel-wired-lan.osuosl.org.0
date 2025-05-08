Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09305AAF64E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 11:05:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DD1B410DE;
	Thu,  8 May 2025 09:05:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iNRUBycF7Tbu; Thu,  8 May 2025 09:05:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 706BF410BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746695143;
	bh=aqh+HuaL7kMDQ0p02+ge1xw4jN41zYrx1/6TIXvbBXo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xxVc0HrWpPmYgdtNFYtjLPkBM6qQSHP5S4t3BIJ+7JZs2yzbCQUQTpFRWrhp0RYS4
	 Z/FfzJtt0Em6flVCb+cNadjvbJBZ4l8PLV5wz/EQMnxM4m28KqS6LeS7EXD2jvcZZQ
	 rYRADaV3thw6PrVzqSkMX7EMXk65mGnd1s93s7Shjl9FhDfQt9yOYYdSDHuA+9HaYN
	 KWGb/u+B23x8lyzEIcJbKQplBC2b13MWiSjDwPRnQjMkrMT7joS2ajK+jWlgfHJFq7
	 pwfYTD8Jshe98VNx1/ImrmnxllphBM9Ud6mhBqvf7yLRkfBg09YUzdJLyMRK8xnANX
	 u8Y0Ma8/ZEWDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 706BF410BD;
	Thu,  8 May 2025 09:05:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B19615A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 09:05:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C1FD405DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 09:05:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DHxwxKVEAhKV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 09:05:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7831640BFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7831640BFF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7831640BFF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 09:05:40 +0000 (UTC)
X-CSE-ConnectionGUID: c7vHqJ11T02JuAZLFtsHzA==
X-CSE-MsgGUID: NwCgc0JNREyaOGBLT8dWtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="73846619"
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="73846619"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 02:05:39 -0700
X-CSE-ConnectionGUID: qhnT7oW9TwaLT4VMWtrQXQ==
X-CSE-MsgGUID: /q7MF/xQRxGAprr1r8xmNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="135930940"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 08 May 2025 02:05:39 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uCxCC-000AoR-1F
 for intel-wired-lan@lists.osuosl.org; Thu, 08 May 2025 09:05:36 +0000
Date: Thu, 08 May 2025 17:05:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505081710.YPXa3jfw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746695140; x=1778231140;
 h=date:from:to:subject:message-id;
 bh=LDxhtYbmnTtMHdyJ3HOWYAgLnxDPlXi2T79GKRwgag4=;
 b=PxB2GUH6BpVqL5+eMiIPVwJPUXNsofpJoKs+O8jw3CXFWQyBlwuys6yv
 hpu1cCHSKNqzI8HGku8AglU2q1Ao5f1G8NT+6bOWOCl9qWib+qI5jUj3C
 eTt6HljSgFyZ2NSypDmt1igEBcgRXHuGvWRktbXH9r1Hmby1vMPKDlw+e
 nKi6mibj08inX1JpHac3SqumuGU6n2tCy81WsU40q58yPCu5qscGhTSjS
 lcmM5OPwDtDYDhD3frF/Jj39aZ+V7U0rhCYi6qFvQ4X1/GxnFJ8GGsC/g
 pBO2SDlmks5AXEtGsQ+93tCleM++uaQIz6cJqmA6ikzUYFF8BxKTS6qJ8
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PxB2GUH6
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 9540984da649d46f699c47f28c68bbd3c9d99e4c
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 9540984da649d46f699c47f28c68bbd3c9d99e4c  Merge tag 'wireless-2025-05-06' of https://git.kernel.org/pub/scm/linux/kernel/git/wireless/wireless

elapsed time: 1832m

configs tested: 83
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha               allnoconfig    gcc-14.2.0
alpha              allyesconfig    clang-19
alpha              allyesconfig    gcc-14.2.0
arc                allmodconfig    clang-19
arc                allmodconfig    gcc-14.2.0
arc                 allnoconfig    gcc-14.2.0
arc                allyesconfig    clang-19
arc                allyesconfig    gcc-14.2.0
arm                allmodconfig    clang-19
arm                allmodconfig    gcc-14.2.0
arm                 allnoconfig    clang-21
arm                 allnoconfig    gcc-14.2.0
arm                allyesconfig    clang-19
arm                allyesconfig    gcc-14.2.0
arm64              allmodconfig    clang-19
arm64               allnoconfig    gcc-14.2.0
csky                allnoconfig    gcc-14.2.0
hexagon            allmodconfig    clang-17
hexagon            allmodconfig    clang-19
hexagon             allnoconfig    clang-21
hexagon             allnoconfig    gcc-14.2.0
hexagon            allyesconfig    clang-19
hexagon            allyesconfig    clang-21
i386               allmodconfig    clang-20
i386               allmodconfig    gcc-12
i386                allnoconfig    clang-20
i386                allnoconfig    gcc-12
i386               allyesconfig    clang-20
i386               allyesconfig    gcc-12
i386                  defconfig    clang-20
loongarch          allmodconfig    gcc-14.2.0
loongarch           allnoconfig    gcc-14.2.0
m68k               allmodconfig    gcc-14.2.0
m68k                allnoconfig    gcc-14.2.0
m68k               allyesconfig    gcc-14.2.0
microblaze         allmodconfig    gcc-14.2.0
microblaze          allnoconfig    gcc-14.2.0
microblaze         allyesconfig    gcc-14.2.0
mips                allnoconfig    gcc-14.2.0
nios2               allnoconfig    gcc-14.2.0
openrisc            allnoconfig    clang-21
openrisc            allnoconfig    gcc-14.2.0
openrisc           allyesconfig    gcc-14.2.0
parisc             allmodconfig    gcc-14.2.0
parisc              allnoconfig    clang-21
parisc              allnoconfig    gcc-14.2.0
parisc             allyesconfig    gcc-14.2.0
powerpc            allmodconfig    gcc-14.2.0
powerpc             allnoconfig    clang-21
powerpc             allnoconfig    gcc-14.2.0
powerpc            allyesconfig    clang-21
powerpc            allyesconfig    gcc-14.2.0
riscv              allmodconfig    clang-21
riscv              allmodconfig    gcc-14.2.0
riscv               allnoconfig    clang-21
riscv               allnoconfig    gcc-14.2.0
riscv              allyesconfig    clang-16
riscv              allyesconfig    gcc-14.2.0
s390               allmodconfig    clang-18
s390               allmodconfig    gcc-14.2.0
s390                allnoconfig    clang-21
s390               allyesconfig    gcc-14.2.0
sh                 allmodconfig    gcc-14.2.0
sh                  allnoconfig    gcc-14.2.0
sh                 allyesconfig    gcc-14.2.0
sparc              allmodconfig    gcc-14.2.0
sparc               allnoconfig    gcc-14.2.0
um                 allmodconfig    clang-19
um                  allnoconfig    clang-21
um                 allyesconfig    clang-19
um                 allyesconfig    gcc-12
x86_64              allnoconfig    clang-20
x86_64             allyesconfig    clang-20
x86_64                defconfig    clang-20
x86_64                defconfig    gcc-11
x86_64                    kexec    clang-20
x86_64                 rhel-9.4    clang-20
x86_64             rhel-9.4-bpf    clang-18
x86_64      rhel-9.4-kselftests    clang-20
x86_64           rhel-9.4-kunit    clang-18
x86_64             rhel-9.4-ltp    clang-18
x86_64            rhel-9.4-rust    clang-18
xtensa              allnoconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
