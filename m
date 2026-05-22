Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mF+LDnIBEGqLSQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 09:10:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9005AFD84
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 09:10:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92C926F6A9;
	Fri, 22 May 2026 07:10:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id auvWN_nEEld9; Fri, 22 May 2026 07:10:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8445C6F6AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779433838;
	bh=J1hzk38vpZ/nr9TpOIopJba/nWPh6DwefiM9/fRghTo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C8OrVQ63vJ1fPE+H6PnibA9BfYCz5HSz6r54cGVmoDQECUNgtkfg4SUJvzHwMuOK6
	 kzEs8K2B4yStzxE8ihWTMU5wlQyM1saQW/VYSf4dlIMCsrDefSD1qFXz7KF/E89z1O
	 Y8gKWHE3wGy3rTCy7keKjULcMJ+zKGz3lqEO9C5hj9ciW8II2wjpldcvGcZGwc6CRR
	 uE+BVqiWDEWNPQiYRH9+o6qlQ49Olaql37gSVeajtR9NxA94ypjRO7Z3WExrfTYfjd
	 157DxS5h4JXMdLX2/hVjdjr4UFWnojpuxRX8DulwgJPGHAYNwx9zQKzarMN+9vdeqD
	 xWMJHhvFD0UCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8445C6F6AE;
	Fri, 22 May 2026 07:10:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F02B0282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 07:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E278B6F6AC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 07:10:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JD7LmVBj7FLr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2026 07:10:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 765696F6A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 765696F6A9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 765696F6A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 07:10:35 +0000 (UTC)
X-CSE-ConnectionGUID: /StBh29IRgO7Up4IuyfYNA==
X-CSE-MsgGUID: XQFefWJzSOS0CauyPwmPPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="91050953"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="91050953"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:10:35 -0700
X-CSE-ConnectionGUID: QgTrfsW9TJeEWuFXk3YVjg==
X-CSE-MsgGUID: eMY5qiooQM2aiSnIlKmB4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="238236669"
Received: from lkp-server01.sh.intel.com (HELO fdb68b0ce653) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 22 May 2026 00:10:32 -0700
Received: from kbuild by fdb68b0ce653 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wQK1d-000000001wf-1Boq;
 Fri, 22 May 2026 07:10:29 +0000
Date: Fri, 22 May 2026 15:09:48 +0800
From: kernel test robot <lkp@intel.com>
To: Ashwin Gundarapu <linuxuser509@zohomail.in>,
 "anthony.l.nguyen@intel.com" <przemyslaw.kitszel@intel.com>,
 andrewnetdev <andrew+netdev@lunn.ch>, davem <davem@davemloft.net>,
 edumazet <edumazet@google.com>, kuba <kuba@kernel.org>,
 pabeni <pabeni@redhat.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <202605221404.6yAWlKOQ-lkp@intel.com>
References: <19e49280392.4757403170773.5767589851918809405@zohomail.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19e49280392.4757403170773.5767589851918809405@zohomail.in>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779433835; x=1810969835;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=swEbMHwwBqlkC8hhDvdqYagb+ZOCeTkY69rhc69F2cI=;
 b=jCxc0IE4VUucPktS1xSbmFw8KIzGBos/sU5GNLNvVMBpYzb8aVQEITde
 SF5aF9M2oNDoVrt2GvNuDv1ZS9gu9U+7KFBvooWhZJkEMq5YbEh3FeH3M
 ivVgSx83kDcd5PJItV27HDWb0GtSM1x1tdEg6z3jgbxz2GimMfB4RQoL0
 JlZ8Gv1XxiMaYeeYy1jtqSr3lQtMH0ZSD65lgPjd/G7s0dhzWLbl+Qm/t
 VYXZsxFAxPd9wrU0w6zz+/l7GN1uvQ6ujVl4DGM1fIZZddmBFXrIZZaCr
 NQvvx2jzH+jhlB8jwBcd1smM/9mI6//EzdmfG9AonsNIqz7PXc8GOSdB0
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jCxc0IE4
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linuxuser509@zohomail.in,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:llvm@lists.linux.dev,m:oe-kbuild-all@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.993];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 3C9005AFD84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ashwin,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ashwin-Gundarapu/net-e100-replace-silent-hope-for-the-best-with-debug-message/20260521-141158
base:   net-next/main
patch link:    https://lore.kernel.org/r/19e49280392.4757403170773.5767589851918809405%40zohomail.in
patch subject: [PATCH net-next] net: e100: replace silent 'hope for the best' with debug message
config: riscv-allyesconfig (https://download.01.org/0day-ci/archive/20260522/202605221404.6yAWlKOQ-lkp@intel.com/config)
compiler: clang version 16.0.6 (https://github.com/llvm/llvm-project 7cbf1a2591520c2491aa35339f227775f4d3adf6)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260522/202605221404.6yAWlKOQ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202605221404.6yAWlKOQ-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/e100.c:1459:3: error: expected expression
                   else {
                   ^
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
