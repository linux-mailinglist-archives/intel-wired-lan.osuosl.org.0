Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA626AAAA2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 16:06:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF4404155F;
	Sat,  4 Mar 2023 15:06:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF4404155F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677942368;
	bh=cHkjwqHpVTc9cCUOg04RInZ4QBtGWZx2j+YL3hhNfvA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Oe8V3mQ9rkm9rDTtO93IaJBrPZclJNfa9cya7N9kGdUxfuc764Ls1cvEW9A2Ytk1x
	 1BiGkNkMDztAmvmIrB1YVFwixdPDT4aK+eKM5bLhsH2WGjEQ0yQwUbE1dWimxQdAyS
	 Rf7QWWJUbltUIBwr94X2CFN4gyZiwxVHzML9n/+sIu8qmiDJsfqRgwEDmMFX8JZ+zL
	 ZjIWE2R+UW2cZjibE4OUj/tRNkaJiagGktk1u/l3F5AYg9T2JS6RlUvobAKF6RQeQ4
	 zKlBBgOE2aNFq9f5+lAkt60E8Q0jwXvU/MzZjumugWNWUHVuZhv3uZZx5uCaKn/+HN
	 Vuq0F/k1diujw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XcjXHPsyPPXd; Sat,  4 Mar 2023 15:06:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5BE441529;
	Sat,  4 Mar 2023 15:06:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5BE441529
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4864B1BF315
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 15:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 206BD41521
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 15:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 206BD41521
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zwa5LWBqVspD for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Mar 2023 15:05:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F12341529
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F12341529
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 15:05:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10639"; a="315662516"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="315662516"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2023 07:05:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10639"; a="675677396"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="675677396"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 04 Mar 2023 07:05:56 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYTSN-0002EC-1E;
 Sat, 04 Mar 2023 15:05:55 +0000
Date: Sat, 4 Mar 2023 23:05:51 +0800
From: kernel test robot <lkp@intel.com>
To: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>, netdev@vger.kernel.org
Message-ID: <202303042257.q7Wn15nV-lkp@intel.com>
References: <20230304115626.215026-1-vincenzopalazzodev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230304115626.215026-1-vincenzopalazzodev@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677942359; x=1709478359;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SDhnGN2X07/weyyytzDfSk4qsQFEPWI9XmLaT9AYz04=;
 b=jpJePc6LNQ/tb67c1zx3Yd7KsQ9C8OfKCeBSBSkDCvwCfI+jnpo+xTXO
 H5SmdfAfjAcdu3jq2ktG1iEQhz39ixWH9R9exYad6a1zVwC5bTZtJs4c1
 9ubrWoD6MoqC1+d8vZBO+eN/B0/qY94phm8+x9Au83WAPECqWteuf2JoI
 IHX1z72IIlpE24ZI56fjTn/6uZ8as7PrfxDRQB6zw5roTbIE5pYXXFjMI
 2xIWjn7f6pFqmoemQgh0K8cOw//mIsBl2cCosEm+E17XpR2NY9DwC0Ojj
 I+Q6OUr1DbG0lLymh84XLahmjDsbNFnR+zKQaXRQlAZ8W+g6ifWH+xMyK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jpJePc6L
Subject: Re: [Intel-wired-lan] [PATCH v3] netdevice: use ifmap instead of
 plain fields
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
Cc: jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 Vincenzo Palazzo <vincenzopalazzodev@gmail.com>, oe-kbuild-all@lists.linux.dev,
 davem@davemloft.net, khc@pm.waw.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vincenzo,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net/master]
[also build test WARNING on net-next/master horms-ipvs/master linus/master v6.2 next-20230303]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vincenzo-Palazzo/netdevice-use-ifmap-instead-of-plain-fields/20230304-195731
patch link:    https://lore.kernel.org/r/20230304115626.215026-1-vincenzopalazzodev%40gmail.com
patch subject: [PATCH v3] netdevice: use ifmap instead of plain fields
config: m68k-allyesconfig (https://download.01.org/0day-ci/archive/20230304/202303042257.q7Wn15nV-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/89e04810927e646944e5cdd83fb9bb5a41cc5a3d
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Vincenzo-Palazzo/netdevice-use-ifmap-instead-of-plain-fields/20230304-195731
        git checkout 89e04810927e646944e5cdd83fb9bb5a41cc5a3d
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash drivers/net/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303042257.q7Wn15nV-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from include/linux/printk.h:564,
                    from include/linux/kernel.h:29,
                    from drivers/net/arcnet/com20020_cs.c:37:
   drivers/net/arcnet/com20020_cs.c: In function 'com20020_config':
>> drivers/net/arcnet/com20020_cs.c:268:25: warning: format '%lx' expects argument of type 'long unsigned int', but argument 4 has type 'int' [-Wformat=]
     268 |         netdev_dbg(dev, "port %#3lx, irq %d\n",
         |                         ^~~~~~~~~~~~~~~~~~~~~~
     269 |                    dev->dev_mapping.base_addr, dev->irq);
         |                    ~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                                    |
         |                                    int
   include/linux/dynamic_debug.h:223:29: note: in definition of macro '__dynamic_func_call_cls'
     223 |                 func(&id, ##__VA_ARGS__);                       \
         |                             ^~~~~~~~~~~
   include/linux/dynamic_debug.h:249:9: note: in expansion of macro '_dynamic_func_call_cls'
     249 |         _dynamic_func_call_cls(_DPRINTK_CLASS_DFLT, fmt, func, ##__VA_ARGS__)
         |         ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/dynamic_debug.h:276:9: note: in expansion of macro '_dynamic_func_call'
     276 |         _dynamic_func_call(fmt, __dynamic_netdev_dbg,           \
         |         ^~~~~~~~~~~~~~~~~~
   include/net/net_debug.h:57:9: note: in expansion of macro 'dynamic_netdev_dbg'
      57 |         dynamic_netdev_dbg(__dev, format, ##args);              \
         |         ^~~~~~~~~~~~~~~~~~
   drivers/net/arcnet/com20020_cs.c:268:9: note: in expansion of macro 'netdev_dbg'
     268 |         netdev_dbg(dev, "port %#3lx, irq %d\n",
         |         ^~~~~~~~~~
   drivers/net/arcnet/com20020_cs.c:268:35: note: format string is defined here
     268 |         netdev_dbg(dev, "port %#3lx, irq %d\n",
         |                               ~~~~^
         |                                   |
         |                                   long unsigned int
         |                               %#3x


vim +268 drivers/net/arcnet/com20020_cs.c

^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  194  
15b99ac1729503 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2006-03-31  195  static int com20020_config(struct pcmcia_device *link)
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  196  {
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  197  	struct arcnet_local *lp;
2dfd2533e9e700 drivers/net/arcnet/com20020_cs.c Himangi Saraogi   2014-08-09  198  	struct com20020_dev *info;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  199  	struct net_device *dev;
dd0fab5b940c0b drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-10-24  200  	int i, ret;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  201  	int ioaddr;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  202  
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  203  	info = link->priv;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  204  	dev = info->dev;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  205  
dd0fab5b940c0b drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-10-24  206  	dev_dbg(&link->dev, "config...\n");
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  207  
dd0fab5b940c0b drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-10-24  208  	dev_dbg(&link->dev, "com20020_config\n");
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  209  
90abdc3b973229 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-07-24  210  	dev_dbg(&link->dev, "baseport1 is %Xh\n",
90abdc3b973229 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-07-24  211  		(unsigned int)link->resource[0]->start);
90abdc3b973229 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-07-24  212  
4c89e88bfde6a3 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2008-08-03  213  	i = -ENODEV;
90abdc3b973229 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-07-24  214  	link->io_lines = 16;
90abdc3b973229 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-07-24  215  
7f5e760c1b2690 drivers/net/arcnet/com20020_cs.c Joe Perches       2015-05-05  216  	if (!link->resource[0]->start) {
7f5e760c1b2690 drivers/net/arcnet/com20020_cs.c Joe Perches       2015-05-05  217  		for (ioaddr = 0x100; ioaddr < 0x400; ioaddr += 0x10) {
90abdc3b973229 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-07-24  218  			link->resource[0]->start = ioaddr;
90abdc3b973229 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-07-24  219  			i = pcmcia_request_io(link);
4c89e88bfde6a3 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2008-08-03  220  			if (i == 0)
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  221  				break;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  222  		}
7f5e760c1b2690 drivers/net/arcnet/com20020_cs.c Joe Perches       2015-05-05  223  	} else {
90abdc3b973229 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-07-24  224  		i = pcmcia_request_io(link);
7f5e760c1b2690 drivers/net/arcnet/com20020_cs.c Joe Perches       2015-05-05  225  	}
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  226  
7f5e760c1b2690 drivers/net/arcnet/com20020_cs.c Joe Perches       2015-05-05  227  	if (i != 0) {
dd0fab5b940c0b drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-10-24  228  		dev_dbg(&link->dev, "requestIO failed totally!\n");
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  229  		goto failed;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  230  	}
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  231  
89e04810927e64 drivers/net/arcnet/com20020_cs.c Vincenzo Palazzo  2023-03-04  232  	/* FIXME: multiple assignments should be avoided */
89e04810927e64 drivers/net/arcnet/com20020_cs.c Vincenzo Palazzo  2023-03-04  233  	ioaddr = dev->dev_mapping.base_addr = link->resource[0]->start;
dd0fab5b940c0b drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-10-24  234  	dev_dbg(&link->dev, "got ioaddr %Xh\n", ioaddr);
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  235  
5fa9167a1bf5f5 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-11-08  236  	dev_dbg(&link->dev, "request IRQ %d\n",
eb14120f743d29 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-03-07  237  		link->irq);
7f5e760c1b2690 drivers/net/arcnet/com20020_cs.c Joe Perches       2015-05-05  238  	if (!link->irq) {
dd0fab5b940c0b drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-10-24  239  		dev_dbg(&link->dev, "requestIRQ failed totally!\n");
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  240  		goto failed;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  241  	}
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  242  
eb14120f743d29 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-03-07  243  	dev->irq = link->irq;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  244  
1ac71e5a35eebe drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2010-07-29  245  	ret = pcmcia_enable_device(link);
dd0fab5b940c0b drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-10-24  246  	if (ret)
dd0fab5b940c0b drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-10-24  247  		goto failed;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  248  
7f5e760c1b2690 drivers/net/arcnet/com20020_cs.c Joe Perches       2015-05-05  249  	if (com20020_check(dev)) {
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  250  		regdump(dev);
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  251  		goto failed;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  252  	}
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  253  
4cf1653aa90c63 drivers/net/pcmcia/com20020_cs.c Wang Chen         2008-11-12  254  	lp = netdev_priv(dev);
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  255  	lp->card_name = "PCMCIA COM20020";
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  256  	lp->card_flags = ARC_CAN_10MBIT; /* pretend all of them can 10Mbit */
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  257  
dd2e5a156525f1 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-11-03  258  	SET_NETDEV_DEV(dev, &link->dev);
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  259  
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  260  	i = com20020_found(dev, 0);	/* calls register_netdev */
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  261  
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  262  	if (i != 0) {
636b8116d4e116 drivers/net/pcmcia/com20020_cs.c Joe Perches       2010-08-12  263  		dev_notice(&link->dev,
636b8116d4e116 drivers/net/pcmcia/com20020_cs.c Joe Perches       2010-08-12  264  			   "com20020_found() failed\n");
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  265  		goto failed;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  266  	}
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  267  
636b8116d4e116 drivers/net/pcmcia/com20020_cs.c Joe Perches       2010-08-12 @268  	netdev_dbg(dev, "port %#3lx, irq %d\n",
89e04810927e64 drivers/net/arcnet/com20020_cs.c Vincenzo Palazzo  2023-03-04  269  		   dev->dev_mapping.base_addr, dev->irq);
15b99ac1729503 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2006-03-31  270  	return 0;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  271  
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  272  failed:
dd0fab5b940c0b drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2009-10-24  273  	dev_dbg(&link->dev, "com20020_config failed...\n");
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  274  	com20020_release(link);
15b99ac1729503 drivers/net/pcmcia/com20020_cs.c Dominik Brodowski 2006-03-31  275  	return -ENODEV;
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  276  } /* com20020_config */
^1da177e4c3f41 drivers/net/pcmcia/com20020_cs.c Linus Torvalds    2005-04-16  277  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
