Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F807E026
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2019 18:26:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E0558828C;
	Thu,  1 Aug 2019 16:26:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VRZ2iIOIk6rz; Thu,  1 Aug 2019 16:26:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7650E87EB0;
	Thu,  1 Aug 2019 16:26:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEB171BF41B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2019 07:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC3842272C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2019 07:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fiqRGVp8HzmE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2019 07:34:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 21D5720242
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2019 07:34:59 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id w17so24927421qto.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Aug 2019 00:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UycR00sra85wf4m8205PO8j6tEZSqN6spGZISdh34aM=;
 b=S5hyTHY7q++5zVANm6VWDTdvyd9RTjU1/Tk73UHkCLsed6OzHXANTLN8uib7xXfvOq
 Ng5JT0ykCTxBDFwlfqhy66fPFjKffMwdbp1rIbJAotYwJbKF5dvBEJxwiurTz1oCR9mG
 Z7yHhd8+fqhCkzJCcGDtFJRpau/FDRfPcCKSNjsSNN+LmvYX6K54SaskghKFinWByFVs
 FRkuvSXcO59g1ZdncR8c7ebGqdqgfJXgcYYwO3EfrBJhsd4IKmQa+3RbOIfxiVaYw/H6
 pQ5C0sBZZWGMBkESLqAl4TdEkWRReBVWWv3HSISrl5wlWCGBqs+mG/sEkmy2ZjAYzKed
 D1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UycR00sra85wf4m8205PO8j6tEZSqN6spGZISdh34aM=;
 b=PazxsvbeX+2cdJVKtr4xulexq40zYSQQ4fw6oRmFdwAZ5fLXQyKnjDbXESjQQHDVgG
 cQf72Ysfhym8m8pHqNxYe0OGehulOU7WCSFv/pqUYFUn9DJWEWNaWadgW+knI2ygMCu0
 sZIxh3AtHeOAUIZNoTqP23flWHkVvXSllnOa3YcZNNKViU19DI8/MMZ7QpvXwR1oBkXM
 XmBT6Otr6ovnI/neI+RW8tVmUAGhSYQBzTT4AFtrR/C4HhQnkHNhtNzZCuWebdtp+BXx
 +gtS4eVOJSKCpYnALOz9Y2MYqNC6viIL8CbIelLK+AdNOzt82Oa1SB4GRtgr1fxOkKtR
 GLMQ==
X-Gm-Message-State: APjAAAUZ96EbbmC7MO8Kv1lmI6ABRz0CmKAUcjtG9Z8t2VNGzOnoMnLY
 BGH1f0rIyBDOqFART68sOzL9WD1YE71C3tzEl8k=
X-Google-Smtp-Source: APXvYqzc6dW9NjLy3DKp5TwA1Xj/PXJMkmrHojTfXpNx+Y5uX2m/NOscPg0Y7OGWX0hYPg7GT85YD2hnayeQ2oxclFQ=
X-Received: by 2002:ac8:25b1:: with SMTP id e46mr89819044qte.36.1564644898150; 
 Thu, 01 Aug 2019 00:34:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190730085400.10376-4-kevin.laatz@intel.com>
 <CAJ+HfNifxfgycmZFz8eBZq=FZXAgNQezNqUiy3Q1z4JBrUEkew@mail.gmail.com>
 <CAEf4BzbTbX-Teth+4-yiorO-oHp+JhGfW2e08iBoCsBA4JCbMQ@mail.gmail.com>
In-Reply-To: <CAEf4BzbTbX-Teth+4-yiorO-oHp+JhGfW2e08iBoCsBA4JCbMQ@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Thu, 1 Aug 2019 09:34:47 +0200
Message-ID: <CAJ+HfNhYe_FgV0tGTLzaFGVSiimVnthgESN8Psdtpxw696w0OQ@mail.gmail.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
X-Mailman-Approved-At: Thu, 01 Aug 2019 16:26:28 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 03/11] libbpf: add flags
 to umem config
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Kevin Laatz <kevin.laatz@intel.com>,
 ciara.loftus@intel.com, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Netdev <netdev@vger.kernel.org>, Bruce Richardson <bruce.richardson@intel.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAxIEF1ZyAyMDE5IGF0IDA4OjU5LCBBbmRyaWkgTmFrcnlpa28gPGFuZHJpaS5uYWty
eWlrb0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgODoyMSBB
TSBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IE9u
IFR1ZSwgMzAgSnVsIDIwMTkgYXQgMTk6NDMsIEtldmluIExhYXR6IDxrZXZpbi5sYWF0ekBpbnRl
bC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBUaGlzIHBhdGNoIGFkZHMgYSAnZmxhZ3MnIGZpZWxk
IHRvIHRoZSB1bWVtX2NvbmZpZyBhbmQgdW1lbV9yZWcgc3RydWN0cy4KPiA+ID4gVGhpcyB3aWxs
IGFsbG93IGZvciBtb3JlIG9wdGlvbnMgdG8gYmUgYWRkZWQgZm9yIGNvbmZpZ3VyaW5nIHVtZW1z
Lgo+ID4gPgo+ID4gPiBUaGUgZmlyc3QgdXNlIGZvciB0aGUgZmxhZ3MgZmllbGQgaXMgdG8gYWRk
IGEgZmxhZyBmb3IgdW5hbGlnbmVkIGNodW5rcwo+ID4gPiBtb2RlLiBUaGVzZSBmbGFncyBjYW4g
ZWl0aGVyIGJlIHVzZXItcHJvdmlkZWQgb3IgZmlsbGVkIHdpdGggYSBkZWZhdWx0Lgo+ID4gPgo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBMYWF0eiA8a2V2aW4ubGFhdHpAaW50ZWwuY29tPgo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaWFyYSBMb2Z0dXMgPGNpYXJhLmxvZnR1c0BpbnRlbC5jb20+
Cj4gPiA+Cj4gPiA+IC0tLQo+ID4gPiB2MjoKPiA+ID4gICAtIFJlbW92ZWQgdGhlIGhlYWRyb29t
IGNoZWNrIGZyb20gdGhpcyBwYXRjaC4gSXQgaGFzIG1vdmVkIHRvIHRoZQo+ID4gPiAgICAgcHJl
dmlvdXMgcGF0Y2guCj4gPiA+Cj4gPiA+IHY0Ogo+ID4gPiAgIC0gbW9kaWZpZWQgY2h1bmsgZmxh
ZyBkZWZpbmUKPiA+ID4gLS0tCj4KPiBbLi4uXQo+Cj4gPiA+IGRpZmYgLS1naXQgYS90b29scy9s
aWIvYnBmL3hzay5oIGIvdG9vbHMvbGliL2JwZi94c2suaAo+ID4gPiBpbmRleCA4MzNhNmU2MGQw
NjUuLjQ0YTAzZDhjMzRiOSAxMDA2NDQKPiA+ID4gLS0tIGEvdG9vbHMvbGliL2JwZi94c2suaAo+
ID4gPiArKysgYi90b29scy9saWIvYnBmL3hzay5oCj4gPiA+IEBAIC0xNzAsMTIgKzE3MCwxNCBA
QCBMSUJCUEZfQVBJIGludCB4c2tfc29ja2V0X19mZChjb25zdCBzdHJ1Y3QgeHNrX3NvY2tldCAq
eHNrKTsKPiA+ID4gICNkZWZpbmUgWFNLX1VNRU1fX0RFRkFVTFRfRlJBTUVfU0hJRlQgICAgMTIg
LyogNDA5NiBieXRlcyAqLwo+ID4gPiAgI2RlZmluZSBYU0tfVU1FTV9fREVGQVVMVF9GUkFNRV9T
SVpFICAgICAoMSA8PCBYU0tfVU1FTV9fREVGQVVMVF9GUkFNRV9TSElGVCkKPiA+ID4gICNkZWZp
bmUgWFNLX1VNRU1fX0RFRkFVTFRfRlJBTUVfSEVBRFJPT00gMAo+ID4gPiArI2RlZmluZSBYU0tf
VU1FTV9fREVGQVVMVF9GTEFHUyAwCj4gPiA+Cj4gPiA+ICBzdHJ1Y3QgeHNrX3VtZW1fY29uZmln
IHsKPiA+ID4gICAgICAgICBfX3UzMiBmaWxsX3NpemU7Cj4gPiA+ICAgICAgICAgX191MzIgY29t
cF9zaXplOwo+ID4gPiAgICAgICAgIF9fdTMyIGZyYW1lX3NpemU7Cj4gPiA+ICAgICAgICAgX191
MzIgZnJhbWVfaGVhZHJvb207Cj4gPiA+ICsgICAgICAgX191MzIgZmxhZ3M7Cj4gPgo+ID4gQW5k
IHRoZSBmbGFncyBhZGRpdGlvbiBoZXJlLCB1bmZvcnR1bmF0ZWx5LCByZXF1aXJlcyBzeW1ib2wg
dmVyc2lvbmluZwo+ID4gb2YgeHNrX3VtZW1fX2NyZWF0ZSgpLiBUaGF0J2xsIGJlIHRoZSBmaXJz
dCBpbiBsaWJicGYhIDotKQo+Cj4geHNrX3VtZW1fY29uZmlnIGlzIHBhc3NlZCBieSBwb2ludGVy
IHRvIHhza191bWVtX19jcmVhdGUoKSwgc28gdGhpcwo+IGRvZXNuJ3QgYnJlYWsgQUJJLCBkb2Vz
IGl0Pwo+CgpPbGQgYXBwbGljYXRpb24sIGR5bmFtaWNhbGx5IGxpbmtlZCB0byBuZXcgbGliYnBm
LnNvIHdpbGwgY3Jhc2gsCnJpZ2h0PyBPbGQgYXBwbGljYXRpb24gcGFzc2VzIG9sZCB2ZXJzaW9u
IG9mIHhza191bWVtX2NvbmZpZywgYW5kIG5ldwpsaWJyYXJ5IGFjY2Vzc2VzIChub24tZXhpc3Rp
bmcpIGZsYWcgc3RydWN0IG1lbWJlci4KCgpCasO2cm4KCgo+ID4KPiA+Cj4gPiBCasO2cm4KPiA+
Cj4gPiA+ICB9Owo+ID4gPgo+ID4gPiAgLyogRmxhZ3MgZm9yIHRoZSBsaWJicGZfZmxhZ3MgZmll
bGQuICovCj4gPiA+IC0tCj4gPiA+IDIuMTcuMQo+ID4gPgo+ID4gPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0Cj4gPiA+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gPiA+IGh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
