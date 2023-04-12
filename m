Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A7F6DF244
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 12:55:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0463061510;
	Wed, 12 Apr 2023 10:55:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0463061510
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681296900;
	bh=LAZHFrHhMfhrsWGM8v1DePiXc1A0kzK9WfhVtoKoUdo=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GIeXUb2WVnbdBg0WobCIVd77Eu5SEJD7/8s21XER62r5qeM4oUswTecl4I4Q2gsLj
	 K0ywNufDT3Zfwf9KINzKt3lqnGlfzG1sxRZaSDtDLQ5CrDyfh/kdty+4nj/Si8/aEr
	 zoLBhHJYYsyu1/MgeZBK4FkhLsXbwvgLTsgGmMErPSMNQR73dvdKg0k0VTJytJKFQX
	 rnSog9sO3mzkc88IFPHh4J17HZWG0+nM0Ri+vXwNQ6asEah9SqU42gIcK7E7uptNms
	 lRBZ47piQfShZuHZ2eySWpE4cG2lPYCB/is53xCO1ro5Yk76DvumjwrID++CDqO33u
	 Be3OAKgNkitAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kj3l7IZ-ei83; Wed, 12 Apr 2023 10:54:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE4B36150D;
	Wed, 12 Apr 2023 10:54:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE4B36150D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E5E71BF423
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 10:54:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68BED61510
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 10:54:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68BED61510
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WO0eIJJPjegM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 10:54:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF5696150C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF5696150C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 10:54:52 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-596-qDEUC1tZPMur8VNTjWHdBw-1; Wed, 12 Apr 2023 06:54:48 -0400
X-MC-Unique: qDEUC1tZPMur8VNTjWHdBw-1
Received: by mail-ed1-f72.google.com with SMTP id
 m20-20020a50d7d4000000b00501dfd867a4so6325323edj.20
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 03:54:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681296887; x=1683888887;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9alFis21lp3H1PeQGiwFBeiCWEcrStDft1SvCWrv9fk=;
 b=pG0e2GFJoIL4+dgBKPXRcHC8Os4LqJHMQzxJIishVnOr1ECSDYbjFOQ2Q6NWJQBN8b
 w1NsYI7QO6Dtq60L6tlwFeWQ+WMCCFk068lmmu2wW53K9+bLZus+I6q87dMZPilUQ4+x
 AmFo6KUxMCyD8XPZD4nuwR+dLTsBW+G9v8zuH5UvB24LrQQF51cu5D8lIwPuxFa27e5v
 GwH607C/X0PyKCF3S8m1A3SVlwFVQahrHKa0LZ4Ocmfqq1FnGlLzx1QtERVhKlHKJcQ4
 MqLMC7ExrUpg/J1TM3aZMRJdTYtXoJdibJrx4yE7ldS90qYvzYXCEv0d75unIhCq1vG0
 z2XA==
X-Gm-Message-State: AAQBX9evn9l2lo99zVjyLvVmajK2DXxxsbbeloP8GHSzha3wwIT1OuqX
 ExWmSTyVdKhvMtvsvTwFo/YTQ7uriLH6zMUX2AKihkhXdnUkSrySgB4+/TgWU/JGvFC3aq5BFh9
 ljOfCjAw+5iRF+JI1J4Tyiuy7o5vVqA==
X-Received: by 2002:a17:906:6d16:b0:948:c047:467d with SMTP id
 m22-20020a1709066d1600b00948c047467dmr5713218ejr.23.1681296887190; 
 Wed, 12 Apr 2023 03:54:47 -0700 (PDT)
X-Google-Smtp-Source: AKy350bMaqa5uHrrM7B5IePYN1OMBi6DPhLMgrCl1TykvEZOYX14RUF+y2TD0HStIwcvwi/F7K0XRg==
X-Received: by 2002:a17:906:6d16:b0:948:c047:467d with SMTP id
 m22-20020a1709066d1600b00948c047467dmr5713173ejr.23.1681296886799; 
 Wed, 12 Apr 2023 03:54:46 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 g19-20020a1709065d1300b00928e0ea53e5sm7083290ejt.84.2023.04.12.03.54.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Apr 2023 03:54:46 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <402a3c73-d26d-3619-d69a-c90eb3f0e9ee@redhat.com>
Date: Wed, 12 Apr 2023 12:54:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
 <168098188134.96582.7870014252568928901.stgit@firesoul>
 <CAKH8qBu2ieR+puSkF30-df3YikOvDZErxc2qjjVXPPAvCecihA@mail.gmail.com>
In-Reply-To: <CAKH8qBu2ieR+puSkF30-df3YikOvDZErxc2qjjVXPPAvCecihA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681296891;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9alFis21lp3H1PeQGiwFBeiCWEcrStDft1SvCWrv9fk=;
 b=dweGJxaHofGydaq0a2DStHpXtk7jPlPdZvnXFAtPYCt958Tk18MQKa/c07rsSRaWgkq6mc
 sfjqHzvlk5wehPIwmD+ao0dY6dk6/zVvyLjDmzBCw9+WrkB0nPn7nHZGOsAtBVPH5uCkQh
 xZcrvY85j1ulUwwPjA6kJJhK3GIbPjI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=dweGJxaH
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
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

Ck9uIDEyLzA0LzIwMjMgMDAuNDIsIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPiBPbiBTYXQs
IEFwciA4LCAyMDIzIGF0IDEyOjI04oCvUE0gSmVzcGVyIERhbmdhYXJkIEJyb3Vlcgo+IDxicm91
ZXJAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IFRoZSB0b29sIHhkcF9od19tZXRhZGF0YSBjYW4g
YmUgdXNlZCBieSBkcml2ZXIgZGV2ZWxvcGVycwo+PiBpbXBsZW1lbnRpbmcgWERQLWhpbnRzIGtm
dW5jcy4gIFRoZSB0b29sIHRyYW5zZmVycyB0aGUKPj4gWERQLWhpbnRzIHZpYSBtZXRhZGF0YSBp
bmZvcm1hdGlvbiB0byBhbiBBRl9YRFAgdXNlcnNwYWNlCj4+IHByb2Nlc3MuIFdoZW4gZXZlcnl0
aGluZyB3b3JrcyB0aGUgYnBmX3ByaW50ayBjYWxscyBhcmUKPj4gdW5uY2Vzc3NhcnkuICBUaHVz
LCBkaXNhYmxlIGJwZl9wcmludGsgYnkgZGVmYXVsdCwgYnV0Cj4+IG1ha2UgaXQgZWFzeSB0byBy
ZWVuYWJsZSBmb3IgZHJpdmVyIGRldmVsb3BlcnMgdG8gdXNlCj4+IHdoZW4gZGVidWdnaW5nIHRo
ZWlyIGRyaXZlciBpbXBsZW1lbnRhdGlvbi4KPj4KPj4gVGhpcyBhbHNvIGNvbnZlcnRzIGJwZl9w
cmludGsgImZvcndhcmRpbmcgVURQOjkwOTEgdG8gQUZfWERQIgo+PiBpbnRvIGEgY29kZSBjb21t
ZW50LiAgVGhlIGJwZl9wcmludGsncyB0aGF0IGFyZSBpbXBvcnRhbnQKPj4gdG8gdGhlIGRyaXZl
ciBkZXZlbG9wZXJzIGlzIHdoZW4gYnBmX3hkcF9hZGp1c3RfbWV0YSBmYWlscy4KPj4gVGhlIGxp
a2VseSBtaXN0YWtlIGZyb20gZHJpdmVyIGRldmVsb3BlcnMgaXMgZXhwZWN0ZWQgdG8KPj4gYmUg
dGhhdCB0aGV5IGRpZG4ndCBpbXBsZW1lbnQgWERQIG1ldGFkYXRhIGFkanVzdCBzdXBwb3J0Lgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0
LmNvbT4KPj4gLS0tCj4+ICAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdf
bWV0YWRhdGEuYyAgfCAgIDE2ICsrKysrKysrKysrKysrLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwg
MTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL3Rvb2xz
L3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+PiBpbmRleCA0YzU1
YjRkNzlkM2QuLjk4MGViNjBkOGU1YiAxMDA2NDQKPj4gLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxm
dGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+PiBAQCAtNSw2ICs1LDE5IEBA
Cj4+ICAgI2luY2x1ZGUgPGJwZi9icGZfaGVscGVycy5oPgo+PiAgICNpbmNsdWRlIDxicGYvYnBm
X2VuZGlhbi5oPgo+Pgo+PiArLyogUGVyIGRlZmF1bHQgYmVsb3cgYnBmX3ByaW50aygpIGNhbGxz
IGFyZSBkaXNhYmxlZC4gIENhbiBiZQo+PiArICogcmVlbmFibGVkIG1hbnVhbGx5IGZvciBjb252
ZW5pZW5jZSBieSBYRFAtaGludHMgZHJpdmVyIGRldmVsb3BlciwKPj4gKyAqIHdoZW4gdHJvdWJs
c2hvb3RpbmcgdGhlIGRyaXZlcnMga2Z1bmNzIGltcGxlbWVudGF0aW9uIGRldGFpbHMuCj4+ICsg
Kgo+PiArICogUmVtZW1iZXIgQlBGLXByb2cgYnBmX3ByaW50ayBpbmZvIG91dHB1dCBjYW4gYmUg
YWNjZXNzIHZpYToKPj4gKyAqICAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlX3BpcGUK
Pj4gKyAqLwo+PiArLy8jZGVmaW5lIERFQlVHICAgICAgICAxCj4+ICsjaWZuZGVmIERFQlVHCj4+
ICsjdW5kZWYgIGJwZl9wcmludGsKPj4gKyNkZWZpbmUgYnBmX3ByaW50ayhmbXQsIC4uLikgKHt9
KQo+PiArI2VuZGlmCj4gCj4gQXJlIHlvdSBwbGFubmluZyB0byBldmVudHVhbGx5IGRvIHNvbWV0
aGlrZSBzaW1pbGFyIHRvIHdoYXQgSSd2ZQo+IG1lbnRpb25lZCBpbiBbMF0/IElmIG5vdCwgc2hv
dWxkIEkgdHJ5IHRvIHNlbmQgYSBwYXRjaD8KClNlZSBuZXh0IHBhdGNoOgogIC0gW1BBVENIIGJw
ZiBWNyAyLzddIHNlbGZ0ZXN0cy9icGY6IEFkZCBjb3VudGVycyB0byB4ZHBfaHdfbWV0YWRhdGEK
CndoZXJlIEkgYWRkIHRoZXNlIGNvdW50ZXJzIDotKQoKPiAKPiAwOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9uZXRkZXYvQ0FLSDhxQnVwUllFZytTUE1UTWI0aDUzMkdFU0c3UDFRZGFGSi0renJi
QVJWTjl4cmRBQG1haWwuZ21haWwuY29tLwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
