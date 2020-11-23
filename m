Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6352C0BF4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Nov 2020 14:57:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3A32B20467;
	Mon, 23 Nov 2020 13:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tq7tHH8PVwIo; Mon, 23 Nov 2020 13:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8ADE0204B6;
	Mon, 23 Nov 2020 13:57:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C6F11BF83E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 13:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3EAB385AA1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 13:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FkR96--3Hv3G for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Nov 2020 13:57:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B1B984F61
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 13:57:22 +0000 (UTC)
IronPort-SDR: w3hw2QQkkrv+z2+Ks7u225t60jPmctZy4EJ+y+eOnOlLY4UHaOj7Dx06SOjahk7OaRmx1WS9GY
 SjLpkq1LFYKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="168256705"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="168256705"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 05:57:22 -0800
IronPort-SDR: iq1ySHqiWGxH2V42YfOlH3VtIJ+pR9gbChD7zsYOMLtuuqVRe6A97xvOiNicK34XG1U+Qz5PgH
 Tq/HHsqqIb4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="332191018"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga006.jf.intel.com with ESMTP; 23 Nov 2020 05:57:20 -0800
Date: Mon, 23 Nov 2020 14:49:34 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Message-ID: <20201123134934.GA6202@ranger.igk.intel.com>
References: <20201123134656.14911-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201123134656.14911-1-mateusz.palczewski@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: allow controlling PTP
 external clock features
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 23, 2020 at 01:46:56PM +0000, Mateusz Palczewski wrote:
> From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> 
> Provide information what functions are supported by PTP pins and allow
> controlling them.
> Implemented in i40e_ptp_verify() and i40e_pps_configure().
> Previously it was not possible to control PTP external clock features.

Why you target that to 'net' tree? it's not a bug fix if you ask me, but a
feature implementation.

> 
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index 26f583f..6182d42 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -241,7 +241,15 @@ static void i40_ptp_reset_timing_events(struct i40e_pf *pf)
>  static int i40e_ptp_verify(struct ptp_clock_info *ptp, unsigned int pin,
>  			   enum ptp_pin_function func, unsigned int chan)

I don't see i40e_ptp_verify in the upstream code. Am I missing something?

It also looks to me that you only make use of 1 out of 4 functions args.
This will produce compiler warnings.

>  {
> -	/* TODO: implement pin checking */
> +	switch (func) {
> +	case PTP_PF_NONE:
> +	case PTP_PF_EXTTS:
> +	case PTP_PF_PEROUT:
> +		break;
> +	case PTP_PF_PHYSYNC:
> +		return -EOPNOTSUPP;
> +	}
> +
>  	return 0;
>  }
>  
> @@ -486,7 +494,11 @@ static int i40e_pps_configure(struct ptp_clock_info *ptp,
>  			      struct ptp_clock_request *rq,
>  			      int on)
>  {

Again, 'rq' is unused. Also it looks like it could return void.

> -	/* TODO: implement PPS events */
> +	struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
> +
> +	if (!!on)
> +		i40e_ptp_set_1pps_signal_hw(pf);
> +
>  	return 0;
>  }
>  
> -- 
> 2.17.1
> 
> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
> Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
>  
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
