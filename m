Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC0CCF7CB7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 11:30:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8684981323;
	Tue,  6 Jan 2026 10:30:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n5BWEYWP3QQq; Tue,  6 Jan 2026 10:30:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D424C81325
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767695418;
	bh=FtdofA1qS3jDKFAsq9HZgWON36KeW2g3jn71BEeUpFY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gXaeNSKPRN+2UqAsKyfJg0ZLunOtH/Jcy4HwOFjwGB3pzhDluz656BO+ufzMcLsxs
	 9tb+a783aqcXPtib/qg57I+BqJ2KBX0S4lrso/7J7SCj2MyMyKf0FCMiKU2qed9i0T
	 TGKNrtUVJqlRnpFF5z7Ud/Nef17MOUUP/EU8h857PVhrlYPWb4IdELZbuiiyC3TcUf
	 S89A/0d5YY3vS4OHfaxA2J/LVfjWf3bNunPbvk4Oym7vhkMhyxdejvjjihfw5jxxzt
	 J4pdwpNyCOOsov9RguzWpIl+YnOdQILrQswRfgqaiBYbJd6jGLyJi2r6+5irKKc85k
	 ZFPEBuMwzm/XQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D424C81325;
	Tue,  6 Jan 2026 10:30:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 96F7FE7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8910D4008C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:30:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wngQ8huuAdkT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 10:30:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A72A4007F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A72A4007F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A72A4007F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:30:14 +0000 (UTC)
Received: from [141.14.13.172] (g427.RadioFreeInternet.molgen.mpg.de
 [141.14.13.172])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 44E3960288498;
 Tue, 06 Jan 2026 11:29:58 +0100 (CET)
Message-ID: <08f452b5-1755-498f-9a8c-789d19da7240@molgen.mpg.de>
Date: Tue, 6 Jan 2026 11:29:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
References: <20260105075738.1514341-1-vitaly.lifshits@intel.com>
 <e6c6cd4a-4a8b-45ae-8d4c-9642d7358025@molgen.mpg.de>
 <28213024-9c96-4337-ab37-add9a803516a@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <28213024-9c96-4337-ab37-add9a803516a@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vitaly,


Thank you for your reply.

Am 06.01.26 um 10:59 schrieb Lifshits, Vitaly:

> On 1/5/2026 7:33 PM, Paul Menzel wrote:

>> Am 05.01.26 um 10:57 schrieb Vitaly Lifshits:
>>> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
>>> XTAL clock is incorrectly configured to 24 MHz instead of the expected
>>> 38.4 MHz. This causes the PHC to run significantly faster than system
>>> time, breaking PTP synchronization.
>>
>> Is that fused into hardware or a firmware issue? Has an errata been 
>> published?
> 
> It is a BIOS configuration issue that a wrong clock value is set.
> There is no errata for it.

Interesting. Please add that to the commit message.

>>> To mitigate this at runtime, measure PHC vs system time over ~1 ms using
>>> cross-timestamps. If the PHC increment differs from system time beyond
>>> the expected tolerance (currently >100 uSecs), reprogram TIMINCA for the
>>> 38.4 MHz profile and reinitialize the timecounter.
>>
>> Why not unconditionally configure it for 38.4 MHz?
> 
> Because some of the systems have the 24 MHz clock while others have the 
> 38.4 MHz. It is impossible to determine the clock by a device ID. 
> Anyway, I'll rephrase it in the commit message to make it clearer.

Thank you.

>>> Tested on an affected system using phc_ctl:
>>> Without fix:
>>> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
>>> clock time: 16.000541250 (expected ~10s)
>>>
>>> With fix:
>>> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
>>> clock time: 9.984407212 (expected ~10s)
>>
>> Please document at least one affected hardware.
> 
> I don't have this data as we can't know for sure which BIOS the 
> different vendors use and which of them are configured incorrectly.

Please document the system you test this on.

>> Also, please add the new log message.
>>
>>      +        e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
>>
>> I’d make it an info though, and log that it’s a hardware (firmware?) 
>> issue.
> 
> I prefer leaving it as a debug print because otherwise we will get 
> complains from end-users about spamming the dmesg log as this print will 
> be visible during every boot.

It’s a misconfiguration on the system. Users should know about it, and 
otherwise also hardware vendors won’t notice, and can’t fix it.

>>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/e1000e/netdev.c | 79 ++++++++++++++++++++++
>>>   1 file changed, 79 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/ 
>>> net/ ethernet/intel/e1000e/netdev.c
>>> index 116f3c92b5bc..4ab6897577e5 100644
>>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>>> @@ -3904,6 +3904,82 @@ static void e1000_flush_desc_rings(struct 
>>> e1000_adapter *adapter)
>>>           e1000_flush_rx_ring(adapter);
>>>   }
>>> +/**
>>> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and system
>>> + * clock delta.
>>> + *
>>> + * Measures the time difference between the PHC (Precision Hardware Clock)
>>> + * and the system clock over a 1 millisecond interval. If the delta
>>> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
>>> + *
>>> + * @adapter: Pointer to the private adapter structure
>>> + **/
>>> +static void e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter)
>>> +{
>>> +    s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta;
>>> +    struct ptp_system_timestamp sys_start = {}, sys_end = {};
>>> +    struct ptp_clock_info *info = &adapter->ptp_clock_info;
>>> +    struct timespec64 phc_start, phc_end;
>>> +    struct e1000_hw *hw = &adapter->hw;
>>> +    struct netlink_ext_ack extack = {};
>>> +    unsigned long flags;
>>> +    u32 timinca;
>>
>> What does the variable name mean?
> 
> It is the register's name.

Just use `reg` or `reg_timinca`?

>>> +    s32 ret_val;
>>> +
>>> +    /* Capture start */
>>> +    if (info->gettimex64(info, &phc_start, &sys_start)) {
>>> +        e_dbg("PHC gettimex(start) failed\n");
>>> +        return;
>>> +    }
>>> +
>>> +    /* Small interval to measure increment */
>>> +    usleep_range(1000, 1100);
>>> +
>>> +    /* Capture end */
>>> +    if (info->gettimex64(info, &phc_end, &sys_end)) {
>>> +        e_dbg("PHC gettimex(end) failed\n");
>>> +        return;
>>> +    }
>>> +
>>> +    /* Compute deltas */
>>> +    phc_delta = timespec64_to_ns(&phc_end) -
>>> +            timespec64_to_ns(&phc_start);
>>> +
>>> +    sys_start_ns = (timespec64_to_ns(&sys_start.pre_ts) +
>>> +            timespec64_to_ns(&sys_start.post_ts)) >> 1;
>>> +
>>> +    sys_end_ns = (timespec64_to_ns(&sys_end.pre_ts) +
>>> +              timespec64_to_ns(&sys_end.post_ts)) >> 1;
>>> +
>>> +    sys_delta = sys_end_ns - sys_start_ns;
>>> +
>>> +    delta = phc_delta - sys_delta;
>>> +    if (delta > 100000) {
>>> +        e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
>>> +        /* Program TIMINCA for 38.4 MHz */
>>> +        timinca = (INCPERIOD_38400KHZ <<
>>> +               E1000_TIMINCA_INCPERIOD_SHIFT) |
>>
>> Why wrap the line?
> 
> Because it passes the 80 characters per line limit.

Would the one below work?

     timinca =
     	(INCPERIOD_38400KHZ << E1000_TIMINCA_INCPERIOD_SHIFT) |

>>> +              (((INCVALUE_38400KHZ <<
>>> +                 adapter->cc.shift) &
>>> +               E1000_TIMINCA_INCVALUE_MASK));
>>> +        ew32(TIMINCA, timinca);
>>> +    }
>>> +
>>> +    /* reset the systim ns time counter */
>>> +    spin_lock_irqsave(&adapter->systim_lock, flags);
>>> +    timecounter_init(&adapter->tc, &adapter->cc,
>>> +             ktime_to_ns(ktime_get_real()));
>>> +    spin_unlock_irqrestore(&adapter->systim_lock, flags);
>>> +
>>> +    /* restore the previous hwtstamp configuration settings */
>>> +    ret_val = e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config,
>>> +                     &extack);
>>> +    if (ret_val) {
>>> +        if (extack._msg)
>>> +            e_err("%s\n", extack._msg);
>>
>> Is a user able to do anything with this log dump?
> 
> I used the same code we used in the original function for consistency.

Understood.

>>> +    }
>>> +}
>>> +
>>>   /**
>>>    * e1000e_systim_reset - reset the timesync registers after a hardware reset
>>>    * @adapter: board private structure
>>> @@ -3955,6 +4031,9 @@ static void e1000e_systim_reset(struct 
>>> e1000_adapter *adapter)
>>>           if (extack._msg)
>>>               e_err("%s\n", extack._msg);
>>>       }
>>> +
>>> +    if (hw->mac.type == e1000_pch_adp || hw->mac.type == e1000_pch_tgp)
>>> +        return e1000e_xtal_tgp_workaround(adapter);
>>>   }
>>>   /**
>>
>> With the changes above addressed, feel free to add
>>
>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
