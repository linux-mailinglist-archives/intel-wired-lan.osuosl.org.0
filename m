Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XFdPAqFKL2qa+AQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 02:43:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ACF682A8C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 02:43:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=m4pk5wTS;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44832822C8;
	Mon, 15 Jun 2026 00:43:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OItfAfs0fPao; Mon, 15 Jun 2026 00:43:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83084831EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781484188;
	bh=V+2EHORnMI49zyewEG+gSjWgMqONO+HuRN0jVA+gOSk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m4pk5wTSAq+brqxUUqGqoBP74aatyUp/WHmbq8bue+LpSckXmZH8NNL1bo26ybZuV
	 NpTE+ovL11BL5TKoruU87zfSRN8UDigtU3qCiXhfGzRgZ5OcFgCL1ZdL3H0oVty2J7
	 JDswPZmq8JEaltt09VjSco3fq5mwqKgItvr2hHuHCAUXwg/wqnbkZGJFhPtIzGAxao
	 jZBb+kbY4b2iwefgnI9gUplrvhv4RJ5dozkW9/cEdW/0bMf/sJcjpZw10BRydgZ8op
	 bhL97V5tl2VhMwNGNGXcWSV+og6vpt0KWrqKRLzl0dm/DokuQJpCmXScTMhye5htPU
	 cGP6RLy9NIsFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83084831EF;
	Mon, 15 Jun 2026 00:43:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 34FF2169
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 00:43:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27311822C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 00:43:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0_TAkVNCRPGV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 00:43:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 22B42822B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22B42822B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 22B42822B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 00:43:03 +0000 (UTC)
X-CSE-ConnectionGUID: YCujvp7GSLmctoTlpzyGfg==
X-CSE-MsgGUID: zpHNNobCQAWOxCL8LAfn6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="82233301"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="82233301"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 17:43:03 -0700
X-CSE-ConnectionGUID: qoqDpLDbTSWJblD78y8e5g==
X-CSE-MsgGUID: C8Pxmp9mSZ2qIN7l1XsRHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="271003255"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 14 Jun 2026 17:42:58 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wYvPj-00000000RKs-3KLk;
 Mon, 15 Jun 2026 00:42:55 +0000
Date: Mon, 15 Jun 2026 08:42:55 +0800
From: kernel test robot <lkp@intel.com>
To: mheib@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 netdev@vger.kernel.org, jiri@resnulli.us, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 horms@kernel.org, corbet@lwn.net, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 Mohammad Heib <mheib@redhat.com>
Message-ID: <202606150807.u6hUM8VJ-lkp@intel.com>
References: <20260614161131.192068-1-mheib@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260614161131.192068-1-mheib@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781484185; x=1813020185;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=AvZdXTNtSkDZo5aV+FuouBwHA4hBOPkcsNaFuzZuWL4=;
 b=IwpFh2K0OGfQA8KyZNA7a1BTQIevT3NpgbejF8q2VpuxZWdDdxEEUFOp
 w6XKTFW6Pl/ZCcckpH9zHfRwzbtO4uQ34Z8H+boePGZyN6gRaUZjrlhQa
 LEJPfX5/WwV0v9lubtyyHeKMnA4bU2CCUAdqgJRAPep0kome0naTpULtf
 LpxSs6TaiJlJSFO2veuYXUjWaIWMeY5ipo9fpeMub0k8hr52GrH+tMyr6
 UVCrWdKXEC9J7XYhQC1INktQ0ygCVGpPU0r0xba4VBERSXT+c6LNV6fqb
 PHWdsltz17ckABm6G/Zg8NdT0oOoeud/SzuEWvOwst4uns7Dom38sdMj6
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IwpFh2K0
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: add devlink parameter
 for Flow Director ATR sample rate
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mheib@redhat.com,m:llvm@lists.linux.dev,m:oe-kbuild-all@lists.linux.dev,m:netdev@vger.kernel.org,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,01.org:url,osuosl.org:dkim,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 03ACF682A8C

Hi,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/mheib-redhat-com/i40e-add-devlink-parameter-for-Flow-Director-ATR-sample-rate/20260615-001257
base:   net-next/main
patch link:    https://lore.kernel.org/r/20260614161131.192068-1-mheib%40redhat.com
patch subject: [Intel-wired-lan] [PATCH net-next] i40e: add devlink parameter for Flow Director ATR sample rate
config: sparc64-allmodconfig (https://download.01.org/0day-ci/archive/20260615/202606150807.u6hUM8VJ-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260615/202606150807.u6hUM8VJ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202606150807.u6hUM8VJ-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/i40e/i40e_devlink.c:106:9: error: incompatible function pointer types initializing 'int (*)(struct devlink *, u32, union devlink_param_value *, struct netlink_ext_ack *)' (aka 'int (*)(struct devlink *, unsigned int, union devlink_param_value *, struct netlink_ext_ack *)') with an expression of type 'int (struct devlink *, u32, union devlink_param_value, struct netlink_ext_ack *)' (aka 'int (struct devlink *, unsigned int, union devlink_param_value, struct netlink_ext_ack *)') [-Wincompatible-function-pointer-types]
     106 |                              i40e_atr_sample_rate_validate),
         |                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/net/devlink.h:650:14: note: expanded from macro 'DEVLINK_PARAM_DRIVER'
     650 |         .validate = _validate,                                          \
         |                     ^~~~~~~~~
   1 error generated.


vim +106 drivers/net/ethernet/intel/i40e/i40e_devlink.c

    93	
    94	static const struct devlink_param i40e_dl_params[] = {
    95		DEVLINK_PARAM_GENERIC(MAX_MAC_PER_VF,
    96				      BIT(DEVLINK_PARAM_CMODE_RUNTIME),
    97				      i40e_max_mac_per_vf_get,
    98				      i40e_max_mac_per_vf_set,
    99				      NULL),
   100		DEVLINK_PARAM_DRIVER(I40E_DEVLINK_PARAM_ID_ATR_SAMPLE_RATE,
   101				     "atr_sample_rate",
   102				     DEVLINK_PARAM_TYPE_U32,
   103				     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
   104				     i40e_atr_sample_rate_get,
   105				     i40e_atr_sample_rate_set,
 > 106				     i40e_atr_sample_rate_validate),
   107	};
   108	

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
