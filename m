Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0A6951F0C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 17:50:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77BFD40337;
	Wed, 14 Aug 2024 15:50:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5sO9BCeZ3a1m; Wed, 14 Aug 2024 15:50:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45A72402C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723650605;
	bh=fDv9V0v7KkpdJrpMs0piYzLNRxXj+irK5gUuUzZpGhs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pBPlIv1iJ0jnLS+6mO3V3HBl1+VLr2ZTo6Gn05mz0kvszQNq2aMMbWyyOSCeC4VaO
	 yC15N0SG5AqzoKaQ39F+asWscJa9VP0NLoh+A2wfUi1xwwDoWbK5umlFOZMl4M2+fi
	 qkopFYS+DJnsB/2R2CdhpD7nh1eJDCi6e8h0kbfMU386fKh2DJNSfBIjFRaAWNsF55
	 D+HcB1cHo24q4H+3HMaS+lN9Bqq5BZp88N+4cT0PEz4KJpyOnJgCKQYREgVvHMc86M
	 Je7CaXOqzm6mIva66+vgq3QCZh3wlY6ngnv8WfBRScM+JwwprQpJ8jSvIgfjNE6yA+
	 PYa6efwJXWhig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45A72402C8;
	Wed, 14 Aug 2024 15:50:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F96A1BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 15:50:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7833D40BEA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 15:50:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WSmQYzRfUZQ4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 15:50:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::332; helo=mail-ot1-x332.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 43D7F400AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43D7F400AF
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com
 [IPv6:2607:f8b0:4864:20::332])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43D7F400AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 15:50:01 +0000 (UTC)
Received: by mail-ot1-x332.google.com with SMTP id
 46e09a7af769-7093472356dso3808969a34.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 08:50:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723650600; x=1724255400;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fDv9V0v7KkpdJrpMs0piYzLNRxXj+irK5gUuUzZpGhs=;
 b=SusygReNLkHzBbTVmdy377Guw8/oRnrtRVGwRLstYj4uZkQL5EU3ucm2thc3aU+cly
 rLU/g7I5C78SgstQK3NNrbzPiI7lFNxLRKb2cTzzajjmFwYhLe8uAYufWdUosW12gwvA
 lbUBgWq8X4kpYLiTtj0V7pepXLy/7P2RWLWksFSVDPY13F39gzWpYoBpipo5lWJJ3yDI
 d0r94tQ0vmp6EYxfgYf53y7hGBqRvWEw1o0YymaS8z8IV/5upUfP6FlZiYFrm8mrWwoe
 04MuWg/gtSh8j8gaZfWr0/jKNSEv9NBz/Hz2Nav9UnBwJYj10mvfIvNgu+eMWLLEkOOY
 Q9/w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDqyOPp120WOEPU2lch5+0FfvhRrsXpFIzyaT4RLBkucWoiXbqTkuF2Z4+JO/33i/nWcb2MIeGm/qTwnm8VCV49xror6bwRiVz2GTOWymPkw==
X-Gm-Message-State: AOJu0Yy0Xd3EAh5xIw1uQCtWX5RaVR7/Ga4TuAprSFQ3Oa5LaOz9Z2nl
 icmobvpAzFbBPTabE29jRFX/9sXht6vrNGV50uVkMC3EftyWP2h1
X-Google-Smtp-Source: AGHT+IF+xU5hTvBzD845HScA3WjHDYwvu17hmSc7al7mxeLt+8xp5o7SMvsr67KFPwp2VJkvDAOPFA==
X-Received: by 2002:a05:6830:638b:b0:709:3f84:c1e0 with SMTP id
 46e09a7af769-70c9d9c25a1mr3660423a34.26.1723650600144; 
 Wed, 14 Aug 2024 08:50:00 -0700 (PDT)
Received: from ?IPv6:2605:59c8:829:4c00:82ee:73ff:fe41:9a02?
 ([2605:59c8:829:4c00:82ee:73ff:fe41:9a02])
 by smtp.googlemail.com with ESMTPSA id
 46e09a7af769-70c7b880badsm2269478a34.54.2024.08.14.08.49.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2024 08:49:59 -0700 (PDT)
Message-ID: <d1a23116d054e2ebb00067227f0cffecefe33e11.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>, davem@davemloft.net,
 kuba@kernel.org,  pabeni@redhat.com
Date: Wed, 14 Aug 2024 08:49:53 -0700
In-Reply-To: <20240808123714.462740-5-linyunsheng@huawei.com>
References: <20240808123714.462740-1-linyunsheng@huawei.com>
 <20240808123714.462740-5-linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723650600; x=1724255400; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=fDv9V0v7KkpdJrpMs0piYzLNRxXj+irK5gUuUzZpGhs=;
 b=DMxTbKBQLZCsmPE8z5cAE330Un/AhBFeRcAplnaJm2Qlx/iWnD1+fSRoSfsU2LQtyT
 WaLW04qxXyZKR4GESX28gWmyQvwlhpntY8bNKjAAW/t1+HOe+eiFkfbQKBtSGDCCXUy7
 62nMq4MxwSFNOWQt6fTENS3eVs5tn6aIfe7PB4b+STvrDTDG8GornMM3R90VUNTFdmh/
 EBkm4lvcUdNCHmIq3/oD4JWDQn2whT9Q3+Z7bHHwMp09GcSu6djvv8iN/l6AutDVHIsq
 s6s3JW7GNrEtXwpusjGIpoSEAYaTCdSnrA5ziIP/QejvEjXFaK2QoMicgqH6tKJFFdaH
 /A8g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=DMxTbKBQ
Subject: Re: [Intel-wired-lan] [PATCH net-next v13 04/14] mm: page_frag: add
 '_va' suffix to page_frag API
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
Cc: Yonghong Song <yonghong.song@linux.dev>, kvm@vger.kernel.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Neil Brown <neilb@suse.de>,
 Jason Wang <jasowang@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-nvme@lists.infradead.org, Dai Ngo <Dai.Ngo@oracle.com>,
 David Howells <dhowells@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Marc Dionne <marc.dionne@auristor.com>, Shuah Khan <shuah@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Anna Schumaker <anna@kernel.org>,
 Jeroen de Borst <jeroendb@google.com>, Sagi Grimberg <sagi@grimberg.me>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 linux-afs@lists.infradead.org,
 Eugenio =?ISO-8859-1?Q?P=E9rez?= <eperezma@redhat.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 Olga Kornievskaia <kolga@netapp.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Sunil Goutham <sgoutham@marvell.com>,
 linux-kselftest@vger.kernel.org, Chaitanya Kulkarni <kch@nvidia.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 virtualization@lists.linux.dev, KP Singh <kpsingh@kernel.org>,
 Tom Talpey <tom@talpey.com>, Shailend Chand <shailend@google.com>,
 linux-mediatek@lists.infradead.org, linux-mm@kvack.org,
 Keith Busch <kbusch@kernel.org>, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jens Axboe <axboe@kernel.dk>, Hao Luo <haoluo@google.com>,
 linux-nfs@vger.kernel.org, Song Liu <song@kernel.org>, netdev@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Eduard Zingerman <eddyz87@gmail.com>, hariprasad <hkelam@marvell.com>,
 Chuck Lever <chuck.lever@oracle.com>, Jiri Olsa <jolsa@kernel.org>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Geetha sowjanya <gakula@marvell.com>,
 Trond Myklebust <trondmy@kernel.org>, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2024-08-08 at 20:37 +0800, Yunsheng Lin wrote:
> Currently the page_frag API is returning 'virtual address'
> or 'va' when allocing and expecting 'virtual address' or
> 'va' as input when freeing.
>=20
> As we are about to support new use cases that the caller
> need to deal with 'struct page' or need to deal with both
> 'va' and 'struct page'. In order to differentiate the API
> handling between 'va' and 'struct page', add '_va' suffix
> to the corresponding API mirroring the page_pool_alloc_va()
> API of the page_pool. So that callers expecting to deal with
> va, page or both va and page may call page_frag_alloc_va*,
> page_frag_alloc_pg*, or page_frag_alloc* API accordingly.
>=20
> CC: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
> Reviewed-by: Subbaraya Sundeep <sbhatta@marvell.com>
> Acked-by: Chuck Lever <chuck.lever@oracle.com>
> Acked-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/net/ethernet/google/gve/gve_rx.c      |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  2 +-
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  4 ++--
>  .../marvell/octeontx2/nic/otx2_common.c       |  2 +-
>  drivers/net/ethernet/mediatek/mtk_wed_wo.c    |  4 ++--
>  drivers/nvme/host/tcp.c                       |  8 +++----
>  drivers/nvme/target/tcp.c                     | 22 +++++++++----------
>  drivers/vhost/net.c                           |  6 ++---
>  include/linux/page_frag_cache.h               | 21 +++++++++---------
>  include/linux/skbuff.h                        |  2 +-
>  kernel/bpf/cpumap.c                           |  2 +-
>  mm/page_frag_cache.c                          | 12 +++++-----
>  net/core/skbuff.c                             | 16 +++++++-------
>  net/core/xdp.c                                |  2 +-
>  net/rxrpc/txbuf.c                             | 15 +++++++------
>  net/sunrpc/svcsock.c                          |  6 ++---
>  .../selftests/mm/page_frag/page_frag_test.c   | 13 ++++++-----
>  19 files changed, 75 insertions(+), 70 deletions(-)
>=20

I still say no to this patch. It is an unnecessary name change and adds
no value. If you insist on this patch I will reject the set every time.

The fact is it is polluting the git history and just makes things
harder to maintain without adding any value as you aren't changing what
the function does and there is no need for this. In addition it just
makes it that much harder to backport fixes in the future as people
will have to work around the rename.

