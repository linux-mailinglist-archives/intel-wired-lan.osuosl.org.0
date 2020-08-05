Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DE623D141
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Aug 2020 21:58:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE56A879AB;
	Wed,  5 Aug 2020 19:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ltbUfGWnqF-H; Wed,  5 Aug 2020 19:58:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5CD387D0C;
	Wed,  5 Aug 2020 19:58:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D353D1BF20F
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 19:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE86E879AB
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 19:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xs4wAjT424ZU for <intel-wired-lan@osuosl.org>;
 Wed,  5 Aug 2020 19:58:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D6F13879B6
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 19:58:14 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id v4so39424747ljd.0
 for <intel-wired-lan@osuosl.org>; Wed, 05 Aug 2020 12:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0Tjz1E1q6HQVr2huVxjgO/QvcMN9Qa4gYehy+DFosXM=;
 b=GfW1QEYw0gHBLEeZ58u1akleQVPvP+yaOdbHufe7IfegVRPhoVDVnmKzmcv6YDytsN
 rXuhMcYPBwDd2D+zyKBl2X8oWXb5yaHhPy5JhUGwR5jQ7Rvb/1Su29e4C5ewD4+j/Q54
 lyiOSg/Ksd7FgU62eJoQkY3uhNeyOXFoEoeyOKOIEvvPVCFDMhLZf37FSk5z5W1rZWHX
 E/NSIl4UDwpWFUkbnO7DfIPB54oaj39PAscT6BUZdjKxBRootzuQxGbVb8vYSZbf3QwG
 dRtOzoKCZg7g9hL81fx2YW5EdScGb8KREuCiCVnm3iBidUK4JdyvEsZ5fRku1iEzJfPK
 0qvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0Tjz1E1q6HQVr2huVxjgO/QvcMN9Qa4gYehy+DFosXM=;
 b=jDYdevJcOtm58DqpPJcKOKD8VA59p6ZfXN4kf1yQX9V6npIIfWDQ03xzaIg4JTNQtP
 nfHAF0ZoUPeVwp6nKe9792chnHQvK18+e1O1M4VYBlh2k+DblQY6QJG3IjXOj+ZCPNIF
 sgDX7g3oFx22CQibrFiOESbm7PbwsbHo+V5LVjo0Wv6KrVHPkdYy6Zq40OIHCfPf8JwK
 0f0o8lVAPILkxN1C53SUtBksUrmZ+/R435uk/rXW9w4KF1LGGtNMKDD7QV+IwCU+KQ1g
 WVy0Ea7LvjCLg+NdKWWhvIxsdjBRBBMMWvbhM2Xf3N6E2ExlUdwA68Iwreo05e3Ac399
 CWNA==
X-Gm-Message-State: AOAM533jf/RThK2BQiIAoWH2kh2GaSpl26QkyMYutvTZis5XIn7+zFBp
 9xHSgQy+0ufFnoZIGnIw98Y6ZzlcUXi1KEsspm+nFbD3+1E=
X-Google-Smtp-Source: ABdhPJwgd1dOb34ptjQiva1APo2yZq29OV13IELBysUQyY5Mx89yRfIf0SQV6m8mDbsWx3/asn5YYkw4klslxYxTOsM=
X-Received: by 2002:a05:651c:1213:: with SMTP id
 i19mr2179664lja.191.1596657492872; 
 Wed, 05 Aug 2020 12:58:12 -0700 (PDT)
MIME-Version: 1.0
References: <CADS+iDVjpGVQifg+RtNEQKJw4ePe6+ViUpto8U1v0Xv1HwN2-Q@mail.gmail.com>
 <013f9961-a7fc-0d60-eea3-30b5171a27e1@intel.com>
 <CADS+iDVfMUHYrhWvs5SmjKiH6wCp3M34kP80Apzaq9DspVrU5w@mail.gmail.com>
In-Reply-To: <CADS+iDVfMUHYrhWvs5SmjKiH6wCp3M34kP80Apzaq9DspVrU5w@mail.gmail.com>
From: Yaroslav Isakov <yaroslav.isakov@gmail.com>
Date: Wed, 5 Aug 2020 21:58:01 +0200
Message-ID: <CADS+iDWwbngp0FdHf4FWDpmac75VYZS=4KRE6w3VqD3m=S_e=A@mail.gmail.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Subject: Re: [Intel-wired-lan] Deep package C-states cannot be reached on
 e1000e after resume from suspend
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SSB0aGluayB0aGF0IHRoZSBwcm9ibGVtIGlzIGluIHN1c3BlbmQvcmVzdW1lLiBXaGVuIEknbSBi
b290aW5nCmxhcHRvcCwgSSBjYW4gc2VlIEM2LCBDOCByZXNpZGVuY3kgKGFmdGVyIHNldHRpbmcK
Q09ORklHX1NBVEFfTU9CSUxFX0xQTV9QT0xJQ1k9MyksIGJ1dCBhZnRlciBzdXNwZW5kL3Jlc3Vt
ZSBwYWNrYWdlIGlzCnN0dWNrIGluIFBDMiwgdW50aWwgSSdsbCB1bnBsdWcvd2FpdC9wbHVnIGNh
YmxlLgpQLlMuIEkndmUgdHJpZWQgdG8gZGlzYWJsZSBXT0wsIG9yIHNldAovc3lzL2J1cy9wY2kv
ZGV2aWNlcy8wMDAwOjA0OjAwLjAvcG93ZXIvY29udHJvbCB0byBhdXRvIC0gbm8gY2hhbmdlIGlu
CmJlaGF2aW9yLgoK0YHRgCwgNSDQsNCy0LMuIDIwMjAg0LMuINCyIDIxOjE4LCBZYXJvc2xhdiBJ
c2Frb3YgPHlhcm9zbGF2LmlzYWtvdkBnbWFpbC5jb20+Ogo+Cj4gVml0YWx5LAo+IFRoYW5rIHlv
dSwgSSd2ZSB0cmllZCwgYnV0IG5vIGNoYW5nZSBpbiBDLXN0YXRlcy4gSSBkbyBub3QgdW5kZXJz
dGFuZAo+IHdoeSB1bnBsdWdnaW5nIGFuZCBwbHVnZ2luZyBjYWJsZSBiYWNrIGZpeCBteSBpc3N1
ZS4uLgo+IEkndmUgYWxzbyBmb3VuZCB0aGF0IGlmIEkgcGx1ZyBjYWJsZSBpbW1lZGlhdGVseSBh
ZnRlciB1bnBsdWdnaW5nLCBpdAo+IGFsc28gZG9lc24ndCBmaXggbXkgcHJvYmxlbS4gSSBzaG91
bGQgdW5wbHVnIGNhYmxlLCB3YWl0IHVudGlsIHRoZXJlCj4gYXJlIG51bWJlcnMgaW4gUkM2KyBj
b2x1bW5zIGluIHR1cmJvc3RhdCwgYW5kIG9ubHkgdGhlbiBJIGNhbiBpbnNlcnQKPiB0aGUgY2Fi
bGUgYmFjay4KPgo+INGB0YAsIDUg0LDQstCzLiAyMDIwINCzLiDQsiAxMzozNCwgVml0YWx5IExp
ZnNoaXRzIDx2aXRhbHkubGlmc2hpdHNAaW50ZWwuY29tPjoKPiA+Cj4gPiBIZWxsbyBZYXRvc2xh
diwKPiA+Cj4gPiBPbiA4LzUvMjAyMCAwMzo0MiwgWWFyb3NsYXYgSXNha292IHdyb3RlOgo+ID4g
PiBIZWxsbyEgSSd2ZSBmb3VuZCB0aGF0IG15IGxhcHRvcCAoVDQ2MHMpIGNhbm5vdCByZWFjaCBQ
YWNrYWdlIEMtc3RhdGVzCj4gPiA+IGRlZXBlciB0aGFuIFBDMi4gQWZ0ZXIgc29tZSByZXNlYXJj
aCwgSSd2ZSBmb3VuZCB0aGF0IHVucGx1Z2dpbmcgY2FibGUKPiA+ID4gZnJvbSBteSBsYXB0b3Ag
YW5kIHBsdWdnaW5nIGl0IGJhY2sgZml4ZXMgdGhhdCwgdW50aWwgdGhlIGxhcHRvcCBpcwo+ID4g
PiBzdXNwZW5kZWQuIEFmdGVyIHJlc3VtZSwgdGhpcyBwcm9ibGVtIHJldHVybnMsIGJ1dCB1bnBs
dWdnaW5nIGFuZAo+ID4gPiBwbHVnZ2luZyBmaXggaXQgYWdhaW4uCj4gPiA+IEknbSB1c2luZyBr
ZXJuZWwgNS44LjAsIGJ1dCBJJ3ZlIHNlZW4gdGhlIHNhbWUgYmVoYXZpb3Igb24gcHJldmlvdXMK
PiA+ID4ga2VybmVsIGFzIHdlbGwuCj4gPiA+Cj4gPiA+IEhlcmUgaXMgYSBsc3BjaSAtbiAtdnYg
ZXhjZXJwdDoKPiA+ID4gMDA6MWYuNiAwMjAwOiA4MDg2OjE1NmYgKHJldiAyMSkKPiA+ID4gICAg
ICBTdWJzeXN0ZW06IDE3YWE6MjIzMwo+ID4gPiAgICAgIENvbnRyb2w6IEkvTy0gTWVtKyBCdXNN
YXN0ZXIrIFNwZWNDeWNsZS0gTWVtV0lOVi0gVkdBU25vb3AtCj4gPiA+IFBhckVyci0gU3RlcHBp
bmctIFNFUlItIEZhc3RCMkItIERpc0lOVHgrCj4gPiA+ICAgICAgU3RhdHVzOiBDYXArIDY2TUh6
LSBVREYtIEZhc3RCMkItIFBhckVyci0gREVWU0VMPWZhc3QgPlRBYm9ydC0KPiA+ID4gPFRBYm9y
dC0gPE1BYm9ydC0gPlNFUlItIDxQRVJSLSBJTlR4LQo+ID4gPiAgICAgIExhdGVuY3k6IDAKPiA+
ID4gICAgICBJbnRlcnJ1cHQ6IHBpbiBBIHJvdXRlZCB0byBJUlEgMTI5Cj4gPiA+ICAgICAgUmVn
aW9uIDA6IE1lbW9yeSBhdCBlMTEwMDAwMCAoMzItYml0LCBub24tcHJlZmV0Y2hhYmxlKSBbc2l6
ZT0xMjhLXQo+ID4gPiAgICAgIENhcGFiaWxpdGllczogW2M4XSBQb3dlciBNYW5hZ2VtZW50IHZl
cnNpb24gMwo+ID4gPiAgICAgICAgICBGbGFnczogUE1FQ2xrLSBEU0krIEQxLSBEMi0gQXV4Q3Vy
cmVudD0wbUEKPiA+ID4gUE1FKEQwKyxEMS0sRDItLEQzaG90KyxEM2NvbGQrKQo+ID4gPiAgICAg
ICAgICBTdGF0dXM6IEQwIE5vU29mdFJzdCsgUE1FLUVuYWJsZS0gRFNlbD0wIERTY2FsZT0xIFBN
RS0KPiA+ID4gICAgICBDYXBhYmlsaXRpZXM6IFtkMF0gTVNJOiBFbmFibGUrIENvdW50PTEvMSBN
YXNrYWJsZS0gNjRiaXQrCj4gPiA+ICAgICAgICAgIEFkZHJlc3M6IDAwMDAwMDAwZmVlMDAyZjgg
IERhdGE6IDAwMDAKPiA+ID4gICAgICBDYXBhYmlsaXRpZXM6IFtlMF0gUENJIEFkdmFuY2VkIEZl
YXR1cmVzCj4gPiA+ICAgICAgICAgIEFGQ2FwOiBUUCsgRkxSKwo+ID4gPiAgICAgICAgICBBRkN0
cmw6IEZMUi0KPiA+ID4gICAgICAgICAgQUZTdGF0dXM6IFRQLQo+ID4gPiAgICAgIEtlcm5lbCBk
cml2ZXIgaW4gdXNlOiBlMTAwMGUKPiA+ID4gICAgICBLZXJuZWwgbW9kdWxlczogZTEwMDBlCj4g
PiA+Cj4gPiA+IC9zeXMvYnVzL3BjaS9kZXZpY2VzLzAwMDA6MDA6MWYuNi9wb3dlci9jb250cm9s
ID0gb24gKEkndmUgY2hhbmdlZCBpdAo+ID4gPiB0byBhdXRvLCBidXQgbm8gY2hhbmdlIGluIGJl
aGF2b2lyKQo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+ID4gPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gPiA+IEludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCj4gPiA+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo+ID4gPgo+ID4KPiA+IEluIG9yZGVyIHRvIGJlIGFibGUg
dG8gcmVhY2ggdGhlIGxvd2VzdCBwb3dlciBzdGF0ZSB3aXRoIGNvbm5lY3RlZCBjYWJsZQo+ID4g
eW91IG5lZWQgdG8gc2V0IHBtYyB0byBpZ25vcmUgbHRyIGZyb20gdGhlIEdCRS4KPiA+Cj4gPiBZ
b3UgY2FuIGRvIGl0IGJ5IGV4ZWN1dGluZzoKPiA+IGVjaG8gMyA+IC9zeXMva2VybmVsL2RlYnVn
L3BtY19jb3JlL2x0cl9pZ25vcmUKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gPiBJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
