Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5586F466CF5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 23:34:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73FBD4034D;
	Thu,  2 Dec 2021 22:34:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vuaibUPPJCkh; Thu,  2 Dec 2021 22:34:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7C4740179;
	Thu,  2 Dec 2021 22:34:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A7001BF475
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 22:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 883AE41D8D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 22:34:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9C1XeUBguI2L for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 22:34:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9628B41D59
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 22:34:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="237083875"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="237083875"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 14:34:21 -0800
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="746314689"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.10])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 14:34:21 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Stefan Dietrich <roots@gmx.de>
In-Reply-To: <5a4b31d43d9bf32e518188f3ef84c433df3a18b1.camel@gmx.de>
References: <87r1awtdx3.fsf@intel.com>
 <20211201185731.236130-1-vinicius.gomes@intel.com>
 <5a4b31d43d9bf32e518188f3ef84c433df3a18b1.camel@gmx.de>
Date: Thu, 02 Dec 2021 14:34:21 -0800
Message-ID: <87o85yljpu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igc: Avoid possible deadlock during
 suspend/resume
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
Cc: kuba@kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, greg@kroah.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Stefan,

Stefan Dietrich <roots@gmx.de> writes:

> Hi Vinicius,
>
> thanks for the patch - unfortunately it did not solve the issue and I
> am still getting reboots/lockups.
>

Thanks for the test. We learned something, not a lot, but something: the
problem you are facing is PTM related and it's not the same bug as that
PM deadlock.

I am still trying to understand what's going on.

Are you able to send me the 'dmesg' output for the two kernel configs
(CONFIG_PCIE_PTM enabled and disabled)? (no need to bring the network
interface up or down). Your kernel .config would be useful as well.

>
> Cheers,
> Stefan
>
> On Wed, 2021-12-01 at 10:57 -0800, Vinicius Costa Gomes wrote:
>> Inspired by:
>> https://bugzilla.kernel.org/show_bug.cgi?id=215129
>>
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>> Just to see if it's indeed the same problem as the bug report above.
>>
>>  drivers/net/ethernet/intel/igc/igc_main.c | 19 +++++++++++++------
>>  1 file changed, 13 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 0e19b4d02e62..c58bf557a2a1 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -6619,7 +6619,7 @@ static void igc_deliver_wake_packet(struct
>> net_device *netdev)
>>  	netif_rx(skb);
>>  }
>>
>> -static int __maybe_unused igc_resume(struct device *dev)
>> +static int __maybe_unused __igc_resume(struct device *dev, bool rpm)
>>  {
>>  	struct pci_dev *pdev = to_pci_dev(dev);
>>  	struct net_device *netdev = pci_get_drvdata(pdev);
>> @@ -6661,20 +6661,27 @@ static int __maybe_unused igc_resume(struct
>> device *dev)
>>
>>  	wr32(IGC_WUS, ~0);
>>
>> -	rtnl_lock();
>> +	if (!rpm)
>> +		rtnl_lock();
>>  	if (!err && netif_running(netdev))
>>  		err = __igc_open(netdev, true);
>>
>>  	if (!err)
>>  		netif_device_attach(netdev);
>> -	rtnl_unlock();
>> +	if (!rpm)
>> +		rtnl_unlock();
>>
>>  	return err;
>>  }
>>
>>  static int __maybe_unused igc_runtime_resume(struct device *dev)
>>  {
>> -	return igc_resume(dev);
>> +	return __igc_resume(dev, true);
>> +}
>> +
>> +static int __maybe_unused igc_resume(struct device *dev)
>> +{
>> +	return __igc_resume(dev, false);
>>  }
>>
>>  static int __maybe_unused igc_suspend(struct device *dev)
>> @@ -6738,7 +6745,7 @@ static pci_ers_result_t
>> igc_io_error_detected(struct pci_dev *pdev,
>>   *  @pdev: Pointer to PCI device
>>   *
>>   *  Restart the card from scratch, as if from a cold-boot.
>> Implementation
>> - *  resembles the first-half of the igc_resume routine.
>> + *  resembles the first-half of the __igc_resume routine.
>>   **/
>>  static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
>>  {
>> @@ -6777,7 +6784,7 @@ static pci_ers_result_t
>> igc_io_slot_reset(struct pci_dev *pdev)
>>   *
>>   *  This callback is called when the error recovery driver tells us
>> that
>>   *  its OK to resume normal operation. Implementation resembles the
>> - *  second-half of the igc_resume routine.
>> + *  second-half of the __igc_resume routine.
>>   */
>>  static void igc_io_resume(struct pci_dev *pdev)
>>  {
>


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
