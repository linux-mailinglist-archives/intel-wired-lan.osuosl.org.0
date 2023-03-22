Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2346C54D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 20:23:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6ED10417A6;
	Wed, 22 Mar 2023 19:23:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6ED10417A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679512994;
	bh=bYnV3rMrYgqPeMDG3YqbPBR/dlJQBNrs3k3mdHPFIVg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NI3lXw7MxvFVa3s1p/SE0t4w5fbeAx5PJrpDDAzWohEtIykGOkGmJA02He3FoaX8O
	 AGPKZBBPE28IsFWSJOrm3ldbn5BEYkPbVvpOH2sbseToPPES69a6aUKw7/KqaQLBay
	 o5X/JRPHmg+KqGZK7FS9imIdSQ8A2KoUh3E+L7OAlFsYh6Rh7gKEdKvWChOAbgeXC4
	 h1ZiW+ghmTAT/rGbEo9tHrS3pydbwN5cdq3Gwow397+/qquIuBen2syi1iCl9fIZ54
	 jClJRsod3sie+jzFn85+c8Trtz+2i3yVp/aoevnKPKysdRq18WwkJORFArsATx579N
	 nRMNIEBrVxWTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6cJKnrYUqBkY; Wed, 22 Mar 2023 19:23:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33013400F6;
	Wed, 22 Mar 2023 19:23:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33013400F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA52B1BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AFEBB400F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:23:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFEBB400F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ne7xh2SOtrEO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 19:23:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB5D040017
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB5D040017
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:23:06 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id u38so6990573pfg.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 12:23:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679512986;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=A+XxDyG1Zb8n7rgGAcE315iKJNtu4d2B1g56wl3T6Ho=;
 b=BijbowalwMOljXGyXO427Z/fbdv/ezz2tPnW08svwIg7yoVbHpPEik7yYU+0SLDDLA
 H5qlQC9BnOqS/RGnME2/zn2V5ZBbdGxXMaNacydgcaRVedSuuKdHLjiwtZPxUrGdosT7
 e8vd5Gq9PVl677BwPjk3I2UkURkYqetbYZaXz34/9bjht6QCNnqlxLOBP7j2Q4NFMH9E
 O6yaGD03s2e2+rlLPYp1UFxYsTDuv+wKQJTgV/jKwp/TPDjEnXLtoqYk8Q4GtW1RhF3+
 Nojv4SzTuHxE/N+NgJTbLJcCEGhmwOBhqJOxumzs8yFgfqQBGrefKsN/c0p9yezyq8eo
 AVyA==
X-Gm-Message-State: AO0yUKWD0Ovem2dS8u00ZUSRPrU+l9oJLnKsy0MBK4Fg9AybF9ITO8nK
 vWk/okFONnOOIIOUkhd5n05Uua9wH0Iulvo3J13lRQ==
X-Google-Smtp-Source: AK7set/E0fspDnF0EE3Ps3NBksqM1EMUhCA699yeWlh4OzFhsdKBUpjGKFwa/C4OQJOCsmUTQydO4jo+cjRMESk/t8U=
X-Received: by 2002:a65:4801:0:b0:4fc:d6df:85a0 with SMTP id
 h1-20020a654801000000b004fcd6df85a0mr1066021pgs.1.1679512986079; Wed, 22 Mar
 2023 12:23:06 -0700 (PDT)
MIME-Version: 1.0
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
 <167940643669.2718137.4624187727245854475.stgit@firesoul>
 <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
 <080640fc-5835-26f1-2b20-ff079bd59182@redhat.com>
 <CAADnVQKsxzLTZ2XoLbmKKLAeaSyvf3P+w8V143iZ4cEWWTEUfw@mail.gmail.com>
 <CAKH8qBuHaaqnV-_mb1Roao9ZDrEHm+1Cj77hPZSRgwxoqphvxQ@mail.gmail.com>
 <CAADnVQ+6FeQ97DZLco3OtbtXQvGUAY4nr5tM++6NEDr+u8m7GQ@mail.gmail.com>
In-Reply-To: <CAADnVQ+6FeQ97DZLco3OtbtXQvGUAY4nr5tM++6NEDr+u8m7GQ@mail.gmail.com>
From: Stanislav Fomichev <sdf@google.com>
Date: Wed, 22 Mar 2023 12:22:54 -0700
Message-ID: <CAKH8qBvzVASpUu3M=6ohDqJgJjoR33jQ-J44ESD9SdkvFoGAZg@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1679512986;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=A+XxDyG1Zb8n7rgGAcE315iKJNtu4d2B1g56wl3T6Ho=;
 b=sh0xLsYm7+j03IqhsmQvsORXPF9KFKuYhTvDijN5C0oFn6Utb4v7tjDLquZu/LWJD9
 yeDhIY3vqdQiau/vcIJMVkYP/zUmmKi+J6iJYX+j5gR9C4MLqCTnYqlALq8u8Hx1hqcB
 pkQ9IxErHrpNI6E50R/NdhCp0tj0aBu8Sr+nTQCyHTGsPZ/M1qtZvh1NWWwVyyWys30R
 nAn2KxZMuVON1RKPPiu9oawz2o1aVCUJs9uPxYcKnCgLiwQ1Z209bAub1jgn15I0v5VI
 9ncILNpTqgU6ZQX+ZrbTKjASTBmBe73FxT5F1zOawnC+W6GJn14+dmMVRCSqNiEQgB2b
 6ivg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=sh0xLsYm
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

T24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTI6MTfigK9QTSBBbGV4ZWkgU3Rhcm92b2l0b3YKPGFs
ZXhlaS5zdGFyb3ZvaXRvdkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXIgMjIsIDIw
MjMgYXQgMTI6MDDigK9QTSBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29nbGUuY29tPiB3cm90
ZToKPiA+Cj4gPiBPbiBXZWQsIE1hciAyMiwgMjAyMyBhdCA5OjA34oCvQU0gQWxleGVpIFN0YXJv
dm9pdG92Cj4gPiA8YWxleGVpLnN0YXJvdm9pdG92QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4g
PiA+IE9uIFdlZCwgTWFyIDIyLCAyMDIzIGF0IDk6MDXigK9BTSBKZXNwZXIgRGFuZ2FhcmQgQnJv
dWVyCj4gPiA+IDxqYnJvdWVyQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4KPiA+
ID4gPgo+ID4gPiA+IE9uIDIxLzAzLzIwMjMgMTkuNDcsIFN0YW5pc2xhdiBGb21pY2hldiB3cm90
ZToKPiA+ID4gPiA+IE9uIFR1ZSwgTWFyIDIxLCAyMDIzIGF0IDY6NDfigK9BTSBKZXNwZXIgRGFu
Z2FhcmQgQnJvdWVyCj4gPiA+ID4gPiA8YnJvdWVyQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4gPiA+
ID4+Cj4gPiA+ID4gPj4gV2hlbiBkcml2ZXIgZGV2ZWxvcGVycyBhZGQgWERQLWhpbnRzIGtmdW5j
cyBmb3IgUlggaGFzaCBpdCBpcwo+ID4gPiA+ID4+IHByYWN0aWNhbCB0byBwcmludCB0aGUgcmV0
dXJuIGNvZGUgaW4gYnBmX3ByaW50ayB0cmFjZSBwaXBlIGxvZy4KPiA+ID4gPiA+Pgo+ID4gPiA+
ID4+IFByaW50IGhhc2ggdmFsdWUgYXMgYSBoZXggdmFsdWUsIGJvdGggQUZfWERQIHVzZXJzcGFj
ZSBhbmQgYnBmX3Byb2csCj4gPiA+ID4gPj4gYXMgdGhpcyBtYWtlcyBpdCBlYXNpZXIgdG8gc3Bv
dCBwb29yIHF1YWxpdHkgaGFzaGVzLgo+ID4gPiA+ID4+Cj4gPiA+ID4gPj4gU2lnbmVkLW9mZi1i
eTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+Cj4gPiA+ID4gPj4g
LS0tCj4gPiA+ID4gPj4gICAuLi4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19t
ZXRhZGF0YS5jICB8ICAgIDkgKysrKysrLS0tCj4gPiA+ID4gPj4gICB0b29scy90ZXN0aW5nL3Nl
bGZ0ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhLmMgICAgICB8ICAgIDUgKysrKy0KPiA+ID4gPiA+
PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+
ID4gPiA+Pgo+ID4gPiA+ID4+IGRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9i
cGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYv
cHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+ID4gPiA+PiBpbmRleCA0MGMxN2FkYmY0ODMuLmNl
MDcwMTBlNGQ0OCAxMDA2NDQKPiA+ID4gPiA+PiAtLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0
cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+ID4gPiA+PiArKysgYi90b29scy90ZXN0
aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+ID4gPiA+PiBAQCAt
NzcsMTAgKzc3LDEzIEBAIGludCByeChzdHJ1Y3QgeGRwX21kICpjdHgpCj4gPiA+ID4gPj4gICAg
ICAgICAgICAgICAgICBtZXRhLT5yeF90aW1lc3RhbXAgPSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBh
cyBub3QgYXZhaWwgc2lnbmFsICovCj4gPiA+ID4gPj4gICAgICAgICAgfQo+ID4gPiA+ID4+Cj4g
PiA+ID4gPj4gLSAgICAgICBpZiAoIWJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZtZXRh
LT5yeF9oYXNoKSkKPiA+ID4gPiA+PiAtICAgICAgICAgICAgICAgYnBmX3ByaW50aygicG9wdWxh
dGVkIHJ4X2hhc2ggd2l0aCAldSIsIG1ldGEtPnJ4X2hhc2gpOwo+ID4gPiA+ID4+IC0gICAgICAg
ZWxzZQo+ID4gPiA+ID4+ICsgICAgICAgcmV0ID0gYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0
eCwgJm1ldGEtPnJ4X2hhc2gpOwo+ID4gPiA+ID4+ICsgICAgICAgaWYgKHJldCA+PSAwKSB7Cj4g
PiA+ID4gPj4gKyAgICAgICAgICAgICAgIGJwZl9wcmludGsoInBvcHVsYXRlZCByeF9oYXNoIHdp
dGggMHglMDhYIiwgbWV0YS0+cnhfaGFzaCk7Cj4gPiA+ID4gPj4gKyAgICAgICB9IGVsc2Ugewo+
ID4gPiA+ID4+ICsgICAgICAgICAgICAgICBicGZfcHJpbnRrKCJyeF9oYXNoIG5vdC1hdmFpbCBl
cnJubzolZCIsIHJldCk7Cj4gPiA+ID4gPj4gICAgICAgICAgICAgICAgICBtZXRhLT5yeF9oYXNo
ID0gMDsgLyogVXNlZCBieSBBRl9YRFAgYXMgbm90IGF2YWlsIHNpZ25hbCAqLwo+ID4gPiA+ID4+
ICsgICAgICAgfQo+ID4gPiA+ID4+Cj4gPiA+ID4gPj4gICAgICAgICAgcmV0dXJuIGJwZl9yZWRp
cmVjdF9tYXAoJnhzaywgY3R4LT5yeF9xdWV1ZV9pbmRleCwgWERQX1BBU1MpOwo+ID4gPiA+ID4+
ICAgfQo+ID4gPiA+ID4+IGRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYv
eGRwX2h3X21ldGFkYXRhLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21l
dGFkYXRhLmMKPiA+ID4gPiA+PiBpbmRleCA0MDBiZmUxOWFiZmUuLmYzZWMwN2NjZGM5NSAxMDA2
NDQKPiA+ID4gPiA+PiAtLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21l
dGFkYXRhLmMKPiA+ID4gPiA+PiArKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRw
X2h3X21ldGFkYXRhLmMKPiA+ID4gPiA+PiBAQCAtMyw2ICszLDkgQEAKPiA+ID4gPiA+PiAgIC8q
IFJlZmVyZW5jZSBwcm9ncmFtIGZvciB2ZXJpZnlpbmcgWERQIG1ldGFkYXRhIG9uIHJlYWwgSFcu
IEZ1bmN0aW9uYWwgdGVzdAo+ID4gPiA+ID4+ICAgICogb25seSwgZG9lc24ndCB0ZXN0IHRoZSBw
ZXJmb3JtYW5jZS4KPiA+ID4gPiA+PiAgICAqCj4gPiA+ID4gPj4gKyAqIEJQRi1wcm9nIGJwZl9w
cmludGsgaW5mbyBvdXRvdXQgY2FuIGJlIGFjY2VzcyB2aWEKPiA+ID4gPiA+PiArICogL3N5cy9r
ZXJuZWwvZGVidWcvdHJhY2luZy90cmFjZV9waXBlCj4gPiA+ID4gPgo+ID4gPiA+ID4gcy9vdXRv
dXQvb3V0cHV0Lwo+ID4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+IEZpeGVkIGluIFYzCj4gPiA+ID4K
PiA+ID4gPiA+IEJ1dCBsZXQncyBtYXliZSBkcm9wIGl0PyBJZiB5b3Ugd2FudCB0byBtYWtlIGl0
IG1vcmUgdXNhYmxlLCBsZXQncwo+ID4gPiA+ID4gaGF2ZSBhIHNlcGFyYXRlIHBhdGNoIHRvIGVu
YWJsZSB0cmFjaW5nIGFuZCBwZXJpb2RpY2FsbHkgZHVtcCBpdCB0bwo+ID4gPiA+ID4gdGhlIGNv
bnNvbGUgaW5zdGVhZCAoYXMgcHJldmlvdXNseSBkaXNjdXNzZWQpLgo+ID4gPiA+Cj4gPiA+ID4g
Q2F0J2luZyAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlX3BpcGUgd29yayBmb3IgbWUg
cmVnYXJkbGVzcyBvZgo+ID4gPiA+IHNldHRpbmcgaW4KPiA+ID4gPiAvc3lzL2tlcm5lbC9kZWJ1
Zy90cmFjaW5nL2V2ZW50cy9icGZfdHJhY2UvYnBmX3RyYWNlX3ByaW50ay9lbmFibGUKPiA+ID4g
Pgo+ID4gPiA+IFdlIGxpa2VseSBuZWVkIGEgZm9sbG93dXAgcGF0Y2ggdGhhdCBhZGRzIGEgQlBG
IGNvbmZpZyBzd2l0Y2ggdGhhdCBjYW4KPiA+ID4gPiBkaXNhYmxlIGJwZl9wcmludGsgY2FsbHMs
IGJlY2F1c2UgdGhpcyBhZGRzIG92ZXJoZWFkIGFuZCB0aHVzIGFmZmVjdHMKPiA+ID4gPiB0aGUg
dGltZXN0YW1wcy4KPiA+ID4KPiA+ID4gTm8uIFRoaXMgaXMgYnkgZGVzaWduLgo+ID4gPiBEbyBu
b3QgdXNlIGJwZl9wcmludGsqIGluIHByb2R1Y3Rpb24uCj4gPgo+ID4gQnV0IHRoYXQncyBub3Qg
Zm9yIHRoZSBwcm9kdWN0aW9uPyB4ZHBfaHdfbWV0YWRhdGEgaXMgYSBzbWFsbCB0b29sIHRvCj4g
PiB2ZXJpZnkgdGhhdCB0aGUgbWV0YWRhdGEgYmVpbmcgZHVtcGVkIGlzIGNvcnJlY3QgKGR1cmlu
ZyB0aGUKPiA+IGRldmVsb3BtZW50KS4KPiA+IFdlIGhhdmUgYSBwcm9wZXIgKGxlc3MgdmVyYm9z
ZSkgc2VsZnRlc3QgaW4KPiA+IHtwcm9ncyxwcm9nX3Rlc3RzfS94ZHBfbWV0YWRhdGEuYyAob3Zl
ciB2ZXRoKS4KPiA+IFRoaXMgeGRwX2h3X21ldGFkYXRhIHdhcyBzdXBwb3NlZCB0byBiZSB1c2Vk
IGZvciBydW5uaW5nIGl0IGFnYWluc3QKPiA+IHRoZSByZWFsIGhhcmR3YXJlLCBzbyBoYXZpbmcg
YXMgbXVjaCBkZWJ1Z2dpbmcgYXQgaGFuZCBhcyBwb3NzaWJsZQo+ID4gc2VlbXMgaGVscGZ1bD8g
KGF0IGxlYXN0IGl0IHdhcyBoZWxwZnVsIHRvIG1lIHdoZW4gcGxheWluZyB3aXRoIG1seDQpCj4K
PiBUaGUgb25seSB1c2Ugb2YgYnBmX3ByaW50ayBpcyBmb3IgZGVidWdnaW5nIG9mIGJwZiBwcm9n
cyB0aGVtc2VsdmVzLgo+IEl0IHNob3VsZCBub3QgYmUgdXNlZCBpbiBhbnkgdG9vbC4KCkhtbSwg
Z29vZCBwb2ludC4gSSBndWVzcyBpdCBhbHNvIG1lYW5zIHdlIHdvbid0IGhhdmUgdG8gbWVzcyB3
aXRoCmVuYWJsaW5nL2R1bXBpbmcgZnRyYWNlIChhbmQgZG9uJ3QgbmVlZCB0aGlzIGNvbW1lbnQg
YWJvdXQgY2F0J2luZyB0aGUKZmlsZSkuCkplc3BlciwgbWF5YmUgd2UgY2FuIGluc3RlYWQgcGFz
cyB0aGUgc3RhdHVzIG9mIHRob3NlCmJwZl94ZHBfbWV0YWRhdGFfeHh4IGtmdW5jcyB2aWEgJ3N0
cnVjdCB4ZHBfbWV0YSc/IEFuZCBkdW1wIHRoaXMgaW5mbwpmcm9tIHRoZSB1c2Vyc3BhY2UgaWYg
bmVlZGVkLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
