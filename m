Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED96670BC8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 23:42:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B495881DF6;
	Tue, 17 Jan 2023 22:42:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B495881DF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673995341;
	bh=J5JEYc9JO5pBsvwpxKWZ7KBmRapEt42XXc+104JhKfA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HJVqjY99mcKSkeYdw+sTujQjgchijLSnKqO0N4oal/nOgUT8zJbe357mDFSBD3Aan
	 LmziieLafxH9fUnNyICBvoBD0hnqq7FmsPLkzkJdp5tyntGTDyz3fj44Ifp/NQGPl3
	 zwWqSfQnuJp3wQv7Ri1zIo2lYgABFYUw3eaOEKhDUu0D/O9VlsF7tbZ9mlYOf0xehE
	 LCM/Df9NN8PNB4oWerk55ej4KD7f8qz0c/G+1Dj+gj48vMHOAuUS8qoqJ6wVryPF5w
	 2i6UIeQr/eHU152qisp8OHcq+e5DNeBc7giefr3MylhzIS40PMZVFqtyZH3fZ+v06O
	 OaUaqqETJy3Ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fh3fD8ZXW9CI; Tue, 17 Jan 2023 22:42:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8785081DE5;
	Tue, 17 Jan 2023 22:42:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8785081DE5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E2A81BF47D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:42:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6816D60692
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:42:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6816D60692
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UeGSYUk4egkP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 22:42:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D1766002E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D1766002E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:42:14 +0000 (UTC)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-369-CL_2eAcHNLGnBNzJA2U32g-1; Tue, 17 Jan 2023 17:42:10 -0500
X-MC-Unique: CL_2eAcHNLGnBNzJA2U32g-1
Received: by mail-ej1-f69.google.com with SMTP id
 hs18-20020a1709073e9200b007c0f9ac75f9so22388376ejc.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 14:42:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Ckm+P7EhQq3tMMMLdp8ksaD5nCqQSrg8dglbOqFaLx0=;
 b=KHCMyCa1gpmlJf6OZkL0CN1MpbAihhL+0LY0pHH0k37dDpwrLYO/zN5kGP0yelGKRI
 AzFF7lq5m6mtJBJ0LJwwoAfzhL0eUn/UDNJhwAn+6O0O+yiadFp/RhONUbFoVAL2BCTu
 +HDerIE8dbIscWgMrTOjfoBUmk+b8J7Xf4R7NMIG7apPSU8PKg9QDIRvvTReSCSW3X4S
 T75Zj+510e7p7PVxD0bQbDKcu108WQ8tgC+i4IXyYyVEel1VEIsAHiA1X1+sgtR2Z2wv
 i+YTXzVthu98940y+oUC9WBdAbR4Ss+rtkoQnuLR357dyMz8ps3+oC6L31txxme0/7Qr
 0UEw==
X-Gm-Message-State: AFqh2kolScaArNUeUdGteLKfWfcBhVhH4xAes9CXpShhPUHllbsUG9Jl
 tKkHWxo1ejiI97Iu8wwH1RotQVJTi4qeo7/tmciH2Aq4VxdQB9KcyqDPwwkekcHZV3n7FKsXLCx
 4VxdPtNTh1vGZ1l2KBQetWAR62+GYpA==
X-Received: by 2002:a05:6402:524f:b0:49e:498c:5e16 with SMTP id
 t15-20020a056402524f00b0049e498c5e16mr233107edd.30.1673995328862; 
 Tue, 17 Jan 2023 14:42:08 -0800 (PST)
X-Google-Smtp-Source: AMrXdXuDr1iHNfiv83GpdqhTGHecaw7zHQhGvun8ZtQyqVRaaW66IzMTkNbHSjSCSrZOSdtI91JbXg==
X-Received: by 2002:a05:6402:524f:b0:49e:498c:5e16 with SMTP id
 t15-20020a056402524f00b0049e498c5e16mr233070edd.30.1673995328510; 
 Tue, 17 Jan 2023 14:42:08 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 ku12-20020a170907788c00b0084d4564c65fsm11480669ejc.42.2023.01.17.14.42.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Jan 2023 14:42:07 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 385EA9011B1; Tue, 17 Jan 2023 23:42:07 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@corigine.com>
In-Reply-To: <Y8chM32w/ZWsOOT+@oden.dyn.berto.se>
References: <cover.1673710866.git.lorenzo@kernel.org>
 <b606e729c9baf36a28be246bf0bfa4d21cc097fb.1673710867.git.lorenzo@kernel.org>
 <Y8cTKOmCBbMEZK8D@sleipner.dyn.berto.se> <87y1q0bz6m.fsf@toke.dk>
 <Y8cboWSmvoOKxav2@oden.dyn.berto.se> <87sfg8byek.fsf@toke.dk>
 <Y8chM32w/ZWsOOT+@oden.dyn.berto.se>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 17 Jan 2023 23:42:07 +0100
Message-ID: <87pmbcbx6o.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1673995333;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EW6oxIduidj1x+0P8cWlRMD1Qq4aGTeQJAX2jlujGuU=;
 b=QNTnOD/QcwZzLvuuPG+jmRzcjlgbSQl8qTQzl982+u+W/Nvggzcc3uNKaTl+++1PVuv0QW
 +8pbBOVrHSVmhkj8qCwGNkT5RAEeC+kix8hAKe/8T4LWObX4VxpsBfw0XuItUzUWFbcM+O
 CtXO7N8DqmHD899drODSVXTsMxCwPec=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=QNTnOD/Q
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
 kuba@kernel.org, pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TmlrbGFzIFPDtmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1bmRAY29yaWdpbmUuY29tPiB3cml0ZXM6
Cgo+IE9uIDIwMjMtMDEtMTcgMjM6MTU6NDcgKzAxMDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNl
biB3cm90ZToKPj4gTmlrbGFzIFPDtmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1bmRAY29yaWdpbmUu
Y29tPiB3cml0ZXM6Cj4+IAo+PiA+IEhpIFRva2UsCj4+ID4KPj4gPiBPbiAyMDIzLTAxLTE3IDIy
OjU4OjU3ICswMTAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+ID4+IE5pa2xh
cyBTw7ZkZXJsdW5kIDxuaWtsYXMuc29kZXJsdW5kQGNvcmlnaW5lLmNvbT4gd3JpdGVzOgo+PiA+
PiAKPj4gPj4gPiBIaSBMb3JlbnpvIGFuZCBNYXJlaywKPj4gPj4gPgo+PiA+PiA+IFRoYW5rcyBm
b3IgeW91ciB3b3JrLgo+PiA+PiA+Cj4+ID4+ID4gT24gMjAyMy0wMS0xNCAxNjo1NDozMiArMDEw
MCwgTG9yZW56byBCaWFuY29uaSB3cm90ZToKPj4gPj4gPgo+PiA+PiA+IFsuLi5dCj4+ID4+ID4K
Pj4gPj4gPj4gCj4+ID4+ID4+IFR1cm4gJ2h3LW9mZmxvYWQnIGZlYXR1cmUgZmxhZyBvbiBmb3I6
Cj4+ID4+ID4+ICAtIG5ldHJvbm9tZSAobmZwKQo+PiA+PiA+PiAgLSBuZXRkZXZzaW0uCj4+ID4+
ID4KPj4gPj4gPiBJcyB0aGVyZSBhIGRlZmluaXRpb24gb2YgdGhlICdody1vZmZsb2FkJyB3cml0
dGVuIGRvd24gc29tZXdoZXJlPyBGcm9tIAo+PiA+PiA+IHJlYWRpbmcgdGhpcyBzZXJpZXMgSSB0
YWtlIGl0IGlzIHRoZSBhYmlsaXR5IHRvIG9mZmxvYWQgYSBCUEYgcHJvZ3JhbT8gIAo+PiA+PiAK
Pj4gPj4gWWVhaCwgYmFzaWNhbGx5IHRoaXMgbWVhbnMgImFsbG93cyBsb2FkaW5nIGFuZCBhdHRh
Y2hpbmcgcHJvZ3JhbXMgaW4KPj4gPj4gWERQX01PREVfSFciLCBJIHN1cHBvc2UgOikKPj4gPj4g
Cj4+ID4+ID4gSXQgd291bGQgYWxzbyBiZSBpbnRlcmVzdGluZyB0byByZWFkIGRvY3VtZW50YXRp
b24gZm9yIHRoZSBvdGhlciBmbGFncyAKPj4gPj4gPiBhZGRlZCBpbiB0aGlzIHNlcmllcy4KPj4g
Pj4gCj4+ID4+IFl1cCwgd2Ugc2hvdWxkIGRlZmluaXRlbHkgZG9jdW1lbnQgdGhlbSA6KQo+PiA+
PiAKPj4gPj4gPiBbLi4uXQo+PiA+PiA+Cj4+ID4+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9uZXRyb25vbWUvbmZwL25mcF9uZXRfY29tbW9uLmMgCj4+ID4+ID4+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvbmV0cm9ub21lL25mcC9uZnBfbmV0X2NvbW1vbi5jCj4+ID4+ID4+
IGluZGV4IDE4ZmM5OTcxZjFjOC4uNWE4ZGRlYWZmNzRkIDEwMDY0NAo+PiA+PiA+PiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9uZXRyb25vbWUvbmZwL25mcF9uZXRfY29tbW9uLmMKPj4gPj4g
Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbmV0cm9ub21lL25mcC9uZnBfbmV0X2NvbW1v
bi5jCj4+ID4+ID4+IEBAIC0yNTI5LDEwICsyNTI5LDE0IEBAIHN0YXRpYyB2b2lkIG5mcF9uZXRf
bmV0ZGV2X2luaXQoc3RydWN0IG5mcF9uZXQgKm5uKQo+PiA+PiA+PiAgCW5ldGRldi0+ZmVhdHVy
ZXMgJj0gfk5FVElGX0ZfSFdfVkxBTl9TVEFHX1JYOwo+PiA+PiA+PiAgCW5uLT5kcC5jdHJsICY9
IH5ORlBfTkVUX0NGR19DVFJMX1JYUUlOUTsKPj4gPj4gPj4gIAo+PiA+PiA+PiArCW5uLT5kcC5u
ZXRkZXYtPnhkcF9mZWF0dXJlcyA9IE5FVERFVl9YRFBfQUNUX0JBU0lDIHwKPj4gPj4gPj4gKwkJ
CQkgICAgICBORVRERVZfWERQX0FDVF9IV19PRkZMT0FEOwo+PiA+PiA+Cj4+ID4+ID4gSWYgbXkg
YXNzdW1wdGlvbiBhYm91dCB0aGUgJ2h3LW9mZmxvYWQnIGZsYWcgYWJvdmUgaXMgY29ycmVjdCBJ
IHRoaW5rIAo+PiA+PiA+IE5FVERFVl9YRFBfQUNUX0hXX09GRkxPQUQgc2hvdWxkIGJlIGNvbmRp
dGlvbmVkIG9uIHRoYXQgdGhlIEJQRiBmaXJtd2FyZSAKPj4gPj4gPiBmbGF2b3IgaXMgaW4gdXNl
Lgo+PiA+PiA+Cj4+ID4+ID4gICAgIG5uLT5kcC5uZXRkZXYtPnhkcF9mZWF0dXJlcyA9IE5FVERF
Vl9YRFBfQUNUX0JBU0lDOwo+PiA+PiA+Cj4+ID4+ID4gICAgIGlmIChubi0+YXBwLT50eXBlLT5p
ZCA9PSBORlBfQVBQX0JQRl9OSUMpCj4+ID4+ID4gICAgICAgICBubi0+ZHAubmV0ZGV2LT54ZHBf
ZmVhdHVyZXMgfD0gTkVUREVWX1hEUF9BQ1RfSFdfT0ZGTE9BRDsKPj4gPj4gPgo+PiA+PiA+PiAr
Cj4+ID4+ID4+ICAJLyogRmluYWxpc2UgdGhlIG5ldGRldiBzZXR1cCAqLwo+PiA+PiA+PiAgCXN3
aXRjaCAobm4tPmRwLm9wcy0+dmVyc2lvbikgewo+PiA+PiA+PiAgCWNhc2UgTkZQX05GRF9WRVJf
TkZEMzoKPj4gPj4gPj4gIAkJbmV0ZGV2LT5uZXRkZXZfb3BzID0gJm5mcF9uZmQzX25ldGRldl9v
cHM7Cj4+ID4+ID4+ICsJCW5uLT5kcC5uZXRkZXYtPnhkcF9mZWF0dXJlcyB8PSBORVRERVZfWERQ
X0FDVF9YU0tfWkVST0NPUFk7Cj4+ID4+ID4+ICAJCWJyZWFrOwo+PiA+PiA+PiAgCWNhc2UgTkZQ
X05GRF9WRVJfTkZESzoKPj4gPj4gPj4gIAkJbmV0ZGV2LT5uZXRkZXZfb3BzID0gJm5mcF9uZmRr
X25ldGRldl9vcHM7Cj4+ID4+ID4KPj4gPj4gPiBUaGlzIGlzIGFsc28gYSB3cmlua2xlIEkgd291
bGQgbGlrZSB0byB1bmRlcnN0YW5kLiBDdXJyZW50bHkgTkZQIHN1cHBvcnQgCj4+ID4+ID4gemVy
by1jb3B5IG9uIE5GRDMsIGJ1dCBub3QgZm9yIG9mZmxvYWRlZCBCUEYgcHJvZ3JhbXMuIEJ1dCB3
aXRoIHRoZSBCUEYgCj4+ID4+ID4gZmlybXdhcmUgZmxhdm9yIHJ1bm5pbmcgdGhlIGRldmljZSBj
YW4gc3RpbGwgc3VwcG9ydCB6ZXJvLWNvcHkgZm9yIAo+PiA+PiA+IG5vbi1vZmZsb2FkZWQgcHJv
Z3JhbXMuCj4+ID4+ID4KPj4gPj4gPiBJcyBpdCBhIHByb2JsZW0gdGhhdCB0aGUgZHJpdmVyIGFk
dmVydGlzZXMgc3VwcG9ydCBmb3IgYm90aCAKPj4gPj4gPiBoYXJkd2FyZS1vZmZsb2FkIF9hbmRf
IHplcm8tY29weSBhdCB0aGUgc2FtZSB0aW1lLCBldmVuIGlmIHRoZXkgY2FuJ3QgYmUgCj4+ID4+
ID4gdXNlZCB0b2dldGhlciBidXQgc2VwYXJhdGVseT8KPj4gPj4gCj4+ID4+IEhtbSwgc28gdGhl
IGlkZWEgd2l0aCB0aGlzIGlzIHRvIG9ubHkgZXhwb3NlIGZlYXR1cmUgZmxhZ3MgdGhhdCBhcmUK
Pj4gPj4gc3VwcG9ydGVkICJyaWdodCBub3ciICh5b3UnbGwgbm90ZSB0aGF0IHNvbWUgb2YgdGhl
IGRyaXZlcnMgdHVybiB0aGUKPj4gPj4gUkVESVJFQ1RfVEFSR0VUIGZsYWcgb24gYW5kIG9mZiBh
dCBydW50aW1lKS4gSGF2aW5nIGZlYXR1cmVzIHRoYXQgYXJlCj4+ID4+ICJzdXBwb3J0ZWQgYnV0
IGluIGEgZGlmZmVyZW50IGNvbmZpZ3VyYXRpb24iIGlzIG9uZSBvZiB0aGUgcG9pbnRzIG9mCj4+
ID4+IHVzZXIgY29uZnVzaW9uIHdlIHdhbnQgdG8gY2xlYXIgdXAgd2l0aCB0aGUgZXhwbGljaXQg
ZmxhZ3MuCj4+ID4+IAo+PiA+PiBTbyBJIGd1ZXNzIGl0IGRlcGVuZHMgYSBsaXR0bGUgYml0IHdo
YXQgeW91IG1lYW4gYnkgImNhbid0IGJlIHVzZWQKPj4gPj4gdG9nZXRoZXIiPyBJIGJlbGlldmUg
aXQncyBwb3NzaWJsZSB0byBsb2FkIHR3byBwcm9ncmFtcyBhdCB0aGUgc2FtZQo+PiA+PiB0aW1l
LCBvbmUgaW4gSFcgbW9kZSBhbmQgb25lIGluIG5hdGl2ZSAoZHJpdmVyKSBtb2RlLCByaWdodD8g
SW4gdGhpcwo+PiA+PiBjYXNlLCBjb3VsZCB0aGUgZHJpdmVyIG1vZGUgcHJvZ3JhbSB1c2UgWFNL
IHplcm9jb3B5IHdoaWxlIHRoZSBIVyBtb2RlCj4+ID4+IHByb2dyYW0gaXMgYWxzbyBsb2FkZWQ/
Cj4+ID4KPj4gPiBFeGFjdGx5LCB0aGlzIGlzIG15IGNvbmNlcm4uIFR3byBwcm9ncmFtcyBjYW4g
YmUgbG9hZGVkIGF0IHRoZSBzYW1lIAo+PiA+IHRpbWUsIG9uZSBpbiBIVyBtb2RlIGFuZCBvbmUg
aW4gbmF0aXZlIG1vZGUuIFRoZSBwcm9ncmFtIGluIG5hdGl2ZSBtb2RlIAo+PiA+IGNhbiB1c2Ug
emVyby1jb3B5IGF0IHRoZSBzYW1lIHRpbWUgYXMgYW5vdGhlciBwcm9ncmFtIHJ1bnMgaW4gSFcg
bW9kZS4KPj4gPgo+PiA+IEJ1dCB0aGUgcHJvZ3JhbSBydW5uaW5nIGluIEhXIG1vZGUgY2FuIG5l
dmVyIHVzZSB6ZXJvLWNvcHkuCj4+IAo+PiBIbW0sIGJ1dCB6ZXJvLWNvcHkgaXMgYW4gQUZfWERQ
IGZlYXR1cmUsIGFuZCBBRkFJSyBvZmZsb2FkZWQgcHJvZ3JhbXMKPj4gY2FuJ3QgdXNlIEFGX1hE
UCBhdCBhbGw/IFNvIHRoZSB6ZXJvLWNvcHkgImZlYXR1cmUiIGlzIGF2YWlsYWJsZSBvbiB0aGUK
Pj4gaGFyZHdhcmUsIGl0J3MganVzdCBpbnRyaW5zaWMgdG8gdGhhdCBmZWF0dXJlIHRoYXQgaXQg
ZG9lc24ndCB3b3JrIG9uCj4+IG9mZmxvYWRlZCBwcm9ncmFtcz8KPgo+IFRoYXQgaXMgdHJ1ZSwg
c28gdGhpcyBpcyBpbmRlZWQgbm90IGFuIGlzc3VlIHRoZW4uIFRoYW5rcyBmb3IgdGhlIAo+IGNs
YXJpZmljYXRpb24uCgpDb29sIC0geW91J3JlIHdlbGNvbWUgOikKCi1Ub2tlCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
