Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D8273286
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 17:11:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A3F9D200E5;
	Wed, 24 Jul 2019 15:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id met+O4awb3hb; Wed, 24 Jul 2019 15:11:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C15A72107A;
	Wed, 24 Jul 2019 15:11:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D14841BF355
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 04:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C6AD9203EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 04:32:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oBJ1nAFlstjc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 04:32:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id D97AC203E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 04:32:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 21:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; 
 d="gz'50?scan'50,208,50";a="368661570"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jul 2019 21:32:35 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hq8x9-000Bp6-Dl; Wed, 24 Jul 2019 12:32:35 +0800
Date: Wed, 24 Jul 2019 12:32:18 +0800
From: kbuild test robot <lkp@intel.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <201907241211.vApPKNPg%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3lqvn44n6esfjhyj"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Mailman-Approved-At: Wed, 24 Jul 2019 15:11:08 +0000
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 13/116]
 drivers/net/ethernet/aeroflex/greth.c:113:36: error: 'skb_frag_t {aka
 struct bio_vec}' has no member named 'size'
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
Cc: intel-wired-lan@lists.osuosl.org, kbuild-all@01.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--3lqvn44n6esfjhyj
Content-Type: text/plain; charset=unknown-8bit
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   09fa75bee73107b57bfc290a4b8d5289544ccfb3
commit: 8842d285bafa9ff7719f4107b6545a11dcd41995 [13/116] net: Convert skb_frag_t to bio_vec
config: sparc64-allmodconfig (attached as .config)
compiler: sparc64-linux-gcc (GCC) 7.4.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 8842d285bafa9ff7719f4107b6545a11dcd41995
        # save the attached .config to linux build tree
        GCC_VERSION=7.4.0 make.cross ARCH=sparc64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/net/ethernet/aeroflex/greth.c: In function 'greth_print_tx_packet':
>> drivers/net/ethernet/aeroflex/greth.c:113:36: error: 'skb_frag_t {aka struct bio_vec}' has no member named 'size'
              skb_shinfo(skb)->frags[i].size, true);
                                       ^

vim +113 drivers/net/ethernet/aeroflex/greth.c

d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15    95  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15    96  static void greth_print_tx_packet(struct sk_buff *skb)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15    97  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15    98  	int i;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15    99  	int length;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   100  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   101  	if (skb_shinfo(skb)->nr_frags == 0)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   102  		length = skb->len;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   103  	else
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   104  		length = skb_headlen(skb);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   105  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   106  	print_hex_dump(KERN_DEBUG, "TX: ", DUMP_PREFIX_OFFSET, 16, 1,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   107  			skb->data, length, true);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   108  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   109  	for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   110  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   111  		print_hex_dump(KERN_DEBUG, "TX: ", DUMP_PREFIX_OFFSET, 16, 1,
ab7e11d9d0293ef drivers/net/ethernet/aeroflex/greth.c Ian Campbell       2011-08-29   112  			       skb_frag_address(&skb_shinfo(skb)->frags[i]),
ab7e11d9d0293ef drivers/net/ethernet/aeroflex/greth.c Ian Campbell       2011-08-29  @113  			       skb_shinfo(skb)->frags[i].size, true);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   114  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   115  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   116  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   117  static inline void greth_enable_tx(struct greth_private *greth)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   118  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   119  	wmb();
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   120  	GRETH_REGORIN(greth->regs->control, GRETH_TXEN);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   121  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   122  
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   123  static inline void greth_enable_tx_and_irq(struct greth_private *greth)
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   124  {
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   125  	wmb(); /* BDs must been written to memory before enabling TX */
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   126  	GRETH_REGORIN(greth->regs->control, GRETH_TXEN | GRETH_TXI);
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   127  }
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   128  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   129  static inline void greth_disable_tx(struct greth_private *greth)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   130  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   131  	GRETH_REGANDIN(greth->regs->control, ~GRETH_TXEN);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   132  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   133  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   134  static inline void greth_enable_rx(struct greth_private *greth)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   135  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   136  	wmb();
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   137  	GRETH_REGORIN(greth->regs->control, GRETH_RXEN);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   138  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   139  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   140  static inline void greth_disable_rx(struct greth_private *greth)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   141  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   142  	GRETH_REGANDIN(greth->regs->control, ~GRETH_RXEN);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   143  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   144  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   145  static inline void greth_enable_irqs(struct greth_private *greth)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   146  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   147  	GRETH_REGORIN(greth->regs->control, GRETH_RXI | GRETH_TXI);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   148  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   149  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   150  static inline void greth_disable_irqs(struct greth_private *greth)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   151  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   152  	GRETH_REGANDIN(greth->regs->control, ~(GRETH_RXI|GRETH_TXI));
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   153  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   154  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   155  static inline void greth_write_bd(u32 *bd, u32 val)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   156  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   157  	__raw_writel(cpu_to_be32(val), bd);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   158  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   159  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   160  static inline u32 greth_read_bd(u32 *bd)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   161  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   162  	return be32_to_cpu(__raw_readl(bd));
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   163  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   164  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   165  static void greth_clean_rings(struct greth_private *greth)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   166  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   167  	int i;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   168  	struct greth_bd *rx_bdp = greth->rx_bd_base;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   169  	struct greth_bd *tx_bdp = greth->tx_bd_base;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   170  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   171  	if (greth->gbit_mac) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   172  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   173  		/* Free and unmap RX buffers */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   174  		for (i = 0; i < GRETH_RXBD_NUM; i++, rx_bdp++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   175  			if (greth->rx_skbuff[i] != NULL) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   176  				dev_kfree_skb(greth->rx_skbuff[i]);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   177  				dma_unmap_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   178  						 greth_read_bd(&rx_bdp->addr),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   179  						 MAX_FRAME_SIZE+NET_IP_ALIGN,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   180  						 DMA_FROM_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   181  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   182  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   183  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   184  		/* TX buffers */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   185  		while (greth->tx_free < GRETH_TXBD_NUM) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   186  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   187  			struct sk_buff *skb = greth->tx_skbuff[greth->tx_last];
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   188  			int nr_frags = skb_shinfo(skb)->nr_frags;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   189  			tx_bdp = greth->tx_bd_base + greth->tx_last;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   190  			greth->tx_last = NEXT_TX(greth->tx_last);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   191  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   192  			dma_unmap_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   193  					 greth_read_bd(&tx_bdp->addr),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   194  					 skb_headlen(skb),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   195  					 DMA_TO_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   196  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   197  			for (i = 0; i < nr_frags; i++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   198  				skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   199  				tx_bdp = greth->tx_bd_base + greth->tx_last;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   200  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   201  				dma_unmap_page(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   202  					       greth_read_bd(&tx_bdp->addr),
9e903e085262ffb drivers/net/ethernet/aeroflex/greth.c Eric Dumazet       2011-10-18   203  					       skb_frag_size(frag),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   204  					       DMA_TO_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   205  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   206  				greth->tx_last = NEXT_TX(greth->tx_last);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   207  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   208  			greth->tx_free += nr_frags+1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   209  			dev_kfree_skb(skb);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   210  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   211  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   212  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   213  	} else { /* 10/100 Mbps MAC */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   214  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   215  		for (i = 0; i < GRETH_RXBD_NUM; i++, rx_bdp++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   216  			kfree(greth->rx_bufs[i]);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   217  			dma_unmap_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   218  					 greth_read_bd(&rx_bdp->addr),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   219  					 MAX_FRAME_SIZE,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   220  					 DMA_FROM_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   221  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   222  		for (i = 0; i < GRETH_TXBD_NUM; i++, tx_bdp++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   223  			kfree(greth->tx_bufs[i]);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   224  			dma_unmap_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   225  					 greth_read_bd(&tx_bdp->addr),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   226  					 MAX_FRAME_SIZE,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   227  					 DMA_TO_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   228  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   229  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   230  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   231  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   232  static int greth_init_rings(struct greth_private *greth)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   233  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   234  	struct sk_buff *skb;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   235  	struct greth_bd *rx_bd, *tx_bd;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   236  	u32 dma_addr;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   237  	int i;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   238  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   239  	rx_bd = greth->rx_bd_base;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   240  	tx_bd = greth->tx_bd_base;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   241  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   242  	/* Initialize descriptor rings and buffers */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   243  	if (greth->gbit_mac) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   244  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   245  		for (i = 0; i < GRETH_RXBD_NUM; i++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   246  			skb = netdev_alloc_skb(greth->netdev, MAX_FRAME_SIZE+NET_IP_ALIGN);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   247  			if (skb == NULL) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   248  				if (netif_msg_ifup(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   249  					dev_err(greth->dev, "Error allocating DMA ring.\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   250  				goto cleanup;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   251  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   252  			skb_reserve(skb, NET_IP_ALIGN);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   253  			dma_addr = dma_map_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   254  						  skb->data,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   255  						  MAX_FRAME_SIZE+NET_IP_ALIGN,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   256  						  DMA_FROM_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   257  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   258  			if (dma_mapping_error(greth->dev, dma_addr)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   259  				if (netif_msg_ifup(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   260  					dev_err(greth->dev, "Could not create initial DMA mapping\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   261  				goto cleanup;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   262  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   263  			greth->rx_skbuff[i] = skb;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   264  			greth_write_bd(&rx_bd[i].addr, dma_addr);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   265  			greth_write_bd(&rx_bd[i].stat, GRETH_BD_EN | GRETH_BD_IE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   266  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   267  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   268  	} else {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   269  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   270  		/* 10/100 MAC uses a fixed set of buffers and copy to/from SKBs */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   271  		for (i = 0; i < GRETH_RXBD_NUM; i++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   272  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   273  			greth->rx_bufs[i] = kmalloc(MAX_FRAME_SIZE, GFP_KERNEL);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   274  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   275  			if (greth->rx_bufs[i] == NULL) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   276  				if (netif_msg_ifup(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   277  					dev_err(greth->dev, "Error allocating DMA ring.\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   278  				goto cleanup;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   279  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   280  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   281  			dma_addr = dma_map_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   282  						  greth->rx_bufs[i],
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   283  						  MAX_FRAME_SIZE,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   284  						  DMA_FROM_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   285  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   286  			if (dma_mapping_error(greth->dev, dma_addr)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   287  				if (netif_msg_ifup(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   288  					dev_err(greth->dev, "Could not create initial DMA mapping\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   289  				goto cleanup;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   290  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   291  			greth_write_bd(&rx_bd[i].addr, dma_addr);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   292  			greth_write_bd(&rx_bd[i].stat, GRETH_BD_EN | GRETH_BD_IE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   293  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   294  		for (i = 0; i < GRETH_TXBD_NUM; i++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   295  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   296  			greth->tx_bufs[i] = kmalloc(MAX_FRAME_SIZE, GFP_KERNEL);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   297  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   298  			if (greth->tx_bufs[i] == NULL) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   299  				if (netif_msg_ifup(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   300  					dev_err(greth->dev, "Error allocating DMA ring.\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   301  				goto cleanup;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   302  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   303  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   304  			dma_addr = dma_map_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   305  						  greth->tx_bufs[i],
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   306  						  MAX_FRAME_SIZE,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   307  						  DMA_TO_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   308  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   309  			if (dma_mapping_error(greth->dev, dma_addr)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   310  				if (netif_msg_ifup(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   311  					dev_err(greth->dev, "Could not create initial DMA mapping\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   312  				goto cleanup;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   313  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   314  			greth_write_bd(&tx_bd[i].addr, dma_addr);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   315  			greth_write_bd(&tx_bd[i].stat, 0);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   316  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   317  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   318  	greth_write_bd(&rx_bd[GRETH_RXBD_NUM - 1].stat,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   319  		       greth_read_bd(&rx_bd[GRETH_RXBD_NUM - 1].stat) | GRETH_BD_WR);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   320  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   321  	/* Initialize pointers. */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   322  	greth->rx_cur = 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   323  	greth->tx_next = 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   324  	greth->tx_last = 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   325  	greth->tx_free = GRETH_TXBD_NUM;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   326  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   327  	/* Initialize descriptor base address */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   328  	GRETH_REGSAVE(greth->regs->tx_desc_p, greth->tx_bd_base_phys);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   329  	GRETH_REGSAVE(greth->regs->rx_desc_p, greth->rx_bd_base_phys);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   330  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   331  	return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   332  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   333  cleanup:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   334  	greth_clean_rings(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   335  	return -ENOMEM;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   336  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   337  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   338  static int greth_open(struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   339  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   340  	struct greth_private *greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   341  	int err;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   342  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   343  	err = greth_init_rings(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   344  	if (err) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   345  		if (netif_msg_ifup(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   346  			dev_err(&dev->dev, "Could not allocate memory for DMA rings\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   347  		return err;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   348  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   349  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   350  	err = request_irq(greth->irq, greth_interrupt, 0, "eth", (void *) dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   351  	if (err) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   352  		if (netif_msg_ifup(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   353  			dev_err(&dev->dev, "Could not allocate interrupt %d\n", dev->irq);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   354  		greth_clean_rings(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   355  		return err;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   356  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   357  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   358  	if (netif_msg_ifup(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   359  		dev_dbg(&dev->dev, " starting queue\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   360  	netif_start_queue(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   361  
bbe9e637330abe5 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   362  	GRETH_REGSAVE(greth->regs->status, 0xFF);
bbe9e637330abe5 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   363  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   364  	napi_enable(&greth->napi);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   365  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   366  	greth_enable_irqs(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   367  	greth_enable_tx(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   368  	greth_enable_rx(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   369  	return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   370  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   371  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   372  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   373  static int greth_close(struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   374  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   375  	struct greth_private *greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   376  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   377  	napi_disable(&greth->napi);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   378  
bbe9e637330abe5 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   379  	greth_disable_irqs(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   380  	greth_disable_tx(greth);
bbe9e637330abe5 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   381  	greth_disable_rx(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   382  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   383  	netif_stop_queue(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   384  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   385  	free_irq(greth->irq, (void *) dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   386  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   387  	greth_clean_rings(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   388  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   389  	return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   390  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   391  
41a655ba5654e47 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-24   392  static netdev_tx_t
41a655ba5654e47 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-24   393  greth_start_xmit(struct sk_buff *skb, struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   394  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   395  	struct greth_private *greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   396  	struct greth_bd *bdp;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   397  	int err = NETDEV_TX_OK;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   398  	u32 status, dma_addr, ctrl;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   399  	unsigned long flags;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   400  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   401  	/* Clean TX Ring */
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   402  	greth_clean_tx(greth->netdev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   403  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   404  	if (unlikely(greth->tx_free <= 0)) {
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   405  		spin_lock_irqsave(&greth->devlock, flags);/*save from poll/irq*/
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   406  		ctrl = GRETH_REGLOAD(greth->regs->control);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   407  		/* Enable TX IRQ only if not already in poll() routine */
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   408  		if (ctrl & GRETH_RXI)
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   409  			GRETH_REGSAVE(greth->regs->control, ctrl | GRETH_TXI);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   410  		netif_stop_queue(dev);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   411  		spin_unlock_irqrestore(&greth->devlock, flags);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   412  		return NETDEV_TX_BUSY;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   413  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   414  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   415  	if (netif_msg_pktdata(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   416  		greth_print_tx_packet(skb);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   417  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   418  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   419  	if (unlikely(skb->len > MAX_FRAME_SIZE)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   420  		dev->stats.tx_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   421  		goto out;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   422  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   423  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   424  	bdp = greth->tx_bd_base + greth->tx_next;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   425  	dma_addr = greth_read_bd(&bdp->addr);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   426  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   427  	memcpy((unsigned char *) phys_to_virt(dma_addr), skb->data, skb->len);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   428  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   429  	dma_sync_single_for_device(greth->dev, dma_addr, skb->len, DMA_TO_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   430  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   431  	status = GRETH_BD_EN | GRETH_BD_IE | (skb->len & GRETH_BD_LEN);
6af29a963cecf42 drivers/net/greth.c                   Daniel Hellstrom   2011-09-08   432  	greth->tx_bufs_length[greth->tx_next] = skb->len & GRETH_BD_LEN;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   433  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   434  	/* Wrap around descriptor ring */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   435  	if (greth->tx_next == GRETH_TXBD_NUM_MASK) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   436  		status |= GRETH_BD_WR;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   437  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   438  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   439  	greth->tx_next = NEXT_TX(greth->tx_next);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   440  	greth->tx_free--;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   441  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   442  	/* Write descriptor control word and enable transmission */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   443  	greth_write_bd(&bdp->stat, status);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   444  	spin_lock_irqsave(&greth->devlock, flags); /*save from poll/irq*/
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   445  	greth_enable_tx(greth);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   446  	spin_unlock_irqrestore(&greth->devlock, flags);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   447  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   448  out:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   449  	dev_kfree_skb(skb);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   450  	return err;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   451  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   452  
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   453  static inline u16 greth_num_free_bds(u16 tx_last, u16 tx_next)
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   454  {
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   455  	if (tx_next < tx_last)
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   456  		return (tx_last - tx_next) - 1;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   457  	else
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   458  		return GRETH_TXBD_NUM - (tx_next - tx_last) - 1;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   459  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   460  
41a655ba5654e47 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-24   461  static netdev_tx_t
41a655ba5654e47 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-24   462  greth_start_xmit_gbit(struct sk_buff *skb, struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   463  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   464  	struct greth_private *greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   465  	struct greth_bd *bdp;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   466  	u32 status, dma_addr;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   467  	int curr_tx, nr_frags, i, err = NETDEV_TX_OK;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   468  	unsigned long flags;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   469  	u16 tx_last;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   470  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   471  	nr_frags = skb_shinfo(skb)->nr_frags;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   472  	tx_last = greth->tx_last;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   473  	rmb(); /* tx_last is updated by the poll task */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   474  
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   475  	if (greth_num_free_bds(tx_last, greth->tx_next) < nr_frags + 1) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   476  		netif_stop_queue(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   477  		err = NETDEV_TX_BUSY;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   478  		goto out;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   479  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   480  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   481  	if (netif_msg_pktdata(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   482  		greth_print_tx_packet(skb);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   483  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   484  	if (unlikely(skb->len > MAX_FRAME_SIZE)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   485  		dev->stats.tx_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   486  		goto out;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   487  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   488  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   489  	/* Save skb pointer. */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   490  	greth->tx_skbuff[greth->tx_next] = skb;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   491  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   492  	/* Linear buf */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   493  	if (nr_frags != 0)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   494  		status = GRETH_TXBD_MORE;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   495  	else
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   496  		status = GRETH_BD_IE;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   497  
d706f00f6514682 drivers/net/greth.c                   Daniel Hellstrom   2011-09-09   498  	if (skb->ip_summed == CHECKSUM_PARTIAL)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   499  		status |= GRETH_TXBD_CSALL;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   500  	status |= skb_headlen(skb) & GRETH_BD_LEN;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   501  	if (greth->tx_next == GRETH_TXBD_NUM_MASK)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   502  		status |= GRETH_BD_WR;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   503  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   504  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   505  	bdp = greth->tx_bd_base + greth->tx_next;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   506  	greth_write_bd(&bdp->stat, status);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   507  	dma_addr = dma_map_single(greth->dev, skb->data, skb_headlen(skb), DMA_TO_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   508  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   509  	if (unlikely(dma_mapping_error(greth->dev, dma_addr)))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   510  		goto map_error;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   511  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   512  	greth_write_bd(&bdp->addr, dma_addr);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   513  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   514  	curr_tx = NEXT_TX(greth->tx_next);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   515  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   516  	/* Frags */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   517  	for (i = 0; i < nr_frags; i++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   518  		skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   519  		greth->tx_skbuff[curr_tx] = NULL;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   520  		bdp = greth->tx_bd_base + curr_tx;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   521  
d706f00f6514682 drivers/net/greth.c                   Daniel Hellstrom   2011-09-09   522  		status = GRETH_BD_EN;
d706f00f6514682 drivers/net/greth.c                   Daniel Hellstrom   2011-09-09   523  		if (skb->ip_summed == CHECKSUM_PARTIAL)
d706f00f6514682 drivers/net/greth.c                   Daniel Hellstrom   2011-09-09   524  			status |= GRETH_TXBD_CSALL;
9e903e085262ffb drivers/net/ethernet/aeroflex/greth.c Eric Dumazet       2011-10-18   525  		status |= skb_frag_size(frag) & GRETH_BD_LEN;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   526  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   527  		/* Wrap around descriptor ring */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   528  		if (curr_tx == GRETH_TXBD_NUM_MASK)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   529  			status |= GRETH_BD_WR;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   530  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   531  		/* More fragments left */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   532  		if (i < nr_frags - 1)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   533  			status |= GRETH_TXBD_MORE;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   534  		else
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   535  			status |= GRETH_BD_IE; /* enable IRQ on last fragment */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   536  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   537  		greth_write_bd(&bdp->stat, status);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   538  
9e903e085262ffb drivers/net/ethernet/aeroflex/greth.c Eric Dumazet       2011-10-18   539  		dma_addr = skb_frag_dma_map(greth->dev, frag, 0, skb_frag_size(frag),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   540  					    DMA_TO_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   541  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   542  		if (unlikely(dma_mapping_error(greth->dev, dma_addr)))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   543  			goto frag_map_error;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   544  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   545  		greth_write_bd(&bdp->addr, dma_addr);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   546  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   547  		curr_tx = NEXT_TX(curr_tx);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   548  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   549  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   550  	wmb();
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   551  
2a2bc012b98729c drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   552  	/* Enable the descriptor chain by enabling the first descriptor */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   553  	bdp = greth->tx_bd_base + greth->tx_next;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   554  	greth_write_bd(&bdp->stat,
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   555  		       greth_read_bd(&bdp->stat) | GRETH_BD_EN);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   556  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   557  	spin_lock_irqsave(&greth->devlock, flags); /*save from poll/irq*/
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   558  	greth->tx_next = curr_tx;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   559  	greth_enable_tx_and_irq(greth);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   560  	spin_unlock_irqrestore(&greth->devlock, flags);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   561  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   562  	return NETDEV_TX_OK;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   563  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   564  frag_map_error:
2a2bc012b98729c drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   565  	/* Unmap SKB mappings that succeeded and disable descriptor */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   566  	for (i = 0; greth->tx_next + i != curr_tx; i++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   567  		bdp = greth->tx_bd_base + greth->tx_next + i;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   568  		dma_unmap_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   569  				 greth_read_bd(&bdp->addr),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   570  				 greth_read_bd(&bdp->stat) & GRETH_BD_LEN,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   571  				 DMA_TO_DEVICE);
2a2bc012b98729c drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   572  		greth_write_bd(&bdp->stat, 0);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   573  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   574  map_error:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   575  	if (net_ratelimit())
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   576  		dev_warn(greth->dev, "Could not create TX DMA mapping\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   577  	dev_kfree_skb(skb);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   578  out:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   579  	return err;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   580  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   581  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   582  static irqreturn_t greth_interrupt(int irq, void *dev_id)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   583  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   584  	struct net_device *dev = dev_id;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   585  	struct greth_private *greth;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   586  	u32 status, ctrl;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   587  	irqreturn_t retval = IRQ_NONE;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   588  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   589  	greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   590  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   591  	spin_lock(&greth->devlock);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   592  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   593  	/* Get the interrupt events that caused us to be here. */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   594  	status = GRETH_REGLOAD(greth->regs->status);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   595  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   596  	/* Must see if interrupts are enabled also, INT_TX|INT_RX flags may be
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   597  	 * set regardless of whether IRQ is enabled or not. Especially
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   598  	 * important when shared IRQ.
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   599  	 */
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   600  	ctrl = GRETH_REGLOAD(greth->regs->control);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   601  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   602  	/* Handle rx and tx interrupts through poll */
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   603  	if (((status & (GRETH_INT_RE | GRETH_INT_RX)) && (ctrl & GRETH_RXI)) ||
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   604  	    ((status & (GRETH_INT_TE | GRETH_INT_TX)) && (ctrl & GRETH_TXI))) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   605  		retval = IRQ_HANDLED;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   606  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   607  		/* Disable interrupts and schedule poll() */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   608  		greth_disable_irqs(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   609  		napi_schedule(&greth->napi);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   610  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   611  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   612  	spin_unlock(&greth->devlock);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   613  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   614  	return retval;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   615  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   616  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   617  static void greth_clean_tx(struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   618  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   619  	struct greth_private *greth;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   620  	struct greth_bd *bdp;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   621  	u32 stat;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   622  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   623  	greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   624  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   625  	while (1) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   626  		bdp = greth->tx_bd_base + greth->tx_last;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   627  		GRETH_REGSAVE(greth->regs->status, GRETH_INT_TE | GRETH_INT_TX);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   628  		mb();
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   629  		stat = greth_read_bd(&bdp->stat);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   630  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   631  		if (unlikely(stat & GRETH_BD_EN))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   632  			break;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   633  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   634  		if (greth->tx_free == GRETH_TXBD_NUM)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   635  			break;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   636  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   637  		/* Check status for errors */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   638  		if (unlikely(stat & GRETH_TXBD_STATUS)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   639  			dev->stats.tx_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   640  			if (stat & GRETH_TXBD_ERR_AL)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   641  				dev->stats.tx_aborted_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   642  			if (stat & GRETH_TXBD_ERR_UE)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   643  				dev->stats.tx_fifo_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   644  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   645  		dev->stats.tx_packets++;
6af29a963cecf42 drivers/net/greth.c                   Daniel Hellstrom   2011-09-08   646  		dev->stats.tx_bytes += greth->tx_bufs_length[greth->tx_last];
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   647  		greth->tx_last = NEXT_TX(greth->tx_last);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   648  		greth->tx_free++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   649  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   650  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   651  	if (greth->tx_free > 0) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   652  		netif_wake_queue(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   653  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   654  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   655  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   656  static inline void greth_update_tx_stats(struct net_device *dev, u32 stat)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   657  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   658  	/* Check status for errors */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   659  	if (unlikely(stat & GRETH_TXBD_STATUS)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   660  		dev->stats.tx_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   661  		if (stat & GRETH_TXBD_ERR_AL)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   662  			dev->stats.tx_aborted_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   663  		if (stat & GRETH_TXBD_ERR_UE)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   664  			dev->stats.tx_fifo_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   665  		if (stat & GRETH_TXBD_ERR_LC)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   666  			dev->stats.tx_aborted_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   667  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   668  	dev->stats.tx_packets++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   669  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   670  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   671  static void greth_clean_tx_gbit(struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   672  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   673  	struct greth_private *greth;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   674  	struct greth_bd *bdp, *bdp_last_frag;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   675  	struct sk_buff *skb = NULL;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   676  	u32 stat;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   677  	int nr_frags, i;
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   678  	u16 tx_last;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   679  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   680  	greth = netdev_priv(dev);
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   681  	tx_last = greth->tx_last;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   682  
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   683  	while (tx_last != greth->tx_next) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   684  
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   685  		skb = greth->tx_skbuff[tx_last];
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   686  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   687  		nr_frags = skb_shinfo(skb)->nr_frags;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   688  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   689  		/* We only clean fully completed SKBs */
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   690  		bdp_last_frag = greth->tx_bd_base + SKIP_TX(tx_last, nr_frags);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   691  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   692  		GRETH_REGSAVE(greth->regs->status, GRETH_INT_TE | GRETH_INT_TX);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   693  		mb();
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   694  		stat = greth_read_bd(&bdp_last_frag->stat);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   695  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   696  		if (stat & GRETH_BD_EN)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   697  			break;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   698  
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   699  		greth->tx_skbuff[tx_last] = NULL;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   700  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   701  		greth_update_tx_stats(dev, stat);
6af29a963cecf42 drivers/net/greth.c                   Daniel Hellstrom   2011-09-08   702  		dev->stats.tx_bytes += skb->len;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   703  
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   704  		bdp = greth->tx_bd_base + tx_last;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   705  
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   706  		tx_last = NEXT_TX(tx_last);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   707  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   708  		dma_unmap_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   709  				 greth_read_bd(&bdp->addr),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   710  				 skb_headlen(skb),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   711  				 DMA_TO_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   712  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   713  		for (i = 0; i < nr_frags; i++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   714  			skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   715  			bdp = greth->tx_bd_base + tx_last;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   716  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   717  			dma_unmap_page(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   718  				       greth_read_bd(&bdp->addr),
9e903e085262ffb drivers/net/ethernet/aeroflex/greth.c Eric Dumazet       2011-10-18   719  				       skb_frag_size(frag),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   720  				       DMA_TO_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   721  
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   722  			tx_last = NEXT_TX(tx_last);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   723  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   724  		dev_kfree_skb(skb);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   725  	}
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   726  	if (skb) { /* skb is set only if the above while loop was entered */
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   727  		wmb();
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   728  		greth->tx_last = tx_last;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   729  
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   730  		if (netif_queue_stopped(dev) &&
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   731  		    (greth_num_free_bds(tx_last, greth->tx_next) >
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   732  		    (MAX_SKB_FRAGS+1)))
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   733  			netif_wake_queue(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   734  	}
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   735  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   736  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   737  static int greth_rx(struct net_device *dev, int limit)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   738  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   739  	struct greth_private *greth;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   740  	struct greth_bd *bdp;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   741  	struct sk_buff *skb;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   742  	int pkt_len;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   743  	int bad, count;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   744  	u32 status, dma_addr;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   745  	unsigned long flags;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   746  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   747  	greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   748  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   749  	for (count = 0; count < limit; ++count) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   750  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   751  		bdp = greth->rx_bd_base + greth->rx_cur;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   752  		GRETH_REGSAVE(greth->regs->status, GRETH_INT_RE | GRETH_INT_RX);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   753  		mb();
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   754  		status = greth_read_bd(&bdp->stat);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   755  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   756  		if (unlikely(status & GRETH_BD_EN)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   757  			break;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   758  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   759  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   760  		dma_addr = greth_read_bd(&bdp->addr);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   761  		bad = 0;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   762  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   763  		/* Check status for errors. */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   764  		if (unlikely(status & GRETH_RXBD_STATUS)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   765  			if (status & GRETH_RXBD_ERR_FT) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   766  				dev->stats.rx_length_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   767  				bad = 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   768  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   769  			if (status & (GRETH_RXBD_ERR_AE | GRETH_RXBD_ERR_OE)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   770  				dev->stats.rx_frame_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   771  				bad = 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   772  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   773  			if (status & GRETH_RXBD_ERR_CRC) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   774  				dev->stats.rx_crc_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   775  				bad = 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   776  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   777  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   778  		if (unlikely(bad)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   779  			dev->stats.rx_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   780  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   781  		} else {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   782  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   783  			pkt_len = status & GRETH_BD_LEN;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   784  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   785  			skb = netdev_alloc_skb(dev, pkt_len + NET_IP_ALIGN);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   786  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   787  			if (unlikely(skb == NULL)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   788  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   789  				if (net_ratelimit())
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   790  					dev_warn(&dev->dev, "low on memory - " "packet dropped\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   791  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   792  				dev->stats.rx_dropped++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   793  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   794  			} else {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   795  				skb_reserve(skb, NET_IP_ALIGN);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   796  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   797  				dma_sync_single_for_cpu(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   798  							dma_addr,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   799  							pkt_len,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   800  							DMA_FROM_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   801  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   802  				if (netif_msg_pktdata(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   803  					greth_print_rx_packet(phys_to_virt(dma_addr), pkt_len);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   804  
59ae1d127ac0ae4 drivers/net/ethernet/aeroflex/greth.c Johannes Berg      2017-06-16   805  				skb_put_data(skb, phys_to_virt(dma_addr),
59ae1d127ac0ae4 drivers/net/ethernet/aeroflex/greth.c Johannes Berg      2017-06-16   806  					     pkt_len);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   807  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   808  				skb->protocol = eth_type_trans(skb, dev);
6af29a963cecf42 drivers/net/greth.c                   Daniel Hellstrom   2011-09-08   809  				dev->stats.rx_bytes += pkt_len;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   810  				dev->stats.rx_packets++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   811  				netif_receive_skb(skb);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   812  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   813  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   814  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   815  		status = GRETH_BD_EN | GRETH_BD_IE;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   816  		if (greth->rx_cur == GRETH_RXBD_NUM_MASK) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   817  			status |= GRETH_BD_WR;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   818  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   819  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   820  		wmb();
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   821  		greth_write_bd(&bdp->stat, status);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   822  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   823  		dma_sync_single_for_device(greth->dev, dma_addr, MAX_FRAME_SIZE, DMA_FROM_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   824  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   825  		spin_lock_irqsave(&greth->devlock, flags); /* save from XMIT */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   826  		greth_enable_rx(greth);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   827  		spin_unlock_irqrestore(&greth->devlock, flags);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   828  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   829  		greth->rx_cur = NEXT_RX(greth->rx_cur);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   830  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   831  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   832  	return count;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   833  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   834  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   835  static inline int hw_checksummed(u32 status)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   836  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   837  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   838  	if (status & GRETH_RXBD_IP_FRAG)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   839  		return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   840  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   841  	if (status & GRETH_RXBD_IP && status & GRETH_RXBD_IP_CSERR)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   842  		return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   843  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   844  	if (status & GRETH_RXBD_UDP && status & GRETH_RXBD_UDP_CSERR)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   845  		return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   846  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   847  	if (status & GRETH_RXBD_TCP && status & GRETH_RXBD_TCP_CSERR)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   848  		return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   849  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   850  	return 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   851  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   852  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   853  static int greth_rx_gbit(struct net_device *dev, int limit)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   854  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   855  	struct greth_private *greth;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   856  	struct greth_bd *bdp;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   857  	struct sk_buff *skb, *newskb;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   858  	int pkt_len;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   859  	int bad, count = 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   860  	u32 status, dma_addr;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   861  	unsigned long flags;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   862  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   863  	greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   864  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   865  	for (count = 0; count < limit; ++count) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   866  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   867  		bdp = greth->rx_bd_base + greth->rx_cur;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   868  		skb = greth->rx_skbuff[greth->rx_cur];
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   869  		GRETH_REGSAVE(greth->regs->status, GRETH_INT_RE | GRETH_INT_RX);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   870  		mb();
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   871  		status = greth_read_bd(&bdp->stat);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   872  		bad = 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   873  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   874  		if (status & GRETH_BD_EN)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   875  			break;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   876  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   877  		/* Check status for errors. */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   878  		if (unlikely(status & GRETH_RXBD_STATUS)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   879  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   880  			if (status & GRETH_RXBD_ERR_FT) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   881  				dev->stats.rx_length_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   882  				bad = 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   883  			} else if (status &
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   884  				   (GRETH_RXBD_ERR_AE | GRETH_RXBD_ERR_OE | GRETH_RXBD_ERR_LE)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   885  				dev->stats.rx_frame_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   886  				bad = 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   887  			} else if (status & GRETH_RXBD_ERR_CRC) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   888  				dev->stats.rx_crc_errors++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   889  				bad = 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   890  			}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   891  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   892  
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   893  		/* Allocate new skb to replace current, not needed if the
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   894  		 * current skb can be reused */
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   895  		if (!bad && (newskb=netdev_alloc_skb(dev, MAX_FRAME_SIZE + NET_IP_ALIGN))) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   896  			skb_reserve(newskb, NET_IP_ALIGN);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   897  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   898  			dma_addr = dma_map_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   899  						      newskb->data,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   900  						      MAX_FRAME_SIZE + NET_IP_ALIGN,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   901  						      DMA_FROM_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   902  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   903  			if (!dma_mapping_error(greth->dev, dma_addr)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   904  				/* Process the incoming frame. */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   905  				pkt_len = status & GRETH_BD_LEN;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   906  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   907  				dma_unmap_single(greth->dev,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   908  						 greth_read_bd(&bdp->addr),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   909  						 MAX_FRAME_SIZE + NET_IP_ALIGN,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   910  						 DMA_FROM_DEVICE);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   911  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   912  				if (netif_msg_pktdata(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   913  					greth_print_rx_packet(phys_to_virt(greth_read_bd(&bdp->addr)), pkt_len);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   914  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   915  				skb_put(skb, pkt_len);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   916  
131ae329702755d drivers/net/greth.c                   Michał Mirosław    2011-04-17   917  				if (dev->features & NETIF_F_RXCSUM && hw_checksummed(status))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   918  					skb->ip_summed = CHECKSUM_UNNECESSARY;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   919  				else
bc8acf2c8c3e43f drivers/net/greth.c                   Eric Dumazet       2010-09-02   920  					skb_checksum_none_assert(skb);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   921  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   922  				skb->protocol = eth_type_trans(skb, dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   923  				dev->stats.rx_packets++;
6af29a963cecf42 drivers/net/greth.c                   Daniel Hellstrom   2011-09-08   924  				dev->stats.rx_bytes += pkt_len;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   925  				netif_receive_skb(skb);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   926  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   927  				greth->rx_skbuff[greth->rx_cur] = newskb;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   928  				greth_write_bd(&bdp->addr, dma_addr);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   929  			} else {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   930  				if (net_ratelimit())
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   931  					dev_warn(greth->dev, "Could not create DMA mapping, dropping packet\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   932  				dev_kfree_skb(newskb);
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   933  				/* reusing current skb, so it is a drop */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   934  				dev->stats.rx_dropped++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   935  			}
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   936  		} else if (bad) {
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   937  			/* Bad Frame transfer, the skb is reused */
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   938  			dev->stats.rx_dropped++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   939  		} else {
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   940  			/* Failed Allocating a new skb. This is rather stupid
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   941  			 * but the current "filled" skb is reused, as if
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   942  			 * transfer failure. One could argue that RX descriptor
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   943  			 * table handling should be divided into cleaning and
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   944  			 * filling as the TX part of the driver
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   945  			 */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   946  			if (net_ratelimit())
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   947  				dev_warn(greth->dev, "Could not allocate SKB, dropping packet\n");
b669e7f0580f3c0 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   948  			/* reusing current skb, so it is a drop */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   949  			dev->stats.rx_dropped++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   950  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   951  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   952  		status = GRETH_BD_EN | GRETH_BD_IE;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   953  		if (greth->rx_cur == GRETH_RXBD_NUM_MASK) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   954  			status |= GRETH_BD_WR;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   955  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   956  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   957  		wmb();
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   958  		greth_write_bd(&bdp->stat, status);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   959  		spin_lock_irqsave(&greth->devlock, flags);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   960  		greth_enable_rx(greth);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   961  		spin_unlock_irqrestore(&greth->devlock, flags);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   962  		greth->rx_cur = NEXT_RX(greth->rx_cur);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   963  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   964  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   965  	return count;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   966  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   967  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   968  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   969  static int greth_poll(struct napi_struct *napi, int budget)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   970  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   971  	struct greth_private *greth;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   972  	int work_done = 0;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   973  	unsigned long flags;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   974  	u32 mask, ctrl;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   975  	greth = container_of(napi, struct greth_private, napi);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   976  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   977  restart_txrx_poll:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   978  	if (greth->gbit_mac) {
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   979  		greth_clean_tx_gbit(greth->netdev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   980  		work_done += greth_rx_gbit(greth->netdev, budget - work_done);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   981  	} else {
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   982  		if (netif_queue_stopped(greth->netdev))
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   983  			greth_clean_tx(greth->netdev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   984  		work_done += greth_rx(greth->netdev, budget - work_done);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   985  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   986  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   987  	if (work_done < budget) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   988  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   989  		spin_lock_irqsave(&greth->devlock, flags);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15   990  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   991  		ctrl = GRETH_REGLOAD(greth->regs->control);
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   992  		if ((greth->gbit_mac && (greth->tx_last != greth->tx_next)) ||
e1743a16a043f3d drivers/net/ethernet/aeroflex/greth.c Daniel Hellstrom   2014-09-05   993  		    (!greth->gbit_mac && netif_queue_stopped(greth->netdev))) {
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   994  			GRETH_REGSAVE(greth->regs->control,
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   995  					ctrl | GRETH_TXI | GRETH_RXI);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   996  			mask = GRETH_INT_RX | GRETH_INT_RE |
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   997  			       GRETH_INT_TX | GRETH_INT_TE;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   998  		} else {
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14   999  			GRETH_REGSAVE(greth->regs->control, ctrl | GRETH_RXI);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1000  			mask = GRETH_INT_RX | GRETH_INT_RE;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1001  		}
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1002  
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1003  		if (GRETH_REGLOAD(greth->regs->status) & mask) {
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1004  			GRETH_REGSAVE(greth->regs->control, ctrl);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1005  			spin_unlock_irqrestore(&greth->devlock, flags);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1006  			goto restart_txrx_poll;
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1007  		} else {
32e19300a4f6705 drivers/net/ethernet/aeroflex/greth.c Eric Dumazet       2017-02-04  1008  			napi_complete_done(napi, work_done);
0f73f2c5a3ebb95 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1009  			spin_unlock_irqrestore(&greth->devlock, flags);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1010  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1011  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1012  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1013  	return work_done;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1014  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1015  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1016  static int greth_set_mac_add(struct net_device *dev, void *p)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1017  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1018  	struct sockaddr *addr = p;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1019  	struct greth_private *greth;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1020  	struct greth_regs *regs;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1021  
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1022  	greth = netdev_priv(dev);
6469933605a3ecd drivers/net/ethernet/aeroflex/greth.c Joe Perches        2012-06-04  1023  	regs = greth->regs;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1024  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1025  	if (!is_valid_ether_addr(addr->sa_data))
504f9b5a6bb5336 drivers/net/ethernet/aeroflex/greth.c Danny Kukawka      2012-02-21  1026  		return -EADDRNOTAVAIL;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1027  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1028  	memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
9b9cfe7cf663c16 drivers/net/greth.c                   Kristoffer Glembo  2011-07-04  1029  	GRETH_REGSAVE(regs->esa_msb, dev->dev_addr[0] << 8 | dev->dev_addr[1]);
9b9cfe7cf663c16 drivers/net/greth.c                   Kristoffer Glembo  2011-07-04  1030  	GRETH_REGSAVE(regs->esa_lsb, dev->dev_addr[2] << 24 | dev->dev_addr[3] << 16 |
9b9cfe7cf663c16 drivers/net/greth.c                   Kristoffer Glembo  2011-07-04  1031  		      dev->dev_addr[4] << 8 | dev->dev_addr[5]);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1032  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1033  	return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1034  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1035  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1036  static u32 greth_hash_get_index(__u8 *addr)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1037  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1038  	return (ether_crc(6, addr)) & 0x3F;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1039  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1040  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1041  static void greth_set_hash_filter(struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1042  {
22bedad3ce112d5 drivers/net/greth.c                   Jiri Pirko         2010-04-01  1043  	struct netdev_hw_addr *ha;
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1044  	struct greth_private *greth = netdev_priv(dev);
6469933605a3ecd drivers/net/ethernet/aeroflex/greth.c Joe Perches        2012-06-04  1045  	struct greth_regs *regs = greth->regs;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1046  	u32 mc_filter[2];
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1047  	unsigned int bitnr;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1048  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1049  	mc_filter[0] = mc_filter[1] = 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1050  
22bedad3ce112d5 drivers/net/greth.c                   Jiri Pirko         2010-04-01  1051  	netdev_for_each_mc_addr(ha, dev) {
22bedad3ce112d5 drivers/net/greth.c                   Jiri Pirko         2010-04-01  1052  		bitnr = greth_hash_get_index(ha->addr);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1053  		mc_filter[bitnr >> 5] |= 1 << (bitnr & 31);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1054  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1055  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1056  	GRETH_REGSAVE(regs->hash_msb, mc_filter[1]);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1057  	GRETH_REGSAVE(regs->hash_lsb, mc_filter[0]);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1058  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1059  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1060  static void greth_set_multicast_list(struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1061  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1062  	int cfg;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1063  	struct greth_private *greth = netdev_priv(dev);
6469933605a3ecd drivers/net/ethernet/aeroflex/greth.c Joe Perches        2012-06-04  1064  	struct greth_regs *regs = greth->regs;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1065  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1066  	cfg = GRETH_REGLOAD(regs->control);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1067  	if (dev->flags & IFF_PROMISC)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1068  		cfg |= GRETH_CTRL_PR;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1069  	else
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1070  		cfg &= ~GRETH_CTRL_PR;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1071  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1072  	if (greth->multicast) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1073  		if (dev->flags & IFF_ALLMULTI) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1074  			GRETH_REGSAVE(regs->hash_msb, -1);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1075  			GRETH_REGSAVE(regs->hash_lsb, -1);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1076  			cfg |= GRETH_CTRL_MCEN;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1077  			GRETH_REGSAVE(regs->control, cfg);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1078  			return;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1079  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1080  
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1081  		if (netdev_mc_empty(dev)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1082  			cfg &= ~GRETH_CTRL_MCEN;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1083  			GRETH_REGSAVE(regs->control, cfg);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1084  			return;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1085  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1086  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1087  		/* Setup multicast filter */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1088  		greth_set_hash_filter(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1089  		cfg |= GRETH_CTRL_MCEN;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1090  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1091  	GRETH_REGSAVE(regs->control, cfg);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1092  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1093  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1094  static u32 greth_get_msglevel(struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1095  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1096  	struct greth_private *greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1097  	return greth->msg_enable;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1098  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1099  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1100  static void greth_set_msglevel(struct net_device *dev, u32 value)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1101  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1102  	struct greth_private *greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1103  	greth->msg_enable = value;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1104  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1105  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1106  static int greth_get_regs_len(struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1107  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1108  	return sizeof(struct greth_regs);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1109  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1110  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1111  static void greth_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1112  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1113  	struct greth_private *greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1114  
7826d43f2db45c9 drivers/net/ethernet/aeroflex/greth.c Jiri Pirko         2013-01-06  1115  	strlcpy(info->driver, dev_driver_string(greth->dev),
7826d43f2db45c9 drivers/net/ethernet/aeroflex/greth.c Jiri Pirko         2013-01-06  1116  		sizeof(info->driver));
7826d43f2db45c9 drivers/net/ethernet/aeroflex/greth.c Jiri Pirko         2013-01-06  1117  	strlcpy(info->version, "revision: 1.0", sizeof(info->version));
7826d43f2db45c9 drivers/net/ethernet/aeroflex/greth.c Jiri Pirko         2013-01-06  1118  	strlcpy(info->bus_info, greth->dev->bus->name, sizeof(info->bus_info));
7826d43f2db45c9 drivers/net/ethernet/aeroflex/greth.c Jiri Pirko         2013-01-06  1119  	strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1120  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1121  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1122  static void greth_get_regs(struct net_device *dev, struct ethtool_regs *regs, void *p)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1123  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1124  	int i;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1125  	struct greth_private *greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1126  	u32 __iomem *greth_regs = (u32 __iomem *) greth->regs;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1127  	u32 *buff = p;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1128  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1129  	for (i = 0; i < sizeof(struct greth_regs) / sizeof(u32); i++)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1130  		buff[i] = greth_read_bd(&greth_regs[i]);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1131  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1132  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1133  static const struct ethtool_ops greth_ethtool_ops = {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1134  	.get_msglevel		= greth_get_msglevel,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1135  	.set_msglevel		= greth_set_msglevel,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1136  	.get_drvinfo		= greth_get_drvinfo,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1137  	.get_regs_len           = greth_get_regs_len,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1138  	.get_regs               = greth_get_regs,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1139  	.get_link		= ethtool_op_get_link,
72582fdb92457a1 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1140  	.get_link_ksettings	= phy_ethtool_get_link_ksettings,
72582fdb92457a1 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1141  	.set_link_ksettings	= phy_ethtool_set_link_ksettings,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1142  };
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1143  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1144  static struct net_device_ops greth_netdev_ops = {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1145  	.ndo_open		= greth_open,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1146  	.ndo_stop		= greth_close,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1147  	.ndo_start_xmit		= greth_start_xmit,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1148  	.ndo_set_mac_address	= greth_set_mac_add,
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1149  	.ndo_validate_addr	= eth_validate_addr,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1150  };
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1151  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1152  static inline int wait_for_mdio(struct greth_private *greth)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1153  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1154  	unsigned long timeout = jiffies + 4*HZ/100;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1155  	while (GRETH_REGLOAD(greth->regs->mdio) & GRETH_MII_BUSY) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1156  		if (time_after(jiffies, timeout))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1157  			return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1158  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1159  	return 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1160  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1161  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1162  static int greth_mdio_read(struct mii_bus *bus, int phy, int reg)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1163  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1164  	struct greth_private *greth = bus->priv;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1165  	int data;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1166  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1167  	if (!wait_for_mdio(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1168  		return -EBUSY;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1169  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1170  	GRETH_REGSAVE(greth->regs->mdio, ((phy & 0x1F) << 11) | ((reg & 0x1F) << 6) | 2);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1171  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1172  	if (!wait_for_mdio(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1173  		return -EBUSY;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1174  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1175  	if (!(GRETH_REGLOAD(greth->regs->mdio) & GRETH_MII_NVALID)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1176  		data = (GRETH_REGLOAD(greth->regs->mdio) >> 16) & 0xFFFF;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1177  		return data;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1178  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1179  	} else {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1180  		return -1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1181  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1182  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1183  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1184  static int greth_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1185  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1186  	struct greth_private *greth = bus->priv;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1187  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1188  	if (!wait_for_mdio(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1189  		return -EBUSY;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1190  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1191  	GRETH_REGSAVE(greth->regs->mdio,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1192  		      ((val & 0xFFFF) << 16) | ((phy & 0x1F) << 11) | ((reg & 0x1F) << 6) | 1);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1193  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1194  	if (!wait_for_mdio(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1195  		return -EBUSY;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1196  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1197  	return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1198  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1199  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1200  static void greth_link_change(struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1201  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1202  	struct greth_private *greth = netdev_priv(dev);
65752dda4b52573 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1203  	struct phy_device *phydev = dev->phydev;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1204  	unsigned long flags;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1205  	int status_change = 0;
2436af8ca7a6c46 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1206  	u32 ctrl;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1207  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1208  	spin_lock_irqsave(&greth->devlock, flags);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1209  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1210  	if (phydev->link) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1211  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1212  		if ((greth->speed != phydev->speed) || (greth->duplex != phydev->duplex)) {
2436af8ca7a6c46 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1213  			ctrl = GRETH_REGLOAD(greth->regs->control) &
2436af8ca7a6c46 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1214  			       ~(GRETH_CTRL_FD | GRETH_CTRL_SP | GRETH_CTRL_GB);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1215  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1216  			if (phydev->duplex)
2436af8ca7a6c46 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1217  				ctrl |= GRETH_CTRL_FD;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1218  
2436af8ca7a6c46 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1219  			if (phydev->speed == SPEED_100)
2436af8ca7a6c46 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1220  				ctrl |= GRETH_CTRL_SP;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1221  			else if (phydev->speed == SPEED_1000)
2436af8ca7a6c46 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1222  				ctrl |= GRETH_CTRL_GB;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1223  
2436af8ca7a6c46 drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1224  			GRETH_REGSAVE(greth->regs->control, ctrl);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1225  			greth->speed = phydev->speed;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1226  			greth->duplex = phydev->duplex;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1227  			status_change = 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1228  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1229  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1230  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1231  	if (phydev->link != greth->link) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1232  		if (!phydev->link) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1233  			greth->speed = 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1234  			greth->duplex = -1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1235  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1236  		greth->link = phydev->link;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1237  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1238  		status_change = 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1239  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1240  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1241  	spin_unlock_irqrestore(&greth->devlock, flags);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1242  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1243  	if (status_change) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1244  		if (phydev->link)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1245  			pr_debug("%s: link up (%d/%s)\n",
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1246  				dev->name, phydev->speed,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1247  				DUPLEX_FULL == phydev->duplex ? "Full" : "Half");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1248  		else
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1249  			pr_debug("%s: link down\n", dev->name);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1250  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1251  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1252  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1253  static int greth_mdio_probe(struct net_device *dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1254  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1255  	struct greth_private *greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1256  	struct phy_device *phy = NULL;
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1257  	int ret;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1258  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1259  	/* Find the first PHY */
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1260  	phy = phy_find_first(greth->mdio);
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1261  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1262  	if (!phy) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1263  		if (netif_msg_probe(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1264  			dev_err(&dev->dev, "no PHY found\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1265  		return -ENXIO;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1266  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1267  
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1268  	ret = phy_connect_direct(dev, phy, &greth_link_change,
f9a8f83b04e0c36 drivers/net/ethernet/aeroflex/greth.c Florian Fainelli   2013-01-14  1269  				 greth->gbit_mac ? PHY_INTERFACE_MODE_GMII : PHY_INTERFACE_MODE_MII);
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1270  	if (ret) {
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1271  		if (netif_msg_ifup(greth))
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1272  			dev_err(&dev->dev, "could not attach to PHY\n");
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1273  		return ret;
6e03718c852a7b2 drivers/net/greth.c                   kirjanov@gmail.com 2010-02-19  1274  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1275  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1276  	if (greth->gbit_mac)
58056c1e1b0e495 drivers/net/ethernet/aeroflex/greth.c Andrew Lunn        2018-09-12  1277  		phy_set_max_speed(phy, SPEED_1000);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1278  	else
58056c1e1b0e495 drivers/net/ethernet/aeroflex/greth.c Andrew Lunn        2018-09-12  1279  		phy_set_max_speed(phy, SPEED_100);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1280  
3c1bcc8614db108 drivers/net/ethernet/aeroflex/greth.c Andrew Lunn        2018-11-10  1281  	linkmode_copy(phy->advertising, phy->supported);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1282  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1283  	greth->link = 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1284  	greth->speed = 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1285  	greth->duplex = -1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1286  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1287  	return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1288  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1289  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1290  static int greth_mdio_init(struct greth_private *greth)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1291  {
b1ac6b7b4061f6c drivers/net/ethernet/aeroflex/greth.c Sam Ravnborg       2016-04-24  1292  	int ret;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1293  	unsigned long timeout;
65752dda4b52573 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1294  	struct net_device *ndev = greth->netdev;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1295  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1296  	greth->mdio = mdiobus_alloc();
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1297  	if (!greth->mdio) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1298  		return -ENOMEM;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1299  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1300  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1301  	greth->mdio->name = "greth-mdio";
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1302  	snprintf(greth->mdio->id, MII_BUS_ID_SIZE, "%s-%d", greth->mdio->name, greth->irq);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1303  	greth->mdio->read = greth_mdio_read;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1304  	greth->mdio->write = greth_mdio_write;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1305  	greth->mdio->priv = greth;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1306  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1307  	ret = mdiobus_register(greth->mdio);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1308  	if (ret) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1309  		goto error;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1310  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1311  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1312  	ret = greth_mdio_probe(greth->netdev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1313  	if (ret) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1314  		if (netif_msg_probe(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1315  			dev_err(&greth->netdev->dev, "failed to probe MDIO bus\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1316  		goto unreg_mdio;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1317  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1318  
65752dda4b52573 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1319  	phy_start(ndev->phydev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1320  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1321  	/* If Ethernet debug link is used make autoneg happen right away */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1322  	if (greth->edcl && greth_edcl == 1) {
65752dda4b52573 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1323  		phy_start_aneg(ndev->phydev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1324  		timeout = jiffies + 6*HZ;
65752dda4b52573 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1325  		while (!phy_aneg_done(ndev->phydev) &&
65752dda4b52573 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1326  		       time_before(jiffies, timeout)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1327  		}
65752dda4b52573 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1328  		phy_read_status(ndev->phydev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1329  		greth_link_change(greth->netdev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1330  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1331  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1332  	return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1333  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1334  unreg_mdio:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1335  	mdiobus_unregister(greth->mdio);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1336  error:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1337  	mdiobus_free(greth->mdio);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1338  	return ret;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1339  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1340  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1341  /* Initialize the GRETH MAC */
c0c0e29d8c94fb4 drivers/net/ethernet/aeroflex/greth.c Bill Pemberton     2012-12-03  1342  static int greth_of_probe(struct platform_device *ofdev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1343  {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1344  	struct net_device *dev;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1345  	struct greth_private *greth;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1346  	struct greth_regs *regs;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1347  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1348  	int i;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1349  	int err;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1350  	int tmp;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1351  	unsigned long timeout;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1352  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1353  	dev = alloc_etherdev(sizeof(struct greth_private));
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1354  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1355  	if (dev == NULL)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1356  		return -ENOMEM;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1357  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1358  	greth = netdev_priv(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1359  	greth->netdev = dev;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1360  	greth->dev = &ofdev->dev;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1361  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1362  	if (greth_debug > 0)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1363  		greth->msg_enable = greth_debug;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1364  	else
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1365  		greth->msg_enable = GRETH_DEF_MSG_ENABLE;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1366  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1367  	spin_lock_init(&greth->devlock);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1368  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1369  	greth->regs = of_ioremap(&ofdev->resource[0], 0,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1370  				 resource_size(&ofdev->resource[0]),
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1371  				 "grlib-greth regs");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1372  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1373  	if (greth->regs == NULL) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1374  		if (netif_msg_probe(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1375  			dev_err(greth->dev, "ioremap failure.\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1376  		err = -EIO;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1377  		goto error1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1378  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1379  
6469933605a3ecd drivers/net/ethernet/aeroflex/greth.c Joe Perches        2012-06-04  1380  	regs = greth->regs;
19e4875fb21a69f drivers/net/greth.c                   Grant Likely       2010-08-08  1381  	greth->irq = ofdev->archdata.irqs[0];
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1382  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1383  	dev_set_drvdata(greth->dev, dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1384  	SET_NETDEV_DEV(dev, greth->dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1385  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1386  	if (netif_msg_probe(greth))
72e60278d7e4a60 drivers/net/ethernet/aeroflex/greth.c Masanari Iida      2012-02-09  1387  		dev_dbg(greth->dev, "resetting controller.\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1388  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1389  	/* Reset the controller. */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1390  	GRETH_REGSAVE(regs->control, GRETH_RESET);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1391  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1392  	/* Wait for MAC to reset itself */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1393  	timeout = jiffies + HZ/100;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1394  	while (GRETH_REGLOAD(regs->control) & GRETH_RESET) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1395  		if (time_after(jiffies, timeout)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1396  			err = -EIO;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1397  			if (netif_msg_probe(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1398  				dev_err(greth->dev, "timeout when waiting for reset.\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1399  			goto error2;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1400  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1401  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1402  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1403  	/* Get default PHY address  */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1404  	greth->phyaddr = (GRETH_REGLOAD(regs->mdio) >> 11) & 0x1F;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1405  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1406  	/* Check if we have GBIT capable MAC */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1407  	tmp = GRETH_REGLOAD(regs->control);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1408  	greth->gbit_mac = (tmp >> 27) & 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1409  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1410  	/* Check for multicast capability */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1411  	greth->multicast = (tmp >> 25) & 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1412  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1413  	greth->edcl = (tmp >> 31) & 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1414  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1415  	/* If we have EDCL we disable the EDCL speed-duplex FSM so
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1416  	 * it doesn't interfere with the software */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1417  	if (greth->edcl != 0)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1418  		GRETH_REGORIN(regs->control, GRETH_CTRL_DISDUPLEX);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1419  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1420  	/* Check if MAC can handle MDIO interrupts */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1421  	greth->mdio_int_en = (tmp >> 26) & 1;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1422  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1423  	err = greth_mdio_init(greth);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1424  	if (err) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1425  		if (netif_msg_probe(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1426  			dev_err(greth->dev, "failed to register MDIO bus\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1427  		goto error2;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1428  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1429  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1430  	/* Allocate TX descriptor ring in coherent memory */
750afb08ca71310 drivers/net/ethernet/aeroflex/greth.c Luis Chamberlain   2019-01-04  1431  	greth->tx_bd_base = dma_alloc_coherent(greth->dev, 1024,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1432  					       &greth->tx_bd_base_phys,
ede23fa8161c1a0 drivers/net/ethernet/aeroflex/greth.c Joe Perches        2013-08-26  1433  					       GFP_KERNEL);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1434  	if (!greth->tx_bd_base) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1435  		err = -ENOMEM;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1436  		goto error3;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1437  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1438  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1439  	/* Allocate RX descriptor ring in coherent memory */
750afb08ca71310 drivers/net/ethernet/aeroflex/greth.c Luis Chamberlain   2019-01-04  1440  	greth->rx_bd_base = dma_alloc_coherent(greth->dev, 1024,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1441  					       &greth->rx_bd_base_phys,
ede23fa8161c1a0 drivers/net/ethernet/aeroflex/greth.c Joe Perches        2013-08-26  1442  					       GFP_KERNEL);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1443  	if (!greth->rx_bd_base) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1444  		err = -ENOMEM;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1445  		goto error4;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1446  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1447  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1448  	/* Get MAC address from: module param, OF property or ID prom */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1449  	for (i = 0; i < 6; i++) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1450  		if (macaddr[i] != 0)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1451  			break;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1452  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1453  	if (i == 6) {
726bceca81ba099 drivers/net/ethernet/aeroflex/greth.c Tobias Klauser     2017-03-21  1454  		const u8 *addr;
726bceca81ba099 drivers/net/ethernet/aeroflex/greth.c Tobias Klauser     2017-03-21  1455  
726bceca81ba099 drivers/net/ethernet/aeroflex/greth.c Tobias Klauser     2017-03-21  1456  		addr = of_get_mac_address(ofdev->dev.of_node);
a51645f70f6384a drivers/net/ethernet/aeroflex/greth.c Petr Štetiar       2019-05-06  1457  		if (!IS_ERR(addr)) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1458  			for (i = 0; i < 6; i++)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1459  				macaddr[i] = (unsigned int) addr[i];
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1460  		} else {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1461  #ifdef CONFIG_SPARC
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1462  			for (i = 0; i < 6; i++)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1463  				macaddr[i] = (unsigned int) idprom->id_ethaddr[i];
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1464  #endif
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1465  		}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1466  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1467  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1468  	for (i = 0; i < 6; i++)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1469  		dev->dev_addr[i] = macaddr[i];
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1470  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1471  	macaddr[5]++;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1472  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1473  	if (!is_valid_ether_addr(&dev->dev_addr[0])) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1474  		if (netif_msg_probe(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1475  			dev_err(greth->dev, "no valid ethernet address, aborting.\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1476  		err = -EINVAL;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1477  		goto error5;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1478  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1479  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1480  	GRETH_REGSAVE(regs->esa_msb, dev->dev_addr[0] << 8 | dev->dev_addr[1]);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1481  	GRETH_REGSAVE(regs->esa_lsb, dev->dev_addr[2] << 24 | dev->dev_addr[3] << 16 |
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1482  		      dev->dev_addr[4] << 8 | dev->dev_addr[5]);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1483  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1484  	/* Clear all pending interrupts except PHY irq */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1485  	GRETH_REGSAVE(regs->status, 0xFF);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1486  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1487  	if (greth->gbit_mac) {
131ae329702755d drivers/net/greth.c                   Michał Mirosław    2011-04-17  1488  		dev->hw_features = NETIF_F_SG | NETIF_F_IP_CSUM |
131ae329702755d drivers/net/greth.c                   Michał Mirosław    2011-04-17  1489  			NETIF_F_RXCSUM;
131ae329702755d drivers/net/greth.c                   Michał Mirosław    2011-04-17  1490  		dev->features = dev->hw_features | NETIF_F_HIGHDMA;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1491  		greth_netdev_ops.ndo_start_xmit = greth_start_xmit_gbit;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1492  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1493  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1494  	if (greth->multicast) {
afc4b13df143122 drivers/net/ethernet/aeroflex/greth.c Jiri Pirko         2011-08-16  1495  		greth_netdev_ops.ndo_set_rx_mode = greth_set_multicast_list;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1496  		dev->flags |= IFF_MULTICAST;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1497  	} else {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1498  		dev->flags &= ~IFF_MULTICAST;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1499  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1500  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1501  	dev->netdev_ops = &greth_netdev_ops;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1502  	dev->ethtool_ops = &greth_ethtool_ops;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1503  
cb5d991a9910456 drivers/net/greth.c                   Tobias Klauser     2010-08-17  1504  	err = register_netdev(dev);
cb5d991a9910456 drivers/net/greth.c                   Tobias Klauser     2010-08-17  1505  	if (err) {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1506  		if (netif_msg_probe(greth))
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1507  			dev_err(greth->dev, "netdevice registration failed.\n");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1508  		goto error5;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1509  	}
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1510  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1511  	/* setup NAPI */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1512  	netif_napi_add(dev, &greth->napi, greth_poll, 64);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1513  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1514  	return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1515  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1516  error5:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1517  	dma_free_coherent(greth->dev, 1024, greth->rx_bd_base, greth->rx_bd_base_phys);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1518  error4:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1519  	dma_free_coherent(greth->dev, 1024, greth->tx_bd_base, greth->tx_bd_base_phys);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1520  error3:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1521  	mdiobus_unregister(greth->mdio);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1522  error2:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1523  	of_iounmap(&ofdev->resource[0], greth->regs, resource_size(&ofdev->resource[0]));
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1524  error1:
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1525  	free_netdev(dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1526  	return err;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1527  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1528  
c0c0e29d8c94fb4 drivers/net/ethernet/aeroflex/greth.c Bill Pemberton     2012-12-03  1529  static int greth_of_remove(struct platform_device *of_dev)
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1530  {
8513fbd880093f0 drivers/net/ethernet/aeroflex/greth.c Jingoo Han         2013-05-23  1531  	struct net_device *ndev = platform_get_drvdata(of_dev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1532  	struct greth_private *greth = netdev_priv(ndev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1533  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1534  	/* Free descriptor areas */
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1535  	dma_free_coherent(&of_dev->dev, 1024, greth->rx_bd_base, greth->rx_bd_base_phys);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1536  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1537  	dma_free_coherent(&of_dev->dev, 1024, greth->tx_bd_base, greth->tx_bd_base_phys);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1538  
65752dda4b52573 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1539  	if (ndev->phydev)
65752dda4b52573 drivers/net/ethernet/aeroflex/greth.c Philippe Reynes    2016-07-30  1540  		phy_stop(ndev->phydev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1541  	mdiobus_unregister(greth->mdio);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1542  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1543  	unregister_netdev(ndev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1544  	free_netdev(ndev);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1545  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1546  	of_iounmap(&of_dev->resource[0], greth->regs, resource_size(&of_dev->resource[0]));
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1547  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1548  	return 0;
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1549  }
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1550  
73c7047464f26c0 drivers/net/ethernet/aeroflex/greth.c Fabian Frederick   2015-03-17  1551  static const struct of_device_id greth_of_match[] = {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1552  	{
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1553  	 .name = "GAISLER_ETHMAC",
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1554  	 },
ad4650a89ac47bd drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1555  	{
ad4650a89ac47bd drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1556  	 .name = "01_01d",
ad4650a89ac47bd drivers/net/greth.c                   Daniel Hellstrom   2011-01-14  1557  	 },
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1558  	{},
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1559  };
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1560  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1561  MODULE_DEVICE_TABLE(of, greth_of_match);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1562  
74888760d40b3ac drivers/net/greth.c                   Grant Likely       2011-02-22  1563  static struct platform_driver greth_of_driver = {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1564  	.driver = {
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1565  		.name = "grlib-greth",
bc284f94f84c3d7 drivers/net/greth.c                   David S. Miller    2010-05-31  1566  		.of_match_table = greth_of_match,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1567  	},
bc284f94f84c3d7 drivers/net/greth.c                   David S. Miller    2010-05-31  1568  	.probe = greth_of_probe,
c0c0e29d8c94fb4 drivers/net/ethernet/aeroflex/greth.c Bill Pemberton     2012-12-03  1569  	.remove = greth_of_remove,
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1570  };
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1571  
db62f684deeb291 drivers/net/ethernet/aeroflex/greth.c Axel Lin           2011-11-27  1572  module_platform_driver(greth_of_driver);
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1573  
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1574  MODULE_AUTHOR("Aeroflex Gaisler AB.");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1575  MODULE_DESCRIPTION("Aeroflex Gaisler Ethernet MAC driver");
d4c41139df6e74c drivers/net/greth.c                   Kristoffer Glembo  2010-02-15  1576  MODULE_LICENSE("GPL");

:::::: The code at line 113 was first introduced by commit
:::::: ab7e11d9d0293ef1802d6ae8aab39ce58472b167 greth: convert to SKB paged frag API.

:::::: TO: Ian Campbell <Ian.Campbell@citrix.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--3lqvn44n6esfjhyj
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
XhU3Isf/AfrfFE3SpwMA

--3lqvn44n6esfjhyj
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--3lqvn44n6esfjhyj--
