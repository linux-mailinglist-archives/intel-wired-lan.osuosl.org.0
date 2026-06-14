Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LQRFGmYoL2qA8QQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 00:17:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40878682650
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 00:17:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=O82s6wZe;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C7B940EF2;
	Sun, 14 Jun 2026 22:17:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZigqWA3rRP8Q; Sun, 14 Jun 2026 22:17:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0E8840F16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781475424;
	bh=FBnc3nlhl3dfxxj3tgv3SIxAJpWFX+6d8llQHEZ3omo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O82s6wZesSK6nVzGVZG4Pl+i9+tKeCYQSupSq++Zbh34LS+ynDnUa6r4SuLNESWuw
	 4UmuV3OvPG8MnrmG/krl6Kru0vOmq81X145HfFpQLkA69HfAkdnrSbR7zI5xqqSnol
	 xzLJHn2q3awPstkHOay6V/Ss62DlcTV6HMwIotEG7g6+GekQeUqNJ86IYdcdK3JcFk
	 +HAs4Z7cqATDrG2CtMICzQqHMvxXTt/XKsAT9AMCsgw+uZSWdO8k/q8rZ0c+BLvUmg
	 8pCYVfNq5kfPnhTZi91T5H/dZvfqTWIeGgD0NAyPyV6Y+ybDOy/QCtvYL67JQQ74jf
	 fqx/6kGEHilbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0E8840F16;
	Sun, 14 Jun 2026 22:17:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DBE97169
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 22:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA9C06115C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 22:17:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qdEj9Qw_mYtU for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jun 2026 22:17:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BAB706114E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAB706114E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAB706114E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 22:17:00 +0000 (UTC)
X-CSE-ConnectionGUID: 1v3TUabuSsCti0tH5lHo1A==
X-CSE-MsgGUID: zH97NJ5SSCuW+yXdZ3yuVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="81233836"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="81233836"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 15:16:57 -0700
X-CSE-ConnectionGUID: wcEiiaJgQyyJ4vPcoPRKJA==
X-CSE-MsgGUID: xu7UUsyDSYm3KfiziiGqmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="244906693"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 14 Jun 2026 15:16:53 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wYt8M-00000000REk-1U95;
 Sun, 14 Jun 2026 22:16:50 +0000
Date: Mon, 15 Jun 2026 06:16:33 +0800
From: kernel test robot <lkp@intel.com>
To: mheib@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org, jiri@resnulli.us,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, corbet@lwn.net,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, Mohammad Heib <mheib@redhat.com>
Message-ID: <202606150639.gh5uBfAP-lkp@intel.com>
References: <20260614161131.192068-1-mheib@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260614161131.192068-1-mheib@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781475422; x=1813011422;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9FeLquSok60GIBpvMZRRZhF3VTDUhDH+zQUmkf3tCLs=;
 b=IsXIaquROrv0IF5LE1yuV1ElbZNP9a5thnJpZKrGbsOCmuhwxxc0qTo4
 AzviVwsTIJw4eEoQc621EsdpX1lvsAJwDC6ihheu/PennI+ZkzzsnjCNT
 +98xtv6nQUyi2u2K3P4uhkAb03WOisA7f/MBcF49ii2NaU4zkR1mkGRFw
 08Ka39sA2eT0GDd41C3I4mUzP9RoxY1eEFKSjEvXih+QRibxGRnk+BS2w
 YfoR9C+IZFYhx8G0tIq6B9UZOq7wQmQRj3MBtpPX0O4AjIwQIz573nkru
 T6UbWJJw3aOkGTcAQVeU9QC1hNKqIbx8Ont0rtsgTxI7ge21nqNMjqxBj
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IsXIaquR
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:mheib@redhat.com,m:oe-kbuild-all@lists.linux.dev,m:netdev@vger.kernel.org,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40878682650

Hi,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/mheib-redhat-com/i40e-add-devlink-parameter-for-Flow-Director-ATR-sample-rate/20260615-001257
base:   net-next/main
patch link:    https://lore.kernel.org/r/20260614161131.192068-1-mheib%40redhat.com
patch subject: [Intel-wired-lan] [PATCH net-next] i40e: add devlink parameter for Flow Director ATR sample rate
config: openrisc-allmodconfig (https://download.01.org/0day-ci/archive/20260615/202606150639.gh5uBfAP-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 16.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260615/202606150639.gh5uBfAP-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202606150639.gh5uBfAP-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/i40e/i40e_devlink.c:4:
>> drivers/net/ethernet/intel/i40e/i40e_devlink.c:106:30: error: initialization of 'int (*)(struct devlink *, u32,  union devlink_param_value *, struct netlink_ext_ack *)' {aka 'int (*)(struct devlink *, unsigned int,  union devlink_param_value *, struct netlink_ext_ack *)'} from incompatible pointer type 'int (*)(struct devlink *, u32,  union devlink_param_value,  struct netlink_ext_ack *)' {aka 'int (*)(struct devlink *, unsigned int,  union devlink_param_value,  struct netlink_ext_ack *)'} [-Wincompatible-pointer-types]
     106 |                              i40e_atr_sample_rate_validate),
         |                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/net/devlink.h:650:21: note: in definition of macro 'DEVLINK_PARAM_DRIVER'
     650 |         .validate = _validate,                                          \
         |                     ^~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_devlink.c:106:30: note: (near initialization for 'i40e_dl_params[1].validate')
   include/net/devlink.h:650:21: note: in definition of macro 'DEVLINK_PARAM_DRIVER'
     650 |         .validate = _validate,                                          \
         |                     ^~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_devlink.c:77:12: note: 'i40e_atr_sample_rate_validate' declared here
      77 | static int i40e_atr_sample_rate_validate(struct devlink *devlink, u32 id,
         |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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
