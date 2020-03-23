Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E4C18F061
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2020 08:42:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7097120464;
	Mon, 23 Mar 2020 07:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xa2yFCuTRtJh; Mon, 23 Mar 2020 07:42:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BF3722624;
	Mon, 23 Mar 2020 07:42:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1F5F1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2020 07:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BB7BF2047C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2020 07:42:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bc6t3I+NdyOw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2020 07:42:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 3DF9E20464
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2020 07:42:35 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02N7dCCY094255;
 Mon, 23 Mar 2020 07:42:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=QbeW1JnQ0r5qcN3jNsXoF3Sf/JnyhXaYND2scxdDLHU=;
 b=okdeNn9thXAZrhyJW6SBTbssX9rEgGHS5/sN2uqIkZ/3M+b+e2qgMDtZONrclrZxhWbD
 LHObki08kKwuWHRPMmG0TXGouTCCXCJLYfkUHAPXu8xsOOc7eo6s9OMpJHFZEofKpXAH
 mIhFLLT/Wxg7AAWaOxtb2hK4XY1dhxM4Me7wuKvn/zrvZDUzcppGPUg+MJipoE/sx9B5
 0MKswF5VWOHLJF7Y6t0QF5AKLZnL+hu8xBs94RWxRaI5LrVC+zUefj9sptLMmiXQ6mfx
 L0OCvllaXtumtkgGJJ+3foXhZF7hEMaRqDVpibaN4crUHk+td4K4ZhBTJNZW7HzlIqyS Xg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2ywabqw037-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Mar 2020 07:42:32 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02N7bv6a081691;
 Mon, 23 Mar 2020 07:42:32 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2ywvqqdqph-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Mar 2020 07:42:31 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02N7gVah017424;
 Mon, 23 Mar 2020 07:42:31 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 23 Mar 2020 00:42:30 -0700
Date: Mon, 23 Mar 2020 10:42:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <20200323074221.GL4650@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9568
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 bulkscore=0
 suspectscore=0 mlxlogscore=999 malwarescore=0 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003230045
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9568
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 clxscore=1011 adultscore=0 mlxscore=0 mlxlogscore=999 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003230045
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 49/49]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   a6017405fcd0cda0cd9f35b34cae92400cf9e3e3
commit: a6017405fcd0cda0cd9f35b34cae92400cf9e3e3 [49/49] igc: add support to interrupt, eeprom, registers and link self-tests

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/net/ethernet/intel/igc/igc_diag.c:161 igc_reg_test() error: uninitialized symbol 'b'.

# https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/commit/?id=a6017405fcd0cda0cd9f35b34cae92400cf9e3e3
git remote add jkirsher-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git
git remote update jkirsher-next-queue
git checkout a6017405fcd0cda0cd9f35b34cae92400cf9e3e3
vim +/b +161 drivers/net/ethernet/intel/igc/igc_diag.c

a6017405fcd0cd Vitaly Lifshits 2020-03-17   90  bool igc_reg_test(struct igc_adapter *adapter, u64 *data)
a6017405fcd0cd Vitaly Lifshits 2020-03-17   91  {
a6017405fcd0cd Vitaly Lifshits 2020-03-17   92  	struct igc_reg_test *test = reg_test;
a6017405fcd0cd Vitaly Lifshits 2020-03-17   93  	struct igc_hw *hw = &adapter->hw;
a6017405fcd0cd Vitaly Lifshits 2020-03-17   94  	u32 value, before, after;
a6017405fcd0cd Vitaly Lifshits 2020-03-17   95  	u32 i, toggle, b;
a6017405fcd0cd Vitaly Lifshits 2020-03-17   96  
a6017405fcd0cd Vitaly Lifshits 2020-03-17   97  	if (IGC_REMOVED(hw->hw_addr)) {
a6017405fcd0cd Vitaly Lifshits 2020-03-17   98  		dev_err(&adapter->pdev->dev, "Adapter removed - register test blocked\n");
a6017405fcd0cd Vitaly Lifshits 2020-03-17   99  		*data = 1;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  100  		return true;

This function returns true on failure and false on success?

a6017405fcd0cd Vitaly Lifshits 2020-03-17  101  	}
a6017405fcd0cd Vitaly Lifshits 2020-03-17  102  
a6017405fcd0cd Vitaly Lifshits 2020-03-17  103  	/* Because the status register is such a special case,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  104  	 * we handle it separately from the rest of the register
a6017405fcd0cd Vitaly Lifshits 2020-03-17  105  	 * tests.  Some bits are read-only, some toggle, and some
a6017405fcd0cd Vitaly Lifshits 2020-03-17  106  	 * are writeable.
a6017405fcd0cd Vitaly Lifshits 2020-03-17  107  	 */
a6017405fcd0cd Vitaly Lifshits 2020-03-17  108  
a6017405fcd0cd Vitaly Lifshits 2020-03-17  109  	toggle = 0x6800D3;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  110  	before = rd32(IGC_STATUS);
a6017405fcd0cd Vitaly Lifshits 2020-03-17  111  	value = before & toggle;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  112  	wr32(IGC_STATUS, toggle);
a6017405fcd0cd Vitaly Lifshits 2020-03-17  113  	after = rd32(IGC_STATUS) & toggle;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  114  	if (value != after) {
a6017405fcd0cd Vitaly Lifshits 2020-03-17  115  		dev_err(&adapter->pdev->dev,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  116  			"failed STATUS register test got: 0x%08X expected: 0x%08X\n",
a6017405fcd0cd Vitaly Lifshits 2020-03-17  117  			after, value);
a6017405fcd0cd Vitaly Lifshits 2020-03-17  118  		*data = 1;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  119  		return 1;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  120  	}
a6017405fcd0cd Vitaly Lifshits 2020-03-17  121  	/* restore previous status */
a6017405fcd0cd Vitaly Lifshits 2020-03-17  122  	wr32(IGC_STATUS, before);
a6017405fcd0cd Vitaly Lifshits 2020-03-17  123  
a6017405fcd0cd Vitaly Lifshits 2020-03-17  124  	/* Perform the remainder of the register test, looping through
a6017405fcd0cd Vitaly Lifshits 2020-03-17  125  	 * the test table until we either fail or reach the null entry.
a6017405fcd0cd Vitaly Lifshits 2020-03-17  126  	 */
a6017405fcd0cd Vitaly Lifshits 2020-03-17  127  	while (test->reg) {
a6017405fcd0cd Vitaly Lifshits 2020-03-17  128  		for (i = 0; i < test->array_len; i++) {
a6017405fcd0cd Vitaly Lifshits 2020-03-17  129  			switch (test->test_type) {
a6017405fcd0cd Vitaly Lifshits 2020-03-17  130  			case PATTERN_TEST:
a6017405fcd0cd Vitaly Lifshits 2020-03-17  131  				b = reg_pattern_test(adapter, data,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  132  						     test->reg + (i * 0x40),
a6017405fcd0cd Vitaly Lifshits 2020-03-17  133  						     test->mask,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  134  						     test->write);
a6017405fcd0cd Vitaly Lifshits 2020-03-17  135  				break;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  136  			case SET_READ_TEST:
a6017405fcd0cd Vitaly Lifshits 2020-03-17  137  				b = reg_set_and_check(adapter, data,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  138  						      test->reg + (i * 0x40),
a6017405fcd0cd Vitaly Lifshits 2020-03-17  139  						      test->mask,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  140  						      test->write);
a6017405fcd0cd Vitaly Lifshits 2020-03-17  141  				break;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  142  			case TABLE64_TEST_LO:
a6017405fcd0cd Vitaly Lifshits 2020-03-17  143  				b = reg_pattern_test(adapter, data,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  144  						     test->reg + (i * 8),
a6017405fcd0cd Vitaly Lifshits 2020-03-17  145  						     test->mask,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  146  						     test->write);
a6017405fcd0cd Vitaly Lifshits 2020-03-17  147  				break;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  148  			case TABLE64_TEST_HI:
a6017405fcd0cd Vitaly Lifshits 2020-03-17  149  				b = reg_pattern_test(adapter, data,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  150  						     test->reg + 4 + (i * 8),
a6017405fcd0cd Vitaly Lifshits 2020-03-17  151  						     test->mask,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  152  						     test->write);
a6017405fcd0cd Vitaly Lifshits 2020-03-17  153  				break;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  154  			case TABLE32_TEST:
a6017405fcd0cd Vitaly Lifshits 2020-03-17  155  				b = reg_pattern_test(adapter, data,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  156  						     test->reg + (i * 4),
a6017405fcd0cd Vitaly Lifshits 2020-03-17  157  						     test->mask,
a6017405fcd0cd Vitaly Lifshits 2020-03-17  158  						     test->write);
a6017405fcd0cd Vitaly Lifshits 2020-03-17  159  				break;

No default case.  Eventually GCC will fix its bug and start warning
about uninitialized variables again so you may as well fix it.

a6017405fcd0cd Vitaly Lifshits 2020-03-17  160  			}
a6017405fcd0cd Vitaly Lifshits 2020-03-17 @161  			if (b)
a6017405fcd0cd Vitaly Lifshits 2020-03-17  162  				return true;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  163  		}
a6017405fcd0cd Vitaly Lifshits 2020-03-17  164  		test++;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  165  	}
a6017405fcd0cd Vitaly Lifshits 2020-03-17  166  	*data = 0;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  167  	return false;
a6017405fcd0cd Vitaly Lifshits 2020-03-17  168  }

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
