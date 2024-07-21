Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4595D938618
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jul 2024 22:42:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3119607EE;
	Sun, 21 Jul 2024 20:42:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6517Re5hi_LM; Sun, 21 Jul 2024 20:42:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF03D607D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721594557;
	bh=Y2Prf/IbMk4LMsyq34wH1row2ki7pR91wfPtg73kQoQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qRB3RVV+cGJbztKzmuv7YklfYODajS05v1HlUr44QvK29mqSNS/eB1Mh2oBwhR4Ti
	 rzHByhLkVUCbBc4rhagHO8ATElo1gW4Hl6G3ONIKjHtCC1K5dmpFtAqN7Dy3EsaQAK
	 6BQ11zCh4PiGy9mwgQEMehY6zrlo5mte4pIwAn4c5GWJSx/j+In+26szq12vP1HX5+
	 MEUSanHd6FS9tyJIjhXnR+migQ0CgeXwo4x3u5E4q0uNlUkI6vHDT88wAtKDxq3S2R
	 KVkSrOeNnZffa/pbbxALbbrhnh+zIaL4ZnaR4TBSQ/LfkK7V0Q9fZ+ySBIAM6/Q83/
	 UazSeF9OIsNzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF03D607D3;
	Sun, 21 Jul 2024 20:42:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8219A1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jul 2024 20:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69B764032A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jul 2024 20:42:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4d-aQr_RZ0Hm for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Jul 2024 20:42:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42f; helo=mail-wr1-x42f.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0DB5C400F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DB5C400F6
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0DB5C400F6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jul 2024 20:42:34 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-3686b554cfcso1568604f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jul 2024 13:42:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721594553; x=1722199353;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Y2Prf/IbMk4LMsyq34wH1row2ki7pR91wfPtg73kQoQ=;
 b=QzK93/seg+k3tEG5RgP2kHhMsjhe4xUpF6JmStF5UccNQg67NGXnGcJJ+LEzehkFe4
 Q0q8honZAvz8WCsKTNh/r+lanK8kOhgi8voeERD7mOAJy6XQVmqEvca2UFDgyX1M2xwZ
 PBSdm94M0BJw66RKw9OxBw1A71SrjPS78ROiZbEG2c7g7jiQ/Un1Zq9+vTR/V4ACMMNZ
 Y+d0Kxmivh7BlMKEvt4/dp+tR+HexSM/hDQQa8wLA4ZTIcJNhSudtluCfpk2IYj6DZsH
 NM+KP3o9TLMNyZK2nVHoz6RB7o7U8EYDD/ljShka0M66wrbhwHwEKub4SKBA/W33VWhG
 dpyw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVolTqcfU4uw2VC5aaXpqPgnlNOPM7Qb1PaHvvGbG0INafT+OMUAqsuaf/e8m5Ojuk3bT9L1jRadeYH1w3/rsvFQUW4E+nHIxlrsihWWkf88A==
X-Gm-Message-State: AOJu0YwjyHa5AIZYTcdzpzjAEl9+N7fWwOX8VK1bUQvW+i5Y4/v83ZwX
 z0hIh0XJgBtrDV4SYRh1WvoIm/PoLHR9kAMUKZW1IXA4KYtlZu5wZSQM8y8eMwkpuMrEBLZfEXV
 q8w6CZ06LbF0oH9V2zdP2K0gjmJE=
X-Google-Smtp-Source: AGHT+IHzyJqN1Q0WaIfDKyj2SqhKg2oxhBaiBXCVTaoG5f0KmwGrOsY8JwrfF4zCan/VnZBfTxjvlG6f3HfT9iOc4L4=
X-Received: by 2002:a5d:59a4:0:b0:366:e838:f5d4 with SMTP id
 ffacd0b85a97d-369bbbb4b95mr3333434f8f.3.1721594552579; Sun, 21 Jul 2024
 13:42:32 -0700 (PDT)
MIME-Version: 1.0
References: <20240719093338.55117-1-linyunsheng@huawei.com>
 <20240719093338.55117-5-linyunsheng@huawei.com>
In-Reply-To: <20240719093338.55117-5-linyunsheng@huawei.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Sun, 21 Jul 2024 13:41:55 -0700
Message-ID: <CAKgT0UcqELiXntRA_uD8eJGjt-OCLO64ax=YFXrCHNnaj9kD8g@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1721594553; x=1722199353; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Y2Prf/IbMk4LMsyq34wH1row2ki7pR91wfPtg73kQoQ=;
 b=WKqr7zAp3SpSY82V64XMt9u1hUVdFNT2OT4/UbVTkzwOw95VrMUvsCR+yA0G1Bofk3
 FqUuX7KMPmW9clBxjILl+ZBz+RaJaYV+kMjI8LQWVyMcKYJ3WU3HyiccTqufT4HidPUS
 2eqn/EGwi24SNnL8FlEgKzCN+YUNoHXNfydB4kAAkUjLdMvjA2b3U9Xvf6rAvR0rE8tP
 TWWrmMWbEMjXWDBWAEt4VG2D8uOXNTq8bdBXoJPEl51uDQGRGIW4h5JnjW+cSN7jTktk
 Bzwn89qWJtsRnyUdfJgWjo66KYKZW1SN7yq3b7mxW2vDnRNsPJiIIbvaNDTyT1Sw4qzf
 Fq7A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=WKqr7zAp
Subject: Re: [Intel-wired-lan] [RFC v11 04/14] mm: page_frag: add '_va'
 suffix to page_frag API
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
 Marc Dionne <marc.dionne@auristor.com>, Christoph Hellwig <hch@lst.de>,
 Anna Schumaker <anna@kernel.org>, Jeroen de Borst <jeroendb@google.com>,
 Sagi Grimberg <sagi@grimberg.me>, Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 linux-afs@lists.infradead.org,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 Olga Kornievskaia <kolga@netapp.com>, kuba@kernel.org, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sunil Goutham <sgoutham@marvell.com>, Chaitanya Kulkarni <kch@nvidia.com>,
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
 davem@davemloft.net, Eduard Zingerman <eddyz87@gmail.com>,
 hariprasad <hkelam@marvell.com>, Chuck Lever <chuck.lever@oracle.com>,
 Jiri Olsa <jolsa@kernel.org>, Praveen Kaligineedi <pkaligineedi@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Geetha sowjanya <gakula@marvell.com>,
 Trond Myklebust <trondmy@kernel.org>, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 19, 2024 at 2:37=E2=80=AFAM Yunsheng Lin <linyunsheng@huawei.co=
m> wrote:
>
> Currently the page_frag API is returning 'virtual address'
> or 'va' when allocing and expecting 'virtual address' or
> 'va' as input when freeing.
>
> As we are about to support new use cases that the caller
> need to deal with 'struct page' or need to deal with both
> 'va' and 'struct page'. In order to differentiate the API
> handling between 'va' and 'struct page', add '_va' suffix
> to the corresponding API mirroring the page_pool_alloc_va()
> API of the page_pool. So that callers expecting to deal with
> va, page or both va and page may call page_frag_alloc_va*,
> page_frag_alloc_pg*, or page_frag_alloc* API accordingly.
>
> CC: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
> Reviewed-by: Subbaraya Sundeep <sbhatta@marvell.com>

Rather than renaming the existing API I would rather see this follow
the same approach as we use with the other memory subsystem functions.
A specific example being that with free_page it is essentially passed
a virtual address, while the double underscore version is passed a
page. I would be more okay with us renaming the double underscore
version of any functions we might have to address that rather than
renaming all the functions with "va".

In general I would say this patch is adding no value as what it is
doing is essentially pushing the primary users of this API to change
to support use cases that won't impact most of them. It is just
creating a ton of noise in terms of changes with no added value so we
can reuse the function names.
