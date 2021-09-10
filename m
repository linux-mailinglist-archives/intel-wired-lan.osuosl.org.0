Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EB64067A7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Sep 2021 09:29:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5730B606AA;
	Fri, 10 Sep 2021 07:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w6lHN7fGuBim; Fri, 10 Sep 2021 07:29:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61DBF605DE;
	Fri, 10 Sep 2021 07:29:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0C561BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 07:28:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A495380E92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 07:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rf_4gm58o8BN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Sep 2021 07:28:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4497780E73
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 07:28:58 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae907.dynamic.kabel-deutschland.de
 [95.90.233.7])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A619C61E30BCC;
 Fri, 10 Sep 2021 09:28:54 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20210909174904.3765604-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <9cb08013-19f0-1c27-339e-63b3700c26f2@molgen.mpg.de>
Date: Fri, 10 Sep 2021 09:28:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210909174904.3765604-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Update the device ID
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
Cc: michael.edri@intel.com, nechamax.kraus@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sasha,


Thank you for the patch.


Am 09.09.21 um 19:49 schrieb Sasha Neftin:

Please mention the device in the commit message summary:

> igc: Update I226_k device ID


> Update device ID for the I226_K part.

Some background would be nice, where the old/wrong(?) ID came from, and 
where the new one is specified.


Kind regards,

Paul


> Fixes: bfa5e98c9de4 ("igc: Add new device ID")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_hw.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
> index 772fd06e93ac..587db7483f25 100644
> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
> @@ -22,9 +22,9 @@
>   #define IGC_DEV_ID_I220_V			0x15F7
>   #define IGC_DEV_ID_I225_K			0x3100
>   #define IGC_DEV_ID_I225_K2			0x3101
> +#define IGC_DEV_ID_I226_K			0x3102
>   #define IGC_DEV_ID_I225_LMVP			0x5502
>   #define IGC_DEV_ID_I226_LMVP			0x5503
> -#define IGC_DEV_ID_I226_K			0x5504
>   #define IGC_DEV_ID_I225_IT			0x0D9F
>   #define IGC_DEV_ID_I226_LM			0x125B
>   #define IGC_DEV_ID_I226_V			0x125C
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
