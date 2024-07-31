Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB90494357A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2024 20:14:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C40A409F7;
	Wed, 31 Jul 2024 18:14:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vy_n_B76bFNX; Wed, 31 Jul 2024 18:14:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65DCD40B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722449677;
	bh=Pp0vWyL7VeDKadleGOEHNTdhDMPNVXeakIX5tgvvsCU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4bx7uue8lbvb0kNC5pHXsGVQTHobeeg9360yrorMl2JsehUCijcID7HeQNl8NydEv
	 FlF3p1bnsoQDShX8DfvbsPS49AHMJ5MSU6EFq4l7tXJs7Tk3heDBNyflCAPXnfrEWn
	 Bq4zKl5jbdDZyfxmbuAyAliHUIMGf0TyU7DgYn7lo53nM0joVAlpWCl40LqSxFe9o9
	 ReeTIt1bjsDcUQEtxvh17xBFHJaEwH/HQlesSkbLzwyomhho5q4wD2wyHZW10Vmzy3
	 CBQjmU6nA0cKhuwisfCT08JYa3PxI1EKeEB3xx9qVaPiv/azoYIxmw2rlZH5ocSE/F
	 BByqUzX4ae7lA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65DCD40B3E;
	Wed, 31 Jul 2024 18:14:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C86831BF44A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 18:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B142740DE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 18:14:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vt6ceeIxOeUK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 18:14:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::432; helo=mail-wr1-x432.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6025640188
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6025640188
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6025640188
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 18:14:33 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id
 ffacd0b85a97d-368440b073bso861452f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 11:14:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722449671; x=1723054471;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Pp0vWyL7VeDKadleGOEHNTdhDMPNVXeakIX5tgvvsCU=;
 b=kZdvKgCeR4oDQoNAntpqlVMdEABwMIy+WiKszkODq3uvMDsUUMzBB0KhX50uF81A8S
 71pSAJ8eQyxirAVnXRQ6T7W8Tvjl9nY2cLYLKzEyCkB9P0feNy02HHZ8TSKJ7WaN4PLU
 oPFLzLPHsCIuIiVo2XGtOl1dKMdR3/hEk0TzKkAjki6geMBNzOC4DtzMg96SgZhdszZA
 1UO/FzPqVHFM/g0SSmLSbbDfpL1rL2IPP1vQEa0KUV7X9Mknx9izYgJfbNY7LDsMPjeh
 dK7oLQlzk7BBWJgAl41EnPSkLmrcMGBr30uwKw4EZFNM++otLhBn/mqN1m5Stp0kvebF
 3VjA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWFNzgUop1mb+xhcHZAKn1gF7JKONMFQzeWmyeWocRaFyDYbhh7BYWCmYecAhgR+PbGQiS0rW7wDQbnYDDN60TXgpF4evrOwIc1qCa0Wjc2pg==
X-Gm-Message-State: AOJu0YyKCYrbSmn+SRSSO54fFOkzvCQ5iGJiBpPUqCIpJMqsfR9J/jpR
 m/onw6is1z6+OT4Um6i8cxNz8Y4IN8ucmJFhi/nt42xYF+TBWMPvDUCzahUTLbEdF0VPkEqsvcF
 luXwnZCUk37T09Ad2XkXYHvyiFuY=
X-Google-Smtp-Source: AGHT+IGv2ta3BQ/aeYaFuo6uJnDIs2Oh1PDBCcZrH55JaT3W4vssxSHelAFkF3XSYf9nggWCe12LvyT/WHK2KvkPs3c=
X-Received: by 2002:a05:6000:4582:b0:365:aec0:e191 with SMTP id
 ffacd0b85a97d-36b8c8fdbdbmr4052808f8f.21.1722449671103; Wed, 31 Jul 2024
 11:14:31 -0700 (PDT)
MIME-Version: 1.0
References: <20240731124505.2903877-1-linyunsheng@huawei.com>
 <20240731124505.2903877-5-linyunsheng@huawei.com>
In-Reply-To: <20240731124505.2903877-5-linyunsheng@huawei.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 31 Jul 2024 11:13:54 -0700
Message-ID: <CAKgT0UcqdeSJdjZ_FfwyCnT927TwOkE4zchHLOkrBEmhGzex9g@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722449671; x=1723054471; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Pp0vWyL7VeDKadleGOEHNTdhDMPNVXeakIX5tgvvsCU=;
 b=Xzfy6erz3MttcYbrjp7Qp4LltPJCdyqydPu/rJ8wH9mcxGxQmi0osvlnC4h5H8GvwH
 FxjePhCyHhuauLI2a6bdZdepv61CWYpCsWbmExQLGHXZbzxxSbMqMKgUp8drcQMYGPGi
 AXQcHmIzYCmU/VVwvbxOG71XRSuVf/AvLj/3uUsPi4OyrB7tptWktf84o4W7rzp4GH7Y
 sVgVuvJhjT0QUXhNTVnknETnrhGdahPdkIiZfutMGF0d1HQ1moX7mZov4zBPt30VFmhX
 OdiwdmaMuaioJnYUxGC7A1AA0QUTdg1SUoP6zkgRd3RvAnZJqbfVAssSjvF2MdGalKGZ
 ToWw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Xzfy6erz
Subject: Re: [Intel-wired-lan] [PATCH net-next v12 04/14] mm: page_frag: add
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

On Wed, Jul 31, 2024 at 5:50=E2=80=AFAM Yunsheng Lin <linyunsheng@huawei.co=
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

I am naking this patch. It is a pointless rename that is just going to
obfuscate the git history for these callers.

As I believe I said before I would prefer to see this work more like
the handling of __get_free_pages and __free_pages in terms of the use
of pages versus pointers and/or longs. Pushing this API aside because
you want to reuse the name for something different isn't a valid
reason to rename an existing API and will just lead to confusion.
