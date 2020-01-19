Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEF2141D79
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Jan 2020 12:06:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC4E7203DE;
	Sun, 19 Jan 2020 11:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KLFtxm9HW7bk; Sun, 19 Jan 2020 11:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D5388203DA;
	Sun, 19 Jan 2020 11:06:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DC6E1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 11:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A024C81B42
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 11:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WUG8gA00U6Av for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Jan 2020 11:06:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 810BE8750A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 11:06:38 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5af129.dynamic.kabel-deutschland.de
 [95.90.241.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D439820225BF9;
 Sun, 19 Jan 2020 12:06:36 +0100 (CET)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20200119084447.34074-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <7d63a06f-a5d3-77ae-465d-55c1012ce2a5@molgen.mpg.de>
Date: Sun, 19 Jan 2020 12:06:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200119084447.34074-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Fix the typo in the comment
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sasha,


Thank you for the patch. The article *the* could be removed from the 
commit message summary.

 > Fix typo in comment

Am 19.01.20 um 09:44 schrieb Sasha Neftin:
> Fix the typo and comment to be correspond to the i225 device

*to correspond*

Please mention *why* the FIXME is removed. The comment still says, they 
need to be confirmed. If the values were confirmed in the mean-time, 
please document in the commit message by whom, and remove the whole comment.

> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 5d38d0faeced..6fb222e76293 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -112,7 +112,7 @@ extern char igc_driver_version[];
>   #define IGC_RX_HDR_LEN			IGC_RXBUFFER_256
>   
>   /* Transmit and receive latency (for PTP timestamps) */
> -/* FIXME: These values were estimated using the ones that i210 has as
> +/* These values were estimated using the ones that i225 has as
>    * basis, they seem to provide good numbers with ptp4l/phc2sys, but we
>    * need to confirm them.
>    */


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
