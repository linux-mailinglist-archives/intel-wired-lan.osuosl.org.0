Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E1F376988
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 May 2021 19:35:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B2064197C;
	Fri,  7 May 2021 17:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mHYglxXGX5sh; Fri,  7 May 2021 17:35:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CE124019B;
	Fri,  7 May 2021 17:35:53 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1C6A1BF30A
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 17:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CFB9F4055D
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 17:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nX0h737V-qxj for <intel-wired-lan@osuosl.org>;
 Fri,  7 May 2021 17:35:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA1C540375
 for <intel-wired-lan@osuosl.org>; Fri,  7 May 2021 17:35:46 +0000 (UTC)
IronPort-SDR: gR+3lC67DKdLHdRbSxeZzDjly3vJ6GLQHJwRwQO7vFvLnoqZZY07TEqcm859SDFMEGQK56eWgt
 sofF3gK4WSyg==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="284234173"
X-IronPort-AV: E=Sophos;i="5.82,281,1613462400"; d="scan'208";a="284234173"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 10:35:46 -0700
IronPort-SDR: RDOka2sStIjkRQZWQZwX7QUYwa48h2FAyOCYryIxtC3mv4ms2siYMUz7oxg1UPRgV19OfwN5EB
 y0e10Ho28WHg==
X-IronPort-AV: E=Sophos;i="5.82,281,1613462400"; d="scan'208";a="391158939"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.212.189.246])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 10:35:45 -0700
Date: Fri, 7 May 2021 10:35:44 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Alex Sergeev <asergeev@carbonrobotics.com>
Message-ID: <20210507103544.000047ed@intel.com>
In-Reply-To: <CAAE-T7+Q__0ONDwzm89uufc6WKrmiCsUPvW_ARhVzaRwv93JFA@mail.gmail.com>
References: <CAAE-T7+Q__0ONDwzm89uufc6WKrmiCsUPvW_ARhVzaRwv93JFA@mail.gmail.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] X710-T4L: 5Gb support for IEEE1588
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alex Sergeev wrote:

> Hello,
> 
> I got forwarded here by folks at e1000-devel@.
> 
> We have tried to use PTP with X710-T4L and 5Gb link, and encountered
> clockcheck problem in phc2sys:
> 
> Apr 30 22:57:36 budtb phc2sys[5940]: [50.569] clockcheck: clock jumped
> forward or running faster than expected!
> 
> After further code examination, it turned out that 5Gb case is not handled
> in i40e_ptp.c
> 
> Here's the naive version of the patch that fixed the problem for us:
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index f1f6fc3744e9..5747b652ee9e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -12,12 +12,13 @@
>   *
>   * Much like the 82599, the update period is dependent upon the link speed:
>   * At 40Gb link or no link, the period is 1.6ns.
> - * At 10Gb link, the period is multiplied by 2. (3.2ns)
> + * At 5Gb or 10Gb link, the period is multiplied by 2. (3.2ns)
>   * At 1Gb link, the period is multiplied by 20. (32ns)
>   * 1588 functionality is not supported at 100Mbps.
>   */
>  #define I40E_PTP_40GB_INCVAL 0x0199999999ULL
>  #define I40E_PTP_10GB_INCVAL_MULT 2
> +#define I40E_PTP_5GB_INCVAL_MULT    2
>  #define I40E_PTP_1GB_INCVAL_MULT 20
> 
>  #define I40E_PRTTSYN_CTL1_TSYNTYPE_V1
>  BIT(I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
> @@ -465,6 +466,9 @@ void i40e_ptp_set_increment(struct i40e_pf *pf)
>   case I40E_LINK_SPEED_10GB:
>       mult = I40E_PTP_10GB_INCVAL_MULT;
>       break;
> + case I40E_LINK_SPEED_5GB:
> +     mult = I40E_PTP_5GB_INCVAL_MULT;
> +     break;
>   case I40E_LINK_SPEED_1GB:
>       mult = I40E_PTP_1GB_INCVAL_MULT;
>       break;
> 
> What's the process to get it applied upstream?

Hi Alex, that's totally a bug, I've filed an internal bug and we'll be
providing a patch for this problem shortly.

We'll be sure to credit you for the work to find the bug and proposal
for the fix!

If you wish to have the patch be authored by you, you're welcome to
resend to this list with a correctly formatted git patch from
git-format-patch and git-send-email. If you do nothing, we'll just take
care of it. :-)

Thanks for the report and the fix!
Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
