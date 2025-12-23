Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A64CDA4FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 20:08:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61A6160E63;
	Tue, 23 Dec 2025 19:08:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mGJscpna1-yc; Tue, 23 Dec 2025 19:08:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFFFA60E61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766516936;
	bh=f94AB6cb3HG/eWMYQqlXm4FzeTrvvTstknIkIvvEzDE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EMDX8Vr5TFIb+jN3sqOCKRJbP3F7lh0uiMjS0rgbggKR5qdCp1RyBjY/wCZSyFOWa
	 8oriceFgT0jmulOu6U57MbSMGZEu7+UEukpO1BgK7rrQekEEA2KrSWTOs1R9/wBS7B
	 WcdBGKjlGlhJa/No6lApnsDKAFHX6g+Z2DBf/Vwa7+8TFppt2ZjBRffTZSypeXrUv2
	 ltgfcrrgpwWhoJqaWLMCLI5MGUt972otmBS7r8fNlXHdnKk6K+2vfavCwQz3ZMSxbY
	 hIL9C+Tj87GbquzN3EvFxx63xtibul/H+Oli+FLGRPE1X9k/WpXf7Z3h7V21/EHU1u
	 RVOz9dMDWThNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFFFA60E61;
	Tue, 23 Dec 2025 19:08:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B3ECCB9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 19:08:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A54F409C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 19:08:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uh2--vwA1kGx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 19:08:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::329; helo=mail-wm1-x329.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 44A33409BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44A33409BD
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44A33409BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 19:08:54 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-47bdbc90dcaso35001185e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 11:08:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766516932; x=1767121732;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=f94AB6cb3HG/eWMYQqlXm4FzeTrvvTstknIkIvvEzDE=;
 b=LW6baknlChNVj+0H3GyVzw3iv9RJmkRYNL8fSEscW/JLZ73GY1rxAyiwoyiYFSY5iQ
 GbYdsPaPu3ZJkDxQD66Dr3sG6VqGGhqu/+hMlfMEMEJoHwM4iD3QBRxzz4Jk8SpYDhxS
 CpidNGl5WQX48Bga8ZVbqgUGjjzfCoSDgHwyxTSDucND8qHLOD9K/9HTgPHOgk+LR6jS
 AXKJNJzK+yxoBfFZWAyr4vM/Ci3n7+2d871IwauTxY5MhAX815a8t8HFgg/dDoKeOhQT
 2kNOWcpZojEX/m8pDIGNhJY2KLoERifSpP4RwSkGNErA7QZbTAUYiH3zkds++rxMNWCt
 f74A==
X-Forwarded-Encrypted: i=1;
 AJvYcCU+CS7SDzarMUSOYD1KrHY+VYSXLJwlPWZwDfH7d/emgUsZQkADdBKcKYE6YsMp9BE2hcSrvET6BjzyH7JJPHY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzfpGNb7R7IXH3WJxIp/IyC8STpriNlaGfgTBD15PxoDtFCrNSZ
 hQPLv8mqog3ewQt2Nq0gwlVxLHW3Wt0r3wQCu6x7qSSRMdpLrU3TsHXH
X-Gm-Gg: AY/fxX60/yCsIYE5VuotgPx2DBEHck17gEtbdGcovZ6q6KQDM0SlDrQ8om7ZiZ0U7UL
 KT+v6MDEmZwmsR3xNMUKzKqjUaw02y61a6Wf046JTDmekxXx9YE3vicr3hwxRVyJ4hPpPyOc8BN
 P11/k9uCT4echR3F5heF+EqJ/0ltY5tAhY2w8v7ShatNhrvOuSYZSn/0ATQLZkZOTyCOJtxyPRj
 wSDW5lp3l6Yat0AQ0NyEsWHHb9/+2i+xz8Kb+xS1i6xYL3CpNpOo79BwxbktoM6uf1MJa4HZAj5
 XfHutk8SyXOWXZpDeneKA8FnS2Al8hv7jt8Yab8dr5W55go8vgOEOMAd1mHM0CVQHVmhdy5aHCU
 mBixFb23fsS4O0oEdcsvDt4jW2qtN3V2pa/LUgBywhYtCR+rnraupr1CZzWKLIlfixIFigJd3Od
 PggrVSYV/nBZHu6k8yz4cGPYfpHrG132V0WEV5MeQszHOPLT6hG0o=
X-Google-Smtp-Source: AGHT+IH3Q0hPHKJKChpo35Wgcum55tE85eoWpfZOgkdjlvObESRWfsHXpeJunSU5cP6/XSJwW1Ja9A==
X-Received: by 2002:a05:600c:45cf:b0:477:75eb:a643 with SMTP id
 5b1f17b1804b1-47d19533403mr139222325e9.4.1766516931787; 
 Tue, 23 Dec 2025 11:08:51 -0800 (PST)
Received: from pumpkin (host-2-103-239-165.as13285.net. [2.103.239.165])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4324ea227casm29610174f8f.15.2025.12.23.11.08.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Dec 2025 11:08:51 -0800 (PST)
Date: Tue, 23 Dec 2025 19:08:46 +0000
From: David Laight <david.laight.linux@gmail.com>
To: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>, Andrew Morton
 <akpm@linux-foundation.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20251223190846.76ff4dc0@pumpkin>
In-Reply-To: <20251223162303.434659-3-yury.norov@gmail.com>
References: <20251223162303.434659-1-yury.norov@gmail.com>
 <20251223162303.434659-3-yury.norov@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766516932; x=1767121732; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=f94AB6cb3HG/eWMYQqlXm4FzeTrvvTstknIkIvvEzDE=;
 b=FwcrNbusBNpiOopXKHVKt+sCy1ni0WGMHkNEBtwd9DGY1ZatBM8C5VJEj7i+Td4d93
 DnO61Az93rU3U8EOmfbAG0C2B3GHSMB69WnHdaHIGLDW1VkH40s7LLUe+VV9J1KszBj6
 kdLsKD3KfDyDVDFChYZg+XVZvi5cfWt31PdMcisLkwWnC0Sv2xzMT9fAIdcVjU96zqvx
 zeTYVQcVwEuBGHF4jDDOzKwV28C/l8j4nEOvsGbHWrL9iTl4bDrr9Uh8G6jlYivKBFn3
 zSZ+RnkOfTXOHbmPndoi2J6gnzv7E6Cr2QFWtnGWctthGG0ooFu/Ok2+hWi1lDws8vZY
 r0Aw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=FwcrNbus
Subject: Re: [Intel-wired-lan] [PATCH 2/3] ice: use bitmap_weighted_xor() in
 ice_find_free_recp_res_idx()
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

On Tue, 23 Dec 2025 11:23:01 -0500
"Yury Norov (NVIDIA)" <yury.norov@gmail.com> wrote:

> Use the right helper and save one bitmaps traverse. 

It makes no difference here.
The bitmap has 48 entries and is just a single 'long' on 64bit.
It is also already in a very slow path that has iterated all the
'set' bit of two bitmaps.

The code is also pretty convoluted and confusing already.
One of the other bitmaps has 64 entries, recoding using u64 would
make it a bit more readable.

Doing the 'weight' here is also just optimising for failure.

Oh, and using u8 and u16 for function parameters, return values and
maths requires extra instructions and is usually a bad idea.

	Dvaid

> 
> Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index 84848f0123e7..903417477929 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -4984,10 +4984,8 @@ ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
>  			  hw->switch_info->recp_list[bit].res_idxs,
>  			  ICE_MAX_FV_WORDS);
>  
> -	bitmap_xor(free_idx, used_idx, possible_idx, ICE_MAX_FV_WORDS);
> -
>  	/* return number of free indexes */
> -	return (u16)bitmap_weight(free_idx, ICE_MAX_FV_WORDS);
> +	return (u16)bitmap_weighted_xor(free_idx, used_idx, possible_idx, ICE_MAX_FV_WORDS);
>  }
>  
>  /**

