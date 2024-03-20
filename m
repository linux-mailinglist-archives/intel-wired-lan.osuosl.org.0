Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 687B7881A41
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 00:51:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E48582053;
	Wed, 20 Mar 2024 23:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i_9a9HxtMNsr; Wed, 20 Mar 2024 23:51:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99CEB82092
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710978697;
	bh=Iz2ToxHN+e6yQjvSIh0MPpo3jeX60xMKXSAyHFT2tCE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zEnu3iV1Z3JCk9mAOrxJlZx/Ol5b3eyVm7RV1TlH4cJcJ4ljqZuPAKnTBQrZhzCeK
	 p2ieXYPXuexV6CTYbEeDU4+zcg4YOoi4xahAIgX72uQ6dYBLsKzhb3VHbT0NVFw9dm
	 0bnJDymvZNOptFOtskHEIAZ8X+OkHUJNqrqwlILe8y7I/LVtfvriWS4W6bV04PHqmG
	 mLfktGzNyOauG6Nz7eh+dEIHQcRBo4qEmAwGcIBctmsV1Z4aCEdll8fpa9Vimj/PBl
	 gVEciysBDWRA7ejxfdRZQInmKiCcpKfkCXKIpktMPSTbw8vS0NzakxfTLL91bo0rcd
	 uJOL62vQ2JVVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99CEB82092;
	Wed, 20 Mar 2024 23:51:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 596AE1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:25:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 45B9081A95
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:25:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gN-r6l_gjpF0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 16:25:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=62.149.156.41;
 helo=smtpcmd0641.aruba.it; envelope-from=giometti@enneenne.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DD6B381447
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD6B381447
Received: from smtpcmd0641.aruba.it (smtpcmd0641.aruba.it [62.149.156.41])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD6B381447
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:25:25 +0000 (UTC)
Received: from [192.168.1.59] ([79.0.204.227])
 by Aruba Outgoing Smtp  with ESMTPSA
 id mydRrZKfJABX0myduraZxG; Wed, 20 Mar 2024 17:18:19 +0100
Message-ID: <7e268aa0-f999-48af-8188-9158fc61a8c2@enneenne.com>
Date: Wed, 20 Mar 2024 17:18:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: lakshmi.sowjanya.d@intel.com, tglx@linutronix.de, jstultz@google.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
 <20240319130547.4195-11-lakshmi.sowjanya.d@intel.com>
From: Rodolfo Giometti <giometti@enneenne.com>
In-Reply-To: <20240319130547.4195-11-lakshmi.sowjanya.d@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfNi53SUDrigdbafA9GBsqTqvM52X7RdKb2VN1nxiFbtXbh5YcINBQR4rU5BXna+feDNynxbJcMJajiRI4vbed/FlpHFMA77WSAOYTX6AQjR/ta1DYJOn
 dDdNiSOWoAraOsufMMsPfo69B+uZQhAa6QMeVlBNZFEQIRtiJKAO4cTXKT51M2LIazKucN8o3A6GZo2ETtp30EjTcXvd/GCrlv/7p12EFmFHmGGn6uOGiGsS
 Jmcp76+bagWjvobBkHEYc/WGGUsMif5iRwohuL5hbEOvwtnE4mxiywkQ21yn7Ugx/t7DU5GRRrGdKqhV5w8Z6JnrGaNElKGhm0dmiIKmi3PfuOTwaSFBiBzi
 /Y8ACyFN2gA4+iPyMoeUi0EyawZhqIDD7pD/tvnCHb6jM1DvqUoydiUtWUdVSC9EkgW+5+eUHxc3gyTGcK0zJTLLzRrbruSbQsth3wZj7pkwUzpGScNyJxSt
 ONcgOtr36HwTuEkvuIhkJcEjJ4ODHCBumXEGy+svEpDkQcHtclO1lNVMbHT7iXAVwcJ4T8mYLNOlXrxAPY3YXthLXY1QGR9tHKo0NlybiGeYAt+68ZSIfSWc
 9AHGKUbe+hnOG0IIUThIn1sWZpBGRxYwDF3QEHToJvkTrxa0fEM26jolw86JqyayKedzPS4boZV21w2rFDi5/Hqpc8G/sx26ripVyAzpjFOKuNuJnvzW2rL3
 gD6M9yqR7qWvTsTCuh+6HC7EghcTuwtoBMVpwk+g0pwAo675NdySZDh2Hl04azaOlP76skXrOoxJplHvf+pJAkOmQ1PTyOjq2eUkMqnADsr9VIiIO5SPkNmx
 NzVmpIOqVuzdReEkHEHlNHZquccMTi5kNFmppGtPvFuBnSxRxSXkD86OBef2YoH1APKk4wGg6GQFlNHIwozbgkwm1p7c7l3uUKINUD+tJdUqbpOnSInQQ6rX
 KES82y59243FOS6wLChS2E2pfTMu1brxzhDlHyoRwMMMBIeA7rnSTYsl/WriEcL3L8PI2SY031EKgxOxqECjp7uKTOqABX/oCM9Q8saGrdr9OBMTVpXpIENh
 eRrRat2V+cAvFNapga5vhiMSQOtj5gmfJea9OTxiYl4nSm5shfzhIUMudLBxydoyclthvQYPVipznQ==
X-Mailman-Approved-At: Wed, 20 Mar 2024 23:51:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=aruba.it; s=a1; 
 t=1710951499; bh=gyvF1IOsSNtV7DoTvXZKG2k2ZhsNRKW2d7JqAyYwi1M=;
 h=Date:MIME-Version:Subject:To:From:Content-Type;
 b=Cb+pOU2J8Aw6MULICnHrsOP4Vu0ugOjgLhTyHPXNblEf+7luegmZJ40Upu4t+CxQa
 a2P+bCjmnHch7OOZXS7xrWRxcooWiR9PxobAwft9jpGtZMoepArg5ziguejvHr3Km0
 0icQ8k2W+Ys9xMHFQu2a2OkHtYHSQx2RL+38AoXS+sfCZBltGpw9eHTMj9RGxcSc45
 dYgJxkk2qBUCEzzMJIgSzfpeSmsXvmhEp752r6wYG++cA09OzG3wiOJJ3Ir5PHA7Ur
 CzetCyMinj18glk7HPxfB3ZBQiQc9aNtbHQ1F0/utudyYZPrkGDiQakzZQ7AzqaXgS
 xgSftN5+/rHKw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enneenne.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=aruba.it header.i=@aruba.it header.a=rsa-sha256
 header.s=a1 header.b=Cb+pOU2J
Subject: Re: [Intel-wired-lan] [PATCH v5 10/11] Documentation: driver-api:
 pps: Add Intel Timed I/O PPS generator
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
 linux-doc@vger.kernel.org, netdev@vger.kernel.org, pandith.n@intel.com,
 x86@kernel.org, eddie.dong@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 mallikarjunappa.sangannavar@intel.com, basavaraj.goudar@intel.com,
 joabreu@synopsys.com, intel-wired-lan@lists.osuosl.org,
 mcoquelin.stm32@gmail.com, thejesh.reddy.t.r@intel.com, perex@perex.cz,
 anthony.l.nguyen@intel.com, andriy.shevchenko@linux.intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 19/03/24 14:05, lakshmi.sowjanya.d@intel.com wrote:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> 
> Add Intel Timed I/O PPS usage instructions.
> 
> Co-developed-by: Pandith N <pandith.n@intel.com>
> Signed-off-by: Pandith N <pandith.n@intel.com>
> Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Acked-by: Rodolfo Giometti <giometti@enneenne.com>

> ---
>   Documentation/driver-api/pps.rst | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
> 
> diff --git a/Documentation/driver-api/pps.rst b/Documentation/driver-api/pps.rst
> index 78dded03e5d8..52a6d5faf885 100644
> --- a/Documentation/driver-api/pps.rst
> +++ b/Documentation/driver-api/pps.rst
> @@ -246,3 +246,25 @@ delay between assert and clear edge as small as possible to reduce system
>   latencies. But if it is too small slave won't be able to capture clear edge
>   transition. The default of 30us should be good enough in most situations.
>   The delay can be selected using 'delay' pps_gen_parport module parameter.
> +
> +
> +Intel Timed I/O PPS signal generator
> +------------------------------------
> +
> +Intel Timed I/O is a high precision device, present on 2019 and newer Intel
> +CPUs, that can generate PPS signals.
> +
> +Timed I/O and system time are both driven by same hardware clock. The signal
> +is generated with a precision of ~20 nanoseconds. The generated PPS signal
> +is used to synchronize an external device with system clock. For example,
> +share your clock with a device that receives PPS signal, generated by
> +Timed I/O device. There are dedicated Timed I/O pins to deliver the PPS signal
> +to an external device.
> +
> +Usage of Intel Timed I/O as PPS generator:
> +
> +Start generating PPS signal::
> +        $echo 1 > /sys/devices/platform/INTCxxxx\:00/enable
> +
> +Stop generating PPS signal::
> +        $echo 0 > /sys/devices/platform/INTCxxxx\:00/enable

-- 
GNU/Linux Solutions                  e-mail: giometti@enneenne.com
Linux Device Driver                          giometti@linux.it
Embedded Systems                     phone:  +39 349 2432127
UNIX programming

