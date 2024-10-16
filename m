Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4742199FFD2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 05:57:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9A8080EB4;
	Wed, 16 Oct 2024 03:57:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CYC_-i6EdmHT; Wed, 16 Oct 2024 03:57:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C275280EAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729051050;
	bh=ELXtroh428g3rVCIsR08+AM2pZaX6+t/3YijXOWsKYY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hGW89M4jo/nYMQzGE+bfC2X7WzHsknSvq7Ko4rUhPjxdNNnocXLEKPcM6GWScsIVJ
	 ENWX53AyiYWU6zTcovH0xlyatardhsHsnekTQRZS72NdQ2FMk0Q0BjiqP2nlKKpJ0X
	 rWA6gH6tuCyw07k5veel/VVUncdXB+N25E2lbchaufciaylwsljy7RnFEF+9FPf2Mh
	 adbInGbbFtT0kjiRvmZMtg2QS3qs/CS/6f39pBwFuublWGgYrfkeOgEqIaa/RtXlaS
	 yzybw/zSmpQEuM1K2nlVZdletKG61ZxmT+RFh5vwknS3ps1LES3BTs7g1hG7H4FYGb
	 SHfd69UCSOvEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C275280EAC;
	Wed, 16 Oct 2024 03:57:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AF4627E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 03:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5683780EA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 03:57:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BgC7oapzvrMd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 03:57:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::432; helo=mail-pf1-x432.google.com;
 envelope-from=pjohnny0508@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7630C80EA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7630C80EA7
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7630C80EA7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 03:57:27 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id
 d2e1a72fcca58-71e3fce4a60so3208832b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 20:57:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729051046; x=1729655846;
 h=in-reply-to:from:content-language:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ELXtroh428g3rVCIsR08+AM2pZaX6+t/3YijXOWsKYY=;
 b=l458zTnbyMhvpKwZ8RdQKDtsnRdLr0MD2a2Kpv4X3lZ6sagc+aaMjUNzXQ1yQXh+y7
 xgyPkeR+S1MGAenudGvE4WDDIwDCyX1ZlTpYWUgPPg4YgMhwFM68ORILZHgyiLLtR0Iq
 JqrASviZJ8P1A+u3c+qjKjheRY+TiZ4S/n/0JKXy88Gh8rxvElk/pouHZSPmzDD+DE1K
 QoJeQkaqqcK0wctZJc9+3fmjE02G/ElfVXTuFrC79PbfQSpBvazp6dOiWZ+rRhV6aywQ
 zbr60xKYzArbRLV5TqQj6F3QnqXZvx4KgjIBIu6j4HWTXHq/W2ONIwlXacqIL+4KN5Om
 K1Yw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIvE9WjkPv3ikZqinRiY7CBni3IjQDQYwO4yO3vTPjk1XUzS2XWQA6yVUpGCLJgoCtajdxbjAkdlAjB0JXRwg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzdRtWOL1M5rSY+p9DXcuSYhN4Zs4GUPffDLia3QkfyX4F2XFXL
 DQzLqbz7baDcuF9lp44yOdMiHG7FxxNdu10P9C4GdJk23l5PGua5CgtBycaDW1A=
X-Google-Smtp-Source: AGHT+IEnyARpowv5xjdWg2QFBthbH2bVXNZtKmuqAmtDxed6XV90q+Hx2gkldxqN9FutnmeCw1hpdQ==
X-Received: by 2002:aa7:8883:0:b0:71e:47a2:676 with SMTP id
 d2e1a72fcca58-71e7da10d05mr3605047b3a.6.1729051046221; 
 Tue, 15 Oct 2024 20:57:26 -0700 (PDT)
Received: from ?IPV6:2001:56a:7eb6:f700:d7a1:e36a:e9c7:6c4b?
 ([2001:56a:7eb6:f700:d7a1:e36a:e9c7:6c4b])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7ea9c715c17sm2267904a12.84.2024.10.15.20.57.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Oct 2024 20:57:25 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------XgKdwV3l2OyQrFR4awlZpcjl"
Message-ID: <d82b8685-e318-4218-b8fb-52c9b6bfdcbb@gmail.com>
Date: Tue, 15 Oct 2024 21:57:24 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <Zw2mTeDYEkWnh36A@Fantasy-Ubuntu>
 <20241015174607.6c29bb8d@kernel.org>
Content-Language: en-US
From: Johnny Park <pjohnny0508@gmail.com>
In-Reply-To: <20241015174607.6c29bb8d@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729051046; x=1729655846; darn=lists.osuosl.org;
 h=in-reply-to:from:content-language:references:cc:to:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ELXtroh428g3rVCIsR08+AM2pZaX6+t/3YijXOWsKYY=;
 b=enlPq/7jSFIZR4MsUb2brOv4Ul6v+NWxcGeLcITyZT0FGDXBi3rbluO1hIne+fpgYt
 mwBvM/Z6L/RICwlvTvYBhIdIUlTULdQZhPFg6bM1jzTbesvoaItcGych5BO4DTWr9SnF
 hUxrz4uF5VhPgAd9kLdiNf2ISHdLI443zY0MlH2brTwnL3eOpe88aNvz3u3ahSQK0tZA
 zEz1qtot6qJ6eMBJqVp5hHAUuHnKxO7s3RtUWL3R51r2oQmW2HbCgbxJBBTMibPp1ZhG
 HjDa9enDmvzbHNKYKMjYtl0B/zbp7dGMPtOyigVoUfubvldTSbGMVZyvpqcVqMB0b8wU
 82Pw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=enlPq/7j
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix styling in enable/disable
 SR-IOV
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

This is a multi-part message in MIME format.
--------------XgKdwV3l2OyQrFR4awlZpcjl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/24 18:46, Jakub Kicinski wrote:

> On Mon, 14 Oct 2024 17:16:29 -0600 Johnny Park wrote:
>> This patch fixes the checks and warnings for igb_enable_sriov and
>> igb_disable_sriov function reported by checkpatch.pl
> Quoting documentation:
>
>    Clean-up patches
>    ~~~~~~~~~~~~~~~~
>    
>    Netdev discourages patches which perform simple clean-ups, which are not in
>    the context of other work. For example:
>    
>    * Addressing ``checkpatch.pl`` warnings
>    * Addressing :ref:`Local variable ordering<rcs>` issues
>    * Conversions to device-managed APIs (``devm_`` helpers)
>    
>    This is because it is felt that the churn that such changes produce comes
>    at a greater cost than the value of such clean-ups.
>    
>    Conversely, spelling and grammar fixes are not discouraged.
>    
> See:https://www.kernel.org/doc/html/next/process/maintainer-netdev.html#clean-up-patches
I'm quite new to this area so I must have missed that portion of 
documentation. Apologies for the inconvenience.
--------------XgKdwV3l2OyQrFR4awlZpcjl
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <pre><font face="monospace">On 10/15/24 18:46, Jakub Kicinski wrote:</font></pre>
    <blockquote type="cite"
      cite="mid:20241015174607.6c29bb8d@kernel.org">
      <pre wrap="" class="moz-quote-pre">On Mon, 14 Oct 2024 17:16:29 -0600 Johnny Park wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">This patch fixes the checks and warnings for igb_enable_sriov and
igb_disable_sriov function reported by checkpatch.pl
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Quoting documentation:

  Clean-up patches
  ~~~~~~~~~~~~~~~~
  
  Netdev discourages patches which perform simple clean-ups, which are not in
  the context of other work. For example:
  
  * Addressing ``checkpatch.pl`` warnings
  * Addressing :ref:`Local variable ordering&lt;rcs&gt;` issues
  * Conversions to device-managed APIs (``devm_`` helpers)
  
  This is because it is felt that the churn that such changes produce comes
  at a greater cost than the value of such clean-ups.
  
  Conversely, spelling and grammar fixes are not discouraged.
  
See: <a class="moz-txt-link-freetext" href="https://www.kernel.org/doc/html/next/process/maintainer-netdev.html#clean-up-patches">https://www.kernel.org/doc/html/next/process/maintainer-netdev.html#clean-up-patches</a>
</pre>
    </blockquote>
    <font face="monospace">I'm quite new to this area so I must have
      missed that portion of documentation. Apologies for the
      inconvenience.</font><br>
  </body>
</html>

--------------XgKdwV3l2OyQrFR4awlZpcjl--
