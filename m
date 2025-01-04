Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E694A014E6
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 14:04:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D7F64060E;
	Sat,  4 Jan 2025 13:04:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DNJ4sSFS7dwM; Sat,  4 Jan 2025 13:04:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5948540611
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735995881;
	bh=2JTTiUuLXmgV3SEghlQY0qK4DT6S9fZ9puU3jOrWUwg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KeEebICMfZGGJT27dkWasMq9OV0/InM8nnqFLvDr6xFmfHmeyZz5C9etsfjc1j45J
	 MFGgcCP8JMoQM481bh5kdY16Yt0HekAIzJmC3idRvG5wRsKD+gAPl6SfE6ld47GTHr
	 HKBbARNZ5pDjU8Vf69rumq+9MIMN9KXAsXe4sYJ1cmYSouc584XAupxf8xbdf2xPZX
	 rjbTiC5nE8fBA21GX+VoYBmR3L/o3/aR50Go9ZqZ1CgV3NIe6JYYnQ/L0EGGdS7XXo
	 Z8rt2dRllkHh+74WonrzAP4fwvPxHVAyEqyHSHWNKxKCbTWtNK3I/g7JCnsTZ7Avjg
	 DxXbrJnknxl3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5948540611;
	Sat,  4 Jan 2025 13:04:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E567DE0F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 13:04:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6A1140154
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 13:04:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rv7TqlL-oktj for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 13:04:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4535440114
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4535440114
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4535440114
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 13:04:37 +0000 (UTC)
X-CSE-ConnectionGUID: IM33xb1GRcSiVDHeFPoiBA==
X-CSE-MsgGUID: EHTgpouhRvGHexS2iHUGhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="61587797"
X-IronPort-AV: E=Sophos;i="6.12,288,1728975600"; d="scan'208";a="61587797"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2025 05:04:37 -0800
X-CSE-ConnectionGUID: kcBQ+cHERjiaWxsC721hng==
X-CSE-MsgGUID: U+axFSXCRdi3vWtyWEs6Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132931847"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 04 Jan 2025 05:02:40 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tU3na-000Av1-0X;
 Sat, 04 Jan 2025 13:02:38 +0000
Date: Sat, 4 Jan 2025 21:02:23 +0800
From: kernel test robot <lkp@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <202501042032.NTXMscn3-lkp@intel.com>
References: <20250104004314.208259-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250104004314.208259-2-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735995878; x=1767531878;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JTpwKEeauwnLtZZ9wCrKCc+kFchiTHPNdQz9vvRAW94=;
 b=LltuZBSkJ0MnSsbYN6rtlWWttMVbMXtjjWzZ0+9ED+EFSDRYrXrugie0
 K28kwBokhfE7fUf5NPw+fJ2XXVjc34/lWHYQxOWmiLdAdomsrBOaaaLhA
 y2OwQm/5iXrFxRXqsWtpvhAqZEF+QWKQWMLyX1AHNumk/O+QM1/rbmJXS
 MRxvJY7gVhze3w/eLD0ZP9F+0yQD8w1Wh54DICrgwHXkcpRwPOSKQhsjQ
 A2dEuY2XPkFDGIvu5OmiUS5y+Iwz/FIOQ0KtJ09XnI9aXzmHupqcmP8lK
 Qzz6VfFa/+WaGixFm8V2GnZsMGcIJU5HeujFw/qIhJqywyRxFdzE9GVwP
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LltuZBSk
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/6] net: move ARFS rmap
 management to core
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

Hi Ahmed,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ahmed-Zaki/net-move-ARFS-rmap-management-to-core/20250104-084501
base:   net-next/main
patch link:    https://lore.kernel.org/r/20250104004314.208259-2-ahmed.zaki%40intel.com
patch subject: [PATCH net-next v3 1/6] net: move ARFS rmap management to core
config: arm-allyesconfig (https://download.01.org/0day-ci/archive/20250104/202501042032.NTXMscn3-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250104/202501042032.NTXMscn3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501042032.NTXMscn3-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/amazon/ena/ena_netdev.c: In function 'ena_init_rx_cpu_rmap':
>> drivers/net/ethernet/amazon/ena/ena_netdev.c:165:16: error: too few arguments to function 'netif_enable_cpu_rmap'
     165 |         return netif_enable_cpu_rmap(adapter->netdev);
         |                ^~~~~~~~~~~~~~~~~~~~~
   In file included from include/net/inet_sock.h:19,
                    from include/net/ip.h:29,
                    from drivers/net/ethernet/amazon/ena/ena_netdev.c:16:
   include/linux/netdevice.h:2769:5: note: declared here
    2769 | int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs);
         |     ^~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/amazon/ena/ena_netdev.c:169:1: warning: control reaches end of non-void function [-Wreturn-type]
     169 | }
         | ^


vim +/netif_enable_cpu_rmap +165 drivers/net/ethernet/amazon/ena/ena_netdev.c

   161	
   162	static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter)
   163	{
   164	#ifdef CONFIG_RFS_ACCEL
 > 165		return netif_enable_cpu_rmap(adapter->netdev);
   166	#else
   167		return 0;
   168	#endif /* CONFIG_RFS_ACCEL */
   169	}
   170	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
