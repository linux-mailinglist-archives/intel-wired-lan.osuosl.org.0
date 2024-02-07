Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D0784CE5C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 16:47:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2154B83B81;
	Wed,  7 Feb 2024 15:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bId8p-eeuO6v; Wed,  7 Feb 2024 15:47:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B77E83B46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707320826;
	bh=c04kwZUxrvzi0qvbSSBFwoEI3C7fipYQbJIv4qBO2mM=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1QRb/+jjx5lSGatLeQJolze3NoCkLBRzq2lvncsy3YqDYE070Tcz/PMbBWD5jnpff
	 acQnJPyfq5iaeyXVi2phFmLcDbfUK6CXOm7Djmt/43nHvLg5/PlVcuF98KZgAThZNA
	 fsx0BWynTEJAJbaCd+nj69GGZKd61VMFJ21EyaB5qWwsgDoNTqobQ9vobjGVCf4AB1
	 Vb7yDcbloJuGris0xhgWWFNKq7ANSG5Fy3LqtzjVApNYqJCVOJOlI6SEM4qJRIZurn
	 mrWAk7F3YGtnCMaWD59dTlCJNsSD/Bf1jQl65m4yS3XtYSmSKuyH7Qix5bjGC2hppr
	 Lsj2dY504KIGQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B77E83B46;
	Wed,  7 Feb 2024 15:47:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 552771BF471
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 15:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F0D24060B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 15:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5kZniDYb-Onh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 15:47:03 +0000 (UTC)
X-Greylist: delayed 600 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 07 Feb 2024 15:47:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2E0FF40568
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E0FF40568
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=tglx@linutronix.de; receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E0FF40568
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 15:47:03 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: lakshmi.sowjanya.d@intel.com, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
In-Reply-To: <20240207060854.6524-8-lakshmi.sowjanya.d@intel.com>
References: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
 <20240207060854.6524-8-lakshmi.sowjanya.d@intel.com>
Date: Wed, 07 Feb 2024 16:31:02 +0100
Message-ID: <87bk8smguh.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1707319863;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=c04kwZUxrvzi0qvbSSBFwoEI3C7fipYQbJIv4qBO2mM=;
 b=pX3LTP6jV2sgdSLm1wYHtfx8ErZl1KpxVfPY9rb03KkNx8HshqzA+MQcD1oD+pi1+98JnT
 hukHm/rQE4T/Lr0aLnUxVqVvqkE0SolHJ/yHRTHKhMDUDtp0CvUlgAXyz3HCF10+FoOdYz
 IJEsyZlpaw3Vl+KUtMsDd3Ev5iCeIl3bNmEbHx0zde9t7+1gvIJ2x2N2xH0LzDgNQxSKj3
 9yTiqHI/Ds4eZBsIRW9Lgdb+gtmkus9yy91OC+l1pbflBSuHxvfOEsSJ+IJZmVXCyL3zmN
 TxDv/fPfWOpMNNhgZ4GKkOJlg/J7BeDb/iQCkcKbXsDjLp3f/uk2NESKg/0wFw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1707319863;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=c04kwZUxrvzi0qvbSSBFwoEI3C7fipYQbJIv4qBO2mM=;
 b=rd8/9nVMjgPNsldK9YDX7YWT5kRNdt7AE4DtqnZ0JUjYD/Rpywr6xjdjT/asiFcpRtTF+B
 CWRJeVKy5QeunoCw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=pX3LTP6j; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=rd8/9nVM
Subject: Re: [Intel-wired-lan] [PATCH v4 07/11] ice/ptp: remove
 convert_art_to_tsc()
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 lakshmi.sowjanya.d@intel.com, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, pandith.n@intel.com, x86@kernel.org,
 eddie.dong@intel.com, jesse.brandeburg@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 mallikarjunappa.sangannavar@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, mcoquelin.stm32@gmail.com,
 thejesh.reddy.t.r@intel.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 andriy.shevchenko@linux.intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 07 2024 at 11:38, lakshmi sowjanya d. wrote:

> From: Thomas Gleixner <tglx@linutronix.de>
>
> Remove convert_art_to_tsc() function call, Pass system clock cycles and
> clocksource ID as input to get_device_system_crosststamp().
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 3b6605c8585e..104b3f7a7cfc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2101,7 +2101,7 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
>  			hh_ts_lo = rd32(hw, GLHH_ART_TIME_L);
>  			hh_ts_hi = rd32(hw, GLHH_ART_TIME_H);
>  			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
> -			*system = convert_art_ns_to_tsc(hh_ts);
> +			system->cycles = hh_ts;

Fails to set the ID.
