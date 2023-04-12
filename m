Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6096DFB15
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 18:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F129D40B71;
	Wed, 12 Apr 2023 16:17:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F129D40B71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681316280;
	bh=woxWKLBJQmfZOgZIwMffRFfNBMxrTjdJ3L8dILvgPMA=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nVsXGD1dnwNDggX31T/BXOkeSdZqsjHPDNle3Q7DhDCFe2t7Yv3ZO9fnL9X3VxLl5
	 7PSk1X7DT+br915t+IkxG/GzZbW+re762XWZTlGqOZlq0y6+kr+zShm1MoxjAVBRzc
	 JD1bL7qhKlsliUnodH2ehFClzZRdUwg+j5azy1GIkcRusNnxKZ4ahguMMogLRhL3W1
	 f0vX/jf+JDVTFneeJuQBDH2b1T1vH2dOvk1ge4s1WuL4BsBbJTegRFclvjCNqyja9D
	 cRZsu95NTNk2QLATQ7/br9Vw+Mqq2kSVw43SymRB1w6kyOq+UC8PW9ZmM9AicEh3L1
	 Vgt7rbG0MJdMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rl5jkJ4jev-Z; Wed, 12 Apr 2023 16:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5A8B40232;
	Wed, 12 Apr 2023 16:17:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5A8B40232
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5174B1C2E09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2594481FEE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2594481FEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6yq36eB2l5s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 16:17:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B491E81FEA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B491E81FEA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:17:51 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-558-kWdSxYk6M76DEunTvwV0lA-1; Wed, 12 Apr 2023 12:17:47 -0400
X-MC-Unique: kWdSxYk6M76DEunTvwV0lA-1
Received: by mail-ed1-f70.google.com with SMTP id
 z34-20020a509e25000000b00504ed11e0c5so1608913ede.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 09:17:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681316266; x=1683908266;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Qnf9yElTQYFqrnMLB45LKI8SRk00USkcv5dSbMkmIug=;
 b=BDY7Tbzcuk6mSZDqqOTFAOhO68yutNCiKwHhON69oWI/Le/LEDcZEIzP8nCsrfeI2H
 A+wVOcFc4XDPRu7dYI2VS5hDB3u0/4+icZX2r0Y3z5K+ekSUKlH3wdR1GNoIwY1lDVpY
 47nDmRyjgGJQn+SvId8A1s8nvrOeNX3wOrp/bzSU/fwZdpykf3t3DDek+TOmWtXah7KO
 v+oPx0HMPuHpMNTzYkEAHsN3kv0Q7y3e/o9h5JASmSdPvLZZD22Bep34mhjYcjDZ8QzN
 7pgqO/UCTzyvcVMitPLmywJuMKy62sTfv1MYW3XE82NoAXAWGRnlDxZbALAGzpgY3pYS
 UA6Q==
X-Gm-Message-State: AAQBX9d/Wt0H9z9h3keDXvWZ6/ExOWEJU/H1txMzYFDLTYd/OGBYRlaZ
 e1333RvXwsfqZT75cdEZBWmuPX1+tRWKevxjA39hA6SsySFuHGrpv7oB4x0AhW9jAHYGnuwnRk5
 2FNNxP4CP79zlToypvPrZnVtOJpIihg==
X-Received: by 2002:a17:906:3e1b:b0:947:4481:105b with SMTP id
 k27-20020a1709063e1b00b009474481105bmr6122431eji.3.1681316266560; 
 Wed, 12 Apr 2023 09:17:46 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZkmzRiKnM5DrNfQCtjR0yrisjPx1y54Hxkhfskk9JB9nxG0DC8iSLZdPvUzGtB9AGnC+h9og==
X-Received: by 2002:a17:906:3e1b:b0:947:4481:105b with SMTP id
 k27-20020a1709063e1b00b009474481105bmr6122388eji.3.1681316266222; 
 Wed, 12 Apr 2023 09:17:46 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 hs40-20020a1709073ea800b009351546fb54sm7328025ejc.28.2023.04.12.09.17.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Apr 2023 09:17:45 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <867e3607-52e0-8c02-8dbb-92bb997f079e@redhat.com>
Date: Wed, 12 Apr 2023 18:17:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
 <168098188134.96582.7870014252568928901.stgit@firesoul>
 <CAKH8qBu2ieR+puSkF30-df3YikOvDZErxc2qjjVXPPAvCecihA@mail.gmail.com>
 <402a3c73-d26d-3619-d69a-c90eb3f0e9ee@redhat.com>
 <ZDbXEqQc3MpKPmGv@google.com>
In-Reply-To: <ZDbXEqQc3MpKPmGv@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681316270;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Qnf9yElTQYFqrnMLB45LKI8SRk00USkcv5dSbMkmIug=;
 b=DvnolR8YX++WOjUDP1uLvjIxl9ptFSaVicRPN0VStYaiq/dTrBmE+k2A+MwSjYuPP4paoG
 4khaYjgUEgQl4tZ5/Ph4GMTi4bG5flaySvWW7XpUt8oMsAWbQblfYCgLnDxPU07O9VlVmr
 dVs5cOqTXXLSrPjVF7/oPAlebeZSBgw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DvnolR8Y
Subject: Re: [Intel-wired-lan] [PATCH bpf V7 1/7] selftests/bpf:
 xdp_hw_metadata default disable bpf_printk
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
Cc: Simon Horman <simon.horman@corigine.com>, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, boon.leong.ong@intel.com,
 hawk@kernel.org, xdp-hints@xdp-project.net, daniel@iogearbox.net,
 linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 brouer@redhat.com, kuba@kernel.org, pabeni@redhat.com, martin.lau@kernel.org,
 larysa.zaremba@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDEyLzA0LzIwMjMgMTguMDYsIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPiBPbiAwNC8x
MiwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPj4gT24gMTIvMDQvMjAyMyAwMC40Miwg
U3RhbmlzbGF2IEZvbWljaGV2IHdyb3RlOgo+Pj4gT24gU2F0LCBBcHIgOCwgMjAyMyBhdCAxMjoy
NOKAr1BNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPj4+PgpbLi4uXQo+Pj4KPj4+IEFyZSB5b3Ug
cGxhbm5pbmcgdG8gZXZlbnR1YWxseSBkbyBzb21ldGhpa2Ugc2ltaWxhciB0byB3aGF0IEkndmUK
Pj4+IG1lbnRpb25lZCBpbiBbMF0/IElmIG5vdCwgc2hvdWxkIEkgdHJ5IHRvIHNlbmQgYSBwYXRj
aD8KPj4KPj4gU2VlIG5leHQgcGF0Y2g6Cj4+ICAgLSBbUEFUQ0ggYnBmIFY3IDIvN10gc2VsZnRl
c3RzL2JwZjogQWRkIGNvdW50ZXJzIHRvIHhkcF9od19tZXRhZGF0YQo+Pgo+PiB3aGVyZSBJIGFk
ZCB0aGVzZSBjb3VudGVycyA6LSkKPiAKPiBPaCwgbmljZSwgbGV0IG1lIHRha2UgYSBsb29rLiBJ
IHdhcyBhc3N1bWluZyB2NyBpcyBtb3N0bHkgdGhlIHNhbWUgYXMKPiB2Ni4uCj4gICAKCkFsZXhl
aSBleHBsaWNpdGx5IGFza2VkIGZvciB0aGVzZSBjaGFuZ2VzIHRvIGJlIGluY2x1ZGVkIGluIFY3
LgpOb3RpY2UsIEkndmUgYWxyZWFkeSBzZW5kIG91dCBhIFtWOF0gKGFkZHJlc3NpbmcgU2ltb24n
cyBub3RlcykuClBsZWFzZSB0YWtlIGEgbG9vayBhdCBWOCBpbnN0ZWFkIG9mIFY3LgpXZSBhcmUg
YXQgUkM2IGFuZCBJIGhvcGUgd2Ugc29vbiBoYXZlIHNvbWV0aGluZyB3ZSBjYW4gYWdyZWUgb24u
CgoKW1Y4XSAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzE2ODEzMDMzMzE0My4xNTAyNDcu
MTExNTk0ODE1NzQ0NzczNTg4MTYuc3RnaXRAZmlyZXNvdWwvCgpbcGF0Y2h3b3JrXSAKaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L25ldGRldmJwZi9saXN0Lz9zZXJpZXM9NzM5
MTQ0JnN0YXRlPSUyQSZhcmNoaXZlPWJvdGgKCgotLUplc3BlcgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
