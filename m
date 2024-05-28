Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E51048D192D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 13:12:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 893B940545;
	Tue, 28 May 2024 11:12:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XrNYe3CC-msa; Tue, 28 May 2024 11:12:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E5F740544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716894773;
	bh=cLDLsxRWP15HQAKAMDFuS47eTToNKB06uYJPdjRM8Zc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bT2vv/OHgBs1Y8a+GIyDdX/Ln+jJs8PXhI0Je2Y6udAAmfDCDX0FcnmMamOBkNc+8
	 Zm5YH8Vur2P2j3D5pnAL2yHkECcrOYFCnF6EvtGFmKvJhaU1F/m+kn6Hpv5DyLvMiG
	 W+GnSS47objxF6PMn2t/BgVftzIEQ1GXb7c02GH/yYbMmaG8mKhbmwUVtpRanjz8Sb
	 Xyyblx8z05yRsI50rY+2wRS5I/rAHBnLx7lFdaX5m43i3LRO10U0r71fCxc/Grpq+d
	 ewbQfPJmBHTV+LjknzjHR5Qgp+8rG79ZwgvnfT7YLcTbf5SaTHkOxTprbFhK5Rxlht
	 EzFVOu3sazmOw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E5F740544;
	Tue, 28 May 2024 11:12:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 94D191D26CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E173405D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:12:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ph2WOgmE2PG2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 11:12:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 10075401D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10075401D2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10075401D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:12:47 +0000 (UTC)
Received: from [141.14.13.3] (g258.RadioFreeInternet.molgen.mpg.de
 [141.14.13.3])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9412061E5FE01;
 Tue, 28 May 2024 13:12:05 +0200 (CEST)
Message-ID: <88c6a5ee-1872-4c15-bef2-dcf3bc0b39fb@molgen.mpg.de>
Date: Tue, 28 May 2024 13:12:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ricky Wu <en-wei.wu@canonical.com>
References: <20240528100315.24290-1-en-wei.wu@canonical.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240528100315.24290-1-en-wei.wu@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] ice: irdma hardware init failed after
 suspend/resume
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
Cc: netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Ricky,


Thank you for your patch. Some minor nits. It’d be great if you made the 
summary about the action and not an issue description. Maybe:

Avoid IRQ collision to fix init failure on ACPI S3 resume

Am 28.05.24 um 12:03 schrieb Ricky Wu:
> A bug in https://bugzilla.kernel.org/show_bug.cgi?id=218906 describes
> that irdma would break and report hardware initialization failed after
> suspend/resume with Intel E810 NIC (tested on 6.9.0-rc5).
> 
> The problem is caused due to the collision between the irq numbers
> requested in irdma and the irq numbers requested in other drivers
> after suspend/resume.
> 
> The irq numbers used by irdma are derived from ice's ice_pf->msix_entries
> which stores mappings between MSI-X index and Linux interrupt number.
> It's supposed to be cleaned up when suspend and rebuilt in resume but
> it's not, causing irdma using the old irq numbers stored in the old
> ice_pf->msix_entries to request_irq() when resume. And eventually
> collide with other drivers.
> 
> This patch fixes this problem. On suspend, we call ice_deinit_rdma() to
> clean up the ice_pf->msix_entries (and free the MSI-X vectors used by
> irdma if we've dynamically allocated them). On Resume, we call

resume

> ice_init_rdma() to rebuild the ice_pf->msix_entries (and allocate the
> MSI-X vectors if we would like to dynamically allocate them).
> 
> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>

Please add a Link: tag.

If this was tested by somebody else, please also add a Tested-by: line.

> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index f60c022f7960..ec3cbadaa162 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5544,7 +5544,7 @@ static int ice_suspend(struct device *dev)
>   	 */
>   	disabled = ice_service_task_stop(pf);
>   
> -	ice_unplug_aux_dev(pf);
> +	ice_deinit_rdma(pf);
>   
>   	/* Already suspended?, then there is nothing to do */
>   	if (test_and_set_bit(ICE_SUSPENDED, pf->state)) {
> @@ -5624,6 +5624,10 @@ static int ice_resume(struct device *dev)
>   	if (ret)
>   		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
>   
> +	ret = ice_init_rdma(pf);
> +	if (ret)
> +		dev_err(dev, "Reinitialize RDMA during resume failed: %d\n", ret);
> +
>   	clear_bit(ICE_DOWN, pf->state);
>   	/* Now perform PF reset and rebuild */
>   	reset_type = ICE_RESET_PFR;

What effect does this have on resume time?


Kind regards,

Paul
