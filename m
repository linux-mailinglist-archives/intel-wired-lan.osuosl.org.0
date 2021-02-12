Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB94319A13
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 08:03:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64AF76F60D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 07:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qZ2yrOysP0F8 for <lists+intel-wired-lan@lfdr.de>;
	Fri, 12 Feb 2021 07:03:01 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id D0CE16F6E8; Fri, 12 Feb 2021 07:03:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0CE46F5E1;
	Fri, 12 Feb 2021 07:02:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3B861BF343
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 07:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BF9BD86FD2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 07:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e0HcFjl3EMxH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 07:02:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F3BB86FCB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 07:02:46 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id c11so5259408pfp.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 23:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cqb8crGhVkKzzGd941c2UaiHlVzZ3rTlX5jrMS/aJgo=;
 b=Mmvux/2EdFH6qYmNFzk90U9/P+n0RXArvrKEqnDJ59bHVS+fshV1bCImY21WtGr+2s
 KUo0mVfbd/FtnpjPA9f+5bd5L1A0G6m3/Yr3jho6alhvDt5wcnnW2rwWsqGXZmXF9RdU
 g9HnVD24xZbGYpBtk4xx8jDO34zS+dOSay5ME2ImLqvKPhYkXzgt274rTiafPBH9npC6
 uFoQ/GLclU/dBUfzZtXnPD3y/5JTqXs9MYBZo9EXlFlzeKpnRpbvlLgG0Q1G+3ffhMyR
 qUjbi2n9IKbNVG6ai5dWCBYf0yii9T63uY42EP7l2uy5FT4cSeQhxciyzHRRR3eo29VO
 wTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cqb8crGhVkKzzGd941c2UaiHlVzZ3rTlX5jrMS/aJgo=;
 b=Qn8cVaJqaBiG09m1U/jI1E51S8orznMgvxiipjfS0dA9ssIY9S7hrwWLkYpUiK3I9Q
 gwSd7wKWaB+zsbuA9h7KMzptcHQfQKmQLpMVGqaJP1uXYKl2UpA/obTRMf2RygzGdFEf
 7eCY+728fifUOhqk4sw8F5HJ3QfZrF90KnEQjThBKiyLQrCIUh64JWKnrzDx/qDiA9F3
 LwJnKDXST7iQlBImV2o4+ygAcf0AzMQAIWaXa2CX4Q5sMFm7jothxHr6VpqtMdNk5uNC
 EaJ+GFLBwjMP4TZiFIGZ9bmM+nPCOt+5DFYVMxsAt2TjW3r0EikAfrnx+od1RfCKhB6Q
 OCCw==
X-Gm-Message-State: AOAM5321qGqiMq/OBpOaF3EC1uTiV6mq8+SEXOuBZI6lwpA2vTS+inPy
 TMRqbB5Nj1VnNtO6KMqSBIqA2pTm8W98yJknIxI=
X-Google-Smtp-Source: ABdhPJw0vhaXQf/Vz7m7Mz+KLK/CwAl85SZ7BaTFRUDDQ3jUrlBEe8DZi2ms7wjBYCv1O9cD3gDQQ9v3EAeaaDR6pDo=
X-Received: by 2002:a63:2e01:: with SMTP id u1mr1881382pgu.408.1613113365774; 
 Thu, 11 Feb 2021 23:02:45 -0800 (PST)
MIME-Version: 1.0
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
In-Reply-To: <CAADnVQJ_juVMxSKUvHBEsLNQoJ4mvkqyAV8XF4mmz-dO8saUzQ@mail.gmail.com>
From: Marek Majtyka <alardam@gmail.com>
Date: Fri, 12 Feb 2021 08:02:34 +0100
Message-ID: <CAAOQfrHeqKMhZbJoHrdtOtekucuO7K4ASMwT=fS3WTx1XyhjTA@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
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
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, Saeed Mahameed <saeed@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, David Ahern <dsahern@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 12, 2021 at 3:05 AM Alexei Starovoitov
<alexei.starovoitov@gmail.com> wrote:
>
> On Thu, Feb 11, 2021 at 5:26 PM Jakub Kicinski <kuba@kernel.org> wrote:
> >
> > Perhaps I had seen one too many vendor incompatibility to trust that
> > adding a driver API without a validation suite will result in something
> > usable in production settings.
>
> I agree with Jakub. I don't see how extra ethtool reporting will help.
> Anyone who wants to know whether eth0 supports XDP_REDIRECT can already do so:
> ethtool -S eth0 | grep xdp_redirect

Doing things right can never be treated as an addition. It is the
other way around. Option -S is for statistics and additionally it can
show something (AFAIR there wasn't such counter xdp_redirect, it must
be something new, thanks for the info). But  nevertheless it cannot
cover all needs IMO.

Some questions worth to consider:
Is this extra reporting function of statistics clearly documented in
ethtool? Is this going to be clearly documented? Would it be easier
for users/admins to find it?
What about zero copy? Can it be available via statistics, too?
What about drivers XDP transmit locking flag (latest request from Jesper)?






>
> I think converging on the same stat names across the drivers will make
> the whole thing much more user friendly than new apis.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
