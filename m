Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9695584388F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 09:11:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E341941F30;
	Wed, 31 Jan 2024 08:11:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E341941F30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706688670;
	bh=Wg08B1khIqon35bYjLh0nNz7ZG8WHYUMXftoecarnmQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7IHNM5H2XeatWWkaujVgDGDudrgQcbs85w3uTtxtD7zG6zq/BqmTRL+n3//5Nxd7M
	 0djUhvyNf2sK92TOBSko76jkdZ+Sjl9LemKeSQ86yeyuY1DJfacw2lNBRoLNahDHHC
	 NgThwoNdzWDgwwm2RSnIqwIZ50JazbPaAwp95TuBbo/PBmhr2DqCVdLHBdQUoHXOeM
	 IEE+7YdMF8F9HFCCHODba6C0R/diXG1+Fjxu8qh8W1tJk2i/ohn65VqWqrEK3SJsB4
	 DDgm02KVh9Uvaue7/ykGqLhHsBH2Yr9Z5tytPQCQxCo55SHxbHA4HmIiQ+bMdJyPTJ
	 t6JkcSOUnAqhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXE3tD6VVJ7c; Wed, 31 Jan 2024 08:11:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 953BA41F25;
	Wed, 31 Jan 2024 08:11:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 953BA41F25
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 436271BF846
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 08:11:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19D9F41F1E
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 08:11:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19D9F41F1E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yLCTzhBUIQ91 for <intel-wired-lan@osuosl.org>;
 Wed, 31 Jan 2024 08:11:02 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6396C41F18
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 08:11:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6396C41F18
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-499-I8WGRlxsP_yoZa-BpYO5UQ-1; Wed, 31 Jan 2024 03:10:59 -0500
X-MC-Unique: I8WGRlxsP_yoZa-BpYO5UQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6064E87B2A2
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 08:10:59 +0000 (UTC)
Received: from [10.45.225.38] (unknown [10.45.225.38])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 235A72166B31
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 08:10:59 +0000 (UTC)
Message-ID: <8ad04f3f-ff6f-4a16-8740-8bcf32f5cac2@redhat.com>
Date: Wed, 31 Jan 2024 09:10:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-wired-lan@osuosl.org
References: <20230817192816.969638-1-aleksandr.loktionov@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20230817192816.969638-1-aleksandr.loktionov@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1706688661;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Wg08B1khIqon35bYjLh0nNz7ZG8WHYUMXftoecarnmQ=;
 b=Fs1h7foFVVW/XeUKoj4X1fsdej7Yx1A5JYIbiu9vMWo+IrStQw/nRe5gK0l1LwZBN98y9r
 3nsoUYG4GgSEetRsDQhtvPFmndLNfPr46iRKhbZ8snCd+03YW3FRdF7yncbYM2yGWzw2sD
 GyqvuREHXcgBgqmArV8Z1NGwCdHhPwc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Fs1h7foF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix 32bit FW gtime
 wrapping issue
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 17. 08. 23 21:28, Aleksandr Loktionov wrote:
> Before the i40e_nvm code didn't take into account that 32bit FW gtime
> wraps ~70minutes, timeout was calculated as 64bit gtime + NVM_TIMEOUT
> , so when gtime was ~70minutes, then gtime could not become greater
> than 64bit timeout value and the semaphore to be considered as expired.
> 
> Decrease hw_semaphore_timeout size down to 32bits, because FW
> I40E_GLVFGEN_TIMER register is 32bits only anyway, but having
> both variables same u32 size simplifies code.
> Fix FW write semaphore expiration condition, taking into account
> that I40E_GLVFGEN_TIMER wraps, by checking the sign of subtraction
> of two 32 bit values.
> 
> Fixes: 56a62fc86895 ("i40e: init code and hardware support")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2->v3 fix commit message
> v1->v2 in commit message: add 'Fixes' tag, fix a typo
> ---
> ---
>   drivers/net/ethernet/intel/i40e/i40e_nvm.c  | 8 ++++----
>   drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
>   2 files changed, 5 insertions(+), 5 deletions(-)
> 

The same here, v3 was without any comment but marked as 
ChangesRequested. The patch is nowhere now... upstream, your dev-queue...

Thanks,
Ivan

