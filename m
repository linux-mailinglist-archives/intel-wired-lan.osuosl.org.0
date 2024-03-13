Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F2787A694
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 12:05:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A88DE8133F;
	Wed, 13 Mar 2024 11:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kfSYkwqwLEIB; Wed, 13 Mar 2024 11:05:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9091D81396
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710327946;
	bh=Uh2eHM1nycOWXGeXsa8m8cGDk85zNnn5a8IhDKxbqhE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BY94kx7JxHCZhjQnFuGHb5HNDUzON7p9tei/dJsV4SDm35PYK/UguvUAV6+9VWx/1
	 PLfHJTVjfWv8mmKBDX+HnXUDTHmmomKdpwMMdkaiKxUiEFvfQIm66zq5hODj6q6mrl
	 iRp0aNY/MpMaP0wDlWP/XmaEsUS7NwZ1ohrYKV67QQLlRzrYTihN6T/MHu1pceOhmj
	 Fur/1wp4h/b0A7AQICzvJz5SyQN5SwAj8OFMlGsoFqwU/sa+G8J8WRYuv6C5h9f/ez
	 +AVRnpz0fd9owUW7nwQea7kReTs9g8PzRo8KhxXpLKc+WgsM+vE7LC+lDxkjApHfvL
	 uOzpae17FWKPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9091D81396;
	Wed, 13 Mar 2024 11:05:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 512E71BF232
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 11:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3CE5A404B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 11:05:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3edNaZu0AUm2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 11:05:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 99A01404A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99A01404A6
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 99A01404A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 11:05:40 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4668B61E5FE04;
 Wed, 13 Mar 2024 12:05:29 +0100 (CET)
Message-ID: <d64cd3d6-a13a-48da-8658-7cfc12d98066@molgen.mpg.de>
Date: Wed, 13 Mar 2024 12:05:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20240313094400.6485-1-aleksandr.loktionov@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240313094400.6485-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix
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


Am 13.03.24 um 10:44 schrieb Aleksandr Loktionov:
> The bug usually affects untrusted VFs, because they are limited to 18MACs,
> it affects them badly, not letting to create MAC all filters.
> Not stable to reproduce, it happens when VF user creates MAC filters
> when other MACVLAN operations are happened in parallel.
> But consequence is that VF can't receive desired traffic.
> 
> Fix counter to be bumped only for new or active filters.
> 
> Fixes: 621650cabee5 ("i40e: Refactoring VF MAC filters counting to make more reliable")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v1 -> v2: add explanation about the bug

Thank you very much. (I personally wouldn’t break lines just because a 
sentence ends.)

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

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
