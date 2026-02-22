Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOVsKxMvm2lluwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Feb 2026 17:30:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A67F216FA25
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Feb 2026 17:30:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62E6E60E4B;
	Sun, 22 Feb 2026 16:30:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rvKEhh6p9x83; Sun, 22 Feb 2026 16:30:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94D3260DF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771777806;
	bh=LzVdNJ0NbX0mESk5VwQiMKeCmY3pX3VUt05TUeOZ1lc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kOxfmByTDvdy80+I4OR/F/Hioux58UiIdb/Ldhi9sEN0ul3hwLk2tAr+3eh5exaoz
	 0lUkiUfFmiYA1vaz6TSR4/9MXJBFl8jLO28O/APT+Zkvn/ZL1cjYfv13O73kB0Tcnz
	 QXK+p31QhhAFSkI4wunRTKrhchhkmjxY18VLUIo2e2zYcF+vKJtNHE9YCWYsKlIbw5
	 MyoXXzgm9t9S5htXG67E+3kmksUUYbpzp6Q5jFkv8RYjCyvDttQ5sfMIlX9k/LjS3T
	 ePZflIvfmGdkyxfCpNLuqPrVmQLehLmA5Pou+hJgbnRC67pgXuoXJb8KfNTmNjKN+x
	 ovePOIDgGckJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94D3260DF1;
	Sun, 22 Feb 2026 16:30:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 17E55249
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 16:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1DC340565
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 16:30:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aR7a55mMIapV for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Feb 2026 16:30:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01B7840369
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01B7840369
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01B7840369
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 16:30:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A081E6001D;
 Sun, 22 Feb 2026 16:30:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 108C9C116D0;
 Sun, 22 Feb 2026 16:29:49 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: anthony.l.nguyen@intel.com
Date: Sun, 22 Feb 2026 16:28:35 +0000
Message-ID: <20260222162835.23954-1-horms@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260220004027.729384-14-anthony.l.nguyen@intel.com>
References: <20260220004027.729384-14-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771777802;
 bh=r8blr4lUK/hyGtCcj6d0ju2YO+6PPYpgeQ+iODPCV2k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D64R3jrn2VIvuTjEvCQJYfO0SMH8ZC/bkcq3qDt1pNiXD33gHEhHIZtCRpMUsPicw
 d2yk83fh2WRM/g0u6LvlOc8ACkTGd6vjrp9D/BeivT87IAV5syryMaBD726L3IzM08
 stESZxL+ruOqFuGlbKC7U4L52EqUDvOYJTJiStcHg0RqKKis25WEI1PEwntVG7eX/U
 Gogbgcuc5WDFTIhTOaLlQ5VhfIwkJjWsQgwvcZefkcn1JAe3GEu3SAtib9DWUuWMhn
 rdr+KpLnk+2rXGxeXifjS1VJ57tW9Vp7R8K2rGkdzcst8od9oRzUC07Ic8rNzJXtSu
 ztuIiDzwmKITw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=D64R3jrn
Subject: Re: [Intel-wired-lan] [net,
 13/13] e1000e: correct TIMINCA on ADP/TGP systems with wrong XTAL
 frequency
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
Cc: piotr.kwapulinski@intel.com, brett.creeley@amd.com,
 emil.s.tantilov@intel.com, sx.rinitha@intel.com, brianvv@google.com,
 jedrzej.jagielski@intel.com, edumazet@google.com, boolli@google.com,
 decot@google.com, avigailx.dahan@intel.com, joe@dama.to,
 przemyslaw.kitszel@intel.com, Samuel.salin@intel.com, en-wei.wu@canonical.com,
 aleksandr.loktionov@intel.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 david.m.ertman@intel.com, pabeni@redhat.com, pmenzel@molgen.mpg.de,
 richardcochran@gmail.com, aaron.ma@canonical.com, kuba@kernel.org,
 sreedevi.joshi@intel.com, willemb@google.com, netdev@vger.kernel.org,
 joshua.a.hay@intel.com, stable@vger.kernel.org, davem@davemloft.net,
 andrew+netdev@lunn.ch, tglx@kernel.org, Simon Horman <horms@kernel.org>,
 sridhar.samudrala@intel.com, vitaly.lifshits@intel.com,
 dima.ruinskiy@intel.com, rafal.romanowski@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:piotr.kwapulinski@intel.com,m:brett.creeley@amd.com,m:emil.s.tantilov@intel.com,m:sx.rinitha@intel.com,m:brianvv@google.com,m:jedrzej.jagielski@intel.com,m:edumazet@google.com,m:boolli@google.com,m:decot@google.com,m:avigailx.dahan@intel.com,m:joe@dama.to,m:przemyslaw.kitszel@intel.com,m:Samuel.salin@intel.com,m:en-wei.wu@canonical.com,m:aleksandr.loktionov@intel.com,m:michal.kubiak@intel.com,m:jacob.e.keller@intel.com,m:david.m.ertman@intel.com,m:pabeni@redhat.com,m:pmenzel@molgen.mpg.de,m:richardcochran@gmail.com,m:aaron.ma@canonical.com,m:kuba@kernel.org,m:sreedevi.joshi@intel.com,m:willemb@google.com,m:netdev@vger.kernel.org,m:joshua.a.hay@intel.com,m:stable@vger.kernel.org,m:davem@davemloft.net,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:sridhar.samudrala@intel.com,m:vitaly.lifshits@intel.com,m:dima.ruinskiy@intel.com,m:rafal.romanowski@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,amd.com,google.com,dama.to,canonical.com,lists.osuosl.org,redhat.com,molgen.mpg.de,gmail.com,kernel.org,vger.kernel.org,davemloft.net,lunn.ch];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.998];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A67F216FA25
X-Rspamd-Action: no action

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
e1000e: correct TIMINCA on ADP/TGP systems with wrong XTAL frequency

On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
38.4 MHz. The commit measures PHC vs system time over 1 ms and if the
delta exceeds 100 microseconds, reprograms TIMINCA for the 38.4 MHz
profile and reinitializes the timecounter.

> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 814698807f3d..ae35ac479026 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c

[ ... ]

> @@ -3905,6 +3905,80 @@ static void e1000_flush_desc_rings(struct e1000_adapter *adapter)
>  		e1000_flush_rx_ring(adapter);
>  }
>
> +/**
> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and system
> + * clock delta.
> + * @adapter: Pointer to the private adapter structure
> + *
> + * Measures the time difference between the PHC (Precision Hardware Clock)
> + * and the system clock over a 1 millisecond interval. If the delta
> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
> + */
> +static void e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter)
> +{
> +	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta_ns;
> +	struct ptp_system_timestamp sys_start = {}, sys_end = {};
> +	struct ptp_clock_info *info = &adapter->ptp_clock_info;
> +	struct timespec64 phc_start, phc_end;
> +	struct e1000_hw *hw = &adapter->hw;
> +	struct netlink_ext_ack extack = {};
> +	unsigned long flags;
> +	u32 timinca;
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
> +	delta_ns = phc_delta - sys_delta;
> +	if (delta_ns > 100000) {
> +		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
> +		/* Program TIMINCA for 38.4 MHz */
> +		timinca = (INCPERIOD_38400KHZ <<
> +			   E1000_TIMINCA_INCPERIOD_SHIFT) |
> +			  (((INCVALUE_38400KHZ <<
> +			     adapter->cc.shift) &
> +			   E1000_TIMINCA_INCVALUE_MASK));

Is adapter->cc.shift correct here? When e1000e_xtal_tgp_workaround runs,
the earlier call to e1000e_get_base_timinca (via e1000e_phc_adjfine in
e1000e_systim_reset) has already set adapter->cc.shift based on the
incorrectly reported 24 MHz XTAL frequency.

On affected hardware where SYSCFI reports 24 MHz:

e1000e_systim_reset()
 -> e1000e_phc_adjfine(0)
    -> e1000e_get_base_timinca() sets:
       adapter->cc.shift = INCVALUE_SHIFT_24MHZ (14)
 -> e1000e_xtal_tgp_workaround()

So when computing TIMINCA for 38.4 MHz, the code uses shift=14:

  INCVALUE_38400KHZ << 14 = 26 << 14 = 425984

But the 38.4 MHz profile needs shift=19:

  INCVALUE_38400KHZ << 19 = 26 << 19 = 13631488

This produces timinca = 17203200 instead of the correct 30408704.

Additionally, the subsequent timecounter_init call uses adapter->cc which
still has shift=14. This computes tc->mask = (1ULL << 14) - 1 = 16383
instead of the correct (1ULL << 19) - 1 = 524287.

Should the function update adapter->cc.shift = INCVALUE_SHIFT_38400KHZ
before computing timinca and calling timecounter_init, matching the
pattern in e1000e_get_base_timinca for the 38.4 MHz profile?

> +		ew32(TIMINCA, timinca);
> +
> +		/* reset the systim ns time counter */
> +		spin_lock_irqsave(&adapter->systim_lock, flags);
> +		timecounter_init(&adapter->tc, &adapter->cc,
> +				 ktime_to_ns(ktime_get_real()));
> +		spin_unlock_irqrestore(&adapter->systim_lock, flags);
> +
> +		/* restore the previous hwtstamp configuration settings */
> +		ret_val = e1000e_config_hwtstamp(adapter,
> +						 &adapter->hwtstamp_config,
> +						 &extack);
> +		if (ret_val && extack._msg)
> +			e_err("%s\n", extack._msg);
> +	}
> +}

[ ... ]
