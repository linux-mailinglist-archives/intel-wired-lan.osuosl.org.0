Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D3214474A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jan 2020 23:26:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A6199868F9;
	Tue, 21 Jan 2020 22:25:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xDZ6qOsYcPFl; Tue, 21 Jan 2020 22:25:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D361D86914;
	Tue, 21 Jan 2020 22:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DED41BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2020 22:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5AD1C868F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2020 22:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eix2U997mVVl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jan 2020 22:25:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 17B3F868B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2020 22:25:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 14:25:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="427209798"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.26])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jan 2020 14:25:46 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <20200120061758.25650-1-sasha.neftin@intel.com>
References: <20200120061758.25650-1-sasha.neftin@intel.com>
Date: Tue, 21 Jan 2020 14:26:55 -0800
Message-ID: <87h80o30pc.fsf@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Fix the typo in comment
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

Sasha Neftin <sasha.neftin@intel.com> writes:

> Fix the typo and comment to correspond to the i225 device
> v1->v2:
> Address community comment
>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 5d38d0faeced..cb1362188c2a 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -112,7 +112,7 @@ extern char igc_driver_version[];
>  #define IGC_RX_HDR_LEN			IGC_RXBUFFER_256
>  
>  /* Transmit and receive latency (for PTP timestamps) */
> -/* FIXME: These values were estimated using the ones that i210 has as
> +/* FIXME: These values were estimated using the ones that i225 has as
>   * basis, they seem to provide good numbers with ptp4l/phc2sys, but we
>   * need to confirm them.
>   */

If you are sending this patch, it means that I couldn't explain myself
well enough. The idea of that comment was to point out that the
documentation doesn't provide an estimate of those values, so I used the
ones from the i210 datasheet.


Cheers,
--
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
