Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C785D44E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 18:34:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A589F87BB8;
	Tue,  2 Jul 2019 16:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NiKxhhzjMSAt; Tue,  2 Jul 2019 16:33:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F1C2E878D7;
	Tue,  2 Jul 2019 16:33:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86FFD1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 16:33:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8075921503
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 16:33:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2JhR4J3FsXu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 16:33:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id B279C214E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 16:33:54 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id o13so3444527pgp.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Jul 2019 09:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a415cj+b469zojRykaFTgJuk67+7doyx69wFdjDpJOY=;
 b=KDcNjbg4tCf09CM1qjB3T4yBFXSqzYjGS/02Vj44JBBvrTFK/PDOpUUIRtsYjVYMzP
 aZwQSgFsr/qZ0CXqX1Hnf4Ucc5Q38p/RJRheLdpJPsVgOpClEntnYK+Rh+5DVqJB/LHf
 2HoZ8xdBNIEBtPuCGiFYr5kLbgKc0itUSdZRTFewu9o2FV4o4/GC+wk0wNrn64rqDeCn
 obadnDEsKY/gj45BJD1HuVXR/by8FEKYU7ElkWeViVtEmX0Cqa+I9CmBkynwh1WJoqDj
 BeWMQp+jhr7IWDxApDTEr8isfhII7TmTnhRJp/ozsCkHMbFkbwW7Na7l97h79jR8ZVff
 zoqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a415cj+b469zojRykaFTgJuk67+7doyx69wFdjDpJOY=;
 b=spa2LJ2W5rmaSevSidDqSP0jtLC41VaUCRsaXwd+9jbUDuefVw/Jj8Pu53w7scAmOs
 tImG1nTjTmP0g3/bkuO2CLbIMmmIiGrzqQQ/IejF0sUh4xc3ucm8k6f3NV2A0bWcQvU3
 Foqt7OfeF4PAJfkq3w0r+KDv3vY5CvftU3qUKXvUnl3LplT9SAG2o8guSJx7HJ2f7jn9
 mKJSAGq/AYd2cU4Q74+H9Q63GP78H1Tx9QRhDVF0APfM0aU9UV9LnVM+0OLgxiMxZOQ/
 2bY9ISmsyYMT8k7PinvA2uxqU1Wt73LMRdj1nmG3714Y7rxhE1zAd3ky+k/+ADf+3zlm
 yBKA==
X-Gm-Message-State: APjAAAVtYkIzIFrO40I5l/fwzI93RDU7LEqbRTy6qlJAphafv1k6m3pZ
 IYtvnioNwMkyCMWDdVdJxzY=
X-Google-Smtp-Source: APXvYqyDgbS/Z9bd2qR8BGLK6xdWObcgdOJwjUCu9r46yWdWK9T+m6JJ+0w1c3n+qvxTk2OqvO/isg==
X-Received: by 2002:a17:90a:208e:: with SMTP id
 f14mr6668866pjg.57.1562085234323; 
 Tue, 02 Jul 2019 09:33:54 -0700 (PDT)
Received: from [172.20.54.151] ([2620:10d:c090:200::ef17])
 by smtp.gmail.com with ESMTPSA id a64sm11720662pgc.53.2019.07.02.09.33.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 09:33:53 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Richardson, Bruce" <bruce.richardson@intel.com>
Date: Tue, 02 Jul 2019 09:33:52 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <3510BE85-6B1B-4BB4-9640-ECEE2572DB4E@gmail.com>
In-Reply-To: <59AF69C657FD0841A61C55336867B5B07ED8B210@IRSMSX103.ger.corp.intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
 <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
 <20190627142534.4f4b8995@cakuba.netronome.com>
 <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
 <BAE24CBF-416D-4665-B2C9-CE1F5EAE28FF@gmail.com>
 <07e404eb-f712-b15a-4884-315aff3f7c7d@intel.com>
 <20190701142002.1b17cc0b@cakuba.netronome.com>
 <59AF69C657FD0841A61C55336867B5B07ED8B210@IRSMSX103.ger.corp.intel.com>
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>, daniel@iogearbox.net, "Laatz,
 Kevin" <kevin.laatz@intel.com>, "Loftus, Ciara" <ciara.loftus@intel.com>,
 ast@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, "Topel, Bjorn" <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyIEp1bCAyMDE5LCBhdCAyOjI3LCBSaWNoYXJkc29uLCBCcnVjZSB3cm90ZToKCj4+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IEpha3ViIEtpY2luc2tpIFttYWlsdG86
amFrdWIua2ljaW5za2lAbmV0cm9ub21lLmNvbV0KPj4gU2VudDogTW9uZGF5LCBKdWx5IDEsIDIw
MTkgMTA6MjAgUE0KPj4gVG86IExhYXR6LCBLZXZpbiA8a2V2aW4ubGFhdHpAaW50ZWwuY29tPgo+
PiBDYzogSm9uYXRoYW4gTGVtb24gPGpvbmF0aGFuLmxlbW9uQGdtYWlsLmNvbT47IAo+PiBuZXRk
ZXZAdmdlci5rZXJuZWwub3JnOwo+PiBhc3RAa2VybmVsLm9yZzsgZGFuaWVsQGlvZ2VhcmJveC5u
ZXQ7IFRvcGVsLCBCam9ybgo+PiA8Ympvcm4udG9wZWxAaW50ZWwuY29tPjsgS2FybHNzb24sIE1h
Z251cyAKPj4gPG1hZ251cy5rYXJsc3NvbkBpbnRlbC5jb20+Owo+PiBicGZAdmdlci5rZXJuZWwu
b3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgUmljaGFyZHNvbiwgCj4+IEJy
dWNlCj4+IDxicnVjZS5yaWNoYXJkc29uQGludGVsLmNvbT47IExvZnR1cywgQ2lhcmEgPGNpYXJh
LmxvZnR1c0BpbnRlbC5jb20+Cj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMDAvMTFdIFhEUCB1bmFs
aWduZWQgY2h1bmsgcGxhY2VtZW50IHN1cHBvcnQKPj4KPj4gT24gTW9uLCAxIEp1bCAyMDE5IDE1
OjQ0OjI5ICswMTAwLCBMYWF0eiwgS2V2aW4gd3JvdGU6Cj4+PiBPbiAyOC8wNi8yMDE5IDIxOjI5
LCBKb25hdGhhbiBMZW1vbiB3cm90ZToKPj4+PiBPbiAyOCBKdW4gMjAxOSwgYXQgOToxOSwgTGFh
dHosIEtldmluIHdyb3RlOgo+Pj4+PiBPbiAyNy8wNi8yMDE5IDIyOjI1LCBKYWt1YiBLaWNpbnNr
aSB3cm90ZToKPj4+Pj4+IEkgdGhpbmsgdGhhdCdzIHZlcnkgbGltaXRpbmcuwqAgV2hhdCBpcyB0
aGUgY2hhbGxlbmdlIGluIAo+Pj4+Pj4gcHJvdmlkaW5nCj4+Pj4+PiBhbGlnbmVkIGFkZHJlc3Nl
cywgZXhhY3RseT8KPj4+Pj4gVGhlIGNoYWxsZW5nZXMgYXJlIHR3by1mb2xkOgo+Pj4+PiAxKSBp
dCBwcmV2ZW50cyB1c2luZyBhcmJpdHJhcnkgYnVmZmVyIHNpemVzLCB3aGljaCB3aWxsIGJlIGFu
IAo+Pj4+PiBpc3N1ZQo+Pj4+PiBzdXBwb3J0aW5nIGUuZy4ganVtYm8gZnJhbWVzIGluIGZ1dHVy
ZS4KPj4+Pj4gMikgaGlnaGVyIGxldmVsIHVzZXItc3BhY2UgZnJhbWV3b3JrcyB3aGljaCBtYXkg
d2FudCB0byB1c2UgCj4+Pj4+IEFGX1hEUCwKPj4+Pj4gc3VjaCBhcyBEUERLLCBkbyBub3QgY3Vy
cmVudGx5IHN1cHBvcnQgaGF2aW5nIGJ1ZmZlcnMgd2l0aCAnZml4ZWQnCj4+Pj4+IGFsaWdubWVu
dC4KPj4+Pj4gwqDCoMKgIFRoZSByZWFzb24gdGhhdCBEUERLIHVzZXMgYXJiaXRyYXJ5IHBsYWNl
bWVudCBpcyB0aGF0Ogo+Pj4+PiDCoMKgwqAgwqDCoMKgIC0gaXQgd291bGQgc3RvcCB0aGluZ3Mg
d29ya2luZyBvbiBjZXJ0YWluIE5JQ3Mgd2hpY2ggCj4+Pj4+IG5lZWQKPj4+Pj4gdGhlIGFjdHVh
bCB3cml0YWJsZSBzcGFjZSBzcGVjaWZpZWQgaW4gdW5pdHMgb2YgMWsgLSB0aGVyZWZvcmUgd2UK
Pj4+Pj4gbmVlZCAyawo+Pj4+PiArIG1ldGFkYXRhIHNwYWNlLgo+Pj4+PiDCoMKgwqAgwqDCoMKg
IC0gd2UgcGxhY2UgcGFkZGluZyBiZXR3ZWVuIGJ1ZmZlcnMgdG8gYXZvaWQgCj4+Pj4+IGNvbnN0
YW50bHkKPj4+Pj4gaGl0dGluZyB0aGUgc2FtZSBtZW1vcnkgY2hhbm5lbHMgd2hlbiBhY2Nlc3Np
bmcgbWVtb3J5Lgo+Pj4+PiDCoMKgwqAgwqDCoMKgIC0gaXQgYWxsb3dzIHRoZSBhcHBsaWNhdGlv
biB0byBjaG9vc2UgdGhlIGFjdHVhbCAKPj4+Pj4gYnVmZmVyCj4+Pj4+IHNpemUgaXQgd2FudHMg
dG8gdXNlLgo+Pj4+PiDCoMKgwqAgV2UgbWFrZSB1c2Ugb2YgdGhlIGFib3ZlIHRvIGFsbG93IHVz
IHRvIHNwZWVkIHVwIHByb2Nlc3NpbmcKPj4+Pj4gc2lnbmlmaWNhbnRseSBhbmQgYWxzbyByZWR1
Y2UgdGhlIHBhY2tldCBidWZmZXIgbWVtb3J5IHNpemUuCj4+Pj4+Cj4+Pj4+IMKgwqDCoCBOb3Qg
aGF2aW5nIGFyYml0cmFyeSBidWZmZXIgYWxpZ25tZW50IGFsc28gbWVhbnMgYW4gQUZfWERQCj4+
Pj4+IGRyaXZlciBmb3IgRFBESyBjYW5ub3QgYmUgYSBkcm9wLWluIHJlcGxhY2VtZW50IGZvciBl
eGlzdGluZwo+Pj4+PiBkcml2ZXJzIGluIHRob3NlIGZyYW1ld29ya3MuIEV2ZW4gd2l0aCBhIG5l
dyBjYXBhYmlsaXR5IHRvIGFsbG93IAo+Pj4+PiBhbgo+Pj4+PiBhcmJpdHJhcnkgYnVmZmVyIGFs
aWdubWVudCwgZXhpc3RpbmcgYXBwcyB3aWxsIG5lZWQgdG8gYmUgbW9kaWZpZWQKPj4+Pj4gdG8g
dXNlIHRoYXQgbmV3IGNhcGFiaWxpdHkuCj4+Pj4KPj4+PiBTaW5jZSBhbGwgYnVmZmVycyBpbiB0
aGUgdW1lbSBhcmUgdGhlIHNhbWUgY2h1bmsgc2l6ZSwgdGhlIG9yaWdpbmFsCj4+Pj4gYnVmZmVy
IGFkZHJlc3MgY2FuIGJlIHJlY2FsY3VsYXRlZCB3aXRoIHNvbWUgbXVsdGlwbHkvc2hpZnQgbWF0
aC4KPj4+PiBIb3dldmVyLCB0aGlzIGlzIG1vcmUgZXhwZW5zaXZlIHRoYW4ganVzdCBhIG1hc2sg
b3BlcmF0aW9uLgo+Pj4KPj4+IFllcywgd2UgY2FuIGRvIHRoaXMuCj4+Cj4+IFRoYXQnZCBiZSBi
ZXN0LCBjYW4gRFBESyByZWFzb25hYmx5IGd1YXJhbnRlZSB0aGUgc2xpY2luZyBpcyB1bmlmb3Jt
Pwo+PiBFLmcuIGl0J3Mgbm90IGRlc3BlcmF0ZSBidWZmZXIgcG9vbHMgd2l0aCBkaWZmZXJlbnQg
YmFzZXM/Cj4KPiBJdCdzIGdlbmVyYWxseSB1bmlmb3JtLCBidXQgaGFuZGxpbmcgdGhlIGNyb3Nz
aW5nIG9mIChodWdlKXBhZ2UgCj4gYm91bmRhcmllcwo+IGNvbXBsaWNhdGVzIHRoaW5ncyBhIGJp
dC4gVGhlcmVmb3JlIEkgdGhpbmsgdGhlIGZpbmFsIG9wdGlvbiBiZWxvdwo+IGlzIGJlc3QgYXMg
aXQgYXZvaWRzIGFueSBzdWNoIHByb2JsZW1zLgo+Cj4+Cj4+PiBBbm90aGVyIG9wdGlvbiB3ZSBo
YXZlIGlzIHRvIGFkZCBhIHNvY2tldCBvcHRpb24gZm9yIHF1ZXJ5aW5nIHRoZQo+Pj4gbWV0YWRh
dGEgbGVuZ3RoIGZyb20gdGhlIGRyaXZlciAoYXNzdW1pbmcgaXQgZG9lc24ndCB2YXJ5IHBlciAK
Pj4+IHBhY2tldCkuCj4+PiBXZSBjYW4gdXNlIHRoYXQgaW5mb3JtYXRpb24gdG8gZ2V0IGJhY2sg
dG8gdGhlIG9yaWdpbmFsIGFkZHJlc3MgCj4+PiB1c2luZwo+Pj4gc3VidHJhY3Rpb24uCj4+Cj4+
IFVuZm9ydHVuYXRlbHkgdGhlIG1ldGFkYXRhIGRlcGVuZHMgb24gdGhlIHBhY2tldCBhbmQgaG93
IG11Y2ggaW5mbyAKPj4gdGhlCj4+IGRldmljZSB3YXMgYWJsZSB0byBleHRyYWN0LiAgU28gaXQn
cyB2YXJpYWJsZSBsZW5ndGguCj4+Cj4+PiBBbHRlcm5hdGl2ZWx5LCB3ZSBjYW4gY2hhbmdlIHRo
ZSBSeCBkZXNjcmlwdG9yIGZvcm1hdCB0byBpbmNsdWRlIHRoZQo+Pj4gbWV0YWRhdGEgbGVuZ3Ro
LiBXZSBjb3VsZCBkbyB0aGlzIGluIGEgY291cGxlIG9mIHdheXMsIGZvciBleGFtcGxlLAo+Pj4g
cmF0aGVyIHRoYW4gcmV0dXJuaW5nIHRoZSBhZGRyZXNzIGFzIHRoZSBzdGFydCBvZiB0aGUgcGFj
a2V0LCAKPj4+IGluc3RlYWQKPj4+IHJldHVybiB0aGUgYnVmZmVyIGFkZHJlc3MgdGhhdCB3YXMg
cGFzc2VkIGluLCBhbmQgYWRkaW5nIGFub3RoZXIKPj4+IDE2LWJpdCBmaWVsZCB0byBzcGVjaWZ5
IHRoZSBzdGFydCBvZiBwYWNrZXQgb2Zmc2V0IHdpdGggdGhhdCBidWZmZXIuCj4+PiBJZiB1c2lu
ZyBhbm90aGVyIDE2LWJpdHMgb2YgdGhlIGRlc2NyaXB0b3Igc3BhY2UgaXMgbm90IGRlc2lyYWJs
ZSwgCj4+PiBhbgo+Pj4gYWx0ZXJuYXRpdmUgY291bGQgYmUgdG8gbGltaXQgdW1lbSBzaXplcyB0
byBlLmcuIDJeNDggYml0cyAoMjU2Cj4+PiB0ZXJhYnl0ZXMgc2hvdWxkIGJlIGVub3VnaCwgcmln
aHQgOi0pICkgYW5kIHVzZSB0aGUgcmVtYWluaW5nIDE2IAo+Pj4gYml0cwo+Pj4gb2YgdGhlIGFk
ZHJlc3MgYXMgYSBwYWNrZXQgb2Zmc2V0LiBPdGhlciB2YXJpYXRpb25zIG9uIHRoZXNlIAo+Pj4g
YXBwcm9hY2gKPj4+IGFyZSBvYnZpb3VzbHkgcG9zc2libGUgdG9vLgo+Pgo+PiBTZWVtcyByZWFz
b25hYmxlIHRvIG1lLi4KPgo+IEkgdGhpbmsgdGhpcyBpcyBwcm9iYWJseSB0aGUgYmVzdCBzb2x1
dGlvbiwgYW5kIGFsc28gaGFzIHRoZSBhZHZhbnRhZ2UgCj4gdGhhdAo+IGEgYnVmZmVyIHJldGFp
bnMgaXRzIGJhc2UgYWRkcmVzcyB0aGUgZnVsbCB3YXkgdGhyb3VnaCB0aGUgY3ljbGUgb2YgUngg
Cj4gYW5kIFR4LgoKSSBsaWtlIHRoaXMgYXMgd2VsbCAtIGl0IGFsc28gaGFzIHRoZSBhZHZhbnRh
Z2UgdGhhdCBkcml2ZXJzIGNhbiBrZWVwCnBlcmZvcm1pbmcgYWRqdXN0bWVudHMgb24gdGhlIGhh
bmRsZSwgd2hpY2ggZW5kcyB1cCBqdXN0IG1vZGlmeWluZyB0aGUKb2Zmc2V0LgotLSAKSm9uYXRo
YW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
