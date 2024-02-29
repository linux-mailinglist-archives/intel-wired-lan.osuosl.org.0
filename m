Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EDB86CBA6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Feb 2024 15:32:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07369417C0;
	Thu, 29 Feb 2024 14:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAp9bgtMTkye; Thu, 29 Feb 2024 14:32:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C715C417C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709217140;
	bh=0piA/rZ+P4gJORZgJNtGWG6OfWS97Gu7m8x8HRIvSL8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZudbnH3ZWQrSPXfLLUtmDtSEHyhuc5Fh57RqxdyrLSgwfuES/tyUjj7dodkoRSqNC
	 J6OXDVmRYrISKRvM9DPL2g9zZDZ2K5Os4ACnARAT9Hy7CfESFvFORE+74BKP8D99ns
	 CqIJwSVggMQCAhkiC1QLkDgmTSvmfSjnjlNTLmtRJd6dtXhd4wPv+GuOWrJZtJhfWD
	 xAAG0I++folLzAB8dfwOYxNT37bnrXQLGoR/AD3sCtlJsgbSsWpLY26N+YIfQw2wps
	 oVmVoCz4hkCxwrZWmFVVR234bou2Tp97FzJuU7Ep6IY7huazPSR8jydV7vTylIT359
	 sE8HjuOtWV8Pw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C715C417C1;
	Thu, 29 Feb 2024 14:32:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F52C1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 14:32:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 87A1341899
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 14:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 62WxvAPFr8oo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Feb 2024 14:32:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EDD894182E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDD894182E
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDD894182E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 14:32:15 +0000 (UTC)
Received: from [192.168.0.53] (ip5f5aeddf.dynamic.kabel-deutschland.de
 [95.90.237.223])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7984D61E5FE05;
 Thu, 29 Feb 2024 15:31:56 +0100 (CET)
Message-ID: <168e588a-9271-46ea-b2a7-005127ce8ff4@molgen.mpg.de>
Date: Thu, 29 Feb 2024 15:31:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20240211151245.811320-1-vitaly.lifshits@intel.com>
 <c2b8c45e-1986-41a4-89cb-7db48512eccf@molgen.mpg.de>
 <daa81688-b453-42f8-a8c0-999b7d9fafd4@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <daa81688-b453-42f8-a8c0-999b7d9fafd4@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: move force
 SMBUS from enable ulp function to avoid PHY loss issue
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vitaly,


Thank you for your reply.


Am 29.02.24 um 11:34 schrieb Lifshits, Vitaly:

> On 2/12/2024 11:00 AM, Paul Menzel wrote:

>> Am 11.02.24 um 16:12 schrieb Vitaly Lifshits:
>>> Forcing SMBUS inside the ULP enabling flow leads to sporadic PHY loss on
>>> some systems.
>>
>> Please list the systems you know of.
> On some Meteor-lake systems, we also suspect that on some legacy 
> platforms this issue happened with some low probability.

It’d be great if you could be more specific about the Meteor Lake 
systems. What model and what firmware versions?

>>> It is suspected to be caused by initiating PHY transactions before the
>>> the interface settles.
>>
>> No new paragraph is needed here. Please do not break the line, just 
>> because a sentence ends. (If you use paragraphs, please separate them 
>> by a blank line.
> Will be fixed in a v2.

Thank you.

>>> Separating this configuration from the ULP enabling flow avoids this
>>> issue.
>>>
>>> Fixes: 6607c99e7034 ("e1000e: i219 - fix to enable both ULP and EEE in Sx state")
>>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>>> Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
>>> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 19 -------------------
>>>   drivers/net/ethernet/intel/e1000e/netdev.c  | 18 ++++++++++++++++++
>>>   2 files changed, 18 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c 
>>> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>> index 717c52913e84..4d83c9a0c023 100644
>>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>> @@ -1165,25 +1165,6 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
>>>       if (ret_val)
>>>           goto out;
>>> -    /* Switching PHY interface always returns MDI error
>>> -     * so disable retry mechanism to avoid wasting time
>>> -     */
>>> -    e1000e_disable_phy_retry(hw);
>>> -
>>> -    /* Force SMBus mode in PHY */
>>> -    ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
>>> -    if (ret_val)
>>> -        goto release;
>>> -    phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
>>> -    e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
>>> -
>>> -    e1000e_enable_phy_retry(hw);
>>> -
>>> -    /* Force SMBus mode in MAC */
>>> -    mac_reg = er32(CTRL_EXT);
>>> -    mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
>>> -    ew32(CTRL_EXT, mac_reg);
>>> -
>>>       /* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
>>>        * LPLU and disable Gig speed when entering ULP
>>>        */
>>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c 
>>> b/drivers/net/ethernet/intel/e1000e/netdev.c
>>> index af5d9d97a0d6..8fcf8f11f5a4 100644
>>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>>> @@ -6622,6 +6622,7 @@ static int __e1000_shutdown(struct pci_dev 
>>> *pdev, bool runtime)
>>>       struct e1000_adapter *adapter = netdev_priv(netdev);
>>>       struct e1000_hw *hw = &adapter->hw;
>>>       u32 ctrl, ctrl_ext, rctl, status, wufc;
>>> +    u16 smb_ctrl;
>>>       int retval = 0;
>>>       /* Runtime suspend should only enable wakeup for link changes */
>>> @@ -6696,6 +6697,23 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
>>>           if (retval)
>>>               return retval;
>>> +
>>> +        /* Force SMBUS to allow WOL */
>>> +        /* Switching PHY interface always returns MDI error
>>> +         * so disable retry mechanism to avoid wasting time
>>> +         */
>>> +        e1000e_disable_phy_retry(hw);
>>> +
>>> +        e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
>>> +        smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
>>> +        e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
>>> +
>>> +        e1000e_enable_phy_retry(hw);
>>> +
>>> +        /* Force SMBus mode in MAC */
>>> +        ctrl_ext = er32(CTRL_EXT);
>>> +        ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
>>> +        ew32(CTRL_EXT, ctrl_ext);
>>>       }
>>>       /* Ensure that the appropriate bits are set in LPI_CTRL
>>
>> Why is `__e1000_shutdown()` the correct place, where it was in 
>> `e1000_enable_ulp_lpt_lp()` before?
> First of all because forcing the SMBUS is not related to ULP enabling 
> flow, but rather a configuration that is related to shutdown. Secondly, 
> moving the function to shutdown function allows enough time for the 
> interface to settle and avoids adding a delay.

Please add that clarification to the commit message.


Kind regards,

Paul
