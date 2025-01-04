Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0932A01449
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 13:20:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72BC260753;
	Sat,  4 Jan 2025 12:20:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bPFBVcgLqRu0; Sat,  4 Jan 2025 12:20:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8480A606C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735993244;
	bh=n9xP6h5YD0drx98TYCQuDuJFlEBJK03oRw1Dp4uWLwE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZcuEiXpga3FzBK4QY0YWeAJENSnSwODEs/ii5Ckh3u6+c9YcGPAsWZfABVEX5CZN3
	 18/YPGCFjWJ4yYFhg+LGnMkJNX/0E63Wou1/EsYyro0k3Mb9IVnlIL2Tpahu54zYyn
	 Py9Gq45YwsI1Y+81WZV6BwST8qYJpN9QPb8sqBvZTH98MXfdRC0RZ4RLl+PVWitTpd
	 OH3YEZ4pukOGdn9KnTt/3I3p4j4oHARqjdnmwRFxzowg9XLN0Ks7zEKnotw9+JN3Gh
	 BwOnUT12IICfBki/OtTtXBhxkPdk5zrpRycQgaoPqfrXRs/Rhtou4mF0E3beO12y0g
	 CJCKd/Wm4oRpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8480A606C5;
	Sat,  4 Jan 2025 12:20:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4594AAF0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 12:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2606780E59
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 12:20:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ASwavtV_qX92 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 12:20:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 292FD80E53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 292FD80E53
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 292FD80E53
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 12:20:41 +0000 (UTC)
X-CSE-ConnectionGUID: 8k/ljYhwSiOXljeH5opkqw==
X-CSE-MsgGUID: Wi48iT/9Rm2Nt/NwlvtCIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="58676861"
X-IronPort-AV: E=Sophos;i="6.12,288,1728975600"; d="scan'208";a="58676861"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2025 04:20:42 -0800
X-CSE-ConnectionGUID: p0FvasuYSDyxzefyQE6o+Q==
X-CSE-MsgGUID: CHhcGX+YQvmLdp3QM8C65Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106047238"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 04 Jan 2025 04:20:37 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tU38t-000Atn-0B;
 Sat, 04 Jan 2025 12:20:35 +0000
Date: Sat, 4 Jan 2025 20:20:26 +0800
From: kernel test robot <lkp@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <202501042007.PjCFMiMs-lkp@intel.com>
References: <20250104004314.208259-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250104004314.208259-2-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735993243; x=1767529243;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SwkhW83SN+9B0/cCedUZg9e7m00QztMGxnZT4lZjad8=;
 b=ZS7VtQbkT8/yGEe4d6gbdpd100Mr4KiycEYgg28PVjmifyzOi8k7qKFd
 WFe3kkEja53Hyn0zBB7AW4lHGPMlLqWJ0yhtedVk5ff2aJ1IWpnLpqYzW
 kZcMHzwI0WNt4B1CEAMj445XOKdDxDINjevHCDH6Xdh/bq0+LjScK9w4O
 IeUf/wkTtqiiAuLKOS92Jzre/a+ngGpTcLfZXnff44cd7YajVLfvmHp3m
 h8rG7umGhtUTaV0jF/Wc6FgI69I/P3aRsR+MMZ8uYSsP7O6GH6yyUjtDG
 VqatndZy+o8RDOEpUNFIY+CuVYQJ0gxQY7R8WplfAszE3huZ2KSlWI3K3
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZS7VtQbk
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ahmed-Zaki/net-move-ARFS-rmap-management-to-core/20250104-084501
base:   net-next/main
patch link:    https://lore.kernel.org/r/20250104004314.208259-2-ahmed.zaki%40intel.com
patch subject: [PATCH net-next v3 1/6] net: move ARFS rmap management to core
config: arm-allmodconfig (https://download.01.org/0day-ci/archive/20250104/202501042007.PjCFMiMs-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250104/202501042007.PjCFMiMs-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501042007.PjCFMiMs-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/amazon/ena/ena_netdev.c: In function 'ena_init_rx_cpu_rmap':
   drivers/net/ethernet/amazon/ena/ena_netdev.c:165:16: error: too few arguments to function 'netif_enable_cpu_rmap'
     165 |         return netif_enable_cpu_rmap(adapter->netdev);
         |                ^~~~~~~~~~~~~~~~~~~~~
   In file included from include/net/inet_sock.h:19,
                    from include/net/ip.h:29,
                    from drivers/net/ethernet/amazon/ena/ena_netdev.c:16:
   include/linux/netdevice.h:2769:5: note: declared here
    2769 | int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs);
         |     ^~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/amazon/ena/ena_netdev.c:169:1: warning: control reaches end of non-void function [-Wreturn-type]
     169 | }
         | ^


vim +169 drivers/net/ethernet/amazon/ena/ena_netdev.c

548c4940b9f1f5 Sameeh Jubran    2019-12-10  161  
1738cd3ed34229 Netanel Belgazal 2016-08-10  162  static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter)
1738cd3ed34229 Netanel Belgazal 2016-08-10  163  {
1738cd3ed34229 Netanel Belgazal 2016-08-10  164  #ifdef CONFIG_RFS_ACCEL
4f6e7588aa8a24 Ahmed Zaki       2025-01-03  165  	return netif_enable_cpu_rmap(adapter->netdev);
4f6e7588aa8a24 Ahmed Zaki       2025-01-03  166  #else
1738cd3ed34229 Netanel Belgazal 2016-08-10  167  	return 0;
4f6e7588aa8a24 Ahmed Zaki       2025-01-03  168  #endif /* CONFIG_RFS_ACCEL */
1738cd3ed34229 Netanel Belgazal 2016-08-10 @169  }
1738cd3ed34229 Netanel Belgazal 2016-08-10  170  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
