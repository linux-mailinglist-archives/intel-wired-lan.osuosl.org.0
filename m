Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D084ECF94
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 00:23:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3D7F60F1C;
	Wed, 30 Mar 2022 22:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M-u5Hw1u835j; Wed, 30 Mar 2022 22:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7048260F1A;
	Wed, 30 Mar 2022 22:23:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 100B31BF300
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 22:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09B5140FD4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 22:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Ys54SRAqDTU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Mar 2022 22:23:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E91040B10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 22:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648679027; x=1680215027;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Dn16n6iKAMyO9UBg2tB3la8YJRFc/vQRtYDTTZdsylA=;
 b=S6wtzdsEaciNeSfCZyPSSkYQhIiqetC/U18SsAdcMXQsd11ajEMMXrJD
 mCVJzWNvtt2xgI6CQ6egjxpo3/UBosha7UXvM/WPCO7EpoQEZS4WJogL8
 b2YQ0KoBmuA3nm2IoFJIUmnq5GdX8fkSIbFb1PjGK58r2AFH2nLI5QK/7
 lnkf+crwXXrxx9C8fQxovqQ3vdZHh0lNQW4O8QzMY+UGgxxrGDUOQD9jO
 m0V4Hod38aOSatfIfPGpmPPlHxsFbbZjpjaJPOsCmOjTzTvBO5IUhHCgr
 crUIZVxbNlzoZnE/RnkLnIlFzMfNqbtB8AzS6XEgdAPpzYggVNVnL8P5H A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="284572440"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="284572440"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 15:23:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="522082569"
Received: from lkp-server02.sh.intel.com (HELO 56431612eabd) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 30 Mar 2022 15:23:44 -0700
Received: from kbuild by 56431612eabd with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nZgj9-0000Zk-Kc;
 Wed, 30 Mar 2022 22:23:43 +0000
Date: Thu, 31 Mar 2022 06:23:02 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Maloszewski <michal.maloszewski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202203310630.dWNnf9Ol-lkp@intel.com>
References: <20220330200551.1319989-1-michal.maloszewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220330200551.1319989-1-michal.maloszewski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix error when changing
 ring parameters on ice PF
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Michal Maloszewski <michal.maloszewski@intel.com>, llvm@lists.linux.dev,
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Michal,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Michal-Maloszewski/iavf-Fix-error-when-changing-ring-parameters-on-ice-PF/20220331-020106
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git 77c9387c0c5bd496fba3200024e3618356b2fd34
config: s390-randconfig-r033-20220330 (https://download.01.org/0day-ci/archive/20220331/202203310630.dWNnf9Ol-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 0f6d9501cf49ce02937099350d08f20c4af86f3d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/a8068b9657399592e287db78ed570816d1bda796
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Michal-Maloszewski/iavf-Fix-error-when-changing-ring-parameters-on-ice-PF/20220331-020106
        git checkout a8068b9657399592e287db78ed570816d1bda796
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=s390 SHELL=/bin/bash drivers/net/ethernet/intel/iavf/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/iavf/iavf_ethtool.c:5:
   In file included from drivers/net/ethernet/intel/iavf/iavf.h:8:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:37:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from drivers/net/ethernet/intel/iavf/iavf_ethtool.c:5:
   In file included from drivers/net/ethernet/intel/iavf/iavf.h:8:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:35:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from drivers/net/ethernet/intel/iavf/iavf_ethtool.c:5:
   In file included from drivers/net/ethernet/intel/iavf/iavf.h:8:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/net/ethernet/intel/iavf/iavf_ethtool.c:635:39: warning: '&&' within '||' [-Wlogical-op-parentheses]
               adapter->state == __IAVF_RUNNING &&
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
   drivers/net/ethernet/intel/iavf/iavf_ethtool.c:635:39: note: place parentheses around the '&&' expression to silence this warning
               adapter->state == __IAVF_RUNNING &&
                                                ^
               (
   13 warnings generated.


vim +635 drivers/net/ethernet/intel/iavf/iavf_ethtool.c

   612	
   613	/**
   614	 * iavf_set_ringparam - Set ring parameters
   615	 * @netdev: network interface device structure
   616	 * @ring: ethtool ringparam structure
   617	 * @kernel_ring: ethtool external ringparam structure
   618	 * @extack: netlink extended ACK report struct
   619	 *
   620	 * Sets ring parameters. TX and RX rings are controlled separately, but the
   621	 * number of rings is not specified, so all rings get the same settings.
   622	 **/
   623	static int iavf_set_ringparam(struct net_device *netdev,
   624				      struct ethtool_ringparam *ring,
   625				      struct kernel_ethtool_ringparam *kernel_ring,
   626				      struct netlink_ext_ack *extack)
   627	{
   628		struct iavf_adapter *adapter = netdev_priv(netdev);
   629		u32 new_rx_count, new_tx_count;
   630	
   631		if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
   632			return -EINVAL;
   633	
   634		if (adapter->state == __IAVF_RESETTING ||
 > 635		    adapter->state == __IAVF_RUNNING &&
   636		    (adapter->flags & IAVF_FLAG_QUEUES_DISABLED))
   637			return -EAGAIN;
   638	
   639		if (ring->tx_pending > IAVF_MAX_TXD ||
   640		    ring->tx_pending < IAVF_MIN_TXD ||
   641		    ring->rx_pending > IAVF_MAX_RXD ||
   642		    ring->rx_pending < IAVF_MIN_RXD) {
   643			netdev_err(netdev, "Descriptors requested (Tx: %d / Rx: %d) out of range [%d-%d] (increment %d)\n",
   644				   ring->tx_pending, ring->rx_pending, IAVF_MIN_TXD,
   645				   IAVF_MAX_RXD, IAVF_REQ_DESCRIPTOR_MULTIPLE);
   646			return -EINVAL;
   647		}
   648	
   649		new_tx_count = ALIGN(ring->tx_pending, IAVF_REQ_DESCRIPTOR_MULTIPLE);
   650		if (new_tx_count != ring->tx_pending)
   651			netdev_info(netdev, "Requested Tx descriptor count rounded up to %d\n",
   652				    new_tx_count);
   653	
   654		new_rx_count = ALIGN(ring->rx_pending, IAVF_REQ_DESCRIPTOR_MULTIPLE);
   655		if (new_rx_count != ring->rx_pending)
   656			netdev_info(netdev, "Requested Rx descriptor count rounded up to %d\n",
   657				    new_rx_count);
   658	
   659		/* if nothing to do return success */
   660		if ((new_tx_count == adapter->tx_desc_count) &&
   661		    (new_rx_count == adapter->rx_desc_count)) {
   662			netdev_dbg(netdev, "Nothing to change, descriptor count is same as requested\n");
   663			return 0;
   664		}
   665	
   666		if (new_tx_count != adapter->tx_desc_count) {
   667			netdev_dbg(netdev, "Changing Tx descriptor count from %d to %d\n",
   668				   adapter->tx_desc_count, new_tx_count);
   669			adapter->tx_desc_count = new_tx_count;
   670		}
   671	
   672		if (new_rx_count != adapter->rx_desc_count) {
   673			netdev_dbg(netdev, "Changing Rx descriptor count from %d to %d\n",
   674				   adapter->rx_desc_count, new_rx_count);
   675			adapter->rx_desc_count = new_rx_count;
   676		}
   677	
   678		if (netif_running(netdev)) {
   679			adapter->flags |= IAVF_FLAG_RESET_NEEDED;
   680			queue_work(iavf_wq, &adapter->reset_task);
   681		}
   682	
   683		return 0;
   684	}
   685	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
