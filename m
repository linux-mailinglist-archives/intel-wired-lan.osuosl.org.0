Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B666AAA75
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 15:34:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 042A2414DE;
	Sat,  4 Mar 2023 14:34:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 042A2414DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677940449;
	bh=HZNl6xEXWTClkg6dww61LHMUvaVYeKFaxYvH8BzfmBE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MdnWDs9lwZoVRyFH6zBE9qX0YAD6MhcXyM3lDA2BpssWaVT/M+imP3c/F3X/9LDNH
	 gQihlDqzqtP1jKXyhrn7rwbpztHcglmfQRmWXjCGkyoZtz/clFeQtmckgxb3Qj6xHu
	 +tFGy8C6q9xjVkI+TbZS63SzlUz0GCKEoxtu6792XGyvVm6Sng69s3zCQ+qZjWk2Nx
	 r5GyzLkAKcFBMYlXP3rcnX2uNqBLNXSGyk4+PFpRuKocs5RXN7hVVQGWEiY6bNCPCD
	 0dQbFNeiqV2yIoDli2CvMsR4qmW9Pz7BZYZvI2Krj1IDvBRdj88KSxGkJFUWV0Pz4D
	 F39uCQBvure4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p85iiK8Os50a; Sat,  4 Mar 2023 14:34:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5775410D4;
	Sat,  4 Mar 2023 14:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5775410D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9341BF357
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 14:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A83B60AD4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 14:34:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A83B60AD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hOUryJnw40mJ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Mar 2023 14:34:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A63F60AC1
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A63F60AC1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 14:33:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10639"; a="319089967"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="319089967"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2023 06:33:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10639"; a="849799420"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="849799420"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 04 Mar 2023 06:33:55 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYSxO-0002DT-36;
 Sat, 04 Mar 2023 14:33:54 +0000
Date: Sat, 4 Mar 2023 22:33:54 +0800
From: kernel test robot <lkp@intel.com>
To: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>, netdev@vger.kernel.org
Message-ID: <202303042238.bQFk2Esl-lkp@intel.com>
References: <20230304115626.215026-1-vincenzopalazzodev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230304115626.215026-1-vincenzopalazzodev@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677940440; x=1709476440;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qn9XLmmbBZgRIDTnrbrgrbSleKelw/x5svL1EAo9rTA=;
 b=KNgha1dQoAf5kCECJf6BUgL8bQFegt4pgqJQVdcxU2kuccLcSFEzlJj0
 UVHTiehHGC5sVsSzzU6b6nrF5cwT69s7N1il9BPSD7fReARyNO7Ck+C6k
 z4TiWj16+rt4Vroc43MfSpIWO+KlT+gjCnc3GeZ59MBZt4g1AQZf4R7/p
 hd26B6+pQhi1o5ezMt5PVtSY/AZS2tCWjvCAYUdnr9ORzTGJLImSlqnqI
 vciJHpk/xce8QNk9Hr7WEKrM2gAj4m7BSYWcyTDxQTIVSnfj2cvUkIG31
 jiBRN4jTOIkDH2/NDnq1LW2JE3ns7X4dQNeNeTS2bBMnEn8n3a417V5xv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KNgha1dQ
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
Cc: llvm@lists.linux.dev, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Vincenzo Palazzo <vincenzopalazzodev@gmail.com>, oe-kbuild-all@lists.linux.dev,
 davem@davemloft.net, khc@pm.waw.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vincenzo,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on net/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vincenzo-Palazzo/netdevice-use-ifmap-instead-of-plain-fields/20230304-195731
patch link:    https://lore.kernel.org/r/20230304115626.215026-1-vincenzopalazzodev%40gmail.com
patch subject: [PATCH v3] netdevice: use ifmap instead of plain fields
config: arm64-randconfig-r026-20230302 (https://download.01.org/0day-ci/archive/20230304/202303042238.bQFk2Esl-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project 67409911353323ca5edf2049ef0df54132fa1ca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/89e04810927e646944e5cdd83fb9bb5a41cc5a3d
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Vincenzo-Palazzo/netdevice-use-ifmap-instead-of-plain-fields/20230304-195731
        git checkout 89e04810927e646944e5cdd83fb9bb5a41cc5a3d
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/net/arcnet/ drivers/net/can/cc770/ drivers/net/can/sja1000/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303042238.bQFk2Esl-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/arcnet/com20020-pci.c:199:8: error: no member named 'base_addr' in 'struct net_device'
                   dev->base_addr = ioaddr;
                   ~~~  ^
   1 error generated.
--
>> drivers/net/can/cc770/cc770_isa.c:204:8: error: no member named 'base_addr' in 'struct net_device'
                   dev->base_addr = mem[idx];
                   ~~~  ^
   drivers/net/can/cc770/cc770_isa.c:209:8: error: no member named 'base_addr' in 'struct net_device'
                   dev->base_addr = port[idx];
                   ~~~  ^
   2 errors generated.
--
>> drivers/net/can/sja1000/sja1000_isa.c:159:8: error: no member named 'base_addr' in 'struct net_device'
                   dev->base_addr = mem[idx];
                   ~~~  ^
   drivers/net/can/sja1000/sja1000_isa.c:164:8: error: no member named 'base_addr' in 'struct net_device'
                   dev->base_addr = port[idx];
                   ~~~  ^
   2 errors generated.


vim +199 drivers/net/arcnet/com20020-pci.c

c51da42a6346c0 Michael Grzeschik  2014-09-29  118  
d6d7d3ed56e3bf Joe Perches        2015-05-05  119  static int com20020pci_probe(struct pci_dev *pdev,
d6d7d3ed56e3bf Joe Perches        2015-05-05  120  			     const struct pci_device_id *id)
^1da177e4c3f41 Linus Torvalds     2005-04-16  121  {
8c14f9c70327a6 Michael Grzeschik  2014-09-29  122  	struct com20020_pci_card_info *ci;
5ef216c1f84825 Michael Grzeschik  2014-09-18  123  	struct com20020_pci_channel_map *mm;
^1da177e4c3f41 Linus Torvalds     2005-04-16  124  	struct net_device *dev;
^1da177e4c3f41 Linus Torvalds     2005-04-16  125  	struct arcnet_local *lp;
c51da42a6346c0 Michael Grzeschik  2014-09-29  126  	struct com20020_priv *priv;
c51da42a6346c0 Michael Grzeschik  2014-09-29  127  	int i, ioaddr, ret;
c51da42a6346c0 Michael Grzeschik  2014-09-29  128  	struct resource *r;
^1da177e4c3f41 Linus Torvalds     2005-04-16  129  
6577b9a551aedb Tong Zhang         2021-03-14  130  	ret = 0;
6577b9a551aedb Tong Zhang         2021-03-14  131  
^1da177e4c3f41 Linus Torvalds     2005-04-16  132  	if (pci_enable_device(pdev))
^1da177e4c3f41 Linus Torvalds     2005-04-16  133  		return -EIO;
c51da42a6346c0 Michael Grzeschik  2014-09-29  134  
c51da42a6346c0 Michael Grzeschik  2014-09-29  135  	priv = devm_kzalloc(&pdev->dev, sizeof(struct com20020_priv),
c51da42a6346c0 Michael Grzeschik  2014-09-29  136  			    GFP_KERNEL);
e8a308affcd79d Kiran Padwal       2015-02-05  137  	if (!priv)
e8a308affcd79d Kiran Padwal       2015-02-05  138  		return -ENOMEM;
e8a308affcd79d Kiran Padwal       2015-02-05  139  
c51da42a6346c0 Michael Grzeschik  2014-09-29  140  	ci = (struct com20020_pci_card_info *)id->driver_data;
bd6f1fd5d33dfe Zheyu Ma           2022-03-02  141  	if (!ci)
bd6f1fd5d33dfe Zheyu Ma           2022-03-02  142  		return -EINVAL;
bd6f1fd5d33dfe Zheyu Ma           2022-03-02  143  
c51da42a6346c0 Michael Grzeschik  2014-09-29  144  	priv->ci = ci;
5ef216c1f84825 Michael Grzeschik  2014-09-18  145  	mm = &ci->misc_map;
c51da42a6346c0 Michael Grzeschik  2014-09-29  146  
6577b9a551aedb Tong Zhang         2021-03-14  147  	pci_set_drvdata(pdev, priv);
6577b9a551aedb Tong Zhang         2021-03-14  148  
c51da42a6346c0 Michael Grzeschik  2014-09-29  149  	INIT_LIST_HEAD(&priv->list_dev);
c51da42a6346c0 Michael Grzeschik  2014-09-29  150  
5ef216c1f84825 Michael Grzeschik  2014-09-18  151  	if (mm->size) {
5ef216c1f84825 Michael Grzeschik  2014-09-18  152  		ioaddr = pci_resource_start(pdev, mm->bar) + mm->offset;
5ef216c1f84825 Michael Grzeschik  2014-09-18  153  		r = devm_request_region(&pdev->dev, ioaddr, mm->size,
5ef216c1f84825 Michael Grzeschik  2014-09-18  154  					"com20020-pci");
5ef216c1f84825 Michael Grzeschik  2014-09-18  155  		if (!r) {
5ef216c1f84825 Michael Grzeschik  2014-09-18  156  			pr_err("IO region %xh-%xh already allocated.\n",
5ef216c1f84825 Michael Grzeschik  2014-09-18  157  			       ioaddr, ioaddr + mm->size - 1);
5ef216c1f84825 Michael Grzeschik  2014-09-18  158  			return -EBUSY;
5ef216c1f84825 Michael Grzeschik  2014-09-18  159  		}
5ef216c1f84825 Michael Grzeschik  2014-09-18  160  		priv->misc = ioaddr;
5ef216c1f84825 Michael Grzeschik  2014-09-18  161  	}
5ef216c1f84825 Michael Grzeschik  2014-09-18  162  
c51da42a6346c0 Michael Grzeschik  2014-09-29  163  	for (i = 0; i < ci->devcount; i++) {
c51da42a6346c0 Michael Grzeschik  2014-09-29  164  		struct com20020_pci_channel_map *cm = &ci->chan_map_tbl[i];
c51da42a6346c0 Michael Grzeschik  2014-09-29  165  		struct com20020_dev *card;
cb108619f2fc77 Michael Grzeschik  2017-06-28  166  		int dev_id_mask = 0xf;
c51da42a6346c0 Michael Grzeschik  2014-09-29  167  
^1da177e4c3f41 Linus Torvalds     2005-04-16  168  		dev = alloc_arcdev(device);
c51da42a6346c0 Michael Grzeschik  2014-09-29  169  		if (!dev) {
c51da42a6346c0 Michael Grzeschik  2014-09-29  170  			ret = -ENOMEM;
6577b9a551aedb Tong Zhang         2021-03-14  171  			break;
c51da42a6346c0 Michael Grzeschik  2014-09-29  172  		}
ae8ede6a0cdcf3 Michael Grzeschik  2015-03-20  173  		dev->dev_port = i;
a1799af4d7deef Stephen Hemminger  2009-01-09  174  
a1799af4d7deef Stephen Hemminger  2009-01-09  175  		dev->netdev_ops = &com20020_netdev_ops;
a1799af4d7deef Stephen Hemminger  2009-01-09  176  
454d7c9b14e20f Wang Chen          2008-11-12  177  		lp = netdev_priv(dev);
^1da177e4c3f41 Linus Torvalds     2005-04-16  178  
a34c0932c3b2f2 Joe Perches        2015-05-05  179  		arc_printk(D_NORMAL, dev, "%s Controls\n", ci->name);
c51da42a6346c0 Michael Grzeschik  2014-09-29  180  		ioaddr = pci_resource_start(pdev, cm->bar) + cm->offset;
c51da42a6346c0 Michael Grzeschik  2014-09-29  181  
c51da42a6346c0 Michael Grzeschik  2014-09-29  182  		r = devm_request_region(&pdev->dev, ioaddr, cm->size,
c51da42a6346c0 Michael Grzeschik  2014-09-29  183  					"com20020-pci");
c51da42a6346c0 Michael Grzeschik  2014-09-29  184  		if (!r) {
05a24b234b9dda Joe Perches        2015-05-05  185  			pr_err("IO region %xh-%xh already allocated\n",
c51da42a6346c0 Michael Grzeschik  2014-09-29  186  			       ioaddr, ioaddr + cm->size - 1);
c51da42a6346c0 Michael Grzeschik  2014-09-29  187  			ret = -EBUSY;
6577b9a551aedb Tong Zhang         2021-03-14  188  			goto err_free_arcdev;
^1da177e4c3f41 Linus Torvalds     2005-04-16  189  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  190  
c51da42a6346c0 Michael Grzeschik  2014-09-29  191  		/* Dummy access after Reset
c51da42a6346c0 Michael Grzeschik  2014-09-29  192  		 * ARCNET controller needs
c51da42a6346c0 Michael Grzeschik  2014-09-29  193  		 * this access to detect bustype
c51da42a6346c0 Michael Grzeschik  2014-09-29  194  		 */
0fec65130b9f11 Joe Perches        2015-05-05  195  		arcnet_outb(0x00, ioaddr, COM20020_REG_W_COMMAND);
0fec65130b9f11 Joe Perches        2015-05-05  196  		arcnet_inb(ioaddr, COM20020_REG_R_DIAGSTAT);
^1da177e4c3f41 Linus Torvalds     2005-04-16  197  
2a0ea04c83ab82 Michael Grzeschik  2017-06-28  198  		SET_NETDEV_DEV(dev, &pdev->dev);
^1da177e4c3f41 Linus Torvalds     2005-04-16 @199  		dev->base_addr = ioaddr;
13b5ffa0e282f3 Jakub Kicinski     2021-10-12  200  		arcnet_set_addr(dev, node);
ede07a1fc7d70a Michael Grzeschik  2017-06-28  201  		dev->sysfs_groups[0] = &com20020_state_group;
c51da42a6346c0 Michael Grzeschik  2014-09-29  202  		dev->irq = pdev->irq;
^1da177e4c3f41 Linus Torvalds     2005-04-16  203  		lp->card_name = "PCI COM20020";
8c14f9c70327a6 Michael Grzeschik  2014-09-29  204  		lp->card_flags = ci->flags;
^1da177e4c3f41 Linus Torvalds     2005-04-16  205  		lp->backplane = backplane;
^1da177e4c3f41 Linus Torvalds     2005-04-16  206  		lp->clockp = clockp & 7;
^1da177e4c3f41 Linus Torvalds     2005-04-16  207  		lp->clockm = clockm & 3;
^1da177e4c3f41 Linus Torvalds     2005-04-16  208  		lp->timeout = timeout;
^1da177e4c3f41 Linus Torvalds     2005-04-16  209  		lp->hw.owner = THIS_MODULE;
^1da177e4c3f41 Linus Torvalds     2005-04-16  210  
52ab12e4f99437 Michael Grzeschik  2017-06-28  211  		lp->backplane = (inb(priv->misc) >> (2 + i)) & 0x1;
52ab12e4f99437 Michael Grzeschik  2017-06-28  212  
a356ab1c3d4651 Michael Grzeschik  2017-06-28  213  		if (!strncmp(ci->name, "EAE PLX-PCI FB2", 15))
a356ab1c3d4651 Michael Grzeschik  2017-06-28  214  			lp->backplane = 1;
a356ab1c3d4651 Michael Grzeschik  2017-06-28  215  
5ef216c1f84825 Michael Grzeschik  2014-09-18  216  		/* Get the dev_id from the PLX rotary coder */
5ef216c1f84825 Michael Grzeschik  2014-09-18  217  		if (!strncmp(ci->name, "EAE PLX-PCI MA1", 15))
cb108619f2fc77 Michael Grzeschik  2017-06-28  218  			dev_id_mask = 0x3;
cb108619f2fc77 Michael Grzeschik  2017-06-28  219  		dev->dev_id = (inb(priv->misc + ci->rotary) >> 4) & dev_id_mask;
5ef216c1f84825 Michael Grzeschik  2014-09-18  220  
5ef216c1f84825 Michael Grzeschik  2014-09-18  221  		snprintf(dev->name, sizeof(dev->name), "arc%d-%d", dev->dev_id, i);
5ef216c1f84825 Michael Grzeschik  2014-09-18  222  
0fec65130b9f11 Joe Perches        2015-05-05  223  		if (arcnet_inb(ioaddr, COM20020_REG_R_STATUS) == 0xFF) {
c51da42a6346c0 Michael Grzeschik  2014-09-29  224  			pr_err("IO address %Xh is empty!\n", ioaddr);
c51da42a6346c0 Michael Grzeschik  2014-09-29  225  			ret = -EIO;
6577b9a551aedb Tong Zhang         2021-03-14  226  			goto err_free_arcdev;
^1da177e4c3f41 Linus Torvalds     2005-04-16  227  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  228  		if (com20020_check(dev)) {
c51da42a6346c0 Michael Grzeschik  2014-09-29  229  			ret = -EIO;
6577b9a551aedb Tong Zhang         2021-03-14  230  			goto err_free_arcdev;
^1da177e4c3f41 Linus Torvalds     2005-04-16  231  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  232  
c51da42a6346c0 Michael Grzeschik  2014-09-29  233  		card = devm_kzalloc(&pdev->dev, sizeof(struct com20020_dev),
c51da42a6346c0 Michael Grzeschik  2014-09-29  234  				    GFP_KERNEL);
01c3521f794ce9 Christophe Jaillet 2017-07-07  235  		if (!card) {
01c3521f794ce9 Christophe Jaillet 2017-07-07  236  			ret = -ENOMEM;
6577b9a551aedb Tong Zhang         2021-03-14  237  			goto err_free_arcdev;
01c3521f794ce9 Christophe Jaillet 2017-07-07  238  		}
c51da42a6346c0 Michael Grzeschik  2014-09-29  239  
c51da42a6346c0 Michael Grzeschik  2014-09-29  240  		card->index = i;
c51da42a6346c0 Michael Grzeschik  2014-09-29  241  		card->pci_priv = priv;
8890624a4e8c2c Michael Grzeschik  2014-09-18  242  		card->tx_led.brightness_set = led_tx_set;
8890624a4e8c2c Michael Grzeschik  2014-09-18  243  		card->tx_led.default_trigger = devm_kasprintf(&pdev->dev,
8890624a4e8c2c Michael Grzeschik  2014-09-18  244  						GFP_KERNEL, "arc%d-%d-tx",
8890624a4e8c2c Michael Grzeschik  2014-09-18  245  						dev->dev_id, i);
8890624a4e8c2c Michael Grzeschik  2014-09-18  246  		card->tx_led.name = devm_kasprintf(&pdev->dev, GFP_KERNEL,
8890624a4e8c2c Michael Grzeschik  2014-09-18  247  						"pci:green:tx:%d-%d",
8890624a4e8c2c Michael Grzeschik  2014-09-18  248  						dev->dev_id, i);
8890624a4e8c2c Michael Grzeschik  2014-09-18  249  
8890624a4e8c2c Michael Grzeschik  2014-09-18  250  		card->tx_led.dev = &dev->dev;
8890624a4e8c2c Michael Grzeschik  2014-09-18  251  		card->recon_led.brightness_set = led_recon_set;
8890624a4e8c2c Michael Grzeschik  2014-09-18  252  		card->recon_led.default_trigger = devm_kasprintf(&pdev->dev,
8890624a4e8c2c Michael Grzeschik  2014-09-18  253  						GFP_KERNEL, "arc%d-%d-recon",
8890624a4e8c2c Michael Grzeschik  2014-09-18  254  						dev->dev_id, i);
8890624a4e8c2c Michael Grzeschik  2014-09-18  255  		card->recon_led.name = devm_kasprintf(&pdev->dev, GFP_KERNEL,
8890624a4e8c2c Michael Grzeschik  2014-09-18  256  						"pci:red:recon:%d-%d",
8890624a4e8c2c Michael Grzeschik  2014-09-18  257  						dev->dev_id, i);
8890624a4e8c2c Michael Grzeschik  2014-09-18  258  		card->recon_led.dev = &dev->dev;
c51da42a6346c0 Michael Grzeschik  2014-09-29  259  		card->dev = dev;
c51da42a6346c0 Michael Grzeschik  2014-09-29  260  
8890624a4e8c2c Michael Grzeschik  2014-09-18  261  		ret = devm_led_classdev_register(&pdev->dev, &card->tx_led);
8890624a4e8c2c Michael Grzeschik  2014-09-18  262  		if (ret)
6577b9a551aedb Tong Zhang         2021-03-14  263  			goto err_free_arcdev;
8890624a4e8c2c Michael Grzeschik  2014-09-18  264  
8890624a4e8c2c Michael Grzeschik  2014-09-18  265  		ret = devm_led_classdev_register(&pdev->dev, &card->recon_led);
8890624a4e8c2c Michael Grzeschik  2014-09-18  266  		if (ret)
6577b9a551aedb Tong Zhang         2021-03-14  267  			goto err_free_arcdev;
8890624a4e8c2c Michael Grzeschik  2014-09-18  268  
c51da42a6346c0 Michael Grzeschik  2014-09-29  269  		dev_set_drvdata(&dev->dev, card);
c51da42a6346c0 Michael Grzeschik  2014-09-29  270  
c51da42a6346c0 Michael Grzeschik  2014-09-29  271  		ret = com20020_found(dev, IRQF_SHARED);
c51da42a6346c0 Michael Grzeschik  2014-09-29  272  		if (ret)
6577b9a551aedb Tong Zhang         2021-03-14  273  			goto err_free_arcdev;
^1da177e4c3f41 Linus Torvalds     2005-04-16  274  
8890624a4e8c2c Michael Grzeschik  2014-09-18  275  		devm_arcnet_led_init(dev, dev->dev_id, i);
8890624a4e8c2c Michael Grzeschik  2014-09-18  276  
c51da42a6346c0 Michael Grzeschik  2014-09-29  277  		list_add(&card->list, &priv->list_dev);
6577b9a551aedb Tong Zhang         2021-03-14  278  		continue;
^1da177e4c3f41 Linus Torvalds     2005-04-16  279  
6577b9a551aedb Tong Zhang         2021-03-14  280  err_free_arcdev:
6577b9a551aedb Tong Zhang         2021-03-14  281  		free_arcdev(dev);
6577b9a551aedb Tong Zhang         2021-03-14  282  		break;
6577b9a551aedb Tong Zhang         2021-03-14  283  	}
6577b9a551aedb Tong Zhang         2021-03-14  284  	if (ret)
c51da42a6346c0 Michael Grzeschik  2014-09-29  285  		com20020pci_remove(pdev);
c51da42a6346c0 Michael Grzeschik  2014-09-29  286  	return ret;
^1da177e4c3f41 Linus Torvalds     2005-04-16  287  }
^1da177e4c3f41 Linus Torvalds     2005-04-16  288  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
