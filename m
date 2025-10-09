Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74400BC77CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Oct 2025 08:05:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6B7F40F53;
	Thu,  9 Oct 2025 06:05:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EMFOCV-y5PRz; Thu,  9 Oct 2025 06:05:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CE9940F54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759989956;
	bh=z0jm1hpAt0lHOJrmDg+KtZyOeXKwvvGbrCLXoij16WE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xCVCE+Q4OwTwiYEpK2GyBPUhrKrDR1g/7tT9En3xE7ps08mmS5GSFEfjlqEuA0Br2
	 g3Efmhww0B/OKshVEDPrEelFv8+w0aT/EqqEf0Q12KYgsKE3bQSkBR7u1YJmFR+5Y7
	 RpdP7ZidWxwF+M5EGQnJyvT3xCJdf9tars94SiLlk8pRcfUSQkh1pRxaIK+wizookH
	 YtjJwrgyy+X5cbbnCskmotCaa7y7bUBKsChQxlO3P2uiDwDmw16+xKchQLS80iqP8l
	 CLl3XmFibBty5bkapI5cL31+1kO3E2lBZvUpzqmMNa4AKkAHnNGGTkRTbemlxTxSnc
	 HHDYPCDMWlveg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CE9940F54;
	Thu,  9 Oct 2025 06:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E444D119
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 06:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C55B140D32
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 06:05:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PIxL4mtPdlOv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Oct 2025 06:05:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7D61D40389
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D61D40389
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D61D40389
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 06:05:53 +0000 (UTC)
X-CSE-ConnectionGUID: 3m5oy3EcRJKs8BTfP0WVbg==
X-CSE-MsgGUID: WDxD5x/8T5GbO1FMkmBaNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="79836712"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="79836712"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 23:05:54 -0700
X-CSE-ConnectionGUID: z1vq6IoERdyAmMYJepq8fw==
X-CSE-MsgGUID: P7uQhdc4Q2aLJfw12JMiKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="184657668"
Received: from lkp-server01.sh.intel.com (HELO 6a630e8620ab) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 08 Oct 2025 23:05:52 -0700
Received: from kbuild by 6a630e8620ab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v6jmf-00005L-29
 for intel-wired-lan@lists.osuosl.org; Thu, 09 Oct 2025 06:05:49 +0000
Date: Thu, 09 Oct 2025 14:05:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510091402.LbIURIqH-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759989954; x=1791525954;
 h=date:from:to:subject:message-id;
 bh=v89S+BOOIzHs3zDTn+yLBrFYba8VFjWB9H01xw6H1vw=;
 b=W5CNMO5u5Rvv89W8VdJksPQOd9rDgLYGVLgNLe2xI8AMRDIq5kklE7x/
 ejJ21pV5es9+LR5CUlccqD9ESWDxGT/EgCtybqTj2JNztXGVTG5C/yOoJ
 n4HpiYnYezZ+DDJhl+Hbxy502oAzCTDO6MF8fq4FpWCwzUo58sx6MXV/1
 qZOSUrDvhB/fPmL9SupxiyGMf7HNeskYonSH01v3IU0A6g8kbWSx8STVC
 3RbJk1nx5OvVAtqHAzvUwZi0ZusWbze61OcvPPiWccLgYQZf8juXwfMFy
 4fEMELBWbTCs0VStU6dUD5QG6eVqqQdum6x2vBWF9bhoFL1hoxF0V03rK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W5CNMO5u
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD REGRESSION
 e50b34f0f3fb86c9be2f9ad3b7ed483f18b46896
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
branch HEAD: e50b34f0f3fb86c9be2f9ad3b7ed483f18b46896  igc: fix race condition in TX timestamp read for register 0

Error/Warning (recently discovered and may have been fixed):

    https://lore.kernel.org/oe-kbuild-all/202510041304.yOU8z8P5-lkp@intel.com
    https://lore.kernel.org/oe-kbuild-all/202510041511.Kfu7sVNC-lkp@intel.com
    https://lore.kernel.org/oe-kbuild-all/202510041605.cSnfIA5l-lkp@intel.com

    drivers/net/ethernet/intel/ice/ice_main.c:5120:19: error: 'struct ice_hw' has no member named 'fwlog_cfg'
    drivers/net/ethernet/intel/ice/ice_main.c:5120:40: error: 'ICE_FWLOG_OPTION_IS_REGISTERED' undeclared (first use in this function); did you mean 'LIBIE_FWLOG_OPTION_IS_REGISTERED'?
    drivers/net/ethernet/intel/ice/ice_main.c:5121:23: error: implicit declaration of function 'ice_fwlog_register'; did you mean 'libie_fwlog_reregister'? [-Wimplicit-function-declaration]
    drivers/net/ethernet/intel/idpf/idpf_ethtool.c:1713:10: warning: comparison of array 'np->state' not equal to a null pointer is always true [-Wtautological-pointer-compare]
    drivers/net/ethernet/intel/idpf/idpf_ethtool.c:1713:26: error: '__IDPF_VPORT_UP' undeclared (first use in this function); did you mean 'IDPF_VPORT_UP'?
    drivers/net/ethernet/intel/idpf/xdp.c:421:11: warning: comparison of array 'np->state' equal to a null pointer is always false [-Wtautological-pointer-compare]
    drivers/net/ethernet/intel/idpf/xdp.c:421:20: error: use of undeclared identifier '__IDPF_VPORT_UP'; did you mean 'IDPF_VPORT_UP'?
    drivers/net/ethernet/intel/idpf/xdp.c:421:34: error: '__IDPF_VPORT_UP' undeclared (first use in this function); did you mean 'IDPF_VPORT_UP'?

Error/Warning ids grouped by kconfigs:

recent_errors
|-- alpha-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   `-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|-- alpha-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   `-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|-- arc-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- arc-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- loongarch-allyesconfig
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:warning:comparison-of-array-np-state-not-equal-to-a-null-pointer-is-always-true
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:warning:comparison-of-array-np-state-equal-to-a-null-pointer-is-always-false
|-- microblaze-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   `-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|-- microblaze-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- mips-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   `-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- mips-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- openrisc-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- parisc-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- parisc-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- powerpc-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- powerpc-allyesconfig
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:warning:comparison-of-array-np-state-not-equal-to-a-null-pointer-is-always-true
|   |-- drivers-net-ethernet-intel-idpf-xdp.c:error:use-of-undeclared-identifier-__IDPF_VPORT_UP
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:warning:comparison-of-array-np-state-equal-to-a-null-pointer-is-always-false
|-- riscv-allmodconfig
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:warning:comparison-of-array-np-state-not-equal-to-a-null-pointer-is-always-true
|   |-- drivers-net-ethernet-intel-idpf-xdp.c:error:use-of-undeclared-identifier-__IDPF_VPORT_UP
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:warning:comparison-of-array-np-state-equal-to-a-null-pointer-is-always-false
|-- s390-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:use-of-undeclared-identifier-__IDPF_VPORT_UP
|-- s390-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   `-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- sparc-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   `-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|-- sparc-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   `-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- um-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:use-of-undeclared-identifier-__IDPF_VPORT_UP
|-- um-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- x86_64-buildonly-randconfig-005-20251004
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
|   |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
|   |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
|-- x86_64-rhel-9.4-rust
|   `-- drivers-net-ethernet-intel-idpf-xdp.c:error:use-of-undeclared-identifier-__IDPF_VPORT_UP
`-- xtensa-allyesconfig
    |-- drivers-net-ethernet-intel-ice-ice_main.c:error:ICE_FWLOG_OPTION_IS_REGISTERED-undeclared-(first-use-in-this-function)
    |-- drivers-net-ethernet-intel-ice-ice_main.c:error:implicit-declaration-of-function-ice_fwlog_register
    |-- drivers-net-ethernet-intel-ice-ice_main.c:error:struct-ice_hw-has-no-member-named-fwlog_cfg
    |-- drivers-net-ethernet-intel-idpf-idpf_ethtool.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)
    `-- drivers-net-ethernet-intel-idpf-xdp.c:error:__IDPF_VPORT_UP-undeclared-(first-use-in-this-function)

elapsed time: 7440m

configs tested: 117
configs skipped: 3

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                     haps_hs_smp_defconfig    gcc-15.1.0
arc                   randconfig-001-20251004    gcc-8.5.0
arc                   randconfig-002-20251004    gcc-10.5.0
arm                               allnoconfig    clang-22
arm                          gemini_defconfig    clang-20
arm                             mxs_defconfig    clang-22
arm                   randconfig-001-20251004    gcc-8.5.0
arm                   randconfig-002-20251004    gcc-15.1.0
arm                   randconfig-003-20251004    gcc-12.5.0
arm                   randconfig-004-20251004    gcc-11.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251004    clang-20
arm64                 randconfig-002-20251004    gcc-8.5.0
arm64                 randconfig-003-20251004    clang-22
arm64                 randconfig-004-20251004    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251004    gcc-15.1.0
csky                  randconfig-002-20251004    gcc-10.5.0
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251004    clang-22
hexagon               randconfig-002-20251004    clang-20
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251004    gcc-13
i386        buildonly-randconfig-002-20251004    clang-20
i386        buildonly-randconfig-003-20251004    clang-20
i386        buildonly-randconfig-004-20251004    clang-20
i386        buildonly-randconfig-005-20251004    clang-20
i386        buildonly-randconfig-006-20251004    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251004    gcc-15.1.0
loongarch             randconfig-002-20251004    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                       bvme6000_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           xway_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251004    gcc-10.5.0
nios2                 randconfig-002-20251004    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251004    gcc-8.5.0
parisc                randconfig-002-20251004    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                       ppc64_defconfig    clang-22
powerpc               randconfig-001-20251004    clang-22
powerpc               randconfig-002-20251004    gcc-8.5.0
powerpc               randconfig-003-20251004    clang-22
powerpc64             randconfig-001-20251004    gcc-14.3.0
powerpc64             randconfig-002-20251004    clang-22
powerpc64             randconfig-003-20251004    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251004    clang-22
riscv                 randconfig-002-20251004    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251004    gcc-8.5.0
s390                  randconfig-002-20251004    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251004    gcc-15.1.0
sh                    randconfig-002-20251004    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251004    gcc-8.5.0
sparc                 randconfig-002-20251004    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251004    gcc-14.3.0
sparc64               randconfig-002-20251004    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251004    clang-18
um                    randconfig-002-20251004    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251004    gcc-14
x86_64      buildonly-randconfig-002-20251004    clang-20
x86_64      buildonly-randconfig-003-20251004    clang-20
x86_64      buildonly-randconfig-004-20251004    clang-20
x86_64      buildonly-randconfig-005-20251004    gcc-14
x86_64      buildonly-randconfig-006-20251004    gcc-14
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251004    gcc-13.4.0
xtensa                randconfig-002-20251004    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
