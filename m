Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 208F5B0174B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 11:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCB18820B3;
	Fri, 11 Jul 2025 09:10:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eSbBTa_2ibJS; Fri, 11 Jul 2025 09:10:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08126820B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752225013;
	bh=oUQph8tQt0V+WdvSGyeKnGN4w2Gm1BkAE1IJMr6HaMc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EKE7/jRdsaB5Q+/Cfk0hs2PjA+oXrvIlIMnH8u/uYDVrhu2psgnDbPw5u2H3Jwljr
	 83Nzm/e4At56pC3QKLAV/m8Sa78X9wCrKuBo1ScWXio5Vyi2V0t1t/nB51CVv7ZNXO
	 H2yLApr7LjgZna/HQeKQpZ4TtngEWKJ0bO91sikquCvlld6K9tSkMi39nTUy3rpU53
	 QPh7pq/xOhoALHh08k32qdUtaxcudePRGffLOwmqbG7ZRoqZrZ+tmxSBuTlylTPpf7
	 HSmpitbLQpWXYG1rygml5FyKbiUcRWlSAAwC0AJ5T8cQcMkZ3hQ0iOqoAPtq7Oq4p0
	 nr+FmpbWvj3pw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08126820B6;
	Fri, 11 Jul 2025 09:10:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3034C199
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 09:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 223E240333
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 09:10:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MPLErW3jeOfV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 09:10:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5EC5840266
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EC5840266
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EC5840266
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 09:10:09 +0000 (UTC)
X-CSE-ConnectionGUID: BRXZSZs6T82Q2CYtIrqWjw==
X-CSE-MsgGUID: R9w8XfnSR+SIia2FAEHyyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="65870269"
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="65870269"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 02:10:09 -0700
X-CSE-ConnectionGUID: cD5G4qkiTsa/t+Ko4CogGQ==
X-CSE-MsgGUID: 8B2ZP5EAQRe258VhsSyOZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="187307778"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 11 Jul 2025 02:10:08 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ua9le-0006BV-19
 for intel-wired-lan@lists.osuosl.org; Fri, 11 Jul 2025 09:10:06 +0000
Date: Fri, 11 Jul 2025 17:09:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507111708.q4AOXsGr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752225010; x=1783761010;
 h=date:from:to:subject:message-id;
 bh=Cbc69+zIZm3bk9GQ5FflIzfuDr4z/Wvs0/HNsm0SFrE=;
 b=D73OAV6aQsjIEH7XfcE9NeHGA/Z5AJmXs5QAqa8EYNL94kU1cj+14DlF
 564wcdDHAPDliD3gzddZqMxyP5acJHbVRjrJDPkHqFMEd5IsZUPCMlGny
 hy71zzm6AQc/P+gREaLCxwUaDu2H7bfdhwlQloATtVPvUnVgTo/7vp9p5
 p5iOKNvWKaeYathwN63XeAQtpWCKXeoP/SXBCydK3QNVyH8t+xCZhA2T/
 HNpYwEXx/IWNxBwp+tDgz3cvwoSRY6Sre9evYstWiOxqF5H3TOjpLSpFg
 NcXbmEKXKLH1YmHfBVFhqyJCHnZ96xjWM1TA4iXPQyMZWzXcv1uPxXXqe
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D73OAV6a
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 e090f978054e1cfcd970234589168fcbcba33976
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: e090f978054e1cfcd970234589168fcbcba33976  Merge branch 'net-dsa-rzn1_a5psw-add-compile_test'

elapsed time: 1111m

configs tested: 12
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc       allmodconfig    gcc-15.1.0
arc       allyesconfig    gcc-15.1.0
arm       allmodconfig    gcc-15.1.0
arm       allyesconfig    gcc-15.1.0
arm64     allmodconfig    clang-19
openrisc  allyesconfig    gcc-15.1.0
parisc    allmodconfig    gcc-15.1.0
parisc    allyesconfig    gcc-15.1.0
powerpc   allmodconfig    gcc-15.1.0
powerpc   allyesconfig    clang-21
riscv     allmodconfig    clang-21
riscv     allyesconfig    clang-16

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
