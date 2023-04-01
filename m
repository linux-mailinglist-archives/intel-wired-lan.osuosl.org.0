Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E576D32A6
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Apr 2023 18:47:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0C01417D5;
	Sat,  1 Apr 2023 16:47:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0C01417D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680367641;
	bh=7JwddsYTIQQ7hYC2kME/G+2htBc5Gl4NdVaIQRTA1iY=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f+gJ56hny0cBEUTtkety9xzRPmiP1I+ECztzjjUFdwpFozu1qSMgo9qXUTtSCguYP
	 xgr63gzhuaC6BEUDOKK6/d8Y7k45vYRVDdoJfxzOD6C6iVwoW7G+pd53X96dqes2CL
	 79SOvD4MeMBmoFLZS4ev4sS8erlhLmU0wKsGIfKrRwHokcBFaNod0HRApQin+JL2AH
	 9bUevfQnhNFe1dn8sMJ1Xa9DxAY9iZZRAvpSpOnupUH9QnVOy5/sJ1leVfwdyKU7W+
	 5wYg1c90ZXpqNzIMUeeVUUm1PtbaL18P8vCQbb3nph80MwU7Jyx2UKDO9DZ298BXQv
	 GlGRdTKuYiyfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4aWKa8qYJaky; Sat,  1 Apr 2023 16:47:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C74F417A4;
	Sat,  1 Apr 2023 16:47:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C74F417A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91EC11BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 16:47:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69F8740145
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 16:47:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69F8740145
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BN7ojyV8fqlp for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Apr 2023 16:47:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AB01400C6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6AB01400C6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 16:47:14 +0000 (UTC)
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-522-0Jz6F5KzPj6h09a1mHIJvw-1; Sat, 01 Apr 2023 12:47:10 -0400
X-MC-Unique: 0Jz6F5KzPj6h09a1mHIJvw-1
Received: by mail-lf1-f72.google.com with SMTP id
 m5-20020a194345000000b004eae18274b7so9977158lfj.19
 for <intel-wired-lan@lists.osuosl.org>; Sat, 01 Apr 2023 09:47:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680367629;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LBpaj6qPaiWPsqZ1uUbFmrrkbOrpiff0SRgLWvVlle4=;
 b=coUD7GrwRaoyyIqhqRHPgOdqcb5bld8/aCy1j22tP+i0QA8Xp1PXh0h2y9aNwNiBaR
 kl9AHR5QKkdrGRbnrGzPEuUjUouf8vvoxUkIxc0LMMJo6vu++JC2ZFkQEIFYquU7HUTN
 Nh1NUw0kExMI1xsqcXupkE0IKRjFYIymyKsJ3G1PtlcWhI+BtAviuDUX0ZJpGqd0+hHz
 BgPeZuO1eTP49/JIH/w84tWLwdeBWtevQcMXjXeHJDMddnjVLLox9bfuWeSVn5uZtBbB
 sRrvymhzK/elkYERumjR8Tye+eVOl0MGnBKoGkhdDfTDqz1LsO1MFJXYEEzrREr/6gQE
 3WJA==
X-Gm-Message-State: AAQBX9ffaJju4eRvxwHOgrGKjfLH4l3hQqoAQhc9Gibn1U2OIwOrO6q4
 uo7xu5VZi+I8PIi5UNDhWmk6n7/adZ0ZKx4oWlT1KanX4g1jGa5+btWh/Fe8RtfivIZLYRAahxi
 GY/V2r5zlCl9ymWyg0nBfcPG3GJ/FGw==
X-Received: by 2002:a2e:6e03:0:b0:299:aa20:22a0 with SMTP id
 j3-20020a2e6e03000000b00299aa2022a0mr9388792ljc.53.1680367629400; 
 Sat, 01 Apr 2023 09:47:09 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZeSpF555yFlSRJ624wPZzgJmZWz4p4qwCgGBnis2x24ag2kBhUEet5FQWdzvm7DiW1qPj20Q==
X-Received: by 2002:a2e:6e03:0:b0:299:aa20:22a0 with SMTP id
 j3-20020a2e6e03000000b00299aa2022a0mr9388764ljc.53.1680367629089; 
 Sat, 01 Apr 2023 09:47:09 -0700 (PDT)
Received: from [192.168.42.100] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 y17-20020a2eb011000000b002a5f554d263sm887063ljk.46.2023.04.01.09.47.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 01 Apr 2023 09:47:08 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <d4b3a22a-c815-a337-29b1-737efd9a7494@redhat.com>
Date: Sat, 1 Apr 2023 18:47:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>
References: <168028882260.4030852.1100965689789226162.stgit@firesoul>
In-Reply-To: <168028882260.4030852.1100965689789226162.stgit@firesoul>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680367633;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LBpaj6qPaiWPsqZ1uUbFmrrkbOrpiff0SRgLWvVlle4=;
 b=ErXAVjxX1xhOW/sAuUNk46YfrDSAB9QH7LVz2CqHDleRtpvltp4CYP3xgvtklIUbiR15nD
 w7ZYSQVMXLq0O6ax6hNKX13h2dK01sak+Kn3x33nx6cSiQpmff0P/kI3/XIReq21irO2Jx
 8GOhDM+E5c2iP1o4uIUHzAzewbD7oXk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ErXAVjxX
Subject: Re: [Intel-wired-lan] [PATCH bpf V5 0/5] XDP-hints: API change for
 RX-hash kfunc bpf_xdp_metadata_rx_hash
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
 ast@kernel.org, tariqt@nvidia.com, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, pabeni@redhat.com,
 yoong.siang.song@intel.com, brouer@redhat.com, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, edumazet@google.com, hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Why have this patchset[1] been marked "Changes Requested" ?

Notice: The BPF test_progs are failing on "xdp_do_redirect", but that is
not related to this patchset as it already happens on a clean bpf-tree.


  [1] 
https://patchwork.kernel.org/project/netdevbpf/list/?series=735957&state=%2A


On 31/03/2023 20.54, Jesper Dangaard Brouer wrote:
> Current API for bpf_xdp_metadata_rx_hash() returns the raw RSS hash value,
> but doesn't provide information on the RSS hash type (part of 6.3-rc).
> 
> This patchset proposal is to change the function call signature via adding
> a pointer value argument for providing the RSS hash type.
> 
> ---
> V5:
>   - Fixes for checkpatch.pl
>   - Change function signature for all xmo_rx_hash calls in patch1
> 
> Jesper Dangaard Brouer (5):
>        xdp: rss hash types representation
>        mlx5: bpf_xdp_metadata_rx_hash add xdp rss hash type
>        veth: bpf_xdp_metadata_rx_hash add xdp rss hash type
>        mlx4: bpf_xdp_metadata_rx_hash add xdp rss hash type
>        selftests/bpf: Adjust bpf_xdp_metadata_rx_hash for new arg
> 
> 
>   drivers/net/ethernet/mellanox/mlx4/en_rx.c    | 22 ++++++-
>   drivers/net/ethernet/mellanox/mlx4/mlx4_en.h  |  3 +-
>   .../net/ethernet/mellanox/mlx5/core/en/xdp.c  | 63 ++++++++++++++++++-
>   drivers/net/veth.c                            | 10 ++-
>   include/linux/mlx5/device.h                   | 14 ++++-
>   include/linux/netdevice.h                     |  3 +-
>   include/net/xdp.h                             | 47 ++++++++++++++
>   net/core/xdp.c                                | 10 ++-
>   .../selftests/bpf/prog_tests/xdp_metadata.c   |  2 +
>   .../selftests/bpf/progs/xdp_hw_metadata.c     | 14 +++--
>   .../selftests/bpf/progs/xdp_metadata.c        |  6 +-
>   .../selftests/bpf/progs/xdp_metadata2.c       |  7 ++-
>   tools/testing/selftests/bpf/xdp_hw_metadata.c |  2 +-
>   tools/testing/selftests/bpf/xdp_metadata.h    |  1 +
>   14 files changed, 180 insertions(+), 24 deletions(-)
> 
> --
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
