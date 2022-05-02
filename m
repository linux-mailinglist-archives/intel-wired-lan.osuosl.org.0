Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FB4517349
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 May 2022 17:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B92A4415BA;
	Mon,  2 May 2022 15:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ga8e-7lX_YrP; Mon,  2 May 2022 15:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90947415B7;
	Mon,  2 May 2022 15:51:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C13741BF39E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 15:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AEF6682BF4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 15:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pRWGFhbmrXHa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 May 2022 15:51:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF1CA82BE5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 15:51:19 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aeb05.dynamic.kabel-deutschland.de
 [95.90.235.5])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4439161EA1929;
 Mon,  2 May 2022 17:51:16 +0200 (CEST)
Message-ID: <1dc52831-b539-1add-c966-53e415ad7f04@molgen.mpg.de>
Date: Mon, 2 May 2022 17:51:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20220502131556.349753-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220502131556.349753-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Enable the GPT clock
 before sending message to the CSME
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


Thank you for your patch.

Am 02.05.22 um 15:15 schrieb Sasha Neftin:

You could remove the articles *the* from the summary to make it shorter.

> Enable the dynamic GPT clock. The clock is always ticking is the guarantee
> CSME receive the H2ME message and exit from the DMoff state.
> This clock cleared upon HW initialization (D3 -> D0 transition).

Please do not break the line, just because a sentence ends.

*is* cleared?

Please start the commit message by describing the problem, and also give 
instructions how to reproduce it.

> Fixes: 3e55d231716e ("e1000e: Add handshake with the CSME to support s0ix")
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index fa06f68c8c80..e29a718469ee 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6494,6 +6494,10 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
>   
>   	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
>   	    hw->mac.type >= e1000_pch_adp) {
> +		/* Keep the gpt_clk_enable_d clock for CSME*/

Missing space before the closing */.

Why is `gpt_clk_enable_d` spelled that way?

> +		mac_data = er32(FEXTNVM);
> +		mac_data |= BIT(3);
> +		ew32(FEXTNVM, mac_data);
>   		/* Request ME unconfigure the device from S0ix */
>   		mac_data = er32(H2ME);
>   		mac_data &= ~E1000_H2ME_START_DPG;


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
