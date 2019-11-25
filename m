Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DD9109407
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Nov 2019 20:14:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8F5A879CD;
	Mon, 25 Nov 2019 19:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id isRbP8Iy7Dm6; Mon, 25 Nov 2019 19:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87128879EF;
	Mon, 25 Nov 2019 19:14:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24A7F1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 19:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1F3D3859D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 19:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AJVs0BnVUpr7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Nov 2019 19:14:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 92D9585955
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 19:14:17 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 193so7811943pfc.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 11:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=cWg5S2WICSb+ikA9G5Afm1+0jlrvIk18f1apPen6p/w=;
 b=fK3QMYzEh8u8W4/n03Au4H/3RT2P40XNvt6wEWOmhHEX4zq/TkDpXLKOEHIzY0bpCR
 NQkpREoTBPS338MBiWDxPMbSwRZnzaKlDqPffpu8BZCny2gZZL+U5fIOUxns3DjKjL6f
 fLkPlCV6bEAUfCIbddV0XixL+gc8SBFWpx/ildOeo+2d8PkLl6g/JjhvK+7wqpqepRaL
 nUKIJzMBarlu2f07j429rB1KPmM0m3R9o1y658nIsE2b+O/4WFNUNPlztZBR5MHiB+fv
 a8P/jcTm0askz7wJcrCBqjW5ZN2TYwkaNKfCVdZK7kNuIx0fe5V1OIlD8MV7mvyrXCM9
 PUwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=cWg5S2WICSb+ikA9G5Afm1+0jlrvIk18f1apPen6p/w=;
 b=ndZMaHvbCu5gMdk0o/WnaFE4L4ACbBWF1DOan4gWU71OaVZRCx+5kSbEkmU6dXaLw/
 CkS+dS3tSg6i2bjfsnmfwa/qQKxOTGdigg/EqDIljcEcGJyfoilYWbLiI1kazkp+XiWq
 w6vco+YSyFw5y5iIgWscUTvuXpJTWpAh46qsGyULZS45+Oqiz0JgQnk1ssPnLghL76Ok
 ArVYvJl6Sd5vwkHAcfq4Ih+ART7B3udYUrSy0jQdjDcDjnJ9RlhKXcMxM4XpFdRop7X5
 h592DaBGLNiSyoVPaVzfhjltD8IxGIhzXrhtjVMZd79knOU6Sd0Doe77fDELaqcXb9OT
 p7Ow==
X-Gm-Message-State: APjAAAXkJp/IW/uHOLCILBy8W6k7c+Y6Cf0H0vJM9oDWHbvTAkXZngbU
 Pkb3QuK4k33NSMbyDgrCQvMAMOZznWM=
X-Google-Smtp-Source: APXvYqzL863hrcxytq48KQd/CXphm0VYrz/4Qqt9xTOy6igoyai+eRluVGoiRAGkH7djNb/uTwlySw==
X-Received: by 2002:a63:8eca:: with SMTP id
 k193mr13830574pge.293.1574709256594; 
 Mon, 25 Nov 2019 11:14:16 -0800 (PST)
Received: from [192.168.0.16] (63-230-166-45.ptld.qwest.net. [63.230.166.45])
 by smtp.gmail.com with ESMTPSA id
 v63sm9411536pfb.181.2019.11.25.11.14.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 25 Nov 2019 11:14:15 -0800 (PST)
To: Alexander Duyck <alexander.duyck@gmail.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
References: <20191125142452.21819-1-radoslawx.tyl@intel.com>
 <7e9bbd9b-ee05-b207-a472-77d03c3ee6ac@molgen.mpg.de>
 <CAKgT0UexoZWiF7Z745O3FkA+A+f-E31DhD5mGXjweXecrRJtgw@mail.gmail.com>
From: Gregory Rose <gvrose8192@gmail.com>
Message-ID: <ff7c1cc5-3bec-3ce7-f584-6fb1ef1f9cbe@gmail.com>
Date: Mon, 25 Nov 2019 11:14:14 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAKgT0UexoZWiF7Z745O3FkA+A+f-E31DhD5mGXjweXecrRJtgw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbevf: Remove limit of 10
 entries for unicast filter list
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
Cc: mukesh.gangadhar@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDExLzI1LzIwMTkgMTA6MjMgQU0sIEFsZXhhbmRlciBEdXljayB3cm90ZToKPiBPbiBNb24s
IE5vdiAyNSwgMjAxOSBhdCA1OjMyIEFNIFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcu
ZGU+IHdyb3RlOgo+PiBEZWFyIFJhZG9zbGF3LAo+Pgo+Pgo+PiBPbiAyMDE5LTExLTI1IDE1OjI0
LCBSYWRvc2xhdyBUeWwgd3JvdGU6Cj4+PiBDdXJyZW50bHksIHRob3VnaCB0aGUgRkRCIGVudHJ5
IGlzIGFkZGVkIHRvIFZGLCBpdCBkb2VzIG5vdCBhcHBlYXIgaW4KPj4+IFJBUiBmaWx0ZXJzLiBW
RiBkcml2ZXIgb25seSBhbGxvd3MgdG8gYWRkIDEwIGVudHJpZXMuIEF0dGVtcHRpbmcgdG8gYWRk
Cj4+PiBhbm90aGVyIGNhdXNlcyBhbiBlcnJvci4gVGhpcyBwYXRjaCByZW1vdmVzIGxpbWl0YXRp
b24gYW5kIGFsbG93cyB1c2Ugb2YKPj4+IGFsbCBmcmVlIFJBUiBlbnRyaWVzIGZvciB0aGUgRkRC
IGlmIG5lZWRlZC4KPj4gSSBzdGlsbCB3b25kZXIsIHdoeSB0aGUgbGltaXQgd2FzIGludHJvZHVj
ZWQgaW4gdGhlIGZpcnN0IHBsYWNlLgo+PiBncmVnb3J5LnYucm9zZUBpbnRlbC5jb20gYm91bmNl
cywgc28gd2UgY2Fu4oCZdCBhc2suCj4gSSd2ZSBhZGRlZCBHcmVnJ3MgY3VycmVudCBlbWFpbCBh
ZGRyZXNzIGluIGNhc2UgaGUgaGFzIHNvbWUgbWVtb3J5IGZvcgo+IHdoeSB0aGUgbGltaXQgb2Yg
MTAgd2FzIGFkZGVkLgo+Cj4gSXQgcHJvYmFibHkgaGFzIHRvIGRvIHdpdGggd2FudGluZyB0byBw
cmV2ZW50IHN0YXJ2YXRpb24gb2YgcmVzb3VyY2VzLgo+IFRoZSBoYXJkd2FyZSBpdHNlbGYgb25s
eSBzdXBwb3J0cyAxMjggdG90YWwgUkFSIGVudHJpZXMuIFNvIGlmIHdlIGhhdmUKPiA2MyBWRnMg
YW5kIDEgUEYsIGFuZCAxNSBvZiBQRiBtYWN2bGFucywgdGhlbiB3ZSB3b3VsZCBvbmx5IGhhdmUg
NDkKPiBlbnRyaWVzIHRvIHNwYXJlIHRoYXQgYXJlIHRoZW4gc2hhcmVkLiBTbyBhdCBiZXN0IHRo
aXMgaXMgb25seSBwdXNoaW5nCj4gdGhpbmdzIG91dCB0byA0OSBzaW5jZSBhdCB0aGF0IHBvaW50
IHdlIGFyZSBvdXQgb2YgUkFSIGVudHJpZXMgYW55d2F5LgoKSGkgQWxleCwKCkl0J3MgdG91Z2gg
dG8gcmVjYWxsIGV4YWN0bHkgd2hhdCBteSB0aGlua2luZyB3YXMgLSA4IHllYXJzIGlzIGEgbG9u
ZyAKdGltZS7CoCBIb3dldmVyLCBJIHRoaW5rIHlvdSdyZQpyaWdodCB0aGF0IHRoaXMgaXMgYWJv
dXQgcmVzb3VyY2Ugc2hhcmluZyBhbmQgbm90IGFsbG93aW5nIGFueSBzaW5nbGUgVkYgCnRvIGNv
bnN1bWUgYWxsIHRoZSByZW1haW5pbmcKUkFSIGVudHJpZXMuwqAgVGVuIGVudHJpZXMgc2VlbXMg
YXJiaXRyYXJ5IGJ1dCBJIGRvIHJlY2FsbCBhdCB0aGUgdGltZSBhIApjb21tb24gdGVzdCBzZXR1
cCB3YXMgd2l0aAo0IFZGcy7CoCBBbHNvLCB3ZSBuZWVkZWQgdG8gcmVzZXJ2ZSBSQVIgZW50cmll
cyBmb3IgdGhlIFBGIHRvbyBJSVJDLgoKTWF5YmUgU2liYWkgY2FuIHJlY2FsbCwgSSBkb24ndCBr
bm93IGlmIHNoZSdzIHN0aWxsIGF0IEludGVsIGJ1dCBtYXliZSAKYXNrIGhlciBhcyB3ZWxsLgoK
U29ycnkgSSBjb3VsZG4ndCBiZSBtb3JlIGhlbHAuCgpSZWdhcmRzLAoKLSBHcmVnCgo+Cj4+PiBG
aXhlczogNDZlYzIwZmY3ZCAoIml4Z2JldmY6IEFkZCBtYWN2bGFuIHN1cHBvcnQgaW4gdGhlIHNl
dCByeCBtb2RlIG9wIikKPiBJIHdvdWxkbid0IGJvdGhlciB3aXRoIHRoZSBmaXhlcyB0YWcgc2lu
Y2UgaXQgaXNuJ3QgImZpeGluZyIgdGhpbmdzLgo+IEl0IGlzIGNoYW5naW5nIGJlaGF2aW9yLiBJ
IHdvdWxkIHNheSBpdCB3YXMgYnkgZGVzaWduIHRoYXQgaXQgd2FzCj4gbGltaXRlZCB0byAxMCBl
bnRyaWVzLiBBbGwgdGhpcyBjaGFuZ2UgZG9lcyBpcyBwdXNoIHRoZSB3b3JrIG9udG8gdGhlCj4g
UEYgZm9yIHJldHVybmluZyBhbiBlcnJvciBpbnN0ZWFkIG9mIGRvaW5nIHNvIGVhcmxpZXIuCj4K
PiBGb3IgYSBub3JtYWwgTklDIHRoZSBmYWlsdXJlIGNhc2UgaGVyZSB3b3VsZCBiZSB0byBlbmFi
bGUgcHJvbWlzY3VvdXMKPiBtb2RlLiBIb3dldmVyIHNpbmNlIHRoaXMgaXMgYSBWRiB5b3UgY2Fu
bm90IGRvIHRoYXQuIEluc3RlYWQgaXQgbWlnaHQKPiBtYWtlIG1vcmUgc2Vuc2UgdG8gZHVtcCBh
IG1lc3NhZ2Ugd2hlbiB5b3UgaGl0IHRoZSBsaW1pdC4KPgo+Pj4gU2lnbmVkLW9mZi1ieTogUmFk
b3NsYXcgVHlsIDxyYWRvc2xhd3gudHlsQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZXZmL2l4Z2JldmZfbWFpbi5jIHwgNSAtLS0tLQo+Pj4g
ICAxIGZpbGUgY2hhbmdlZCwgNSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmX21haW4uYyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2l4Z2JldmYvaXhnYmV2Zl9tYWluLmMKPj4+IGluZGV4IDA3NmYy
ZGEzNmYyNy4uNjRlYzBlN2M2NGI0IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmX21haW4uYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmX21haW4uYwo+Pj4gQEAgLTIwODEsMTEgKzIwODEs
NiBAQCBzdGF0aWMgaW50IGl4Z2JldmZfd3JpdGVfdWNfYWRkcl9saXN0KHN0cnVjdCBuZXRfZGV2
aWNlICpuZXRkZXYpCj4+PiAgICAgICAgc3RydWN0IGl4Z2JlX2h3ICpodyA9ICZhZGFwdGVyLT5o
dzsKPj4+ICAgICAgICBpbnQgY291bnQgPSAwOwo+Pj4KPj4+IC0gICAgIGlmICgobmV0ZGV2X3Vj
X2NvdW50KG5ldGRldikpID4gMTApIHsKPj4+IC0gICAgICAgICAgICAgcHJfZXJyKCJUb28gbWFu
eSB1bmljYXN0IGZpbHRlcnMgLSBObyBTcGFjZVxuIik7Cj4+PiAtICAgICAgICAgICAgIHJldHVy
biAtRU5PU1BDOwo+Pj4gLSAgICAgfQo+Pj4gLQo+Pj4gICAgICAgIGlmICghbmV0ZGV2X3VjX2Vt
cHR5KG5ldGRldikpIHsKPj4+ICAgICAgICAgICAgICAgIHN0cnVjdCBuZXRkZXZfaHdfYWRkciAq
aGE7Cj4gSSB3b3VsZCBzYXkgTkFLLiBUaGUgcHJvYmxlbSBoZXJlIGlzIHRoaXMgZG9lc24ndCBz
b2x2ZSB0aGUgb3JpZ2luYWwKPiBwcm9ibGVtLiBJdCBqdXN0IG1hc2tzIGl0IGJ5IHB1c2hpbmcg
dGhlIGZhaWx1cmUgb3V0IHRvIHRoZQo+IHNldF91Y19hZGRyIGNhbGwgd2hpY2ggZG9lc24ndCBo
YXZlIHRoZSByZXR1cm4gdmFsdWUgY2hlY2tlZCBzbwo+IGluc3RlYWQgeW91IHdpbGwgZ2V0IGEg
c2lsZW50IGZhaWx1cmUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
