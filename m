Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39912947DA5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 17:06:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8339D810A4;
	Mon,  5 Aug 2024 15:06:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id udtNulikmdOR; Mon,  5 Aug 2024 15:06:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBE76810BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722870372;
	bh=sM563CEGX+iYVBrLjeDfGXla4ALwff+kdJMmGjR+TG8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a1YPI0V38clnInc3vfWTMeDPv4xuvhPQAq18nTSbqnbU9bOEUVrpD6IfK1l0zi/Fo
	 WAW3HoNcEKOKPYp6NKZJDONPyLvynoq64J8+lotCyEXHXaonwJ8QsXh3Lv4hncADQZ
	 VR/EIFz27r3tpB6QrnhLg5mwtt6lg1ZVKVkXbkhq0VflKVjJt0eRR1cPzdE9kRuQ0s
	 pF3VgFnHG6VOBFDK3syxvohHFdAFkPmYbyS56RyH9JIuPKzHfTcDUbBVtzNJSGvjDQ
	 NX/qK6wiyaVKrCsNKMJQoT0LbxCC0ifAMRx4PWPt3zU1iQZem41Tk+iTsXLPqwz1D2
	 Wf7NDuiORpc+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBE76810BF;
	Mon,  5 Aug 2024 15:06:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 569771BF322
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2024 06:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 500654039B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2024 06:44:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kKoosQ5cihzT for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Aug 2024 06:44:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.221.54;
 helo=mail-wr1-f54.google.com; envelope-from=sagigrim@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D5ABC40394
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5ABC40394
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D5ABC40394
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2024 06:44:41 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id
 ffacd0b85a97d-36841f56cf6so1199526f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 03 Aug 2024 23:44:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722753880; x=1723358680;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sM563CEGX+iYVBrLjeDfGXla4ALwff+kdJMmGjR+TG8=;
 b=p70zQ+cwLxo9WpOhkus+Kva5noBAd9743ZBSujOx9JW/PvylJXkO3TfBsdTaWO7U1Q
 wczF/7p1vilaEJWzmO5cBly/XoqHLpPNg8X17AIZT+CnvtJm+//qwsU7o+j4e2g4rvg8
 uML097zdTOKgq6BwVmvMw9Bs0Xq+6bq/iBRW9hQdCxOhE/DuGaqNkimPvIonTeu3SBCU
 auBjfLg+1BU/h5dQ/15s49T6zr37UhJqYYGAb1H1gSeipFnHjxf87/YiJNDam54cSFSJ
 hAk2yFReMrh7Yr/RVr0TCKormad4zHL/qciKM80xr/0HffBXdDqw335OlUXRtX+/C1PI
 y7Lw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVVXMbhz1ilUtdVtmX11t0e2E/DAjqPpjXeAA4jrUZI4VkyLvrYP0TBp3LFr5aAONnOwQ2go1nTWRMZrylcwwU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwZJNRVs/ng/zUPcC/RCPO45M1+BTxxcWwbPhYFrYambLKpRIyn
 0ZpeRLGkVr4W6a3O05drrhUDuOMYI1nBFhJkRJ3MUP4xExd+1ptD
X-Google-Smtp-Source: AGHT+IF+HIEN3u4KbARF8SJvOwd5zbIiuHalh5c4I/D6/TshZm+RxUSfK1q1kRjeS4JttPgnFZS+0w==
X-Received: by 2002:a5d:648d:0:b0:368:aa2:2b4e with SMTP id
 ffacd0b85a97d-36bbc0c8bbemr3329655f8f.4.1722753879500; 
 Sat, 03 Aug 2024 23:44:39 -0700 (PDT)
Received: from [10.50.4.202] (bzq-84-110-32-226.static-ip.bezeqint.net.
 [84.110.32.226]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36bbd06e0f5sm5973058f8f.104.2024.08.03.23.44.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 03 Aug 2024 23:44:39 -0700 (PDT)
Message-ID: <ddf1824f-c60a-4908-a67b-ebe7546be870@grimberg.me>
Date: Sun, 4 Aug 2024 09:44:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yunsheng Lin <linyunsheng@huawei.com>, davem@davemloft.net,
 kuba@kernel.org, pabeni@redhat.com
References: <20240731124505.2903877-1-linyunsheng@huawei.com>
 <20240731124505.2903877-5-linyunsheng@huawei.com>
Content-Language: en-US
From: Sagi Grimberg <sagi@grimberg.me>
In-Reply-To: <20240731124505.2903877-5-linyunsheng@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 05 Aug 2024 15:06:09 +0000
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=grimberg.me
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
 Alexander Duyck <alexander.duyck@gmail.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 David Howells <dhowells@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Marc Dionne <marc.dionne@auristor.com>, Christoph Hellwig <hch@lst.de>,
 Anna Schumaker <anna@kernel.org>, Jeroen de Borst <jeroendb@google.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 linux-afs@lists.infradead.org,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 Olga Kornievskaia <kolga@netapp.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Sunil Goutham <sgoutham@marvell.com>,
 linux-mm@kvack.org, Chaitanya Kulkarni <kch@nvidia.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 virtualization@lists.linux.dev, KP Singh <kpsingh@kernel.org>,
 Tom Talpey <tom@talpey.com>, Shailend Chand <shailend@google.com>,
 linux-mediatek@lists.infradead.org, linux-nvme@lists.infradead.org,
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

Regardless of the API discussion,

The nvme-tcp bits look straight-forward:
Acked-by: Sagi Grimberg <sagi@grimberg.me>
