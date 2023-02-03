Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4189B688EC9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Feb 2023 06:06:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7ADCB40A49;
	Fri,  3 Feb 2023 05:06:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ADCB40A49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675400764;
	bh=aw8lEh+DxVo8AGfwYhmyLAOKtrV6MJq6txC9DNfRVg8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UBPZHpS5w2aoRGAIL20Tfr+x1O9ekrtoiAvrYXnZk7yAJsZUur9G3v7AVQ/7Oa2Za
	 fm0koS6hpEFNpONBdvAfAFmEq6ZZH+peIzvarjFozQtgfUxQwl3u6mXMKB2X7hkh7l
	 JyudwYGmKAZBYUN77OAYnoFrY0OOJMCOfQUZvmf58qABKZgwwUrYlA0mSFCjVa2Mqp
	 IAt8Es4bkj/3iq/92nCFa5kgEidEjRk4RPzcFyWGHdBj8mwBXqA08tqtNM7y8KytNa
	 LJvFGpFaaiC9dtQWSoEKlthpXRUfTcdZ2qRPjaRKvSzy/Kft+BlC4Wo2b92aweQyf3
	 Ak2ZqtTQ3e9Mg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w8waoCYWtA0B; Fri,  3 Feb 2023 05:06:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78A1E401F8;
	Fri,  3 Feb 2023 05:06:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78A1E401F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DAE51BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 05:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F79542590
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 05:05:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F79542590
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uMWbZVFSdKXx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Feb 2023 05:05:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E08E4258F
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E08E4258F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 05:05:55 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id dr8so12168851ejc.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Feb 2023 21:05:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7fY5j1jAIj7Uxf/jZW/utbpEJzbkP46FJilFzLuPxMw=;
 b=V7MMHz5dwinDUZBJfR601dowUPCzk3+dB2fdYLF7liXL9JinutNFx7cHX3/4g3BHNc
 Zx4rJ2c84wFqQlmtL7OuEP8e+DZ6qHEMgeONrZjwiMNL08KIJG18hjlP0jj9oiPdmTw2
 HuigPF/kkAQhgxeZy8CubfTrt2YGnoyO7sNP+GuiyLWesa/9C+HNsOxCFgHewKig2AZk
 rzX21IXBAKGsr7THBCv5KWbPCoraMAUv1IaHs2fT2acVLLe0a6FthEG1O8ING9qvP/zR
 8URGbARo6Xb9EHIyKvsEoCxwO34gCesZvrDvvNVkmrx82/Xq8KRrrFGHmnpEJYW97hhg
 I4lA==
X-Gm-Message-State: AO0yUKUy7j6yYaMENOek5IQE5OzP+T7T8/A0iRiDx3UwP0RqTakffDuR
 hXGzQU9i8lNppn4NBFlYcgJxQPxJGs8XodMwcyM=
X-Google-Smtp-Source: AK7set922hbQ0vxTuxQ2UbTgS6R45DiqMDRtcZYe5a+RO0zzG+Ch1ZlSoj4uAzQuiE690kPEWT/SxFBtUax2285mFo8=
X-Received: by 2002:a17:906:fc20:b0:86e:429b:6a20 with SMTP id
 ov32-20020a170906fc2000b0086e429b6a20mr2576522ejb.247.1675400754106; Thu, 02
 Feb 2023 21:05:54 -0800 (PST)
MIME-Version: 1.0
References: <cover.1675245257.git.lorenzo@kernel.org>
 <7c1af8e7e6ef0614cf32fa9e6bdaa2d8d605f859.1675245258.git.lorenzo@kernel.org>
In-Reply-To: <7c1af8e7e6ef0614cf32fa9e6bdaa2d8d605f859.1675245258.git.lorenzo@kernel.org>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Thu, 2 Feb 2023 21:05:42 -0800
Message-ID: <CAADnVQLTBSTCr4O2kGWSz3ihOZxpXHz-8TuwbwXe6=7-XhiDkA@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7fY5j1jAIj7Uxf/jZW/utbpEJzbkP46FJilFzLuPxMw=;
 b=bbf7KnwRHsVNww7xW2PNvzqncFNGQBVTdV0dxU9LcZpJGyLv6VISNhuCjBSw1t5SPo
 Ai5nOv1OzagwRSQO/csZ4YTJklCa01o5NeyakaasYfWXytjW8hKTQQR3cMP2qPt1WXuG
 Bzz5gvpaXdXxk6XYZzS//9mO82G6cR0srMCq/GRocl785IXy18DElb1QgQCiv9l3N24N
 N1EOyIxixuVSE3EbeT67fg+xxQBVHXUH14n1Vxp1KadyEx/4JqJXKoiJrXRuqIRgdm1H
 4b2S2xUARsGhx61lQzVtjpH8Ol2O5UsVk31h4CdvHaQ6Q8phn1EFM16cJ+aIDkQ0A5lS
 nG6Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=bbf7KnwR
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

On Wed, Feb 1, 2023 at 2:25 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> Introduce xdp_features tool in order to test XDP features supported by
> the NIC and match them against advertised ones.
> In order to test supported/advertised XDP features, xdp_features must
> run on the Device Under Test (DUT) and on a Tester device.
> xdp_features opens a control TCP channel between DUT and Tester devices
> to send control commands from Tester to the DUT and a UDP data channel
> where the Tester sends UDP 'echo' packets and the DUT is expected to
> reply back with the same packet. DUT installs multiple XDP programs on the
> NIC to test XDP capabilities and reports back to the Tester some XDP stats.


'DUT installs...'? what? The device installs XDP programs ?

> +
> +       ctrl_sockfd = accept(*sockfd, (struct sockaddr *)&ctrl_addr, &addrlen);
> +       if (ctrl_sockfd < 0) {
> +               fprintf(stderr, "Failed to accept connection on DUT socket\n");

Applied, but overuse of the word 'DUT' is incorrect and confusing.

'DUT socket' ? what is that?
'Invalid DUT address' ? what address?
The UX in general is not user friendly.

./xdp_features
Invalid ifindex

This is not a helpful message.

./xdp_features eth0
Starting DUT on device 3
Failed to accept connection on DUT socket

'Starting DUT' ? What did it start?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
