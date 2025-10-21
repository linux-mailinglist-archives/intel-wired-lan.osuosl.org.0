Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8306EBF4BA5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Oct 2025 08:40:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EA3980DA4;
	Tue, 21 Oct 2025 06:40:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SzJQrayHycwc; Tue, 21 Oct 2025 06:40:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D09D80DA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761028835;
	bh=9FOWEGqlhDOAXvhsm3ip/VUOdY71xJOrmUA+MTJTubU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vSzDfVAOqodvetaVRZCzkq8GciiXI81GlYnW879C3gckhI0RxdZ6eDFvL69jyg2B/
	 XUdWGrGu17z6nBV5LkBPix1Fa3ruzU2qQO//0zBvuhGjb55a4tvZRU7vwsgppfUe1B
	 LZrTZb/j2uB7My79wMTSn2NzA18uZJiWQ1PM81zl/tUcFueLAI2oYcnv6wpBS2EKtr
	 2FBdJHAusx9aEc9+VeVbwXcKDUdTDxBNZp1eZYOubhuyLEWBHEvLwyp8IH41IeoElj
	 ItN7bF914aIAQtaYK3kst2+qTxbyJ1nG0SR3a1EC58iyVs80x4tWTjustisuNy38v7
	 xKGty7gnLztXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D09D80DA5;
	Tue, 21 Oct 2025 06:40:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B59943F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 06:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 483D280DA3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 06:40:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eDe6UP1K7JFy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 06:40:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8FB1A80DA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FB1A80DA2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FB1A80DA2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 06:40:30 +0000 (UTC)
Received: from [134.104.51.229] (unknown [134.104.51.229])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 42B6D6020D519;
 Tue, 21 Oct 2025 08:40:06 +0200 (CEST)
Message-ID: <92097ccf-e54d-404f-866c-8d6dc808e498@molgen.mpg.de>
Date: Tue, 21 Oct 2025 08:39:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 vadim.fedorenko@linux.dev
References: <20251020100216.4144401-1-grzegorz.nitka@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251020100216.4144401-1-grzegorz.nitka@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix PTP cleanup on
 driver removal in error path
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

Dear Grzegorz,


Am 20.10.25 um 12:02 schrieb Grzegorz Nitka:
> Improve the cleanup on releasing PTP resources in error path.
> The error case might happen either at the driver probe and PTP
> feature initialization or on PTP restart (errors in reset handling, NVM
> update etc). In both cases, calls to PF PTP cleanup (ice_ptp_cleanup_pf
> function) and 'ps_lock' mutex deinitialization were missed.
> Additionally, ptp clock was not unregistered in the latter case.
> 
> Keep PTP state as 'uninitialized' on init to distinguish between error
> scenarios and to avoid resource release duplication at driver removal.
> 
> The consequence of missing ice_ptp_cleanup_pf call is the following call
> trace dumped when ice_adapter object is freed (port list is not empty,
> as it is required at this stage):
> 
> [  T93022] ------------[ cut here ]------------
> [  T93022] WARNING: CPU: 10 PID: 93022 at ice/ice_adapter.c:67 ice_adapter_put+0xef/0x100 [ice]
> ...
> [  T93022] RIP: 0010:ice_adapter_put+0xef/0x100 [ice]
> ...
> [  T93022] Call Trace:
> [  T93022]  <TASK>
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> [  T93022]  ? __warn.cold+0xb0/0x10e
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> [  T93022]  ? report_bug+0xd8/0x150
> [  T93022]  ? handle_bug+0xe9/0x110
> [  T93022]  ? exc_invalid_op+0x17/0x70
> [  T93022]  ? asm_exc_invalid_op+0x1a/0x20
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> [  T93022]  pci_device_remove+0x42/0xb0
> [  T93022]  device_release_driver_internal+0x19f/0x200
> [  T93022]  driver_detach+0x48/0x90
> [  T93022]  bus_remove_driver+0x70/0xf0
> [  T93022]  pci_unregister_driver+0x42/0xb0
> [  T93022]  ice_module_exit+0x10/0xdb0 [ice 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> ...
> [  T93022] ---[ end trace 0000000000000000 ]---
> [  T93022] ice: module unloaded
> 
> Fixes: e800654e85b5 ("ice: Use ice_adapter for PTP shared data instead of auxdev")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2:
>   - rebased
>   - complete full cleanup if failure in PTP intialization path (no need
>     to do a cleanup on PTP release then) and added a comment with clarification
>     why keeping PTP_UNINIT state on failure at init
>   - setting ptp->clock to NULL explicitly in error path
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 22 +++++++++++++++++++---
>   1 file changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index fb0f6365a6d6..13b73f835f06 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -3246,7 +3246,7 @@ void ice_ptp_init(struct ice_pf *pf)
>   
>   	err = ice_ptp_init_port(pf, &ptp->port);
>   	if (err)
> -		goto err_exit;
> +		goto err_clean_pf;
>   
>   	/* Start the PHY timestamping block */
>   	ice_ptp_reset_phy_timestamping(pf);
> @@ -3263,13 +3263,19 @@ void ice_ptp_init(struct ice_pf *pf)
>   	dev_info(ice_pf_to_dev(pf), "PTP init successful\n");
>   	return;
>   
> +err_clean_pf:
> +	mutex_destroy(&ptp->port.ps_lock);
> +	ice_ptp_cleanup_pf(pf);
>   err_exit:
>   	/* If we registered a PTP clock, release it */
>   	if (pf->ptp.clock) {
>   		ptp_clock_unregister(ptp->clock);
>   		pf->ptp.clock = NULL;
>   	}
> -	ptp->state = ICE_PTP_ERROR;
> +	/* Keep ICE_PTP_UNINIT state to avoid ambiguity at driver unload
> +	 * and to avoid duplicated resources release.
> +	 */
> +	ptp->state = ICE_PTP_UNINIT;
>   	dev_err(ice_pf_to_dev(pf), "PTP failed %d\n", err);
>   }
>   
> @@ -3282,9 +3288,19 @@ void ice_ptp_init(struct ice_pf *pf)
>    */
>   void ice_ptp_release(struct ice_pf *pf)
>   {
> -	if (pf->ptp.state != ICE_PTP_READY)
> +	if (pf->ptp.state == ICE_PTP_UNINIT)
>   		return;
>   
> +	if (pf->ptp.state != ICE_PTP_READY) {
> +		ice_ptp_cleanup_pf(pf);
> +		mutex_destroy(&pf->ptp.port.ps_lock);
> +		if (pf->ptp.clock) {
> +			ptp_clock_unregister(pf->ptp.clock);
> +			pf->ptp.clock = NULL;
> +		}
> +		return;
> +	}
> +
>   	pf->ptp.state = ICE_PTP_UNINIT;
>   
>   	/* Disable timestamping for both Tx and Rx */

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
