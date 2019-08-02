Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1A7800A3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2019 21:04:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2809E86BFF;
	Fri,  2 Aug 2019 19:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cnkajdQNxpsy; Fri,  2 Aug 2019 19:04:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC6EE86C15;
	Fri,  2 Aug 2019 19:04:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C8B2D1BF41D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 07:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C107A8843B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 07:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cJq5ONbs5sEQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2019 07:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E31AA8843F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 07:19:40 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id r4so53967888qkm.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Aug 2019 00:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bOd1ApjdIvvHVrB6SPJ833xyvpZ+ZZkhLzOIz7nYufA=;
 b=X1X9fyj+A4cGFV7GOyE20MTwtwKEL3xzoEsWHBBJoL0J4tulveN51VrhG9rMQw5U6i
 YUhntKSYrCD2pCf3Vo3ERXB62Wm6SCppyDfBykoknuZouSiu0gjw8PPdshGZo2ZQCmQt
 17iUn53AlZxpm0d7iCHNhQtjndIe6AMlSzqsWloZ+uS1Dm5/M+oz8FNpv3uPY3s3tczw
 uOFKkd8ovvKwSXseRAD9A8f0rMQWmw1tMxDtw7Zh16VWjClLt5CkfPt0xZl3mBkAQiN0
 7OxuZ8OIeLxhs63OQ9OsHfGpQrzB5BdGIHoL0JMtndvNvvA6R8UHfUU0mcqPD+hOP2rk
 x6Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bOd1ApjdIvvHVrB6SPJ833xyvpZ+ZZkhLzOIz7nYufA=;
 b=dseEzP9BVAs2UXz9pJzm94MpU2muk68Kl8TFvKVygy0EgpM/Lt3pPECg8JiVO/fkPp
 vzAq0vE2zD9s5rhXDo0n49mbJ/fmzJfnzeUKaql5nkJok/UP9RF9xk1JKtkT37wFn3fu
 BT1KYWTmc63+xV9vZdiibwWjHT609JE5b09bKmA3XXdtCjTBKQNORdXhwlZebpAWWCtb
 qJCHb1NUqYfWvga5Q+56eyIg6wJtb8aEZLOb5myal65J25Tplbivtidjvza422xN/B+g
 rSVg/gYRPGwr4GgRPvgCWslJsFbwYNBK+QIWG/JydqoOKMsxitm+6m8chQtWZuT6TOri
 QM3A==
X-Gm-Message-State: APjAAAUtiaVhYWUteQ7dNvK23dDJ9g6rt/qJbBMU6MPut2Tj1z5q1XLV
 jqtaiVOBOvt7EylvX1zOepYoQhISd/KMS1dPxCA=
X-Google-Smtp-Source: APXvYqx1ee2Rs01YKixoFLrt2n9nry/vNFaDXbY60Zevulcb+oqgNM70oIa12p+8AfVXekznu/VRObTI6vXkfkjBlKQ=
X-Received: by 2002:a37:660d:: with SMTP id a13mr62177858qkc.36.1564730379974; 
 Fri, 02 Aug 2019 00:19:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190730085400.10376-4-kevin.laatz@intel.com>
 <CAJ+HfNifxfgycmZFz8eBZq=FZXAgNQezNqUiy3Q1z4JBrUEkew@mail.gmail.com>
 <CAEf4BzbTbX-Teth+4-yiorO-oHp+JhGfW2e08iBoCsBA4JCbMQ@mail.gmail.com>
 <CAJ+HfNhYe_FgV0tGTLzaFGVSiimVnthgESN8Psdtpxw696w0OQ@mail.gmail.com>
In-Reply-To: <CAJ+HfNhYe_FgV0tGTLzaFGVSiimVnthgESN8Psdtpxw696w0OQ@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Fri, 2 Aug 2019 00:19:29 -0700
Message-ID: <CAEf4Bzar-KgCjUEfKVeWzcB77xvXDagZFRQKDvWo1o9-JzCirw@mail.gmail.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
X-Mailman-Approved-At: Fri, 02 Aug 2019 19:04:01 +0000
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

T24gVGh1LCBBdWcgMSwgMjAxOSBhdCAxMjozNCBBTSBCasO2cm4gVMO2cGVsIDxiam9ybi50b3Bl
bEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCAxIEF1ZyAyMDE5IGF0IDA4OjU5LCBBbmRy
aWkgTmFrcnlpa28gPGFuZHJpaS5uYWtyeWlrb0BnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IE9u
IFdlZCwgSnVsIDMxLCAyMDE5IGF0IDg6MjEgQU0gQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxA
Z21haWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxOTo0
MywgS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGludGVsLmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+
ID4gPiBUaGlzIHBhdGNoIGFkZHMgYSAnZmxhZ3MnIGZpZWxkIHRvIHRoZSB1bWVtX2NvbmZpZyBh
bmQgdW1lbV9yZWcgc3RydWN0cy4KPiA+ID4gPiBUaGlzIHdpbGwgYWxsb3cgZm9yIG1vcmUgb3B0
aW9ucyB0byBiZSBhZGRlZCBmb3IgY29uZmlndXJpbmcgdW1lbXMuCj4gPiA+ID4KPiA+ID4gPiBU
aGUgZmlyc3QgdXNlIGZvciB0aGUgZmxhZ3MgZmllbGQgaXMgdG8gYWRkIGEgZmxhZyBmb3IgdW5h
bGlnbmVkIGNodW5rcwo+ID4gPiA+IG1vZGUuIFRoZXNlIGZsYWdzIGNhbiBlaXRoZXIgYmUgdXNl
ci1wcm92aWRlZCBvciBmaWxsZWQgd2l0aCBhIGRlZmF1bHQuCj4gPiA+ID4KPiA+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBLZXZpbiBMYWF0eiA8a2V2aW4ubGFhdHpAaW50ZWwuY29tPgo+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IENpYXJhIExvZnR1cyA8Y2lhcmEubG9mdHVzQGludGVsLmNvbT4KPiA+ID4g
Pgo+ID4gPiA+IC0tLQo+ID4gPiA+IHYyOgo+ID4gPiA+ICAgLSBSZW1vdmVkIHRoZSBoZWFkcm9v
bSBjaGVjayBmcm9tIHRoaXMgcGF0Y2guIEl0IGhhcyBtb3ZlZCB0byB0aGUKPiA+ID4gPiAgICAg
cHJldmlvdXMgcGF0Y2guCj4gPiA+ID4KPiA+ID4gPiB2NDoKPiA+ID4gPiAgIC0gbW9kaWZpZWQg
Y2h1bmsgZmxhZyBkZWZpbmUKPiA+ID4gPiAtLS0KPiA+Cj4gPiBbLi4uXQo+ID4KPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvdG9vbHMvbGliL2JwZi94c2suaCBiL3Rvb2xzL2xpYi9icGYveHNrLmgKPiA+
ID4gPiBpbmRleCA4MzNhNmU2MGQwNjUuLjQ0YTAzZDhjMzRiOSAxMDA2NDQKPiA+ID4gPiAtLS0g
YS90b29scy9saWIvYnBmL3hzay5oCj4gPiA+ID4gKysrIGIvdG9vbHMvbGliL2JwZi94c2suaAo+
ID4gPiA+IEBAIC0xNzAsMTIgKzE3MCwxNCBAQCBMSUJCUEZfQVBJIGludCB4c2tfc29ja2V0X19m
ZChjb25zdCBzdHJ1Y3QgeHNrX3NvY2tldCAqeHNrKTsKPiA+ID4gPiAgI2RlZmluZSBYU0tfVU1F
TV9fREVGQVVMVF9GUkFNRV9TSElGVCAgICAxMiAvKiA0MDk2IGJ5dGVzICovCj4gPiA+ID4gICNk
ZWZpbmUgWFNLX1VNRU1fX0RFRkFVTFRfRlJBTUVfU0laRSAgICAgKDEgPDwgWFNLX1VNRU1fX0RF
RkFVTFRfRlJBTUVfU0hJRlQpCj4gPiA+ID4gICNkZWZpbmUgWFNLX1VNRU1fX0RFRkFVTFRfRlJB
TUVfSEVBRFJPT00gMAo+ID4gPiA+ICsjZGVmaW5lIFhTS19VTUVNX19ERUZBVUxUX0ZMQUdTIDAK
PiA+ID4gPgo+ID4gPiA+ICBzdHJ1Y3QgeHNrX3VtZW1fY29uZmlnIHsKPiA+ID4gPiAgICAgICAg
IF9fdTMyIGZpbGxfc2l6ZTsKPiA+ID4gPiAgICAgICAgIF9fdTMyIGNvbXBfc2l6ZTsKPiA+ID4g
PiAgICAgICAgIF9fdTMyIGZyYW1lX3NpemU7Cj4gPiA+ID4gICAgICAgICBfX3UzMiBmcmFtZV9o
ZWFkcm9vbTsKPiA+ID4gPiArICAgICAgIF9fdTMyIGZsYWdzOwo+ID4gPgo+ID4gPiBBbmQgdGhl
IGZsYWdzIGFkZGl0aW9uIGhlcmUsIHVuZm9ydHVuYXRlbHksIHJlcXVpcmVzIHN5bWJvbCB2ZXJz
aW9uaW5nCj4gPiA+IG9mIHhza191bWVtX19jcmVhdGUoKS4gVGhhdCdsbCBiZSB0aGUgZmlyc3Qg
aW4gbGliYnBmISA6LSkKPiA+Cj4gPiB4c2tfdW1lbV9jb25maWcgaXMgcGFzc2VkIGJ5IHBvaW50
ZXIgdG8geHNrX3VtZW1fX2NyZWF0ZSgpLCBzbyB0aGlzCj4gPiBkb2Vzbid0IGJyZWFrIEFCSSwg
ZG9lcyBpdD8KPiA+Cj4KPiBPbGQgYXBwbGljYXRpb24sIGR5bmFtaWNhbGx5IGxpbmtlZCB0byBu
ZXcgbGliYnBmLnNvIHdpbGwgY3Jhc2gsCj4gcmlnaHQ/IE9sZCBhcHBsaWNhdGlvbiBwYXNzZXMg
b2xkIHZlcnNpb24gb2YgeHNrX3VtZW1fY29uZmlnLCBhbmQgbmV3Cj4gbGlicmFyeSBhY2Nlc3Nl
cyAobm9uLWV4aXN0aW5nKSBmbGFnIHN0cnVjdCBtZW1iZXIuCgpJIHRoaW5rIHdlIGhhdmUgc2lt
aWxhciBwcm9ibGVtcyBmb3IgYWxsIHRoZSBfeGF0dHIgdHlwZSBvZiBjb21tYW5kcwooYXMgd2Vs
bCBzb21lIG9mIGJ0ZiBzdHVmZiBhY2NlcHRpbmcgZXh0cmEgb3B0cyBzdHJ1Y3RzKS4gSG93IGlz
IHRoaXMKcHJvYmxlbSBzb2x2ZWQgaW4gZ2VuZXJhbD8gRG8gd2UgdmVyc2lvbiBzYW1lIGZ1bmN0
aW9uIG11bHRpcGxlIHRpbWVzLApvbmUgZm9yIGVhY2ggYWRkZWQgZmllbGQ/IEl0IGZlZWxzIGxp
a2UgdGhlcmUgc2hvdWxkIGJlIHNvbWUgYmV0dGVyCndheSB0byBoYW5kbGUgdGhpcy4uLgoKPgo+
Cj4gQmrDtnJuCj4KPgo+ID4gPgo+ID4gPgo+ID4gPiBCasO2cm4KPiA+ID4KPiA+ID4gPiAgfTsK
PiA+ID4gPgo+ID4gPiA+ICAvKiBGbGFncyBmb3IgdGhlIGxpYmJwZl9mbGFncyBmaWVsZC4gKi8K
PiA+ID4gPiAtLQo+ID4gPiA+IDIuMTcuMQo+ID4gPiA+Cj4gPiA+ID4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gPiBJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0Cj4gPiA+ID4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiA+ID4gPiBo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
