Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB7B4731C2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 17:27:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07EB142942;
	Mon, 13 Dec 2021 16:27:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yOfdDJNAzrMq; Mon, 13 Dec 2021 16:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9FAC426DC;
	Mon, 13 Dec 2021 16:27:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D5871BF847
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 09:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AD1B42531
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 09:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LjqP1urJ6S9D for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 09:40:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C72D54252B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 09:40:32 +0000 (UTC)
Received: from ip4d173d4a.dynamic.kabel-deutschland.de ([77.23.61.74]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1mvcO8-0007uy-Py; Fri, 10 Dec 2021 10:40:24 +0100
Message-ID: <063995d8-acf3-9f33-5667-f284233c94b4@leemhuis.info>
Date: Fri, 10 Dec 2021 10:40:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-BS
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Stefan Dietrich <roots@gmx.de>
References: <87r1awtdx3.fsf@intel.com>
 <20211201185731.236130-1-vinicius.gomes@intel.com>
 <5a4b31d43d9bf32e518188f3ef84c433df3a18b1.camel@gmx.de>
 <87o85yljpu.fsf@intel.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <87o85yljpu.fsf@intel.com>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1639129232;
 52db4137; 
X-HE-SMSGID: 1mvcO8-0007uy-Py
X-Mailman-Approved-At: Mon, 13 Dec 2021 16:27:34 +0000
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

Hi, this is your Linux kernel regression tracker speaking.

On 02.12.21 23:34, Vinicius Costa Gomes wrote:
> Hi Stefan,
> 
> Stefan Dietrich <roots@gmx.de> writes:
> 
>> Hi Vinicius,
>>
>> thanks for the patch - unfortunately it did not solve the issue and I
>> am still getting reboots/lockups.
>>
> 
> Thanks for the test. We learned something, not a lot, but something: the
> problem you are facing is PTM related and it's not the same bug as that
> PM deadlock.
> 
> I am still trying to understand what's going on.
> 
> Are you able to send me the 'dmesg' output for the two kernel configs
> (CONFIG_PCIE_PTM enabled and disabled)? (no need to bring the network
> interface up or down). Your kernel .config would be useful as well.

Stefan, could you provide the data Vinicius asked for? Or did you do
that in private already? Or was progress made somewhere else and I
simply missed this?

Ciao, Thorsten, your Linux kernel regression tracker.

P.S.: As a Linux kernel regression tracker I'm getting a lot of reports
on my table. I can only look briefly into most of them. Unfortunately
therefore I sometimes will get things wrong or miss something important.
I hope that's not the case here; if you think it is, don't hesitate to
tell me about it in a public reply. That's in everyone's interest, as
what I wrote above might be misleading to everyone reading this; any
suggestion I gave they thus might sent someone reading this down the
wrong rabbit hole, which none of us wants.

BTW, I have no personal interest in this issue, which is tracked using
regzbot, my Linux kernel regression tracking bot
(https://linux-regtracking.leemhuis.info/regzbot/). I'm only posting
this mail to get things rolling again and hence don't need to be CC on
all further activities wrt to this regression.

#regzbot poke

>> On Wed, 2021-12-01 at 10:57 -0800, Vinicius Costa Gomes wrote:
>>> Inspired by:
>>> https://bugzilla.kernel.org/show_bug.cgi?id=215129
>>>
>>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>>> ---
>>> Just to see if it's indeed the same problem as the bug report above.
>>>
>>>  drivers/net/ethernet/intel/igc/igc_main.c | 19 +++++++++++++------
>>>  1 file changed, 13 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>>> b/drivers/net/ethernet/intel/igc/igc_main.c
>>> index 0e19b4d02e62..c58bf557a2a1 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>> @@ -6619,7 +6619,7 @@ static void igc_deliver_wake_packet(struct
>>> net_device *netdev)
>>>  	netif_rx(skb);
>>>  }
>>>
>>> -static int __maybe_unused igc_resume(struct device *dev)
>>> +static int __maybe_unused __igc_resume(struct device *dev, bool rpm)
>>>  {
>>>  	struct pci_dev *pdev = to_pci_dev(dev);
>>>  	struct net_device *netdev = pci_get_drvdata(pdev);
>>> @@ -6661,20 +6661,27 @@ static int __maybe_unused igc_resume(struct
>>> device *dev)
>>>
>>>  	wr32(IGC_WUS, ~0);
>>>
>>> -	rtnl_lock();
>>> +	if (!rpm)
>>> +		rtnl_lock();
>>>  	if (!err && netif_running(netdev))
>>>  		err = __igc_open(netdev, true);
>>>
>>>  	if (!err)
>>>  		netif_device_attach(netdev);
>>> -	rtnl_unlock();
>>> +	if (!rpm)
>>> +		rtnl_unlock();
>>>
>>>  	return err;
>>>  }
>>>
>>>  static int __maybe_unused igc_runtime_resume(struct device *dev)
>>>  {
>>> -	return igc_resume(dev);
>>> +	return __igc_resume(dev, true);
>>> +}
>>> +
>>> +static int __maybe_unused igc_resume(struct device *dev)
>>> +{
>>> +	return __igc_resume(dev, false);
>>>  }
>>>
>>>  static int __maybe_unused igc_suspend(struct device *dev)
>>> @@ -6738,7 +6745,7 @@ static pci_ers_result_t
>>> igc_io_error_detected(struct pci_dev *pdev,
>>>   *  @pdev: Pointer to PCI device
>>>   *
>>>   *  Restart the card from scratch, as if from a cold-boot.
>>> Implementation
>>> - *  resembles the first-half of the igc_resume routine.
>>> + *  resembles the first-half of the __igc_resume routine.
>>>   **/
>>>  static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
>>>  {
>>> @@ -6777,7 +6784,7 @@ static pci_ers_result_t
>>> igc_io_slot_reset(struct pci_dev *pdev)
>>>   *
>>>   *  This callback is called when the error recovery driver tells us
>>> that
>>>   *  its OK to resume normal operation. Implementation resembles the
>>> - *  second-half of the igc_resume routine.
>>> + *  second-half of the __igc_resume routine.
>>>   */
>>>  static void igc_io_resume(struct pci_dev *pdev)
>>>  {
>>
> 
> 
> Cheers,
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
