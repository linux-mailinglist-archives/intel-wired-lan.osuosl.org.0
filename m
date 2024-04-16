Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BACB98A70EF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 18:12:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CF7660AA2;
	Tue, 16 Apr 2024 16:12:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DD2p7-Rsvzpr; Tue, 16 Apr 2024 16:12:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76E6360A92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713283940;
	bh=EKrDgIJgNXo/R8quzpUy0yW7erzp8PxvHvcTe/50ujU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rbISVGWcVYJcaM/sZmY45IaqMK/+rN6lo+AYMqJWPpqk1ZNSGZuHGFQ6xFyZc6p/V
	 +xDzWUUr7oz/tsS3lnCn/xYu0cPl4OymItl4bmDqHlzfG4LNTNtkwtaHZdx7v9AldO
	 FTMJojo4TMjrHRC/AMnOXCTPXUWx6mC4WugVU2J300PA6HyiSzIZRCRftkswfMUxBc
	 whlXp8sJXASY9Vr58isBQKm7oeEcmpcZIG8fL0sYjYlZE9lXRBFIirpkt08r5Anj9R
	 IIJVb0JPOFYbBJ7mZq5RgI0U4JnWQLl650ZyORJeZqdrE1ZhPe2K0IW8uAWOL5IHs3
	 0+vyczd2kVwGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76E6360A92;
	Tue, 16 Apr 2024 16:12:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6D0F1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 16:12:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D252160AC3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 16:12:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lN72SWoRh5uW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 16:12:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62f; helo=mail-pl1-x62f.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 18D5560AD8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18D5560AD8
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18D5560AD8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 16:12:15 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-1e36b7e7dd2so37020815ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 09:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713283935; x=1713888735;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=EKrDgIJgNXo/R8quzpUy0yW7erzp8PxvHvcTe/50ujU=;
 b=jXWL55SiYcHf34iqnSyLo8BFiUv8DT/kV0ibMSWnqu4MLp6E6hZXTkntQpI4oFMRNY
 CFj/Mm8Nk8Sej7+L3wlyxNmZ6TdVu/GqsyweRdO6EKFbApvJK/hSPlUBW94jsJkqUZOm
 8aoqD4VtE+kH4bzG0vHKkysm/ZmHqGsPASUheyM+mbPpZqVfHQFmH9KA2UvMvzQHBXyn
 xG3n5cdy24oE7yIWa1pt4Lex/SH3U9hlQQlJ7DlYI+/5c8kwK6WPmKAJN+Ev8ewmmTsG
 vd/QxzDN9qN4KETJ2Z4hJTVurMiMIuba9H9px64WH59mnjkH/wc0xVKLPMfLPqqkj8tn
 RlCw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWnoDbS4pvv8bK7czcfTmudcfTPQfyiEK+N3ULuaHgYjRKIqyT3F+tiYHiTHmG7oGK+NqmwKIpo8vkkV3HjM/62tAPdFDmja2D893vLIXHI5A==
X-Gm-Message-State: AOJu0YzgeOw8JmBUNvZIVXzjjYlNaJeTbcPMUIXm9mjt8W/4waVHpPb0
 Fl7LgBFS+UCOGmJAazQwj0kw1w7LikaN5YoFS/+OdM4ecivsYoqK
X-Google-Smtp-Source: AGHT+IEaBhKQrtE4y17EN+JRfoZ0nAtlgq9TOIgtvD46kDZyqFoPetYC3y2iMwccARAF9quBrezxcQ==
X-Received: by 2002:a17:903:595:b0:1e3:e4ff:7054 with SMTP id
 jv21-20020a170903059500b001e3e4ff7054mr10328895plb.38.1713283934861; 
 Tue, 16 Apr 2024 09:12:14 -0700 (PDT)
Received: from ?IPv6:2605:59c8:43f:400:82ee:73ff:fe41:9a02?
 ([2605:59c8:43f:400:82ee:73ff:fe41:9a02])
 by smtp.googlemail.com with ESMTPSA id
 lf16-20020a170902fb5000b001e5119c1923sm10005822plb.71.2024.04.16.09.12.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Apr 2024 09:12:14 -0700 (PDT)
Message-ID: <18ca19fa64267b84bee10473a81cbc63f53104a0.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>, davem@davemloft.net,
 kuba@kernel.org,  pabeni@redhat.com
Date: Tue, 16 Apr 2024 09:12:01 -0700
In-Reply-To: <20240415131941.51153-8-linyunsheng@huawei.com>
References: <20240415131941.51153-1-linyunsheng@huawei.com>
 <20240415131941.51153-8-linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713283935; x=1713888735; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=EKrDgIJgNXo/R8quzpUy0yW7erzp8PxvHvcTe/50ujU=;
 b=ecNyR1v6AYihKki+aJpsDp6Prdc0yr75AwOxUzu3tX+7/S5LrazkRaLV7l3CNv3nJi
 a/vj7e75Fa8zVM5BCT7pLGVCyE8/SywiOuDJMQaHuGll4eocULBO6u6+e3MSynVCmTh2
 BxNadQjEAQEbfxDEhjjtTC0BNQQt9rdIcWEHiVu2wZmXtHxVtc8HDZP9WT4eoB3gIYuD
 AFjbYWJoGK1SENmyjoOa+OtnGIsPenUXnY75cchgHwqUUzKClwFtxL+94463ogf3jwOf
 b4Vhrowi7U+g9xYt+Pz6HUx9F7XdGhFpsoKRUnhvHzcsIilSSvZkMHZ8VzZKqPW+8MJU
 yN8Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ecNyR1v6
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 07/15] mm: page_frag: add
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
 linux-nvme@lists.infradead.org, Andrii Nakryiko <andrii@kernel.org>,
 David Howells <dhowells@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Marc Dionne <marc.dionne@auristor.com>, Christoph Hellwig <hch@lst.de>,
 Anna Schumaker <anna@kernel.org>, Jeroen de Borst <jeroendb@google.com>,
 Sagi Grimberg <sagi@grimberg.me>, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, linux-afs@lists.infradead.org,
 intel-wired-lan@lists.osuosl.org, Olga Kornievskaia <kolga@netapp.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sunil Goutham <sgoutham@marvell.com>, Chaitanya Kulkarni <kch@nvidia.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Dai Ngo <Dai.Ngo@oracle.com>,
 Sean Wang <sean.wang@mediatek.com>, virtualization@lists.linux.dev,
 KP Singh <kpsingh@kernel.org>, Tom Talpey <tom@talpey.com>,
 Shailend Chand <shailend@google.com>, linux-mediatek@lists.infradead.org,
 linux-mm@kvack.org, Keith Busch <kbusch@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jens Axboe <axboe@kernel.dk>, Hao Luo <haoluo@google.com>,
 linux-nfs@vger.kernel.org, Song Liu <song@kernel.org>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Eduard Zingerman <eddyz87@gmail.com>,
 hariprasad <hkelam@marvell.com>, Chuck Lever <chuck.lever@oracle.com>,
 Jiri Olsa <jolsa@kernel.org>, Praveen Kaligineedi <pkaligineedi@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Geetha sowjanya <gakula@marvell.com>,
 Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2024-04-15 at 21:19 +0800, Yunsheng Lin wrote:
> Currently most of the API for page_frag API is returning
> 'virtual address' as output or expecting 'virtual address'
> as input, in order to differentiate the API handling between
> 'virtual address' and 'struct page', add '_va' suffix to the
> corresponding API mirroring the page_pool_alloc_va() API of
> the page_pool.
>=20
> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>

This patch is a total waste of time. By that logic we should be
renaming __get_free_pages since it essentially does the same thing.

This just seems like more code changes for the sake of adding code
changes rather than fixing anything. In my opinion it should be dropped
from the set.

