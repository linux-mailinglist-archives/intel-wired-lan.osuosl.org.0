Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A224C65AB2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 19:11:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB3CB83163;
	Mon, 17 Nov 2025 18:11:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nYWyk-2bzs0H; Mon, 17 Nov 2025 18:11:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49D9E83192
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763403113;
	bh=xkXn2uf2BmayOa330xtRb/7V5dbi6gpwEITJjIUhIzo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DEDo5N2DFwDoPD3cLS5/+djau6anjQQdhc4TuXFnVq1W4E8+Hyk2PyaechqCAL6mm
	 p0KZKOR7ck0ZQ4DpFkmW2O+vsPC2dtvrcIZf+ALjw33jIj0ePuuKwl/ZdqNf6lJGpS
	 PZBrBle0b0E3o6jcOmnFIyNwjKDPgFsA0JRDVsrMLFeVqhfvpBFVcPP7tjjqJNRcdP
	 FWaWFEPDHMdjpuCeIZC0Getz6mD2opc6VhRWVsTvVZBLr2Vx7ArN99PFloTlFMG3Ne
	 0mPFFzt+/PGoKiq5nETcN0YW6RGEmeYA3Ki+o9+oUW6HOkVVgF/4dhcx1vV9rPRygY
	 +ciGzpLDI20Lg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49D9E83192;
	Mon, 17 Nov 2025 18:11:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EAEE9158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 18:11:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0AA960E56
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 18:11:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2H_Sj5MmRfn6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 18:11:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ADCFA60869
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADCFA60869
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADCFA60869
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 18:11:50 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-47755a7652eso31934845e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 10:11:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763403108; x=1764007908;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xkXn2uf2BmayOa330xtRb/7V5dbi6gpwEITJjIUhIzo=;
 b=S1Iv3//6xdL8n+PlE/vQ8Tvadk5sUT613ZscWVPjJvvQ4t/8KK3AtD9mHs+60jW50d
 EIwSGlVTRAm5d29l1K1eG2A84qNeEtbM8osQEm2Zrjdcr2TOj9EvbZXVC4zWNmUPZzxy
 t/WIXJKlozb3mzWmGm/xpyM1YOMykCSa3aAVUu2MdWtsLtAhKGr2sG5XGeWvBzHlU6Pv
 gUShrjN2tuID1ixJtm/K3bFPe1HjPJybhyOMkQJGYoNi6q7rb8O3dlq4TyYTZmqgF7pj
 c4vpGHWU9B49UUqKEcs0oaPbeQsOgijCQTVs0qUvg3myxevb119iq9HxcZyWsURK+Koh
 Bqwg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWj03689VrtkD4c5MN3NH0GPucYSNkoLCx8NHbzcEv+W0kq1EAzNzKV6fC4v5PR3hWnJL11/w1J0IB/itNc1YY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwucGkdq/iNgKTMWiuiDqkEO99BIO6DTLYR99qHm7eIi0J764Up
 jjKcg5Sp0FBcOWlceF1ywzHxEvR81jkDwfMh9tMhFwLT8PMgJv2N+Q5C9imKbUJPQ7A=
X-Gm-Gg: ASbGncvCSCl6KtJ4JSGRvxrWxs/ArLnSztDFCd0be84i/+LZoA4hSbJ75fIjpkhx00Z
 TUd9wfWyWjqoI6DTeC0gaFl6IadDpTU8Oubdyz/oFHQ7HoHvk4NUwRZkpZ4B/ptoof0+ZQeP59v
 bpZuO5lvWgB22IrO5LWiswad86e/3WGOowM64iOWElT2XWJfytcc3OkRffG4hGgLYnBUwo53pIX
 lFNDbNiY5U5G1H/rcmvH7AaZ0xLAdGqbm42B2zYpAgcBujMqZ/Grqpdo540q4UGP64BbtmzN083
 SoQSqTweraOoF3CW/KEQuoxPC+21dnwmUtQu+CRF/Rc/uYxBTtnT+t5nbVTihsONJPRdzdrgOs6
 1FINzKOwmlWhcynIaf88Bo/CchxSVlhYB/Kjwy7H8Wj5Ji3AgkTYC1eWC7K08iGs3rFfxO04p1u
 BgT0pMwMy3ESmG17Tw44e/Stragt4=
X-Google-Smtp-Source: AGHT+IGHhEQCJaDM/zq/AjpMPqh+c0eOHsOAgGFxOiztiCVkL4Xu6fzfIxyiuFP74BN85ttgdB3SyQ==
X-Received: by 2002:a05:6000:1849:b0:42b:394a:9e0 with SMTP id
 ffacd0b85a97d-42b5937879bmr12050647f8f.32.1763403108288; 
 Mon, 17 Nov 2025 10:11:48 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-42b53f0b617sm27141178f8f.31.2025.11.17.10.11.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Nov 2025 10:11:47 -0800 (PST)
Date: Mon, 17 Nov 2025 21:11:44 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Ally Heev <allyheev@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org
Message-ID: <aRtlYIZ2XOQKMGd_@stanley.mountain>
References: <20251106-aheev-uninitialized-free-attr-net-ethernet-v3-1-ef2220f4f476@gmail.com>
 <575bfdb1-8fc4-4147-8af7-33c40e619b66@intel.com>
 <aRsfBDC3Y8OHOnOl@stanley.mountain>
 <dd88462f-19cb-4fde-b1f0-5caf7e6c6ce6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dd88462f-19cb-4fde-b1f0-5caf7e6c6ce6@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1763403108; x=1764007908; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=xkXn2uf2BmayOa330xtRb/7V5dbi6gpwEITJjIUhIzo=;
 b=Sz6I6iOVgkIQVVQYbTw76BUA8Z021UrpP7b2heptvYbA6b1pOZGODzHDjnSIJpm1RJ
 C01aWiKF0pq0XEyvVsnKiGlK2uz+b/9ENBwDYUJcfBEa03aXmULqpthtA09n0QPyPZUq
 PXAM62r6HxZc9yzN2NAFAIIX1BMTt3v926XIMna7y3Z0HP9SwzdStvSmG6W5ftDeUaFp
 1rbLFHsK8+4fsKYYIUL/1Rc2yfHBzFyHn1bzsloKIh+zAsV5oVUUhPHs1obKIClx2o4a
 DQlfsBUbeYMBaiHIGHa5JPI971Duqp4suMEVL5vZKztbqWi79lrqVlFBiGh6z7dE5wpT
 ruhw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=Sz6I6iOV
Subject: Re: [Intel-wired-lan] [PATCH v3] net: ethernet: fix uninitialized
 pointers with free attribute
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

On Mon, Nov 17, 2025 at 03:37:30PM +0100, Alexander Lobakin wrote:
> From: Dan Carpenter <dan.carpenter@linaro.org>
> Date: Mon, 17 Nov 2025 16:11:32 +0300
> 
> > On Thu, Nov 06, 2025 at 03:07:26PM +0100, Alexander Lobakin wrote:
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
> >>> index 6d5c939dc8a515c252cd2b77d155b69fa264ee92..3590dacf3ee57879b3809d715e40bb290e40c4aa 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> >>> @@ -1573,12 +1573,13 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
> >>>  			 struct ice_parser_profile *prof, enum ice_block blk)
> >>>  {
> >>>  	u64 id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
> >>> -	struct ice_flow_prof_params *params __free(kfree);
> >>>  	u8 fv_words = hw->blk[blk].es.fvw;
> >>>  	int status;
> >>>  	int i, idx;
> >>>  
> >>> -	params = kzalloc(sizeof(*params), GFP_KERNEL);
> >>> +	struct ice_flow_prof_params *params __free(kfree) =
> >>> +		kzalloc(sizeof(*params), GFP_KERNEL);
> >>
> >> Please don't do it that way. It's not C++ with RAII and
> >> declare-where-you-use.
> >> Just leave the variable declarations where they are, but initialize them
> >> with `= NULL`.
> >>
> >> Variable declarations must be in one block and sorted from the longest
> >> to the shortest.
> >>
> > 
> > These days, with __free the trend is to say yes this is RAII and we
> > should declare it where you use it.  I personally don't have a strong
> 
> Sorta, but we can't "declare it where you use it" since we don't allow
> declaration-after-statement in the kernel.

That changed when we merged cleanup.h.  It is allowed now.  I still don't
like to declare variables anywhere unless it's a __free() variable and I
think almost everyone else agrees.  The only subsystem which I know that
completely moved to declaring variables willy-nilly was bcachefs.

regards,
dan carpenter

