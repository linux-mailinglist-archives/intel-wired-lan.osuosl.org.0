Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C0B49D17B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jan 2022 19:12:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 275D760F78;
	Wed, 26 Jan 2022 18:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yDtlQd7jAqFJ; Wed, 26 Jan 2022 18:12:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C838760F71;
	Wed, 26 Jan 2022 18:12:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 608601BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 18:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 54C54409A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 18:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tD2FJFGi-oV4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jan 2022 18:12:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D862940338
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 18:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643220732; x=1674756732;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/63UQCkOPCV3csvtYswGzS4KzAA+pga67Yf8Dwpg63A=;
 b=a5KXYMRdtVnhNjLH0mPjnw29pgdQnZArtBno2mumYpvf8AmgKQn92cum
 JtenqBqoRnbhrNoom+wReQcyARkjdCQ7G4mpm5gK868rw1WZGqcaHZqtc
 n7gRzRj0GyJ1d0qJPjlbPtyieZl30A2BvkCLMIBmOrj6C9QPyupB310Mv
 s4Dq1l4cnpLEGtmM8xE+8E7IP1ba0RU88G09EAI01oK4Z9MX2hf1IwfAf
 7cHxWY9AvOE4gJGjE9V5f2ouLqvkRIzR5iiZhbVIlrlStppS7WG6I+aQh
 Kqmvp3Nep1Y1JU/MQLK5/tijcBoZniAMaGz2nuKehXQ9VAvw7rrIk0+64 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="227284733"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="227284733"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 10:12:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="477558701"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 26 Jan 2022 10:12:09 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nCmm8-000LUb-Rp; Wed, 26 Jan 2022 18:12:08 +0000
Date: Thu, 27 Jan 2022 02:11:14 +0800
From: kernel test robot <lkp@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202201270125.z5yiy42k-lkp@intel.com>
References: <20220126145938.26500-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126145938.26500-1-mateusz.palczewski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] iavf: Stop leaking
 iavf_status as "errno" values
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>, llvm@lists.linux.dev,
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Mateusz,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]

url:    https://github.com/0day-ci/linux/commits/Mateusz-Palczewski/iavf-Fix-return-values-in-driver/20220126-230536
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git ab14f1802cfb2d7ca120bbf48e3ba6712314ffc3
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20220127/202201270125.z5yiy42k-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 2a1b7aa016c0f4b5598806205bdfbab1ea2d92c4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/d0d06ad4899a5e86feef8a2fca3f8f0bf6937767
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Mateusz-Palczewski/iavf-Fix-return-values-in-driver/20220126-230536
        git checkout d0d06ad4899a5e86feef8a2fca3f8f0bf6937767
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/net/ethernet/intel/iavf/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/iavf/iavf_main.c:2141:60: warning: variable 'err' is uninitialized when used here [-Wuninitialized]
                   dev_err(&pdev->dev, "Failed to init Admin Queue (%d)\n", err);
                                                                            ^~~
   include/linux/dev_printk.h:144:65: note: expanded from macro 'dev_err'
           dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
                                                                          ^~~~~~~~~~~
   include/linux/dev_printk.h:110:23: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                                       ^~~~~~~~~~~
   drivers/net/ethernet/intel/iavf/iavf_main.c:2115:9: note: initialize the variable 'err' to silence this warning
           int err;
                  ^
                   = 0
   1 warning generated.


vim +/err +2141 drivers/net/ethernet/intel/iavf/iavf_main.c

8afadd1cd8ba1d Brett Creeley      2021-11-29  2101  
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2102  /**
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2103   * iavf_startup - first step of driver startup
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2104   * @adapter: board private structure
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2105   *
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2106   * Function process __IAVF_STARTUP driver state.
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2107   * When success the state is changed to __IAVF_INIT_VERSION_CHECK
59756ad6948be9 Mateusz Palczewski 2021-08-19  2108   * when fails the state is changed to __IAVF_INIT_FAILED
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2109   **/
59756ad6948be9 Mateusz Palczewski 2021-08-19  2110  static void iavf_startup(struct iavf_adapter *adapter)
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2111  {
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2112  	struct pci_dev *pdev = adapter->pdev;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2113  	struct iavf_hw *hw = &adapter->hw;
d0d06ad4899a5e Mateusz Palczewski 2022-01-26  2114  	enum iavf_status status;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2115  	int err;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2116  
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2117  	WARN_ON(adapter->state != __IAVF_STARTUP);
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2118  
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2119  	/* driver loaded, probe complete */
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2120  	adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2121  	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
d0d06ad4899a5e Mateusz Palczewski 2022-01-26  2122  	status = iavf_set_mac_type(hw);
d0d06ad4899a5e Mateusz Palczewski 2022-01-26  2123  	if (status) {
d0d06ad4899a5e Mateusz Palczewski 2022-01-26  2124  		dev_err(&pdev->dev, "Failed to set MAC type (%d)\n", status);
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2125  		goto err;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2126  	}
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2127  
d0d06ad4899a5e Mateusz Palczewski 2022-01-26  2128  	status = iavf_check_reset_complete(hw);
d0d06ad4899a5e Mateusz Palczewski 2022-01-26  2129  	if (status) {
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2130  		dev_info(&pdev->dev, "Device is still in reset (%d), retrying\n",
d0d06ad4899a5e Mateusz Palczewski 2022-01-26  2131  			 status);
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2132  		goto err;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2133  	}
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2134  	hw->aq.num_arq_entries = IAVF_AQ_LEN;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2135  	hw->aq.num_asq_entries = IAVF_AQ_LEN;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2136  	hw->aq.arq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2137  	hw->aq.asq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2138  
d0d06ad4899a5e Mateusz Palczewski 2022-01-26  2139  	status = iavf_init_adminq(hw);
d0d06ad4899a5e Mateusz Palczewski 2022-01-26  2140  	if (status) {
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14 @2141  		dev_err(&pdev->dev, "Failed to init Admin Queue (%d)\n", err);
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2142  		goto err;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2143  	}
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2144  	err = iavf_send_api_ver(adapter);
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2145  	if (err) {
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2146  		dev_err(&pdev->dev, "Unable to send to PF (%d)\n", err);
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2147  		iavf_shutdown_adminq(hw);
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2148  		goto err;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2149  	}
45eebd62999d37 Mateusz Palczewski 2021-08-19  2150  	iavf_change_state(adapter, __IAVF_INIT_VERSION_CHECK);
59756ad6948be9 Mateusz Palczewski 2021-08-19  2151  	return;
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2152  err:
59756ad6948be9 Mateusz Palczewski 2021-08-19  2153  	iavf_change_state(adapter, __IAVF_INIT_FAILED);
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2154  }
b66c7bc1cd4d72 Jakub Pawlak       2019-05-14  2155  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
