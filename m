Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E17953675
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2024 17:01:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28E5840EBF;
	Thu, 15 Aug 2024 15:01:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cHk6GDa77BsH; Thu, 15 Aug 2024 15:01:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D044E40EA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723734092;
	bh=X5A/Pf35dj4E2EpVtARhuhl6tAP8WNgJnMyspcYzO+k=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JdJH3mBYezawXLJ2H8NdrNQ/Bg4qskCt/IcX0KQ8O+uU3ZWXtMujTvuMKR1iSllfP
	 cZKN0MXqQ0zv5pnbBHZfRH3tXxVcbEZKDGb4QL3/71qIMmHqI5TiWzLc3IMR1MV573
	 4hsP+EetaQoM4hUuE3vWxWkynNmDgU1QqslXaXjWEfNvmi9XJ7bZWx6ZQjKRXfgnQJ
	 Ud5Z8pRVBnPYqKhlHRORfxRNHZI5MzNQTQE4IJmL3oTztdsUd/58inlxXXHC6TinR+
	 y/ucv5nL4bPi8EolxvBXvTwENHgFR/avupGNWORMfs4P+asKzwq00ymi3SPjXNWgz9
	 tMW4t+dEda98A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D044E40EA8;
	Thu, 15 Aug 2024 15:01:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB8431BF591
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 15:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A555A60A9F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 15:01:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yp7g99L0HYge for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 15:01:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::332; helo=mail-wm1-x332.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 972F260A9B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 972F260A9B
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 972F260A9B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 15:01:28 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-429da8b5feaso9504315e9.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 08:01:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723734086; x=1724338886;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=X5A/Pf35dj4E2EpVtARhuhl6tAP8WNgJnMyspcYzO+k=;
 b=MzKcvvymqIoWdtqqubIQDG0KChs3vOUuzGsTnsdZjvNShhBGUa+lfVZJEv7Uj3mEA1
 ISqTR1U1knZTxYctHyOCZlpgeSGv+GqM4TQn2Zh32a3XwWhO+nN2KehQ1I6TIO3nhhOp
 cER/MrGZ1C8s2+N04fUubMpP6dPehq09IimIiBgUk4OnlTmlV0Hobgw0Uu/wzXvTLoWh
 vQk7tBGdALUtpASiMLNVD5SvTeny1Yci7biE2A3VgKCiWBUfz/weSEkW0FEo2jgmBuNR
 Or3fhm5tCWl58Pjrmkt1ZYYRyzYNdUZcMqFpIX0oe489n4TyYlTNRNe9mMlkiw84iMp3
 COfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWV2cfNnhDpzbVxcPetBRPL7hSKXvq7ETUbBudbZrtq52TR3ab6akAHFfKyJsodZf9Q9cpDcEnjSFRjWq5LTm8R2Se68lktBRLRfgOuLQCKRg==
X-Gm-Message-State: AOJu0YzxMrDImjkkgn8u0X6zzbsPr3TPVT9jTvaajYnixhmrkEo+TLqc
 bpcUh7ws/sNWBm3AhDpo6Vp61xV5VHpDIzcLVFtyMeE8+S/Ym/Q71hz0nmVWy+2Ch2hDU7lBdNP
 7E0TARS1sakXzEJdh7xh6gZE1xdY=
X-Google-Smtp-Source: AGHT+IFDnpMtbZ2O72JrYtKTcNGdeMRDRFuISj162VcIBgDVR4ZNDcEgvb9oYMQdJ7UgCrLds6/xYlzhvGcrtQXyvpA=
X-Received: by 2002:a05:600c:511e:b0:426:59d3:8cae with SMTP id
 5b1f17b1804b1-429dd236521mr62262805e9.13.1723734085882; Thu, 15 Aug 2024
 08:01:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240808123714.462740-1-linyunsheng@huawei.com>
 <20240808123714.462740-5-linyunsheng@huawei.com>
 <d1a23116d054e2ebb00067227f0cffecefe33e11.camel@gmail.com>
 <676a2a15-d390-48a7-a8d7-6e491c89e200@huawei.com>
In-Reply-To: <676a2a15-d390-48a7-a8d7-6e491c89e200@huawei.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 15 Aug 2024 08:00:49 -0700
Message-ID: <CAKgT0Uct5ptfs9ZEoe-9u-fOVz4HLf+5MS-YidKV+xELCBHKNw@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723734086; x=1724338886; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X5A/Pf35dj4E2EpVtARhuhl6tAP8WNgJnMyspcYzO+k=;
 b=Gu2c2emW+x3BvsLvhOCAZmn2Nta8K9DQwURAKFeRSOa7Mekg1HWmR2ALVI6aNoFmtX
 QPnHnd5mWnfuoPZCAIx0wT8iiPoip7yQwpUW+sPhFDy9dosoyQthdyNkZBYG0mKqgNMU
 /gVNjTX/tG5NZddl9FRh/svfCCGNUFq6T2SYSXK7yLC7RoTvPgWbK5zbS7cbxFbTYRlj
 3t5VGk8+Dq4Uu9OIISEkcZ3sU4dajSUDNluSO8Ssyys4RV80ltRHIadYJwTWnmDQS5or
 lFr/6ZDQZRjT09hor+Dte/O10yuDwWb9XNoWozHPjRElLMlmnVJGX+J+s1sNlkTlq6OE
 r6sQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Gu2c2emW
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
 David Howells <dhowells@redhat.com>, Keith Busch <kbusch@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Marc Dionne <marc.dionne@auristor.com>, Shuah Khan <shuah@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Anna Schumaker <anna@kernel.org>,
 Jeroen de Borst <jeroendb@google.com>, Sagi Grimberg <sagi@grimberg.me>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 linux-afs@lists.infradead.org,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 Olga Kornievskaia <kolga@netapp.com>, kuba@kernel.org, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sunil Goutham <sgoutham@marvell.com>, linux-kselftest@vger.kernel.org,
 Chaitanya Kulkarni <kch@nvidia.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, virtualization@lists.linux.dev,
 KP Singh <kpsingh@kernel.org>, Tom Talpey <tom@talpey.com>,
 Shailend Chand <shailend@google.com>, linux-mediatek@lists.infradead.org,
 linux-mm@kvack.org, Matthias Brugger <matthias.bgg@gmail.com>,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
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

On Wed, Aug 14, 2024 at 8:00=E2=80=AFPM Yunsheng Lin <linyunsheng@huawei.co=
m> wrote:
>
> On 2024/8/14 23:49, Alexander H Duyck wrote:
> > On Thu, 2024-08-08 at 20:37 +0800, Yunsheng Lin wrote:
> >> Currently the page_frag API is returning 'virtual address'
> >> or 'va' when allocing and expecting 'virtual address' or
> >> 'va' as input when freeing.
> >>
> >> As we are about to support new use cases that the caller
> >> need to deal with 'struct page' or need to deal with both
> >> 'va' and 'struct page'. In order to differentiate the API
> >> handling between 'va' and 'struct page', add '_va' suffix
> >> to the corresponding API mirroring the page_pool_alloc_va()
> >> API of the page_pool. So that callers expecting to deal with
> >> va, page or both va and page may call page_frag_alloc_va*,
> >> page_frag_alloc_pg*, or page_frag_alloc* API accordingly.
> >>
> >> CC: Alexander Duyck <alexander.duyck@gmail.com>
> >> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
> >> Reviewed-by: Subbaraya Sundeep <sbhatta@marvell.com>
> >> Acked-by: Chuck Lever <chuck.lever@oracle.com>
> >> Acked-by: Sagi Grimberg <sagi@grimberg.me>
> >> ---
> >>  drivers/net/ethernet/google/gve/gve_rx.c      |  4 ++--
> >>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  2 +-
> >>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 +-
> >>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  2 +-
> >>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  4 ++--
> >>  .../marvell/octeontx2/nic/otx2_common.c       |  2 +-
> >>  drivers/net/ethernet/mediatek/mtk_wed_wo.c    |  4 ++--
> >>  drivers/nvme/host/tcp.c                       |  8 +++----
> >>  drivers/nvme/target/tcp.c                     | 22 +++++++++---------=
-
> >>  drivers/vhost/net.c                           |  6 ++---
> >>  include/linux/page_frag_cache.h               | 21 +++++++++---------
> >>  include/linux/skbuff.h                        |  2 +-
> >>  kernel/bpf/cpumap.c                           |  2 +-
> >>  mm/page_frag_cache.c                          | 12 +++++-----
> >>  net/core/skbuff.c                             | 16 +++++++-------
> >>  net/core/xdp.c                                |  2 +-
> >>  net/rxrpc/txbuf.c                             | 15 +++++++------
> >>  net/sunrpc/svcsock.c                          |  6 ++---
> >>  .../selftests/mm/page_frag/page_frag_test.c   | 13 ++++++-----
> >>  19 files changed, 75 insertions(+), 70 deletions(-)
> >>
> >
> > I still say no to this patch. It is an unnecessary name change and adds
> > no value. If you insist on this patch I will reject the set every time.
> >
> > The fact is it is polluting the git history and just makes things
> > harder to maintain without adding any value as you aren't changing what
> > the function does and there is no need for this. In addition it just
>
> I guess I have to disagree with the above 'no need for this' part for
> now, as mentioned in [1]:
>
> "There are three types of API as proposed in this patchset instead of
> two types of API:
> 1. page_frag_alloc_va() returns [va].
> 2. page_frag_alloc_pg() returns [page, offset].
> 3. page_frag_alloc() returns [va] & [page, offset].
>
> You seemed to miss that we need a third naming for the type 3 API.
> Do you see type 3 API as a valid API? if yes, what naming are you
> suggesting for it? if no, why it is not a valid API?"

I didn't. I just don't see the point in pushing out the existing API
to support that. In reality 2 and 3 are redundant. You probably only
need 3. Like I mentioned earlier you can essentially just pass a
page_frag via pointer to the function. With that you could also look
at just returning a virtual address as well if you insist on having
something that returns all of the above. No point in having 2 and 3 be
seperate functions.

I am going to nack this patch set if you insist on this pointless
renaming. The fact is it is just adding noise that adds no value.
