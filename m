Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4067D31CBF1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Feb 2021 15:30:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B1A2E86A1A;
	Tue, 16 Feb 2021 14:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UO-0NbDbJK86; Tue, 16 Feb 2021 14:30:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9976F86AB1;
	Tue, 16 Feb 2021 14:30:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 92CAD1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 14:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8E61586821
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 14:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ErQ7AQYVzaHu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Feb 2021 14:30:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 58A0786AB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 14:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613485812;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nb9Kqw3jYRHWptfCeEgA2EWrWzfESD8aGU2YzYJvKpI=;
 b=Lt/1a0HvacWHd6Sd+l26Foei9TTYF58A4XF51/2Y8FX295idSsEVb4L7ZhIdY9D3KuBLxQ
 u8vyXzhJkWmhy9eSkTmU4U238uLlaZ5TEL47jGiVfVu+pwHSfFRehqW0GTxPCNVUWcsAyw
 6JQldxLkoGraHvNPR2PwpbP/neGfReY=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-113-a2TrAl9XMD60bIcHICAqyQ-1; Tue, 16 Feb 2021 09:30:10 -0500
X-MC-Unique: a2TrAl9XMD60bIcHICAqyQ-1
Received: by mail-ed1-f69.google.com with SMTP id a20so7606116edx.14
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 06:30:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=nb9Kqw3jYRHWptfCeEgA2EWrWzfESD8aGU2YzYJvKpI=;
 b=bhXZb/Avi4GdWhzHX2EIAPPArrtiPojC5QdG1QjZC6MRTfohCeiHsYAA5XBltM8d/+
 fC6qNhPPmhEHwPztR08pHr7Mh6Xa2n0CAUwvqP833bE+sjKlyMVob98xdeBVLapmjMQP
 JMB2nOmdVF5wdFVCo5kxtEDVlnPrQyy9ePTdLMlAv4J6h1qa3U9ojvH/Lwzmrjx/DVwR
 1tUG7lpR5edZM1sjcxOUHCx43LC8HJ2XsbR2Glx38m4IRYs+oRkdqnAUbt8XhESfhiex
 xq1Ax7aANJnWXYwUodqcDP0wvl1aKQ1k3w7Vogx+4I80Bhf7G0qyN+svid8jKyIbxYO1
 vSjA==
X-Gm-Message-State: AOAM530usgLyRTHDVYQOqEmXpmo+rF/JvwKMLFzheoqWPmOg9vssFNmv
 pdTgWdeYs3hiENtT5/p/c3wI0iuf4VIgzAfgpztqMBrMghhEkMhGhu0vfl8ZNX9po+/HOoT62ts
 teIio/1XLguTkMkNcrTnW9X+RiidSnQ==
X-Received: by 2002:aa7:cd8d:: with SMTP id x13mr20747699edv.286.1613485809055; 
 Tue, 16 Feb 2021 06:30:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzPnIbI5zNEUJMUQGdvUemv2Bdqe23PVRQQVPIj0wJyHJ00fcgoDHNUcRSpuNnhIw8rtDHhkg==
X-Received: by 2002:aa7:cd8d:: with SMTP id x13mr20747652edv.286.1613485808745; 
 Tue, 16 Feb 2021 06:30:08 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id hr3sm12875181ejc.41.2021.02.16.06.30.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 06:30:08 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BDCAE1805FA; Tue, 16 Feb 2021 15:30:07 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Marek Majtyka <alardam@gmail.com>, Alexei Starovoitov
 <alexei.starovoitov@gmail.com>
In-Reply-To: <CAAOQfrHeqKMhZbJoHrdtOtekucuO7K4ASMwT=fS3WTx1XyhjTA@mail.gmail.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201209125223.49096d50@carbon>
 <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
 <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
 <cb6b6f50-7cf1-6519-a87a-6b0750c24029@gmail.com>
 <f4eb614ac91ee7623d13ea77ff3c005f678c512b.camel@kernel.org>
 <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
 <6f8c23d4ac60525830399754b4891c12943b63ac.camel@kernel.org>
 <CAAOQfrHN1-oHmbOksDv-BKWv4gDF2zHZ5dTew6R_QTh6s_1abg@mail.gmail.com>
 <87h7mvsr0e.fsf@toke.dk>
 <CAAOQfrHA+-BsikeQzXYcK_32BZMbm54x5p5YhAiBj==uaZvG1w@mail.gmail.com>
 <87bld2smi9.fsf@toke.dk>
 <20210202113456.30cfe21e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAAOQfrGqcsn3wu5oxzHYxtE8iK3=gFdTka5HSh5Fe9Hc6HWRWA@mail.gmail.com>
 <20210203090232.4a259958@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <874kikry66.fsf@toke.dk>
 <20210210103135.38921f85@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87czx7r0w8.fsf@toke.dk>
 <20210211172603.17d6a8f6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAADnVQJ_juVMxSKUvHBEsLNQoJ4mvkqyAV8XF4mmz-dO8saUzQ@mail.gmail.com>
 <CAAOQfrHeqKMhZbJoHrdtOtekucuO7K4ASMwT=fS3WTx1XyhjTA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 16 Feb 2021 15:30:07 +0100
Message-ID: <8735xwaxw0.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, Saeed Mahameed <saeed@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, David Ahern <dsahern@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Marek Majtyka <alardam@gmail.com> writes:

> On Fri, Feb 12, 2021 at 3:05 AM Alexei Starovoitov
> <alexei.starovoitov@gmail.com> wrote:
>>
>> On Thu, Feb 11, 2021 at 5:26 PM Jakub Kicinski <kuba@kernel.org> wrote:
>> >
>> > Perhaps I had seen one too many vendor incompatibility to trust that
>> > adding a driver API without a validation suite will result in something
>> > usable in production settings.
>>
>> I agree with Jakub. I don't see how extra ethtool reporting will help.
>> Anyone who wants to know whether eth0 supports XDP_REDIRECT can already do so:
>> ethtool -S eth0 | grep xdp_redirect
>
> Doing things right can never be treated as an addition. It is the
> other way around. Option -S is for statistics and additionally it can
> show something (AFAIR there wasn't such counter xdp_redirect, it must
> be something new, thanks for the info). But  nevertheless it cannot
> cover all needs IMO.
>
> Some questions worth to consider:
> Is this extra reporting function of statistics clearly documented in
> ethtool? Is this going to be clearly documented? Would it be easier
> for users/admins to find it?
> What about zero copy? Can it be available via statistics, too?
> What about drivers XDP transmit locking flag (latest request from Jesper)?


There is no way the statistics is enough. And saying "just grep for
xdp_redirect in ethtool -S" is bordering on active hostility towards
users.

We need drivers to export explicit features so we can do things like:

- Explicitly reject attaching a program that tries to do xdp_redirect on
  an interface that doesn't support it.

- Prevent devices that don't implement ndo_xdp_xmit() from being
  inserted into a devmap (oh, and this is on thing you can't know at all
  from the statistics, BTW).

- Expose the features in a machine-readable format (like the ethtool
  flags in your patch) so applications can discover in a reliable way
  what is available and do proper fallback if features are missing.

I can accept that we need some kind of conformance test to define what
each flag means (which would be kinda like a selftest for the feature
flags), but we definitely need the feature flags themselves!

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
