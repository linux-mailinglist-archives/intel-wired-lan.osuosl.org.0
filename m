Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AA26C5473
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 20:00:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A51F41596;
	Wed, 22 Mar 2023 19:00:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A51F41596
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679511647;
	bh=4iLJfbUMAangbfIIW3C6ccDqRYIl6aA4US+BBUmjRIE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zy954t22C1Mv/qR7e03Yk08ss/cPwnxEyUV4d9eIShmwT/LqmQo75gXIJNKzBV693
	 MaIxcrSsA4CLBPGhUcf/8PrbzOaD1UVcovGlL1vlofJmDop9Es4Hl13AXfQF6yVRXR
	 c175YCjVQ9ufKx/JEQI+HupYm4PRGlXRyyqnsF0KagfYvQmknbDwtUMLXnTxuGZ67I
	 WB3Lnp7dZIhuPbu26pWSAgXfKc7f2Otk0MA+ArjjzYXKpt8mqL8MFDMx4qwuR/mErQ
	 Wqht+eipi9l1VUQZxi4lVjYrxVbVx5389oGJEMqIcRTlRkcxvUg9nMQlDcDH4WMsO4
	 6W7XiQgwTo87A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0eAcga3aBvw7; Wed, 22 Mar 2023 19:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7D08409A8;
	Wed, 22 Mar 2023 19:00:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7D08409A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A2F21BF35C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32E3880E63
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32E3880E63
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 48LJlXvkKsIT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 19:00:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B15580E4A
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B15580E4A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:00:40 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 om3-20020a17090b3a8300b0023efab0e3bfso24374987pjb.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 12:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679511640;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TPw82u/EjYlcJdkmo1criCAcJTkt8OjlZmqtDmpev+Y=;
 b=IE9lanS7BV+c5O2c60bRYqKNMHL+hnrGlLhBMoa+1FCOdsjbz3uWscUwSDW2zEKDw5
 O7zQYfu3HfTZK5sLR1BjiVrsGct2VCU7gvXUWlbRXtEqw1ThY3DGnijqK/w9HVaHYDwM
 xIrcQHLRCQctC3+AgJJ66c94ZjLXxWi6/HwyOcAJ7Yv33aOR48+GU1HwUfYPuDjnkdyZ
 oqLgCjHEmhePHp/DFpuR0KTLMaUtu2UaDwOxVSWV7pGXC6aGeDjZdcam/ntGwkcf6mKu
 njiFI7lR8xPiG+oAqjlm7sPIsSEp+Xjy8I6r004JqesnH/M73Z8ArHAoAuP35TSYQSju
 Gigg==
X-Gm-Message-State: AO0yUKXVeNavX/Y8U9ZtsoGjhpNROxM5rdlTR7YTWjzXnbmi8YM3bwXA
 z51a0SG3y3cn+hCTM0XBe8hrupEoG6YV3uMEQk3JfQ==
X-Google-Smtp-Source: AK7set+hMDqiJnRnl+PIVoRNKWPVSBo6QIL0bDWogooZje/Gc+I/wzyla2g7mCUY9FBrk2Dbxr75BPu01CHVYNjlXZs=
X-Received: by 2002:a17:90a:f28d:b0:23d:424d:400f with SMTP id
 fs13-20020a17090af28d00b0023d424d400fmr1429526pjb.9.1679511639636; Wed, 22
 Mar 2023 12:00:39 -0700 (PDT)
MIME-Version: 1.0
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
 <167940643669.2718137.4624187727245854475.stgit@firesoul>
 <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
 <080640fc-5835-26f1-2b20-ff079bd59182@redhat.com>
 <CAADnVQKsxzLTZ2XoLbmKKLAeaSyvf3P+w8V143iZ4cEWWTEUfw@mail.gmail.com>
In-Reply-To: <CAADnVQKsxzLTZ2XoLbmKKLAeaSyvf3P+w8V143iZ4cEWWTEUfw@mail.gmail.com>
From: Stanislav Fomichev <sdf@google.com>
Date: Wed, 22 Mar 2023 12:00:28 -0700
Message-ID: <CAKH8qBuHaaqnV-_mb1Roao9ZDrEHm+1Cj77hPZSRgwxoqphvxQ@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1679511640;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TPw82u/EjYlcJdkmo1criCAcJTkt8OjlZmqtDmpev+Y=;
 b=LXpsDxg24mECGDgep6nvpz2DEltVZE0ISwM+WcIPJ1q5Rt+7eJiqvPkEvWORKM+hWO
 H7M+g/sPLdKmHcczC65vIQgiqlJaFcO9Ns5RD+YVhU2NC3D2MjGrbaHhA24Skc/MlPbo
 s18xo6tkWmD5vHFzUHp9rlB42XKRsUKJb4W1RruD3v9UeUOw2PcMamLlp0AKaY446uO0
 mJ3xqDD2aiE5AvpQU8DznF15fBXA+LKX2wthnnFbSkOJOlcb11MWEMxfLN1bf/4EO3D/
 G6EZoNpGMk9jbBlP3DXZ8ifsZQeTgHOdUTwXO9GArz1LJBxJOMNq0S2eflA/nby03cY/
 tRow==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=LXpsDxg2
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 3/6] selftests/bpf:
 xdp_hw_metadata RX hash return code info
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
Cc: xdp-hints@xdp-project.net, Martin KaFai Lau <martin.lau@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Network Development <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>, "Ong,
 Boon Leong" <boon.leong.ong@intel.com>, anthony.l.nguyen@intel.com,
 bpf <bpf@vger.kernel.org>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgOTowN+KAr0FNIEFsZXhlaSBTdGFyb3ZvaXRvdgo8YWxl
eGVpLnN0YXJvdm9pdG92QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1hciAyMiwgMjAy
MyBhdCA5OjA14oCvQU0gSmVzcGVyIERhbmdhYXJkIEJyb3Vlcgo+IDxqYnJvdWVyQHJlZGhhdC5j
b20+IHdyb3RlOgo+ID4KPiA+Cj4gPgo+ID4gT24gMjEvMDMvMjAyMyAxOS40NywgU3RhbmlzbGF2
IEZvbWljaGV2IHdyb3RlOgo+ID4gPiBPbiBUdWUsIE1hciAyMSwgMjAyMyBhdCA2OjQ34oCvQU0g
SmVzcGVyIERhbmdhYXJkIEJyb3Vlcgo+ID4gPiA8YnJvdWVyQHJlZGhhdC5jb20+IHdyb3RlOgo+
ID4gPj4KPiA+ID4+IFdoZW4gZHJpdmVyIGRldmVsb3BlcnMgYWRkIFhEUC1oaW50cyBrZnVuY3Mg
Zm9yIFJYIGhhc2ggaXQgaXMKPiA+ID4+IHByYWN0aWNhbCB0byBwcmludCB0aGUgcmV0dXJuIGNv
ZGUgaW4gYnBmX3ByaW50ayB0cmFjZSBwaXBlIGxvZy4KPiA+ID4+Cj4gPiA+PiBQcmludCBoYXNo
IHZhbHVlIGFzIGEgaGV4IHZhbHVlLCBib3RoIEFGX1hEUCB1c2Vyc3BhY2UgYW5kIGJwZl9wcm9n
LAo+ID4gPj4gYXMgdGhpcyBtYWtlcyBpdCBlYXNpZXIgdG8gc3BvdCBwb29yIHF1YWxpdHkgaGFz
aGVzLgo+ID4gPj4KPiA+ID4+IFNpZ25lZC1vZmYtYnk6IEplc3BlciBEYW5nYWFyZCBCcm91ZXIg
PGJyb3VlckByZWRoYXQuY29tPgo+ID4gPj4gLS0tCj4gPiA+PiAgIC4uLi90ZXN0aW5nL3NlbGZ0
ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMgIHwgICAgOSArKysrKystLS0KPiA+ID4+
ICAgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jICAgICAgfCAg
ICA1ICsrKystCj4gPiA+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPiA+ID4+Cj4gPiA+PiBkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxm
dGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gPiA+PiBpbmRleCA0MGMxN2FkYmY0ODMu
LmNlMDcwMTBlNGQ0OCAxMDA2NDQKPiA+ID4+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3Rz
L2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+ID4gPj4gKysrIGIvdG9vbHMvdGVzdGluZy9z
ZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gPiA+PiBAQCAtNzcsMTAgKzc3
LDEzIEBAIGludCByeChzdHJ1Y3QgeGRwX21kICpjdHgpCj4gPiA+PiAgICAgICAgICAgICAgICAg
IG1ldGEtPnJ4X3RpbWVzdGFtcCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vdCBhdmFpbCBz
aWduYWwgKi8KPiA+ID4+ICAgICAgICAgIH0KPiA+ID4+Cj4gPiA+PiAtICAgICAgIGlmICghYnBm
X3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJm1ldGEtPnJ4X2hhc2gpKQo+ID4gPj4gLSAgICAg
ICAgICAgICAgIGJwZl9wcmludGsoInBvcHVsYXRlZCByeF9oYXNoIHdpdGggJXUiLCBtZXRhLT5y
eF9oYXNoKTsKPiA+ID4+IC0gICAgICAgZWxzZQo+ID4gPj4gKyAgICAgICByZXQgPSBicGZfeGRw
X21ldGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCk7Cj4gPiA+PiArICAgICAgIGlm
IChyZXQgPj0gMCkgewo+ID4gPj4gKyAgICAgICAgICAgICAgIGJwZl9wcmludGsoInBvcHVsYXRl
ZCByeF9oYXNoIHdpdGggMHglMDhYIiwgbWV0YS0+cnhfaGFzaCk7Cj4gPiA+PiArICAgICAgIH0g
ZWxzZSB7Cj4gPiA+PiArICAgICAgICAgICAgICAgYnBmX3ByaW50aygicnhfaGFzaCBub3QtYXZh
aWwgZXJybm86JWQiLCByZXQpOwo+ID4gPj4gICAgICAgICAgICAgICAgICBtZXRhLT5yeF9oYXNo
ID0gMDsgLyogVXNlZCBieSBBRl9YRFAgYXMgbm90IGF2YWlsIHNpZ25hbCAqLwo+ID4gPj4gKyAg
ICAgICB9Cj4gPiA+Pgo+ID4gPj4gICAgICAgICAgcmV0dXJuIGJwZl9yZWRpcmVjdF9tYXAoJnhz
aywgY3R4LT5yeF9xdWV1ZV9pbmRleCwgWERQX1BBU1MpOwo+ID4gPj4gICB9Cj4gPiA+PiBkaWZm
IC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jIGIv
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jCj4gPiA+PiBpbmRl
eCA0MDBiZmUxOWFiZmUuLmYzZWMwN2NjZGM5NSAxMDA2NDQKPiA+ID4+IC0tLSBhL3Rvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+ID4gPj4gKysrIGIvdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jCj4gPiA+PiBAQCAtMyw2ICsz
LDkgQEAKPiA+ID4+ICAgLyogUmVmZXJlbmNlIHByb2dyYW0gZm9yIHZlcmlmeWluZyBYRFAgbWV0
YWRhdGEgb24gcmVhbCBIVy4gRnVuY3Rpb25hbCB0ZXN0Cj4gPiA+PiAgICAqIG9ubHksIGRvZXNu
J3QgdGVzdCB0aGUgcGVyZm9ybWFuY2UuCj4gPiA+PiAgICAqCj4gPiA+PiArICogQlBGLXByb2cg
YnBmX3ByaW50ayBpbmZvIG91dG91dCBjYW4gYmUgYWNjZXNzIHZpYQo+ID4gPj4gKyAqIC9zeXMv
a2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2VfcGlwZQo+ID4gPgo+ID4gPiBzL291dG91dC9vdXRw
dXQvCj4gPiA+Cj4gPgo+ID4gRml4ZWQgaW4gVjMKPiA+Cj4gPiA+IEJ1dCBsZXQncyBtYXliZSBk
cm9wIGl0PyBJZiB5b3Ugd2FudCB0byBtYWtlIGl0IG1vcmUgdXNhYmxlLCBsZXQncwo+ID4gPiBo
YXZlIGEgc2VwYXJhdGUgcGF0Y2ggdG8gZW5hYmxlIHRyYWNpbmcgYW5kIHBlcmlvZGljYWxseSBk
dW1wIGl0IHRvCj4gPiA+IHRoZSBjb25zb2xlIGluc3RlYWQgKGFzIHByZXZpb3VzbHkgZGlzY3Vz
c2VkKS4KPiA+Cj4gPiBDYXQnaW5nIC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2VfcGlw
ZSB3b3JrIGZvciBtZSByZWdhcmRsZXNzIG9mCj4gPiBzZXR0aW5nIGluCj4gPiAvc3lzL2tlcm5l
bC9kZWJ1Zy90cmFjaW5nL2V2ZW50cy9icGZfdHJhY2UvYnBmX3RyYWNlX3ByaW50ay9lbmFibGUK
PiA+Cj4gPiBXZSBsaWtlbHkgbmVlZCBhIGZvbGxvd3VwIHBhdGNoIHRoYXQgYWRkcyBhIEJQRiBj
b25maWcgc3dpdGNoIHRoYXQgY2FuCj4gPiBkaXNhYmxlIGJwZl9wcmludGsgY2FsbHMsIGJlY2F1
c2UgdGhpcyBhZGRzIG92ZXJoZWFkIGFuZCB0aHVzIGFmZmVjdHMKPiA+IHRoZSB0aW1lc3RhbXBz
Lgo+Cj4gTm8uIFRoaXMgaXMgYnkgZGVzaWduLgo+IERvIG5vdCB1c2UgYnBmX3ByaW50ayogaW4g
cHJvZHVjdGlvbi4KCkJ1dCB0aGF0J3Mgbm90IGZvciB0aGUgcHJvZHVjdGlvbj8geGRwX2h3X21l
dGFkYXRhIGlzIGEgc21hbGwgdG9vbCB0bwp2ZXJpZnkgdGhhdCB0aGUgbWV0YWRhdGEgYmVpbmcg
ZHVtcGVkIGlzIGNvcnJlY3QgKGR1cmluZyB0aGUKZGV2ZWxvcG1lbnQpLgpXZSBoYXZlIGEgcHJv
cGVyIChsZXNzIHZlcmJvc2UpIHNlbGZ0ZXN0IGluCntwcm9ncyxwcm9nX3Rlc3RzfS94ZHBfbWV0
YWRhdGEuYyAob3ZlciB2ZXRoKS4KVGhpcyB4ZHBfaHdfbWV0YWRhdGEgd2FzIHN1cHBvc2VkIHRv
IGJlIHVzZWQgZm9yIHJ1bm5pbmcgaXQgYWdhaW5zdAp0aGUgcmVhbCBoYXJkd2FyZSwgc28gaGF2
aW5nIGFzIG11Y2ggZGVidWdnaW5nIGF0IGhhbmQgYXMgcG9zc2libGUKc2VlbXMgaGVscGZ1bD8g
KGF0IGxlYXN0IGl0IHdhcyBoZWxwZnVsIHRvIG1lIHdoZW4gcGxheWluZyB3aXRoIG1seDQpCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
