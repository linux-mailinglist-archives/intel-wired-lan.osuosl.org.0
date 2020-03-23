Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEE018F28F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2020 11:19:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7873D204DD;
	Mon, 23 Mar 2020 10:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nva1KrRAZ0hD; Mon, 23 Mar 2020 10:19:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EB90C2284A;
	Mon, 23 Mar 2020 10:19:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5641BF375
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2020 10:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92B7022843
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2020 10:19:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9rdTrHNIV49e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2020 10:19:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E5C5204DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2020 10:19:52 +0000 (UTC)
IronPort-SDR: 4DKt1k3cjmD/t1CgYm03hJhmU+FvN0O0c4N2OBm3oIbNqI8zNTmfXMz524TNffQzf4U4MWmX+p
 LfQvsqNzmZEQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 03:19:49 -0700
IronPort-SDR: ohQOcnThlXvNYhWARAGhXaiJ+md5+BHRWUreiQnwlJkwfLAIeap+7O7IRfGYhJiLF1ljJ8uE7m
 SbaT6LHHPd2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="392867018"
Received: from vlifsht-mobl.ger.corp.intel.com (HELO [10.214.199.244])
 ([10.214.199.244])
 by orsmga004.jf.intel.com with ESMTP; 23 Mar 2020 03:19:47 -0700
To: Dan Carpenter <dan.carpenter@oracle.com>, kbuild@lists.01.org
References: <20200323074221.GL4650@kadam>
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <72aad00c-fd43-38e2-08e6-ad7d10c83d6e@intel.com>
Date: Mon, 23 Mar 2020 12:19:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200323074221.GL4650@kadam>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 49/49]
 drivers/net/ethernet/intel/igc/igc_diag.c:161 igc_reg_test() error:
 uninitialized symbol 'b'.
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Dan,

On 3/23/2020 09:42, Dan Carpenter wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
> head:   a6017405fcd0cda0cd9f35b34cae92400cf9e3e3
> commit: a6017405fcd0cda0cd9f35b34cae92400cf9e3e3 [49/49] igc: add support to interrupt, eeprom, registers and link self-tests
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> smatch warnings:
> drivers/net/ethernet/intel/igc/igc_diag.c:161 igc_reg_test() error: uninitialized symbol 'b'.
> 
> # https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/commit/?id=a6017405fcd0cda0cd9f35b34cae92400cf9e3e3
> git remote add jkirsher-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git
> git remote update jkirsher-next-queue
> git checkout a6017405fcd0cda0cd9f35b34cae92400cf9e3e3
> vim +/b +161 drivers/net/ethernet/intel/igc/igc_diag.c
> 
> a6017405fcd0cd Vitaly Lifshits 2020-03-17   90  bool igc_reg_test(struct igc_adapter *adapter, u64 *data)
> a6017405fcd0cd Vitaly Lifshits 2020-03-17   91  {
> a6017405fcd0cd Vitaly Lifshits 2020-03-17   92  	struct igc_reg_test *test = reg_test;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17   93  	struct igc_hw *hw = &adapter->hw;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17   94  	u32 value, before, after;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17   95  	u32 i, toggle, b;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17   96
> a6017405fcd0cd Vitaly Lifshits 2020-03-17   97  	if (IGC_REMOVED(hw->hw_addr)) {
> a6017405fcd0cd Vitaly Lifshits 2020-03-17   98  		dev_err(&adapter->pdev->dev, "Adapter removed - register test blocked\n");
> a6017405fcd0cd Vitaly Lifshits 2020-03-17   99  		*data = 1;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  100  		return true;
> 
> This function returns true on failure and false on success?
Yes, since this is what needed from ethtool self-test.
1 means fail and 0 means pass
> 
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  101  	}
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  102
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  103  	/* Because the status register is such a special case,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  104  	 * we handle it separately from the rest of the register
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  105  	 * tests.  Some bits are read-only, some toggle, and some
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  106  	 * are writeable.
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  107  	 */
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  108
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  109  	toggle = 0x6800D3;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  110  	before = rd32(IGC_STATUS);
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  111  	value = before & toggle;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  112  	wr32(IGC_STATUS, toggle);
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  113  	after = rd32(IGC_STATUS) & toggle;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  114  	if (value != after) {
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  115  		dev_err(&adapter->pdev->dev,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  116  			"failed STATUS register test got: 0x%08X expected: 0x%08X\n",
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  117  			after, value);
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  118  		*data = 1;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  119  		return 1;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  120  	}
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  121  	/* restore previous status */
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  122  	wr32(IGC_STATUS, before);
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  123
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  124  	/* Perform the remainder of the register test, looping through
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  125  	 * the test table until we either fail or reach the null entry.
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  126  	 */
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  127  	while (test->reg) {
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  128  		for (i = 0; i < test->array_len; i++) {
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  129  			switch (test->test_type) {
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  130  			case PATTERN_TEST:
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  131  				b = reg_pattern_test(adapter, data,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  132  						     test->reg + (i * 0x40),
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  133  						     test->mask,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  134  						     test->write);
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  135  				break;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  136  			case SET_READ_TEST:
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  137  				b = reg_set_and_check(adapter, data,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  138  						      test->reg + (i * 0x40),
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  139  						      test->mask,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  140  						      test->write);
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  141  				break;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  142  			case TABLE64_TEST_LO:
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  143  				b = reg_pattern_test(adapter, data,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  144  						     test->reg + (i * 8),
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  145  						     test->mask,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  146  						     test->write);
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  147  				break;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  148  			case TABLE64_TEST_HI:
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  149  				b = reg_pattern_test(adapter, data,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  150  						     test->reg + 4 + (i * 8),
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  151  						     test->mask,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  152  						     test->write);
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  153  				break;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  154  			case TABLE32_TEST:
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  155  				b = reg_pattern_test(adapter, data,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  156  						     test->reg + (i * 4),
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  157  						     test->mask,
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  158  						     test->write);
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  159  				break;
> 
> No default case.  Eventually GCC will fix its bug and start warning
> about uninitialized variables again so you may as well fix it.
> 
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  160  			}
> a6017405fcd0cd Vitaly Lifshits 2020-03-17 @161  			if (b)
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  162  				return true;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  163  		}
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  164  		test++;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  165  	}
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  166  	*data = 0;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  167  	return false;
> a6017405fcd0cd Vitaly Lifshits 2020-03-17  168  }
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

First of all thank you for all your comments.
Yesterday I send V3 to my patch, when it will be added to dev-queue I'll 
gather more comments and add your fixes as well to V4.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
