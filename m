Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9098356B8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jan 2024 17:47:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BDAB4059B;
	Sun, 21 Jan 2024 16:47:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BDAB4059B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705855676;
	bh=dyO3JUzis9ZElfLLbXz9GQZO+zZyySJsK9K+MOe1a7U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2TgSxmypnSy4p0WJiZh+B0SH+U+Tt+jFkLpOXpW8+k7/9qtbfrStC8VIx2ha7gclK
	 u3a2/lF+/DbG8O6OqHVAIdkonBKm0o7W3MGv2t1ZeWR34nDL/BJ7nQ+lSZgp2WI2Xc
	 vzUJTUs8AAdqww8CD7/xRnWB5qESfVBM9RZPSUXj15dxGUiKwwaPQ3RkMNwg35Ctu3
	 Ex67E3K9GDprRclPKEiADkIv4yxPVxWrOJ+Iu76er3slcQVu2Hr548cw5BLWoMLsSa
	 5zumAM+jua0WQEBCtv+hVzHqJwfNfrduE1JVhAYABxmkNOuIb4rvm+3Zp5gy2THJKL
	 UzJ4zkUZrEPaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LuS87OKWCnGF; Sun, 21 Jan 2024 16:47:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5D8640597;
	Sun, 21 Jan 2024 16:47:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5D8640597
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 672801BF403
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jan 2024 16:47:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4090740597
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jan 2024 16:47:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4090740597
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cci9Rftzpnyr for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Jan 2024 16:47:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6EF04057C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jan 2024 16:47:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6EF04057C
X-IronPort-AV: E=McAfee;i="6600,9927,10960"; a="7721142"
X-IronPort-AV: E=Sophos;i="6.05,210,1701158400"; 
   d="scan'208";a="7721142"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2024 08:47:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,210,1701158400"; d="scan'208";a="27158661"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.245.193.53])
 ([10.245.193.53])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2024 08:47:45 -0800
Message-ID: <5e2dfd22-9035-4976-ab07-2d0ecd6dee90@linux.intel.com>
Date: Sun, 21 Jan 2024 18:47:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Sasha Neftin <sasha.neftin@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
References: <20231212020552.2217331-1-jacob.e.keller@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20231212020552.2217331-1-jacob.e.keller@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705855669; x=1737391669;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=5zE0K7s8q7/6GYmC3fPBusPTNYQ2lTfedMsUkMWTx8M=;
 b=AB9eLjW8CdZyDrvWeqp9kQzl263b9X+0mBeOWqNkr03IlA27VY/nljIp
 O3R6J00WANeauTfpdc0GnnLXeb074V+s818iV/gH1rP1k//IzSR9au/3c
 Wt0GShscBEjmrVx+s7Sgi9iyLmWynKxJLxMBSVtdcgSb3i2NoCo2AiOjB
 s3zOrmrrlG2zb8loGhfqGnGtaG2n2Zz3nm+T81P7oV+bL3QeZWA/eaOWL
 M63NB3BgWsRq3wZJYH6Xg5fXZD9+8xktPiu8PuuLpP+uozb+BYDnkHogz
 iS/m8BA3Xo5lyS3PY3Do8iHWb6xJbxZkcvj5TNM/Pq6eT5dOu1WSJ0GnY
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AB9eLjW8
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] e1000e: correct maximum
 frequency adjustment values
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
Cc: Trey Harrison <harrisondigitalmedia@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/12/2023 04:05, Jacob Keller wrote:
> The e1000e driver supports hardware with a variety of different clock
> speeds, and thus a variety of different increment values used for
> programming its PTP hardware clock.
> 
> The values currently programmed in e1000e_ptp_init are incorrect. In
> particular, only two maximum adjustments are used: 24000000 - 1, and
> 600000000 - 1. These were originally intended to be used with the 96 MHz
> clock and the 25 MHz clock.
> 
> Both of these values are actually slightly too high. For the 96 MHz clock,
> the actual maximum value that can safely be programmed is 23,999,938. For
> the 25 MHz clock, the maximum value is 599,999,904.
> 
> Worse, several devices use a 24 MHz clock or a 38.4 MHz clock. These parts
> are incorrectly assigned one of either the 24million or 600million values.
> For the 24 MHz clock, this is not a significant issue: its current
> increment value can support an adjustment up to 7billion in the positive
> direction. However, the 38.4 KHz clock uses an increment value which can
> only support up to 230,769,157 before it starts overflowing.
> 
> To understand where these values come from, consider that frequency
> adjustments have the form of:
> 
> new_incval = base_incval + (base_incval * adjustment) / (unit of adjustment)
> 
> The maximum adjustment is reported in terms of parts per billion:
> new_incval = base_incval + (base_incval * adjustment) / 1 billion
> 
> The largest possible adjustment is thus given by the following:
> max_incval = base_incval + (base_incval * max_adj) / 1 billion
> 
> Re-arranging to solve for max_adj:
> max_adj = (max_incval - base_incval) * 1 billion / base_incval
> 
> We also need to ensure that negative adjustments cannot underflow. This can
> be achieved simply by ensuring max_adj is always less than 1 billion.
> 
> Introduce new macros in e1000.h codifying the maximum adjustment in PPB for
> each frequency given its associated increment values. Also clarify where
> these values come from by commenting about the above equations.
> 
> Replace the switch statement in e1000e_ptp_init with one which mirrors the
> increment value switch statement from e1000e_get_base_timinica. For each
> device, assign the appropriate maximum adjustment based on its frequency.
> Some parts can have one of two frequency modes as determined by
> E1000_TSYNCRXCTL_SYSCFI.
> 
> Since the new flow directly matches the assignments in
> e1000e_get_base_timinca, and uses well defined macro names, it is much
> easier to verify that the resulting maximum adjustments are correct. It
> also avoids difficult to parse construction such as the "hw->mac.type <
> e1000_phc_lpt", and the use of fallthrough which was especially confusing
> when combined with a conditional block.
> 
> Note that I believe the current increment value configuration used for
> 24MHz clocks is sub-par, as it leaves at least 3 extra bits available in
> the INCVALUE register. However, fixing that requires more careful review of
> the clock rate and associated values.
> 
> Reported-by: Trey Harrison <harrisondigitalmedia@gmail.com>
> Fixes: 68fe1d5da548 ("e1000e: Add Support for 38.4MHZ frequency")
> Fixes: d89777bf0e42 ("e1000e: add support for IEEE-1588 PTP")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Sasha, here's a better solution to what you proposed at [1], which fixes the
> issues I reported. It fixes the 24million and 600 million values, fixes the
> case statement so that its easier to follow, and introduces macros to avoid
> the confusion of the magic numbers.
> 
> The 24m and 600m max values appear to have originated all the way back when
> the driver first introduced the PTP support. I suspect no one directly
> tested whether such a large adjustment would behave correctly. They would
> only come up in normal practice rarely (such as if ptp4l when configured to
> avoid stepping the clock and only perform frequency slewing, and the remote
> clock had a large jump occur).
> 
> [1]: https://lore.kernel.org/intel-wired-lan/20231209170753.168989-1-sasha.neftin@intel.com/
> 
>   drivers/net/ethernet/intel/e1000e/e1000.h | 20 ++++++++++++++++++++
>   drivers/net/ethernet/intel/e1000e/ptp.c   | 22 +++++++++++++++-------
>   2 files changed, 35 insertions(+), 7 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
