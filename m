Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A363828868
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jan 2024 15:44:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9979661189;
	Tue,  9 Jan 2024 14:43:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9979661189
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704811433;
	bh=7hTSp/621JuWdOzYoBlVmVqh7hDK5oBkPf++B3jV4j8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZSwfapQBnRPW1RD9YxHOCyBbd+Eqp8OcexZXlFc0+UV4zoDRDlfN7cqECUyWICLp3
	 INYrBOuUlcZshPbpK6WD7SkA5krTdf5Ybg/f49ylNjYse05RQxGanuCCnwCeWf/Oqj
	 dEn5ZvrWNuFZeXAmLr1NIa1BRw9DenksIAs6oyJZlm2SspeUsyz5DkU4vCulf017Yq
	 v/nWi1hHvwp2QQVvZtU+6l4a7uipI5+2wM9IgbF32jfH0CcBcrFQduMo/IPg5z0X99
	 ViG/vqZ742orlmfOt3w/kv59orEUwynaq8IW6m+r+vuzDFyRjGiuu6QA0xUBAbuip1
	 jjuIzVM2ocHvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iu8zECEvt-4x; Tue,  9 Jan 2024 14:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B152C61155;
	Tue,  9 Jan 2024 14:43:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B152C61155
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D70031BF34E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 14:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A10D843535
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 14:43:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A10D843535
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id roTS9yWl3ndq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jan 2024 14:43:46 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 964AF41765
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 14:43:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 964AF41765
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-5534180f0e9so10471a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Jan 2024 06:43:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704811425; x=1705416225;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7hTSp/621JuWdOzYoBlVmVqh7hDK5oBkPf++B3jV4j8=;
 b=ZnZhbe3LGEZkw773/NdF8s/bw33WgI1lNDt5rep6K2wOid7DSOIP8YVfWSHh0w2B07
 H4DIFo5/zRpM0aq+MnIXiXOENj3Ilc0JnkdByqF8qzwYUswKSuTMxTDEQQIfxQBO5tOZ
 eEhwRZVCX2pg6ro23b+ztYowp3gV1AImqh+C3dbYS5HuIduMv9+6QzdTVFE71buM91ts
 abtefUu1vfvCPV+KBa/km8rFyqM7/KT+E5YmjG7ZjnleBnVinxAwOQ6ipRHwIToEdLbz
 bdEG2kmsqB9EAs/JzWWwqPcZFNkWjWG8yRuDRyWR/ViFISfEnrz4vLc1r4NggPdy9dlL
 5tWQ==
X-Gm-Message-State: AOJu0YxwbD5/YbdjVn0x1bKnomspYGqS5qHVFU7e28UA671vH9CEBjWh
 tufs/NOTUJSvAIxErPHo3txyVEa1c78xFSygFrtAXhWOx2E9
X-Google-Smtp-Source: AGHT+IGCzpJkHmbkISlJEaLGwgFS/54jBbdaQxFTLs2DxUORYa3GyuTiAnd2AjxmVJ16Ps8zGgj4wzF+PsKfXzpopCc=
X-Received: by 2002:a50:9548:0:b0:554:1b1c:72c4 with SMTP id
 v8-20020a509548000000b005541b1c72c4mr101455eda.1.1704811424481; Tue, 09 Jan
 2024 06:43:44 -0800 (PST)
MIME-Version: 1.0
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
 <20231223025554.2316836-6-aleksander.lobakin@intel.com>
In-Reply-To: <20231223025554.2316836-6-aleksander.lobakin@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Tue, 9 Jan 2024 15:43:30 +0100
Message-ID: <CANn89iLbRnakLSuuoAF7eeN8KGqc7wy0bEgCmHCP1mU6LB912A@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1704811425; x=1705416225; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7hTSp/621JuWdOzYoBlVmVqh7hDK5oBkPf++B3jV4j8=;
 b=g7VSnX9/eCFri7o1MYw7fj6oFQu+SrjRfIssUxsY8qVHXqtcBt8r6W1xuqQTb69RyC
 QWkCWnfA0pS+mGOgTgii2VniB3YGmtgZNdLX1Dl1YBuZJzxogDqk87GPXcUHAq3oNIIC
 rKkkScAbcvKlGll+vdgXNG4VWGZALneWqxwke9/lb9Ps1IJBrm8XnE7DxReTugYWQMjW
 gEWP403Ulmk47j624NfDy5fMxe1rsmbmNmiX614bLZxFC6kSACveCSrvpU9aZGjW5T+U
 Uu1LnghQKeyuPvlMzG6fOl9W7Yp+ox42qa+FHgFGNzooKq/+W0wBMhSbOB6g7zl+zcqH
 zjMQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=g7VSnX9/
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 05/34] idpf: convert
 header split mode to libie + napi_build_skb()
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Dec 23, 2023 at 3:58=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> Currently, idpf uses the following model for the header buffers:
>
> * buffers are allocated via dma_alloc_coherent();
> * when receiving, napi_alloc_skb() is called and then the header is
>   copied to the newly allocated linear part.
>
> This is far from optimal as DMA coherent zone is slow on many systems
> and memcpy() neutralizes the idea and benefits of the header split.
> Instead, use libie to create page_pools for the header buffers, allocate
> them dynamically and then build an skb via napi_build_skb() around them
> with no memory copy. With one exception...
> When you enable header split, you except you'll always have a separate
> header buffer, so that you could reserve headroom and tailroom only
> there and then use full buffers for the data. For example, this is how
> TCP zerocopy works -- you have to have the payload aligned to PAGE_SIZE.
> The current hardware running idpf does *not* guarantee that you'll
> always have headers placed separately. For example, on my setup, even
> ICMP packets are written as one piece to the data buffers. You can't
> build a valid skb around a data buffer in this case.
> To not complicate things and not lose TCP zerocopy etc., when such thing
> happens, use the empty header buffer and pull either full frame (if it's
> short) or the Ethernet header there and build an skb around it. GRO
> layer will pull more from the data buffer later. This W/A will hopefully
> be removed one day.

We definitely want performance numbers here, for systems that truly matter.

We spent a lot of time trying to make idpf slightly better than it
was, we do not want regressions.

Thank you.
