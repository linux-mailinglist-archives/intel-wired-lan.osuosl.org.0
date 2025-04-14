Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47307A886DD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 857A4610DA;
	Mon, 14 Apr 2025 15:20:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ok-zRn1Rcheq; Mon, 14 Apr 2025 15:20:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0286661083
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644042;
	bh=xtsqEiOso+3ySVEpPpnY9tocZGrAQf6OsnV8IcNWh6c=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MxI/qXzuuSN3eTwVPClr71vZqwfxIXM4tRk8Bl4DzF0lY3UZIY1jZhHMCXN2UQMDV
	 ACWgq9D9BFkYxonVBMAl+XANhfaOPEjVwXFrzbCpe8Y4CMi61xAS/tg83S6TYpsefS
	 /SArSsSIW6aAgfBT8n1K180evcoEdSM8teTT6e15G4cGWB6pRzOBvVIe6ra10XJCU1
	 uKYiFjBWUBYwFKxe8DDKGBOf8awv4XDoUZZHIjUcYYDeZtaORUlcv94IcQ8ae0aiFQ
	 gpea9/kCmAVxBVah+hI6b0jOA5zHLBG4o6mypvttl4VF7EIURSjQ6YRXmUOfhKjVGq
	 bxCWU0IdRYBAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0286661083;
	Mon, 14 Apr 2025 15:20:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B2D7F250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 10:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AFB72411FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 10:49:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TLPG-QRYRwXO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 10:49:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=ttoukan.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 062BE41028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 062BE41028
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 062BE41028
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 10:49:30 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-38f2f391864so2266200f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 03:49:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744627769; x=1745232569;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xtsqEiOso+3ySVEpPpnY9tocZGrAQf6OsnV8IcNWh6c=;
 b=g+RKIsVdLX1qUW3Hbu9HfNK9aVn6Z/yX6pBC45BnoIm5iAT9pW0JEQR82iijMcQiJi
 wr+OQ5o2w3uC//F6jKyahaWSypwBgKFO/TXBDm4sAhnMybfC8gNUdxmGKGHjHxwwJsT8
 YPzPZDSs3couXgK0s7UMizBRHkGmgmxX5tqXilFUK3I4REPB1wrt8thm1/XzRi3FZMHO
 cq+M9S4nLwho8mUcTZWsrOAUiSm9wbnniy6VBdGGnFoC3GjDfVMqAOUBXkUI70sSft10
 o1Jk8CGyAHV9VM2WY7+Lsz90Fc+DhaEDZjheoj7jK6fMHuVqw5F26kPr0vjSpfh9ri9f
 yh0g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXlcR0PJHSqXgtFEDNcD8LK0KFNBrT32hxnp9t9cd+VW0C8hPnU38xb+xQ5di3Q+7RhojO6xVX+FBNOvcFU1Wk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyafgcpp0YSI54QGg1L7+ocLRzFnogbKJDxvWlPXMUNb7RpC9fm
 pL/HXaLVyg5Fe5bBoQ+ra4LJ9xUGpHCjYwVOni7TjfFHXpy3mgzx
X-Gm-Gg: ASbGncutodlrjP4TwUlGpSAXBUZt0weZ6H0irj6r+OGFQ2vPahCcu31JSq4wtZUSdrA
 CA6/gM+5q8yvy8IWXQWPJT93jHUQzTWwvjVebFaWSWwfsmYpa1nNwEQwgNm4OyrIjQoZgRBwExe
 4hxyMPG6JJp8/6sYeY73EmRX58DOgMuL2a8FjTdDD7U20VEuZ7/gGifJv3JsLFaX6TlHaJitAk7
 bViH319YjKLa6Zbb5dc793sjyy0yDskNMocoqfWQ8vZpOuAX5MGNxioBBrC4f3IPrRpJ3La9fIz
 iqsB+FQdCnMpZFGKW1VbgJZFPcvYtlG0adHXDZIkTC5e2NwmPxpC+2IsAxzk
X-Google-Smtp-Source: AGHT+IH1pMW+2VKVzwJ49w6Ztlv9YMJUN6W45Wwpzz8L92YImh1YeiCHahCGMNa6e6rsSObu5WtiCQ==
X-Received: by 2002:a5d:6da8:0:b0:39c:1424:3246 with SMTP id
 ffacd0b85a97d-39ea51d3527mr8524313f8f.2.1744627768500; 
 Mon, 14 Apr 2025 03:49:28 -0700 (PDT)
Received: from [10.158.37.53] ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39eaf445772sm10695726f8f.91.2025.04.14.03.49.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Apr 2025 03:49:28 -0700 (PDT)
Message-ID: <f4a406e2-af98-4762-af44-9089440c0a7f@gmail.com>
Date: Mon, 14 Apr 2025 13:49:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
 Jeff Johnson <jjohnson@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Brian Norris <briannorris@chromium.org>,
 Francesco Dolcini <francesco@dolcini.it>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>
Cc: ath10k@lists.infradead.org, linux-kernel@vger.kernel.org,
 ath11k@lists.infradead.org, ath12k@lists.infradead.org,
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org
References: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
 <20250414-restricted-pointers-net-v1-7-12af0ce46cdd@linutronix.de>
Content-Language: en-US
From: Tariq Toukan <ttoukan.linux@gmail.com>
In-Reply-To: <20250414-restricted-pointers-net-v1-7-12af0ce46cdd@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744627769; x=1745232569; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xtsqEiOso+3ySVEpPpnY9tocZGrAQf6OsnV8IcNWh6c=;
 b=YpyFwhLSgWmZloX0rgweQwbCmiSisgMo6Gbn4p2csEumMDcpmZIWxiQg/rkQ1X8nay
 +3Sj+vMH1lDveFlLBV7EfxzKp+qP4MGwwt8d0+TiOnbHm7QKAUJQyaGACiR6q3CbyCm6
 8xL10YcVTENYPaF3qt7ehvZobhmQwR6e5dnOKeQH/qKGnrUEzeJ7vGkEeXYkTqqwjmkW
 GtIXYqWZfhFZkEOMFGiteGJD8kIUxyrsTwi92Wj/yMI/Ttko88Nn9w361SqSWxigafVn
 ooDxJH66fTnOIsIAARa/OuqBvlbf8G3Q3Wdsy//cIDI2w0okJqySjaprtiCOuvTZHUdw
 r56g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=YpyFwhLS
Subject: Re: [Intel-wired-lan] [PATCH net-next 7/7] net/mlx5: Don't use %pK
 through tracepoints
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



On 14/04/2025 11:26, Thomas Weißschuh wrote:
> In the past %pK was preferable to %p as it would not leak raw pointer
> values into the kernel log.
> Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
> the regular %p has been improved to avoid this issue.
> Furthermore, restricted pointers ("%pK") were never meant to be used
> through tracepoints. They can still unintentionally leak raw pointers or
> acquire sleeping looks in atomic contexts.
> 
> Switch to the regular pointer formatting which is safer and
> easier to reason about.
> There are still a few users of %pK left, but these use it through seq_file,
> for which its usage is safe.
> 
> Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
> ---
>   drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Tariq Toukan <tariqt@nvidia.com>

