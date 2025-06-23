Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E4FAE4A6B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 18:18:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1C8340A79;
	Mon, 23 Jun 2025 16:18:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KPRsygft2kDV; Mon, 23 Jun 2025 16:18:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBC8540A7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750695495;
	bh=08GIWol905Tz9t1Y5KR/Px/0Bj/EghmvZQXSpfLZ3xo=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8xxCGAm0bd0lNt3/SJ2ShX7BMcWei5r7eG1yyPSbzvJNxK7fIf30eqskAbmVghkm5
	 FNHIoLQ4Ys0t7RKpJiWFEW7LR+ve2J+w0U9x+OZlfwvvyn/IuH37GkTs2MWl2wFdbs
	 7AZP+DGsY8VKEwhy0e0MJA/BZoAn6h+skeswCX5qEXA7i+17JOB/CXPgB0ezch/ZbI
	 p0W7FTNAJPCQ1dT9H2bSmBS5RY6g6ZP4pZst2Gytt6sfe+h1y7wBbIgqYA8+ShRVaR
	 3CyH+iDAOlrgj9bcOrLDR/ffc0QY0b+6CTZDXl5kkoCWwufKHjxbN32Gip1Zd33+Er
	 c7lm8ba00hlPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBC8540A7A;
	Mon, 23 Jun 2025 16:18:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C7BB7443
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 16:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B9B806080A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 16:18:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uwwo3EfyioFA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 16:18:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::632; helo=mail-ej1-x632.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4BA36068F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4BA36068F
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4BA36068F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 16:18:13 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-ade5a0442dfso851379266b.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 09:18:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750695492; x=1751300292;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=08GIWol905Tz9t1Y5KR/Px/0Bj/EghmvZQXSpfLZ3xo=;
 b=YBKpzlMzK0PmQHedgO6roHsbRUTzbz9hwbVo/XocYH72mDNZu4KfdbAPkqMFo3jqLL
 4rkqlcnm5r51WTMrsDzXt4tgyPy6DUYjDr6tr85YVWok+tzM6XCAy8cq5agFPaJLJtR2
 buAALBaP6xdo9G1hQdWbYsMGzW/A5FruHmeF6zAGYQ+rGNK1BnU8HtE61/jejoC7nxKd
 FDuoe+lqFaazekm/s2n+2v7sGilTT7bL8ru1uFqYPl/j1aoLEaBoLvgEcnUiYS0z2yco
 KokbYDioCMV29qO8A9/oCY8ImdwTEM9SILHKROJaQ8rtPLtP3u/Je4xi5tmMQuS1Y4Dp
 CAHA==
X-Gm-Message-State: AOJu0YyAm4nFJgxLzna3XzOUN9FDo6PJgyPy1zmEwndzGGT3mNubYkJE
 EiAlgoodiPpR2sOd9yXd8q5MXEHTKVGxdyvPXISWd3PWZTcP7C2sx1HKjKlTWfqMOA==
X-Gm-Gg: ASbGncsMc1sm+4d256ql51NYTQuR82HdqF0G1GTpdr+dg8DBZrbLN73qU5H7ZeuNPz9
 F4LWT5ro28RZvmE5REE8KNkqs89yUOcLGywV2mXNSibhkIz1mWvLEGc4E4xX0efrHQGFjRjgmFm
 xxEQqyDFhXglKBVyJfXcpS+81JrtwgDqfBRlBxeX2vDF71MJPs+sXDh2sT0aa8Hrulgz/GfrZlt
 zbvm8C2FZFFXkRkeYp49859CtXdosEbIMQQMy8vD6f8rfau2mt+0OocFR30Z4DJq6mooNGgG/Uz
 LttNBrRr/8yugdi/xJlKPu/jiqglrmwZSTJktUhfiQ7foeaENR3qdoHLRQIQXCBl
X-Google-Smtp-Source: AGHT+IGKSt1ZPvM2yYVioJCPzIyELNHZzrEHQ6g9+s79wuGsECQkKe80vWV6dvdNE+yByyUw8mwsHg==
X-Received: by 2002:a17:907:7250:b0:ad8:8e56:3c5c with SMTP id
 a640c23a62f3a-ae0578f3e81mr1200596566b.11.1750695491746; 
 Mon, 23 Jun 2025 09:18:11 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae054209ad2sm741886666b.148.2025.06.23.09.18.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Jun 2025 09:18:11 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <8538df94-8ce3-422d-a360-dd917c7e153a@jacekk.info>
Date: Mon, 23 Jun 2025 18:18:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vlad URSU <vlad@ursu.me>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <fe064a2c-31d6-4671-ba30-198d121782d0@jacekk.info>
 <b7856437-2c74-4e01-affa-3bbc57ce6c51@jacekk.info>
Content-Language: en-US
In-Reply-To: <b7856437-2c74-4e01-affa-3bbc57ce6c51@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750695492; x=1751300292; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=08GIWol905Tz9t1Y5KR/Px/0Bj/EghmvZQXSpfLZ3xo=;
 b=FBB7Fuk82yaSbslNeysSqytsaagjp4Dk1oxjxEtT6aAElKGaozFEv+QBsFqeS57Mdz
 X+22zrlbg7m89oV4UNAyE3ZOmaAEiIXWoZ0ST1tAcqz8nAOL+DoMCZV53SgkG4RP+Tve
 tbkH0yu4dkRIOk7lyOhFSkusJrsyqxrqjSsU7C4yYrymyUs1XuwaMUdjHQ46h5EQfT6z
 LO9s9GHLN9j1OYJ0qVmDPJ/4fRowOIub5Gwqlyq94dcZpWNlOo6PuriO24UUTdWvxlAE
 0xF2Gu3ulzRi3/34TjRIx7tL36xrSnxzapD28KJZnQGI4Z9YB513ySVhO84IKGyNKGGm
 Nr0g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=FBB7Fuk8
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

Vlad,

could you verify that the following patch works for you?

> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
> index 8294a7c4f122..01696eb8dace 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -637,6 +637,7 @@
>  
>  /* For checksumming, the sum of all words in the NVM should equal 0xBABA. */
>  #define NVM_SUM                    0xBABA
> +#define NVM_SUM_FACTORY_DEFAULT    0xFFFF
>  
>  /* PBA (printed board assembly) number words */
>  #define NVM_PBA_OFFSET_0           8
> diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
> index e609f4df86f4..37cbf9236d84 100644
> --- a/drivers/net/ethernet/intel/e1000e/nvm.c
> +++ b/drivers/net/ethernet/intel/e1000e/nvm.c
> @@ -558,6 +558,11 @@ s32 e1000e_validate_nvm_checksum_generic(struct e1000_hw *hw)
>  		checksum += nvm_data;
>  	}
>  
> +	if (hw->mac.type == e1000_pch_tgp && checksum == (u16)NVM_SUM_FACTORY_DEFAULT) {
> +		e_dbg("Factory-default NVM Checksum on TGP platform - ignoring\n");
> +		return 0;
> +	}
> +
>  	if (checksum != (u16)NVM_SUM) {
>  		e_dbg("NVM Checksum Invalid\n");
>  		return -E1000_ERR_NVM;

-- 
Best regards,
  Jacek Kowalski
