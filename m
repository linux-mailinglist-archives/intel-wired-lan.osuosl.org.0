Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80588CE853F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Dec 2025 00:29:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 048D48134A;
	Mon, 29 Dec 2025 23:29:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j1MbS2VgRefj; Mon, 29 Dec 2025 23:29:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 661238134B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767050947;
	bh=ykRFGbndqB3iifHzWeUZFaKoNmaTijwOZvFOXIHPHG0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PZ3TmF4d2E8/wTbrdJwGXfT6ybo+/k60D5K53StLGTslR1G9O5ewQP5CYBn9lvOyr
	 HoPjaPHQ0di2eXFWaCFjao+TePYFy/Hfdz8VbXPpLmtnT3Ye7xxZmS14fAHfuBuerZ
	 BH9UQUo/IRxMcxD34ZpZs78x66uis9yxU1xq+FA1AEwXXpED1b5iWyOTYFssJKWnUF
	 1xqfv0VlWcSJwySRDK6OznshgQZVh/HBK1p335Qx2rRZOTzGHKlDnBdRTG88ib5/pL
	 2ItaLLt/AZWkgcYRP54/N8waf6QrtNYMe0r4r7fkpn3LNw8tFNm9DtTfr72RcoYNgx
	 nDg/XDVVw4aCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 661238134B;
	Mon, 29 Dec 2025 23:29:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BE24935B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 23:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AFE16400FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 23:29:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tax2UOdenbpI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Dec 2025 23:29:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0DEF8400BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DEF8400BE
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0DEF8400BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 23:29:02 +0000 (UTC)
Received: from [10.110.1.152] (unknown [124.195.223.90])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DD98961CC3FC9;
 Tue, 30 Dec 2025 00:28:43 +0100 (CET)
Message-ID: <a278d72c-109c-450c-a85a-73e39b2912df@molgen.mpg.de>
Date: Tue, 30 Dec 2025 05:28:17 +0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20251229085234.372277-1-paul.greenwalt@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251229085234.372277-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix devlink reload
 call trace
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


Thank you for your patch.

Am 29.12.25 um 13:52 schrieb Paul Greenwalt:
> Commit 4da71a77fc3b ("ice: read internal temperature sensor") introduced
> internal temperature sensor reading via HWMON. ice_hwmon_init() was added
> to ice_init_feature() and ice_hwmon_exit() was added to ice_remove(). As a
> result if devlink reload is used to reinit the device and then the driver
> is removed, a call trace can occur.
> 
> BUG: unable to handle page fault for address: ffffffffc0fd4b5d
> Call Trace:
>   string+0x48/0xe0
>   vsnprintf+0x1f9/0x650
>   sprintf+0x62/0x80
>   name_show+0x1f/0x30
>   dev_attr_show+0x19/0x60
> 
> The call trace repeats approximately every 10 minutes when system
> monitoring tools (e.g., sadc) attempt to read the orphaned hwmon sysfs
> attributes that reference freed module memory.
> 
> The sequence is:
> 1. Driver load, ice_hwmon_init() gets called from ice_init_feature()
> 2. Devlink reload down, flow does not call ice_remove()
> 3. Devlink reload up, ice_hwmon_init() gets called from
>     ice_init_feature() resulting in a second instance
> 4. Driver unload, ice_hwmon_exit() called from ice_remove() leaving the
>     first hwmon instance orphaned with dangling pointer
> 
> Fix this by moving ice_hwmon_exit() from ice_remove() to
> ice_deinit_features() to ensure proper cleanup symmetry with
> ice_hwmon_init().

Great commit message. For the summary/title/subject I’d make it more 
specific. Maybe:

ice: Move ice_hwmon_exit() to ice_deinit_features() to avoid accessing 
freed memory

(Is that UAF, use after free?)

> Fixes: 4da71a77fc3b ("ice: read internal temperature sensor")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 71b85bf7b033..c7991fb80a86 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4836,6 +4836,7 @@ static void ice_deinit_features(struct ice_pf *pf)
>   		ice_dpll_deinit(pf);
>   	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_SWITCHDEV)
>   		xa_destroy(&pf->eswitch.reprs);
> +	ice_hwmon_exit(pf);
>   }
>   
>   static void ice_init_wakeup(struct ice_pf *pf)
> @@ -5439,8 +5440,6 @@ static void ice_remove(struct pci_dev *pdev)
>   		ice_free_vfs(pf);
>   	}
>   
> -	ice_hwmon_exit(pf);
> -
>   	if (!ice_is_safe_mode(pf))
>   		ice_remove_arfs(pf);
>   

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
