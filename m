Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B02989FF7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 12:58:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4B2580FF8;
	Mon, 30 Sep 2024 10:58:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hRd9tuGteuhh; Mon, 30 Sep 2024 10:58:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B30780E4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727693895;
	bh=YQtQd6yJgFN1nEDyO9tB7R6YFKbGVROFVNqQrT35Gl4=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U2+0Wlujxa25XeQQB7js/rcguMU248GjidupzOW8naKRPP0vmS22cFCh77D7Omd2e
	 zbUt3bpMiBH/O6MkrZw/81Yv+TTIN3HDLph+1Kl18vBFcPAganNzQ2qs5MIQOADZAF
	 k4ydrGUbPOcuXzsFpaOEM0KN28dxx+iwyGoQoDSxfBIucQJrcUPeCxgLli0uiIjPKq
	 ZanZmtP/ojHBNG9+M+knng0sirrM+CwCO/kXjOvo0hnXiRpOlzicuMVbpT0ylaJPas
	 E8is8Pl9BzEk7ZFJxANCgezGfgXreig5QT/Ti3qwqBAjJEjx4Rv6dlpJY3c94VFN6l
	 adwL5wCWOtj9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B30780E4E;
	Mon, 30 Sep 2024 10:58:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 255F71BF418
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 10:58:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11E61401B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 10:58:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rGGQr4uT-I4v for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 10:58:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E9CDD401A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9CDD401A0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9CDD401A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 10:58:11 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-25-3CrsHzkgNjK4kYYXAM90pA-1; Mon, 30 Sep 2024 06:58:08 -0400
X-MC-Unique: 3CrsHzkgNjK4kYYXAM90pA-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a8d1a00e0beso94992666b.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 03:58:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727693887; x=1728298687;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YQtQd6yJgFN1nEDyO9tB7R6YFKbGVROFVNqQrT35Gl4=;
 b=V0HEn39GWJIg0rr35y/VvSObjwazw0FJqBYFfLUOsBWLKkcaFdHYX3oWFj6qnQt5qC
 b6aofhC3FrHt0jlg1Oh24WFJXSBcF2OrjHPLbH7+BSsxOYj4599o0iSRd+h82c7x7JiY
 6zGQFbakRf1Ag1vZsmVUVnev31iqUgEjqabEBCWxQzWU3yC6FKIeWV+SQSl7fUxNLy2j
 b9majjRN+VSGatDQReFHtEzJxNuWoTeVEQxHdkUGCZY5AYIr80XPWVdQ2MiIzDHgXbTl
 ISVmTbPu5jHKu/29+OoklPndgXgvq1+PYGWJBiMoZGbcn7jMgcOaXx89n5sSP/hgJiXl
 MctQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV/bpLBzLwq+UzysEEaf2QbQHJvsAHeIFe4jJ/S5b3Js/LmCDJDqLVgdmFpQ5SJKst8eSLMrhBTFALjH751HN8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyq0427VFL3n0hanJ8dNd5L9OhdiCgtiID/iVMWQuKt2/+v5eDE
 Kf57+icGtF5VIfuSO3v1nT6GB8k6EbhmTbih/e7sPkPwNAPYEDM40Ghzr0brNggUo5Edp/T/RrC
 D7iFAoq2dwC8CKVKTp10LE2BiiGvmb9ENxyx08B62ksqLqYCmlYSSLrQhiOwrrW3QXRI=
X-Received: by 2002:a17:907:1c20:b0:a8d:2b86:d76a with SMTP id
 a640c23a62f3a-a93c320fddbmr1195061866b.32.1727693887593; 
 Mon, 30 Sep 2024 03:58:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGHuIsk16t7bVuBeqIkOOcCdNMy8NqwmYcnnTngn99ySvq772YXEHBZWTPrcxOhMsAnkZifw==
X-Received: by 2002:a17:907:1c20:b0:a8d:2b86:d76a with SMTP id
 a640c23a62f3a-a93c320fddbmr1195058866b.32.1727693887132; 
 Mon, 30 Sep 2024 03:58:07 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a93c2777214sm508704066b.36.2024.09.30.03.58.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 03:58:06 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 7F603157FE98; Mon, 30 Sep 2024 12:58:05 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>, Arthur Fabre <afabre@cloudflare.com>
In-Reply-To: <ZvbKDT-2xqx2unrx@lore-rh-laptop>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <CAOn4ftshf3pyAst27C2haaSj4eR2n34_pcwWBc5o3zHBkwRb3g@mail.gmail.com>
 <87wmiysi37.fsf@toke.dk> <D4GBY7CHJNJ6.3O18I5W1FTPKR@bobby>
 <87ldzds8bp.fsf@toke.dk> <D4H5CAN4O95E.3KF8LAH75FYD4@bobby>
 <ZvbKDT-2xqx2unrx@lore-rh-laptop>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 30 Sep 2024 12:58:05 +0200
Message-ID: <871q11s91e.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727693890;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YQtQd6yJgFN1nEDyO9tB7R6YFKbGVROFVNqQrT35Gl4=;
 b=gkVzmenPRxDZim+YPR4UzjtsYDZXyqRIC7LBF9pFHbOXWXERWIGEZr8UIxLFo8Z6Taz8RS
 lVogRld5zK79IfDrwmD9hzDdMQmcfMX4onLm6SFT8Xfrz9r4IakFBOO2SwFAxRQFUfN6Yx
 DoH8GOieWYnWNFUJ0DnqgicejM0JkWA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=gkVzmenP
Subject: Re: [Intel-wired-lan] [RFC bpf-next 0/4] Add XDP rx hw hints
 support performing XDP_REDIRECT
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
Cc: mst@redhat.com, jasowang@redhat.com, ast@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, Yan Zhai <yan@cloudflare.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, daniel@iogearbox.net,
 kernel-team <kernel-team@cloudflare.com>, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, sdf@fomichev.me, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, Jesper Dangaard Brouer <hawk@kernel.org>,
 alexandre.torgue@foss.st.com, netdev@vger.kernel.org, tariqt@nvidia.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, mcoquelin.stm32@gmail.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Lorenzo Bianconi <lorenzo@kernel.org> writes:

>> > We could combine such a registration API with your header format, so
>> > that the registration just becomes a way of allocating one of the keys
>> > from 0-63 (and the registry just becomes a global copy of the header).
>> > This would basically amount to moving the "service config file" into the
>> > kernel, since that seems to be the only common denominator we can rely
>> > on between BPF applications (as all attempts to write a common daemon
>> > for BPF management have shown).
>> 
>> That sounds reasonable. And I guess we'd have set() check the global
>> registry to enforce that the key has been registered beforehand?
>> 
>> >
>> > -Toke
>> 
>> Thanks for all the feedback!
>
> I like this 'fast' KV approach but I guess we should really evaluate its
> impact on performances (especially for xdp) since, based on the kfunc calls
> order in the ebpf program, we can have one or multiple memmove/memcpy for
> each packet, right?

Yes, with Arthur's scheme, performance will be ordering dependent. Using
a global registry for offsets would sidestep this, but have the
synchronisation issues we discussed up-thread. So on balance, I think
the memmove() suggestion will probably lead to the least pain.

For the HW metadata we could sidestep this by always having a fixed
struct for it (but using the same set/get() API with reserved keys). The
only drawback of doing that is that we statically reserve a bit of
space, but I'm not sure that is such a big issue in practice (at least
not until this becomes to popular that the space starts to be contended;
but surely 256 bytes ought to be enough for everybody, right? :)).

> Moreover, I still think the metadata area in the xdp_frame/xdp_buff is not
> so suitable for nic hw metadata since:
> - it grows backward 
> - it is probably in a different cacheline with respect to xdp_frame
> - nic hw metadata will not start at fixed and immutable address, but it depends
>   on the running ebpf program
>
> What about having something like:
> - fixed hw nic metadata: just after xdp_frame struct (or if you want at the end
>   of the metadata area :)). Here he can reuse the same KV approach if it is fast
> - user defined metadata: in the metadata area of the xdp_frame/xdp_buff

AFAIU, none of this will live in the (current) XDP metadata area. It
will all live just after the xdp_frame struct (so sharing the space with
the metadata area in the sense that adding more metadata kv fields will
decrease the amount of space that is usable by the current XDP metadata
APIs).

-Toke

