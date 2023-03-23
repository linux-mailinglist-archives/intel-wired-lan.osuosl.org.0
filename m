Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0861C6C6F2F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Mar 2023 18:35:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92A4284143;
	Thu, 23 Mar 2023 17:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92A4284143
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679592931;
	bh=8RIsSoXdVAPwbvjvaocRfVE1Hlz05eHGr6b/JQJPjZo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1XT8YBu1AR2mPrbSXjk+vxlT+PBNT64yVDbmASNtQtldW1qFK7qUaB7aU+YyCyUr/
	 7fieesygiXayVsUUI8hxfJ60I7G6IRnPTCOxJ27GFVSe3GTGSdVrTMjN5WHt8B+jFH
	 PDcmF1Wga1p1jVU64MEu53ixjjjgRW9SyRSPgM1lxvm2xbZ92tt16qcyWVCWe4uhj8
	 bfYc+A/gFg1tTSz2rL/jgwexWfHv3izGecZLnaoYBkuspgUtNjGepGAkgQl/T48PCU
	 MfgKZ9ojodVqxZeEW1LKsmE49lFo89pTJn59OWTE2K/RXeTtsV7cGfQuZ/BO19cBKQ
	 rZ6xjsU2ebvOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OV16rTuNe9v7; Thu, 23 Mar 2023 17:35:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AB3D84148;
	Thu, 23 Mar 2023 17:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AB3D84148
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CA901BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 17:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63FDB60C34
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 17:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63FDB60C34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UYTtTuxgeDCB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Mar 2023 17:35:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31C0560BFF
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 31C0560BFF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 17:35:24 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id i5so43209196eda.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 10:35:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679592922;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HRKLfvrETKKRHqppJOUGcPm5Thl8LCTv37ptHgjATCw=;
 b=kNg0QFTFC2JXezDANn6Iq1mo4/vm/kd5Pxzff8PTf6wquypn4MDWU57wRrdzCHTDSM
 zsZfqyfAmz9LEq4hViG+Ibl6XHuIeuY9Xwyc6pm3mXYI36+uLD4uYvaqGudWQT+1NJBL
 yPmblu8tKbG+PjJfPRBMLBvVCTIWifZcMbT154XT4hjmnA0/BGrGT8ej0uHILWH/N0xa
 zcekxcpPO+7a0SxkOKdsV18ktsk5j13b8RwpHmKiUM8JUv/4++mJ4aYu9mxvHByDtaHr
 iKeN8Ilv9xC8yijBNDqLVr8DEgeMutnilE+7cqjC+dAiuL9u3Ag9RxzE1mHI3WK+X/um
 +nUw==
X-Gm-Message-State: AO0yUKXo7JtaNQ9XYNlvEx0OEKldm/I5rrd8N/jO8A5PUSMlT30hSAVJ
 YvsZFBmcZ/Kg5fAYYslLapQNanSxhnne7CZmzQ8=
X-Google-Smtp-Source: AK7set8K/L1zB6jSQTc0sdzB8WzanW0af/plqKt56NPau/aklI+gV0w6LkAVFuVHJimGN7Llb88lbPiQ/xMJHXUBXwk=
X-Received: by 2002:a05:6402:278e:b0:501:dfd8:67c5 with SMTP id
 b14-20020a056402278e00b00501dfd867c5mr5060794ede.3.1679592922058; Thu, 23 Mar
 2023 10:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
 <167940643669.2718137.4624187727245854475.stgit@firesoul>
 <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
 <080640fc-5835-26f1-2b20-ff079bd59182@redhat.com>
 <CAADnVQKsxzLTZ2XoLbmKKLAeaSyvf3P+w8V143iZ4cEWWTEUfw@mail.gmail.com>
 <CAKH8qBuHaaqnV-_mb1Roao9ZDrEHm+1Cj77hPZSRgwxoqphvxQ@mail.gmail.com>
 <CAADnVQ+6FeQ97DZLco3OtbtXQvGUAY4nr5tM++6NEDr+u8m7GQ@mail.gmail.com>
 <CAKH8qBvzVASpUu3M=6ohDqJgJjoR33jQ-J44ESD9SdkvFoGAZg@mail.gmail.com>
 <CAADnVQLC7ma7SWPOcjXhsZ2N0OyVtBr7TzCoT-_Dn+zQ2DEyWg@mail.gmail.com>
 <CAKH8qBuqxxVM9fSB43cAvvTnaHkA-JNRy=gufCqYf5GNbRA-8g@mail.gmail.com>
 <d7ac4f80-b65c-5201-086e-3b2645cbe7fe@redhat.com>
In-Reply-To: <d7ac4f80-b65c-5201-086e-3b2645cbe7fe@redhat.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Thu, 23 Mar 2023 10:35:10 -0700
Message-ID: <CAADnVQ+Jc6G78gJOA758bkCt4sgiwaxgC7S0cr9J=XBPfMDUSg@mail.gmail.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679592922;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HRKLfvrETKKRHqppJOUGcPm5Thl8LCTv37ptHgjATCw=;
 b=bN4uLl311Hp3OsFquz9kbJJ2LR6wVRZ2mSI3cteP/v7Ho1RrSjDIlDwTZAbo84mQoW
 vABMOKbkRo1wz09xiTi/Oen1Gqu0eA7EKsa05lNttOCmEW+DYreVihhBFg6ml2VU+DTl
 CH/UdFwbbrilHeNExKw3YA91uAzwE3qXmfNvNm4uaOiyVjTsyD3tM8XB+CRrF7sqjZrh
 sYGOkv6eI3sxtZepNNfDG4CIp+juQa0LAP7oKDKv4Nn/PpUF3RnuKzD7Php0pJyo5vVm
 pZEleWMkkIxD6RTt/t+/seQ6eiRd1eM19+WcaORH5MvpzM4OpKdUUd1kVfYvSkx/Q4TY
 WVNQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=bN4uLl31
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
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Stanislav Fomichev <sdf@google.com>, "Song,
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

T24gVGh1LCBNYXIgMjMsIDIwMjMgYXQgMTo1MeKAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIK
PGpicm91ZXJAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPgo+IE9uIDIyLzAzLzIwMjMgMjAuMzMsIFN0
YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPiA+IE9uIFdlZCwgTWFyIDIyLCAyMDIzIGF0IDEyOjMw
4oCvUE0gQWxleGVpIFN0YXJvdm9pdG92Cj4gPiA8YWxleGVpLnN0YXJvdm9pdG92QGdtYWlsLmNv
bT4gd3JvdGU6Cj4gPj4KPiA+PiBPbiBXZWQsIE1hciAyMiwgMjAyMyBhdCAxMjoyM+KAr1BNIFN0
YW5pc2xhdiBGb21pY2hldiA8c2RmQGdvb2dsZS5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+PiBPbiBX
ZWQsIE1hciAyMiwgMjAyMyBhdCAxMjoxN+KAr1BNIEFsZXhlaSBTdGFyb3ZvaXRvdgo+ID4+PiA8
YWxleGVpLnN0YXJvdm9pdG92QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4gT24gV2Vk
LCBNYXIgMjIsIDIwMjMgYXQgMTI6MDDigK9QTSBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29n
bGUuY29tPiB3cm90ZToKPiA+Pj4+Pgo+ID4+Pj4+IE9uIFdlZCwgTWFyIDIyLCAyMDIzIGF0IDk6
MDfigK9BTSBBbGV4ZWkgU3Rhcm92b2l0b3YKPiA+Pj4+PiA8YWxleGVpLnN0YXJvdm9pdG92QGdt
YWlsLmNvbT4gd3JvdGU6Cj4gPj4+Pj4+Cj4gPj4+Pj4+IE9uIFdlZCwgTWFyIDIyLCAyMDIzIGF0
IDk6MDXigK9BTSBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyCj4gPj4+Pj4+IDxqYnJvdWVyQHJlZGhh
dC5jb20+IHdyb3RlOgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gT24g
MjEvMDMvMjAyMyAxOS40NywgU3RhbmlzbGF2IEZvbWljaGV2IHdyb3RlOgo+ID4+Pj4+Pj4+IE9u
IFR1ZSwgTWFyIDIxLCAyMDIzIGF0IDY6NDfigK9BTSBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyCj4g
Pj4+Pj4+Pj4gPGJyb3VlckByZWRoYXQuY29tPiB3cm90ZToKPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+
Pj4gV2hlbiBkcml2ZXIgZGV2ZWxvcGVycyBhZGQgWERQLWhpbnRzIGtmdW5jcyBmb3IgUlggaGFz
aCBpdCBpcwo+ID4+Pj4+Pj4+PiBwcmFjdGljYWwgdG8gcHJpbnQgdGhlIHJldHVybiBjb2RlIGlu
IGJwZl9wcmludGsgdHJhY2UgcGlwZSBsb2cuCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IFByaW50
IGhhc2ggdmFsdWUgYXMgYSBoZXggdmFsdWUsIGJvdGggQUZfWERQIHVzZXJzcGFjZSBhbmQgYnBm
X3Byb2csCj4gPj4+Pj4+Pj4+IGFzIHRoaXMgbWFrZXMgaXQgZWFzaWVyIHRvIHNwb3QgcG9vciBx
dWFsaXR5IGhhc2hlcy4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogSmVz
cGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+Cj4gPj4+Pj4+Pj4+IC0tLQo+
ID4+Pj4+Pj4+PiAgICAuLi4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRh
ZGF0YS5jICB8ICAgIDkgKysrKysrLS0tCj4gPj4+Pj4+Pj4+ICAgIHRvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYyAgICAgIHwgICAgNSArKysrLQo+ID4+Pj4+Pj4+
PiAgICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4g
Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0
cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9i
cGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+Pj4+Pj4+Pj4gaW5kZXggNDBjMTdhZGJmNDgz
Li5jZTA3MDEwZTRkNDggMTAwNjQ0Cj4gPj4+Pj4+Pj4+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+ID4+Pj4+Pj4+PiArKysgYi90b29s
cy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+Pj4+Pj4+
Pj4gQEAgLTc3LDEwICs3NywxMyBAQCBpbnQgcngoc3RydWN0IHhkcF9tZCAqY3R4KQo+ID4+Pj4+
Pj4+PiAgICAgICAgICAgICAgICAgICBtZXRhLT5yeF90aW1lc3RhbXAgPSAwOyAvKiBVc2VkIGJ5
IEFGX1hEUCBhcyBub3QgYXZhaWwgc2lnbmFsICovCj4gPj4+Pj4+Pj4+ICAgICAgICAgICB9Cj4g
Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IC0gICAgICAgaWYgKCFicGZfeGRwX21ldGFkYXRhX3J4X2hh
c2goY3R4LCAmbWV0YS0+cnhfaGFzaCkpCj4gPj4+Pj4+Pj4+IC0gICAgICAgICAgICAgICBicGZf
cHJpbnRrKCJwb3B1bGF0ZWQgcnhfaGFzaCB3aXRoICV1IiwgbWV0YS0+cnhfaGFzaCk7Cj4gPj4+
Pj4+Pj4+IC0gICAgICAgZWxzZQo+ID4+Pj4+Pj4+PiArICAgICAgIHJldCA9IGJwZl94ZHBfbWV0
YWRhdGFfcnhfaGFzaChjdHgsICZtZXRhLT5yeF9oYXNoKTsKPiA+Pj4+Pj4+Pj4gKyAgICAgICBp
ZiAocmV0ID49IDApIHsKPiA+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIGJwZl9wcmludGsoInBv
cHVsYXRlZCByeF9oYXNoIHdpdGggMHglMDhYIiwgbWV0YS0+cnhfaGFzaCk7Cj4gPj4+Pj4+Pj4+
ICsgICAgICAgfSBlbHNlIHsKPiA+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIGJwZl9wcmludGso
InJ4X2hhc2ggbm90LWF2YWlsIGVycm5vOiVkIiwgcmV0KTsKPiA+Pj4+Pj4+Pj4gICAgICAgICAg
ICAgICAgICAgbWV0YS0+cnhfaGFzaCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vdCBhdmFp
bCBzaWduYWwgKi8KPiA+Pj4+Pj4+Pj4gKyAgICAgICB9Cj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+
ICAgICAgICAgICByZXR1cm4gYnBmX3JlZGlyZWN0X21hcCgmeHNrLCBjdHgtPnJ4X3F1ZXVlX2lu
ZGV4LCBYRFBfUEFTUyk7Cj4gPj4+Pj4+Pj4+ICAgIH0KPiA+Pj4+Pj4+Pj4gZGlmZiAtLWdpdCBh
L3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+ID4+Pj4+Pj4+PiBpbmRleCA0
MDBiZmUxOWFiZmUuLmYzZWMwN2NjZGM5NSAxMDA2NDQKPiA+Pj4+Pj4+Pj4gLS0tIGEvdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jCj4gPj4+Pj4+Pj4+ICsrKyBi
L3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+ID4+Pj4+Pj4+
PiBAQCAtMyw2ICszLDkgQEAKPiA+Pj4+Pj4+Pj4gICAgLyogUmVmZXJlbmNlIHByb2dyYW0gZm9y
IHZlcmlmeWluZyBYRFAgbWV0YWRhdGEgb24gcmVhbCBIVy4gRnVuY3Rpb25hbCB0ZXN0Cj4gPj4+
Pj4+Pj4+ICAgICAqIG9ubHksIGRvZXNuJ3QgdGVzdCB0aGUgcGVyZm9ybWFuY2UuCj4gPj4+Pj4+
Pj4+ICAgICAqCj4gPj4+Pj4+Pj4+ICsgKiBCUEYtcHJvZyBicGZfcHJpbnRrIGluZm8gb3V0b3V0
IGNhbiBiZSBhY2Nlc3MgdmlhCj4gPj4+Pj4+Pj4+ICsgKiAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFj
aW5nL3RyYWNlX3BpcGUKPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IHMvb3V0b3V0L291dHB1dC8KPiA+
Pj4+Pj4+Pgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEZpeGVkIGluIFYzCj4gPj4+Pj4+Pgo+ID4+Pj4+
Pj4+IEJ1dCBsZXQncyBtYXliZSBkcm9wIGl0PyBJZiB5b3Ugd2FudCB0byBtYWtlIGl0IG1vcmUg
dXNhYmxlLCBsZXQncwo+ID4+Pj4+Pj4+IGhhdmUgYSBzZXBhcmF0ZSBwYXRjaCB0byBlbmFibGUg
dHJhY2luZyBhbmQgcGVyaW9kaWNhbGx5IGR1bXAgaXQgdG8KPiA+Pj4+Pj4+PiB0aGUgY29uc29s
ZSBpbnN0ZWFkIChhcyBwcmV2aW91c2x5IGRpc2N1c3NlZCkuCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4g
Q2F0J2luZyAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlX3BpcGUgd29yayBmb3IgbWUg
cmVnYXJkbGVzcyBvZgo+ID4+Pj4+Pj4gc2V0dGluZyBpbgo+ID4+Pj4+Pj4gL3N5cy9rZXJuZWwv
ZGVidWcvdHJhY2luZy9ldmVudHMvYnBmX3RyYWNlL2JwZl90cmFjZV9wcmludGsvZW5hYmxlCj4g
Pj4+Pj4+Pgo+ID4+Pj4+Pj4gV2UgbGlrZWx5IG5lZWQgYSBmb2xsb3d1cCBwYXRjaCB0aGF0IGFk
ZHMgYSBCUEYgY29uZmlnIHN3aXRjaCB0aGF0IGNhbgo+ID4+Pj4+Pj4gZGlzYWJsZSBicGZfcHJp
bnRrIGNhbGxzLCBiZWNhdXNlIHRoaXMgYWRkcyBvdmVyaGVhZCBhbmQgdGh1cyBhZmZlY3RzCj4g
Pj4+Pj4+PiB0aGUgdGltZXN0YW1wcy4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gTm8uIFRoaXMgaXMgYnkg
ZGVzaWduLgo+ID4+Pj4+PiBEbyBub3QgdXNlIGJwZl9wcmludGsqIGluIHByb2R1Y3Rpb24uCj4K
PiBJIGZ1bGx5IGFncmVlIGRvIG5vdCB1c2UgYnBmX3ByaW50ayBpbiAqcHJvZHVjdGlvbiouCj4K
PiA+Pj4+Pgo+ID4+Pj4+IEJ1dCB0aGF0J3Mgbm90IGZvciB0aGUgcHJvZHVjdGlvbj8geGRwX2h3
X21ldGFkYXRhIGlzIGEgc21hbGwgdG9vbCB0bwo+ID4+Pj4+IHZlcmlmeSB0aGF0IHRoZSBtZXRh
ZGF0YSBiZWluZyBkdW1wZWQgaXMgY29ycmVjdCAoZHVyaW5nIHRoZQo+ID4+Pj4+IGRldmVsb3Bt
ZW50KS4KPiA+Pj4+PiBXZSBoYXZlIGEgcHJvcGVyIChsZXNzIHZlcmJvc2UpIHNlbGZ0ZXN0IGlu
Cj4gPj4+Pj4ge3Byb2dzLHByb2dfdGVzdHN9L3hkcF9tZXRhZGF0YS5jIChvdmVyIHZldGgpLgo+
ID4+Pj4+IFRoaXMgeGRwX2h3X21ldGFkYXRhIHdhcyBzdXBwb3NlZCB0byBiZSB1c2VkIGZvciBy
dW5uaW5nIGl0IGFnYWluc3QKPiA+Pj4+PiB0aGUgcmVhbCBoYXJkd2FyZSwgc28gaGF2aW5nIGFz
IG11Y2ggZGVidWdnaW5nIGF0IGhhbmQgYXMgcG9zc2libGUKPiA+Pj4+PiBzZWVtcyBoZWxwZnVs
PyAoYXQgbGVhc3QgaXQgd2FzIGhlbHBmdWwgdG8gbWUgd2hlbiBwbGF5aW5nIHdpdGggbWx4NCkK
Pgo+IE15IGV4cGVyaWVuY2Ugd2hlbiBkZXZlbG9waW5nIHRoZXNlIGtmdW5jcyBmb3IgaWdjIChy
ZWFsIGhhcmR3YXJlKSwgdGhpcwo+ICJ0b29sIiB4ZHBfaHdfbWV0YWRhdGEgd2FzIHN1cGVyIGhl
bHBmdWwsIGJlY2F1c2UgaXQgd2FzIHZlcnkgdmVyYm9zZQo+IChhbmQgSSB3YXMganVnZ2xpbmcg
cmVhZGluZyBjaGlwIHJlZ2lzdGVycyBCRS9MRSBhbmQgc2VlIHBhdGNoMSBhIGJ1Z2d5Cj4gaW1w
bGVtZW50YXRpb24gZm9yIFJYLWhhc2gpLgo+Cj4gQXMgSSB3cm90ZSBpbiBjb3Zlci1sZXR0ZXIs
IEkgcmVjb21tZW5kIG90aGVyIGRyaXZlciBkZXZlbG9wZXJzIHRvIGRvCj4gdGhlIHNhbWUsIGJl
Y2F1c2UgaXQgcmVhbGx5IGhlbHAgc3BlZWQgdXAgdGhlIGRldmVsb3BtZW50LiBJbiB0aGVvcnkK
PiB4ZHBfaHdfbWV0YWRhdGEgZG9lc24ndCBiZWxvbmcgaW4gc2VsZnRlc3RzIGRpcmVjdG9yeSBh
bmQgSU1ITyBpdCBzaG91bGQKPiBoYXZlIGJlZW4gcGxhY2VkIGluIHNhbXBsZXMvYnBmLywgYnV0
IGdpdmVuIHRoZSByZWxhdGlvbnNoaXAgd2l0aCByZWFsCj4gc2VsZnRlc3Qge3Byb2dzLHByb2df
dGVzdHN9L3hkcF9tZXRhZGF0YS5jIEkgdGhpbmsgaXQgbWFrZXMgc2Vuc2UgdG8KPiBrZWVwIGhl
cmUuCj4KPgo+ID4+Pj4KPiA+Pj4+IFRoZSBvbmx5IHVzZSBvZiBicGZfcHJpbnRrIGlzIGZvciBk
ZWJ1Z2dpbmcgb2YgYnBmIHByb2dzIHRoZW1zZWx2ZXMuCj4gPj4+PiBJdCBzaG91bGQgbm90IGJl
IHVzZWQgaW4gYW55IHRvb2wuCj4gPj4+Cj4gPj4+IEhtbSwgZ29vZCBwb2ludC4gSSBndWVzcyBp
dCBhbHNvIG1lYW5zIHdlIHdvbid0IGhhdmUgdG8gbWVzcyB3aXRoCj4gPj4+IGVuYWJsaW5nL2R1
bXBpbmcgZnRyYWNlIChhbmQgZG9uJ3QgbmVlZCB0aGlzIGNvbW1lbnQgYWJvdXQgY2F0J2luZyB0
aGUKPiA+Pj4gZmlsZSkuCj4gPj4+IEplc3BlciwgbWF5YmUgd2UgY2FuIGluc3RlYWQgcGFzcyB0
aGUgc3RhdHVzIG9mIHRob3NlCj4gPj4+IGJwZl94ZHBfbWV0YWRhdGFfeHh4IGtmdW5jcyB2aWEg
J3N0cnVjdCB4ZHBfbWV0YSc/IEFuZCBkdW1wIHRoaXMgaW5mbwo+ID4+PiBmcm9tIHRoZSB1c2Vy
c3BhY2UgaWYgbmVlZGVkLgo+ID4+Cj4gPj4gVGhlcmUgYXJlIHNvIG1hbnkgb3RoZXIgd2F5cyBm
b3IgYnBmIHByb2cgdG8gY29tbXVuaWNhdGUgd2l0aCB1c2VyIHNwYWNlLgo+ID4+IFVzZSByaW5n
YnVmLCBwZXJmX2V2ZW50IGJ1ZmZlciwgZ2xvYmFsIHZhcnMsIG1hcHMsIGV0Yy4KPiA+PiB0cmFj
ZV9waXBlIGlzIGRlYnVnIG9ubHkgYmVjYXVzZSBpdCdzIGdsb2JhbCBhbmQgd2lsbCBjb25mbGlj
dCB3aXRoCj4gPj4gYWxsIG90aGVyIGRlYnVnIHNlc3Npb25zLgo+Cj4gSSB3YW50IHRvIGhpZ2hs
aWdodCBhYm92ZSBwYXJhZ3JhcGg6IEl0IGlzIHZlcnkgdHJ1ZSBmb3IgcHJvZHVjdGlvbgo+IGNv
ZGUuIChBbnlvbmUgR29vZ2xpbmcgdGhpcyBwYXkgYXR0ZW50aW9uIHRvIGFib3ZlIHBhcmFncmFw
aCkuCj4KPiA+Cj4gPiDwn5GNIG1ha2VzIHNlbnNlLCB0eSEgaG9wZWZ1bGx5IHdlIHdvbid0IGhh
dmUgdG8gYWRkIGEgc2VwYXJhdGUgY2hhbm5lbAo+ID4gZm9yIHRob3NlIGFuZCBjYW4gKGFiKXVz
ZSB0aGUgbWV0YWRhdGEgYXJlYS4KPiA+Cj4KPiBQcm9wb3NlZCBzb2x1dGlvbjogSG93IGFib3V0
IGRlZmF1bHQgZGlzYWJsaW5nIHRoZSBicGZfcHJpbnRrJ3MgdmlhIGEKPiBtYWNybyBkZWZpbmUs
IGFuZCB0aGVuIGRyaXZlciBkZXZlbG9wZXIgY2FuIG1hbnVhbGx5IHJlZW5hYmxlIHRoZW0KPiBl
YXNpbHkgdmlhIGEgc2luZ2xlIGRlZmluZSwgdG8gZW5hYmxlIGEgZGVidWdnaW5nIG1vZGUuCj4K
PiBJIHdhcyBvbmx5IHdhdGNoaW5nIC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2VfcGlw
ZSB3aGVuIEkgd2FzCj4gZGVidWdnaW5nIGEgZHJpdmVyIGlzc3VlLiAgVGh1cywgYW4gZXh0cmEg
c3RlcCBvZiBtb2RpZnlpbmcgYSBzaW5nbGUKPiBkZWZpbmUgaW4gQlBGIHNlZW1zIGVhc2llciwg
dGhhbiBpbnN0cnVtZW50aW5nIG15IGRyaXZlciB3aXRoIHByaW50ay4KCkl0J3MgY2VydGFpbmx5
IGZpbmUgdG8gaGF2ZSBjb21tZW50ZWQgb3V0IGJwZl9wcmludGsgaW4gc2VsZnRlc3RzCmFuZCBz
YW1wbGUgY29kZS4KQnV0IHRoZSBwYXRjaCBkb2VzOgorICAgICAgIGlmIChyZXQgPj0gMCkgewor
ICAgICAgICAgICAgICAgYnBmX3ByaW50aygicG9wdWxhdGVkIHJ4X2hhc2ggd2l0aCAweCUwOFgi
LCBtZXRhLT5yeF9oYXNoKTsKKyAgICAgICB9IGVsc2UgeworICAgICAgICAgICAgICAgYnBmX3By
aW50aygicnhfaGFzaCBub3QtYXZhaWwgZXJybm86JWQiLCByZXQpOwogICAgICAgICAgICAgICAg
bWV0YS0+cnhfaGFzaCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vdCBhdmFpbCBzaWduYWwg
Ki8KKyAgICAgICB9CgpJdCBmZWVscyB0aGF0IHByaW50ayBpcyB0aGUgb25seSB0aGluZyB0aGF0
IHByb3ZpZGVzIHRoZSBzaWduYWwgdG8gdGhlIHVzZXIuCkRvaW5nIHMvcmV0ID49IDAvdHJ1ZS8g
d29uJ3QgbWFrZSBhbnkgZGlmZmVyZW5jZSB0byBzZWxmdGVzdCBhbmQKdG8gdGhlIGNvbnN1bWVy
IGFuZCB0aGF0J3MgbXkgbWFpbiBjb25jZXJuIHdpdGggc3VjaCBzZWxmdGVzdC9zYW1wbGVzLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
