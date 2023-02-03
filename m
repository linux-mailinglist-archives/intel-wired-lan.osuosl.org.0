Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D72868A70F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 00:50:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D91B40519;
	Fri,  3 Feb 2023 23:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D91B40519
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675468251;
	bh=/qW3W3W95F8+2cnbuVNULUaxRYE3HsmgpjXWCsx7/BU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1QT3f83B41iZfE+dkpoUMP+Dwzir5SbrvbR/5Xt+dNCFArfWp5lrlKGyx/rCgFHJ+
	 Oejghnvj75KWOXmvWpvSslQYXh7B+Lj6zvxZoGnW5+sj8ddza9FYXdE3Oab+jbhnAG
	 3yIrZpLNi/YNQKGQqeuSPiZ3abT7J1CiyMCS50jgfKJRcYGYNvq/qvw3HYas0C5dve
	 E4kQhamj9eWpdlJ+5F/XFq1nmAERChjXu7DH8FnJ40TYu2jXOBZSuPYJ6CcSs6V0D0
	 MkXWITQ4Qoxzf4x3qJxZUmMLePuVmFwYD/cPEBkDbfYi5NZeqR1scyd1Ur/I8ERvkV
	 +vJ/aaidGv4eA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MBagnL3oY2w3; Fri,  3 Feb 2023 23:50:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E29F404DF;
	Fri,  3 Feb 2023 23:50:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E29F404DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DCB61BF280
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 23:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3594782263
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 23:50:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3594782263
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KZk3LqnxaXuI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Feb 2023 23:50:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4240582262
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4240582262
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 23:50:44 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id gr7so19648585ejb.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Feb 2023 15:50:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gOrsPhcpzWEq2PcdjbKFApKHFuTiUGlYuSEdAr9vzSA=;
 b=24Vkr2x/ODnnR/fpRYrUF80JnTf6ksfMlwTy7qYUVrr0HRlxdQSjmiVtdroHXwTBrq
 UKAqutqFmV+Y9QBns6e2ITsM69UtAqECBfgLSaw5yLVoPmdbRjPupxk2951iCevoGyV4
 NNfAu4DcOlp61yMvRJrh/dCixKpLfH0Rl4htxALBOTLpoYgbk3UFviNgmqKwUWRZPUMX
 xBaOb5WTWLAx6srktUb+7JySbrwWI1r0xrn/7Tz75i/A2NLRNreuhD71+o9d6Fy7bTPg
 5RZe9MdGtbG3JTyrpEfBAPbMSNXrQcSLmBhdlCuJj6xqBvkUkQdbG8Ap7lLzR1t3ZJGO
 2VEg==
X-Gm-Message-State: AO0yUKWmkievOmO5Fst54DIc7epxbuU7YBrrVB4G1RFJ+HbowHVhebBf
 KmRmpeT+oPvFXPghV8nVXsdE9fcDYxrOlyLWTy4=
X-Google-Smtp-Source: AK7set9O5rc94Ldp5+Ji252ZVIitA8/2FF89pBrJW7KTM+Kv1zAEAhmxsVOgd7abkYlWUImBH4y8FzoWqM+ITlZFKO8=
X-Received: by 2002:a17:906:6d13:b0:878:786e:8c39 with SMTP id
 m19-20020a1709066d1300b00878786e8c39mr3707005ejr.105.1675468242181; Fri, 03
 Feb 2023 15:50:42 -0800 (PST)
MIME-Version: 1.0
References: <cover.1675245257.git.lorenzo@kernel.org>
 <7c1af8e7e6ef0614cf32fa9e6bdaa2d8d605f859.1675245258.git.lorenzo@kernel.org>
 <CAADnVQLTBSTCr4O2kGWSz3ihOZxpXHz-8TuwbwXe6=7-XhiDkA@mail.gmail.com>
 <Y91GLP4LCqsGE8kX@localhost.localdomain>
In-Reply-To: <Y91GLP4LCqsGE8kX@localhost.localdomain>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Fri, 3 Feb 2023 15:50:30 -0800
Message-ID: <CAADnVQKnTzfDuZL0BD9sONeR2jEnQr=mD8kwWHqdaz9dv8VQRA@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=gOrsPhcpzWEq2PcdjbKFApKHFuTiUGlYuSEdAr9vzSA=;
 b=ZAfyu43MSVYff52t9LKybrPfV7bkeFgC5Uchf2kG3yIJkgCx+9x/Lk6gQIrzFjMUn/
 5Y3tJjt1BHFS3iWBLIE6M6ZgXBtdfpcmLmjky1rY5r8iVfzNvCtgWWJrLji7VJhext6T
 uZpRLenaOJCY8sjoared70nx0YMbrGdP3foZHSID+cvYrpdqtzzOdA5m0YVrXJaC1fDh
 oj4O/iaSsIwd864u/lRfSuQ9ioYNiF9GxvWFPclI3aGWVZ24j3iDBgDPQKbvOlqLQVpn
 g+cDONZC/z+BpceeIcKi1+NWkl8RyrzGImrYPDrO9/gqBro1c5jSM1QimZ9erbogTc3y
 MXYA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ZAfyu43M
Subject: Re: [Intel-wired-lan] [PATCH v5 bpf-next 8/8] selftests/bpf:
 introduce XDP compliance test tool
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>, vladimir.oltean@nxp.com,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 anthony.l.nguyen@intel.com, Stanislav Fomichev <sdf@google.com>,
 gerhard@engleder-embedded.com, Daniel Borkmann <daniel@iogearbox.net>,
 Andrii Nakryiko <andrii@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <simon.horman@corigine.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, christophe.jaillet@wanadoo.fr,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>, john@phrozen.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, bpf <bpf@vger.kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Leon Romanovsky <leon@kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, ecree.xilinx@gmail.com,
 Marek Majtyka <alardam@gmail.com>, Andy Gospodarek <gospo@broadcom.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 3, 2023 at 9:35 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> > On Wed, Feb 1, 2023 at 2:25 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
> > >
> > > Introduce xdp_features tool in order to test XDP features supported by
> > > the NIC and match them against advertised ones.
> > > In order to test supported/advertised XDP features, xdp_features must
> > > run on the Device Under Test (DUT) and on a Tester device.
> > > xdp_features opens a control TCP channel between DUT and Tester devices
> > > to send control commands from Tester to the DUT and a UDP data channel
> > > where the Tester sends UDP 'echo' packets and the DUT is expected to
> > > reply back with the same packet. DUT installs multiple XDP programs on the
> > > NIC to test XDP capabilities and reports back to the Tester some XDP stats.
> >
> >
> > 'DUT installs...'? what? The device installs XDP programs ?
>
> Hi Alexei,
>
> DUT stands for Device Under Test, I was thinking it is quite a common term.
> Sorry for that.

It was clear from the commit log.
My point was not questioning whether abbreviation is common or not.
It's this:
"device under test installs...". device installs? No. device doesn't
install anything. It's xdp_features tool attaches a prog to the
device.

and more:
"device under test socket"... what does it even mean?

> >
> > > +
> > > +       ctrl_sockfd = accept(*sockfd, (struct sockaddr *)&ctrl_addr, &addrlen);
> > > +       if (ctrl_sockfd < 0) {
> > > +               fprintf(stderr, "Failed to accept connection on DUT socket\n");
> >
> > Applied, but overuse of the word 'DUT' is incorrect and confusing.
> >
> > 'DUT socket' ? what is that?
> > 'Invalid DUT address' ? what address?
> > The UX in general is not user friendly.
> >
> > ./xdp_features
> > Invalid ifindex
> >
> > This is not a helpful message.
> >
> > ./xdp_features eth0
> > Starting DUT on device 3
> > Failed to accept connection on DUT socket
> >
> > 'Starting DUT' ? What did it start?
>
> I will post a follow-up patch to clarify them.
>
> Regards,
> Lorenzo
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
