Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2776BCF503A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 18:33:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3F7D80CF6;
	Mon,  5 Jan 2026 17:33:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2oEZVFkOc0Ag; Mon,  5 Jan 2026 17:33:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 060BB812B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767634431;
	bh=VOQ3TYyZvMowlku42ZpiepDAQSCybMchp2U1CCAVbQo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IO5HL9i73BaO8EB6UeJD+FPCCeTHdBTG7jm/sBImvHEgfMrdLTubLtLBO8ItYX321
	 OV3n8vF50ivxLWI8KR+tQ/HU6clD8K5VJ39Q7X71ZXCwE7TX0FPQuGQBIjCq3wBD1I
	 Aa4AhaBEelmEb/W6HViGgPKzSKzpCYA9yS+rSzmG7MOGQH+GQYiMqSlSWWORCIrJLG
	 ztYdpeoAC1nv7Nc6dBJwdWDGMuOp5mGdPhYbVMDVC0iry1ri64kwLeCmlqW/kkn4IM
	 Pm8A1djcklorfBMjuKYWm+sBNGLsTQ8fSXfrlAyJppchBiCxmYwDYmxe9upHKV0bE5
	 aBpkZRLbYYs4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 060BB812B4;
	Mon,  5 Jan 2026 17:33:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F29142DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 17:33:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D8EE940400
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 17:33:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G53dCIR1Ls43 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 17:33:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9E44540187
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E44540187
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E44540187
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 17:33:45 +0000 (UTC)
Received: from [192.168.44.10] (unknown [185.238.219.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D095161CC3FD8;
 Mon, 05 Jan 2026 18:33:29 +0100 (CET)
Message-ID: <e6c6cd4a-4a8b-45ae-8d4c-9642d7358025@molgen.mpg.de>
Date: Mon, 5 Jan 2026 18:33:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
References: <20260105075738.1514341-1-vitaly.lifshits@intel.com>
Content-Language: en-US
In-Reply-To: <20260105075738.1514341-1-vitaly.lifshits@intel.com>
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


Thank you for your patch.

Am 05.01.26 um 10:57 schrieb Vitaly Lifshits:
> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
> XTAL clock is incorrectly configured to 24 MHz instead of the expected
> 38.4 MHz. This causes the PHC to run significantly faster than system
> time, breaking PTP synchronization.

Is that fused into hardware or a firmware issue? Has an errata been 
published?

> To mitigate this at runtime, measure PHC vs system time over ~1 ms using
> cross-timestamps. If the PHC increment differs from system time beyond
> the expected tolerance (currently >100 uSecs), reprogram TIMINCA for the
> 38.4 MHz profile and reinitialize the timecounter.

Why not unconditionally configure it for 38.4 MHz?

> Tested on an affected system using phc_ctl:
> Without fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 16.000541250 (expected ~10s)
> 
> With fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 9.984407212 (expected ~10s)

Please document at least one affected hardware.

Also, please add the new log message.

     +		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");

I’d make it an info though, and log that it’s a hardware (firmware?) issue.

> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 79 ++++++++++++++++++++++
>   1 file changed, 79 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 116f3c92b5bc..4ab6897577e5 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3904,6 +3904,82 @@ static void e1000_flush_desc_rings(struct e1000_adapter *adapter)
>   		e1000_flush_rx_ring(adapter);
>   }
>   
> +/**
> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and system
> + * clock delta.
> + *
> + * Measures the time difference between the PHC (Precision Hardware Clock)
> + * and the system clock over a 1 millisecond interval. If the delta
> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
> + *
> + * @adapter: Pointer to the private adapter structure
> + **/
> +static void e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter)
> +{
> +	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta;
> +	struct ptp_system_timestamp sys_start = {}, sys_end = {};
> +	struct ptp_clock_info *info = &adapter->ptp_clock_info;
> +	struct timespec64 phc_start, phc_end;
> +	struct e1000_hw *hw = &adapter->hw;
> +	struct netlink_ext_ack extack = {};
> +	unsigned long flags;
> +	u32 timinca;

What does the variable name mean?

> +	s32 ret_val;
> +
> +	/* Capture start */
> +	if (info->gettimex64(info, &phc_start, &sys_start)) {
> +		e_dbg("PHC gettimex(start) failed\n");
> +		return;
> +	}
> +
> +	/* Small interval to measure increment */
> +	usleep_range(1000, 1100);
> +
> +	/* Capture end */
> +	if (info->gettimex64(info, &phc_end, &sys_end)) {
> +		e_dbg("PHC gettimex(end) failed\n");
> +		return;
> +	}
> +
> +	/* Compute deltas */
> +	phc_delta = timespec64_to_ns(&phc_end) -
> +		    timespec64_to_ns(&phc_start);
> +
> +	sys_start_ns = (timespec64_to_ns(&sys_start.pre_ts) +
> +			timespec64_to_ns(&sys_start.post_ts)) >> 1;
> +
> +	sys_end_ns = (timespec64_to_ns(&sys_end.pre_ts) +
> +		      timespec64_to_ns(&sys_end.post_ts)) >> 1;
> +
> +	sys_delta = sys_end_ns - sys_start_ns;
> +
> +	delta = phc_delta - sys_delta;
> +	if (delta > 100000) {
> +		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
> +		/* Program TIMINCA for 38.4 MHz */
> +		timinca = (INCPERIOD_38400KHZ <<
> +			   E1000_TIMINCA_INCPERIOD_SHIFT) |

Why wrap the line?

> +			  (((INCVALUE_38400KHZ <<
> +			     adapter->cc.shift) &
> +			   E1000_TIMINCA_INCVALUE_MASK));
> +		ew32(TIMINCA, timinca);
> +	}
> +
> +	/* reset the systim ns time counter */
> +	spin_lock_irqsave(&adapter->systim_lock, flags);
> +	timecounter_init(&adapter->tc, &adapter->cc,
> +			 ktime_to_ns(ktime_get_real()));
> +	spin_unlock_irqrestore(&adapter->systim_lock, flags);
> +
> +	/* restore the previous hwtstamp configuration settings */
> +	ret_val = e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config,
> +					 &extack);
> +	if (ret_val) {
> +		if (extack._msg)
> +			e_err("%s\n", extack._msg);

Is a user able to do anything with this log dump?

> +	}
> +}
> +
>   /**
>    * e1000e_systim_reset - reset the timesync registers after a hardware reset
>    * @adapter: board private structure
> @@ -3955,6 +4031,9 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
>   		if (extack._msg)
>   			e_err("%s\n", extack._msg);
>   	}
> +
> +	if (hw->mac.type == e1000_pch_adp || hw->mac.type == e1000_pch_tgp)
> +		return e1000e_xtal_tgp_workaround(adapter);
>   }
>   
>   /**

With the changes above addressed, feel free to add

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
