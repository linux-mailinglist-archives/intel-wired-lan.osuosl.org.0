Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A3DAA68E8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 04:58:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DCD8412AD;
	Fri,  2 May 2025 02:58:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ebZyul-2rQYK; Fri,  2 May 2025 02:58:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7572415BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746154698;
	bh=e7DRHyVTuKzj6SGuQ2EGjyRngeXb3SUK2opH5fygLyw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wIUaY7njQagk1TBjCycxLGMBxsxX8VLVF2vdAEQpR7EiErlZdwTv1WzBECtXWJkSU
	 Kr29iYCSne4oRfefQJbhDpw5r9DkFj+1zsPE0tSyiKaDq8juYvT11CTctbsOXquDe3
	 ZFpuktvYTc2Zeqr70pqc25PqVr5WOmDBkIi/5GeJzIBPmNtEaV7uWp8cEqjchua3E8
	 oWqSlY+EpljNheis/wZmiyneCOOTfgicxBH4YMKNunVzSlCW/eIVgEYxO+QyPwHvwR
	 NRNl+IwHnU36w92DJCchqcALUgUcasq4w8C8Glkjk0nPBXpQ0V9RZ0KsZb6pq62mqy
	 +RcwuZHSli2vg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7572415BC;
	Fri,  2 May 2025 02:58:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C2BCD113
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 02:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF466607D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 02:58:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EXdxlyC0rL4e for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 May 2025 02:58:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 87B48607B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87B48607B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 87B48607B9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 02:58:15 +0000 (UTC)
X-CSE-ConnectionGUID: C3YKlfeQRj2jQcyQ07ag3w==
X-CSE-MsgGUID: JvgxWVGLRESH8spo62fMJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47979451"
X-IronPort-AV: E=Sophos;i="6.15,255,1739865600"; d="scan'208";a="47979451"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 19:58:15 -0700
X-CSE-ConnectionGUID: 3DGAyZvLT7yMCTjVMI8iKQ==
X-CSE-MsgGUID: o2DMp5ZpRI6L8Q0XlB/mtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,255,1739865600"; d="scan'208";a="134485173"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 01 May 2025 19:58:12 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uAgbJ-0004Vt-2Z;
 Fri, 02 May 2025 02:58:09 +0000
Date: Fri, 2 May 2025 10:57:12 +0800
From: kernel test robot <lkp@intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, linux-rt-devel@lists.linux.dev
Cc: oe-kbuild-all@lists.linux.dev, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wander Lairson Costa <wander@redhat.com>
Message-ID: <202505021206.Ab0hOnzq-lkp@intel.com>
References: <20250430144452.8zcAZc29@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250430144452.8zcAZc29@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746154696; x=1777690696;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PgdIpn3TsAM1M0QU6nF1cNfMOhGv5+4ZfjkqR8RMiDo=;
 b=MWsEfnmKdvxJflPWsJMTZYA6pegj7srDG3Oau7/AUQe7bu50XthMzU7v
 c1c8qtJgqLXFVVckj1TmYTHzcbE5dyL8+kcn0HYgDugDVK4eZ3zWmR6p6
 hP4ho67DI2ickZp1NeD9bhTOj2dyJACkF9WA3EOhjWf8Q7ZlclgdNvZHz
 IIw25i4Dd6QFdXNO4g7kr6vRnbT5mZsQ8PfjRPsRNEkoXiPOLFU5j6w46
 /sD1d4L4J5afBoRbv5SsCYWowyGsI8maXeoU46oo4q7v0NP8BXFCSt+/0
 OvqztnNpAVrY+rephWGupg/C+MgPzyrzae4u7Bq+JcvUCNwkTvb4xeE8v
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MWsEfnmK
Subject: Re: [Intel-wired-lan] [PATCH] igb: Request igb_msix_other as a
 threaded interrupt handler
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

Hi Sebastian,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]
[also build test ERROR on tnguy-net-queue/dev-queue linus/master v6.15-rc4 next-20250501]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sebastian-Andrzej-Siewior/igb-Request-igb_msix_other-as-a-threaded-interrupt-handler/20250430-225615
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20250430144452.8zcAZc29%40linutronix.de
patch subject: [Intel-wired-lan] [PATCH] igb: Request igb_msix_other as a threaded interrupt handler
config: loongarch-randconfig-002-20250502 (https://download.01.org/0day-ci/archive/20250502/202505021206.Ab0hOnzq-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250502/202505021206.Ab0hOnzq-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202505021206.Ab0hOnzq-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/igb/igb_main.c: In function 'igb_request_msix':
>> drivers/net/ethernet/intel/igb/igb_main.c:916:61: error: passing argument 4 of 'request_threaded_irq' makes integer from pointer without a cast [-Wint-conversion]
     916 |                                    igb_msix_other, 0, netdev->name, adapter);
         |                                                       ~~~~~~^~~~~~
         |                                                             |
         |                                                             char *
   In file included from include/linux/kernel_stat.h:8,
                    from include/linux/cgroup.h:26,
                    from include/net/netprio_cgroup.h:11,
                    from include/linux/netdevice.h:42,
                    from drivers/net/ethernet/intel/igb/igb_main.c:12:
   include/linux/interrupt.h:153:36: note: expected 'long unsigned int' but argument is of type 'char *'
     153 |                      unsigned long flags, const char *name, void *dev);
         |                      ~~~~~~~~~~~~~~^~~~~
>> drivers/net/ethernet/intel/igb/igb_main.c:916:69: error: passing argument 5 of 'request_threaded_irq' from incompatible pointer type [-Wincompatible-pointer-types]
     916 |                                    igb_msix_other, 0, netdev->name, adapter);
         |                                                                     ^~~~~~~
         |                                                                     |
         |                                                                     struct igb_adapter *
   include/linux/interrupt.h:153:55: note: expected 'const char *' but argument is of type 'struct igb_adapter *'
     153 |                      unsigned long flags, const char *name, void *dev);
         |                                           ~~~~~~~~~~~~^~~~
>> drivers/net/ethernet/intel/igb/igb_main.c:915:15: error: too few arguments to function 'request_threaded_irq'
     915 |         err = request_threaded_irq(adapter->msix_entries[vector].vector,
         |               ^~~~~~~~~~~~~~~~~~~~
   include/linux/interrupt.h:151:1: note: declared here
     151 | request_threaded_irq(unsigned int irq, irq_handler_t handler,
         | ^~~~~~~~~~~~~~~~~~~~


vim +/request_threaded_irq +916 drivers/net/ethernet/intel/igb/igb_main.c

9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  901  
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  902  /**
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  903   *  igb_request_msix - Initialize MSI-X interrupts
b980ac18c95f32 drivers/net/ethernet/intel/igb/igb_main.c Jeff Kirsher              2013-02-23  904   *  @adapter: board private structure to initialize
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  905   *
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  906   *  igb_request_msix allocates MSI-X vectors and requests interrupts from the
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  907   *  kernel.
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  908   **/
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  909  static int igb_request_msix(struct igb_adapter *adapter)
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  910  {
6c19d772618fea drivers/net/ethernet/intel/igb/igb_main.c Aleksandr Loktionov       2021-04-22  911  	unsigned int num_q_vectors = adapter->num_q_vectors;
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  912  	struct net_device *netdev = adapter->netdev;
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  913  	int i, err = 0, vector = 0, free_vector = 0;
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  914  
086e5c4c0db155 drivers/net/ethernet/intel/igb/igb_main.c Sebastian Andrzej Siewior 2025-04-30 @915  	err = request_threaded_irq(adapter->msix_entries[vector].vector,
50d325bb05cef2 drivers/net/ethernet/intel/igb/igb_main.c Wander Lairson Costa      2024-11-06 @916  				   igb_msix_other, 0, netdev->name, adapter);
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  917  	if (err)
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  918  		goto err_out;
047e0030f1e601 drivers/net/igb/igb_main.c                Alexander Duyck           2009-10-27  919  
6c19d772618fea drivers/net/ethernet/intel/igb/igb_main.c Aleksandr Loktionov       2021-04-22  920  	if (num_q_vectors > MAX_Q_VECTORS) {
6c19d772618fea drivers/net/ethernet/intel/igb/igb_main.c Aleksandr Loktionov       2021-04-22  921  		num_q_vectors = MAX_Q_VECTORS;
6c19d772618fea drivers/net/ethernet/intel/igb/igb_main.c Aleksandr Loktionov       2021-04-22  922  		dev_warn(&adapter->pdev->dev,
6c19d772618fea drivers/net/ethernet/intel/igb/igb_main.c Aleksandr Loktionov       2021-04-22  923  			 "The number of queue vectors (%d) is higher than max allowed (%d)\n",
6c19d772618fea drivers/net/ethernet/intel/igb/igb_main.c Aleksandr Loktionov       2021-04-22  924  			 adapter->num_q_vectors, MAX_Q_VECTORS);
6c19d772618fea drivers/net/ethernet/intel/igb/igb_main.c Aleksandr Loktionov       2021-04-22  925  	}
6c19d772618fea drivers/net/ethernet/intel/igb/igb_main.c Aleksandr Loktionov       2021-04-22  926  	for (i = 0; i < num_q_vectors; i++) {
047e0030f1e601 drivers/net/igb/igb_main.c                Alexander Duyck           2009-10-27  927  		struct igb_q_vector *q_vector = adapter->q_vector[i];
047e0030f1e601 drivers/net/igb/igb_main.c                Alexander Duyck           2009-10-27  928  
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  929  		vector++;
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  930  
7b06a6909555ff drivers/net/ethernet/intel/igb/igb_main.c Jarod Wilson              2015-10-19  931  		q_vector->itr_register = adapter->io_addr + E1000_EITR(vector);
047e0030f1e601 drivers/net/igb/igb_main.c                Alexander Duyck           2009-10-27  932  
0ba829943c5180 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck           2011-08-26  933  		if (q_vector->rx.ring && q_vector->tx.ring)
047e0030f1e601 drivers/net/igb/igb_main.c                Alexander Duyck           2009-10-27  934  			sprintf(q_vector->name, "%s-TxRx-%u", netdev->name,
0ba829943c5180 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck           2011-08-26  935  				q_vector->rx.ring->queue_index);
0ba829943c5180 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck           2011-08-26  936  		else if (q_vector->tx.ring)
047e0030f1e601 drivers/net/igb/igb_main.c                Alexander Duyck           2009-10-27  937  			sprintf(q_vector->name, "%s-tx-%u", netdev->name,
0ba829943c5180 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck           2011-08-26  938  				q_vector->tx.ring->queue_index);
0ba829943c5180 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck           2011-08-26  939  		else if (q_vector->rx.ring)
047e0030f1e601 drivers/net/igb/igb_main.c                Alexander Duyck           2009-10-27  940  			sprintf(q_vector->name, "%s-rx-%u", netdev->name,
0ba829943c5180 drivers/net/ethernet/intel/igb/igb_main.c Alexander Duyck           2011-08-26  941  				q_vector->rx.ring->queue_index);
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  942  		else
047e0030f1e601 drivers/net/igb/igb_main.c                Alexander Duyck           2009-10-27  943  			sprintf(q_vector->name, "%s-unused", netdev->name);
047e0030f1e601 drivers/net/igb/igb_main.c                Alexander Duyck           2009-10-27  944  
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  945  		err = request_irq(adapter->msix_entries[vector].vector,
a0607fd3a25ba1 drivers/net/igb/igb_main.c                Joe Perches               2009-11-18  946  				  igb_msix_ring, 0, q_vector->name,
047e0030f1e601 drivers/net/igb/igb_main.c                Alexander Duyck           2009-10-27  947  				  q_vector);
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  948  		if (err)
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  949  			goto err_free;
1911329ae9ce05 drivers/net/ethernet/intel/igb/igb_main.c Kurt Kanzenbach           2025-03-19  950  
1911329ae9ce05 drivers/net/ethernet/intel/igb/igb_main.c Kurt Kanzenbach           2025-03-19  951  		netif_napi_set_irq(&q_vector->napi,
1911329ae9ce05 drivers/net/ethernet/intel/igb/igb_main.c Kurt Kanzenbach           2025-03-19  952  				   adapter->msix_entries[vector].vector);
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  953  	}
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  954  
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  955  	igb_configure_msix(adapter);
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  956  	return 0;
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  957  
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  958  err_free:
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  959  	/* free already assigned IRQs */
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  960  	free_irq(adapter->msix_entries[free_vector++].vector, adapter);
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  961  
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  962  	vector--;
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  963  	for (i = 0; i < vector; i++) {
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  964  		free_irq(adapter->msix_entries[free_vector++].vector,
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  965  			 adapter->q_vector[i]);
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  966  	}
52285b762b3681 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann            2012-12-04  967  err_out:
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  968  	return err;
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  969  }
9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok                  2008-01-24  970  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
