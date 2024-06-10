Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E689E901B79
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 08:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EFB560752;
	Mon, 10 Jun 2024 06:56:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kqUXD2_qoIDe; Mon, 10 Jun 2024 06:56:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E5FD606F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718002573;
	bh=f+DEeNwYvarlGL+2VQETOiIDJjXFMqxVeGOpebNPaYY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NydUFZX8Y3CRhn9ehIpR0GIyAtuIS0Wnp8e/ZFTcXs9mF6cOKLUWi7axsbsR5lkFa
	 vh1E0bNriEDdzdyQfLa7Bfs0NZsrW6b6wjt7nXq87M83eO9XIhA8OgpD4uCElzklP6
	 nPFFNoKzbVP6+ZoqpUPZKwZe4fdZprqB0FNkLfnq1G6/L/9UBi2V5uN7CtU+4Qe7x5
	 7gXfJd9wmFL1OAWkEqZeS8VKxneExYTmYtfvfAdLt7SxXggz9BBlWYPNLZTC3b+GGI
	 xSHqUS+YZEhJXKDfjq37HYXySiOtwE/MbcsjL7RdBFLu3ZA7bZQwkFO/TINB9BgYLm
	 2qQN9Tpxk9mYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E5FD606F0;
	Mon, 10 Jun 2024 06:56:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 157061BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 06:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 016C5834F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 06:56:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qtT3dBcLFLL4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 06:56:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CE7948347D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE7948347D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE7948347D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 06:56:06 +0000 (UTC)
X-CSE-ConnectionGUID: ac6AFKnXQSK4beBQCvGTuQ==
X-CSE-MsgGUID: zLq3xV0jTheYCtl3VbPAGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="37173141"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="37173141"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2024 23:56:05 -0700
X-CSE-ConnectionGUID: e8ykSEwdS3G3DA5FIAt9wA==
X-CSE-MsgGUID: /5hJAPHkQaCvwzCCQyfC/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="76428104"
Received: from lkp-server01.sh.intel.com (HELO 8967fbab76b3) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 09 Jun 2024 23:56:02 -0700
Received: from kbuild by 8967fbab76b3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sGYwh-0001vE-2E;
 Mon, 10 Jun 2024 06:55:59 +0000
Date: Mon, 10 Jun 2024 14:55:15 +0800
From: kernel test robot <lkp@intel.com>
To: Richard chien <m8809301@gmail.com>, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Message-ID: <202406101404.oWWqbJmG-lkp@intel.com>
References: <20240609081526.5621-1-richard.chien@hpe.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240609081526.5621-1-richard.chien@hpe.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718002568; x=1749538568;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9x5lfg5IbS2UuO0/g8a59A4OC0SvPJLLx6ic7z+Xr14=;
 b=GzR8ETL7Q8NLmEZkRF+ohuL9jqHN4irD2p5g8fvPnpV5Xvy3y2MbFhaa
 BeJwLrwTM+cLOA5uu0NE/KxZ521GM+ALtCoogaQx9nA59ntaChbt0/P2o
 idwGX08hh1J0j973oNGnt6lOg6ZXFLXFrGhDxC93Con+HxkFjdATFPiNN
 Ha/LEVYeyQg+J7KbjudwJ3iMNmtlWPxuZzeu5oKnbWv/2pkP3dbGB9Tnx
 lWqCAFQwX32aNyxP+zVN0HScTZa+xCcnzCqJybSMkjQMTIf2axWn0B5L6
 ygWzPwvkIV4NxP6twmnWWZiKekFb5Kwjmdkqm9ZDlNzQjzVLicYu/kHGB
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GzR8ETL7
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add support for firmware update
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, oe-kbuild-all@lists.linux.dev,
 anthony.l.nguyen@intel.com, Richard chien <richard.chien@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Richard,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]
[also build test WARNING on tnguy-net-queue/dev-queue linus/master v6.10-rc3 next-20240607]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Richard-chien/igb-Add-support-for-firmware-update/20240609-162047
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20240609081526.5621-1-richard.chien%40hpe.com
patch subject: [PATCH] igb: Add support for firmware update
config: alpha-randconfig-r112-20240610 (https://download.01.org/0day-ci/archive/20240610/202406101404.oWWqbJmG-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce: (https://download.01.org/0day-ci/archive/20240610/202406101404.oWWqbJmG-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406101404.oWWqbJmG-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/net/ethernet/intel/igb/igb_ethtool.c:923:34: sparse: sparse: cast to restricted __le16
   drivers/net/ethernet/intel/igb/igb_ethtool.c: note: in included file (through include/linux/mmzone.h, include/linux/gfp.h, include/linux/stackdepot.h, ...):
   include/linux/page-flags.h:240:46: sparse: sparse: self-comparison always evaluates to false
   include/linux/page-flags.h:240:46: sparse: sparse: self-comparison always evaluates to false

vim +923 drivers/net/ethernet/intel/igb/igb_ethtool.c

   874	
   875	static int igb_get_eeprom(struct net_device *netdev,
   876	                          struct ethtool_eeprom *eeprom, u8 *bytes)
   877	{
   878	        struct igb_adapter *adapter = netdev_priv(netdev);
   879	        struct e1000_hw *hw = &adapter->hw;
   880	        u16 *eeprom_buff;
   881	        int first_word, last_word;
   882	        int ret_val = 0;
   883	        struct e1000_nvm_access *nvm;
   884	        u32 magic;
   885	        u16 i;
   886	
   887	        if (eeprom->len == 0)
   888	                return -EINVAL;
   889	
   890	        magic = hw->vendor_id | (hw->device_id << 16);
   891	        if (eeprom->magic && eeprom->magic != magic) {
   892	                nvm = (struct e1000_nvm_access *)eeprom;
   893	                ret_val = igb_nvmupd_command(hw, nvm, bytes);
   894	                return ret_val;
   895	        }
   896	          
   897	        /* normal ethtool get_eeprom support */
   898	        eeprom->magic = hw->vendor_id | (hw->device_id << 16);
   899	
   900	        first_word = eeprom->offset >> 1;
   901	        last_word = (eeprom->offset + eeprom->len - 1) >> 1;
   902	
   903	        eeprom_buff = kmalloc(sizeof(u16) *
   904	                        (last_word - first_word + 1), GFP_KERNEL);
   905	        if (!eeprom_buff)
   906	                return -ENOMEM;
   907	
   908	        if (hw->nvm.type == e1000_nvm_eeprom_spi)
   909	                ret_val = e1000_read_nvm(hw, first_word,
   910	                                         last_word - first_word + 1,
   911	                                         eeprom_buff);
   912	        else {
   913	                for (i = 0; i < last_word - first_word + 1; i++) {
   914	                        ret_val = e1000_read_nvm(hw, first_word + i, 1,
   915	                                                 &eeprom_buff[i]);
   916	                        if (ret_val)
   917	                                break;
   918	                }
   919	        }
   920	
   921	        /* Device's eeprom is always little-endian, word addressable */
   922	        for (i = 0; i < last_word - first_word + 1; i++)
 > 923	                eeprom_buff[i] = le16_to_cpu(eeprom_buff[i]);
   924	
   925	        memcpy(bytes, (u8 *)eeprom_buff + (eeprom->offset & 1),
   926	                        eeprom->len);
   927	        kfree(eeprom_buff);
   928	
   929	        return ret_val;
   930	}
   931	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
