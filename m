Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 847A61AAB96
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2020 17:15:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3821985FD7;
	Wed, 15 Apr 2020 15:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cTF9M_HSktHm; Wed, 15 Apr 2020 15:15:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5D7E85CFE;
	Wed, 15 Apr 2020 15:15:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C8B61BF346
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2020 15:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4529D85A84
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2020 15:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xd3Mc9dMGnLg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2020 15:15:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA65585A57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2020 15:15:34 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id n10so17478739iom.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2020 08:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uJu/TUyA7HpMbjsjfwQSmBeb+8MNsLgquI30CkrWMUw=;
 b=UCaVZGPEqFpA8i/duIWG+QA2vt1TIIcjBaOZmum8EyVTucK9Z7QrQ8XhgWwnvEE+oF
 Iha1zVMDkwXNy2oNoYR4djNpdhd2aglT6XkVRWmEWESBIu71PMl5S0RKevu2haYgxf3w
 eHfUj1vMbBYm46hfZGi40WEQTZKtay2BmBYC5G+b1tosdn/7ITwCstRa+9rsQW+mF3Sd
 c0M4ms1wjIJlH0oeWCYfWSkw42ZGWI6dvGzZ9YTXo5aU+TebyzFUe4jU5Xp1XKTpkMiJ
 3ciwO1g+ULIyXQw/USpIPpsUg6pRkKDtGJke6EbxJ2agIksutc2bAjSxqPsp80eP5xRb
 Jf7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uJu/TUyA7HpMbjsjfwQSmBeb+8MNsLgquI30CkrWMUw=;
 b=ZIJm3qyCImVpGsGLCe3wgk4Kj9ItReUrtscZ2zu4WBHqxaVz0Wntrs6C/PaLWXGI6h
 0JjJosuh87Fux201bB2x8RkMdqqaf6KP14xY/HNymjz5RSo8d2Y8PwMe1jaYJiDcg1uO
 pgOlIi9r5OoOaZrDq3c840HFnbT3LzDFzJ2Ga5pRBmkrUDyjYbjHLpg4svyZjL3MSTlL
 4D+OnQPlVZr7lheFGLNDTBGK0XEUqfG6J5i6cJwP57inwGyO5CycboeGW4qWD+1DacFB
 M6N737Nc4+cH2v2aY07/dOcat3SCTtBXITQZPveChx7OElTHBOo+P2CDLpmB8/0+mKoZ
 fSTA==
X-Gm-Message-State: AGi0Puakm6NcoK85Bb9+4Prqq5Z92tTwSeBBjXRcGgUmVSLn9Dm5Q9Al
 cjY+taMxeNtlpz8o9WkH4Ps5ci5DIvQmEJuMdHw=
X-Google-Smtp-Source: APiQypLaGegD5+UUbOtmnTUQBkUWD70NRqqy0cWTb1LKQ1lwgcZqvC0Spye6Cj5B9ccNJQsax0kQOwbal2FCIce6h0w=
X-Received: by 2002:a6b:cd4a:: with SMTP id d71mr26493192iog.5.1586963733713; 
 Wed, 15 Apr 2020 08:15:33 -0700 (PDT)
MIME-Version: 1.0
References: <f015337518734947a767c736a5dd3b03@inspur.com>
In-Reply-To: <f015337518734947a767c736a5dd3b03@inspur.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 15 Apr 2020 08:15:22 -0700
Message-ID: <CAKgT0UeKxrJr_GrcRR8igxNLAPoh9b=pYajozsL+b3==abhdBQ@mail.gmail.com>
To: =?UTF-8?B?WWkgWWFuZyAo5p2o54eaKS3kupHmnI3liqHpm4blm6I=?=
 <yangyi01@inspur.com>
Subject: Re: [Intel-wired-lan] Anybody knows why Intel 82599ES 10Gb NIC has
 low small UDP packets forwarding performance?
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBBcHIgMTUsIDIwMjAgYXQgMTowMyBBTSBZaSBZYW5nICjmnajnh5opLeS6keacjeWK
oembhuWboiA8eWFuZ3lpMDFAaW5zcHVyLmNvbT4gd3JvdGU6Cj4KPiBIaSwgZ3V5cwo+Cj4gV2Ug
ZmluZCBJbnRlbCA4MjU5OUVTIDEwR2IgTklDIGhhcyBsb3cgc21hbGwgVURQIHBhY2tldHMgZm9y
d2FyZGluZwo+IHBlcmZvcm1hbmNlLCB0aGlzIGFsc28gaW1wYWN0cyBvbiAxNiBieXRlcyBVRFAg
cHBzKHBhY2tldCBwZXIgc2Vjb25kKQo+IHBlcmZvcm1hbmNlIG9mIFZNcyBpbiBPcGVuc3RhY2sg
ZW52aXJvbm1lbnQsIG15IE5JQyBpbmZvcm1hdGlvbiBpcyBiZWxvdzoKPgo+ICQgZXRodG9vbCAt
aSB0ZW4xCj4gZHJpdmVyOiBpeGdiZQo+IHZlcnNpb246IDUuNi41Cj4gZmlybXdhcmUtdmVyc2lv
bjogMHg4MDAwMDNkZgo+IGV4cGFuc2lvbi1yb20tdmVyc2lvbjoKPiBidXMtaW5mbzogMDAwMDow
NjowMC4wCj4gc3VwcG9ydHMtc3RhdGlzdGljczogeWVzCj4gc3VwcG9ydHMtdGVzdDogeWVzCj4g
c3VwcG9ydHMtZWVwcm9tLWFjY2VzczogeWVzCj4gc3VwcG9ydHMtcmVnaXN0ZXItZHVtcDogeWVz
Cj4gc3VwcG9ydHMtcHJpdi1mbGFnczogeWVzCj4gJAo+Cj4gT24gVk1zLGZvciAxNiBieXRlcyBV
RFAgcGFja2V0cywgbWF4aW11bSBwcHMgaXMgYWJvdXQgMTgwMDAwIChJIGhhdmUgdHVuZWQKPiBp
cnEgYWZmaW5pdHksIFZNIGlzIHBpbm5lZCB0byBmaXhlZCBDUFUsIGl0IGlzIHNjaGVkdWxlZCBv
biB0aGUgc2FtZSBudW1hCj4gbm9kZSBhcyBOSUMsIHNvIHRoaXMgaGFzIGJlZW4gYSBtYXhpbXVt
IHBvc3NpYmxlIHZhbHVlKSwgd2UgYWxzbyB0cmllZAo+IHBoeXNpY2FsIHBvcnQgdG8gcGh5c2lj
YWwgcG9ydCBwcHMgcGVyZm9ybWFuY2UgaW4gdHdvIHBoeXNpY2FsIG1hY2hpbmVzLAo+IHRoYXQg
b25seSBjYW4gcmVhY2ggbWF4aW11bSBwcHMgMzAwMDAwIChJIGhhdmUgdHJpZWQgYWxsIHRoZSB0
dW5pbmcgd2F5cykuCj4KPiBCdXQgb24gbXkgb3RoZXIgc2VydmVycyB3aGljaCBoYXZlIEludGVs
IFg3MTAgMTBHYiBOSUMsIHRoZSBkcml2ZXIgaXMgaTQwZSwKPiBub3QgaXhnYmUsIGl0IGNhbiBy
ZWFjaCAzNTAwMDAgcHBzIGZvciBwaHlzaWNhbCBwb3J0IHRvIHBoeXNpY2FsIHBvcnQgY2FzZQo+
IHdpdGhvdXQgYW55IGV4dHJhIHR1bmluZy4gSW4gVnhMQU4gY2FzZSwgZm9yIDMyIGJ5dGVzIFVE
UCBwYWNrZXRzLCBwcHMgY2FuCj4gcmVhY2ggMjAwMDAwIHZlcnkgZWFzaWx5LCBpdCBkb2VzbuKA
mXQgbmVlZCBhbnkgZXh0cmEgdHVuaW5nLgo+Cj4gaHR0cHM6Ly9kb2NzLm9wZW5zdGFjay5vcmcv
ZGV2ZWxvcGVyL3BlcmZvcm1hbmNlLWRvY3MvdGVzdF9wbGFucy90ZW5hbnRfbmV0dwo+IG9ya2lu
Zy9wbGFuLmh0bWwgYW5kCj4gaHR0cHM6Ly9kb2NzLm9wZW5zdGFjay5vcmcvZGV2ZWxvcGVyL3Bl
cmZvcm1hbmNlLWRvY3MvdGVzdF9yZXN1bHRzL3RlbmFudF9uZQo+IHR3b3JraW5nL25ldXRyb25f
dnhsYW5fZHZyXzM3OC9wZXJsX2wyL2luZGV4Lmh0bWwjdGNwIHNob3cgaXhnYmUgZHJpdmVyIGFs
c28KPiBjYW4gcmVhY2ggMjAwMDAwIHBwcyBmb3IgMzIgYnl0ZXMgVURQIHBhY2tldCBmb3IgVk1z
IGFuZCBWeExBTiBjYXNlcy4gSXQKPiBkb2Vzbid0IG1lbnRpb24gd2hpY2ggSW50ZWwgRXRoZXJu
ZXQgQ29udHJvbGxlciBpcyB1c2VkLgo+Cj4gTWV0cmljCj4gICAgICAgICAgICAgICAgTWluICAg
IEF2ZyAgICAgTWF4Cj4gbG9zcywgJSAgICAgICAgICAgICAgICA0LjA5Cj4gaml0dGVyLCBtcyAg
ICAgICAgICAgICAgMC4wMQo+IHBhY2tldHMsIHBwcyAxOTAzMjAgICAgIDE5OTU4MyAgMjEzNjYw
Cj4KPgo+IE15IGlzc3VlIGlzIGFueWJvZHkga25vd3MgaWYgODI1OTlFUyBjYW4gcmVhY2ggMzUw
MDAwIHBwcyBmb3IgMTYgYnl0ZXMgVURQCj4gcGFja2V0cyBmb3IgcGh5c2ljYWwgcG9ydCB0byBw
aHlzaWNhbCBwb3J0IGNhc2UgKG5vdGU6IEkgbWVhbiBpcGVyZjMKPiBwZXJmb3JtYW5jZSwgSSBr
bm93IERQREsgY2FuIHJlYWNoIHRoaXMpLgo+Cj4gQlRXLCBJIGZpbmQgODI1OTlFUyBjYW4gc3Vw
cG9ydCBWeExBTiBUU08gb2ZmbG9hZCwgdGhlIHBlcmZvcm1hbmNlIGRhdGEgaXMKPiBnb29kIGlu
IGNhc2UgdGhhdCBWTSBNVFUgaXMgY29uZmlndXJlZCB0byA4OTUwIChvdXIgdW5kZXJsYXkgTVRV
IGlzIDkwMDApLAo+IGJvdGggVENQIGFuZCBVRFAgcGVyZm9ybWFuY2UgY2FuIHJlYWNoIGxpbmUg
c3BlZWQuCgpUaGVyZSBjb3VsZCBiZSBhIG51bWJlciBvZiB0aGluZ3MgZ29pbmcgb24uIFlvdSBt
aWdodCB3YW50IHRvIGNoZWNrCnlvdXIgaW50ZXJydXB0IG1vZGVyYXRpb24gc2V0dGluZ3MsIHlv
dSBtaWdodCB3YW50IHRvIG1ha2Ugc3VyZSB5b3UgZG8Kbm90IGhhdmUgYW4gSU9NTVUgZW5hYmxl
ZCwgeW91IHdpbGwgd2FudCB0byBtYWtlIGNlcnRhaW4geW91IGhhdmUKc3VmZmljaWVudCBQQ0ll
IGJhbmR3aWR0aCBhcyB0aGUgWDcxMCBpcyBhIFBDSWUgZ2VuIDMgcGFydCBhbmQgODI1OTkKaXMg
b25seSBnZW4yLiBZb3UgbWF5IHdhbnQgdG8gZG91YmxlIGNoZWNrIHRvIG1ha2Ugc3VyZSB0aGUg
bWVtb3J5CmxheW91dCBiZXR3ZWVuIHRoZSB0d28gc3lzdGVtcyBpcyB0aGUgc2FtZSBhcyBtZW1v
cnkgY2FuIGNhdXNlIGRlbGF5cwppbiBwYWNrZXQgdGhyb3VnaHB1dC4KCk15IGFkdmljZSB3b3Vs
ZCBiZSB0byBzZWUgaWYgeW91IGNhbiBzd2FwIHRoZSBYNzEwIGFuZCA4MjU5OSBiZXR3ZWVuCnR3
byBvZiB5b3VyIHN5c3RlbXMgYW5kIHNlZSBpZiB0aGUgcGVyZm9ybWFuY2UgaXNzdWVzIGZvbGxv
dyB0aGUgY2FyZApvciB0aGUgc2VydmVyLiBJZiBpdCBmb2xsb3dzIHRoZSBzZXJ2ZXIgdGhlbiB5
b3UgbGlrZWx5IGhhdmUgc29tZXRoaW5nCm1pc2NvbmZpZ3VyZWQgb24gdGhlIHNlcnZlciwgaWYg
aXQgZm9sbG93cyB0aGUgY2FyZCB0aGVuIHdlIGNvdWxkCmZvbGxvdyB1cCB3aXRoIGFkZGl0aW9u
YWwgZGVidWdnaW5nLgoKVGhhbmtzLgoKLSBBbGV4Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
