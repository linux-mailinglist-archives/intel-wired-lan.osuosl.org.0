Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC838902949
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 21:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 801D860647;
	Mon, 10 Jun 2024 19:31:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KXPHvgtZWgjp; Mon, 10 Jun 2024 19:31:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B746060668
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718047875;
	bh=a3xFH4RZCQiRLi4fnYYMNNhnFMEw94k73e6T/LCGxBo=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j9llwjFFDjMCZK0/Mq+8X2ZCj7vqQiaQeInLMOcP+3NeQSA3ngL+7moT2nfkpLid/
	 W+Ak0RutKyK808+i0THdlO1Mwx64EPFmEvGAP1o9PDfsdN9esenVz97sYkXZszJ7r9
	 x1ojdF9UkNyGCr4nLY6ZVfnJfKzPRwGqU/onpBW3rvVsxAFDR7lxMMceACO+4U4uMt
	 n9t4OhC4BD7SeVRFtbF3Jd8MeCuvKc/ChMKqPXWbCkIOpk46r2vAd8aXRVnMzPTDnd
	 u9DPYHNmtq0iipnJHvOZ9Ju/dRAEueP+dtEUGpJ6YlgWzAKoc5XSige9LPgy5XcoOG
	 dRrCHqSnIIw0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B746060668;
	Mon, 10 Jun 2024 19:31:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA1621BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 19:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D4DF68221C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 19:31:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QipM_dYnVMPo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 19:31:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::331; helo=mail-wm1-x331.google.com;
 envelope-from=ecree.xilinx@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D76C982215
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D76C982215
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D76C982215
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 19:31:12 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-421bb51d81aso2734505e9.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 12:31:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718047871; x=1718652671;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=a3xFH4RZCQiRLi4fnYYMNNhnFMEw94k73e6T/LCGxBo=;
 b=FAr02kxXoRS/YWhK76FdwjCW2nJM9fonTo09rEhBXd3BELD7sqZnWKrjbyxyjPgbor
 HduWmYZrHJMF+/kAJ7ZGd4fVRKkfgBY37EJXLsf2IwMNa/uATIyowZVOAM61hVCYTlmI
 Pt+k//hrpLJJAP4LczQtyLrrhqqwfL7FQLwun4Id1MyvVV5aylZ8+3NobarRvXOXxZXq
 EI2YyGBxuCMmrQuBq/kU8WwQMniLeWueClIVCDBIABCs7HbuuL9NAOgw2OoprO+tuxxR
 c5Xp7Go8rbMqUrtkNUmSyrjyyIdQCvJMBD+QteZZxdYE9tyfH4jYOHdHsXX9lWOHCW/5
 GydQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVzXcz2xJYeJjiqdI5Jw963aBBRo7z/Uw2QMLI7g6b8BgOOzzT+iRfvVTZsRYoWEIN+P4sx/9CbUHN688Jpo1A4+Yw/ZvFbuiNpgH2rwJ/v9Q==
X-Gm-Message-State: AOJu0YwZeN6lDtavn3yBZOZ6gDRdv1GY4JZ7qEV27TTjqU1q6woHl/XF
 l/cu1glqbk9KSLN9YH3Pq2Pl9sS7HcLt3dNJlJd2EyzyvUMMgvU7
X-Google-Smtp-Source: AGHT+IHepfrYpaX65+ik4OEnU45itbvufBQzHVsM6FY/Wg3C/APHbovBLqE+i03qVnVLFuRjB/dd/w==
X-Received: by 2002:a05:600c:46cb:b0:422:1609:a7db with SMTP id
 5b1f17b1804b1-4221609abf4mr14442965e9.8.1718047870691; 
 Mon, 10 Jun 2024 12:31:10 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159313-cmbg20-2-0-cust161.5-4.cable.virginm.net. [82.0.78.162])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-421c20e9f51sm49262825e9.17.2024.06.10.12.31.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Jun 2024 12:31:10 -0700 (PDT)
To: =?UTF-8?Q?Asbj=c3=b8rn_Sloth_T=c3=b8nnesen?= <ast@fiberby.net>,
 netdev@vger.kernel.org
References: <20240609173358.193178-1-ast@fiberby.net>
 <20240609173358.193178-3-ast@fiberby.net>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <07b7f432-bb9a-1285-2431-0f5d2232b0eb@gmail.com>
Date: Mon, 10 Jun 2024 20:31:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20240609173358.193178-3-ast@fiberby.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718047871; x=1718652671; darn=lists.osuosl.org;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
 :subject:date:message-id:reply-to;
 bh=a3xFH4RZCQiRLi4fnYYMNNhnFMEw94k73e6T/LCGxBo=;
 b=fqxfI4xoZcszInNyBnhAYOR3nfSMZYX9jpJwC+Dv0ScsZKn4pD2B3ipuRHrsoSsyTZ
 WD9PE3RsaVu+ltYnP101p6Ore8Hd4Tgs0p/LbYavujNPSMZajne6sCTgmBzT0tvd2Q7s
 Yd9BGVH5qpXJlEQcZJ+Sr/4X0wxX3oZpnwVCsM4HucM6BHceh1HFhqiz7sIECa2Anqko
 q4GEOtXB+dTBFLoK1R2fA/SuVNHO9WOyVMbPLY93kNonOXclD1RBMNo8gYgxah/bYN0R
 5IRpo9T6chJTe+jZYuQcMDnBbzLabnGAJJqijGhsFOnA/1BMRpUKRD3VlU/6n8GTT6+3
 16yw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=fqxfI4xo
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] sfc: use
 flow_rule_is_supp_enc_control_flags()
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
Cc: Louis Peens <louis.peens@corigine.com>,
 Davide Caratti <dcaratti@redhat.com>, Leon Romanovsky <leon@kernel.org>,
 linux-net-drivers@amd.com, intel-wired-lan@lists.osuosl.org,
 oss-drivers@corigine.com, Tariq Toukan <tariqt@nvidia.com>,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 i.maximets@ovn.org, Martin Habets <habetsm.xilinx@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 09/06/2024 18:33, Asbjørn Sloth Tønnesen wrote:
> Change the existing check for unsupported encapsulation control flags,
> to use the new helper flow_rule_is_supp_enc_control_flags().
> 
> No functional change, only compile tested.
> 
> Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>

Acked-by: Edward Cree <ecree.xilinx@gmail.com>

> ---
>  drivers/net/ethernet/sfc/tc.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/sfc/tc.c b/drivers/net/ethernet/sfc/tc.c
> index 9d140203e273a..0d93164988fc6 100644
> --- a/drivers/net/ethernet/sfc/tc.c
> +++ b/drivers/net/ethernet/sfc/tc.c
> @@ -387,11 +387,8 @@ static int efx_tc_flower_parse_match(struct efx_nic *efx,
>  		struct flow_match_control fm;
>  
>  		flow_rule_match_enc_control(rule, &fm);
> -		if (fm.mask->flags) {
> -			NL_SET_ERR_MSG_FMT_MOD(extack, "Unsupported match on enc_control.flags %#x",
> -					       fm.mask->flags);
> +		if (flow_rule_has_enc_control_flags(fm.mask->flags, extack))
>  			return -EOPNOTSUPP;
> -		}
>  		if (!IS_ALL_ONES(fm.mask->addr_type)) {
>  			NL_SET_ERR_MSG_FMT_MOD(extack, "Unsupported enc addr_type mask %u (key %u)",
>  					       fm.mask->addr_type,
> 

