Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFA27C7648
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0E55611F6;
	Thu, 12 Oct 2023 19:07:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0E55611F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137645;
	bh=m38fnCH056o7AxicWjt/E8wTVX8o46xeNC+XucmOHGE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sNiGiDRHJrfrPyBTqlMxh6087k4bQiWDD5s7kHu2IeelEdRAbZ/lAAerazTXOSVld
	 E0cxy+oNa07GGN9pfp29xTb8NDdGiFvRGuQiULIhZZTcIRNa2cmKtgcDopSqBITWf/
	 IfsiGb7IkBlWKnR65D8+iJQJcMmMLj2zpvRvg0Wx4ISSyvS1O6aezhxh5tC44X6XWC
	 t/NMaHFceJwC16jodale3VUOeKvowxtSobstPDpgGtkLYK4eOx4agfJp4SISm/MJCX
	 Sa9XS4sF+xVkv450+m3EiNTb6CLOJkZ6fU3eV1JYMNripJxuw7sWnV14QlohDGw9m6
	 1suO/l2TfDFDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jk-RPwK0tSj4; Thu, 12 Oct 2023 19:07:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C908D61063;
	Thu, 12 Oct 2023 19:07:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C908D61063
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 771541BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:41:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4EB4781ED7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EB4781ED7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BM-kFMhBO69Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 21:41:25 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CB56281ED2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB56281ED2
Received: by mail-wr1-x435.google.com with SMTP id
 ffacd0b85a97d-327be5fe4beso5602268f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 14:41:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696974083; x=1697578883;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GMDM/r5CYmcxbaZwoDfjx69JmAy+Zf5G5Pi9db/hUXk=;
 b=hHtiuArUBaoszEXmPX/TSebSfSRxZ9EKV34eP7gQWCPawxlAbCj1wzBHbvewReo87y
 EeACr7gItmKQD34JUQBeSXoAY02rBBviu/PcQCX5tDLDR0x4mkW/TZCLlUxBCPit9WZc
 paq/ub7vNFwD0kc61g5C6vq/TOppzuePpySnwpp9Hnd+lR/gQ3840x9FU6lwIcjhMY3X
 ZC0XHP/bRWem9qDJiw6Pm8ZIDbvpi+arJjAlnFZe0RfqckYsUsD2UboAaXLzu2B0DYYQ
 m6gf63zvhQU885BObk4+ztLU9jBmIoVcwz7T5zFPw8D/TisRmOr1SLJuDIfjflt7lSI1
 UQBA==
X-Gm-Message-State: AOJu0Yyd7qhrvudK9BYOT1jUoXV4oVTZukWxjNoKW646kD54G824mtfR
 GN4Vf9nHSR7ZlZLGZ4uaffwjvoUMNARE0t8oLegMVA==
X-Google-Smtp-Source: AGHT+IENzJWLhr1WARu69zZqe9X4Db7XpHhpgy9yuJ3Rb/tvLGQ1CJnMjWOpAsfeaHhE6eZOtekV0/eXaI8rq/Zs46I=
X-Received: by 2002:a5d:4f10:0:b0:316:ee7f:f9bb with SMTP id
 c16-20020a5d4f10000000b00316ee7ff9bbmr17366404wru.65.1696974082824; Tue, 10
 Oct 2023 14:41:22 -0700 (PDT)
MIME-Version: 1.0
References: <20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-v1-1-69ccfb2c2aa5@google.com>
 <5dc78e2f-62c1-083a-387f-9afabac02007@intel.com>
In-Reply-To: <5dc78e2f-62c1-083a-387f-9afabac02007@intel.com>
From: Justin Stitt <justinstitt@google.com>
Date: Tue, 10 Oct 2023 14:41:10 -0700
Message-ID: <CAFhGd8ppobxMnvrMT4HrRkf0LvHE1P-utErp8Tk22Fb9OO=8Rw@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696974083; x=1697578883; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GMDM/r5CYmcxbaZwoDfjx69JmAy+Zf5G5Pi9db/hUXk=;
 b=jE04vPFxR7Mqyzs+llwlluJCQIzER0Mz5TyiBG0p65L+OdF8Ck/jbI1X22CZRNgtW3
 jHc/fImCTDx8qiMy/G8zt7l5ESHDs3xCJMWecwwEGCpG98uIl/IxIlbubuvXyukumgI1
 5Xo6Pr7OfU/mWvBgU+GkUJsyRFsTMQRdPRdkzXkv9vup9TdiRmKkonbsB+25i+mAtcZk
 fuH0yWXx61eaOMPb69htId6WTd6dsMjyNGy0CLjernKVLi1tTg05sT2u65K23efMaNQE
 Uebpfhaue6xebKaWW31ZLNPejF7EMkZ1s5aNuXIuJJRNil/eKADdFyBxiRyVdGUhwH5t
 QpQw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=jE04vPFx
Subject: Re: [Intel-wired-lan] [PATCH] igbvf: replace deprecated strncpy
 with strscpy
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTAsIDIwMjMgYXQgMjoyMOKAr1BNIEplc3NlIEJyYW5kZWJ1cmcKPGplc3Nl
LmJyYW5kZWJ1cmdAaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIDEwLzEwLzIwMjMgMjoxMiBQTSwg
SnVzdGluIFN0aXR0IHdyb3RlOgo+ID4gYHN0cm5jcHlgIGlzIGRlcHJlY2F0ZWQgZm9yIHVzZSBv
biBOVUwtdGVybWluYXRlZCBkZXN0aW5hdGlvbiBzdHJpbmdzCj4gPiBbMV0gYW5kIGFzIHN1Y2gg
d2Ugc2hvdWxkIHByZWZlciBtb3JlIHJvYnVzdCBhbmQgbGVzcyBhbWJpZ3VvdXMgc3RyaW5nCj4g
PiBpbnRlcmZhY2VzLgo+ID4KPiA+IFdlIGV4cGVjdCBuZXRkZXYtPm5hbWUgdG8gYmUgTlVMLXRl
cm1pbmF0ZWQgYmFzZWQgb24gaXRzIHVzYWdlIHdpdGgKPiA+IGBzdHJsZW5gIGFuZCBmb3JtYXQg
c3RyaW5nczoKPiA+IHwgICAgICAgaWYgKHN0cmxlbihuZXRkZXYtPm5hbWUpIDwgKElGTkFNU0la
IC0gNSkpIHsKPiA+IHwgICAgICAgICAgICAgICBzcHJpbnRmKGFkYXB0ZXItPnR4X3JpbmctPm5h
bWUsICIlcy10eC0wIiwgbmV0ZGV2LT5uYW1lKTsKPiA+Cj4gPiBNb3Jlb3Zlciwgd2UgZG8gbm90
IG5lZWQgTlVMLXBhZGRpbmcgYXMgbmV0ZGV2IGlzIGFscmVhZHkKPiA+IHplcm8tYWxsb2NhdGVk
Ogo+ID4gfCAgICAgICBuZXRkZXYgPSBhbGxvY19ldGhlcmRldihzaXplb2Yoc3RydWN0IGlnYnZm
X2FkYXB0ZXIpKTsKPiA+IC4uLgo+ID4gYWxsb2NfZXRoZXJkZXYoKSAtPiBhbGxvY19ldGhlcmRl
dl9tcSgpIC0+IGFsbG9jX2V0aGVyZGV2X21xcygpIC0+Cj4gPiBhbGxvY19uZXRkZXZfbXFzKCkg
Li4uCj4gPiB8ICAgICAgIHAgPSBrdnphbGxvYyhhbGxvY19zaXplLCBHRlBfS0VSTkVMX0FDQ09V
TlQgfCBfX0dGUF9SRVRSWV9NQVlGQUlMKTsKPiA+Cj4gPiBDb25zaWRlcmluZyB0aGUgYWJvdmUs
IGEgc3VpdGFibGUgcmVwbGFjZW1lbnQgaXMgYHN0cnNjcHlgIFsyXSBkdWUgdG8KPiA+IHRoZSBm
YWN0IHRoYXQgaXQgZ3VhcmFudGVlcyBOVUwtdGVybWluYXRpb24gb24gdGhlIGRlc3RpbmF0aW9u
IGJ1ZmZlcgo+ID4gd2l0aG91dCB1bm5lY2Vzc2FyaWx5IE5VTC1wYWRkaW5nLgo+ID4KPiA+IExp
bms6IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3MvZGVwcmVj
YXRlZC5odG1sI3N0cm5jcHktb24tbnVsLXRlcm1pbmF0ZWQtc3RyaW5ncyBbMV0KPiA+IExpbms6
IGh0dHBzOi8vbWFucGFnZXMuZGViaWFuLm9yZy90ZXN0aW5nL2xpbnV4LW1hbnVhbC00Ljgvc3Ry
c2NweS45LmVuLmh0bWwgWzJdCj4gPiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51
eC9pc3N1ZXMvOTAKPiA+IENjOiBsaW51eC1oYXJkZW5pbmdAdmdlci5rZXJuZWwub3JnCj4gPiBT
aWduZWQtb2ZmLWJ5OiBKdXN0aW4gU3RpdHQgPGp1c3RpbnN0aXR0QGdvb2dsZS5jb20+Cj4gPiAt
LS0KPgo+IFRoYW5rcyBKdXN0aW4gZm9yIHRoZXNlIHBhdGNoZXMsIHBsZWFzZSBtYWtlIHN1cmUg
eW91IG1hcmsgdGhlIHN1YmplY3QKPiBsaW5lIGFzIHBlciB0aGUgbmV0ZGV2IHJ1bGVzOgo+IFtQ
QVRDSCBuZXQtbmV4dCB2MV0gZXRjIGV0YwoKU3VyZSwgSSdsbCByZXNlbmQhCgo+Cj4gSSdkIGFs
c28gcHJlZmVyIHRoZXkgY2FtZSBpbiBhcyBwYXJ0IG9mIG9uZSBzZXJpZXMgd2l0aCBhIGdvb2Qg
Y292ZXIKPiBsZXR0ZXIsIGF0IHRoZSB2ZXJ5IGxlYXN0IGZvciB0aGUgSW50ZWwgZHJpdmVycywg
YW5kIHlvdSBwcm9iYWJseSBjb3VsZAo+IGNvbWJpbmUgYW55IG90aGVycyAobmV0ZGV2KSB0b2dl
dGhlciB1cCB0byB0aGUgMTUgcGF0Y2ggbGltaXQuCgpHb3QgaXQgOikKCj4KPiBQbGVhc2UgbWVu
dGlvbiBob3cgeW91IGZvdW5kIHRoZXNlIGlzc3VlcywgdmlhIGF1dG9tYXRlZCB0b29sIG9yIHZp
YQo+IGNvY2NpbmVsbGUgc2NyaXB0LCBtYW51YWwgZ3JlcHBpbmcsIGV0Yz8KCnJnICJzdHJuY3B5
XCgiID4gcGFpbi50eHQKCj4KPiBUaGFua3MsCj4gSmVzc2UKPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
