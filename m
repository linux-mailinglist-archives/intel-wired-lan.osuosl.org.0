Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4F887AA38
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 16:16:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7280B812A1;
	Wed, 13 Mar 2024 15:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zyViL3YYewyE; Wed, 13 Mar 2024 15:16:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B38B481277
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710342964;
	bh=zitympJcMqQpZuvfBggEaIHiO0WpMlfnPdF8UjN+huc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2sqjHtknyxeWa8WZhyvDd1HTDg7DyFNisZtLLzcJ9cYZcYyBIivc2rMg4k8jEZ8ny
	 qrUyb1ngZFB1HluNveBuxjO0jWC/t1Zg0czvhm6//tTAeDUS5YyhRWAOrOWSiTNHzc
	 IeCm1NeN9pVBUs8wkikrw8Hn3TF3YBIJfbIVnE9WVhxOy4uU3h5MMRy9veNgs26FYZ
	 Q147GXXWXVKDZhJ9U3T0adQEo5hO3E5XHlFjehu1K0C806rP8KIhfEKRbt5BJwyhXs
	 LvU8HWPh+axjnPOChWLIeScU5PzU6EcdI66TnyrLTzKWaa7qo58VylVeWVzQnaAodT
	 KCry+qtxC4hZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B38B481277;
	Wed, 13 Mar 2024 15:16:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E394B1BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 15:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D02A94031D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 15:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iZIJH_JfoJ4P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 15:16:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 14D42400B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14D42400B8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14D42400B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 15:16:00 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-632-HkdNa89aMmqpz2KCcnIf3g-1; Wed,
 13 Mar 2024 11:15:54 -0400
X-MC-Unique: HkdNa89aMmqpz2KCcnIf3g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FDD43C0C8A1;
 Wed, 13 Mar 2024 15:15:53 +0000 (UTC)
Received: from [10.45.224.236] (unknown [10.45.224.236])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C0D213C23;
 Wed, 13 Mar 2024 15:15:51 +0000 (UTC)
Message-ID: <3f934c7b-867c-4550-93ea-4f567807fa98@redhat.com>
Date: Wed, 13 Mar 2024 16:15:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>
References: <20240313125457.19475-1-ivecera@redhat.com>
 <CADEbmW3NQ7SQpccOqTD=p_czpBbOY=41kS7krwx2ZEDmFfcgrg@mail.gmail.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <CADEbmW3NQ7SQpccOqTD=p_czpBbOY=41kS7krwx2ZEDmFfcgrg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710342959;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zitympJcMqQpZuvfBggEaIHiO0WpMlfnPdF8UjN+huc=;
 b=cSlUNBLbVpjv9sk0YX6pZkD79Ln+kzDRjra3Av6qSYopP+SLIksl/H3EXQOdIgA/RKSFUz
 fg+tI6wvekdLJPbZAmFV04RO0wSbwPAZ6GNb12cNirTHrLK6PRyaayRhMWAp5Os+S7cvDp
 kGp+Z8sv4N/8rpIqpB5MdwD8eyTgYeU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=cSlUNBLb
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Enforce software interrupt
 during busy-poll exit
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
Cc: aleksandr.loktionov@intel.com, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, pawel.chmielewski@intel.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Hugo Ferreira <hferreir@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 13. 03. 24 14:47, Michal Schmidt wrote:
>> -/* a small macro to shorten up some long lines */
>> -#define INTREG I40E_PFINT_DYN_CTLN
>> +static inline u32 i40e_buildreg_swint(int type)
>> +{
>> +       u32 val;
>> +
>> +       /* 1. Enable the interrupt
>> +        * 2. Do not modify any ITR interval
>> +        * 3. Trigger a SW interrupt specified by type
>> +        */
>> +       val = I40E_PFINT_DYN_CTLN_INTENA_MASK |
>> +             I40E_PFINT_DYN_CTLN_ITR_INDX_MASK | /* set noitr */
>> +             I40E_PFINT_DYN_CTLN_SWINT_TRIG_MASK |
>> +             I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK |
>> +             FIELD_PREP(I40E_PFINT_DYN_CTLN_SW_ITR_INDX_MASK, type);
>> +
>> +       return val;
>> +}
> This function is called only from one place and with a constant
> argument. Does it  really need to be a function, as opposed to a
> constant? Or are you going to add more callers soon?

This can be reused also from i40e_force_wb() but I didn't want to make 
such refactors in this fix. Lets do it later in -next.

Ivan

