Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4735A5DA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 22:25:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 11159842E9;
	Fri, 28 Jun 2019 20:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-s4QgcU8Hm8; Fri, 28 Jun 2019 20:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6F00821DB;
	Fri, 28 Jun 2019 20:25:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ACEBF1BF343
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A87FA875F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NHi8JhImlGDi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 20:25:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB818875EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:25:21 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id w17so7775718qto.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 13:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=YgOkvMRbAoBV9RdEWjxdL5LcNeoNsF2571Oh25CeOBw=;
 b=QzE1KzevnHvw2DlPmsGsEfdOepxU79Es3UiyhdeOMln6yJzTbKeyitv9bFSDwj3Rx9
 66XPQkE8+TsusPrbHla/JjYTLX/tFvHUMEutclrzhlEuVSjm0/nF2I4uaBKTVPhyVL/E
 FS/05Djg9y/041KBPy3cgG/3AS3mxCiH7Vd5NSdENcfZ1SJ37dB0jpMoKuWYldGM+YBY
 oXdQ/71UBOX2O+4V3A5uo2wezvd/0HCZbGB8lJ1LFl8VDGahWa6AJ/Ez8B/qf4j/Fk5y
 Av+RrkoQc/kUXMvimtRI6d0CG/9Bks/3EpPvUMjPkmC5RWm8goEPdjw3b1PSCarr3TVg
 Cz3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=YgOkvMRbAoBV9RdEWjxdL5LcNeoNsF2571Oh25CeOBw=;
 b=rx9ybeTQUWrEPPe8gHNNanj3tmpypaUPMJ+HJUdKAR9TBl2Gsars1Aki18TaCFyWiB
 j3kTwkNpYBkhgOBsVnTrGGX4Y5opde8nOUMd9hOyHOKh6MiyHhwwLpC/gGjxEwOsQMLG
 fzLI80Br5Ch91PlyMzhCgK/Va9DUoyAokakhgXomSVDNXcJmzZDiQ4bmoB6u4vMUuUns
 URAdHsQRTBTTRdWW2mXsAd4v9JZz+xEkXr7WdzKuu26pykINclJHzzNz1eIYoIdqwC26
 t6M78n6pH9r7RP/pGOkK4Ph6iB/5QF32prkbll7naaRCoiBkA2FD1DsZwSD5SxuC+vgb
 CHYQ==
X-Gm-Message-State: APjAAAVG1QEATcn9HUo5hfCmh+gOfy30/JXp9VW5MtSFqzSwRtA6HgKz
 0fQYMRwco86s05JpD30P/lfdiQ==
X-Google-Smtp-Source: APXvYqxYTPmzEj683koEfyjLlMd0M3Tt8zuPQO5h4/CE4XS5HzFO8KqqjrXRaM6yHId7odT4p28uog==
X-Received: by 2002:a0c:b90a:: with SMTP id u10mr10012395qvf.201.1561753520824; 
 Fri, 28 Jun 2019 13:25:20 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id f132sm1519910qke.88.2019.06.28.13.25.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 13:25:20 -0700 (PDT)
Date: Fri, 28 Jun 2019 13:25:16 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <20190628132516.723ef517@cakuba.netronome.com>
In-Reply-To: <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
 <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
 <20190627142534.4f4b8995@cakuba.netronome.com>
 <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 00/11] XDP unaligned chunk placement
 support
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ciara.loftus@intel.com,
 ast@kernel.org, intel-wired-lan@lists.osuosl.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyOCBKdW4gMjAxOSAxNzoxOTowOSArMDEwMCwgTGFhdHosIEtldmluIHdyb3RlOgo+
IE9uIDI3LzA2LzIwMTkgMjI6MjUsIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+ID4gT24gVGh1LCAy
NyBKdW4gMjAxOSAxMjoxNDo1MCArMDEwMCwgTGFhdHosIEtldmluIHdyb3RlOiAgCj4gPj4gT24g
dGhlIGFwcGxpY2F0aW9uIHNpZGUgKHhkcHNvY2spLCB3ZSBkb24ndCBoYXZlIHRvIHdvcnJ5IGFi
b3V0IHRoZSB1c2VyCj4gPj4gZGVmaW5lZCBoZWFkcm9vbSwgc2luY2UgaXQgaXMgMCwgc28gd2Ug
b25seSBuZWVkIHRvIGFjY291bnQgZm9yIHRoZQo+ID4+IFhEUF9QQUNLRVRfSEVBRFJPT00gd2hl
biBjb21wdXRpbmcgdGhlIG9yaWdpbmFsIGFkZHJlc3MgKGluIHRoZSBkZWZhdWx0Cj4gPj4gc2Nl
bmFyaW8pLiAgCj4gPiBUaGF0IGFzc3VtZXMgc3BlY2lmaWMgbGF5b3V0IGZvciB0aGUgZGF0YSBp
bnNpZGUgdGhlIGJ1ZmZlci4gIFNvbWUgTklDcwo+ID4gd2lsbCBwcmVwZW5kIGluZm9ybWF0aW9u
IGxpa2UgdGltZXN0YW1wIHRvIHRoZSBwYWNrZXQsIG1lYW5pbmcgdGhlCj4gPiBwYWNrZXQgd291
bGQgc3RhcnQgYXQgb2Zmc2V0IFhEUF9QQUNLRVRfSEVBRFJPT00gKyBtZXRhZGF0YSBsZW4uLiAg
Cj4gCj4gWWVzLCBpZiBOSUNzIHByZXBlbmQgZXh0cmEgZGF0YSB0byB0aGUgcGFja2V0IHRoYXQg
d291bGQgYmUgYSBwcm9ibGVtIGZvcgo+IHVzaW5nIHRoaXMgZmVhdHVyZSBpbiBpc29sYXRpb24u
IEhvd2V2ZXIsIGlmIHdlIGFsc28gYWRkIGluIHN1cHBvcnQgZm9yIAo+IGluLW9yZGVyIFJYIGFu
ZCBUWCByaW5ncywgdGhhdCB3b3VsZCBubyBsb25nZXIgYmUgYW4gaXNzdWUuCgpDYW4geW91IHNo
ZWQgbW9yZSBsaWdodCBvbiBpbi1vcmRlciByaW5ncz8gIERvIHlvdSBtZWFuIHRoYXQgUlggZnJh
bWVzCmNvbWUgaW4gb3JkZXIgYnVmZmVycyB3ZXJlIHBsYWNlZCBpbiB0aGUgZmlsbCBxdWV1ZT8g
IFRoYXQgd291bGRuJ3QKbWFrZSBwcmFjdGljYWwgc2Vuc2UsIG5vPyAgRXZlbiBpZiB0aGUgYXBw
bGljYXRpb24gZG9lcyBubwpyZW9yZGVyaW5nIHRoZXJlIGlzIGFsc28gWERQX0RST1AgYW5kIFhE
UF9UWC4gIFBsZWFzZSBleHBsYWluIDopCgo+IEhvd2V2ZXIsIGV2ZW4gZm9yIE5JQ3Mgd2hpY2gg
ZG8gcHJlcGVuZCBkYXRhLCB0aGlzIHBhdGNoc2V0IHNob3VsZAo+IG5vdCBicmVhayBhbnl0aGlu
ZyB0aGF0IGlzIGN1cnJlbnRseSB3b3JraW5nLgoKTXkgdW5kZXJzdGFuZGluZyBmcm9tIHRoZSBi
ZWdpbm5pbmdzIG9mIEFGX1hEUCB3YXMgdGhhdCB3ZSB3ZXJlCnNlYXJjaGluZyBmb3IgYSBmb3Jt
YXQgZmxleGlibGUgZW5vdWdoIHRvIHN1cHBvcnQgbW9zdCBpZiBub3QgYWxsIE5JQ3MuCkNyZWF0
aW5nIGFuIEFCSSB3aGljaCB3aWxsIHByZWNsdWRlIHZlbmRvcnMgZnJvbSBzdXBwb3J0aW5nIERQ
REsgdmlhCkFGX1hEUCB3b3VsZCBzZXJpb3VzbHkgdW5kZXJtaW5lIHRoZSBuZXV0cmFsaXR5IGFz
cGVjdC4KCj4gPiBJIHRoaW5rIHRoYXQncyB2ZXJ5IGxpbWl0aW5nLiAgV2hhdCBpcyB0aGUgY2hh
bGxlbmdlIGluIHByb3ZpZGluZwo+ID4gYWxpZ25lZCBhZGRyZXNzZXMsIGV4YWN0bHk/ICAKPiBU
aGUgY2hhbGxlbmdlcyBhcmUgdHdvLWZvbGQ6Cj4gMSkgaXQgcHJldmVudHMgdXNpbmcgYXJiaXRy
YXJ5IGJ1ZmZlciBzaXplcywgd2hpY2ggd2lsbCBiZSBhbiBpc3N1ZSAKPiBzdXBwb3J0aW5nIGUu
Zy4ganVtYm8gZnJhbWVzIGluIGZ1dHVyZS4KClByZXN1bWFibHkgc3VwcG9ydCBmb3IganVtYm9z
IHdvdWxkIHJlcXVpcmUgYSBtdWx0aS1idWZmZXIgc2V0dXAsIGFuZAp0aGVyZWZvcmUgZXh0ZW5z
aW9ucyB0byB0aGUgcmluZyBmb3JtYXQuIFNob3VsZCB3ZSBwZXJoYXBzIGxvb2sgaW50bwppbXBs
ZW1lbnRpbmcgdW5hbGlnbmVkIGNodW5rcyBieSBleHRlbmRpbmcgcmluZyBmb3JtYXQgYXMgd2Vs
bD8KCj4gMikgaGlnaGVyIGxldmVsIHVzZXItc3BhY2UgZnJhbWV3b3JrcyB3aGljaCBtYXkgd2Fu
dCB0byB1c2UgQUZfWERQLCBzdWNoIAo+IGFzIERQREssIGRvIG5vdCBjdXJyZW50bHkgc3VwcG9y
dCBoYXZpbmcgYnVmZmVycyB3aXRoICdmaXhlZCcgYWxpZ25tZW50Lgo+ICDCoMKgwqAgVGhlIHJl
YXNvbiB0aGF0IERQREsgdXNlcyBhcmJpdHJhcnkgcGxhY2VtZW50IGlzIHRoYXQ6Cj4gIMKgwqDC
oCDCoMKgwqAgLSBpdCB3b3VsZCBzdG9wIHRoaW5ncyB3b3JraW5nIG9uIGNlcnRhaW4gTklDcyB3
aGljaCBuZWVkIHRoZSAKPiBhY3R1YWwgd3JpdGFibGUgc3BhY2Ugc3BlY2lmaWVkIGluIHVuaXRz
IG9mIDFrIC0gdGhlcmVmb3JlIHdlIG5lZWQgMmsgKyAKPiBtZXRhZGF0YSBzcGFjZS4KPiAgwqDC
oMKgIMKgwqDCoCAtIHdlIHBsYWNlIHBhZGRpbmcgYmV0d2VlbiBidWZmZXJzIHRvIGF2b2lkIGNv
bnN0YW50bHkgaGl0dGluZyAKPiB0aGUgc2FtZSBtZW1vcnkgY2hhbm5lbHMgd2hlbiBhY2Nlc3Np
bmcgbWVtb3J5Lgo+ICDCoMKgwqAgwqDCoMKgIC0gaXQgYWxsb3dzIHRoZSBhcHBsaWNhdGlvbiB0
byBjaG9vc2UgdGhlIGFjdHVhbCBidWZmZXIgc2l6ZSBpdCAKPiB3YW50cyB0byB1c2UuCj4gIMKg
wqDCoCBXZSBtYWtlIHVzZSBvZiB0aGUgYWJvdmUgdG8gYWxsb3cgdXMgdG8gc3BlZWQgdXAgcHJv
Y2Vzc2luZyAKPiBzaWduaWZpY2FudGx5IGFuZCBhbHNvIHJlZHVjZSB0aGUgcGFja2V0IGJ1ZmZl
ciBtZW1vcnkgc2l6ZS4KPiAKPiAgwqDCoMKgIE5vdCBoYXZpbmcgYXJiaXRyYXJ5IGJ1ZmZlciBh
bGlnbm1lbnQgYWxzbyBtZWFucyBhbiBBRl9YRFAgZHJpdmVyIAo+IGZvciBEUERLIGNhbm5vdCBi
ZSBhIGRyb3AtaW4gcmVwbGFjZW1lbnQgZm9yIGV4aXN0aW5nIGRyaXZlcnMgaW4gdGhvc2UgCj4g
ZnJhbWV3b3Jrcy4gRXZlbiB3aXRoIGEgbmV3IGNhcGFiaWxpdHkgdG8gYWxsb3cgYW4gYXJiaXRy
YXJ5IGJ1ZmZlciAKPiBhbGlnbm1lbnQsIGV4aXN0aW5nIGFwcHMgd2lsbCBuZWVkIHRvIGJlIG1v
ZGlmaWVkIHRvIHVzZSB0aGF0IG5ldyAKPiBjYXBhYmlsaXR5LgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
