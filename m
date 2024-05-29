Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C62D8D357F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 13:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D221440A86;
	Wed, 29 May 2024 11:24:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wXFYStt2OC7U; Wed, 29 May 2024 11:24:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0622A40AB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716981861;
	bh=RlCegbijqRLLCfKICSDDUWU4S7nFInMWDHaHPG+2wYg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JarK0WOv5mx4jWsaV03wbdNN/41H0hWiCXQOzQZVi8ZiTVnMWJHMZqWAGwSP79vgD
	 Ppf+zlncIK/Se6uZcIol6//4iaw2s4vDrDTvLehJRyWm//iXZOvE77NrYpmeRZJAOf
	 NuAyWCJ2eOI9lurqQveL5TF+6SLO080GCMO/HpfGUx5nQzLdlvXFm4liyHFuXjeUzd
	 gbRf8gFa45bDFl6A7k6EzSCZ2gYZ9xnAfW9Xt0ZWQojXbLWM+LIgV3/qEDp3Xw9QVJ
	 TjQxgZ2pNscVmajxqSX8zOe83fH1q6BoOB6Hw8S1TTm855/1pCmRrEmouru3npNQo+
	 F7bYNzBKERzkw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0622A40AB1;
	Wed, 29 May 2024 11:24:21 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C4C91D3494
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 11:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 47DDA607D4
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 11:24:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1J51nx1f-ubw for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 11:24:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4CF5A605CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CF5A605CD
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4CF5A605CD
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 11:24:14 +0000 (UTC)
Received: from [141.14.220.56] (g56.guest.molgen.mpg.de [141.14.220.56])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 268A661E5FE01;
 Wed, 29 May 2024 13:23:59 +0200 (CEST)
Message-ID: <65f2fdb3-a326-4ea4-8cca-9e2b07ae63a0@molgen.mpg.de>
Date: Wed, 29 May 2024 13:23:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20240528103329.784584-1-vitaly.lifshits@intel.com>
 <9ca46bff-e118-436f-81c7-4d2c53556a42@molgen.mpg.de>
 <303a35e6-263e-42e4-9e1a-5e71f2eaabc8@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <303a35e6-263e-42e4-9e1a-5e71f2eaabc8@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: Fix S0ix
 residency on Meteor Lake corporate systems
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
Cc: intel-wired-lan@osuosl.org, Dima Ruinskiy <dima.ruinskiy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vitaly,


Thank you for your reply.

Am 29.05.24 um 13:13 schrieb Lifshits, Vitaly:

> On 5/28/2024 1:43 PM, Paul Menzel wrote:

>> Am 28.05.24 um 12:33 schrieb Vitaly Lifshits:
>>> From: Dima Ruinskiy <dima.ruinskiy@intel.com>
>>>
>>> On vPro systems,the  configuration of the I219-LM to achieve power
>>
>> s/,the  /, the /
> Thank you for noticing it.
> I will fix it in a v2.
>
>>> gating and S0ix residency is split between the driver and the CSME FW.
>>> It was discovered that in some scenarios, where the network cable is
>>> connected and then disconnected, S0ix residency is not always reached.
>>
>> Disconnected at any point, or just during suspend?
> Yes, at any point.
>
>> Any URL to the reports?
> Yes, https://bugs.launchpad.net/sutton/+bug/2054657

This page does not exist.

     $ curl -I https://bugs.launchpad.net/sutton/+bug/2054657
     HTTP/1.1 404 Not Found
     Date: Wed, 29 May 2024 11:20:52 GMT
     Server: gunicorn
     […]

Please reference the (working) URL in a Link: tag in the footer.

>>> This was root-caused to a subset of I219-LM register writes that are not
>>> performed by the CSME FW. Therefore, the driver should perform these
>>> register writes on corporate setups, regardless of the CSME FW state.
>>
>> Is that documented somewhere?
> Only in an internal documentation.

If you can, it’d be great if you summarized why this is triggered by 
unplugging the network cable.

>> Please add more information about the affected systems, and the test 
>> environment (firmware versions, …).
> It is mentioned at the beginning of the commit, Meteorlake vPro systems.

Please be more specific. If there is a Meteor Lake vPro system, where 
this can *not* be reproduced, it’d be great to know the exact system you 
tested this with. Meteor Lake has been released a long time ago, and not 
remembering a lot of bug reports, I assume, it’s not always reproducible.

(You missed to comment on my previous comments at the end.)

>>> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
>>> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
>>> Signed-off-by: Vitaly.Lifshits <vitaly.lifshits@intel.com>
>>
>> The line above with the dot can be removed.
> Will be fixed in a v2.
>>
>>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/e1000e/netdev.c | 132 ++++++++++-----------
>>>   1 file changed, 66 insertions(+), 66 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c 
>>> b/drivers/net/ethernet/intel/e1000e/netdev.c
>>> index da5c59daf8ba..3cd161c6672b 100644
>>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>>> @@ -6363,49 +6363,49 @@ static void e1000e_s0ix_entry_flow(struct 
>>> e1000_adapter *adapter)
>>>           mac_data |= E1000_EXTCNF_CTRL_GATE_PHY_CFG;
>>>           ew32(EXTCNF_CTRL, mac_data);
>>> -        /* Enable the Dynamic Power Gating in the MAC */
>>> -        mac_data = er32(FEXTNVM7);
>>> -        mac_data |= BIT(22);
>>> -        ew32(FEXTNVM7, mac_data);
>>> -
>>>           /* Disable disconnected cable conditioning for Power Gating */
>>>           mac_data = er32(DPGFR);
>>>           mac_data |= BIT(2);
>>>           ew32(DPGFR, mac_data);
>>> -        /* Don't wake from dynamic Power Gating with clock request */
>>> -        mac_data = er32(FEXTNVM12);
>>> -        mac_data |= BIT(12);
>>> -        ew32(FEXTNVM12, mac_data);
>>> -
>>> -        /* Ungate PGCB clock */
>>> -        mac_data = er32(FEXTNVM9);
>>> -        mac_data &= ~BIT(28);
>>> -        ew32(FEXTNVM9, mac_data);
>>> -
>>> -        /* Enable K1 off to enable mPHY Power Gating */
>>> -        mac_data = er32(FEXTNVM6);
>>> -        mac_data |= BIT(31);
>>> -        ew32(FEXTNVM6, mac_data);
>>> -
>>> -        /* Enable mPHY power gating for any link and speed */
>>> -        mac_data = er32(FEXTNVM8);
>>> -        mac_data |= BIT(9);
>>> -        ew32(FEXTNVM8, mac_data);
>>> -
>>>           /* Enable the Dynamic Clock Gating in the DMA and MAC */
>>>           mac_data = er32(CTRL_EXT);
>>>           mac_data |= E1000_CTRL_EXT_DMA_DYN_CLK_EN;
>>>           ew32(CTRL_EXT, mac_data);
>>> -
>>> -        /* No MAC DPG gating SLP_S0 in modern standby
>>> -         * Switch the logic of the lanphypc to use PMC counter
>>> -         */
>>> -        mac_data = er32(FEXTNVM5);
>>> -        mac_data |= BIT(7);
>>> -        ew32(FEXTNVM5, mac_data);
>>>       }
>>> +    /* Enable the Dynamic Power Gating in the MAC */
>>> +    mac_data = er32(FEXTNVM7);
>>> +    mac_data |= BIT(22);
>>> +    ew32(FEXTNVM7, mac_data);
>>> +
>>> +    /* Don't wake from dynamic Power Gating with clock request */
>>> +    mac_data = er32(FEXTNVM12);
>>> +    mac_data |= BIT(12);
>>> +    ew32(FEXTNVM12, mac_data);
>>> +
>>> +    /* Ungate PGCB clock */
>>> +    mac_data = er32(FEXTNVM9);
>>> +    mac_data &= ~BIT(28);
>>> +    ew32(FEXTNVM9, mac_data);
>>> +
>>> +    /* Enable K1 off to enable mPHY Power Gating */
>>> +    mac_data = er32(FEXTNVM6);
>>> +    mac_data |= BIT(31);
>>> +    ew32(FEXTNVM6, mac_data);
>>> +
>>> +    /* Enable mPHY power gating for any link and speed */
>>> +    mac_data = er32(FEXTNVM8);
>>> +    mac_data |= BIT(9);
>>> +    ew32(FEXTNVM8, mac_data);
>>> +
>>> +    /* No MAC DPG gating SLP_S0 in modern standby
>>> +     * Switch the logic of the lanphypc to use PMC counter
>>> +     */
>>> +    mac_data = er32(FEXTNVM5);
>>> +    mac_data |= BIT(7);
>>> +    ew32(FEXTNVM5, mac_data);
>>> +
>>>       /* Disable the time synchronization clock */
>>>       mac_data = er32(FEXTNVM7);
>>>       mac_data |= BIT(31);
>>> @@ -6498,33 +6498,6 @@ static void e1000e_s0ix_exit_flow(struct 
>>> e1000_adapter *adapter)
>>>       } else {
>>>           /* Request driver unconfigure the device from S0ix */
>>> -        /* Disable the Dynamic Power Gating in the MAC */
>>> -        mac_data = er32(FEXTNVM7);
>>> -        mac_data &= 0xFFBFFFFF;
>>> -        ew32(FEXTNVM7, mac_data);
>>> -
>>> -        /* Disable mPHY power gating for any link and speed */
>>> -        mac_data = er32(FEXTNVM8);
>>> -        mac_data &= ~BIT(9);
>>> -        ew32(FEXTNVM8, mac_data);
>>> -
>>> -        /* Disable K1 off */
>>> -        mac_data = er32(FEXTNVM6);
>>> -        mac_data &= ~BIT(31);
>>> -        ew32(FEXTNVM6, mac_data);
>>> -
>>> -        /* Disable Ungate PGCB clock */
>>> -        mac_data = er32(FEXTNVM9);
>>> -        mac_data |= BIT(28);
>>> -        ew32(FEXTNVM9, mac_data);
>>> -
>>> -        /* Cancel not waking from dynamic
>>> -         * Power Gating with clock request
>>> -         */
>>> -        mac_data = er32(FEXTNVM12);
>>> -        mac_data &= ~BIT(12);
>>> -        ew32(FEXTNVM12, mac_data);
>>> -
>>>           /* Cancel disable disconnected cable conditioning
>>>            * for Power Gating
>>>            */
>>> @@ -6537,13 +6510,6 @@ static void e1000e_s0ix_exit_flow(struct 
>>> e1000_adapter *adapter)
>>>           mac_data &= 0xFFF7FFFF;
>>>           ew32(CTRL_EXT, mac_data);
>>> -        /* Revert the lanphypc logic to use the internal Gbe counter
>>> -         * and not the PMC counter
>>> -         */
>>> -        mac_data = er32(FEXTNVM5);
>>> -        mac_data &= 0xFFFFFF7F;
>>> -        ew32(FEXTNVM5, mac_data);
>>> -
>>>           /* Enable the periodic inband message,
>>>            * Request PCIe clock in K1 page770_17[10:9] =01b
>>>            */
>>> @@ -6581,6 +6547,40 @@ static void e1000e_s0ix_exit_flow(struct 
>>> e1000_adapter *adapter)
>>>       mac_data &= ~BIT(31);
>>>       mac_data |= BIT(0);
>>>       ew32(FEXTNVM7, mac_data);
>>> +
>>> +    /* Disable the Dynamic Power Gating in the MAC */
>>> +    mac_data = er32(FEXTNVM7);
>>> +    mac_data &= 0xFFBFFFFF;
>>> +    ew32(FEXTNVM7, mac_data);
>>> +
>>> +    /* Disable mPHY power gating for any link and speed */
>>> +    mac_data = er32(FEXTNVM8);
>>> +    mac_data &= ~BIT(9);
>>> +    ew32(FEXTNVM8, mac_data);
>>> +
>>> +    /* Disable K1 off */
>>> +    mac_data = er32(FEXTNVM6);
>>> +    mac_data &= ~BIT(31);
>>> +    ew32(FEXTNVM6, mac_data);
>>> +
>>> +    /* Disable Ungate PGCB clock */
>>> +    mac_data = er32(FEXTNVM9);
>>> +    mac_data |= BIT(28);
>>> +    ew32(FEXTNVM9, mac_data);
>>> +
>>> +    /* Cancel not waking from dynamic
>>> +     * Power Gating with clock request
>>> +     */
>>> +    mac_data = er32(FEXTNVM12);
>>> +    mac_data &= ~BIT(12);
>>> +    ew32(FEXTNVM12, mac_data);
>>> +
>>> +    /* Revert the lanphypc logic to use the internal Gbe counter
>>> +     * and not the PMC counter
>>> +     */
>>> +    mac_data = er32(FEXTNVM5);
>>> +    mac_data &= 0xFFFFFF7F;
>>> +    ew32(FEXTNVM5, mac_data);
>>>   }
>>>   static int e1000e_pm_freeze(struct device *dev)
>>
>> Doesn’t moving this out of the branch and running it unconditionally 
>> affect a lot more systems than Meteor Lake?


Kind regards,

Paul
