Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F9F7CC9E0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 19:26:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA05E821B9;
	Tue, 17 Oct 2023 17:26:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA05E821B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697563591;
	bh=wpbvM/Q1XSatY8D2LYI94RhNEP0sL3X6aJ/3wsaW+sU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HdOffkjSoH/qOq2EoPl4p7JTVoZqFghwkkeRPbtLY2X0kWrzrffLOa1rrKs9RVErW
	 044C/Bq1Bl2VVVaVvMRO5+ON7KVu8mA5hxsGQebiPTv2iMauB11wxT4en8FHDjwpf7
	 iiYABQYxTIM1vcLRMKKIvmzYHrxx51/lsEYb8/rDKfgWT3xsUnF5Ms3ueIwNh6sNxj
	 abREcKcqLTLKhHK/rA6oksaIrPC7z+RqjghEAMjCsAnww3ZsPiR4Bg8mIO2/9lPge9
	 a+Gh9a1wCzJStESIOmBoTG5e0lKql5ArjkF4otVmFcHyy0BYwSQuSo7+90ZV5k0Kdp
	 cwq5dA4FFH4fA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XA01FKBNOwge; Tue, 17 Oct 2023 17:26:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26972820E4;
	Tue, 17 Oct 2023 17:26:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26972820E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 267A61BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 14:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1EF241DA0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 14:18:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1EF241DA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4QHuISxXmT-V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 14:18:23 +0000 (UTC)
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 138C941D9C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 14:18:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 138C941D9C
Received: by mail-yb1-xb32.google.com with SMTP id
 3f1490d57ef6-d849df4f1ffso6533119276.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 07:18:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697552302; x=1698157102;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NI422ZwFC+FZy06/SEvrLc/oafnXORoAgmBSlqnJCBc=;
 b=qyw5Hvir0DVh8khGjStZlJDTI+MPK06xyyxk5b2dJOEngoUjhdl8o9TTXyWlPrHcLd
 HbcXkgHD4o+YRTzLGQojB0o42QrLlfUjmDLVXHysznvD0X2F3w35dd6rs3KbGMJxeeyz
 RGrhaoGV+oiUleQRIWWGI5dXeVUaS9nKR3gr8dVssbwnfYYt4sLRiCsetFBVk3oVin1K
 yyPpjXve7tUAYtGfBBIpB4L6bJx3OzafOePYPby8UQc8o+RYKTnrwe2kobxVp2rP//cY
 EsukFtGGqGTgk0eaMsITYR7NIfsirhihDxx65mIyAGQg5fiCQ61Tniss39EatD15rAEb
 Or5w==
X-Gm-Message-State: AOJu0YzPGJOkpyuQUzk+b5/T+JT+q/CSpcW1jS9JLHBuAKM/Gwi25qbA
 gF2McysGLRttR0qWyxForV2wiqcIn/NDnc5FdTg=
X-Google-Smtp-Source: AGHT+IGV/cNOijgcyX6YbdaC3gix3tYgeDlyLmcozvJjGQPyfoC73JRgCPVyHX5pMQVaZ6seRvCciLzWohic8S0Q594=
X-Received: by 2002:a25:e689:0:b0:d9b:df08:811d with SMTP id
 d131-20020a25e689000000b00d9bdf08811dmr2272203ybh.32.1697552301876; Tue, 17
 Oct 2023 07:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
In-Reply-To: <20231016152343.1fc7c7be@kernel.org>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Tue, 17 Oct 2023 23:18:10 +0900
Message-ID: <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Tue, 17 Oct 2023 17:25:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697552302; x=1698157102; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NI422ZwFC+FZy06/SEvrLc/oafnXORoAgmBSlqnJCBc=;
 b=F1Nrr5URnz0xzYCJ7KkdMnGbETF32pflHERx/xr2jckBn0H8qLHvgkTVh/fwmCoxCl
 Kx8gMKkcj/iIZaOC1F8lhd8JtCXylwddgHEUXrkfRKM1sxnKH/X3uuvhKzGSlJ6EbC4N
 kdbDOzZWibmvhxWBFskUxizgB/7nxjNTArXsZnsKxlSMuBk15AbOFWrdA79TQ7vewbR6
 CzyNKqeUxh10Vy+/4WtfxY8QVNxVFdfn13FFApqZpTD/0C6Gv77nqJGnYhHVB6xihr9r
 pkU5UqZukCpaL3c8Q8ofxwi12FHbhzr3AWAlHL6Ct9GGCCc6elScwUcscWpnisRvHRXJ
 CaAQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=F1Nrr5UR
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Harald Welte <laforge@gnumonks.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSmFrdWItc2FuIGFuZCBTaW1vbi1zYW4KVGhhbmsgeW91IGZvciByZXZpZXdpbmcgYWdhaW4h
Cgo+IFJldmlld2VkLWJ5OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+ClRoYW5rczsp
Cgo+IEFkZGluZyBXaWxsZW0sIFBhYmxvLCBhbmQgSGFyYWxkIHRvIENDIChwbGVhc2UgQ0MgdGhl
bSBvbiBmdXR1cmUKdmVyc2lvbnMpLgoKb2YgY291cnNlLiAgdGhhbmtzIQoKPiBuaXQ6IHBsZWFz
ZSBub3RlIHRoYXQgdGhlc2UgYXJlIGhleCBudW1iZXJzLAogICAgIG5leHQgdmFsdWUgYWZ0ZXIg
MHgxOSBpcyAweDFhLCBub3QgMHgyMC4KCiEhISEhIEknbSBzbyBlbWJhcnJhc3NlZC4uLi4gSSB3
aWxsIG5leHQgdmVyc2lvbiBmaXgKCj4gV2hhdCBnaXZlcyBtZSBwYXVzZSBoZXJlIGlzIHRoZSBu
dW1iZXIgb2YgZmxvdyBzdWItdHlwZXMgd2UgZGVmaW5lCj4gZm9yIEdUUCBoYXNoaW5nLgo+Cj4g
TXkgdW5kZXJzdGFuZGluZyBvZiBHVFAgaXMgbGltaXRlZCB0byB3aGF0IEkganVzdCByZWFkIG9u
IFdpa2lwZWRpYS4KPgo+IElJVUMgdGhlIEdUUEMgdnMgR1RQVSBkaXN0aW5jdGlvbiBjb21lcyBk
b3duIHRvIHRoZSBVRFAgcG9ydCBvbgo+IHdoaWNoIHRoZSBwcm90b2NvbCBydW5zPyBBcmUgdGhl
IGZyYW1lcyBhbHNvIGRpZmZlcmVudD8KPgo+IEknbSBndWVzc2luZyBVTC9ETCBhcmUgdXBsaW5r
L2Rvd25saW5rIGJ1dCB3aGF0J3MgRUg/Cj4KPiBIb3cgZG8gR1RQVV9WNF9GTE9XLCBHVFBVX0VI
X1Y0X0ZMT1csIEdUUFVfVUxfVjRfRkxPVywgYW5kCj4gR1RQVV9ETF9WNF9GTE9XIGRpZmZlcj8K
Pgo+IEtleSBxdWVzdGlvbiBpcyAtIGFyZSB0aGVyZSByZWFzb25hYmxlIHVzZSBjYXNlcyB0aGF0
IHlvdSBjYW4gdGhpbmsgb2YKPiBmb3IgZW5hYmxpbmcgR1RQIGhhc2hpbmcgZm9yIGVhY2ggb25l
IG9mIHRob3NlIGJpdHMgaW5kaXZpZHVhbGx5IG9yIGNhbgo+IHdlIGNvbWJpbmUgc29tZSBvZiB0
aGVtPwoKRmlyc3RseSwgd2hhdCBJIHdhbnQgdG8gY29udmV5IGlzIHRoYXQgdGhlIHN0cnVjdHVy
ZSBvZiBlYWNoIG9mIHRoZXNlCnBhY2tldHMgaXMgZW50aXJlbHkgZGlmZmVyZW50LiBUaGVyZWZv
cmUsIGluIHRlcm1zIG9mIGV0aHRvb2wsIHNpbmNlCnBhY2tldHMgd2l0aCB0aGUgc2FtZSBzdHJ1
Y3R1cmUgYXJlIGNvbnNpZGVyZWQgYSBmbG93LCBJIHVuZGVyc3RhbmQKdGhhdCBpdCBpcyBuZWNl
c3NhcnkgdG8gZGVmaW5lIHN1Y2ggZGlmZmVyZW50IHRoaW5ncyAoSSBhY3R1YWxseSB0aGluawp0
aGF0IHRoZSBwZW9wbGUgYXQgSW50ZWwgYXJlIGRvaW5nIGl0IHRoYXQgd2F5KS4KCkxldCBtZSBm
aXJzdCBleHBsYWluIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gR1RQQyBhbmQgR1RQVS4KVGhlIFVE
UCBwb3J0cyBhcmUgZGlmZmVyZW50IGluIEdUUEMgYW5kIEdUUFUuCldoYXQncyBmdXJ0aGVyIGRp
ZmZlcmVudCBpcyB0aGF0IGluIHRoZSBjYXNlIG9mIEdUUEMsIEdUUHYyLUMgaXMgdXNlZCwKYW5k
IGluIHRoZSBjYXNlIG9mIEdUUFUsIEdUUHYxLVUgaXMgdXNlZCwgd2hpY2ggYXJlIG1haW5zdHJl
YW0gaW4KY3VycmVudCBtb2JpbGUgY29tbXVuaWNhdGlvbnMuCgpFc3BlY2lhbGx5IHRoZSB1bmlx
dWVuZXNzIG9mIEdUUEMgY29tbXVuaWNhdGlvbiB2YXJpZXMgYWNjb3JkaW5nIHRvCnRoZSBwcm9j
ZXNzaW5nIHBoYXNlLgpDU1IgKENyZWF0ZSBTZXNzaW9uIFJlcXVlc3QpIHN0YXJ0cyBwcm9jZXNz
aW5nIGZyb20gYSBzdGF0ZSB3aGVyZSBURUlECmlzIG5vdCBpbmNsdWRlZC4gVGhlcmVmb3JlLCBp
dCBpcyBzZXBhcmF0ZWQgaW50byBjYXNlcyB3aGVyZSBwYWNrZXRzCmhhdmUgVEVJRCBhbmQgd2hl
cmUgdGhleSBkb27igJl0LgpPZiBjb3Vyc2UsIHRoZXJlIGFyZSBjYXNlcyB3aGVyZSB3ZSB3YW50
IHRvIHNwZWNpYWxseSBwcm9jZXNzIG9ubHkgdGhlCmNvbW11bmljYXRpb24gd2l0aG91dCBURUlE
LCBhbmQganVzdCBjcmVhdGluZyBhIHNlc3Npb24gaXMgb25lIG9mIHRoZQptb3JlIHZ1bG5lcmFi
bGUgcGFydHMgb2YgdGhlIG1vYmlsZSBuZXR3b3JrLgoKRUggc3RhbmRzIGZvciBFeHRlbnNpb24g
SGVhZGVyLgpUaGlzIGlzIHRoZSBjYXNlIHdpdGggR1RQVSBwYWNrZXRzIGNvbXBhdGlibGUgd2l0
aCA1Ry4gSWYgaXTigJlzIHRoZQpGbG93IERpcmVjdG9yLCBpdCByZWFkcyBhIHBhcmFtZXRlciBy
ZWxhdGVkIHRvIFFvUyBjYWxsZWQgUUZJLgpXaXRob3V0IHRoaXMsIGl0IGlzIGltcG9zc2libGUg
dG8gcHJvY2VzcyBHVFB2MSBwYWNrZXRzIGNvbXBhdGlibGUgd2l0aCA1Ry4KRnVydGhlcm1vcmUs
IHRoaXMgRXh0ZW5zaW9uIEhlYWRlciBoYXMgcGFydHMgd2hlcmUgdGhlIHNoYXBlIGRpZmZlcnMK
ZGVwZW5kaW5nIG9uIFVML0RMLCB3aGljaCBpcyBjYWxsZWQgdGhlIFBEVSBTZXNzaW9uIENvbnRh
aW5lci4KClNwZWNpZmljIHVzZSBjYXNlcyBiYXNpY2FsbHkgYXBwbHkgdG8gc2VydmljZXMgdGhh
dCB0ZXJtaW5hdGUgR1RQIGl0c2VsZi4KClRoZSBzdHJ1Y3R1cmUgb2YgcHJvY2Vzc2luZyBpbiBS
U1Mgd2l0aCBldGh0b29sIHVudGlsIG5vdyB3YXMgdG8Kc2VsZWN0IGEgZml4ZWQgc2hhcGUgb2Yg
cGFja2V0cyBhbmQgcGFyYW1ldGVycyBvZiB0aG9zZSBwYWNrZXRzIHRvCnBlcmZvcm0gUlNTLgpD
b25mb3JtaW5nIHRvIHRoaXMgZm9ybWF0IGlzIHdoeSBpdCBiZWNvbWVzIHNvIG51bWVyb3VzLgoK
CjIwMjPlubQxMOaciDE35pelKOeBqykgNzoyMyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwu
b3JnPjoKCj4KPiBUaGFua3MgZm9yIHRoZSB2MiEKPgo+IEFkZGluZyBXaWxsZW0sIFBhYmxvLCBh
bmQgSGFyYWxkIHRvIENDIChwbGVhc2UgQ0MgdGhlbSBvbiBmdXR1cmUKPiB2ZXJzaW9ucykuCj4K
PiBPbiBUaHUsIDEyIE9jdCAyMDIzIDA2OjAxOjE1ICswMDAwIFRha2VydSBIYXlhc2FrYSB3cm90
ZToKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oIGIvaW5jbHVk
ZS91YXBpL2xpbnV4L2V0aHRvb2wuaAo+ID4gaW5kZXggZjdmYmEwZGM4N2U1Li5hMmQ0ZjIwODFj
ZjMgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCj4gPiArKysg
Yi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCj4gPiBAQCAtMjAxMSw2ICsyMDExLDE4IEBA
IHN0YXRpYyBpbmxpbmUgaW50IGV0aHRvb2xfdmFsaWRhdGVfZHVwbGV4KF9fdTggZHVwbGV4KQo+
ID4gICNkZWZpbmUgICAgICBJUFY0X0ZMT1cgICAgICAgMHgxMCAgICAvKiBoYXNoIG9ubHkgKi8K
PiA+ICAjZGVmaW5lICAgICAgSVBWNl9GTE9XICAgICAgIDB4MTEgICAgLyogaGFzaCBvbmx5ICov
Cj4gPiAgI2RlZmluZSAgICAgIEVUSEVSX0ZMT1cgICAgICAweDEyICAgIC8qIHNwZWMgb25seSAo
ZXRoZXJfc3BlYykgKi8KPiA+ICsjZGVmaW5lIEdUUFVfVjRfRkxPVyAweDEzICAgIC8qIGhhc2gg
b25seSAqLwo+ID4gKyNkZWZpbmUgR1RQVV9WNl9GTE9XIDB4MTQgICAgLyogaGFzaCBvbmx5ICov
Cj4gPiArI2RlZmluZSBHVFBDX1Y0X0ZMT1cgMHgxNSAgICAvKiBoYXNoIG9ubHkgKi8KPiA+ICsj
ZGVmaW5lIEdUUENfVjZfRkxPVyAweDE2ICAgIC8qIGhhc2ggb25seSAqLwo+ID4gKyNkZWZpbmUg
R1RQQ19URUlEX1Y0X0ZMT1cgMHgxNyAgICAgICAvKiBoYXNoIG9ubHkgKi8KPiA+ICsjZGVmaW5l
IEdUUENfVEVJRF9WNl9GTE9XIDB4MTggICAgICAgLyogaGFzaCBvbmx5ICovCj4gPiArI2RlZmlu
ZSBHVFBVX0VIX1Y0X0ZMT1cgMHgxOSAvKiBoYXNoIG9ubHkgKi8KPiA+ICsjZGVmaW5lIEdUUFVf
RUhfVjZfRkxPVyAweDIwIC8qIGhhc2ggb25seSAqLwo+Cj4gbml0OiBwbGVhc2Ugbm90ZSB0aGF0
IHRoZXNlIGFyZSBoZXggbnVtYmVycywKPiAgICAgIG5leHQgdmFsdWUgYWZ0ZXIgMHgxOSBpcyAw
eDFhLCBub3QgMHgyMC4KPgo+ID4gKyNkZWZpbmUgR1RQVV9VTF9WNF9GTE9XIDB4MjEgLyogaGFz
aCBvbmx5ICovCj4gPiArI2RlZmluZSBHVFBVX1VMX1Y2X0ZMT1cgMHgyMiAvKiBoYXNoIG9ubHkg
Ki8KPiA+ICsjZGVmaW5lIEdUUFVfRExfVjRfRkxPVyAweDIzIC8qIGhhc2ggb25seSAqLwo+ID4g
KyNkZWZpbmUgR1RQVV9ETF9WNl9GTE9XIDB4MjQgLyogaGFzaCBvbmx5ICovCj4gPiAgLyogRmxh
ZyB0byBlbmFibGUgYWRkaXRpb25hbCBmaWVsZHMgaW4gc3RydWN0IGV0aHRvb2xfcnhfZmxvd19z
cGVjICovCj4gPiAgI2RlZmluZSAgICAgIEZMT1dfRVhUICAgICAgICAweDgwMDAwMDAwCj4gPiAg
I2RlZmluZSAgICAgIEZMT1dfTUFDX0VYVCAgICAweDQwMDAwMDAwCj4KPiBXaGF0IGdpdmVzIG1l
IHBhdXNlIGhlcmUgaXMgdGhlIG51bWJlciBvZiBmbG93IHN1Yi10eXBlcyB3ZSBkZWZpbmUKPiBm
b3IgR1RQIGhhc2hpbmcuCj4KPiBNeSB1bmRlcnN0YW5kaW5nIG9mIEdUUCBpcyBsaW1pdGVkIHRv
IHdoYXQgSSBqdXN0IHJlYWQgb24gV2lraXBlZGlhLgo+Cj4gSUlVQyB0aGUgR1RQQyB2cyBHVFBV
IGRpc3RpbmN0aW9uIGNvbWVzIGRvd24gdG8gdGhlIFVEUCBwb3J0IG9uCj4gd2hpY2ggdGhlIHBy
b3RvY29sIHJ1bnM/IEFyZSB0aGUgZnJhbWVzIGFsc28gZGlmZmVyZW50Pwo+Cj4gSSdtIGd1ZXNz
aW5nIFVML0RMIGFyZSB1cGxpbmsvZG93bmxpbmsgYnV0IHdoYXQncyBFSD8KPgo+IEhvdyBkbyBH
VFBVX1Y0X0ZMT1csIEdUUFVfRUhfVjRfRkxPVywgR1RQVV9VTF9WNF9GTE9XLCBhbmQKPiBHVFBV
X0RMX1Y0X0ZMT1cgZGlmZmVyPwo+Cj4gS2V5IHF1ZXN0aW9uIGlzIC0gYXJlIHRoZXJlIHJlYXNv
bmFibGUgdXNlIGNhc2VzIHRoYXQgeW91IGNhbiB0aGluayBvZgo+IGZvciBlbmFibGluZyBHVFAg
aGFzaGluZyBmb3IgZWFjaCBvbmUgb2YgdGhvc2UgYml0cyBpbmRpdmlkdWFsbHkgb3IgY2FuCj4g
d2UgY29tYmluZSBzb21lIG9mIHRoZW0/Cj4KPiA+IEBAIC0yMDI1LDYgKzIwMzcsNyBAQCBzdGF0
aWMgaW5saW5lIGludCBldGh0b29sX3ZhbGlkYXRlX2R1cGxleChfX3U4IGR1cGxleCkKPiA+ICAj
ZGVmaW5lICAgICAgUlhIX0lQX0RTVCAgICAgICgxIDw8IDUpCj4gPiAgI2RlZmluZSAgICAgIFJY
SF9MNF9CXzBfMSAgICAoMSA8PCA2KSAvKiBzcmMgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NU
UCAqLwo+ID4gICNkZWZpbmUgICAgICBSWEhfTDRfQl8yXzMgICAgKDEgPDwgNykgLyogZHN0IHBv
cnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPiA+ICsjZGVmaW5lICAgICAgUlhIX0dUUF9U
RUlEICAgICgxIDw8IDgpIC8qIHRlaWQgaW4gY2FzZSBvZiBHVFAgKi8KPiA+ICAjZGVmaW5lICAg
ICAgUlhIX0RJU0NBUkQgICAgICgxIDw8IDMxKQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
