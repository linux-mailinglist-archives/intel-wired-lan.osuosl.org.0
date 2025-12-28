Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B167CE4A7C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Dec 2025 10:29:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D5EB60840;
	Sun, 28 Dec 2025 09:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lq5zYRuBeLlB; Sun, 28 Dec 2025 09:29:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE35F60845
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766914188;
	bh=GMvarooEHJPlsgaGe0SzgPzLYC8cB81Q+YWhxNcV3Ag=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b2W74Mj+FIMN3yuCIAkvWMiKcErJ0gHDn6jaBFx7G5TX3a9Ifr0bnN1KqrZRil+sS
	 6hj/q1/8HHhRfWf66xJB+6obga7WQRVeTOczaeo83wCeI9gXnmX7SVr2iJkRtQdz9k
	 SMZLSwV9J2a4l6trRNO/XeK+DNWIT3dPW/e0+GTgISgtINyH8PnWczdeLE0GsEaM/O
	 JJndLJeLDb4pRYLID+S0yoo9JZ1JiVvC3ubN5B+EbTYW860mrU75Wsk/+VUhftrTw9
	 uTCNQ4IwPm7TmaZxejrtXu2kX9XbvNxh7XZnEcc5QNoF+ByKg7qtY6KnRFgpsFcLo3
	 TXiNdAa754JVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE35F60845;
	Sun, 28 Dec 2025 09:29:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F3D11E1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 09:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D6CE404BB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 09:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7n3XbOOhQqrI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Dec 2025 09:29:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1016B400B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1016B400B5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1016B400B5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 09:29:44 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-343-DZns-BVtO-65gyKrfbgwEA-1; Sun, 28 Dec 2025 04:29:39 -0500
X-MC-Unique: DZns-BVtO-65gyKrfbgwEA-1
X-Mimecast-MFC-AGG-ID: DZns-BVtO-65gyKrfbgwEA_1766914178
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-4776079ada3so75141545e9.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 01:29:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766914178; x=1767518978;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GMvarooEHJPlsgaGe0SzgPzLYC8cB81Q+YWhxNcV3Ag=;
 b=h1+3FF6EL5qKh/kNbZKuIETlp1s/bDzDcyvBnXF21tkl73oORa9+KI+UM7KXltRaOZ
 /JyVLSey85R8+FpSzRce3oEQIEV/lKXNaUIWFI5HzrjXsvRkRSgl2wCEbEaCAoKS1umW
 wZTNNNvP9wFHk4R/bCpenitexoxPL2YfZ5o9unpzJaVr3qhs7fXwb6g3WdjpQmZF7xV1
 9Ts+psVIlva7w0LMvCXuLb8jFJwxnh1AQ9EuWqP9UNSJMh6SaXpyCvBAghw2GHX37Uwg
 u7GLn5OOtxS4W5/UXEacOLGp69ei4Y97A0K8e4o0iXEMjHKdsuc9SxzUqkiFISYNloOu
 2WYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWIlNc5uhMic1X90hKwUCy5fr/pO1Lqq0pqXw/9uFM3Zgx53S8+5lt3JTFuJ1mJTbFVOsKs5b20ad1G3Gc2hnk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwgTOHVW1cXO7+bJQ271ApF1uNnIto5RMmatK1xlOU2Vdy4/Q1e
 XYE/iUBHYzZ8MqV6m7+MNKrhS0kuzt6CYftRK0GKaZ+Z7PxI5nooh9/mst4JU3b3OAtjETZ71g4
 u0Wz6a2X5mpzxYRGFru5Pu3jZ9rto7AOxVRuR782fsVIBssLE8EV20ysHsdqrWSUndZvsBpc=
X-Gm-Gg: AY/fxX6jUdnRPJQqcMo6/l3ajJyY9DagXhn5gHdBhDX26bT2G1jO4Vx0HtQ8VJn4Jkk
 jg9P5YPziFW80IJnS6GaSX/0uJszfZidYzczCAsFMH75BnitAEgUvxaKIfn27Le1icUsMEageS7
 V1HjNHh2mYJ+A6AX+fuhkFyb446PiVlp+SWYw9sB+hPR/6LRzj/Z4dqCgAX6HMNW+BxAoNTRrsk
 uj8o28ITz3V8ei76HMw698wghHVcITtu57rCVZcIADUps8/BmTr5hDMotJaCgbPDi2YiX1ZxtDz
 iexOX51b2W8yo7YB2TF8lciG2/s+bTEuVCwcsOHABKlIf90aNEsEdzCv9CLjClKBLMfuJ7fO6CZ
 lRbx8nYMHoySP9A==
X-Received: by 2002:a05:600c:8b11:b0:477:55ce:f3bc with SMTP id
 5b1f17b1804b1-47d2d273515mr253628415e9.19.1766914177929; 
 Sun, 28 Dec 2025 01:29:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJLxJINs3vOxy7Gs94Dw5AAaz2WurO64wNw2ut3F6n8+Lat3hQorddJJCfdMfVW0b2BSTlpA==
X-Received: by 2002:a05:600c:8b11:b0:477:55ce:f3bc with SMTP id
 5b1f17b1804b1-47d2d273515mr253628105e9.19.1766914177160; 
 Sun, 28 Dec 2025 01:29:37 -0800 (PST)
Received: from [192.168.88.32] ([169.155.232.231])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47be279c5f8sm511219775e9.9.2025.12.28.01.29.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 28 Dec 2025 01:29:36 -0800 (PST)
Message-ID: <e8aa1cf8-f42e-4329-8bd8-0f2c3fedde55@redhat.com>
Date: Sun, 28 Dec 2025 10:29:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: mheib@redhat.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com
Cc: przemyslaw.kitszel@intel.com, davem@davemloft.net, aduyck@mirantis.com,
 kuba@kernel.org, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251218121322.154014-1-mheib@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251218121322.154014-1-mheib@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bmwW0i_OA_6Yzurr1I1LM91yfL_6wUC4zRI6Sw30_8o_1766914178
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1766914182;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GMvarooEHJPlsgaGe0SzgPzLYC8cB81Q+YWhxNcV3Ag=;
 b=EuZ7sNmSdQRSyO8LloenZ1VQxTmb0H1u11Mlj+CAGHg2FZNKyeDmtDvvtDDqDcKFn2HSv1
 caLFYVGqn2poO2vnD1+naRWRoLw9NOoFb3jpfHQoyLSxIWR72hwwkx6NmeaF1engdKuv9f
 8WD3QWPBkinZAD++ED9+GTgaMyXLUMs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=EuZ7sNmS
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] i40e: drop
 udp_tunnel_get_rx_info() call from i40e_open()
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

On 12/18/25 1:13 PM, mheib@redhat.com wrote:
> From: Mohammad Heib <mheib@redhat.com>
> 
> The i40e driver calls udp_tunnel_get_rx_info() during i40e_open().
> This is redundant because UDP tunnel RX offload state is preserved
> across device down/up cycles. The udp_tunnel core handles
> synchronization automatically when required.
> 
> Furthermore, recent changes in the udp_tunnel infrastructure require
> querying RX info while holding the udp_tunnel lock. Calling it
> directly from the ndo_open path violates this requirement,
> triggering the following lockdep warning:
> 
>   Call Trace:
>    <TASK>
>    ? __udp_tunnel_nic_assert_locked+0x39/0x40 [udp_tunnel]
>    i40e_open+0x135/0x14f [i40e]
>    __dev_open+0x121/0x2e0
>    __dev_change_flags+0x227/0x270
>    dev_change_flags+0x3d/0xb0
>    devinet_ioctl+0x56f/0x860
>    sock_do_ioctl+0x7b/0x130
>    __x64_sys_ioctl+0x91/0xd0
>    do_syscall_64+0x90/0x170
>    ...
>    </TASK>
> 
> Remove the redundant and unsafe call to udp_tunnel_get_rx_info() from
> i40e_open() resolve the locking violation.
> 
> Fixes: 06a5f7f167c5 ("i40e: Move all UDP port notifiers to single function")
> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

@Tony: I assume you prefer to take this series into your tree first.

@Mohammad: I think we don't need to packport this path in old kernels; I
guess a better fixes tag should point to the recent udp_tunnel
infrastructure changes.

Thanks,

Paolo

