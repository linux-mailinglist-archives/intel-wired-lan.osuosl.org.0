Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AB5944F0B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 17:22:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FE0C40F12;
	Thu,  1 Aug 2024 15:22:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ija1Uu7clsWM; Thu,  1 Aug 2024 15:22:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E708F40114
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722525762;
	bh=8Dx2Bv0d2od3Km7MjoXRYzhl1VfhP4WqwsY5gBZHcjc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4Rtfc4gmrU8y13eSrJy/jfGFuVcKJy4Y/2rWgk2GQoMKVZ3fH7KKTXxfxeWTks4jS
	 HYrpOs0v9wOBW3BgseWBCNKQN+1nJHzOXfpedinyZXz0TnvBL/wOpIuXeplfLYaRS8
	 pdr4RNq9sH9MALS9JPDsrgRG+cbe/Ha5CfxmkODKkFnNVje+He2biuZyAQg5L9zIdn
	 R8lwRrRigNg9qCpymwHstOAr+nEwpd5MxpkWJXlvhQJThrVMQOzszn7m6Ka5BXN0F2
	 tURYGV+CWrQjRz1MSJ2DstaN9BXJjHipuYtDGwHDxBrjYUr6AYroBSLuEqt4TQuw/d
	 l3jJIw7G0sIqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E708F40114;
	Thu,  1 Aug 2024 15:22:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32F951BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 15:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C31940546
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 15:22:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jFEd53_9Peq9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 15:22:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C185F403E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C185F403E3
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C185F403E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 15:22:38 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-428e0d184b4so6439335e9.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Aug 2024 08:22:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722525756; x=1723130556;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8Dx2Bv0d2od3Km7MjoXRYzhl1VfhP4WqwsY5gBZHcjc=;
 b=e/DF4bL7lMja5qKZ65lDPPlQGg3UlFpaBuKmQ+87+JJLUAuPGbWm+IyMLAyU8OK1iG
 jMUUzpfRSCNOSHJbz3CG5h9FCE/EEwFLMeN0XB9SpBwtUQl9JQ26uzP4fnWeZwIv0/eF
 Di0EfyWwBOn6OxVVwxxLZ2xCyfVd9Yx79DEnNzihfbmo4vM5E7tz+1si8KeTMWjeqyvC
 I6+JXmMLpzxJas8JBv1kMmmgZq2l/mTfuo8Z7LAxFZIqvt8CnACQHUQr4oy1R84uqWpY
 8N37UbB8jMqCdtryoUXI3WBA9339+TKb/NMjHqLimobe4lYgqZPiXaYh+Rx5B7AWLBah
 jS4g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWEZlqdes/SeMM8ukE1FCKZhQ3wG0Q39rHfDyq73k5A8YxSgGtpQUy/3aWl+Scye17t/CjVKemfa/yAHlUQy9IiORjX+dvsGZfFScUlJh78mw==
X-Gm-Message-State: AOJu0Yy/EAL+lGGIQqJkkmUFSrWMpURRC53uLyAlIWdmyqfgFnlyUSlG
 lK0zJaZLVnml+AWBtNXS4XE973IDnvKzFnecRWu8S8srt2GFVd72454+Oz1g6Eir78ks267GmsV
 VT/P/WyJN+bV4KgPAmN9hErpnGPY=
X-Google-Smtp-Source: AGHT+IHJwpMJUuvVBDGd0+iVwndbV1UbEfs+MYBNb+0c/veShsqCR+fklPSjDi/gK00dEDB9UQYZf/nj06+15imHIwM=
X-Received: by 2002:adf:f14d:0:b0:368:4bc0:9211 with SMTP id
 ffacd0b85a97d-36bbc0f3459mr125871f8f.17.1722525756248; Thu, 01 Aug 2024
 08:22:36 -0700 (PDT)
MIME-Version: 1.0
References: <20240731124505.2903877-1-linyunsheng@huawei.com>
 <20240731124505.2903877-5-linyunsheng@huawei.com>
 <CAKgT0UcqdeSJdjZ_FfwyCnT927TwOkE4zchHLOkrBEmhGzex9g@mail.gmail.com>
 <22fda86c-d688-42e7-99e8-e2f8fcf1a5ba@huawei.com>
In-Reply-To: <22fda86c-d688-42e7-99e8-e2f8fcf1a5ba@huawei.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 1 Aug 2024 08:21:59 -0700
Message-ID: <CAKgT0UcuGj8wvC87=A+hkarRupfhjGM0BPzLUT2AJc8Ovg_TFg@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722525756; x=1723130556; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8Dx2Bv0d2od3Km7MjoXRYzhl1VfhP4WqwsY5gBZHcjc=;
 b=U+0JvvH4JfDV9p1IBFMLvx5A0y0oLo6NSJjuPJsRYM1MZOeXUJP1NIZk9K4t/4lnzZ
 2zWxO7DDaE7+LuJNLNIOdKNLVNPLji2cCKBJSR8upJmtx9XBI0jQnW4UtTVH6knajT31
 MXGIK8eJ7CIlYVzkvVOleCXSgh7YA6zRKhnAcnLpsd+IdE66Cp7ErD1V/UxzzcbTSfwL
 1vajFyTPL48wP9W5NO4+IfXueHx+8gt+F0lNGkf1etRMyGVTgqGWVm5UfMZY2ECJ+Non
 e87+s/Au3etk2+rigzUIzsNdVwaRHdUXUDzbO96QrGREUUnVElzJWlwkBnHibH6Dfjk9
 rJtQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=U+0JvvH4
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

On Thu, Aug 1, 2024 at 6:01=E2=80=AFAM Yunsheng Lin <linyunsheng@huawei.com=
> wrote:
>
> On 2024/8/1 2:13, Alexander Duyck wrote:
> > On Wed, Jul 31, 2024 at 5:50=E2=80=AFAM Yunsheng Lin <linyunsheng@huawe=
i.com> wrote:
> >>
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
> >
> > I am naking this patch. It is a pointless rename that is just going to
> > obfuscate the git history for these callers.
>
> I responded to your above similar comment in v2, and then responded more
> detailedly in v11, both got not direct responding, it would be good to
> have more concrete feedback here instead of abstract argument.
>
> https://lore.kernel.org/all/74e7259a-c462-e3c1-73ac-8e3f49fb80b8@huawei.c=
om/
> https://lore.kernel.org/all/11187fe4-9419-4341-97b5-6dad7583b5b6@huawei.c=
om/

I will make this much more understandable. This patch is one of the
ones that will permanently block this set in my opinion. As such I
will never ack this patch as I see no benefit to it. Arguing with me
on this is moot as you aren't going to change my mind, and I don't
have all day to argue back and forth with you on every single patch.

As far as your API extension and naming maybe you should look like
something like bio_vec and borrow the naming from that since that is
essentially what you are passing back and forth is essentially that
instead of a page frag which is normally a virtual address.
