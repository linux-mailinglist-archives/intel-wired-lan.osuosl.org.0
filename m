Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5FC949F2A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 07:29:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0ED280E86;
	Wed,  7 Aug 2024 05:29:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wQ8xYucQtObw; Wed,  7 Aug 2024 05:29:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DBAA80E87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723008543;
	bh=ykXD696HGMeToLFTlskMx7VNTVjI0I53bv0MrbPxo/Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AFVW5+ktHU/9UgmDwxC9GdPjZwUkb9HphKrPUq4lKmVJYeJG6vmEk124XzHjKx5wl
	 ZPnk7NC8OTzgJwfJetQs3Z146s9r14Gm+HK+8JwI0GXTWkzPc8hPTavXt25UxSVEF1
	 ZaIeKOBYlwWEpXug/UESMHYQy7pzYKXizWf4kFnhC+eG6/hdvkxhaVbJTjuF+Ru58s
	 wcmmP4mI3dj4dIC3+GmPfuc++v9N3IgT2mtPmC5Eq5aydl/5hQQbi2TIzlFPf6z716
	 ycFGrvizo01I7xviYCj7iZdoSriXNkYUMOmtQIxfUt7ANcy85go377EvIRUQxSTpNO
	 +ErcyFMS/E4wQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DBAA80E87;
	Wed,  7 Aug 2024 05:29:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05A251BF36E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 05:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E66494022E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 05:29:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qrou_yg-YxPL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 05:28:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7EB444004A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EB444004A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7EB444004A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 05:28:57 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af7d2.dynamic.kabel-deutschland.de
 [95.90.247.210])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 78B0761E5FE01;
 Wed,  7 Aug 2024 07:28:41 +0200 (CEST)
Message-ID: <9a23f5ec-190c-4525-b2fb-e10fc55b60f6@molgen.mpg.de>
Date: Wed, 7 Aug 2024 07:28:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christopher S M Hall <christopher.s.hall@intel.com>
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
 <20240807003032.10300-5-christopher.s.hall@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240807003032.10300-5-christopher.s.hall@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 4/5] igc: Reduce retry
 count to a more reasonable number
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
Cc: david.zage@intel.com, vinschen@redhat.com, vinicius.gomes@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 rodrigo.cadore@l-acoustics.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Christopher,


Thank you for your patch.

In the summary, I’d add specific values:

igc: Reduce retry count to from 100 to reasonable 8


Am 07.08.24 um 02:30 schrieb christopher.s.hall@intel.com:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Setting the retry count to 8x is more than sufficient. 100x is unreasonable
>  and would indicate broken hardware/firmware.

I’d remove the leading space.

Is using a 100 causing so much more delay and debugging an issue is harder?

> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index fb885fcaa97c..f770e39650ef 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -1008,8 +1008,8 @@ static int igc_phc_get_syncdevicetime(ktime_t *device,
>   	u32 stat, t2_curr_h, t2_curr_l;
>   	struct igc_adapter *adapter = ctx;
>   	struct igc_hw *hw = &adapter->hw;
> -	int err, count = 100;
>   	ktime_t t1, t2_curr;
> +	int err, count = 8;

Is there data available that no more than 8 retries were needed?

>   	/* Doing this in a loop because in the event of a
>   	 * badly timed (ha!) system clock adjustment, we may


Kind regards,

Paul
