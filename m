Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E75B9974A55
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 08:22:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BF1960A3E;
	Wed, 11 Sep 2024 06:22:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v8bzmHjMHXdN; Wed, 11 Sep 2024 06:22:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDFDE60A45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726035740;
	bh=NSt2axKMQTaf79bha76NuA+MZiF8bWUWKBxsAmesLW8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=scgQDGVLgsWnquR2GZkvQa7YNZIA/b+EwgbSQUcDuQeqgosAywH1MVOjCXgDwbWJx
	 cVrgRBkzHrXeOlxwe43a4zhWR2U9TTelPbdlD6umiLcc5EeWDE6lYjNjYFJLuqTyAW
	 ajzfOF2y6ai2zNqG+e9LxoYtTSZP61UVW/V6nuE30WpmfCBo1BxiekKnfdBNTNMH2n
	 LuJqDVHGzhlXC3cndZVu/YFrfOm3NH6pGYEVNtIwjRWKtavmLMjyR3za30+/YF6xzw
	 r97nbsx23CpN2ZQzLXTbXVpgY1IzpRz7kMnwalHTNVAzw0PONi1j/Em4pgekTQLsWq
	 5puGIK+rsyYlA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDFDE60A45;
	Wed, 11 Sep 2024 06:22:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E6C591BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 06:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4DBF40153
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 06:22:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zWDY_4DjPvk5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2024 06:22:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B002C40105
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B002C40105
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B002C40105
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 06:22:16 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5ae914.dynamic.kabel-deutschland.de
 [95.90.233.20])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 642D461BA1847;
 Wed, 11 Sep 2024 08:21:58 +0200 (CEST)
Message-ID: <963208e7-792e-46fb-aa84-705c91533862@molgen.mpg.de>
Date: Wed, 11 Sep 2024 08:21:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
References: <20240910232807.675214-1-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240910232807.675214-1-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll output pin
 configuration
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Arkadiusz,


Thank you for your patch. It’d be great if you made the summary more 
explicit. For example:

ice: Disallow DPLL_PIN_STATE_SELECTABLE for dpll output pins

Am 11.09.24 um 01:28 schrieb Arkadiusz Kubalewski:
> Currently the user may request DPLL_PIN_STATE_SELECTABLE for an output
> pin, and this would actually set the DISCONNECTED state instead.
> It doesn't make any sense. SELECTABLE is valid only in case of input pins

It’d be great if you added a blank line between paragraphs.

> (on AUTOMATIC type dpll), where dpll itself would select best valid input.
> For the output pin only CONNECTED/DISCONNECTED are expected.
> 
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_dpll.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index e92be6f130a3..3d20c3b232aa 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -651,6 +651,8 @@ ice_dpll_output_state_set(const struct dpll_pin *pin, void *pin_priv,
>   	struct ice_dpll_pin *p = pin_priv;
>   	struct ice_dpll *d = dpll_priv;
>   
> +	if (state == DPLL_PIN_STATE_SELECTABLE)
> +		return -EINVAL;
>   	if (!enable && p->state[d->dpll_idx] == DPLL_PIN_STATE_DISCONNECTED)
>   		return 0;
>   

With the above addressed:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
