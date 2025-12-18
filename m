Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE97CCDC11
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 23:06:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 364BD81514;
	Thu, 18 Dec 2025 22:06:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Gtqjoe50pLI; Thu, 18 Dec 2025 22:06:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B213581D3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766095584;
	bh=/qQANI2x5jTUri1BxbiX6Q0vquMmRUu/VD0mUrP/GSk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bmMbw3qOv132BRoW2QsUBoxoeOyRT38k3fJJ8ynmXFFZmBPsIrcxRxZoRmljfHAA3
	 LFsnM54V3fyt1kMlId2uPaGu5dOaczAv6rVDXjpSHDPmPF86/Wjll/zs6c+U83EwPr
	 jysYCgLNtzGtQMRUXlCdzO9/Mu3UrlisQnYul4mkhpNjPdRc2P+FuR4ys54k9MDawz
	 yAaWG/ENh9Ocq9HWmajKXAD9OLcDDUs0hyVC5Vs+n8t0tMvmT/Y7JD8Pt4UNhFNZyV
	 1+Tvlx5aQKr4Z+tHjJDqhBjdDpMBKHgj4WZF1oNdYpugpN3LC/lhIcyfVu9CR51Z64
	 LuZA8APm+DWGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B213581D3A;
	Thu, 18 Dec 2025 22:06:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 647AC1A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 22:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B08340132
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 22:06:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XdD3zczC4fhf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 22:06:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 86451400A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86451400A0
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86451400A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 22:06:18 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af132.dynamic.kabel-deutschland.de
 [95.90.241.50])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D924461CC3FF9;
 Thu, 18 Dec 2025 23:06:02 +0100 (CET)
Message-ID: <d15b8796-5ac2-4284-bc34-9dbb34a0e02a@molgen.mpg.de>
Date: Thu, 18 Dec 2025 23:05:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251218133653.343631-1-paul.greenwalt@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251218133653.343631-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: add missing
 ice_deinit_hw() in devlink reinit path
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

Dear Paul,


Thank you for the patch.

Am 18.12.25 um 14:36 schrieb Paul Greenwalt:
> devlink-reload results in ice_init_hw failed error, and then removing
> the ice driver causes a NULL pointer dereference.
> 
> [  +0.102213] ice 0000:ca:00.0: ice_init_hw failed: -16
> ...
> [  +0.000001] Call Trace:
> [  +0.000003]  <TASK>
> [  +0.000006]  ice_unload+0x8f/0x100 [ice]
> [  +0.000081]  ice_remove+0xba/0x300 [ice]
> 
> Commit 1390b8b3d2be ("ice: remove duplicate call to ice_deinit_hw() on
> error paths") removed ice_deinit_hw() from ice_deinit_dev(). As a result
> ice_devlink_reinit_down() no longer calls ice_deinit_hw(), but
> ice_devlink_reinit_up() still calls ice_init_hw(). Since the control
> queues are not uninitialized, ice_init_hw() fails with -EBUSY.
> 
> Add ice_deinit_hw() to ice_devlink_reinit_down() to correspond with
> ice_init_hw() in ice_devlink_reinit_up().
> 
> Fixes: 1390b8b3d2be ("ice: remove duplicate call to ice_deinit_hw() on error paths")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/devlink/devlink.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index d88b7f3fd1f9..2ef39cc70c21 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -460,6 +460,7 @@ static void ice_devlink_reinit_down(struct ice_pf *pf)
>   	ice_vsi_decfg(ice_get_main_vsi(pf));
>   	rtnl_unlock();
>   	ice_deinit_pf(pf);
> +	ice_deinit_hw(&pf->hw);
>   	ice_deinit_dev(pf);
>   }


Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
