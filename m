Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eOBPHHXTS2riawEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 18:10:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8389C7130CA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 18:10:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=bk+c5g0l;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07319812C4;
	Mon,  6 Jul 2026 16:10:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n1NQcQsp5yka; Mon,  6 Jul 2026 16:10:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60AF9812B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783354223;
	bh=CmEUDp//6m6CIYvYGOCvfKIxLc5UXmbAq366gw58G1c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bk+c5g0leSV//NyRUKimUjUNRb7rasnuhPaJ1ejYu2GGVCb+ti/Av82ajsN7vnEfS
	 CyBpMJJcCYySgbr6MnLBDrENd+wEFHFIACU8lfyzsa8e+Pd112QQWjJgA1We/Ddlel
	 Pcmndyx8oOfWvT5zrXk4zMxdVBGCKdBZDsUCrCvlWCczIagWiE0y+JN3ZalMr07uDd
	 ZwObS8AjtBbtrgy9rDedEjbMP7E0mEdJxwZNHPXrkXarxiLRG19X4JoqcIMUe6f4m2
	 c8h+RiMcprTJwK+SYAHOTPppX5Tsq01wYU7yAi8PWXfxuyd2i2Plq5Kcq3PxFohs96
	 Agmnezd/0Ai6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60AF9812B8;
	Mon,  6 Jul 2026 16:10:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D41652A8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 16:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C5D2B605EE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 16:10:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gBVVvICM_K7M for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 16:10:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 20E62605B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20E62605B1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20E62605B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 16:10:19 +0000 (UTC)
X-CSE-ConnectionGUID: zbPzS2uYRk6rEIVMzO2I8g==
X-CSE-MsgGUID: 9TVYgmSAQXawfL1BRRfJ8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="95372046"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="95372046"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 09:10:19 -0700
X-CSE-ConnectionGUID: v+mJnvRkRP+cPbTaEaVuPg==
X-CSE-MsgGUID: 85eWajhgR/yxX4+BkyQtuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="257331802"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 06 Jul 2026 09:10:17 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wgltf-00000000EX5-04qL;
 Mon, 06 Jul 2026 16:10:15 +0000
Date: Tue, 7 Jul 2026 00:09:43 +0800
From: kernel test robot <lkp@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: oe-kbuild-all@lists.linux.dev, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <202607070035.qAAqVjGH-lkp@intel.com>
References: <20260706094330.186341-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260706094330.186341-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783354220; x=1814890220;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+MpXM3rms7tMeiOwh4i//Jc8YnWa+BFlnkeGhMYW3lw=;
 b=gp4sPCxuRYSbP7d2WAADViCRJt0UeWBCueI+7LutUeBoZDeNvFeIQkYR
 JmzqNwwmmcgqrKS8TSI3hWtCyoiPVqsyNaWzPci86PHnHm28tQor+6oyD
 i6BN17fZwb4+8vV3xTi6SoXm9r3J2hx45SyYkKYfhhA0gR54T6iD6yLgj
 oTp263+VF4aOEJGZPWcyBMLPNdRoXN46gR2iP1ruduYabtyJ0tzk5YbPm
 L3gZdPbpuR38qCnJrwjC8CzAXWQH+PIHqY1GkMnrn4EgNOFCQKa3RySRg
 6EF5nQINLd92YhBc1RigiwKxGVDFQV/+SD1c5idr/mbNCHB7HI52iN7jg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gp4sPCxu
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: E610: force phy
 link to get down when interface is down
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
X-Spamd-Result: default: False [0.29 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:oe-kbuild-all@lists.linux.dev,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,osuosl.org:from_smtp,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8389C7130CA

Hi Jedrzej,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Jedrzej-Jagielski/ixgbe-E610-force-phy-link-to-get-down-when-interface-is-down/20260706-180351
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20260706094330.186341-1-jedrzej.jagielski%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: E610: force phy link to get down when interface is down
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20260707/202607070035.qAAqVjGH-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 16.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260707/202607070035.qAAqVjGH-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202607070035.qAAqVjGH-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c: In function 'ixgbe_close':
>> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:7572:25: error: implicit declaration of function 'e_error'; did you mean 'e_err'? [-Wimplicit-function-declaration]
    7572 |                         e_error(drv, "Cannot set PHY link down\n");
         |                         ^~~~~~~
         |                         e_err
>> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:7572:33: error: 'drv' undeclared (first use in this function)
    7572 |                         e_error(drv, "Cannot set PHY link down\n");
         |                                 ^~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:7572:33: note: each undeclared identifier is reported only once for each function it appears in


vim +7572 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c

  7544	
  7545	/**
  7546	 * ixgbe_close - Disables a network interface
  7547	 * @netdev: network interface device structure
  7548	 *
  7549	 * Returns 0, this is not allowed to fail
  7550	 *
  7551	 * The close entry point is called when an interface is de-activated
  7552	 * by the OS.  The hardware is still under the drivers control, but
  7553	 * needs to be disabled.  A global MAC reset is issued to stop the
  7554	 * hardware, and all transmit and receive resources are freed.
  7555	 **/
  7556	int ixgbe_close(struct net_device *netdev)
  7557	{
  7558		struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
  7559	
  7560		ixgbe_ptp_stop(adapter);
  7561	
  7562		if (netif_device_present(netdev))
  7563			ixgbe_close_suspend(adapter);
  7564	
  7565		ixgbe_fdir_filter_exit(adapter);
  7566	
  7567		if (adapter->flags2 & IXGBE_FLAG2_LINK_DOWN_ON_CLOSE) {
  7568			int err;
  7569	
  7570			err = ixgbe_disable_phy_link(&adapter->hw);
  7571			if (err)
> 7572				e_error(drv, "Cannot set PHY link down\n");
  7573	
  7574			ixgbe_handle_link_down(adapter);
  7575		}
  7576	
  7577		ixgbe_release_hw_control(adapter);
  7578	
  7579		return 0;
  7580	}
  7581	

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
