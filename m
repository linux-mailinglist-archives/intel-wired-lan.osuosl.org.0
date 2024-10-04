Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B629904ED
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 15:55:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68E4981747;
	Fri,  4 Oct 2024 13:55:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XezHN0JnHOAK; Fri,  4 Oct 2024 13:55:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5511B8143E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728050119;
	bh=WNYZH5yk5RBPis3PkfiwxOzrh/DxAti5Ed/4hlA/rxo=;
	h=Date:To:From:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jDvEBm0vR6tewe7TH49nXB0eh/QDFigA1JEB4WbMiYW+oyaxEeM6Xu+AQKBN0xHAi
	 mLlT0t4m1wHQf3ohmeG6I8IV0ZW/tMJVe1xPdXnv9hqbxv9Nx5MHbgGFAzwsNKgv+A
	 1SdyVZbax9/ZhdhsZdVaMhFMRTfpedp6wb/BFb84rHV0sU+IVLW5S08+uSnBlN6lEe
	 JQfBzUz3PP88hWrcKNg6PRby3egQzWcc148ZcWO0c7gzSKSoM0GKtJxLqFlLnrL6Dw
	 cAajm7zfADdZTtMYBrKU5gi92lvXRKRxNtL2OkupMEqPQe1u9vEG4G+wTj4i35/p+F
	 KqbU7OMAhXIkg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5511B8143E;
	Fri,  4 Oct 2024 13:55:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E91F61BF276
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 13:55:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E330140666
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 13:55:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KxCNoPwYB_7z for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 13:55:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::434; helo=mail-wr1-x434.google.com;
 envelope-from=afabre@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4297D40665
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4297D40665
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4297D40665
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 13:55:16 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id
 ffacd0b85a97d-37cc810ce73so1305867f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Oct 2024 06:55:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728050114; x=1728654914;
 h=in-reply-to:references:from:subject:cc:to:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=WNYZH5yk5RBPis3PkfiwxOzrh/DxAti5Ed/4hlA/rxo=;
 b=wxbntR0xJC2oAbTtzvA4JnOUTxSBY4t2fyfvJPPOGpObtMcyPzACP9L00iieXGNrVF
 gDnyxVRldnJ7PdJgIkEYSmBngoyDNQmwSZTSeTjAQB545zggtaIdxBVfMtPMrXDGlz2M
 jJBQC0nlvBbhUQh5mpyapGoJaNGdn39o8Iyfa5ibzqMcNd57xlNiZ9mUB70td6uJfoJo
 Vb0CNbtmxaAD8ZP1ug5CmJ4MZPAxa+zFQ5DEpjzsWMatn4OThAwA1DpyfmNatG4ON4Vd
 VS6bcZseKLzI2EnLDzIxzuqphlPP4jnp9TNndvlGO7glDVR+paMbrBGTOZiagesXPnOe
 Qlqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW+8VM3Aou2va8Qbgk0idoeRP1yyX1zBpTq8Ipw3KEIt5ytdw4wLw3f0HIk1kTM09Vo1jqOdObPz7rkzI5JCOA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw4ldh9P0iK+f9JLW+IVqMh9pBLF29/vcxgeJFsNCifZrBpZztF
 Rr9sItyRrFNlndP6zcBFqDUVK4TA4BsnVmcXRrrZvSdybJEs2W/WDpsJTRZuXoU=
X-Google-Smtp-Source: AGHT+IFtu5umZBfH6/IiaE3XVq2bAaE74f7neCyeNg9pQd9XAeJmoVZo9hWEaKWhLH3oyXhtOF7g9Q==
X-Received: by 2002:adf:e50d:0:b0:37c:d121:e841 with SMTP id
 ffacd0b85a97d-37d0e8e03f0mr1813504f8f.40.1728050114034; 
 Fri, 04 Oct 2024 06:55:14 -0700 (PDT)
Received: from localhost ([2a09:bac1:27c0:58::31:92])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37d081f7035sm3280815f8f.23.2024.10.04.06.55.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Oct 2024 06:55:13 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 04 Oct 2024 15:55:11 +0200
Message-Id: <D4N2N1YKKI54.1WAGONIYZH0Y4@bobby>
To: "Jesper Dangaard Brouer" <hawk@kernel.org>, "Daniel Xu" <dxu@dxuuu.xyz>,
 "Stanislav Fomichev" <stfomichev@gmail.com>
From: "Arthur Fabre" <afabre@cloudflare.com>
X-Mailer: aerc 0.8.2
References: <871q11s91e.fsf@toke.dk> <ZvqQOpqnK9hBmXNn@lore-desk>
 <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby> <ZvwNQqN4gez1Ksfn@lore-desk>
 <87zfnnq2hs.fsf@toke.dk> <Zv18pxsiTGTZSTyO@mini-arch>
 <87ttdunydz.fsf@toke.dk> <Zv3N5G8swr100EXm@mini-arch>
 <D4LYNKGLE7G0.3JAN5MX1ATPTB@bobby> <Zv794Ot-kOq1pguM@mini-arch>
 <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
 <038fffa3-1e29-4c6d-9e27-8181865dca46@kernel.org>
In-Reply-To: <038fffa3-1e29-4c6d-9e27-8181865dca46@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1728050114; x=1728654914;
 darn=lists.osuosl.org; 
 h=in-reply-to:references:from:subject:cc:to:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WNYZH5yk5RBPis3PkfiwxOzrh/DxAti5Ed/4hlA/rxo=;
 b=BUlBEM+ShZxW8bCkV6PMmd8A2vAZLGuctSQaKJPfP3dAq364IQHzFqZccZ0RqDh2Qw
 75ame2X+e0s+LJHVo5aa11ZSZRv9VZOL8SdahJa9/11fAywhgVIOTh41o3SA7erOZ7gP
 VETJ+OC+/2VHHpuaOyY1eD1V2+CdeYoISASFb7+gdFnXqJtsUqUyUixjm7L3+bEC3EK7
 zXYW+7Aj1EkXZUyqixRvmLKo/RaPwC1OpSbXrnJ7anHgwPNgpA2t4iPG/tI0u7EPDmQR
 T9yr790NpMO251utvWj/9DYHEhAVSyxZ0S+hgi9bWmP1z7+RGb3dhyGh+ebWigLsjnKG
 rcMw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=BUlBEM+S
Subject: Re: [Intel-wired-lan] [RFC bpf-next 0/4] Add XDP rx hw hints
 support performing XDP_REDIRECT
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
Cc: mst@redhat.com, jasowang@redhat.com, ast@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, Jakub Sitnicki <jakub@cloudflare.com>,
 daniel@iogearbox.net, kernel-team <kernel-team@cloudflare.com>,
 przemyslaw.kitszel@intel.com, john.fastabend@gmail.com, sdf@fomichev.me,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com, Lorenzo
 Bianconi <lorenzo@kernel.org>, Yan Zhai <yan@cloudflare.com>,
 alexandre.torgue@foss.st.com, netdev@vger.kernel.org,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri Oct 4, 2024 at 12:38 PM CEST, Jesper Dangaard Brouer wrote:
> [...]
> >>> There are two different use-cases for the metadata:
> >>>
> >>> * "Hardware" metadata (like the hash, rx_timestamp...). There are onl=
y a
> >>>    few well known fields, and only XDP can access them to set them as
> >>>    metadata, so storing them in a struct somewhere could make sense.
> >>>
> >>> * Arbitrary metadata used by services. Eg a TC filter could set a fie=
ld
> >>>    describing which service a packet is for, and that could be reused=
 for
> >>>    iptables, routing, socket dispatch...
> >>>    Similarly we could set a "packet_id" field that uniquely identifie=
s a
> >>>    packet so we can trace it throughout the network stack (through
> >>>    clones, encap, decap, userspace services...).
> >>>    The skb->mark, but with more room, and better support for sharing =
it.
> >>>
> >>> We can only know the layout ahead of time for the first one. And they=
're
> >>> similar enough in their requirements (need to be stored somewhere in =
the
> >>> SKB, have a way of retrieving each one individually, that it seems to
> >>> make sense to use a common API).
> >>
> >> Why not have the following layout then?
> >>
> >> +---------------+-------------------+---------------------------------=
-------+------+
> >> | more headroom | user-defined meta | hw-meta (potentially fixed skb f=
ormat) | data |
> >> +---------------+-------------------+---------------------------------=
-------+------+
> >>                  ^                                                    =
        ^
> >>              data_meta                                                =
      data
> >>
> >> You obviously still have a problem of communicating the layout if you
> >> have some redirects in between, but you, in theory still have this
> >> problem with user-defined metadata anyway (unless I'm missing
> >> something).
> >>
>
> Hmm, I think you are missing something... As far as I'm concerned we are
> discussing placing the KV data after the xdp_frame, and not in the XDP
> data_meta area (as your drawing suggests).  The xdp_frame is stored at
> the very top of the headroom.  Lorenzo's patchset is extending struct
> xdp_frame and now we are discussing to we can make a more flexible API
> for extending this. I understand that Toke confirmed this here [3].  Let
> me know if I missed something :-)
>
>   [3] https://lore.kernel.org/all/874j62u1lb.fsf@toke.dk/
>
> As part of designing this flexible API, we/Toke are trying hard not to
> tie this to a specific data area.  This is a good API design, keeping it
> flexible enough that we can move things around should the need arise.

+1. And if we have an API for doing this for user-defined metadata, it
seems like we might as well use it for hardware metadata too.

With something roughly like:

    *val get(id)

    set(id, *val)

with pre-defined ids for hardware metadata, consumers don't need to know=20
the layout, or where / how the data is stored.

Under the hood we can implement it however we want, and change it in the
future.

I was initially thinking we could store hardware metadata the same way
as user defined metadata, but Toke and Lorenzo seem to prefer storing it
in a fixed struct.
