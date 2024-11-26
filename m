Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3D89D95DA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 11:53:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 514E084E47;
	Tue, 26 Nov 2024 10:53:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iOZ27mGUxKdF; Tue, 26 Nov 2024 10:53:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D2DF84E31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732618422;
	bh=KWXbt5Y8zyT0zghvRkbFbe7l6XJSrKpV0Tvhz6Tn3Tw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=62CSOtyMKiAlPUsfSn+P47GYmHuZBcqM4dYw3xvyjYPX0O4LtPzDRYb3GSe65u9sE
	 Vle3MRLx1sh28xl4lJIio33K7zUyBnXu9n9PLZXmNelMpL/Zi0gx/u3Z5kXYLdvA0f
	 pl0uw7ffS1S3Pk4YGXjr34hdap0kl3qdHLvZlAo6jPsr+fKOif4S9tOANGw9DPhkQs
	 mpwgbu/Ma362JaLzKqas3rz8cdcpqRQwPDaUxTSvnH76upWXGDzcrZXmGY3MyJV/Y9
	 HEkiEypQXkcHI7k0KOabr0/KoSv+L4beIQ11RzRxKPRSSk2NYkQ3mPHh2c3P9FQsNp
	 WImABphXwh7wQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D2DF84E31;
	Tue, 26 Nov 2024 10:53:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 934011DA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 10:53:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73F0240198
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 10:53:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PS2ixtmHUkbB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 10:53:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2396D400DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2396D400DA
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2396D400DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 10:53:37 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8562861E6477C;
 Tue, 26 Nov 2024 11:53:22 +0100 (CET)
Message-ID: <b1d2b8a5-1dae-4247-8fb7-1b73ee0a89ee@molgen.mpg.de>
Date: Tue, 26 Nov 2024 11:53:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Milena Olech <milena.olech@intel.com>, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com
References: <20241126102311.344972-1-przemyslaw.korba@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241126102311.344972-1-przemyslaw.korba@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect PHY
 settings for 100 GB/s
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

Dear Przemyslaw,



Thank you for your patch.

Am 26.11.24 um 11:23 schrieb Przemyslaw Korba:
> ptp4l application reports too high offset when ran on E823 device
> with a 100GB/s link. Those values cannot go under 100ns, like in a
> PTP working case when using 100 GB/s cable.
> This is due to incorrect frequency settings on the PHY clocks for
> 100 GB/s speed. Changes are introduced to align with the internal
> hardware documentation, and correctly initialize frequency in PHY

It’d be great if you added the documentation name.

> clocks with the frequency values that are in our HW spec.
> To reproduce the issue run ptp4l as a Time Receiver on E823 device,
> and observe the offset, which will never approach values seen
> in the PTP working case.

(I’d add a blank line between paragraphs.)

Also, I always like to see pastes from the commands you ran to reproduce 
this. It’s always good for comparison.

> Fixes: 3a7496234d17 ("ice: implement basic E822 PTP support")

Any idea, where the wrong values came from? Will your test be added to 
the test procedure?

> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp_consts.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
> index 6620642077bb..bdb1020147d1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
> @@ -761,9 +761,9 @@ const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD] = {
>   		/* rx_desk_rsgb_par */
>   		644531250, /* 644.53125 MHz Reed Solomon gearbox */
>   		/* tx_desk_rsgb_pcs */
> -		644531250, /* 644.53125 MHz Reed Solomon gearbox */
> +		390625000, /* 390.625 MHz Reed Solomon gearbox */
>   		/* rx_desk_rsgb_pcs */
> -		644531250, /* 644.53125 MHz Reed Solomon gearbox */
> +		390625000, /* 390.625 MHz Reed Solomon gearbox */
>   		/* tx_fixed_delay */
>   		1620,
>   		/* pmd_adj_divisor */

Kind regards,

Paul
