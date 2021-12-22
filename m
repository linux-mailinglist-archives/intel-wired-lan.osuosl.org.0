Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 056AA47D527
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 17:33:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7965F4158B;
	Wed, 22 Dec 2021 16:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FpbkFoXpO71W; Wed, 22 Dec 2021 16:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8246F4024E;
	Wed, 22 Dec 2021 16:33:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A88D1BF3D2
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 16:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 84BE84024E
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 16:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gYZslgI97Zx4 for <intel-wired-lan@osuosl.org>;
 Wed, 22 Dec 2021 16:33:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3AAF740235
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 16:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640190800;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YkjWm5w9uqw0qxH1RxhYaSt4NMqG+9oSrMTG2jfn1vs=;
 b=YuZGqVHp/m4OB4pViTAZBjn3uG2o7O+C0ixKx2e+C8wSQwBcZdkr3fv9aBHbwmDURAU7QX
 BJHUbHUNE7uCJyc1PZ6BdWdsRzf+oQD3aWYDHXdUhj8pUfVCYHA202P4skphocSDWB5QRI
 QJkioZOzzZUcJBJqAfBpMdkNw2U2FRA=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-382-2st9QCruP6Ws_7-OsB6DaQ-1; Wed, 22 Dec 2021 11:33:17 -0500
X-MC-Unique: 2st9QCruP6Ws_7-OsB6DaQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 s8-20020a05620a254800b0046d6993d174so2173771qko.3
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 08:33:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=YkjWm5w9uqw0qxH1RxhYaSt4NMqG+9oSrMTG2jfn1vs=;
 b=Y3yWYw7jpzf0z0WE08hptxuMtXC+cAqNZSPfQHJUiABCJpEmOSTPP6v1xuHIh0JZUa
 AH6G0fDTThx1NgkgiT7s4TMUhyjE733zn/zQcDZ156nNkSS9GH+0IUvGCnbki9Ve2UN/
 YJor6rKx7bbpPeTMSYaF8GrhBGhNvPwzDBPxU7VESIYMDKQp5X9CmMKAIwHyirCWBYcc
 nBON+tEW+ifpJxsy7FGG8SaYzG2ObQPQy73K1BbShxEZJhAuRB6cxNKBplw9dwa473DA
 WNElMBBamCZibwQv9xviWFhoJ6HIxD8yNp/XCvTMVtNR9HtRedQMoYsChDD9vPmVjUK7
 oWYQ==
X-Gm-Message-State: AOAM532r2ccgvWDqmzv1Vk1AqDbI1Ul0MjgZXaEVlosPHUlXDxh/g/wv
 pH8n5W1dVjXPHfLsUi68UAz+zpomF+xqtYEOZ4gBbs/YA+j8fb9TGqBPLG5mX2bwun60sGsWVKK
 IIw8X9joIIOzNyWRrRToMdg==
X-Received: by 2002:a05:622a:391:: with SMTP id
 j17mr2849119qtx.228.1640190796499; 
 Wed, 22 Dec 2021 08:33:16 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxWISHwaqTyICBeU8zn2C+GpdM8PHg7Ti3jXoZDSra0z75/Gl4H4mpKm43LfK134VVvkqaO4A==
X-Received: by 2002:a05:622a:391:: with SMTP id
 j17mr2849104qtx.228.1640190796275; 
 Wed, 22 Dec 2021 08:33:16 -0800 (PST)
Received: from [192.168.33.110] (c-73-19-232-221.hsd1.tn.comcast.net.
 [73.19.232.221])
 by smtp.gmail.com with ESMTPSA id t5sm1888501qtp.60.2021.12.22.08.33.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Dec 2021 08:33:15 -0800 (PST)
Message-ID: <eb45db6c-7ff5-7aea-7b5e-0cc41d63e689@redhat.com>
Date: Wed, 22 Dec 2021 11:33:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@osuosl.org
References: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
From: Jonathan Toppins <jtoppins@redhat.com>
In-Reply-To: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jtoppins@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] refactor irq allocation
 in ice
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/22/21 01:21, Michal Swiatkowski wrote:
> The ice driver uses the old PCI irq reseveration API. Change the ice
> driver to use the current API.
> 
> Implement a fallback mechanism where, if the driver can't reserve the
> maximum number of interrupts, it will limit the number of queues or
> disable capabilities.
> 
> First two patches add ability to turn on and off eswitch offload. This
> is needed when driver can't reserve maximum number of interrupts. In
> this case driver turns off eswitch offload as driver can work
> without it. Additionally, the eswitch can be supported only if SRIOV is
> available, so set eswitch capabilities only if SRIOV is supported.
> 
> Michal Swiatkowski (3):
>    ice: add check for eswitch support
>    ice: change mode only if eswitch is supported
>    ice: use new alloc irqs API
> 
>   drivers/net/ethernet/intel/ice/Makefile      |   3 +-
>   drivers/net/ethernet/intel/ice/ice.h         |   4 +-
>   drivers/net/ethernet/intel/ice/ice_arfs.c    |   3 +-
>   drivers/net/ethernet/intel/ice/ice_eswitch.c |  46 +++-
>   drivers/net/ethernet/intel/ice/ice_eswitch.h |  12 +
>   drivers/net/ethernet/intel/ice/ice_irq.c     | 213 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_irq.h     |  12 +
>   drivers/net/ethernet/intel/ice/ice_lib.c     |   5 +-
>   drivers/net/ethernet/intel/ice/ice_main.c    | 220 +------------------
>   drivers/net/ethernet/intel/ice/ice_xsk.c     |   3 +-
>   10 files changed, 300 insertions(+), 221 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.c
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_irq.h
> 

Reviewed-by: Jonathan Toppins <jtoppins@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
