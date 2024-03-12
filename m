Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F4187910B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 10:36:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E3D681773;
	Tue, 12 Mar 2024 09:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xG9P9z7B7-Q3; Tue, 12 Mar 2024 09:36:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDF7F81767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710236165;
	bh=QIB5PQLyGwCy5bunWb85xzpXsAYmt9ZTxbl6bDq7sMo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jRt+oVwFu7DGVJ6DLUkYARSK1y67MRPbqjD5RRUg1mzGcV6kgP2B3lZ71u1TL5hyh
	 fbPIuNcoXuSNsa+0+JrseMWkJeAIJXBS9l4IjOQf7hmjLDTsE0V1zCKFr/o9B7bjtC
	 v1JDg93tMFLSshVHB0KhHFLh1ctuyyvYns/Sr0Wj6ukBLilVRLtWOJUQI5I20uWuvA
	 NvtWFOz2/SwrYYDJR7Kz2mDJgl2/XoZhVsBg85JpHwFEvWuqlYLITJb4+45jHyzFof
	 z0AcmpcaZeYVBOREHA1QJGIR2MKf2kdc0ucNWebH0TdmR28IcU/RPt9UkADJmfX5O1
	 wUWZbD1SuH2UA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDF7F81767;
	Tue, 12 Mar 2024 09:36:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E8EE1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 697F2404F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:36:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qwiZ-awj27h5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 09:36:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E66BF4047D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E66BF4047D
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E66BF4047D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:36:00 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 168CE61E5FE07;
 Tue, 12 Mar 2024 10:35:45 +0100 (CET)
Message-ID: <431b679b-9933-470c-acda-172d12ea4090@molgen.mpg.de>
Date: Tue, 12 Mar 2024 10:35:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20240312081343.24311-1-aleksandr.loktionov@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240312081343.24311-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix
 i40e_count_filters() to count only active/new filters
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
Cc: anthony.l.nguyen@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Thank you for your patch.

Am 12.03.24 um 09:13 schrieb Aleksandr Loktionov:
> Fix counter to be bumped only for new or active filters.

Although it’s a small diffstat, could you please elaborate, and at least 
describe the problem in more detail.

How can this be tested?

> Fixes: 621650cabee5 ("i40e: Refactoring VF MAC filters counting to make more reliable")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 89a3401..6010a49 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -1257,8 +1257,11 @@ int i40e_count_filters(struct i40e_vsi *vsi)
>   	int bkt;
>   	int cnt = 0;
>   
> -	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist)
> -		++cnt;
> +	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
> +		if (f->state == I40E_FILTER_NEW ||
> +		    f->state == I40E_FILTER_ACTIVE)
> +			++cnt;
> +	}
>   
>   	return cnt;
>   }


Kind regards,

Paul
