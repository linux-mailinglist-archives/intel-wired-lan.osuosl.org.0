Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2462B6703B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 22:59:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D24160E09;
	Tue, 17 Jan 2023 21:59:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D24160E09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673992754;
	bh=QSZ8wCz0WGICMOt93lJI+3KPJO1LL8Hy8zKmHNXtVdo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KpeONMQvh1LGZeYd2bHM2pm58EA8DuXZmiKZ6JK3kmtrewugmG5tKAaC/p0yQ2ISu
	 bmnNZcOtfaqg/oLPKF/fosBPxesKGkdN3O5p/rg6nk76RWCvFiKD/mV5GOptWNNA8p
	 s0gzHtxoTsOK/FCXZy7v7THToBLAHpvdqJeuoQ/BAvoLghBNtdWmDTiueE+fOuMMdm
	 hfsLz2p7f+Zs69w3X2j9KbrzumcereYkEcj4Xszr81lCRhfZQFXMQ+yapwCoBK2T2W
	 91nlCbcMMYKePSzwQVOnW2BQ3yq8t0uBqbng7RjY8GYAT7ucc6kZAnJH54MOSs7lml
	 WF0edZ24XiyZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f699EibMSxzb; Tue, 17 Jan 2023 21:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64B64606FF;
	Tue, 17 Jan 2023 21:59:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64B64606FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8408C1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 21:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5BA6E4085D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 21:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BA6E4085D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TU199cBOJfn8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 21:59:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1818F4056A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1818F4056A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 21:59:06 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-497-au96axDSOtWGmulhrBXg4A-1; Tue, 17 Jan 2023 16:59:00 -0500
X-MC-Unique: au96axDSOtWGmulhrBXg4A-1
Received: by mail-ej1-f71.google.com with SMTP id
 sb39-20020a1709076da700b0086b1cfb06f0so8369134ejc.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 13:59:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZpC47ZAac9QR/hP8cE59hdbTaxenYITufUhqUaUmasI=;
 b=O01R0a4D6QDevgzb/kqf0XHG1rf7fC14enY7/8YhiJRL2mYDFeiJ9Sw468fOHcDEcO
 KVLog4D4pFog39MDUYscDD3zdEqWQaS0Y1CazrLlFLDlwtjgFqfGDEb0mfUFBgbkz9mk
 VdsgDtA4zl6qPvyloxk4Lp4zlRP2ZS8VLo+4voe84sSakSVBzC2URN5SCmEN4YVKB3C2
 wR6b2Lro6l0kdZKHp9BXMBaHDdK8iw7Lk4dgHpHwybDnRdoCLVioVvbTTdgNdEW14Spt
 OYimLNC8KoKnfJIbnpdySjSTjvDOq0OJYrZLBORZU+kF4LguqigX0cM7ELKQEx9wNBG+
 SGBA==
X-Gm-Message-State: AFqh2kp0g3LbgN50rHfxWghhRskb9icenRZJkaeEFAgWJQyedXfM2pS4
 BKQJqHp/48PMUTlXkiq1uksE8xz/VkrYpl64VwpE5X/UD91gtpv6paFbYUbCw0vMniiPKMpxGEs
 qxbMo05mkIGhdcXutZyJQzNQrEGfDpg==
X-Received: by 2002:a17:906:5d1:b0:861:7a02:1046 with SMTP id
 t17-20020a17090605d100b008617a021046mr4453997ejt.37.1673992739096; 
 Tue, 17 Jan 2023 13:58:59 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvn/uG4kaZgjhWjt2xaWdG8enkNDaED9Qq1xVDHJQawI8Y47x89PbCi4tmTDPx1m6XWiFFdeg==
X-Received: by 2002:a17:906:5d1:b0:861:7a02:1046 with SMTP id
 t17-20020a17090605d100b008617a021046mr4453975ejt.37.1673992738768; 
 Tue, 17 Jan 2023 13:58:58 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 kx5-20020a170907774500b007c14ae38a80sm13562208ejc.122.2023.01.17.13.58.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Jan 2023 13:58:58 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 6241190119F; Tue, 17 Jan 2023 22:58:57 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@corigine.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>
In-Reply-To: <Y8cTKOmCBbMEZK8D@sleipner.dyn.berto.se>
References: <cover.1673710866.git.lorenzo@kernel.org>
 <b606e729c9baf36a28be246bf0bfa4d21cc097fb.1673710867.git.lorenzo@kernel.org>
 <Y8cTKOmCBbMEZK8D@sleipner.dyn.berto.se>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 17 Jan 2023 22:58:57 +0100
Message-ID: <87y1q0bz6m.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1673992745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RlLwpbTS64gdj4QLkmidsQok82CXsFRe4resHnRTGBY=;
 b=cxTHTOD9B2avAqyQMTtFnWHZcGRPRB2SJccdbYANh4kY28j/RuK7lwkzr1fcggNAPtXdAD
 kpV7fVkTOwPh6ebYkbEBYhqQkfleGvfh7ouCGAIrMI9gnzqZ6f6SQwgYgsMvCAjwaO9bxw
 13vq/mlHZEmTw97ANbWJh1XgYNf4tt0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=cxTHTOD9
Subject: Re: [Intel-wired-lan] [RFC v2 bpf-next 2/7] drivers: net: turn on
 XDP features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TmlrbGFzIFPDtmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1bmRAY29yaWdpbmUuY29tPiB3cml0ZXM6
Cgo+IEhpIExvcmVuem8gYW5kIE1hcmVrLAo+Cj4gVGhhbmtzIGZvciB5b3VyIHdvcmsuCj4KPiBP
biAyMDIzLTAxLTE0IDE2OjU0OjMyICswMTAwLCBMb3JlbnpvIEJpYW5jb25pIHdyb3RlOgo+Cj4g
Wy4uLl0KPgo+PiAKPj4gVHVybiAnaHctb2ZmbG9hZCcgZmVhdHVyZSBmbGFnIG9uIGZvcjoKPj4g
IC0gbmV0cm9ub21lIChuZnApCj4+ICAtIG5ldGRldnNpbS4KPgo+IElzIHRoZXJlIGEgZGVmaW5p
dGlvbiBvZiB0aGUgJ2h3LW9mZmxvYWQnIHdyaXR0ZW4gZG93biBzb21ld2hlcmU/IEZyb20gCj4g
cmVhZGluZyB0aGlzIHNlcmllcyBJIHRha2UgaXQgaXMgdGhlIGFiaWxpdHkgdG8gb2ZmbG9hZCBh
IEJQRiBwcm9ncmFtPyAgCgpZZWFoLCBiYXNpY2FsbHkgdGhpcyBtZWFucyAiYWxsb3dzIGxvYWRp
bmcgYW5kIGF0dGFjaGluZyBwcm9ncmFtcyBpbgpYRFBfTU9ERV9IVyIsIEkgc3VwcG9zZSA6KQoK
PiBJdCB3b3VsZCBhbHNvIGJlIGludGVyZXN0aW5nIHRvIHJlYWQgZG9jdW1lbnRhdGlvbiBmb3Ig
dGhlIG90aGVyIGZsYWdzIAo+IGFkZGVkIGluIHRoaXMgc2VyaWVzLgoKWXVwLCB3ZSBzaG91bGQg
ZGVmaW5pdGVseSBkb2N1bWVudCB0aGVtIDopCgo+IFsuLi5dCj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L25ldHJvbm9tZS9uZnAvbmZwX25ldF9jb21tb24uYyAKPj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9uZXRyb25vbWUvbmZwL25mcF9uZXRfY29tbW9uLmMKPj4gaW5k
ZXggMThmYzk5NzFmMWM4Li41YThkZGVhZmY3NGQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L25ldHJvbm9tZS9uZnAvbmZwX25ldF9jb21tb24uYwo+PiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9uZXRyb25vbWUvbmZwL25mcF9uZXRfY29tbW9uLmMKPj4gQEAgLTI1Mjks
MTAgKzI1MjksMTQgQEAgc3RhdGljIHZvaWQgbmZwX25ldF9uZXRkZXZfaW5pdChzdHJ1Y3QgbmZw
X25ldCAqbm4pCj4+ICAJbmV0ZGV2LT5mZWF0dXJlcyAmPSB+TkVUSUZfRl9IV19WTEFOX1NUQUdf
Ulg7Cj4+ICAJbm4tPmRwLmN0cmwgJj0gfk5GUF9ORVRfQ0ZHX0NUUkxfUlhRSU5ROwo+PiAgCj4+
ICsJbm4tPmRwLm5ldGRldi0+eGRwX2ZlYXR1cmVzID0gTkVUREVWX1hEUF9BQ1RfQkFTSUMgfAo+
PiArCQkJCSAgICAgIE5FVERFVl9YRFBfQUNUX0hXX09GRkxPQUQ7Cj4KPiBJZiBteSBhc3N1bXB0
aW9uIGFib3V0IHRoZSAnaHctb2ZmbG9hZCcgZmxhZyBhYm92ZSBpcyBjb3JyZWN0IEkgdGhpbmsg
Cj4gTkVUREVWX1hEUF9BQ1RfSFdfT0ZGTE9BRCBzaG91bGQgYmUgY29uZGl0aW9uZWQgb24gdGhh
dCB0aGUgQlBGIGZpcm13YXJlIAo+IGZsYXZvciBpcyBpbiB1c2UuCj4KPiAgICAgbm4tPmRwLm5l
dGRldi0+eGRwX2ZlYXR1cmVzID0gTkVUREVWX1hEUF9BQ1RfQkFTSUM7Cj4KPiAgICAgaWYgKG5u
LT5hcHAtPnR5cGUtPmlkID09IE5GUF9BUFBfQlBGX05JQykKPiAgICAgICAgIG5uLT5kcC5uZXRk
ZXYtPnhkcF9mZWF0dXJlcyB8PSBORVRERVZfWERQX0FDVF9IV19PRkZMT0FEOwo+Cj4+ICsKPj4g
IAkvKiBGaW5hbGlzZSB0aGUgbmV0ZGV2IHNldHVwICovCj4+ICAJc3dpdGNoIChubi0+ZHAub3Bz
LT52ZXJzaW9uKSB7Cj4+ICAJY2FzZSBORlBfTkZEX1ZFUl9ORkQzOgo+PiAgCQluZXRkZXYtPm5l
dGRldl9vcHMgPSAmbmZwX25mZDNfbmV0ZGV2X29wczsKPj4gKwkJbm4tPmRwLm5ldGRldi0+eGRw
X2ZlYXR1cmVzIHw9IE5FVERFVl9YRFBfQUNUX1hTS19aRVJPQ09QWTsKPj4gIAkJYnJlYWs7Cj4+
ICAJY2FzZSBORlBfTkZEX1ZFUl9ORkRLOgo+PiAgCQluZXRkZXYtPm5ldGRldl9vcHMgPSAmbmZw
X25mZGtfbmV0ZGV2X29wczsKPgo+IFRoaXMgaXMgYWxzbyBhIHdyaW5rbGUgSSB3b3VsZCBsaWtl
IHRvIHVuZGVyc3RhbmQuIEN1cnJlbnRseSBORlAgc3VwcG9ydCAKPiB6ZXJvLWNvcHkgb24gTkZE
MywgYnV0IG5vdCBmb3Igb2ZmbG9hZGVkIEJQRiBwcm9ncmFtcy4gQnV0IHdpdGggdGhlIEJQRiAK
PiBmaXJtd2FyZSBmbGF2b3IgcnVubmluZyB0aGUgZGV2aWNlIGNhbiBzdGlsbCBzdXBwb3J0IHpl
cm8tY29weSBmb3IgCj4gbm9uLW9mZmxvYWRlZCBwcm9ncmFtcy4KPgo+IElzIGl0IGEgcHJvYmxl
bSB0aGF0IHRoZSBkcml2ZXIgYWR2ZXJ0aXNlcyBzdXBwb3J0IGZvciBib3RoIAo+IGhhcmR3YXJl
LW9mZmxvYWQgX2FuZF8gemVyby1jb3B5IGF0IHRoZSBzYW1lIHRpbWUsIGV2ZW4gaWYgdGhleSBj
YW4ndCBiZSAKPiB1c2VkIHRvZ2V0aGVyIGJ1dCBzZXBhcmF0ZWx5PwoKSG1tLCBzbyB0aGUgaWRl
YSB3aXRoIHRoaXMgaXMgdG8gb25seSBleHBvc2UgZmVhdHVyZSBmbGFncyB0aGF0IGFyZQpzdXBw
b3J0ZWQgInJpZ2h0IG5vdyIgKHlvdSdsbCBub3RlIHRoYXQgc29tZSBvZiB0aGUgZHJpdmVycyB0
dXJuIHRoZQpSRURJUkVDVF9UQVJHRVQgZmxhZyBvbiBhbmQgb2ZmIGF0IHJ1bnRpbWUpLiBIYXZp
bmcgZmVhdHVyZXMgdGhhdCBhcmUKInN1cHBvcnRlZCBidXQgaW4gYSBkaWZmZXJlbnQgY29uZmln
dXJhdGlvbiIgaXMgb25lIG9mIHRoZSBwb2ludHMgb2YKdXNlciBjb25mdXNpb24gd2Ugd2FudCB0
byBjbGVhciB1cCB3aXRoIHRoZSBleHBsaWNpdCBmbGFncy4KClNvIEkgZ3Vlc3MgaXQgZGVwZW5k
cyBhIGxpdHRsZSBiaXQgd2hhdCB5b3UgbWVhbiBieSAiY2FuJ3QgYmUgdXNlZAp0b2dldGhlciI/
IEkgYmVsaWV2ZSBpdCdzIHBvc3NpYmxlIHRvIGxvYWQgdHdvIHByb2dyYW1zIGF0IHRoZSBzYW1l
CnRpbWUsIG9uZSBpbiBIVyBtb2RlIGFuZCBvbmUgaW4gbmF0aXZlIChkcml2ZXIpIG1vZGUsIHJp
Z2h0PyBJbiB0aGlzCmNhc2UsIGNvdWxkIHRoZSBkcml2ZXIgbW9kZSBwcm9ncmFtIHVzZSBYU0sg
emVyb2NvcHkgd2hpbGUgdGhlIEhXIG1vZGUKcHJvZ3JhbSBpcyBhbHNvIGxvYWRlZD8KCi1Ub2tl
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
