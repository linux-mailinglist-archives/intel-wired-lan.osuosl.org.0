Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F366088FE57
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 12:48:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A68AB60D53;
	Thu, 28 Mar 2024 11:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pii2d1x-L529; Thu, 28 Mar 2024 11:48:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03CBB60D66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711626531;
	bh=fFWAM7aDWzcp6y6UIHXrKDrn/vPVbGKoJkanz0+nyYQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SmAyKWCPfhGSliUudMldnngbwTU/oZ4DqhYSH6qyeeGxKe/T1k7TZNSwhTrXX1bRH
	 uc7kEYjTfjOBZqSZUdUbgGi+l47q0LVmqFA+hE6KltRfJrnvCfols/CTfbFKWiooXt
	 vY3WBq7ZTG+LLty7q+aWzgqobUZbc9N2i5AKUIVjP51BPRpH6uPaDy+GaTAG+TKV3t
	 Ubg/uIhpsACG4oyC9mymEPBc75WlFW26ibGnQc8uxj+lPWcYXTAcOychOuz2wcUSqO
	 E+cKq8j5DjI3QO0+MNloP/62cLLyIYW2lbIBs3Gu7Qpr6Mb+yFucJ1XEIkE7AIooTB
	 WAgyEpXQXrpng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03CBB60D66;
	Thu, 28 Mar 2024 11:48:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 80CCE1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:48:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 779BE4032F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:48:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d1SyH3enAIyV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 11:48:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::535; helo=mail-ed1-x535.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 48EEB4032E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48EEB4032E
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 48EEB4032E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 11:48:47 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-56c2cfdd728so8956a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 04:48:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711626525; x=1712231325;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fFWAM7aDWzcp6y6UIHXrKDrn/vPVbGKoJkanz0+nyYQ=;
 b=hpqjmB9wn4AwktZf3HGzj/rfZN7zWt3DHmJsq/uiS1zlHblaUQTO417b2OaGHAPf0r
 neLXTu7sJgITN6w6krRYmBS/8tlHZRME2qOCYOv4xabHcCa3bHum3hGyO/ZcwwVhMLhZ
 a5E76YAHFuJV2XL6BorP4G1YCl1JXw6PQWp8VR7XUtVW1icU3UU3hJKD0Bg7So+rPUWn
 tlDhjZOC5K1nZCQQM5SAAF+dzScGxdyTuQ+JeJpj/9iNSClfPl52nc/V3XbHwNOySdYz
 M+eVFkpbdkIvHFfo1YdGaWmgEZHKnoo+pA6eZ3T1PGCS1N9dOpPTlP/4O05HLtasaQ23
 68GA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXyOfcIoDdW6x/zmrScA2OQOIUEjaHbBCJPpu3PCSI9SWqRBN+evy6j/oy9hqWyDI6ZHbkUfN6QntFxsHWwDqdIU2fxOUyG8wgtVKtaCtKfHA==
X-Gm-Message-State: AOJu0YwsaboHfuJGYww0TPZlAO/9cWVkpx19pILtWZoZhElcI6yST413
 egsunvm8gV28tHfwqoBDGCaun4fCkZ9QnQXvHVy0D7BhiiS8W2iHfWjKyd9jqTnG2E4Hvl5EhRm
 pdFZWJEJi6w9BkMU49A+zv2NAvp/C5xDH3Y2p
X-Google-Smtp-Source: AGHT+IGqnYw+sySY96g0LyDux434D9RXsTE6M9BXDodVM+OiDk90Z2Y6TxzJrWUA3XY3y1/BPiP9d/Yg/0jkzhK73kc=
X-Received: by 2002:aa7:d68c:0:b0:56c:cd5:6e42 with SMTP id
 d12-20020aa7d68c000000b0056c0cd56e42mr152766edr.6.1711626524891; Thu, 28 Mar
 2024 04:48:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240327040213.3153864-1-kuba@kernel.org>
 <20240328113202.GH403975@kernel.org>
In-Reply-To: <20240328113202.GH403975@kernel.org>
From: Eric Dumazet <edumazet@google.com>
Date: Thu, 28 Mar 2024 12:48:33 +0100
Message-ID: <CANn89iJMn+wVBv7uNWTRJ_kOC2=vMmEcGmM5K_nk74LKxUwm_w@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1711626525; x=1712231325; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fFWAM7aDWzcp6y6UIHXrKDrn/vPVbGKoJkanz0+nyYQ=;
 b=KmbDpuv7+5V8Q29OkYrSxXSfLLdTBqYZ++SmStvsMUV98mOLFcMuh3E1NLtLPiVCov
 cv5/njgImDBnONXJDoLcb48puYSRrJUlApZmu31TmF7CxO0eGOXEsKMu32Ngoc0hVr3m
 MuMQpWPsagM7+IYqoMRoVMnnZ/+Mu+ohHsjfHpDFB1xsR8XTnUbqJwfSSCX1F96yGczJ
 +w+fuo9txn3rDAAv+3SS4KSOY1WxiRjTzgChlbTBlVAA1Lu7B27+pFjIPKaf6U7gI7QG
 xtciHt5OklZ+5Fg8na6mEf5HLf/zTpEr8nruCR1z4s18hcI3CxfvxQs15r+ue8KDYNvS
 9Z7Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=KmbDpuv7
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] net: remove gfp_mask from
 napi_alloc_skb()
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
Cc: siyanteng@loongson.cn, netdev@vger.kernel.org, alexandre.torgue@foss.st.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, joabreu@synopsys.com,
 anthony.l.nguyen@intel.com, mcoquelin.stm32@gmail.com,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 pabeni@redhat.com, davem@davemloft.net, alexs@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 28, 2024 at 12:32=E2=80=AFPM Simon Horman <horms@kernel.org> wr=
ote:
>
> On Tue, Mar 26, 2024 at 09:02:12PM -0700, Jakub Kicinski wrote:
> > __napi_alloc_skb() is napi_alloc_skb() with the added flexibility
> > of choosing gfp_mask. This is a NAPI function, so GFP_ATOMIC is
> > implied. The only practical choice the caller has is whether to
> > set __GFP_NOWARN. But that's a false choice, too, allocation failures
> > in atomic context will happen, and printing warnings in logs,
> > effectively for a packet drop, is both too much and very likely
> > non-actionable.
> >
> > This leads me to a conclusion that most uses of napi_alloc_skb()
> > are simply misguided, and should use __GFP_NOWARN in the first
> > place. We also have a "standard" way of reporting allocation
> > failures via the queue stat API (qstats::rx-alloc-fail).
> >
> > The direct motivation for this patch is that one of the drivers
> > used at Meta calls napi_alloc_skb() (so prior to this patch without
> > __GFP_NOWARN), and the resulting OOM warning is the top networking
> > warning in our fleet.
> >
> > Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > Signed-off-by: Jakub Kicinski <kuba@kernel.org>
>
> Reviewed-by: Simon Horman <horms@kernel.org>

Reviewed-by: Eric Dumazet <edumazet@google.com>
