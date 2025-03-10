Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1581AA5ADF1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 00:35:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68A7D81F5C;
	Mon, 10 Mar 2025 23:35:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p7qbrmVdq7WQ; Mon, 10 Mar 2025 23:35:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A858081F60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741649724;
	bh=1UaeYQ49HJpHXYWhcLyDhDKqa5x+EHwmZ+gZJBiTCA8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=70pnVz4+kHe5o1bYysTmVeDmnaiOI08BmdpmzeR5wWUJTLcM9ne/gbYcPiK3W8c0W
	 qUjXHEBMBHTCequzRfOebMIcaaYGqIRyUB1BptvZExkCQuuG9NMGIylpKBPnod/h3F
	 SlhbJyIuRaROElFVN+ZiTh6GFxZD5lUTWs/tsr4V9rxptZKCoGIDUdQdJwgVATQOWQ
	 By3o5MJSXY2uwzRqpy2BwFEtY4UVWEmyjbPpot4Jv2tPp6aVY5FfcIgCQR71t33rOH
	 EX+wNQshnUwJqWP90DNE7PkXUxLr3GrmO7pTYKuM0p9Ny3vxd9+hrwxDhjt13bxYL3
	 VF0MjYNzHPjrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A858081F60;
	Mon, 10 Mar 2025 23:35:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1657C94A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 23:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 03E8B40A99
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 23:35:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WO0usQqGJRBA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 23:35:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b4; helo=out-180.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B3F49401FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3F49401FB
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b4])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3F49401FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 23:35:21 +0000 (UTC)
Message-ID: <7272e5c8-4205-40fd-a70a-02fa04d52fbe@linux.dev>
Date: Mon, 10 Mar 2025 23:35:11 +0000
MIME-Version: 1.0
To: Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>, Ruud Bos <kernel.hbk@gmail.com>,
 Paul Barker <paul.barker.ct@bp.renesas.com>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 UNGLinuxDriver@microchip.com, Raju Lakkaraju <Raju.Lakkaraju@microchip.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Lasse Johnsen <l@ssejohnsen.me>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
 <20250310-jk-net-fixes-supported-extts-flags-v1-5-854ffb5f3a96@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250310-jk-net-fixes-supported-extts-flags-v1-5-854ffb5f3a96@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1741649717;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1UaeYQ49HJpHXYWhcLyDhDKqa5x+EHwmZ+gZJBiTCA8=;
 b=fd/x3tMHVeq4mGipakiqpqk9MtleG78tcKb6U3DERxE7ReDb6SwtVFR+vH5T3lfV8oMvsE
 okBPo8vmhseYKEwdW6jAPvFXMZz9BphO9HHtOxhzOdibRAl4jxQqi28XlYXg3gdMElpgGx
 U5mXnBlIL+gDX9WNcsCC92vzECxgKsI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=fd/x3tMH
Subject: Re: [Intel-wired-lan] [PATCH net 5/5] ptp: ocp: reject unsupported
 periodic output flags
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

On 10/03/2025 22:16, Jacob Keller wrote:
> The ptp_ocp_signal_from_perout() function supports PTP_PEROUT_DUTY_CYCLE
> and PTP_PEROUT_PHASE. It does not support PTP_PEROUT_ONE_SHOT, but does not
> reject a request with such an unsupported flag.
> 
> Add the appropriate check to ensure that unsupported requests are rejected
> both for PTP_PEROUT_ONE_SHOT as well as any future flags.
> 
> Fixes: 1aa66a3a135a ("ptp: ocp: Program the signal generators via PTP_CLK_REQ_PEROUT")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/ptp/ptp_ocp.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
> index b651087f426f50a73229ca57634fc5d6912e0a87..4a87af0980d695a9ab1b23e2544f620759ccb892 100644
> --- a/drivers/ptp/ptp_ocp.c
> +++ b/drivers/ptp/ptp_ocp.c
> @@ -2090,6 +2090,10 @@ ptp_ocp_signal_from_perout(struct ptp_ocp *bp, int gen,
>   {
>   	struct ptp_ocp_signal s = { };
>   
> +	if (req->flags & ~(PTP_PEROUT_DUTY_CYCLE |
> +			   PTP_PEROUT_PHASE))
> +		return -EOPNOTSUPP;
> +
>   	s.polarity = bp->signal[gen].polarity;
>   	s.period = ktime_set(req->period.sec, req->period.nsec);
>   	if (!s.period)
> 

Thanks,
Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
