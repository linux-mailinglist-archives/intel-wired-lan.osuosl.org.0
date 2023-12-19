Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA86818D07
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 17:55:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFEEA82D62;
	Tue, 19 Dec 2023 16:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFEEA82D62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703004943;
	bh=GDkZyXXndJLPm8xCEtRsh1EdArZX8IT3ehMuEbOPhrs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2P550jff3sHraEri2lkJqDzzWld2MQ2mIP/xMtoHzEYZDDEC9bVr4/bCYqyyelPg0
	 UqhOGLR0Nv7fWCg8+8cc4MDJ8s1sGHLtSZyRlNPVrspGF01ElZHi2dMHsKsRvYMjTC
	 dyOtyarB6poJfIU12cYTS/HdfiGKYJF82GK+uKdg6PJlnO/VEVPCzGZDYJCKDwPQI3
	 64irSAMnbi9skgfF/U/s0tn777dINZIvFTmr/PflOBtl2F73r+00SDDNkPAuRno9gx
	 svlVzfCBey+XVTlVo0RboXeS7ehMxx2CMiDr5jFmeIGxCVzQCGioSQNU+9OP5tnjYc
	 4Mu2B4f1KSRJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12nRdKy8MFrm; Tue, 19 Dec 2023 16:55:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42A798144B;
	Tue, 19 Dec 2023 16:55:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42A798144B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B43DB1BF360
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 16:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A27640A16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 16:55:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A27640A16
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ibvfoSQ8QunB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Dec 2023 16:55:35 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07D4B400DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 16:55:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07D4B400DC
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-3366ddd1eddso2096979f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 08:55:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703004933; x=1703609733;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Pr1gwYwEAqV3CPDFt5tJeZc4Ej3mhik7sPY5D9i4L+4=;
 b=vN4k7EabSHOIt4SSY8ybQnYAgW6OMjTI3CuRRIDavQY6XDysPscyXNU/CiNZQK042C
 IdgytOrI4KIppKQ6aBpL0jOfiEj9+H7WLGjp3D6c2LJ98uYp3r7z3jrB84u4eV1+YrXX
 na8nKPe4CFTmYFE6NU0iu8GpLKwNxfk56gA0gyyBSqr+XgYqTBjXZQhnOpNKQBasNKkI
 PKw1CESs0PKDzb35kxuvYTAagPHzegaRdOC0s8P4HjotANO3MNYm3w2ykrZPhdERWqzN
 W+kZlFIiPuAMGrT5d57yWts+vRMKSOfhAqytpNM1YB1rpEV5glvhkE8A7e8kCzXhY+4w
 tewg==
X-Gm-Message-State: AOJu0YyIFvKA+2fCIAotI1S7XWahbgQCqnPpC/SKeKDNjYGDq6KgeNsZ
 AdWsWUmEJV6Z43DdU5GbA/bMJbUpXRiMgllJaddSkQ==
X-Google-Smtp-Source: AGHT+IHdJSnW1uoy3+KysPNVwLZ4H/jx1KVZ/uOvjz42emCllqfn1IhGJ3uQ5Ral4Y9max8Bshqiu+TgQgc/H/ReIBY=
X-Received: by 2002:adf:e4c3:0:b0:336:60da:7530 with SMTP id
 v3-20020adfe4c3000000b0033660da7530mr1849799wrm.158.1703004932880; Tue, 19
 Dec 2023 08:55:32 -0800 (PST)
MIME-Version: 1.0
References: <20231215171020.687342-21-bigeasy@linutronix.de>
 <202312161212.D5tju5i6-lkp@intel.com>
 <20231219000116.GA3956476@dev-arch.thelio-3990X>
In-Reply-To: <20231219000116.GA3956476@dev-arch.thelio-3990X>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 19 Dec 2023 08:55:21 -0800
Message-ID: <CAKwvOdkfjyKz6686RzAGjfKMVPriLM8XuNueYyWcd_Sj-WnJbg@mail.gmail.com>
To: Nathan Chancellor <nathan@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1703004933; x=1703609733; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Pr1gwYwEAqV3CPDFt5tJeZc4Ej3mhik7sPY5D9i4L+4=;
 b=TaT54yCz1pExMGftplGv6Tr8hCUUdizHl0kJ42WoVTU56fhoyDWmQP7eaG9Yl3a0jS
 50jhpbFjcOufF/TW8q7O0tbPn5bAHbhhpUaFWBCwiPt5rc/9Drp0r5Yip97/PR9cyKRc
 48zCObJVIK9IXzvLlX1Oe1CriU4tOefvbYaVFb2gDfTbfBDPp4r+OXp3h476iDyGvZR4
 85x44UCR/T54Lb6Ljki/58v1XIB5NxY91X3Y2GQVzpXl1qW7tOUwwQOxy58CjOCo9oQc
 cm6BJS7pBvNbZxiACq4aJLALYAepKoJssYVMHjxoiIgSujugjwvrNXAWMoa8kVj2w3Xj
 OvmQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=TaT54yCz
Subject: Re: [Intel-wired-lan] [PATCH net-next 20/24] net: intel: Use
 nested-BH locking for XDP redirect.
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
Cc: Peter Zijlstra <peterz@infradead.org>, llvm@lists.linux.dev,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Will Deacon <will@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Ingo Molnar <mingo@redhat.com>,
 intel-wired-lan@lists.osuosl.org, Waiman Long <longman@redhat.com>,
 Paolo Abeni <pabeni@redhat.com>, Frederic Weisbecker <frederic@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, oe-kbuild-all@lists.linux.dev,
 Thomas Gleixner <tglx@linutronix.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgNDowMeKAr1BNIE5hdGhhbiBDaGFuY2VsbG9yIDxuYXRo
YW5Aa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBTYXQsIERlYyAxNiwgMjAyMyBhdCAxMjo1Mzo0
M1BNICswODAwLCBrZXJuZWwgdGVzdCByb2JvdCB3cm90ZToKPiA+IEhpIFNlYmFzdGlhbiwKPiA+
Cj4gPiBrZXJuZWwgdGVzdCByb2JvdCBub3RpY2VkIHRoZSBmb2xsb3dpbmcgYnVpbGQgZXJyb3Jz
Ogo+ID4KPiA+IFthdXRvIGJ1aWxkIHRlc3QgRVJST1Igb24gbmV0LW5leHQvbWFpbl0KPiA+Cj4g
PiB1cmw6ICAgIGh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC1sYWItbGtwL2xpbnV4L2NvbW1pdHMv
U2ViYXN0aWFuLUFuZHJ6ZWotU2lld2lvci9sb2NraW5nLWxvY2FsX2xvY2stSW50cm9kdWNlLWd1
YXJkLWRlZmluaXRpb24tZm9yLWxvY2FsX2xvY2svMjAyMzEyMTYtMDExOTExCj4gPiBiYXNlOiAg
IG5ldC1uZXh0L21haW4KPiA+IHBhdGNoIGxpbms6ICAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3IvMjAyMzEyMTUxNzEwMjAuNjg3MzQyLTIxLWJpZ2Vhc3klNDBsaW51dHJvbml4LmRlCj4gPiBw
YXRjaCBzdWJqZWN0OiBbUEFUQ0ggbmV0LW5leHQgMjAvMjRdIG5ldDogaW50ZWw6IFVzZSBuZXN0
ZWQtQkggbG9ja2luZyBmb3IgWERQIHJlZGlyZWN0Lgo+ID4gY29uZmlnOiBhcm0tZGVmY29uZmln
IChodHRwczovL2Rvd25sb2FkLjAxLm9yZy8wZGF5LWNpL2FyY2hpdmUvMjAyMzEyMTYvMjAyMzEy
MTYxMjEyLkQ1dGp1NWk2LWxrcEBpbnRlbC5jb20vY29uZmlnKQo+ID4gY29tcGlsZXI6IGNsYW5n
IHZlcnNpb24gMTQuMC42IChodHRwczovL2dpdGh1Yi5jb20vbGx2bS9sbHZtLXByb2plY3QuZ2l0
IGYyOGMwMDZhNTg5NWZjMGUzMjlmZTE1ZmVhZDgxZTM3NDU3Y2IxZDEpCj4gPiByZXByb2R1Y2Ug
KHRoaXMgaXMgYSBXPTEgYnVpbGQpOiAoaHR0cHM6Ly9kb3dubG9hZC4wMS5vcmcvMGRheS1jaS9h
cmNoaXZlLzIwMjMxMjE2LzIwMjMxMjE2MTIxMi5ENXRqdTVpNi1sa3BAaW50ZWwuY29tL3JlcHJv
ZHVjZSkKPiA+Cj4gPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSBpbiBhIHNlcGFyYXRlIHBhdGNoL2Nv
bW1pdCAoaS5lLiBub3QganVzdCBhIG5ldyB2ZXJzaW9uIG9mCj4gPiB0aGUgc2FtZSBwYXRjaC9j
b21taXQpLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0YWdzCj4gPiB8IFJlcG9ydGVkLWJ5OiBrZXJu
ZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiA+IHwgQ2xvc2VzOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9vZS1rYnVpbGQtYWxsLzIwMjMxMjE2MTIxMi5ENXRqdTVpNi1sa3BAaW50ZWwu
Y29tLwo+ID4KPiA+IEFsbCBlcnJvcnMgKG5ldyBvbmVzIHByZWZpeGVkIGJ5ID4+KToKPiA+Cj4g
PiA+PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYzo4NjIwOjM6IGVy
cm9yOiBjYW5ub3QganVtcCBmcm9tIHRoaXMgZ290byBzdGF0ZW1lbnQgdG8gaXRzIGxhYmVsCj4g
PiAgICAgICAgICAgICAgICAgICAgZ290byB4ZHBfb3V0Owo+ID4gICAgICAgICAgICAgICAgICAg
IF4KCl4gVGhlIHByb2JsZW1hdGljIGdvdG8gc2hvdWxkIGJlIHJlcGxhY2VkIHdpdGggYW4gZWFy
bHkgcmV0dXJuLiAoYW5kCnBlcmhhcHMgYSBjb21tZW50IHRoYXQgeW91IGNhbid0IGp1bXAgb3Zl
ciBfX2NsZWFudXAgdmFyaWFibGUKaW5pdGlhbGl6YXRpb24pLgoKT3RoZXJ3aXNlIHRoZSBjb21w
aWxlciBjYW5ub3QgcHV0IHRoZSBjbGVhbnVwIGluIHRoZSBkZXN0aW5hdGlvbiBiYXNpYwpibG9j
azsgaXQgd291bGQgaGF2ZSB0byBzcGxpdCB0aGUgZWRnZXMgYW5kIGhhdmUgYWxsIHRoZSBoYXBw
eSBwYXRocwpnbyB0byBhIHN5bnRoZXNpemVkIGJhc2ljIGJsb2NrIHRoYXQgcnVucyB0aGUgY2xl
YW51cCwgdGhlbiBqdW1wcyB0bwp0aGUgb3JpZ2luYWwgZGVzdGluYXRpb24uCgo+ID4gICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmM6ODYyNDoyOiBub3RlOiBqdW1w
IGJ5cGFzc2VzIGluaXRpYWxpemF0aW9uIG9mIHZhcmlhYmxlIHdpdGggX19hdHRyaWJ1dGVfXygo
Y2xlYW51cCkpCj4gPiAgICAgICAgICAgIGd1YXJkKGxvY2FsX2xvY2tfbmVzdGVkX2JoKSgmYnBm
X3J1bl9sb2NrLnJlZGlyZWN0X2xvY2spOwo+ID4gICAgICAgICAgICBeCj4gPiAgICBpbmNsdWRl
L2xpbnV4L2NsZWFudXAuaDoxNDI6MTU6IG5vdGU6IGV4cGFuZGVkIGZyb20gbWFjcm8gJ2d1YXJk
Jwo+ID4gICAgICAgICAgICBDTEFTUyhfbmFtZSwgX19VTklRVUVfSUQoZ3VhcmQpKQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgXgo+ID4gICAgaW5jbHVkZS9saW51eC9jb21waWxlci5oOjE4
MDoyOTogbm90ZTogZXhwYW5kZWQgZnJvbSBtYWNybyAnX19VTklRVUVfSUQnCj4gPiAgICAjZGVm
aW5lIF9fVU5JUVVFX0lEKHByZWZpeCkgX19QQVNURShfX1BBU1RFKF9fVU5JUVVFX0lEXywgcHJl
Zml4KSwgX19DT1VOVEVSX18pCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgo+
ID4gICAgaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oOjg0OjIyOiBub3RlOiBleHBhbmRl
ZCBmcm9tIG1hY3JvICdfX1BBU1RFJwo+ID4gICAgI2RlZmluZSBfX1BBU1RFKGEsYikgX19fUEFT
VEUoYSxiKQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgXgo+ID4gICAgaW5jbHVkZS9saW51
eC9jb21waWxlcl90eXBlcy5oOjgzOjIzOiBub3RlOiBleHBhbmRlZCBmcm9tIG1hY3JvICdfX19Q
QVNURScKPiA+ICAgICNkZWZpbmUgX19fUEFTVEUoYSxiKSBhIyNiCj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgXgo+ID4gICAgPHNjcmF0Y2ggc3BhY2U+OjUyOjE6IG5vdGU6IGV4cGFuZGVk
IGZyb20gaGVyZQo+ID4gICAgX19VTklRVUVfSURfZ3VhcmQ3NTMKPiA+ICAgIF4KPiA+ICAgIDEg
ZXJyb3IgZ2VuZXJhdGVkLgo+Cj4gSSBpbml0aWFsbHkgdGhvdWdodCB0aGF0IHRoaXMgbWF5IGhh
dmUgYmVlbgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9DbGFuZ0J1aWx0TGludXgvbGludXgvaXNzdWVz
LzE4ODYgYnV0IGFzbSBnb3RvIGlzIG5vdAo+IGludm9sdmVkIGhlcmUuCj4KPiBUaGlzIGVycm9y
IG9jY3VycyBiZWNhdXNlIGp1bXBpbmcgb3ZlciB0aGUgaW5pdGlhbGl6YXRpb24gb2YgYSB2YXJp
YWJsZQo+IGRlY2xhcmVkIHdpdGggX19hdHRyaWJ1dGVfXygoX19jbGVhbnVwX18oLi4uKSkpIGRv
ZXMgbm90IHByZXZlbnQgdGhlCj4gY2xlYW4gdXAgZnVuY3Rpb24gZnJvbSBydW5uaW5nIGFzIG9u
ZSBtYXkgZXhwZWN0IGl0IHRvLCBidXQgY291bGQKPiBpbnN0ZWFkIHJlc3VsdCBpbiB0aGUgY2xl
YW4gdXAgZnVuY3Rpb24gZ2V0dGluZyBydW4gb24gdW5pbml0aWFsaXplZAo+IG1lbW9yeS4gQSBj
b250cml2ZWQgZXhhbXBsZSAoc2VlIHRoZSBib3R0b20gb2YgdGhlICJPdXRwdXQiIHRhYnMgZm9y
IHRoZQo+IGV4ZWN1dGlvbiBvdXRwdXQpOgo+Cj4gaHR0cHM6Ly9nb2Rib2x0Lm9yZy96Lzlidkdi
b3h2Ywo+Cj4gV2hpbGUgdGhlcmUgaXMgYSB3YXJuaW5nIGZyb20gR0NDIGluIHRoYXQgZXhhbXBs
ZSwgSSBkb24ndCBzZWUgb25lIGluCj4gdGhlIGtlcm5lbCdzIGNhc2UuIEkgc2VlIHRoZXJlIGlz
IGFuIG9wZW4gR0NDIGlzc3VlIGFyb3VuZCB0aGlzIHByb2JsZW06Cj4KPiBodHRwczovL2djYy5n
bnUub3JnL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD05MTk1MQo+Cj4gV2hpbGUgaXQgaXMgcG9z
c2libGUgdGhhdCB0aGVyZSBtYXkgbm90IGFjdHVhbGx5IGJlIGEgcHJvYmxlbSB3aXRoIGhvdwo+
IHRoZSBrZXJuZWwgdXNlcyBfX2F0dHJpYnV0ZV9fKChfX2NsZWFudXBfXyguLi4pKSkgYW5kIGdv
dG9zLCBJIHRoaW5rCj4gY2xhbmcncyBiZWhhdmlvciBpcyByZWFzb25hYmxlIGdpdmVuIHRoZSBw
b3RlbnRpYWwgZm9vdGd1bnMgdGhhdCB0aGlzCj4gY29uc3RydWN0IGhhcy4KPgo+IENoZWVycywK
PiBOYXRoYW4KPgoKCi0tIApUaGFua3MsCn5OaWNrIERlc2F1bG5pZXJzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
