Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64289FBFDC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 06:51:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D46B89409;
	Thu, 14 Nov 2019 05:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id znCf-JGAmZDc; Thu, 14 Nov 2019 05:51:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 02084884A0;
	Thu, 14 Nov 2019 05:51:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B16061BF86D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 05:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9B26A8587D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 05:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Afrl1Ib-H30p for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 05:51:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 75ED781B5E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 05:51:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 21:51:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="235544346"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga002.fm.intel.com with ESMTP; 13 Nov 2019 21:51:24 -0800
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20191113154230.8247-1-sasha.neftin@intel.com>
 <01195836c1485d6632294707838af6d6e07b2546.camel@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <332b1881-ff11-e70e-9b2e-0e027e6cacb0@intel.com>
Date: Thu, 14 Nov 2019 07:51:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <01195836c1485d6632294707838af6d6e07b2546.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3] igc: Add legacy power management
 support
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/14/2019 01:18, Jeff Kirsher wrote:
> On Wed, 2019-11-13 at 17:42 +0200, Sasha Neftin wrote:
>> Add suspend, resume, runtime_suspend, runtime_resume and
>> runtime_idle callbacks implementation.
>>
>> v1 -> v2:
>> Fix christmas tree (Jeff's suggestion)
>> Add CONFIG_PM pre-compiler flag
>>
>> v2 -> v3
>> Fix christmas tree (Jeff's suggestion)
>>
>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc.h         |   2 +
>>   drivers/net/ethernet/intel/igc/igc_defines.h |  31 ++++
>>   drivers/net/ethernet/intel/igc/igc_main.c    | 204
>> +++++++++++++++++++++++++++
>>   drivers/net/ethernet/intel/igc/igc_regs.h    |   9 ++
>>   4 files changed, 246 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h
>> b/drivers/net/ethernet/intel/igc/igc.h
>> index 0868677d43ed..612fe9ec81a4 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -370,6 +370,8 @@ struct igc_adapter {
>>   	struct timer_list dma_err_timer;
>>   	struct timer_list phy_info_timer;
>>   
>> +	u32 wol;
>> +	u32 en_mng_pt;
>>   	u16 link_speed;
>>   	u16 link_duplex;
>>   
>> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h
>> b/drivers/net/ethernet/intel/igc/igc_defines.h
>> index f3788f0b95b4..50dffd5db606 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
>> @@ -10,6 +10,37 @@
>>   
>>   #define IGC_CTRL_EXT_DRV_LOAD	0x10000000 /* Drv loaded bit for FW
>> */
>>   
>> +/* Definitions for power management and wakeup registers */
>> +/* Wake Up Control */
>> +#define IGC_WUC_PME_EN	0x00000002 /* PME Enable */
>> +
>> +/* Wake Up Filter Control */
>> +#define IGC_WUFC_LNKC	0x00000001 /* Link Status Change Wakeup
>> Enable */
>> +#define IGC_WUFC_MC	0x00000008 /* Directed Multicast Wakeup Enable */
>> +
>> +#define IGC_CTRL_ADVD3WUC	0x00100000  /* D3 WUC */
>> +
>> +/* Wake Up Status */
>> +#define IGC_WUS_EX	0x00000004 /* Directed Exact */
>> +#define IGC_WUS_ARPD	0x00000020 /* Directed ARP Request */
>> +#define IGC_WUS_IPV4	0x00000040 /* Directed IPv4 */
>> +#define IGC_WUS_IPV6	0x00000080 /* Directed IPv6 */
>> +#define IGC_WUS_NSD	0x00000400 /* Directed IPv6 Neighbor Solicitation
>> */
>> +
>> +/* Packet types that are enabled for wake packet delivery */
>> +#define WAKE_PKT_WUS ( \
>> +	IGC_WUS_EX   | \
>> +	IGC_WUS_ARPD | \
>> +	IGC_WUS_IPV4 | \
>> +	IGC_WUS_IPV6 | \
>> +	IGC_WUS_NSD)
>> +
>> +/* Wake Up Packet Length */
>> +#define IGC_WUPL_MASK	0x00000FFF
>> +
>> +/* Wake Up Packet Memory stores the first 128 bytes of the wake up
>> packet */
>> +#define IGC_WUPM_BYTES	128
>> +
>>   /* Physical Func Reset Done Indication */
>>   #define IGC_CTRL_EXT_LINK_MODE_MASK	0x00C00000
>>   
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 833770fd16d2..0b3d282802d7 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -8,6 +8,7 @@
>>   #include <linux/tcp.h>
>>   #include <linux/udp.h>
>>   #include <linux/ip.h>
>> +#include <linux/pm_runtime.h>
>>   
>>   #include <net/ipv6.h>
>>   
>> @@ -4574,11 +4575,214 @@ static void igc_remove(struct pci_dev *pdev)
>>   	pci_disable_device(pdev);
>>   }
>>   
>> +#ifdef CONFIG_PM
>> +static int __igc_shutdown(struct pci_dev *pdev, bool *enable_wake,
>> +			  bool runtime)
>> +{
>> +	struct net_device *netdev = pci_get_drvdata(pdev);
>> +	struct igc_adapter *adapter = netdev_priv(netdev);
>> +	u32 wufc = runtime ? IGC_WUFC_LNKC : adapter->wol;
>> +	struct igc_hw *hw = &adapter->hw;
>> +	u32 ctrl, rctl, status;
>> +	bool wake;
>> +
>> +	rtnl_lock();
>> +	netif_device_detach(netdev);
>> +
>> +	if (netif_running(netdev))
>> +		__igc_close(netdev, true);
>> +
>> +	igc_clear_interrupt_scheme(adapter);
>> +	rtnl_unlock();
>> +
>> +	status = rd32(IGC_STATUS);
>> +	if (status & IGC_STATUS_LU)
>> +		wufc &= ~IGC_WUFC_LNKC;
>> +
>> +	if (wufc) {
>> +		igc_setup_rctl(adapter);
>> +		igc_set_rx_mode(netdev);
>> +
>> +		/* turn on all-multi mode if wake on multicast is enabled
>> */
>> +		if (wufc & IGC_WUFC_MC) {
>> +			rctl = rd32(IGC_RCTL);
>> +			rctl |= IGC_RCTL_MPE;
>> +			wr32(IGC_RCTL, rctl);
>> +		}
>> +
>> +		ctrl = rd32(IGC_CTRL);
>> +		ctrl |= IGC_CTRL_ADVD3WUC;
>> +		wr32(IGC_CTRL, ctrl);
>> +
>> +		/* Allow time for pending master requests to run */
>> +		igc_disable_pcie_master(hw);
>> +
>> +		wr32(IGC_WUC, IGC_WUC_PME_EN);
>> +		wr32(IGC_WUFC, wufc);
>> +	} else {
>> +		wr32(IGC_WUC, 0);
>> +		wr32(IGC_WUFC, 0);
>> +	}
>> +
>> +	wake = wufc || adapter->en_mng_pt;
>> +	if (!wake)
>> +		igc_power_down_link(adapter);
>> +	else
>> +		igc_power_up_link(adapter);
>> +
>> +	if (enable_wake)
>> +		*enable_wake = wake;
>> +
>> +	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
>> +	 * would have already happened in close and is redundant.
>> +	 */
>> +	igc_release_hw_control(adapter);
>> +
>> +	pci_disable_device(pdev);
>> +
>> +	return 0;
>> +}
>> +
>> +static int __maybe_unused igc_runtime_suspend(struct device *dev)
>> +{
>> +	return __igc_shutdown(to_pci_dev(dev), NULL, 1);
>> +}
>> +
>> +static void igc_deliver_wake_packet(struct net_device *netdev)
>> +{
>> +	struct igc_adapter *adapter = netdev_priv(netdev);
>> +	struct igc_hw *hw = &adapter->hw;
>> +	struct sk_buff *skb;
>> +	u32 wupl;
>> +
>> +	wupl = rd32(IGC_WUPL) & IGC_WUPL_MASK;
>> +
>> +	/* WUPM stores only the first 128 bytes of the wake packet.
>> +	 * Read the packet only if we have the whole thing.
>> +	 */
>> +	if (wupl == 0 || wupl > IGC_WUPM_BYTES)
>> +		return;
>> +
>> +	skb = netdev_alloc_skb_ip_align(netdev, IGC_WUPM_BYTES);
>> +	if (!skb)
>> +		return;
>> +
>> +	skb_put(skb, wupl);
>> +
>> +	/* Ensure reads are 32-bit aligned */
>> +	wupl = roundup(wupl, 4);
>> +
>> +	memcpy_fromio(skb->data, hw->hw_addr + IGC_WUPM_REG(0), wupl);
>> +
>> +	skb->protocol = eth_type_trans(skb, netdev);
>> +	netif_rx(skb);
>> +}
>> +
>> +static int __maybe_unused igc_resume(struct device *dev)
>> +{
>> +	struct pci_dev *pdev = to_pci_dev(dev);
>> +	struct net_device *netdev = pci_get_drvdata(pdev);
>> +	struct igc_adapter *adapter = netdev_priv(netdev);
>> +	struct igc_hw *hw = &adapter->hw;
>> +	u32 err, val;
>> +
>> +	pci_set_power_state(pdev, PCI_D0);
>> +	pci_restore_state(pdev);
>> +	pci_save_state(pdev);
>> +
>> +	if (!pci_device_is_present(pdev))
>> +		return -ENODEV;
>> +	err = pci_enable_device_mem(pdev);
>> +	if (err) {
>> +		dev_err(&pdev->dev,
>> +			"igc: Cannot enable PCI device from suspend\n");
>> +		return err;
>> +	}
>> +	pci_set_master(pdev);
>> +
>> +	pci_enable_wake(pdev, PCI_D3hot, 0);
>> +	pci_enable_wake(pdev, PCI_D3cold, 0);
>> +
>> +	if (igc_init_interrupt_scheme(adapter, true)) {
>> +		dev_err(&pdev->dev, "Unable to allocate memory for
>> queues\n");
>> +		return -ENOMEM;
>> +	}
>> +
>> +	igc_reset(adapter);
>> +
>> +	/* let the f/w know that the h/w is now under the control of the
>> +	 * driver.
>> +	 */
>> +	igc_get_hw_control(adapter);
>> +
>> +	val = rd32(IGC_WUS);
>> +	if (val & WAKE_PKT_WUS)
>> +		igc_deliver_wake_packet(netdev);
>> +
>> +	wr32(IGC_WUS, ~0);
>> +
>> +	rtnl_lock();
>> +	if (!err && netif_running(netdev))
>> +		err = __igc_open(netdev, true);
>> +
>> +	if (!err)
>> +		netif_device_attach(netdev);
>> +	rtnl_unlock();
>> +
>> +	return err;
>> +}
>> +
>> +static int __maybe_unused igc_runtime_resume(struct device *dev)
>> +{
>> +	return igc_resume(dev);
>> +}
>> +
>> +static int __maybe_unused igc_suspend(struct device *dev)
>> +{
>> +	return __igc_shutdown(to_pci_dev(dev), NULL, 0);
>> +}
>> +
>> +static int __maybe_unused igc_runtime_idle(struct device *dev)
>> +{
>> +	struct net_device *netdev = dev_get_drvdata(dev);
>> +	struct igc_adapter *adapter = netdev_priv(netdev);
>> +
>> +	if (!igc_has_link(adapter))
>> +		pm_schedule_suspend(dev, MSEC_PER_SEC * 5);
>> +
>> +	return -EBUSY;
>> +}
>> +#endif /* CONFIG_PM */
>> +
>> +static void igc_shutdown(struct pci_dev *pdev)
>> +{
>> +	bool wake;
>> +
>> +	__igc_shutdown(pdev, &wake, 0);
> 
> The above line will be undefined when CONFIG_PM is not defined.  I see the
> 0-day testing found the same issue.
> 
I will fix an submit v4.
>> +
>> +	if (system_state == SYSTEM_POWER_OFF) {
>> +		pci_wake_from_d3(pdev, wake);
>> +		pci_set_power_state(pdev, PCI_D3hot);
>> +	}
>> +}
>> +
>> +#ifdef CONFIG_PM
>> +static const struct dev_pm_ops igc_pm_ops = {
>> +	SET_SYSTEM_SLEEP_PM_OPS(igc_suspend, igc_resume)
>> +	SET_RUNTIME_PM_OPS(igc_runtime_suspend, igc_runtime_resume,
>> +			   igc_runtime_idle)
>> +};
>> +#endif
>> +
>>   static struct pci_driver igc_driver = {
>>   	.name     = igc_driver_name,
>>   	.id_table = igc_pci_tbl,
>>   	.probe    = igc_probe,
>>   	.remove   = igc_remove,
>> +#ifdef CONFIG_PM
>> +	.driver.pm = &igc_pm_ops,
>> +#endif
>> +	.shutdown = igc_shutdown,
>>   };
>>   
>>   void igc_set_flag_queue_pairs(struct igc_adapter *adapter,
>> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h
>> b/drivers/net/ethernet/intel/igc/igc_regs.h
>> index 50d7c04dccf5..93a9139f08c5 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
>> @@ -215,6 +215,15 @@
>>   /* Shadow Ram Write Register - RW */
>>   #define IGC_SRWR	0x12018
>>   
>> +/* Wake Up registers */
>> +#define IGC_WUC		0x05800  /* Wakeup Control - RW */
>> +#define IGC_WUFC	0x05808  /* Wakeup Filter Control - RW */
>> +#define IGC_WUS		0x05810  /* Wakeup Status - R/W1C */
>> +#define IGC_WUPL	0x05900  /* Wakeup Packet Length - RW */
>> +
>> +/* Wake Up packet memory */
>> +#define IGC_WUPM_REG(_i)	(0x05A00 + ((_i) * 4))
>> +
>>   /* forward declaration */
>>   struct igc_hw;
>>   u32 igc_rd32(struct igc_hw *hw, u32 reg);
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
