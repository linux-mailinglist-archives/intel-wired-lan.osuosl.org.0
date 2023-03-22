Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BBF6C5474
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 20:01:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 656E541C5B;
	Wed, 22 Mar 2023 19:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 656E541C5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679511658;
	bh=CK9ywlEb2X90/5nW11+U+MMttBDo/aYku0B1Hhk4hu4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HJyOFw/TpFe2unzUMvIOStsi4mHnwlaafh6wT28Nvqnps+FkcgQbbrrA1Wjvkt8Zb
	 ZBClas4QgmW5peV3HVniUiSiuKOcjY59HvHIvHljUYRrrMWzA4gyJli74TgQdUzqDa
	 lMBsgOmYM+mjlFRd6v8aulDjtcKyLbAxz94CHgK1GWapnzuASEjbhCZC/Zq8SCjOUY
	 HXrwe0xyOx1Onbtm6EcdQ6xlAXu0Dy9RAnMnjOKERGvl1/ouD+uggjHwFIFvL0HEyY
	 b0dZJ2sXjRoVC20GtWDFe3CMOfKOWUxJork25as4ghds2IYuKOnQ/Z373hNqEDuJx9
	 khufYCAUczrig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CulatnCUUFbi; Wed, 22 Mar 2023 19:00:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F9F941596;
	Wed, 22 Mar 2023 19:00:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F9F941596
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 355B81BF35C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0FC1C81303
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FC1C81303
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pmq5r9lDEVhm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 19:00:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 769E9812F0
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 769E9812F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:00:52 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id c4so11770304pfl.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 12:00:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679511652;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GjDTPkSaQqj31I/z+HvI789TpMhG2SxR9s75ueel5GI=;
 b=UvDHGXnYdkQlbnJ7ET6vbG+xfMi6n2IamgQQcDew+2OtkORtQ7H17N9lqtbh35ouSD
 XOkls/0pFGGbj350VZ3jxWQmfU8mO/3xSBuQnSBtwANrXKDCGcRITOo885QPf7lvPyf6
 al1gLGcWzSFERt8yrnYtbM21ROLMlg2djevxC7x6mMBUVzs8ychO6Ku4Kfyh/0o/Spj4
 mf8MuWJoJgFQvjsecdo8ueNQveX8vvNX5Pa6VJFBoOyWSAZEVxRMC0AozppnuLTcQlUf
 Xy8so1pHfRgufFGnDtNz+y9tV5WrquQSz6N3vRzcNYqU6H4/NjwulqI6kSjOAIRqDgCv
 37hQ==
X-Gm-Message-State: AO0yUKWcGL5N/kiaZScNgdoW26/mO9tAyWyviMGKIP1VZZ1WGlAsJFDx
 6K9xWTGGMNOaKK1zbFRN8CiTrwKAGEL2lb923h933g==
X-Google-Smtp-Source: AK7set+1HbWv73aDwWV4mLjxIHFWB4Iy/lNo7wzRMlUmKTAxKpq3IEOamI1JirRB9Au5KHcZoar0gGb5tc/faf86//k=
X-Received: by 2002:a65:4346:0:b0:50b:dca1:b6f9 with SMTP id
 k6-20020a654346000000b0050bdca1b6f9mr1128719pgq.1.1679511651715; Wed, 22 Mar
 2023 12:00:51 -0700 (PDT)
MIME-Version: 1.0
References: <167950085059.2796265.16405349421776056766.stgit@firesoul>
 <167950088752.2796265.16037961017301094426.stgit@firesoul>
 <CAADnVQJz+E9s1wcR-0t7AeuZMaCKBHezQc54mFCqqQ=7KK1D+Q@mail.gmail.com>
In-Reply-To: <CAADnVQJz+E9s1wcR-0t7AeuZMaCKBHezQc54mFCqqQ=7KK1D+Q@mail.gmail.com>
From: Stanislav Fomichev <sdf@google.com>
Date: Wed, 22 Mar 2023 12:00:40 -0700
Message-ID: <CAKH8qBtmpr_44kq9dOr4Kdz8t9xNFp4ow6J0_6EEyJhNgA=sTg@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1679511652;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GjDTPkSaQqj31I/z+HvI789TpMhG2SxR9s75ueel5GI=;
 b=JlL6QJwmm4n9k6MhGIAPDh3m+nKrNBYcW+5PfY4XwjHvreYRlYugSKMcbX2nToJcVG
 gjiQfagZa6E4HOKWgeofV9xcLVWuiH7pTM73VCjsaS045VRAsbCdf7tWKDV8eiKZWYKV
 4INMTke5kTI586i6wfE4VybYhS4iQPtYArVL9FG3v0M49aFcPyVF4RTWG7BAAWDnzWKW
 m49L9wbHaOh8PD+kbc4qXRXLv3/84aQS3HOd9a6RKnCGlSR0J5VD/nkzjUkF9CosKtfr
 erwcs+57HBfpfLT+45Oiw54o+C1T9vJU7ecxgNrhZiy4DBoRW8Ja/dm9C+GB6ZmDKQUN
 vk4w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=JlL6QJwm
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V3 3/6] selftests/bpf:
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

T24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgOTowOeKAr0FNIEFsZXhlaSBTdGFyb3ZvaXRvdgo8YWxl
eGVpLnN0YXJvdm9pdG92QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1hciAyMiwgMjAy
MyBhdCA5OjAx4oCvQU0gSmVzcGVyIERhbmdhYXJkIEJyb3Vlcgo+IDxicm91ZXJAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4gPgo+ID4gV2hlbiBkcml2ZXIgZGV2ZWxvcGVycyBhZGQgWERQLWhpbnRzIGtm
dW5jcyBmb3IgUlggaGFzaCBpdCBpcwo+ID4gcHJhY3RpY2FsIHRvIHByaW50IHRoZSByZXR1cm4g
Y29kZSBpbiBicGZfcHJpbnRrIHRyYWNlIHBpcGUgbG9nLgo+ID4KPiA+IFByaW50IGhhc2ggdmFs
dWUgYXMgYSBoZXggdmFsdWUsIGJvdGggQUZfWERQIHVzZXJzcGFjZSBhbmQgYnBmX3Byb2csCj4g
PiBhcyB0aGlzIG1ha2VzIGl0IGVhc2llciB0byBzcG90IHBvb3IgcXVhbGl0eSBoYXNoZXMuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhh
dC5jb20+Cj4gPiBBY2tlZC1ieTogU3RhbmlzbGF2IEZvbWljaGV2IDxzZGZAZ29vZ2xlLmNvbT4K
PiA+IC0tLQo+ID4gIC4uLi90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFk
YXRhLmMgIHwgICAgOSArKysrKystLS0KPiA+ICB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYv
eGRwX2h3X21ldGFkYXRhLmMgICAgICB8ICAgIDUgKysrKy0KPiA+ICAyIGZpbGVzIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rvb2xz
L3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+ID4gaW5kZXgg
NDBjMTdhZGJmNDgzLi5jZTA3MDEwZTRkNDggMTAwNjQ0Cj4gPiAtLS0gYS90b29scy90ZXN0aW5n
L3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+ICsrKyBiL3Rvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+ID4gQEAgLTc3LDEw
ICs3NywxMyBAQCBpbnQgcngoc3RydWN0IHhkcF9tZCAqY3R4KQo+ID4gICAgICAgICAgICAgICAg
IG1ldGEtPnJ4X3RpbWVzdGFtcCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vdCBhdmFpbCBz
aWduYWwgKi8KPiA+ICAgICAgICAgfQo+ID4KPiA+IC0gICAgICAgaWYgKCFicGZfeGRwX21ldGFk
YXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCkpCj4gPiAtICAgICAgICAgICAgICAgYnBm
X3ByaW50aygicG9wdWxhdGVkIHJ4X2hhc2ggd2l0aCAldSIsIG1ldGEtPnJ4X2hhc2gpOwo+ID4g
LSAgICAgICBlbHNlCj4gPiArICAgICAgIHJldCA9IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChj
dHgsICZtZXRhLT5yeF9oYXNoKTsKPiA+ICsgICAgICAgaWYgKHJldCA+PSAwKSB7Cj4gPiArICAg
ICAgICAgICAgICAgYnBmX3ByaW50aygicG9wdWxhdGVkIHJ4X2hhc2ggd2l0aCAweCUwOFgiLCBt
ZXRhLT5yeF9oYXNoKTsKPiA+ICsgICAgICAgfSBlbHNlIHsKPiA+ICsgICAgICAgICAgICAgICBi
cGZfcHJpbnRrKCJyeF9oYXNoIG5vdC1hdmFpbCBlcnJubzolZCIsIHJldCk7Cj4gPiAgICAgICAg
ICAgICAgICAgbWV0YS0+cnhfaGFzaCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vdCBhdmFp
bCBzaWduYWwgKi8KPiA+ICsgICAgICAgfQo+Cj4gSnVzdCBub3RpY2VkIHRoaXMgbWVzcyBvZiBw
cmludGtzLgo+IFBsZWFzZSByZW1vdmUgdGhlbSBhbGwuIHNlbGZ0ZXN0cyBzaG91bGQgbm90IGhh
dmUgdGhlbS4KClNlZSBteSByZXBseSBpbiB0aGUgdjIuCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
