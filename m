Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GK+BDTQEGpyeAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 23:52:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C56EA5BABC7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 23:52:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 157FD42BFF;
	Fri, 22 May 2026 21:52:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uU8xU95b1MQV; Fri, 22 May 2026 21:52:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5D5642BF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779486765;
	bh=kHPH8rRlHlXeMAL8wGKz7ihKceBzAD2Fl2t7zeFDrRg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gi6h0GghI8ucwJT1Ig8LlVnbDaf7gFoPpelvkEEkP7HMFNTymfLiZjDtZCA2in+9K
	 mF8wnFSFJJCxFDb71JZ5JTdD7Si+1vFSpeN6pGnEv+lh6n5IcwM+ec1Nnp/uSRqAzK
	 3ZPN7iyy4fPIfKCHNrm7YD88tNmcFOHuANjdNpR0sqEpv8quvn3WMSXLqN5rP8OFib
	 /Z0k0p+M8acCe2wtnLoBBV3568bSmbt88xdozM+Y2CoYzXRjCzxGXREMYHwUzLjQKM
	 BuKKfLo/7hXIwfS0k+TlcW6fhMEEqcILNhPEtt5UMk8Vr/Qkj4ZNPsdI/zmMJGZECB
	 cs/dmdGvPrJug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5D5642BF0;
	Fri, 22 May 2026 21:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AE1B282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 21:52:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40080406B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 21:52:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 623qv_01zfpO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2026 21:52:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C1B3840223
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1B3840223
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1B3840223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 21:52:42 +0000 (UTC)
X-CSE-ConnectionGUID: Jac/2G+qTm6Ej8dF58hxLg==
X-CSE-MsgGUID: XOtrBCFKSheyDC+b+WSxGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84037009"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="84037009"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 14:52:42 -0700
X-CSE-ConnectionGUID: kpdCQCd6TN6uf4XRxBeHNw==
X-CSE-MsgGUID: fVfJd64STF+ulsjT5tbO5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="264855625"
Received: from lkp-server01.sh.intel.com (HELO fdb68b0ce653) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2026 14:52:39 -0700
Received: from kbuild by fdb68b0ce653 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wQXnH-0000000031J-3Uuh;
 Fri, 22 May 2026 21:52:35 +0000
Date: Sat, 23 May 2026 05:52:18 +0800
From: kernel test robot <lkp@intel.com>
To: Ashwin Gundarapu <linuxuser509@zohomail.in>,
 "anthony.l.nguyen@intel.com" <przemyslaw.kitszel@intel.com>,
 andrewnetdev <andrew+netdev@lunn.ch>, davem <davem@davemloft.net>,
 edumazet <edumazet@google.com>, kuba <kuba@kernel.org>,
 pabeni <pabeni@redhat.com>
Cc: oe-kbuild-all@lists.linux.dev,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <202605230558.68aPIUbo-lkp@intel.com>
References: <19e49280392.4757403170773.5767589851918809405@zohomail.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19e49280392.4757403170773.5767589851918809405@zohomail.in>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779486763; x=1811022763;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hmnI4tkX2KlUl+HZ9fXkl4CbOsOwCBOjI29gwBM5Icw=;
 b=JB5xmackziHCGwZjbQhGPf9a2cWQVvSuojdqKh1NoyTRa8dstm14cGIr
 74qZayYR0OwLthFwRMjd/i0sPZrD6Oo7BSnJwOdGhjH/be19g9TwVPy31
 LJFvav1BN95PTj0Cwch5W7PBIwy+QYTBmkFUaAQKdejwqhe8For4UKRPN
 Y1HVbD1mWwl06DBueu1KyA00eEjofhSLF18TZ4Z0Rhq6FgylzOoZbOXTz
 cDANAG+U21nWRxOgJ2jWznCg1w+k9nwh94tbGzqOFMeKdrgbPo4hSUdaP
 PJdc9/uINaz9xbNNr6GaKFDsAzO72Ycfc25kw6L5TBe1nHs3DGHr3edi8
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JB5xmack
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: e100: replace silent
 'hope for the best' with debug message
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linuxuser509@zohomail.in,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:oe-kbuild-all@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.993];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: C56EA5BABC7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ashwin,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ashwin-Gundarapu/net-e100-replace-silent-hope-for-the-best-with-debug-message/20260521-141158
base:   net-next/main
patch link:    https://lore.kernel.org/r/19e49280392.4757403170773.5767589851918809405%40zohomail.in
patch subject: [PATCH net-next] net: e100: replace silent 'hope for the best' with debug message
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20260523/202605230558.68aPIUbo-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260523/202605230558.68aPIUbo-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202605230558.68aPIUbo-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/e100.c: In function 'e100_phy_init':
   drivers/net/ethernet/intel/e100.c:1455:17: warning: this 'if' clause does not guard... [-Wmisleading-indentation]
    1455 |                 if (e100_phy_check_without_mii(nic))
         |                 ^~
   drivers/net/ethernet/intel/e100.c:1458:25: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the 'if'
    1458 |                         return 0;
         |                         ^~~~~~
>> drivers/net/ethernet/intel/e100.c:1459:17: error: expected '}' before 'else'
    1459 |                 else {
         |                 ^~~~
   drivers/net/ethernet/intel/e100.c:1439:39: warning: unused variable 'cong' [-Wunused-variable]
    1439 |         u16 bmcr, stat, id_lo, id_hi, cong;
         |                                       ^~~~
   drivers/net/ethernet/intel/e100.c:1439:32: warning: unused variable 'id_hi' [-Wunused-variable]
    1439 |         u16 bmcr, stat, id_lo, id_hi, cong;
         |                                ^~~~~
   drivers/net/ethernet/intel/e100.c:1439:25: warning: unused variable 'id_lo' [-Wunused-variable]
    1439 |         u16 bmcr, stat, id_lo, id_hi, cong;
         |                         ^~~~~
   drivers/net/ethernet/intel/e100.c: At top level:
>> drivers/net/ethernet/intel/e100.c:1465:11: error: expected identifier or '(' before 'else'
    1465 |         } else
         |           ^~~~
   In file included from include/linux/skbuff.h:39,
                    from include/net/net_namespace.h:44,
                    from include/linux/netdevice.h:38,
                    from drivers/net/ethernet/intel/e100.c:140:
>> include/net/net_debug.h:88:3: error: expected identifier or '(' before 'while'
      88 | } while (0)
         |   ^~~~~
   drivers/net/ethernet/intel/e100.c:1466:17: note: in expansion of macro 'netif_printk'
    1466 |                 netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
         |                 ^~~~~~~~~~~~
   drivers/net/ethernet/intel/e100.c:1470:9: warning: data definition has no type or storage class
    1470 |         id_lo = mdio_read(netdev, nic->mii.phy_id, MII_PHYSID1);
         |         ^~~~~
>> drivers/net/ethernet/intel/e100.c:1470:9: error: type defaults to 'int' in declaration of 'id_lo' [-Wimplicit-int]
>> drivers/net/ethernet/intel/e100.c:1470:27: error: 'netdev' undeclared here (not in a function); did you mean 'net_eq'?
    1470 |         id_lo = mdio_read(netdev, nic->mii.phy_id, MII_PHYSID1);
         |                           ^~~~~~
         |                           net_eq
>> drivers/net/ethernet/intel/e100.c:1470:35: error: 'nic' undeclared here (not in a function)
    1470 |         id_lo = mdio_read(netdev, nic->mii.phy_id, MII_PHYSID1);
         |                                   ^~~
   drivers/net/ethernet/intel/e100.c:1471:9: warning: data definition has no type or storage class
    1471 |         id_hi = mdio_read(netdev, nic->mii.phy_id, MII_PHYSID2);
         |         ^~~~~
>> drivers/net/ethernet/intel/e100.c:1471:9: error: type defaults to 'int' in declaration of 'id_hi' [-Wimplicit-int]
>> drivers/net/ethernet/intel/e100.c:1472:12: error: expected '=', ',', ';', 'asm' or '__attribute__' before '->' token
    1472 |         nic->phy = (u32)id_hi << 16 | (u32)id_lo;
         |            ^~
>> include/net/net_debug.h:85:1: error: expected identifier or '(' before 'do'
      85 | do {                                                            \
         | ^~
   drivers/net/ethernet/intel/e100.c:1473:9: note: in expansion of macro 'netif_printk'
    1473 |         netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
         |         ^~~~~~~~~~~~
>> include/net/net_debug.h:88:3: error: expected identifier or '(' before 'while'
      88 | } while (0)
         |   ^~~~~
   drivers/net/ethernet/intel/e100.c:1473:9: note: in expansion of macro 'netif_printk'
    1473 |         netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
         |         ^~~~~~~~~~~~
>> drivers/net/ethernet/intel/e100.c:1477:9: error: expected identifier or '(' before 'for'
    1477 |         for (addr = 0; addr < 32; addr++) {
         |         ^~~
   drivers/net/ethernet/intel/e100.c:1477:29: error: expected '=', ',', ';', 'asm' or '__attribute__' before '<' token
    1477 |         for (addr = 0; addr < 32; addr++) {
         |                             ^
   drivers/net/ethernet/intel/e100.c:1477:39: error: expected '=', ',', ';', 'asm' or '__attribute__' before '++' token
    1477 |         for (addr = 0; addr < 32; addr++) {
         |                                       ^~
>> drivers/net/ethernet/intel/e100.c:1491:9: error: expected identifier or '(' before 'if'
    1491 |         if (nic->phy == phy_82552_v)
         |         ^~
   drivers/net/ethernet/intel/e100.c:1497:9: error: expected identifier or '(' before 'if'
    1497 |         if ((nic->phy & NCS_PHY_MODEL_MASK) == phy_nsc_tx) {
         |         ^~
   drivers/net/ethernet/intel/e100.c:1505:9: error: expected identifier or '(' before 'if'
    1505 |         if (nic->phy == phy_82552_v) {
         |         ^~
   drivers/net/ethernet/intel/e100.c:1519:11: error: expected identifier or '(' before 'else'
    1519 |         } else if ((nic->mac >= mac_82550_D102) || ((nic->flags & ich) &&
         |           ^~~~
>> drivers/net/ethernet/intel/e100.c:1527:9: error: expected identifier or '(' before 'return'
    1527 |         return 0;
         |         ^~~~~~
>> drivers/net/ethernet/intel/e100.c:1528:1: error: expected identifier or '(' before '}' token
    1528 | }
         | ^
   drivers/net/ethernet/intel/e100.c:958:12: warning: 'mdio_ctrl_phy_82552_v' defined but not used [-Wunused-function]
     958 | static u16 mdio_ctrl_phy_82552_v(struct nic *nic,
         |            ^~~~~~~~~~~~~~~~~~~~~


vim +1459 drivers/net/ethernet/intel/e100.c

720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1430  
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1431  #define NCONFIG_AUTO_SWITCH	0x0080
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1432  #define MII_NSC_CONG		MII_RESV1
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1433  #define NSC_CONG_ENABLE		0x0100
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1434  #define NSC_CONG_TXREADY	0x0400
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1435  static int e100_phy_init(struct nic *nic)
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1436  {
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1437  	struct net_device *netdev = nic->netdev;
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1438  	u32 addr;
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1439  	u16 bmcr, stat, id_lo, id_hi, cong;
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1440  
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1441  	/* Discover phy addr by searching addrs in order {1,0,2,..., 31} */
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1442  	for (addr = 0; addr < 32; addr++) {
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1443  		nic->mii.phy_id = (addr == 0) ? 1 : (addr == 1) ? 0 : addr;
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1444  		bmcr = mdio_read(netdev, nic->mii.phy_id, MII_BMCR);
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1445  		stat = mdio_read(netdev, nic->mii.phy_id, MII_BMSR);
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1446  		stat = mdio_read(netdev, nic->mii.phy_id, MII_BMSR);
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1447  		if (!((bmcr == 0xFFFF) || ((stat == 0) && (bmcr == 0))))
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1448  			break;
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1449  	}
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1450  	if (addr == 32) {
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1451  		/* uhoh, no PHY detected: check whether we seem to be some
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1452  		 * weird, rare variant which is *known* to not have any MII.
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1453  		 * But do this AFTER MII checking only, since this does
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1454  		 * lookup of EEPROM values which may easily be unreliable. */
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1455  		if (e100_phy_check_without_mii(nic))
e95e8b2860fba4c drivers/net/ethernet/intel/e100.c Ashwin Gundarapu 2026-05-10  1456                          netif_dbg(nic, probe, nic->netdev,
e95e8b2860fba4c drivers/net/ethernet/intel/e100.c Ashwin Gundarapu 2026-05-10  1457                                    "No MII PHY detected, continuing anyway\n");
e95e8b2860fba4c drivers/net/ethernet/intel/e100.c Ashwin Gundarapu 2026-05-10  1458                          return 0;
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10 @1459  		else {
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1460  			/* for unknown cases log a fatal error */
fa05e1ad1b61b37 drivers/net/e100.c                Joe Perches      2010-03-16  1461  			netif_err(nic, hw, nic->netdev,
fa05e1ad1b61b37 drivers/net/e100.c                Joe Perches      2010-03-16  1462  				  "Failed to locate any known PHY, aborting\n");
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1463  			return -EAGAIN;
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1464  		}
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10 @1465  	} else
fa05e1ad1b61b37 drivers/net/e100.c                Joe Perches      2010-03-16  1466  		netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
fa05e1ad1b61b37 drivers/net/e100.c                Joe Perches      2010-03-16  1467  			     "phy_addr = %d\n", nic->mii.phy_id);
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1468  
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1469  	/* Get phy ID */
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16 @1470  	id_lo = mdio_read(netdev, nic->mii.phy_id, MII_PHYSID1);
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16 @1471  	id_hi = mdio_read(netdev, nic->mii.phy_id, MII_PHYSID2);
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16 @1472  	nic->phy = (u32)id_hi << 16 | (u32)id_lo;
fa05e1ad1b61b37 drivers/net/e100.c                Joe Perches      2010-03-16  1473  	netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
fa05e1ad1b61b37 drivers/net/e100.c                Joe Perches      2010-03-16  1474  		     "phy ID = 0x%08X\n", nic->phy);
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1475  
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1476  	/* Select the phy and isolate the rest */
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29 @1477  	for (addr = 0; addr < 32; addr++) {
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1478  		if (addr != nic->mii.phy_id) {
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1479  			mdio_write(netdev, addr, MII_BMCR, BMCR_ISOLATE);
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1480  		} else if (nic->phy != phy_82552_v) {
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1481  			bmcr = mdio_read(netdev, addr, MII_BMCR);
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1482  			mdio_write(netdev, addr, MII_BMCR,
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1483  				bmcr & ~BMCR_ISOLATE);
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1484  		}
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1485  	}
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1486  	/*
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1487  	 * Workaround for 82552:
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1488  	 * Clear the ISOLATE bit on selected phy_id last (mirrored on all
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1489  	 * other phy_id's) using bmcr value from addr discovery loop above.
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1490  	 */
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29 @1491  	if (nic->phy == phy_82552_v)
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1492  		mdio_write(netdev, nic->mii.phy_id, MII_BMCR,
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1493  			bmcr & ~BMCR_ISOLATE);
8fbd962e39517df drivers/net/e100.c                Bruce Allan      2009-10-29  1494  
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1495  	/* Handle National tx phys */
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1496  #define NCS_PHY_MODEL_MASK	0xFFF0FFFF
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1497  	if ((nic->phy & NCS_PHY_MODEL_MASK) == phy_nsc_tx) {
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1498  		/* Disable congestion control */
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1499  		cong = mdio_read(netdev, nic->mii.phy_id, MII_NSC_CONG);
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1500  		cong |= NSC_CONG_TXREADY;
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1501  		cong &= ~NSC_CONG_ENABLE;
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1502  		mdio_write(netdev, nic->mii.phy_id, MII_NSC_CONG, cong);
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1503  	}
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1504  
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1505  	if (nic->phy == phy_82552_v) {
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1506  		u16 advert = mdio_read(netdev, nic->mii.phy_id, MII_ADVERTISE);
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1507  
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1508  		/* assign special tweaked mdio_ctrl() function */
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1509  		nic->mdio_ctrl = mdio_ctrl_phy_82552_v;
720017623ab294b drivers/net/e100.c                Andreas Mohr     2009-06-10  1510  
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1511  		/* Workaround Si not advertising flow-control during autoneg */
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1512  		advert |= ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM;
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1513  		mdio_write(netdev, nic->mii.phy_id, MII_ADVERTISE, advert);
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1514  
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1515  		/* Reset for the above changes to take effect */
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1516  		bmcr = mdio_read(netdev, nic->mii.phy_id, MII_BMCR);
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1517  		bmcr |= BMCR_RESET;
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1518  		mdio_write(netdev, nic->mii.phy_id, MII_BMCR, bmcr);
b55de80e4989200 drivers/net/e100.c                Bruce Allan      2009-03-21  1519  	} else if ((nic->mac >= mac_82550_D102) || ((nic->flags & ich) &&
60ffa478759f39a drivers/net/e100.c                Jeff Kirsher     2006-08-16  1520  	   (mdio_read(netdev, nic->mii.phy_id, MII_TPISTATUS) & 0x8000) &&
d4ef55288aa2e1b drivers/net/ethernet/intel/e100.c Jesse Brandeburg 2021-03-25  1521  	   (le16_to_cpu(nic->eeprom[eeprom_cnfg_mdix]) & eeprom_mdix_enabled))) {
60ffa478759f39a drivers/net/e100.c                Jeff Kirsher     2006-08-16  1522  		/* enable/disable MDI/MDI-X auto-switching. */
60ffa478759f39a drivers/net/e100.c                Jeff Kirsher     2006-08-16  1523  		mdio_write(netdev, nic->mii.phy_id, MII_NCONFIG,
60ffa478759f39a drivers/net/e100.c                Jeff Kirsher     2006-08-16  1524  				nic->mii.force_media ? 0 : NCONFIG_AUTO_SWITCH);
648951451e6d2d5 drivers/net/e100.c                Malli Chilakala  2005-06-17  1525  	}
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1526  
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16 @1527  	return 0;
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16 @1528  }
^1da177e4c3f415 drivers/net/e100.c                Linus Torvalds   2005-04-16  1529  

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
