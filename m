Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B69D2EAA40
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 12:56:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D47FB21543;
	Tue,  5 Jan 2021 11:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nU+ud-601h4b; Tue,  5 Jan 2021 11:56:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CE7F221515;
	Tue,  5 Jan 2021 11:56:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDF021BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 11:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E96A88508E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 11:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MrrCRt5VZZSV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 11:56:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
 [209.85.215.174])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 693E985D70
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 11:56:41 +0000 (UTC)
Received: by mail-pg1-f174.google.com with SMTP id i5so21162780pgo.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 03:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GjrvkpU/AGcjZIUG3h6dX5jurwGnXUE8Hhbb+57Aipw=;
 b=uAuJvOVujn0Z5sGNtyDbi/ashwYJSbTpzoLztZFtgfEbcwJtywI68EvNRYMlpPd7QG
 0LzloFAVKZ8OkNjcRcga0U4S/8BMKeggB5FkGm+n4U6sZa86M30hMwOaasFoN21KnFDY
 df//0Z0zPZzrhwFQAGDoGgHXbQa21MBcCgolZo2CsB+14kquOiKLXh7lrqF0RnpzX8Ow
 EzM+GZNQ4b9f3U4/7SSUOqcvjSJQEwBnZ1bIiSVIjAld3HElrMoQ5D3N7236k9zaW5wx
 OTpczU8omOuLtCqPkDoDPHV3YmY6w9P4mqnXsNni15n2VKsEXaCSHJEvftKLsXnw3gV+
 42Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GjrvkpU/AGcjZIUG3h6dX5jurwGnXUE8Hhbb+57Aipw=;
 b=iP6QS4OQbooYi8d4yOLpNqF9P7UJnYFwt/r41BC0FRmLrMMlVMJdrMWdGtfqq0GBS/
 eWFJA5Av4wfKqDPQcU4tbR8SJmSjt43vx1vTnKSFklvp4ebaPbR2UvoVJu9rJVc38AGV
 /VWO2yjt1K7uy7+/KtVpOtp8xH8Jd1wc6X8gI93V76vLWY7rMZ6x+qjc2xPaWR+prhz2
 zIdFG2wG2waO+eTGBDah0x5vvIWGTAuoWPvAjaUZJ/syMnm9qBJwPA1qLNZJMjHoBZ4J
 GlCWsEo1tys4h3ZqTCVQVMgwO9BUdpVjUzwUXuxi5iomjxkSkh9pZVlSoQFnu34VAa50
 51ow==
X-Gm-Message-State: AOAM533mqTkLBVZTLJc649v4ibzknA7+5WM7MsaP8dXdId62wTvxCAza
 4jvkRUHhITvVlPYBbzACwurw/LQKLE70C0dgUz8=
X-Google-Smtp-Source: ABdhPJwWMUSo118gSNiRmh+JZtN0BRDD9lpvkGrw2nOb6SpOHeJoAtyQmix72gXZCCy2DA8c3OypCO2eVLllZyoCgs4=
X-Received: by 2002:a62:e516:0:b029:156:3b35:9423 with SMTP id
 n22-20020a62e5160000b02901563b359423mr47629907pff.19.1609847801044; Tue, 05
 Jan 2021 03:56:41 -0800 (PST)
MIME-Version: 1.0
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com> <20201209125223.49096d50@carbon>
 <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
 <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
 <cb6b6f50-7cf1-6519-a87a-6b0750c24029@gmail.com>
 <f4eb614ac91ee7623d13ea77ff3c005f678c512b.camel@kernel.org>
 <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
 <6f8c23d4ac60525830399754b4891c12943b63ac.camel@kernel.org>
In-Reply-To: <6f8c23d4ac60525830399754b4891c12943b63ac.camel@kernel.org>
From: Marek Majtyka <alardam@gmail.com>
Date: Tue, 5 Jan 2021 12:56:30 +0100
Message-ID: <CAAOQfrHN1-oHmbOksDv-BKWv4gDF2zHZ5dTew6R_QTh6s_1abg@mail.gmail.com>
To: Saeed Mahameed <saeed@kernel.org>, David Ahern <dsahern@gmail.com>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, 
 Jesper Dangaard Brouer <jbrouer@redhat.com>,
 Daniel Borkmann <daniel@iogearbox.net>, 
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
 Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>
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
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>, hawk@kernel.org,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 jeffrey.t.kirsher@intel.com, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I would like to thank you for your time, comments, nitpicking as well
as encouraging.

One thing needs clarification I think, that is, that those flags
describe driver static feature sets - which are read-only. They have
nothing in common with driver runtime configuration change yet.
Runtime change of this state can be added but it needs a new variable
and it can be done later on if someone needs it.

Obviously, it is not possible to make everybody happy, especially with
XDP_BASE flags set. To be honest, this XDP_BASE definition is a
syntactic sugar for me and I can live without it. We can either remove
it completely, from
which IMO we all and other developers will suffer later on, or maybe
we can agree on these two helper set of flags: XDP_BASE (TX, ABORTED,
PASS, DROP) and XDP_LIMITED_BASE(ABORTED,PASS_DROP).
What do you think?

I am also going to add a new XDP_REDIRECT_TARGET flag and retrieving
XDP flags over rtnelink interface.

I also think that for completeness, ethtool implementation should be
kept  together with rtnelink part in order to cover both ip and
ethtool tools. Do I have your approval or disagreement? Please let me know.

Both AF_XDP_ZEROCOPY and XDP_SOCK_ZEROCOPY are good to me. I will pick
the one XDP_SOCK_ZEROCOPY unless there are protests.

I don't think that HEADROOM parameter should be passed via the flags.
It is by nature a number and an attempt to quantize with flags seems
to be an unnatural limitation for the future.

Thanks
Marek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
