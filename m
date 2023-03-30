Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 227466D0DE0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 20:38:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A0CB41EE4;
	Thu, 30 Mar 2023 18:38:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A0CB41EE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680201523;
	bh=e6G2LQ78aaeolVf5d1WlGCJ6DXFTtcRpkxakd7tB0nE=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XXRzvKgLOWHy76KY8YuvyGZwSkbGSIAVned+2LtCOHE9wp75QVut93Hg+E+4bKqUk
	 bFvOtVMIMq6qcjB6CB5IVjvq+Xkw2msEI9GDuFeboxE4OK6QIrGlgz1GO10tQXRDh/
	 WVhH2H8KmshevHvoXQdDpq4wwWdoECQ1Qr54nyoccW6qglmwQCy3TUkA/f6RC88NBu
	 EeaX4KydwVVQQ1WxNmsLNzxlVUxyjVtGrtRyb0WOFS9XtNLmxdB1NmRx+8Oqp0Ak6Q
	 Ez89c0pWVS2pd8lZKq+9YYku6CLrdg+6FHlPhFXNxj+HP673Fw/3KEeMPs9cyn7zu+
	 vNGTA9zr2SmGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GfKmQ7z38Epx; Thu, 30 Mar 2023 18:38:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4948042076;
	Thu, 30 Mar 2023 18:38:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4948042076
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ADFC51BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 18:38:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8720C8120C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 18:38:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8720C8120C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9zF5EUJJJZl0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 18:38:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4E51811FF
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4E51811FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 18:38:28 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-545d027103eso153507857b3.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 11:38:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680201508;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5GkwAWkFeGOoqs9hRwF96vtUzcfuETanmtHhAqfhjYY=;
 b=lbnSzQU2IDptTN/qmDEp7K00OSPpC/vPo0rtWqMh9HbJQ1/X30M3kkbYTpAly21stR
 8mrzAo+CSzqv7DczttssqPo0RpSpH/fuwFI5wrAVcQfc9f2yiEokMaffq8BUoKNkPPZZ
 Sv2YffpYCIqWQDetnRhYy+KInmr4rZvHU9xC16hLjjslhM7AuZmYGaJInVabQHEtu7/x
 Hypiwir603I/iDOBRr6bKp3sUX5OKtVs3QqFgkF91KpegfEDXzq0jYtrnvauivNxE8D0
 aRL1AsK4x61eIT5Th6Wk4a5ev5LeCaF1eX6T+SbfbhtMTi5bs80qh0Vaqhm6fqzvm1gV
 q+5A==
X-Gm-Message-State: AAQBX9f/4Vx5MndtkLBjDRSl2J3mzzQyR0Yw0WNEwFTHhnOEHGVtfQqI
 Z3S3OdlIQC8Hd8SDPNCUdpfbdW8=
X-Google-Smtp-Source: AKy350YtshKMp46RHnx3xTtU6bgWkHllXfaEC32Tne8v1zqOX5qgfnkZuLdugYZ2+srYbQSUQtgl+mA=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a05:6902:1586:b0:b76:ae61:b68c with SMTP id
 k6-20020a056902158600b00b76ae61b68cmr12753744ybu.10.1680201507899; Thu, 30
 Mar 2023 11:38:27 -0700 (PDT)
Date: Thu, 30 Mar 2023 11:38:26 -0700
In-Reply-To: <168019602958.3557870.9960387532660882277.stgit@firesoul>
Mime-Version: 1.0
References: <168019602958.3557870.9960387532660882277.stgit@firesoul>
Message-ID: <ZCXXIvvnTBch/0Oz@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1680201508;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=5GkwAWkFeGOoqs9hRwF96vtUzcfuETanmtHhAqfhjYY=;
 b=tFwe1yaHBDRUAQZeC2CyOVnO1GFnmf/+FwndqdvRzobvAL2/m1XwhS37YkNmRK/CiF
 XEk2LQpML633tC9qr9hkLZBnDe4W6Az0r772FRUXkiH+OapgCsWD2snqlNOarsBKRyU3
 ffpS0HAH7nEKpXNj1iv4jhCC2LJIioUmj2yna7Ji4tIFmj96gHEvCoOD5ASvdUS8eQ5U
 KuRCtF1dbEivxLJUOL+oEKkez5lEVQUTe72P5Xx3SBPwYGj21AffgYXkMZQDGtAb7vLF
 wcM3oUgMiWZhsuLsEVyLEH2QiRLm8cO3RTSfqkcKI9gg9e1+6Q+BN0vAcJTIu1xT7akZ
 Vn3Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=tFwe1yaH
Subject: Re: [Intel-wired-lan] [PATCH bpf RFC-V3 0/5] XDP-hints: API change
 for RX-hash kfunc bpf_xdp_metadata_rx_hash
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, pabeni@redhat.com, yoong.siang.song@intel.com,
 kuba@kernel.org, boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 03/30, Jesper Dangaard Brouer wrote:
> Notice targeted 6.3-rc kernel via bpf git tree.

> Current API for bpf_xdp_metadata_rx_hash() returns the raw RSS hash value,
> but doesn't provide information on the RSS hash type (part of 6.3-rc).

> This patchset proposal is to change the function call signature via adding
> a pointer value argument for provide the RSS hash type.

> Alternatively we disable bpf_xdp_metadata_rx_hash() in 6.3-rc, and have
> more time to nitpick the RSS hash-type bits.

LGTM with one nit about EMIT_BTF.

> ---

> Jesper Dangaard Brouer (5):
>        xdp: rss hash types representation
>        mlx5: bpf_xdp_metadata_rx_hash add xdp rss hash type
>        veth: bpf_xdp_metadata_rx_hash add xdp rss hash type
>        mlx4: bpf_xdp_metadata_rx_hash add xdp rss hash type
>        selftests/bpf: Adjust bpf_xdp_metadata_rx_hash for new arg


>   drivers/net/ethernet/mellanox/mlx4/en_rx.c    | 22 ++++++-
>   drivers/net/ethernet/mellanox/mlx4/mlx4_en.h  |  3 +-
>   .../net/ethernet/mellanox/mlx5/core/en/xdp.c  | 63 ++++++++++++++++++-
>   drivers/net/veth.c                            | 11 +++-
>   include/linux/mlx5/device.h                   | 14 ++++-
>   include/linux/netdevice.h                     |  3 +-
>   include/net/xdp.h                             | 49 +++++++++++++++
>   net/core/xdp.c                                | 10 ++-
>   .../selftests/bpf/prog_tests/xdp_metadata.c   |  2 +
>   .../selftests/bpf/progs/xdp_hw_metadata.c     | 14 +++--
>   .../selftests/bpf/progs/xdp_metadata.c        |  6 +-
>   .../selftests/bpf/progs/xdp_metadata2.c       |  7 ++-
>   tools/testing/selftests/bpf/xdp_hw_metadata.c |  2 +-
>   tools/testing/selftests/bpf/xdp_metadata.h    |  1 +
>   14 files changed, 183 insertions(+), 24 deletions(-)

> --

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
