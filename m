Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5F66762AE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 02:19:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAB8282AA2;
	Sat, 21 Jan 2023 01:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAB8282AA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674263989;
	bh=g89XWohG2M9WxPPFh5j48k6Df6TOz8++vFzH5pTSlQQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xaL2NFmV9tKjTnpyaQW4Lw3kvCklgu+miGOwhvCSGBXEU6apDBlhc3UsGiltC69fj
	 yH3Z+H60B3Oy8QIx6+nRYEbtHkqY6+5Ubnvadpi9W5OJfWpngH0qW/EPDpOx0vqvYe
	 pbL1hX5jzu8qPszI1ZBNV4VXKMsnA98pJUXuPTShPwYPShuDsuYxQEjxKglKRlBd3f
	 IrjVTdkF3IZ5s6T9uXnLVY0MdHm3L/cFmHS7+c/p8T6bALjmk0BMrxFO4xille5fOe
	 EOl07Qk0EFo/po4Bu6F+rwgEx2WUAgtnBAF+9LDJDHMwnMntgYbmp6vW7UqOG28TFZ
	 qaWw3JL7SNJPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Afuma7xE1b0A; Sat, 21 Jan 2023 01:19:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B56E48299E;
	Sat, 21 Jan 2023 01:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B56E48299E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 673E71BF681
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 01:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 415468299E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 01:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 415468299E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6QO_9XID7ue for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 01:19:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA1F78282C
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA1F78282C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 01:19:42 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id tz11so18216001ejc.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:19:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FatV2ooNHBvjqYFSo0t+gNzMShU2FV8trQScCRgC2dg=;
 b=XWoWAhDrt1ZsuxpG4HxAh7nW37rkb4MQgv83pkvHBc3GR1TlXIZCMfd+K6Yh99kxRQ
 ea9I057Ir/aK4KL/1dr6shIRCH3UybDsoc8uf3T6j9MQbxb+LyXLLILodsaxTCQN/oLl
 RaOBgGyQ80NiiV2p48tsh63slLdqSZU2oOPKy/D/++WUxfe+NJmxraSp64rkwmif40vw
 dhaakaLfSkYf67SBZkwscnPFHVryTxQOXt37Y4x/mgHt66UAIgm6UbLQ2zPIG+M+b4Gl
 QoNFBrhVctjR94Cd7+yG2qyGyT6vvujMVaH1jGTceN+Kzf60gbCxwCJo7TwgEXiuYp+8
 BuJg==
X-Gm-Message-State: AFqh2kqagcFypxHCCGM+RX3LESuVvPoL+ru4KwxEuLQAoGuV4xBEXAuK
 7VNv3xVinpaD3lDCaKZ60T/SkdO0fN/AT0j48Ec=
X-Google-Smtp-Source: AMrXdXsrrUz0aXWE5rx97cC0zoI4WVGpHceIKYsbtVzuG1Uw8lkA+6nrnlmHvi3awhBYNMtiBhhjzietOCamER+MO6Q=
X-Received: by 2002:a17:906:cf9b:b0:872:a7ee:f4c7 with SMTP id
 um27-20020a170906cf9b00b00872a7eef4c7mr1669038ejb.378.1674263980703; Fri, 20
 Jan 2023 17:19:40 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674234430.git.lorenzo@kernel.org>
 <272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo@kernel.org>
In-Reply-To: <272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo@kernel.org>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Fri, 20 Jan 2023 17:19:29 -0800
Message-ID: <CAADnVQLHsV2Y-UiDkEnhwnfvgRxGN4OY8mwi_p-a01WUTdDBNw@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=FatV2ooNHBvjqYFSo0t+gNzMShU2FV8trQScCRgC2dg=;
 b=hzERaXp3nKDHOPSB9YrMhvWbGPRd2uTE3nSrb/icVY++w5FhEBMBszcHkL0TSAWLWo
 LHQZaQuqyzjFVggaRvIpsBpU3r2eOZYRSOHCLDqujpVqJChcHVU2+ZpuAuQeBcH5z62y
 3TI/bLtTejD8fkz3JrRxxJUj7LtpVGWku5amWxJSHIUZAA3uIuQDoP2c0JDYB3xuDREg
 zhDAheciFJ4VLgfgPgFJ1zc3OUYff3JewfuF5Ev3euskk0XAyqWIjDlj7NgGI96kZeiM
 Jpx0SxKYgQiDKtc2OCM05JO8MXyIfFvAktpgX1wOPSm3lLJDoswkQf25m/A2tM+dlh6F
 Ojnw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=hzERaXp3
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/7] netdev-genl: create a
 simple family for netdev stuff
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
 anthony.l.nguyen@intel.com, Daniel Borkmann <daniel@iogearbox.net>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@corigine.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <simon.horman@corigine.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, christophe.jaillet@wanadoo.fr,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>, john@phrozen.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, bpf <bpf@vger.kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>, leon@kernel.org,
 Network Development <netdev@vger.kernel.org>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 ecree.xilinx@gmail.com, Marek Majtyka <alardam@gmail.com>,
 Andy Gospodarek <gospo@broadcom.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 20, 2023 at 9:17 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
> +
> +#define NETDEV_XDP_ACT_BASIC           (NETDEV_XDP_ACT_DROP |  \
> +                                        NETDEV_XDP_ACT_PASS |  \
> +                                        NETDEV_XDP_ACT_TX |    \
> +                                        NETDEV_XDP_ACT_ABORTED)

Why split it into 4?
Is there a driver that does a subset?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
