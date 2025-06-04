Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3494ACDE73
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jun 2025 15:05:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0007683E56;
	Wed,  4 Jun 2025 13:04:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rLEzMINmLdOi; Wed,  4 Jun 2025 13:04:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A04983E11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749042294;
	bh=ah1VI2q3PYqk2011/xRjLMYE/8LsivmVlPX/FSLnFJs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Z/hFhN25/w3OS46Ylw0qcCHW74+nCEbdCfafarpn7Ync5odHlEXQhrvrLBTIuZo8a
	 dUwKjw+7DFdDzixfJJ7kfZiEUby71SkXkpyxBUkiwgavC91GLGTbekbla1brA/4Avu
	 m9reAjvF/IrkZMQfIcB3qP98MOOHvTnqtJcrosNKr+xpXTy8/teeePtnIO3AN0SCw5
	 L5mGtf/XkZb8DUeaqkSHUaKumi3w7Xgrr7fcQjnN90XS0DYqhQdPw1l32B66ZURlCg
	 1B6e9uv/1GKJDeXvyf5l7BVv4ryqt0lh5w/dKpt8DxSL/vdf0HHJ64dtDsd/24zJUu
	 cswi5tb/KN+qA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A04983E11;
	Wed,  4 Jun 2025 13:04:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 773801A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 13:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68C9F41D6B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 13:04:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WosZsIjM6SIp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jun 2025 13:04:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 669C9400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 669C9400B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 669C9400B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 13:04:51 +0000 (UTC)
X-CSE-ConnectionGUID: ulkYsVUuSMK0a1mnLazzbw==
X-CSE-MsgGUID: hGIHmMdsQn6an1h8lolt9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51214830"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="51214830"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:04:51 -0700
X-CSE-ConnectionGUID: QR9it+2KQOGMmgyjlpgdqQ==
X-CSE-MsgGUID: 0Nd7r/qvSXeq6PZMOJmj+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="146124416"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 04 Jun 2025 06:04:50 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uMnnU-00038j-0T
 for intel-wired-lan@lists.osuosl.org; Wed, 04 Jun 2025 13:04:48 +0000
Date: Wed, 04 Jun 2025 21:04:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506042131.pM3pmKIe-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749042291; x=1780578291;
 h=date:from:to:subject:message-id;
 bh=Sm5nY0QgowahcrzCXBc/tPKS6ta9OU8teZ2cKTq24pM=;
 b=YH23mlzemYGjiRDLhRcRffABMFxLilo7+8XU844oSMI2NOj2NCfSIREn
 1QdSQv9RoXsISzvtm7TGkodds9B447MeHQKewthBLPqmbVZfpPVc7T0+G
 xe9ELkL6PC8OdF0qF6NXP7eav7NwgFROF+p2DG5odH2QJvASr1gifIf+H
 Rl08zOI946whDG96Z4MzaTsqBtQbgngOZG4O8+4MqVBS696MMa6kUaOTn
 9GN4fFIbl4diQHS+1CPx9W23ugIKTCDLq8yJOqfLh9gTVWq1y1b1gbduK
 VhxCMVIuAuRWgUt9EBzaOhAEyiIeFPbUS9J2+CJUE8II+Iq61/sXWrgzr
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YH23mlze
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0e74ba817150a4a54ff1984483be432a7b90154c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 0e74ba817150a4a54ff1984483be432a7b90154c  e1000e: set fixed clock frequency indication for Nahum 11 and Nahum 13

elapsed time: 1278m

configs tested: 34
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha        allyesconfig    gcc-15.1.0
arc          allmodconfig    gcc-15.1.0
arc          allyesconfig    gcc-15.1.0
arm          allmodconfig    gcc-15.1.0
arm          allyesconfig    gcc-15.1.0
arm64        allmodconfig    clang-19
hexagon      allmodconfig    clang-17
hexagon      allyesconfig    clang-21
i386         allmodconfig    gcc-12
i386          allnoconfig    gcc-12
i386         allyesconfig    gcc-12
i386            defconfig    clang-20
loongarch    allmodconfig    gcc-15.1.0
m68k         allmodconfig    gcc-15.1.0
m68k         allyesconfig    gcc-15.1.0
microblaze   allyesconfig    gcc-15.1.0
openrisc     allyesconfig    gcc-15.1.0
parisc       allmodconfig    gcc-15.1.0
parisc       allyesconfig    gcc-15.1.0
powerpc      allmodconfig    gcc-15.1.0
powerpc      allyesconfig    clang-21
riscv        allmodconfig    clang-21
riscv        allyesconfig    clang-16
s390         allmodconfig    clang-18
s390         allyesconfig    gcc-15.1.0
sh           allmodconfig    gcc-15.1.0
sh           allyesconfig    gcc-15.1.0
sparc        allmodconfig    gcc-15.1.0
um           allmodconfig    clang-19
um           allyesconfig    gcc-12
x86_64        allnoconfig    clang-20
x86_64       allyesconfig    clang-20
x86_64          defconfig    gcc-11
x86_64      rhel-9.4-rust    clang-18

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
