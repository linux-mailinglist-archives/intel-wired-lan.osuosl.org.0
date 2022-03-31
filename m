Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D544ED14D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 03:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABC1E41E2F;
	Thu, 31 Mar 2022 01:26:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kpTowZ5wI9xn; Thu, 31 Mar 2022 01:26:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FB3641E02;
	Thu, 31 Mar 2022 01:26:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B33661BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 01:26:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F7D541E02
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 01:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JB37gb_Lb9X3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Mar 2022 01:26:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2965241D8F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 01:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648689994; x=1680225994;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ch0ujzbczwh/QisZipsTxZjqDaEacRC95cBm4hEhMkk=;
 b=hpSKv5xxG6L0Udeu8Jgxm825NrnPvNtNf4emmq48nCqM3F6OJkT50sPg
 BHLg1FI1u3VDaZMGQqN/NeFTGrIknp3LsaWe0Ow/r2KI255YZUeeQDbhK
 Y2SOVWRTnrFhAGvHRAMc+4i/09GsMB3sbPn2/O5+rwoL3Kt4Hvn2y39Ce
 IxngFUFlRfgQFiJ1VrBuIuhkL6yYh/RAjCe6MveOxgi/T1EyN9jMdgZ5O
 4/Wqji2M7kjpo/3Uq0uxPhfmaryD3myXHccXGnSFD07BoPGE3gdT4MIjs
 nfTlQ2aDlED+2uj1sWdGb0f+J58bF2O+uu76VoZXLaUfnQK7q1Bq+heh9 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="258516357"
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="258516357"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 18:26:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="522126592"
Received: from lkp-server02.sh.intel.com (HELO 56431612eabd) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 30 Mar 2022 18:26:31 -0700
Received: from kbuild by 56431612eabd with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nZja2-0000jj-Vi;
 Thu, 31 Mar 2022 01:26:30 +0000
Date: Thu, 31 Mar 2022 09:26:01 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Maloszewski <michal.maloszewski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202203310910.dFCrEjEI-lkp@intel.com>
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
 Michal Maloszewski <michal.maloszewski@intel.com>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Michal,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Michal-Maloszewski/iavf-Fix-error-when-changing-ring-parameters-on-ice-PF/20220331-020106
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git 77c9387c0c5bd496fba3200024e3618356b2fd34
config: ia64-buildonly-randconfig-r006-20220330 (https://download.01.org/0day-ci/archive/20220331/202203310910.dFCrEjEI-lkp@intel.com/config)
compiler: ia64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/a8068b9657399592e287db78ed570816d1bda796
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Michal-Maloszewski/iavf-Fix-error-when-changing-ring-parameters-on-ice-PF/20220331-020106
        git checkout a8068b9657399592e287db78ed570816d1bda796
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=ia64 SHELL=/bin/bash drivers/net/ethernet/intel/iavf/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/iavf/iavf_ethtool.c: In function 'iavf_set_ringparam':
>> drivers/net/ethernet/intel/iavf/iavf_ethtool.c:635:46: warning: suggest parentheses around '&&' within '||' [-Wparentheses]
     635 |             adapter->state == __IAVF_RUNNING &&
         |             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
     636 |             (adapter->flags & IAVF_FLAG_QUEUES_DISABLED))
         |             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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
