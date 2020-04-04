Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C6A19E292
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Apr 2020 05:46:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 66F788713E;
	Sat,  4 Apr 2020 03:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Jl4vTQMXtTE; Sat,  4 Apr 2020 03:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7BD48712F;
	Sat,  4 Apr 2020 03:46:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1439D1BF429
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2020 03:46:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 01D822039B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2020 03:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ogm8mrGo9BJY for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Apr 2020 03:46:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 63B6620397
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2020 03:46:33 +0000 (UTC)
IronPort-SDR: 9IQA4i/3Hz3TjxN2R8oHGUL/qplzEKDAD/AOgokMZeL+ZebZsJlFKx4i6y0w47iXlrQJggPgty
 XrcGl27f5Rcg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 20:46:32 -0700
IronPort-SDR: 6Ze+11vohdTKKTZUSf8f0RtjGTa2QlW8RTVTn6OlMFNjfgmF1/N/3GezubTFMmpzMladVvVtrT
 53mO5N2+HXow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,342,1580803200"; d="scan'208";a="268550862"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 03 Apr 2020 20:46:31 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jKZlO-000CMD-IA; Sat, 04 Apr 2020 11:46:30 +0800
Date: Sat, 4 Apr 2020 11:46:03 +0800
From: kbuild test robot <lkp@intel.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <202004041100.9b0fDR0x%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 68/69]
 drivers/net/ethernet/intel/igc/igc_main.c:5164:6: warning: Condition '!err'
 is always true [knownConditionTrueFalse]
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
head:   a7dc1908e52f3b08664e61b87542d17646f1781d
commit: 426d53dac2727acb4fa5c51f4b1e6f703e10a940 [68/69] igc: remove IGC_REMOVED function

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

   drivers/net/ethernet/intel/igc/igc_main.c:2192:23: warning: The scope of the variable 'entry' can be reduced. [variableScope]
    struct igc_mac_addr *entry;
                         ^
   drivers/net/ethernet/intel/igc/igc_main.c:2215:23: warning: The scope of the variable 'entry' can be reduced. [variableScope]
    struct igc_mac_addr *entry;
                         ^
   drivers/net/ethernet/intel/igc/igc_main.c:1569:14: warning: 'va' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    prefetch(va + L1_CACHE_BYTES);
                ^
   drivers/net/ethernet/intel/igc/igc_main.c:1608:14: warning: 'va' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    prefetch(va + L1_CACHE_BYTES);
                ^
   drivers/net/ethernet/intel/igc/igc_main.c:1618:6: warning: 'va' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
     va += IGC_TS_HDR_LEN;
        ^
   drivers/net/ethernet/intel/igc/igc_main.c:1634:9: warning: 'va' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
       (va + headlen) - page_address(rx_buffer->page),
           ^
>> drivers/net/ethernet/intel/igc/igc_main.c:5164:6: warning: Condition '!err' is always true [knownConditionTrueFalse]
    if (!err && netif_running(netdev))
        ^
>> drivers/net/ethernet/intel/igc/igc_main.c:5136:6: note: Assuming that condition 'err' is not redundant
    if (err) {
        ^
>> drivers/net/ethernet/intel/igc/igc_main.c:5164:6: note: Condition '!err' is always true
    if (!err && netif_running(netdev))
        ^

vim +5164 drivers/net/ethernet/intel/igc/igc_main.c

9513d2a5dc7f3f Sasha Neftin 2019-11-14  5120  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5121  static int __maybe_unused igc_resume(struct device *dev)
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5122  {
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5123  	struct pci_dev *pdev = to_pci_dev(dev);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5124  	struct net_device *netdev = pci_get_drvdata(pdev);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5125  	struct igc_adapter *adapter = netdev_priv(netdev);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5126  	struct igc_hw *hw = &adapter->hw;
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5127  	u32 err, val;
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5128  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5129  	pci_set_power_state(pdev, PCI_D0);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5130  	pci_restore_state(pdev);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5131  	pci_save_state(pdev);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5132  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5133  	if (!pci_device_is_present(pdev))
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5134  		return -ENODEV;
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5135  	err = pci_enable_device_mem(pdev);
9513d2a5dc7f3f Sasha Neftin 2019-11-14 @5136  	if (err) {
82200edc4daccf Andre Guedes 2020-03-30  5137  		netdev_err(netdev, "Cannot enable PCI device from suspend");
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5138  		return err;
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5139  	}
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5140  	pci_set_master(pdev);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5141  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5142  	pci_enable_wake(pdev, PCI_D3hot, 0);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5143  	pci_enable_wake(pdev, PCI_D3cold, 0);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5144  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5145  	if (igc_init_interrupt_scheme(adapter, true)) {
82200edc4daccf Andre Guedes 2020-03-30  5146  		netdev_err(netdev, "Unable to allocate memory for queues");
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5147  		return -ENOMEM;
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5148  	}
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5149  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5150  	igc_reset(adapter);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5151  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5152  	/* let the f/w know that the h/w is now under the control of the
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5153  	 * driver.
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5154  	 */
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5155  	igc_get_hw_control(adapter);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5156  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5157  	val = rd32(IGC_WUS);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5158  	if (val & WAKE_PKT_WUS)
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5159  		igc_deliver_wake_packet(netdev);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5160  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5161  	wr32(IGC_WUS, ~0);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5162  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5163  	rtnl_lock();
9513d2a5dc7f3f Sasha Neftin 2019-11-14 @5164  	if (!err && netif_running(netdev))
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5165  		err = __igc_open(netdev, true);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5166  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5167  	if (!err)
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5168  		netif_device_attach(netdev);
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5169  	rtnl_unlock();
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5170  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5171  	return err;
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5172  }
9513d2a5dc7f3f Sasha Neftin 2019-11-14  5173  

:::::: The code at line 5164 was first introduced by commit
:::::: 9513d2a5dc7f3f2c037bfd2ea35264cc783b954e igc: Add legacy power management support

:::::: TO: Sasha Neftin <sasha.neftin@intel.com>
:::::: CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
