Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFSTB671DmoSDwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 14:08:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B6C5A48B9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 14:08:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75D1761755;
	Thu, 21 May 2026 12:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZrFsbkeIsTKT; Thu, 21 May 2026 12:08:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53F2961752
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779365289;
	bh=GKdV+cPDxT30YRByO17C46BEwI5YQv6bk9+Z1aD1bM0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hb9di+cZsCn4lJjiugXdj+M9D+1xJdcazm2zKkldVRLcyzUENa08ezmEw1tU8dem+
	 t4VoG5Xl8iCUzbZzyFpgduYc2G9BYh6i3lKs6UNYY8uzsFNTKbNO6Xxp8Q1iAp0U99
	 RZ4Hkvj745Llq5HZCsxzS2/NcRvd19iIZ1Ap8gacW1wUbzCkGsT/g2/gkAXGdVT4y/
	 iLBzdo9TIC0DAAKGMZlM2rTbfZ4nnxmU7jP90H8Z+bbT0xrNxAtQvtD8QfLSsL8L6Y
	 JtDuM9VuZDn7qV9y/zxppGbc402Wynny77R2IaJi7PbcmEeWrk+sJi/UriOcBfsqtx
	 GFjBTT2dwW7lQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53F2961752;
	Thu, 21 May 2026 12:08:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 87F9E265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6DA8A61751
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:08:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ukJ6i3bF0mOe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2026 12:08:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2CD2F61750
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CD2F61750
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CD2F61750
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:08:05 +0000 (UTC)
X-CSE-ConnectionGUID: driESZZ6RJqlGXodgiXFXQ==
X-CSE-MsgGUID: 9BdYBEY5RJu/FZqbrIHHgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="90856120"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="90856120"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:07:59 -0700
X-CSE-ConnectionGUID: 5bE8l1g1SbSnYtctE9jjYA==
X-CSE-MsgGUID: 4yDO+L6oRZyrcbq73yBFKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="244502626"
Received: from igk-lkp-server01.igk.intel.com (HELO bdf09bfdbd5f)
 ([10.211.93.152])
 by orviesa003.jf.intel.com with ESMTP; 21 May 2026 05:07:56 -0700
Received: from kbuild by bdf09bfdbd5f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wQ2Bt-00000000Aqn-3Lj2;
 Thu, 21 May 2026 12:07:53 +0000
Date: Thu, 21 May 2026 14:07:19 +0200
From: kernel test robot <lkp@intel.com>
To: Ashwin Gundarapu <linuxuser509@zohomail.in>,
 "anthony.l.nguyen@intel.com" <przemyslaw.kitszel@intel.com>,
 andrewnetdev <andrew+netdev@lunn.ch>, davem <davem@davemloft.net>,
 edumazet <edumazet@google.com>, kuba <kuba@kernel.org>,
 pabeni <pabeni@redhat.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <202605211409.vFzkDRoq-lkp@intel.com>
References: <19e49280392.4757403170773.5767589851918809405@zohomail.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19e49280392.4757403170773.5767589851918809405@zohomail.in>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779365286; x=1810901286;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RcFveqQ7a8lV96kPtiSp9MUVrmozzT5OhtAzJqAOeLI=;
 b=mKyXA2rpOmMNjdp+MYNhC6qzj5jrgWmfP/jYsRgRlu0wq6Nqr7wXE8Du
 bR0SuqfN84JiQcHTp4MR3m2hCmIoyRpvJRGY/EleqFNvFJcurO7sG4xKk
 T9Si3Yxid9EnrQZWMwOCTq1EOouEhkTnBTDP+4BrZ59aSTTevyjrkX+aZ
 8DDoiLea2XblJGJYNHKPyjr7Ouesz/fnxhmp55NgDoxqU1Y7abEp3djYV
 W1kuyPv6AsIrgKb4i7hCZgSLJH6y3LZ5yssFUO7vcaqjAK5P8zqKL3vqM
 Ps3sqmGHl8jjhjUxvgI18XR2kpRaicpT7le7CaJoe9AledxIk9cyvWDZN
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mKyXA2rp
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linuxuser509@zohomail.in,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:llvm@lists.linux.dev,m:oe-kbuild-all@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,01.org:url,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: E5B6C5A48B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ashwin,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ashwin-Gundarapu/net-e100-replace-silent-hope-for-the-best-with-debug-message/20260521-141158
base:   net-next/main
patch link:    https://lore.kernel.org/r/19e49280392.4757403170773.5767589851918809405%40zohomail.in
patch subject: [PATCH net-next] net: e100: replace silent 'hope for the best' with debug message
config: x86_64-kexec (https://download.01.org/0day-ci/archive/20260521/202605211409.vFzkDRoq-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260521/202605211409.vFzkDRoq-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202605211409.vFzkDRoq-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/e100.c:1459:3: error: expected expression
    1459 |                 else {
         |                 ^
   1 error generated.


vim +1459 drivers/net/ethernet/intel/e100.c

720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1430  
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1431  #define NCONFIG_AUTO_SWITCH	0x0080
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1432  #define MII_NSC_CONG		MII_RESV1
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1433  #define NSC_CONG_ENABLE		0x0100
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1434  #define NSC_CONG_TXREADY	0x0400
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1435  static int e100_phy_init(struct nic *nic)
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1436  {
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1437  	struct net_device *netdev = nic->netdev;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1438  	u32 addr;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1439  	u16 bmcr, stat, id_lo, id_hi, cong;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1440  
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1441  	/* Discover phy addr by searching addrs in order {1,0,2,..., 31} */
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1442  	for (addr = 0; addr < 32; addr++) {
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1443  		nic->mii.phy_id = (addr == 0) ? 1 : (addr == 1) ? 0 : addr;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1444  		bmcr = mdio_read(netdev, nic->mii.phy_id, MII_BMCR);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1445  		stat = mdio_read(netdev, nic->mii.phy_id, MII_BMSR);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1446  		stat = mdio_read(netdev, nic->mii.phy_id, MII_BMSR);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1447  		if (!((bmcr == 0xFFFF) || ((stat == 0) && (bmcr == 0))))
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1448  			break;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1449  	}
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1450  	if (addr == 32) {
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1451  		/* uhoh, no PHY detected: check whether we seem to be some
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1452  		 * weird, rare variant which is *known* to not have any MII.
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1453  		 * But do this AFTER MII checking only, since this does
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1454  		 * lookup of EEPROM values which may easily be unreliable. */
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1455  		if (e100_phy_check_without_mii(nic))
e95e8b2860fba4 drivers/net/ethernet/intel/e100.c Ashwin Gundarapu 2026-05-10  1456                          netif_dbg(nic, probe, nic->netdev,
e95e8b2860fba4 drivers/net/ethernet/intel/e100.c Ashwin Gundarapu 2026-05-10  1457                                    "No MII PHY detected, continuing anyway\n");
e95e8b2860fba4 drivers/net/ethernet/intel/e100.c Ashwin Gundarapu 2026-05-10  1458                          return 0;
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10 @1459  		else {
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1460  			/* for unknown cases log a fatal error */
fa05e1ad1b61b3 drivers/net/e100.c                Joe Perches      2010-03-16  1461  			netif_err(nic, hw, nic->netdev,
fa05e1ad1b61b3 drivers/net/e100.c                Joe Perches      2010-03-16  1462  				  "Failed to locate any known PHY, aborting\n");
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1463  			return -EAGAIN;
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1464  		}
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1465  	} else
fa05e1ad1b61b3 drivers/net/e100.c                Joe Perches      2010-03-16  1466  		netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
fa05e1ad1b61b3 drivers/net/e100.c                Joe Perches      2010-03-16  1467  			     "phy_addr = %d\n", nic->mii.phy_id);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1468  
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1469  	/* Get phy ID */
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1470  	id_lo = mdio_read(netdev, nic->mii.phy_id, MII_PHYSID1);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1471  	id_hi = mdio_read(netdev, nic->mii.phy_id, MII_PHYSID2);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1472  	nic->phy = (u32)id_hi << 16 | (u32)id_lo;
fa05e1ad1b61b3 drivers/net/e100.c                Joe Perches      2010-03-16  1473  	netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
fa05e1ad1b61b3 drivers/net/e100.c                Joe Perches      2010-03-16  1474  		     "phy ID = 0x%08X\n", nic->phy);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1475  
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1476  	/* Select the phy and isolate the rest */
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1477  	for (addr = 0; addr < 32; addr++) {
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1478  		if (addr != nic->mii.phy_id) {
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1479  			mdio_write(netdev, addr, MII_BMCR, BMCR_ISOLATE);
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1480  		} else if (nic->phy != phy_82552_v) {
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1481  			bmcr = mdio_read(netdev, addr, MII_BMCR);
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1482  			mdio_write(netdev, addr, MII_BMCR,
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1483  				bmcr & ~BMCR_ISOLATE);
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1484  		}
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1485  	}
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1486  	/*
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1487  	 * Workaround for 82552:
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1488  	 * Clear the ISOLATE bit on selected phy_id last (mirrored on all
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1489  	 * other phy_id's) using bmcr value from addr discovery loop above.
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1490  	 */
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1491  	if (nic->phy == phy_82552_v)
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1492  		mdio_write(netdev, nic->mii.phy_id, MII_BMCR,
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1493  			bmcr & ~BMCR_ISOLATE);
8fbd962e39517d drivers/net/e100.c                Bruce Allan      2009-10-29  1494  
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1495  	/* Handle National tx phys */
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1496  #define NCS_PHY_MODEL_MASK	0xFFF0FFFF
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1497  	if ((nic->phy & NCS_PHY_MODEL_MASK) == phy_nsc_tx) {
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1498  		/* Disable congestion control */
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1499  		cong = mdio_read(netdev, nic->mii.phy_id, MII_NSC_CONG);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1500  		cong |= NSC_CONG_TXREADY;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1501  		cong &= ~NSC_CONG_ENABLE;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1502  		mdio_write(netdev, nic->mii.phy_id, MII_NSC_CONG, cong);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1503  	}
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1504  
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1505  	if (nic->phy == phy_82552_v) {
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1506  		u16 advert = mdio_read(netdev, nic->mii.phy_id, MII_ADVERTISE);
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1507  
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1508  		/* assign special tweaked mdio_ctrl() function */
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1509  		nic->mdio_ctrl = mdio_ctrl_phy_82552_v;
720017623ab294 drivers/net/e100.c                Andreas Mohr     2009-06-10  1510  
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1511  		/* Workaround Si not advertising flow-control during autoneg */
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1512  		advert |= ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM;
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1513  		mdio_write(netdev, nic->mii.phy_id, MII_ADVERTISE, advert);
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1514  
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1515  		/* Reset for the above changes to take effect */
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1516  		bmcr = mdio_read(netdev, nic->mii.phy_id, MII_BMCR);
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1517  		bmcr |= BMCR_RESET;
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1518  		mdio_write(netdev, nic->mii.phy_id, MII_BMCR, bmcr);
b55de80e498920 drivers/net/e100.c                Bruce Allan      2009-03-21  1519  	} else if ((nic->mac >= mac_82550_D102) || ((nic->flags & ich) &&
60ffa478759f39 drivers/net/e100.c                Jeff Kirsher     2006-08-16  1520  	   (mdio_read(netdev, nic->mii.phy_id, MII_TPISTATUS) & 0x8000) &&
d4ef55288aa2e1 drivers/net/ethernet/intel/e100.c Jesse Brandeburg 2021-03-25  1521  	   (le16_to_cpu(nic->eeprom[eeprom_cnfg_mdix]) & eeprom_mdix_enabled))) {
60ffa478759f39 drivers/net/e100.c                Jeff Kirsher     2006-08-16  1522  		/* enable/disable MDI/MDI-X auto-switching. */
60ffa478759f39 drivers/net/e100.c                Jeff Kirsher     2006-08-16  1523  		mdio_write(netdev, nic->mii.phy_id, MII_NCONFIG,
60ffa478759f39 drivers/net/e100.c                Jeff Kirsher     2006-08-16  1524  				nic->mii.force_media ? 0 : NCONFIG_AUTO_SWITCH);
648951451e6d2d drivers/net/e100.c                Malli Chilakala  2005-06-17  1525  	}
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1526  
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1527  	return 0;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1528  }
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-16  1529  

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
