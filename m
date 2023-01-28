Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B420F67FB2B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 22:35:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4736060E52;
	Sat, 28 Jan 2023 21:35:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4736060E52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674941713;
	bh=fbU4/opsWicmJZRppLmwYElI6pw5tzqCDFNIglBCn3A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8DWGZBmwLID11YdKFF5Sk0+GKzmUk70ClU0h2z/uUVYiHJC4nCBNCMt7yEzhmhslA
	 auGRCreqIBGo8QDySHbd0Il5Tlrk8WiceJ/9h1/3+xqU8eJFdYDLwfJoFvv2bzwojJ
	 NtNwpZRZ0P9UPcWcox2t7PN6FzezUNMa29b4ITrqBPT+F5UTdh3KQVM4N2itz33OVJ
	 3+s+FuKc95zobNSOXB/OIF6KB22iEj9zHHXXCx1xHrmyNKfvEqozv1iFa2j8qdrTIq
	 VYLYuuyXkhusArhGScDpe30D83BHueUXb9PjTbgd4wP0qzO+o+8P1XX1CMiy7/Emzd
	 EsgdQ61wOAJFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iFUp496HeKy4; Sat, 28 Jan 2023 21:35:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EE6A60C15;
	Sat, 28 Jan 2023 21:35:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EE6A60C15
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7BAD1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 21:35:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9C6A81E38
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 21:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9C6A81E38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cHp0a1A5Dr7M for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 21:35:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8F2881E2B
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C8F2881E2B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 21:35:05 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id x7so4474194edr.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 13:35:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+zXK+884dLrmhawA8xRQQwxUqchG7ZiNECezW2lOgQA=;
 b=alpiZ6EmZb+4fd8tP8IoB9whH9dQJOdZW80sPhQS/RfyPdL8RB6Ulc4SdGFhiqFM32
 bD7ZqoHK4df9zfvpWSqFjcLw7Jx80DkioURa61S4vb9etTRPPrqsejPi8qWbkLxuafxv
 ybcNpHDfp6sqVKv9pMeGMOkOGOh3H/jP/wvpv2iUwxHXfratwSBBMRgIC3A/th2iqg0b
 Ss3r1ejetn1vil0N/VMMfGPDxIQXcAKHWcHUNszNm627Pf7txcgaB006uDjXJNTtMmZJ
 jmOWOtzyKIrKgRyE/Ip+H3LGvYbWRgcNf2SQ4wHNRHuggY4QIR0zB6Z+2zUXozkCFuhY
 sG9Q==
X-Gm-Message-State: AFqh2kr7EhxUK+7TkMFIDBe+FU6o+oCW29z8/f/WhNwe7OpvKEhMTP90
 flU48lu1o1uQ3KGqmEZeCXVKsaFy4+iLgkxqb9w=
X-Google-Smtp-Source: AMrXdXsZzarXZgPPZ/o1qFc85WWamUoar/+dUFn/SXh0NavSmkBXF2uugGK4uBHZdiG1JciMajqTm514M4a/kJkg/Jo=
X-Received: by 2002:a05:6402:3814:b0:49e:6501:57a2 with SMTP id
 es20-20020a056402381400b0049e650157a2mr6932183edb.43.1674941703860; Sat, 28
 Jan 2023 13:35:03 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674913191.git.lorenzo@kernel.org>
 <a7eaa7e3e4c0a7e70f68c32314a7f75c9bba4465.1674913191.git.lorenzo@kernel.org>
In-Reply-To: <a7eaa7e3e4c0a7e70f68c32314a7f75c9bba4465.1674913191.git.lorenzo@kernel.org>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Sat, 28 Jan 2023 13:34:52 -0800
Message-ID: <CAADnVQJhdxM6eqvxRZ7JjxEc+fDG5CwnV_FAGs+H+djNye0e=w@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+zXK+884dLrmhawA8xRQQwxUqchG7ZiNECezW2lOgQA=;
 b=BVhIi1wAHrJT0sZHx5IKQ6ERyLetJwEsTCVKMe8T2grAtiQV7QwxvxHEmv6xsJAwdF
 ZjdJF6jjhLdVv89FR55E2mr7soSxcX/14NJjeSkf4/fxXxZDulGyIyUJxu3ZquRtjz2G
 XW8MQAVmxxM3Vl74UhsCHjfDx+CnMggGvKtlm406tSyFBqQ+JZijnEBmkgYkoXdbJRyd
 yQ3d6k2fTNJ++nPFl3MpC1tdnjGXp1MU6N2WZW7TgLL7VQTJzMhqLYAtvSXCRxYlJSAt
 UwufJzQ5QuvrmwBtpfOPcIluWAqJ+1OfWPnZ1fR9JE1IooIaT+JCmWpdNWghdh/+eng5
 Dqhg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=BVhIi1wA
Subject: Re: [Intel-wired-lan] [PATCH v4 bpf-next 8/8] selftests/bpf:
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
 Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>,
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

On Sat, Jan 28, 2023 at 6:07 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
> diff --git a/tools/testing/selftests/bpf/xdp_features.h b/tools/testing/selftests/bpf/xdp_features.h
> new file mode 100644
> index 000000000000..28d7614c4f02
> --- /dev/null
> +++ b/tools/testing/selftests/bpf/xdp_features.h
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +/* test commands */
> +enum test_commands {
> +       CMD_STOP,               /* CMD */
> +       CMD_START,              /* CMD + xdp feature */
> +       CMD_ECHO,               /* CMD */
> +       CMD_ACK,                /* CMD + data */
> +       CMD_GET_XDP_CAP,        /* CMD */
> +       CMD_GET_STATS,          /* CMD */
> +};
> +
> +#define DUT_CTRL_PORT  12345
> +#define DUT_ECHO_PORT  12346
> +
> +struct tlv_hdr {
> +       __be16 type;
> +       __be16 len;
> +       __be32 data[];
> +};
> +
> +enum {
> +       XDP_FEATURE_ABORTED,
> +       XDP_FEATURE_DROP,
> +       XDP_FEATURE_PASS,
> +       XDP_FEATURE_TX,
> +       XDP_FEATURE_REDIRECT,
> +       XDP_FEATURE_NDO_XMIT,
> +       XDP_FEATURE_XSK_ZEROCOPY,
> +       XDP_FEATURE_HW_OFFLOAD,
> +       XDP_FEATURE_RX_SG,
> +       XDP_FEATURE_NDO_XMIT_SG,
> +};

This doesn't match the kernel.
How did you test this?
What should be the way to prevent such mistakes in the future?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
