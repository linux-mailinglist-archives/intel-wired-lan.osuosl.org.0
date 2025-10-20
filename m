Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 548D9BF3D1B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Oct 2025 00:02:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D05340329;
	Mon, 20 Oct 2025 22:02:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PsFcs_c9oc9u; Mon, 20 Oct 2025 22:02:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64DD340325
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760997740;
	bh=pGC4lUtZkCybSPABd3uFIGUFJMNEDwCb9SB1IGRtFls=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P14/7FRCVbVA/suEXaEEy5q5a+xXdAlp1O/SRI/4JJgrqyZMYORYElCHWJG8wRClE
	 UHaSo5WL/MlWgMzSJcpafMwGT2F5Nyy33nymYcjLfLJ73EoV8dktORxEWpeRGNktbZ
	 5eY143OMVMFp4ldWk/TJUTMcwuBGMqzyKv17Iedt2Kz2SjCfxX0gri/89aMO4S4MUh
	 Nvmq2q3BKj2pv3DqS1IJ6Ko7KGixqnm90A93BdhDNqUdCYPP5+5VU9mbgV7fGLQ3Oe
	 FRnKN3pqOZdIbzoVFUBhGTdTNl22YvqdQtL12brWQE24XnxEhsRlK+ej5lnsqELR4U
	 rVa89Ruq6aqDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64DD340325;
	Mon, 20 Oct 2025 22:02:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 73E2B43F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 22:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70BD9605EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 22:02:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kK8_NJdZY2XV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Oct 2025 22:02:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1035; helo=mail-pj1-x1035.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BECAE605EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BECAE605EC
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BECAE605EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 22:02:18 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-33226dc4fc9so4493990a91.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 15:02:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760997738; x=1761602538;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pGC4lUtZkCybSPABd3uFIGUFJMNEDwCb9SB1IGRtFls=;
 b=kQPPdCLyokNT8S4p5zKcHDdTBYwO1bIEUp2+gsqHotaO2GundXn9mi97BRJkER498H
 99tKHt0L6/uZ4y2V3twi1OeaYaR3t9YZ26rqHoqaQOpV5aGsu9Ii0neLjIR5km19Oahv
 TPtTxgFOEAPpN1CfoQGWmGrJUWZsKsWhy+9k9NIiJs6npJcCyl7Hh9YkknOhZxhZKkGW
 jbg6Unt+S9Fi8OUXiWgoiUZ6ZRTFB5xCOyYHNjhgCGbbEe4fn9THnu10hx4tuflzbB7j
 6G2TaU8OBd/azeF8H3iwfMach3RR9LJBGuRFKkg0tbxZw6YI4bIGX50CM+guPzbLGil+
 n65A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWE9By5NxZJv5eKzCePrGxPJmsDkQkIGoBdu+GwpGlsdcuaoS6sDKpJnBwOtZb2WNhcbP6uEDZ7zwkI9OUi9WM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwRJLTywqHO84qiRAo7b5/WA6xzIyqokTnmRthYR7Hvazoz82h1
 ClHA8Yd2rTGKC0dr8MXjd3wUpmFnz2MpWzaNwRvGMaYRbkMybo03ZBO2atm88pWIKAQ=
X-Gm-Gg: ASbGncttVzIYDOZY0bW/1aN9Xn/U8I2XBaAOmpTkmA3N1mkQ19U0ctMedInG/eY+5LV
 RC2MqIEsV8yLRfdF4i4IVFB2mctzZKjcjalunsOZFimUVkrRyd9AaXdx8ChiU42tNKveJhh8Ds1
 Ic42XA6DP8A4IkTUFe45gFs3l2dhe/Vjw707WPXf5I8TFev90246rT47uPMQdWLQGV/bMnbbyBq
 gNyUmzh93Kg90K+3R3t5WvjafGOYdk90tmvQqDbWFpjqNDmN2TosBmYoIR/ZnnxeXvmRLgQDpzd
 I7EzLC65HNZe+6xUyxTZXdS7gT4bv1I7bhbCrqh3fnl8rxecRwvK1Nnxo+tkD4TDCc+H4mNvO5J
 ga1BjNdjziSE5XdE4mBP/MMC5b0Jo+S2AOfQI22BQAKE1uDh3nFRoDElFxc+GJFhh+P4sL3ztnw
 IZL1rRKn6/eVE0HoBZUVONzAEkO1CD4AKqFOalI0+LZnuVBpJ29HY=
X-Google-Smtp-Source: AGHT+IHAqzdpX3WollrdS6iAJjINTNksPg/CfvXjqQwa4xvz9GrNKp0B6IipUBCVkGkdK+Jqwy4kbg==
X-Received: by 2002:a17:90b:4b51:b0:32e:7c34:70cf with SMTP id
 98e67ed59e1d1-33bcf9237b8mr15583037a91.36.1760997736382; 
 Mon, 20 Oct 2025 15:02:16 -0700 (PDT)
Received: from ?IPV6:2606:4700:110:899a:69eb:7404:382b:b6e3?
 ([2a09:bac1:76a0:838::1d1:a5]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-33d5ddeb131sm8906676a91.4.2025.10.20.15.02.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Oct 2025 15:02:15 -0700 (PDT)
Message-ID: <1f974f16-c46d-4e9b-b0ed-c15b5d5c45cd@cloudflare.com>
Date: Mon, 20 Oct 2025 15:02:11 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 Frederick Lawler <fred@cloudflare.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 AndrewLunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "kernel-team@cloudflare.com" <kernel-team@cloudflare.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <aIKWoZzEPoa1omlw@CMGLRV3>
 <8743bbc9-8299-495c-8aef-842197bd8714@cloudflare.com>
 <IA1PR11MB6219645389921FD751CA0C8B9227A@IA1PR11MB6219.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
Autocrypt: addr=jbrandeburg@cloudflare.com; keydata=
 xjMEZs5VGxYJKwYBBAHaRw8BAQdAUXN66Fq6fDRHlu6zZLTPwJ/h0HAPFdy8PYYCdZZ3wfjN
 LUplc3NlIEJyYW5kZWJ1cmcgPGpicmFuZGVidXJnQGNsb3VkZmxhcmUuY29tPsKZBBMWCgBB
 FiEEbDWZ8Owh8iVtmZ5hwWdFDvX9eL8FAmbOVRsCGwMFCQWjmoAFCwkIBwICIgIGFQoJCAsC
 BBYCAwECHgcCF4AACgkQwWdFDvX9eL/S7QD7BVW5aabfPjCwaGfLU2si1OkRh2lOHeWx7cvG
 fGUD3CUBAIYDDglURDpWnxWcN34nE2IHAnowjBpGnjG1ffX+h4UFzjgEZs5VGxIKKwYBBAGX
 VQEFAQEHQBkrBJLpr10LX+sBL/etoqvy2ZsqJ1JO2yXv+q4nTKJWAwEIB8J+BBgWCgAmFiEE
 bDWZ8Owh8iVtmZ5hwWdFDvX9eL8FAmbOVRsCGwwFCQWjmoAACgkQwWdFDvX9eL8blgEA4ZKn
 npEoWmyR8uBK44T3f3D4sVs0Fmt3kFKp8m6qoocBANIyEYnUUfsJFtHh+5ItB/IUk67vuEXg
 snWjdbYM6ZwN
In-Reply-To: <IA1PR11MB6219645389921FD751CA0C8B9227A@IA1PR11MB6219.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1760997738; x=1761602538;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=pGC4lUtZkCybSPABd3uFIGUFJMNEDwCb9SB1IGRtFls=;
 b=ISlNuInwiTZqkbRbzxQSmsI2WPFO4rqAKAebCCtRzGMIUmxoKf2vJB9/aTTsChWm+m
 Fv4zhGXEdZE5YFcZ2NWPUknU3fVcRII/a3fShyFn1vYcVhiti5CubNWoyKBFmcyma7Xf
 Tazuu7Hc2YU9VwVen964IXUpeYh+gyup6qcipkMM9wrrTPZE8jWH6HJQlfB5AT+WFRjZ
 IhawJaQpphozLQ1YGdVuDOEJfUyt+wRvr5zDCojIFz4gIVrUYC7QHa/GqACfh9R6rp2a
 dRaAgr0YsMQOHcwCtqBnL3Y83o+X4LmL6AMd++2ZFjFmL+pT0V2r2ZmDzhbx3LwrPLj5
 fcKw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=ISlNuInw
Subject: Re: [Intel-wired-lan] ice: General protection fault in
 ptp_clock_index
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

On 7/31/25 4:01 AM, Nitka, Grzegorz wrote:

>> Hi Intel team, anyone have an idea on this? Looks like maybe removal of
>> device 0 that had originally registered PTP clock isn't handled well?
>>
> 
> Hi All,
> 
> Thank you for your message. We're looking into this.
> Yes, at first sight it seems to be a race condition hit while removing PF which is PTP
> owner (and responsible for removing PTP clock).

Hi Intel team, any progress on this issue?

BR,
  Jesse
