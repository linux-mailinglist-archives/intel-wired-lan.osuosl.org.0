Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EC43BC206
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 19:06:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE397400EC;
	Mon,  5 Jul 2021 17:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n50_9th49w0v; Mon,  5 Jul 2021 17:06:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE0A340142;
	Mon,  5 Jul 2021 17:06:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B99071BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 17:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7CC8600CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 17:06:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PeNkrWXpFZdX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 17:06:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E39426003C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625504792;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KuRy89eXRByFxlnTN23uE6bhIohFVEQlDPFd8c6xtSg=;
 b=Cq+3Th9Z2Rtqhv3HrvYZZv5MUSCsD4//3++lUskWczCX+t04CSo8FT05ZHcFWRxikeRz30
 yxI805RuLljLL2A7+Dh7ztTHS5BX7KjV4SUOTg4PL0+rgmpTjITd0scqwjbF44HGkc0V0L
 /nhcPdTGwRbdmWZ0W0wE1SUgMqyTeDM=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-XF1f7KNAPlWNXRmWYxA_Og-1; Mon, 05 Jul 2021 13:06:29 -0400
X-MC-Unique: XF1f7KNAPlWNXRmWYxA_Og-1
Received: by mail-ed1-f70.google.com with SMTP id
 d17-20020a05640208d1b0290399de3a0eecso1243926edz.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jul 2021 10:06:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=KuRy89eXRByFxlnTN23uE6bhIohFVEQlDPFd8c6xtSg=;
 b=GRxU0odeQsKA/LhJAMmD+YsZPxxtBjFDghViIxLoIl/5OGsGw9GjuBQXJVxORU0eOY
 tJ5dg5t1qi720wBjByjztgqx32/5jYRtMz5kooTwc/DyaUMEnn9Zw+Jk4GSDxVWAOOfL
 xKMPFATdJpiUiDTNbCoMXzYEa8IDWm8tpR/x//qaDLXawO/vckz53CrPyjQovT3gN10Z
 mP3gs97s23QNkDS4HxmF9G7lto7nA4VwYKOBNI+H8Un8hEuB9EbfqAEMxM8HNfcuryH0
 CeXPprekBw28JBkBVglqeLREPvkEJ5+KI2CPgAvfQc83WRZEKnG2d6EkuTPm25ldG5ip
 GF5A==
X-Gm-Message-State: AOAM5309IqJKrtFgurgXP6BvdNI6VUiz095ORnqs4kC9AKYaK2Th5kzF
 swGt/2+qSHLrtM27gr/3UruMcQpwqGlIrCul2C5DMbAptokftWGi/OhJK+Wc+1AoQk4RwcnMof/
 lhPVvOvpmgrZidyWTJBP5qoFnkI7tYw==
X-Received: by 2002:aa7:c352:: with SMTP id j18mr17349740edr.67.1625504788123; 
 Mon, 05 Jul 2021 10:06:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwneJgqJmKUm7lMhmUUKbEhjFjPR6z10Dv09ddqoEicPZlix5wWcSXu7hx55pTRnnUYqwL4+w==
X-Received: by 2002:aa7:c352:: with SMTP id j18mr17349702edr.67.1625504787894; 
 Mon, 05 Jul 2021 10:06:27 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id e16sm5842643edr.86.2021.07.05.10.06.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 10:06:27 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BCFB9180639; Mon,  5 Jul 2021 19:06:26 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20210705164338.58313-1-maciej.fijalkowski@intel.com>
References: <20210705164338.58313-1-maciej.fijalkowski@intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 05 Jul 2021 19:06:26 +0200
Message-ID: <87sg0sy9kd.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-next 0/4] XDP_TX improvements
 for ice
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
Cc: joamaki@gmail.com, netdev@vger.kernel.org, bjorn@kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Maciej Fijalkowski <maciej.fijalkowski@intel.com> writes:

> Hi,
>
> this is a second revision of a series around XDP_TX improvements for ice
> driver. When compared to v1 (which can be found under [1]), two new
> patches are introduced that are focused on improving the performance for
> XDP_TX as Jussi reported that the numbers were pretty low on his side.
> Furthermore the fallback path is now based on static branch, as
> suggested by Toke on v1. This means that there's no further need for a
> standalone net_device_ops that were serving the locked version of
> ndo_xdp_xmit callback.
>
> Idea from 2nd patch is borrowed from a joint work that was done against
> OOT driver among with Sridhar Samudrala, Jesse Brandeburg and Piotr
> Raczynski, where we working on fixing the scaling issues for Tx AF_XDP
> ZC path.
>
> Last but not least, with this series I observe the improvement of
> performance by around 30%.

Wow, "but not least" indeed! :D
You can't just drop that at the end like that! I want details -
whaddyamean, "by around 30%"? In all cases? Only for TX? Gimme numbers! :)

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
