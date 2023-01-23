Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7A1677DC0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 15:15:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6A4E81F27;
	Mon, 23 Jan 2023 14:15:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6A4E81F27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674483320;
	bh=ePvDQ9XXe00aRq4fhexbFVAK2oCEjm1X3LZBbHV8scY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iBZ/OfxL0Bzqndlq1SMn98OPCqGBt+SRzXs007tt0gfO9Z/bPZJgl1TnehzSXxhbh
	 WvRYa0Vgo9itMF6PBzgBP3dCS2oaPTrPkBfCbR64tpFrLn/ZQjnFZ7+ssn5IYV0BYm
	 f4b9uspvNr1SC2mQ0iQ+tQf4Gf3jm4g8Ev7zhBcxrWtXyVDLSsVPFpzBNkHKLJfMeE
	 zkKMC5uccExbTKRZvhu7lJjH5tUBsNnUkaOCd98XJUzZWWLXLsgpRL4t9MJFyiYUg0
	 7m9sgyGxjRb5a18LwJAHowh9YZRmOKRPcNx2UxsGD3THGM9vhsyxzoO++Squkw8rxd
	 Szu9oxnUMtXPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJBycjRK2n5A; Mon, 23 Jan 2023 14:15:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F5E981EFB;
	Mon, 23 Jan 2023 14:15:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F5E981EFB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 37EA51BF57B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D780416DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:15:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D780416DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1VvFJfCwTjkL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 14:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E8434168A
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E8434168A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:15:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="305706170"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="305706170"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 06:15:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="692167644"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="692167644"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 23 Jan 2023 06:15:09 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJxbJ-0005gW-0n;
 Mon, 23 Jan 2023 14:15:09 +0000
Date: Mon, 23 Jan 2023 22:14:29 +0800
From: kernel test robot <lkp@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <202301232259.PLN1vLGM-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674483312; x=1706019312;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=EVI4+3AA6iG3XzYduRkdkEHiXiBVMdOEvJGxLAPkLDU=;
 b=Q9o5nN2YE1LiHR3bjFnbx/DMLf1zNDM0pxS0cQVloJYiRwXflkh6MwGs
 iPckQ0h+u3Dp6eeQ0nITrAuv5Es7ydlBY+JNSd8j8MCQsgpKtBcm3v85y
 2qWgryYzmRBjCH+IhtoPK6xcw0vF8Y7qgbLgjK9WJ745lVST7trT2Agru
 EMgGwHLkKemOkfxOoD+yG6pHXT4fsntMS/aFPKPJxPhXG3EVtPedp9kvI
 V9HUvO05Pm4EoNV7wv5/jhr4ywvvBJUPvzYZRODPp832GlqsY0tb2FbAE
 B3/Q6EsEZRefv367K5IGx+jg1VJ1MH6Z+TgpcKSQCf3UtpsNWijPsdt6+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q9o5nN2Y
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 56/72]
 drivers/net/ethernet/intel/ice/ice_main.c:652:30: warning: format '%llu'
 expects argument of type 'long long unsigned int',
 but argument 4 has type 'resource_size_t' {aka 'unsigned int'}
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   65cdfcc3e172e7aa64ed4f881b053b4f6232d064
commit: 9df85f44b2d8f5a783fc6888536ed7c900b75745 [56/72] ice: Fix RDMA latency issue by allowing write-combining
config: arm-allyesconfig (https://download.01.org/0day-ci/archive/20230123/202301232259.PLN1vLGM-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=9df85f44b2d8f5a783fc6888536ed7c900b75745
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue dev-queue
        git checkout 9df85f44b2d8f5a783fc6888536ed7c900b75745
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm SHELL=/bin/bash drivers/net/ethernet/intel/ice/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/dma-mapping.h:7,
                    from include/linux/skbuff.h:31,
                    from include/net/net_namespace.h:43,
                    from include/linux/netdevice.h:38,
                    from drivers/net/ethernet/intel/ice/ice.h:12,
                    from drivers/net/ethernet/intel/ice/ice_main.c:9:
   drivers/net/ethernet/intel/ice/ice_main.c: In function 'ice_map_hw_addr':
>> drivers/net/ethernet/intel/ice/ice_main.c:652:30: warning: format '%llu' expects argument of type 'long long unsigned int', but argument 4 has type 'resource_size_t' {aka 'unsigned int'} [-Wformat=]
     652 |                 dev_err(dev, "%s: remap at offset %llu failed\n",
         |                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ^~~
   include/linux/dev_printk.h:144:56: note: in expansion of macro 'dev_fmt'
     144 |         dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                        ^~~~~~~
   drivers/net/ethernet/intel/ice/ice_main.c:652:17: note: in expansion of macro 'dev_err'
     652 |                 dev_err(dev, "%s: remap at offset %llu failed\n",
         |                 ^~~~~~~
   drivers/net/ethernet/intel/ice/ice_main.c:652:54: note: format string is defined here
     652 |                 dev_err(dev, "%s: remap at offset %llu failed\n",
         |                                                   ~~~^
         |                                                      |
         |                                                      long long unsigned int
         |                                                   %u


vim +652 drivers/net/ethernet/intel/ice/ice_main.c

   628	
   629	/**
   630	 * ice_map_hw_addr - map a region of device registers to memory
   631	 * @pdev: the PCI device
   632	 * @map: the address map structure
   633	 *
   634	 * Map the specified section of the hardware registers into memory, storing
   635	 * the memory mapped address in the provided structure.
   636	 *
   637	 * Returns 0 on success or an error code on failure.
   638	 */
   639	static int ice_map_hw_addr(struct pci_dev *pdev, struct ice_hw_addr_map *map)
   640	{
   641		struct device *dev = &pdev->dev;
   642		resource_size_t size, base;
   643		void __iomem *addr;
   644	
   645		if (WARN_ON(map->end <= map->start))
   646			return -EIO;
   647	
   648		size = map->end - map->start;
   649		base = pci_resource_start(pdev, map->bar) + map->start;
   650		addr = ioremap(base, size);
   651		if (!addr) {
 > 652			dev_err(dev, "%s: remap at offset %llu failed\n",
   653				__func__, map->start);
   654			return -EIO;
   655		}
   656	
   657		map->addr = addr;
   658	
   659		return 0;
   660	}
   661	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
