Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F1DAB312B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 10:11:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8651060D88;
	Mon, 12 May 2025 08:11:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fdfDxd45p2kT; Mon, 12 May 2025 08:11:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C979C60D7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747037462;
	bh=nHayNfB6k+ddDHLRQyppSe34AJFiKX1kB3WnFRugkkM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IjDUL5wdBO4m4DnX06TYsjBgZpCNQhTS8Y4Ee36bheAr254L0xM1EGFUtYM7yRbwh
	 VikagLL0jw4zXrkiSrvbf62svkxbMcs2gqvXhlfHrWIov40ajVXEJCkiAQLKIlSW7t
	 /w4PchzS4Fd/rw9QoQlSd4jrx9nyGeMZDsOHNB4Uks1k+/Cdcy7YEEhE1iYypqdnDp
	 IYHtFYJ73AM0eTM6RSatmTi2bCXVk5wkfwU6So3aXPbYZ1vrblPMHdvZm0+tMF/Rpt
	 aGr7IJVg67cL4XNyKsMJAuR47sfEiiaHXO6BmoIk1jDctxzqFB2CcyGd4gUA1lIJ+b
	 2zBUpWP7bVDFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C979C60D7F;
	Mon, 12 May 2025 08:11:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 09DBD150
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 08:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE643409FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 08:11:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V_c6ekBkiN4J for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 08:11:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 35586409F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35586409F7
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 35586409F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 08:10:59 +0000 (UTC)
Received: from [192.168.2.107] (p57bd9455.dip0.t-ipconnect.de [87.189.148.85])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 83247601EBF0E;
 Mon, 12 May 2025 10:10:31 +0200 (CEST)
Message-ID: <4fdd9b80-ae0e-4445-9a15-3ff0be3569d2@molgen.mpg.de>
Date: Mon, 12 May 2025 10:10:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Anton Nadezhdin <anton.nadezhdin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, richardcochran@gmail.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
References: <20250512074721.4118376-1-anton.nadezhdin@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250512074721.4118376-1-anton.nadezhdin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice/ptp: Fix reporting of
 crosstimestamp
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

[Cc: +Thomas]

Dear Anton,


Thank you for your patch. For the summary, I’d suggest something like:

ice/ptp: Report crosstimestamp in ns


Am 12.05.25 um 09:47 schrieb Anton Nadezhdin:
> Set use_nsecs=true as timestamp is reported in ns. Lack of this result
> in smaller timestamp error window which case error during phc2sys

ca*u*se

> execution on some platforms:
> phc2sys[1768.256]: ioctl PTP_SYS_OFFSET_PRECISE: Invalid argument
> 
> Previously function convert_art_to_tsc was converting ts to the cycles
> instead of ns.
> 
> Testing hints (ethX is PF netdev):
> phc2sys -s ethX -c CLOCK_REALTIME  -O 37 -m

On what system with what hardware?

Does the program output anything?

> Fixes: d4bea547ebb57 (ice/ptp: Remove convert_art_to_tsc())
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 1fd1ae03eb90..11ed48a62b53 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2307,6 +2307,7 @@ static int ice_capture_crosststamp(ktime_t *device,
>   	ts = ((u64)ts_hi << 32) | ts_lo;
>   	system->cycles = ts;
>   	system->cs_id = CSID_X86_ART;
> +	system->use_nsecs = true;
>   
>   	/* Read Device source clock time */
>   	ts_lo = rd32(hw, cfg->dev_time_l[tmr_idx]);

Kind regards,

Paul
