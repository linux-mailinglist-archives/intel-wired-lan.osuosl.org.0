Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EAB510C9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 17:38:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 68FB820108;
	Mon, 24 Jun 2019 15:38:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E+s4RLmKVFLO; Mon, 24 Jun 2019 15:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DD1E7204D3;
	Mon, 24 Jun 2019 15:38:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC54C1BF232
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:38:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E691D86BC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:38:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d9Uy9ZoQ8VbF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 15:38:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EC0D386BB4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:38:44 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id p144so10043831qke.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 08:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=M/8vPF9WvOW147aOpJHmn3aeyjOXXRZcWaf81TVyXi0=;
 b=WoswxBpLcd/C9MwdGLWFy1YPNHLW7qRx+kZkD1aRtd5wn0QJbUZ+K8F3bZZHjGXoRC
 bpk4h7DJQa+m8qkVMW49Y60UQ3unWWO83RfuBnvVpwekv/RBOylqe1HUbaQuS9zXIk/e
 hiaMmjRO/c5pGO5MLwaXJ1ki41ne5wAbglEGwok73Ygwy7DnYH/VdbZczMIuc5vRC3Iv
 THga4HF12bhhqArE8LWeqiy0YHrcXDMVnfba7crDvELbb+pjRe2dkaAlzSCt/X5r8dtK
 PTRnafDtyLVR3WW+48N51Nz5sqVd92vvmHYY2OPhmECOrrCfO8LwbO3n+IPi7hAMgfSI
 O7Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=M/8vPF9WvOW147aOpJHmn3aeyjOXXRZcWaf81TVyXi0=;
 b=kibBf0J28ANZIAg/x7CWJfvzcBzYYyfWKszZJuaH1uPgV4xQzY7AknZEzeAfTR5sDW
 myEe13d4QbrrVhrIYbyo/qzDdJQ74CtHXNxwBApZinbeXrlNoZ5GbpzCJaZpO8qu2S9t
 3ofaVtLiERQF5CI+OJwY2bmq5sLbU6YYvOeRCHoaEt9CRcAatIlCwAG3bJgpq4Pk9UOc
 2kX8W1QCm/IQinOdc+huqe6/v+gd0E4B2SQC1o4WRaD+IAITeYhemnzHbyOkddgNHTMG
 a0w0F9e934DYg96xKNXVvlXXmPYyKno3OiyoDwVGXaiEX30GSpmvZM/1fJWe8u53qu4c
 v3hA==
X-Gm-Message-State: APjAAAUe6MOKxAlfW0RFPhA4qkibvCwzeZ0FekBqg9/BaIjcNmrE5P4M
 TF2h90jT9ddUxmSoQ/NpQ0kCYhH/N+H9m6PdqLQ=
X-Google-Smtp-Source: APXvYqypNSE0wid4ZRNAQx1WFMWmhV2s+cygHRPjP32E/x3JYdvEts3wgP/EIfvHUtj3oM9HhYCOPWxfCxMm9CNT+ds=
X-Received: by 2002:a05:620a:48d:: with SMTP id
 13mr17490028qkr.493.1561390723974; 
 Mon, 24 Jun 2019 08:38:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190620083924.1996-1-kevin.laatz@intel.com>
In-Reply-To: <20190620083924.1996-1-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 17:38:33 +0200
Message-ID: <CAJ+HfNijp8BgMgiOuohiuqDPz+spAutdG34gUqKzepYo2noE-w@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, bpf@vger.kernel.com,
 Netdev <netdev@vger.kernel.org>, ciara.loftus@intel.com,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bruce Richardson <bruce.richardson@intel.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyMCBKdW4gMjAxOSBhdCAxODo1NSwgS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGlu
dGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoc2V0IGFkZHMgdGhlIGFiaWxpdHkgdG8gdXNl
IHVuYWxpZ25lZCBjaHVua3MgaW4gdGhlIFhEUCB1bWVtLgo+Cj4gQ3VycmVudGx5LCBhbGwgY2h1
bmsgYWRkcmVzc2VzIHBhc3NlZCB0byB0aGUgdW1lbSBhcmUgbWFza2VkIHRvIGJlIGNodW5rCj4g
c2l6ZSBhbGlnbmVkIChkZWZhdWx0IGlzIDJrLCBtYXggaXMgUEFHRV9TSVpFKS4gVGhpcyBsaW1p
dHMgd2hlcmUgd2UgY2FuCj4gcGxhY2UgY2h1bmtzIHdpdGhpbiB0aGUgdW1lbSBhcyB3ZWxsIGFz
IGxpbWl0aW5nIHRoZSBwYWNrZXQgc2l6ZXMgdGhhdCBhcmUKPiBzdXBwb3J0ZWQuCj4KPiBUaGUg
Y2hhbmdlcyBpbiB0aGlzIHBhdGNoc2V0IHJlbW92ZXMgdGhlc2UgcmVzdHJpY3Rpb25zLCBhbGxv
d2luZyBYRFAgdG8gYmUKPiBtb3JlIGZsZXhpYmxlIGluIHdoZXJlIGl0IGNhbiBwbGFjZSBhIGNo
dW5rIHdpdGhpbiBhIHVtZW0uIEJ5IHJlbGF4aW5nIHdoZXJlCj4gdGhlIGNodW5rcyBjYW4gYmUg
cGxhY2VkLCBpdCBhbGxvd3MgdXMgdG8gdXNlIGFuIGFyYml0cmFyeSBidWZmZXIgc2l6ZSBhbmQK
PiBwbGFjZSB0aGF0IHdoZXJldmVyIHdlIGhhdmUgYSBmcmVlIGFkZHJlc3MgaW4gdGhlIHVtZW0u
IFRoZXNlIGNoYW5nZXMgYWRkIHRoZQo+IGFiaWxpdHkgdG8gc3VwcG9ydCBqdW1ib2ZyYW1lcyBh
bmQgbWFrZSBpdCBlYXN5IHRvIGludGVncmF0ZSB3aXRoIG90aGVyCj4gZXhpc3RpbmcgZnJhbWV3
b3JrcyB0aGF0IGhhdmUgdGhlaXIgb3duIG1lbW9yeSBtYW5hZ2VtZW50IHN5c3RlbXMsIHN1Y2gg
YXMKPiBEUERLLgo+CgpUaGFua3MgZm9yIHdvcmtpbmcgb24gdGhpcywgS2V2aW4gYW5kIENpYXJh
IQoKSSBoYXZlIHNvbWUgbWlub3IgY29tbWVudHMgb24gdGhlIHNlcmllcywgYnV0IGluIGdlbmVy
YWwgSSB0aGluayBpdCdzCmluIGdvb2Qgc2hhcGUhCgpGb3Igc29tZSByZWFzb24gdGhlIHNlcmll
cyB3YXMgc3VibWl0dGVkIHR3aWNlIChhdCBsZWFzdCBvbiBteSBzaWRlKT8KCgpUaGFua3MsCkJq
w7ZybgoKPiBTdHJ1Y3R1cmUgb2YgdGhlIHBhdGNoc2V0Ogo+IFBhdGNoIDE6Cj4gICAtIFJlbW92
ZSB1bm5lY2Vzc2FyeSBtYXNraW5nIGFuZCBoZWFkcm9vbSBhZGRpdGlvbiBkdXJpbmcgemVyby1j
b3B5IFJ4Cj4gICAgIGJ1ZmZlciByZWN5Y2xpbmcgaW4gaTQwZS4gVGhpcyBjaGFuZ2UgaXMgcmVx
dWlyZWQgaW4gb3JkZXIgZm9yIHRoZQo+ICAgICBidWZmZXIgcmVjeWNsaW5nIHRvIHdvcmsgaW4g
dGhlIHVuYWxpZ25lZCBjaHVuayBtb2RlLgo+Cj4gUGF0Y2ggMjoKPiAgIC0gUmVtb3ZlIHVubmVj
ZXNzYXJ5IG1hc2tpbmcgYW5kIGhlYWRyb29tIGFkZGl0aW9uIGR1cmluZwo+ICAgICB6ZXJvLWNv
cHkgUnggYnVmZmVyIHJlY3ljbGluZyBpbiBpeGdiZS4gVGhpcyBjaGFuZ2UgaXMgcmVxdWlyZWQg
aW4KPiAgICAgb3JkZXIgZm9yIHRoZSAgYnVmZmVyIHJlY3ljbGluZyB0byB3b3JrIGluIHRoZSB1
bmFsaWduZWQgY2h1bmsgbW9kZS4KPgo+IFBhdGNoIDM6Cj4gICAtIEFkZHMgYW4gb2Zmc2V0IHBh
cmFtZXRlciB0byB6ZXJvX2NvcHlfYWxsb2NhdG9yLiBUaGlzIGNoYW5nZSB3aWxsCj4gICAgIGVu
YWJsZSB1cyB0byBjYWxjdWxhdGUgdGhlIG9yaWdpbmFsIGhhbmRsZSBpbiB6Y2FfZnJlZS4gVGhp
cyB3aWxsIGJlCj4gICAgIHJlcXVpcmVkIGZvciB1bmFsaWduZWQgY2h1bmsgbW9kZSBzaW5jZSB3
ZSBjYW4ndCBlYXNpbHkgbWFzayBiYWNrIHRvCj4gICAgIHRoZSBvcmlnaW5hbCBoYW5kbGUuCj4K
PiBQYXRjaCA0Ogo+ICAgLSBBZGRzIHRoZSBvZmZzZXQgcGFyYW1ldGVyIHRvIGk0MGVfemNhX2Zy
ZWUuIFRoaXMgY2hhbmdlIGlzIG5lZWRlZCBmb3IKPiAgICAgY2FsY3VsYXRpbmcgdGhlIGhhbmRs
ZSBzaW5jZSB3ZSBjYW4ndCBlYXNpbHkgbWFzayBiYWNrIHRvIHRoZSBvcmlnaW5hbAo+ICAgICBo
YW5kbGUgbGlrZSB3ZSBjYW4gaW4gdGhlIGFsaWduZWQgY2FzZS4KPgo+IFBhdGNoIDU6Cj4gICAt
IEFkZHMgdGhlIG9mZnNldCBwYXJhbWV0ZXIgdG8gaXhnYmVfemNhX2ZyZWUuIFRoaXMgY2hhbmdl
IGlzIG5lZWRlZCBmb3IKPiAgICAgY2FsY3VsYXRpbmcgdGhlIGhhbmRsZSBzaW5jZSB3ZSBjYW4n
dCBlYXNpbHkgbWFzayBiYWNrIHRvIHRoZSBvcmlnaW5hbAo+ICAgICBoYW5kbGUgbGlrZSB3ZSBj
YW4gaW4gdGhlIGFsaWduZWQgY2FzZS4KPgo+Cj4gUGF0Y2ggNjoKPiAgIC0gQWRkIGluZnJhc3Ry
dWN0dXJlIGZvciB1bmFsaWduZWQgY2h1bmtzLiBTaW5jZSB3ZSBhcmUgZGVhbGluZwo+ICAgICB3
aXRoIHVuYWxpZ25lZCBjaHVua3MgdGhhdCBjb3VsZCBwb3RlbnRpYWxseSBjcm9zcyBhIHBoeXNp
Y2FsIHBhZ2UKPiAgICAgYm91bmRhcnksIHdlIGFkZCBjaGVja3MgdG8ga2VlcCB0cmFjayBvZiB0
aGF0IGluZm9ybWF0aW9uLiBXZSBjYW4KPiAgICAgbGF0ZXIgdXNlIHRoaXMgaW5mb3JtYXRpb24g
dG8gY29ycmVjdGx5IGhhbmRsZSBidWZmZXJzIHRoYXQgYXJlCj4gICAgIHBsYWNlZCBhdCBhbiBh
ZGRyZXNzIHdoZXJlIHRoZXkgY3Jvc3MgYSBwYWdlIGJvdW5kYXJ5Lgo+Cj4gUGF0Y2ggNzoKPiAg
IC0gQWRkIGZsYWdzIGZvciB1bWVtIGNvbmZpZ3VyYXRpb24gdG8gbGliYnBmCj4KPiBQYXRjaCA4
Ogo+ICAgLSBNb2RpZnkgeGRwc29jayBhcHBsaWNhdGlvbiB0byBhZGQgYSBjb21tYW5kIGxpbmUg
b3B0aW9uIGZvcgo+ICAgICB1bmFsaWduZWQgY2h1bmtzCj4KPiBQYXRjaCA5Ogo+ICAgLSBBZGRp
dGlvbiBvZiBjb21tYW5kIGxpbmUgYXJndW1lbnQgdG8gcGFzcyBpbiBhIGRlc2lyZWQgYnVmZmVy
IHNpemUKPiAgICAgYW5kIGJ1ZmZlciByZWN5Y2xpbmcgZm9yIHVuYWxpZ25lZCBtb2RlLiBQYXNz
aW5nIGluIGEgYnVmZmVyIHNpemUgd2lsbAo+ICAgICBhbGxvdyB0aGUgYXBwbGljYXRpb24gdG8g
dXNlIHVuYWxpZ25lZCBjaHVua3Mgd2l0aCB0aGUgdW5hbGlnbmVkIGNodW5rCj4gICAgIG1vZGUu
IFNpbmNlIHdlIGFyZSBub3cgdXNpbmcgdW5hbGlnbmVkIGNodW5rcywgd2UgbmVlZCB0byByZWN5
Y2xlIG91cgo+ICAgICBidWZmZXJzIGluIGEgc2xpZ2h0bHkgZGlmZmVyZW50IHdheS4KPgo+IFBh
dGNoIDEwOgo+ICAgLSBBZGRzIGh1Z2VwYWdlIHN1cHBvcnQgdG8gdGhlIHhkcHNvY2sgYXBwbGlj
YXRpb24KPgo+IFBhdGNoIDExOgo+ICAgLSBEb2N1bWVudGF0aW9uIHVwZGF0ZSB0byBpbmNsdWRl
IHRoZSB1bmFsaWduZWQgY2h1bmsgc2NlbmFyaW8uIFdlIG5lZWQKPiAgICAgdG8gZXhwbGljaXRs
eSBzdGF0ZSB0aGF0IHRoZSBpbmNvbWluZyBhZGRyZXNzZXMgYXJlIG9ubHkgbWFza2VkIGluIHRo
ZQo+ICAgICBhbGlnbmVkIGNodW5rIG1vZGUgYW5kIG5vdCB0aGUgdW5hbGlnbmVkIGNodW5rIG1v
ZGUuCj4KPiBLZXZpbiBMYWF0eiAoMTEpOgo+ICAgaTQwZTogc2ltcGxpZnkgUnggYnVmZmVyIHJl
Y3ljbGUKPiAgIGl4Z2JlOiBzaW1wbGlmeSBSeCBidWZmZXIgcmVjeWNsZQo+ICAgeGRwOiBhZGQg
b2Zmc2V0IHBhcmFtIHRvIHplcm9fY29weV9hbGxvY2F0b3IKPiAgIGk0MGU6IGFkZCBvZmZzZXQg
dG8gemNhX2ZyZWUKPiAgIGl4Z2JlOiBhZGQgb2Zmc2V0IHRvIHpjYV9mcmVlCj4gICB4c2s6IGFk
ZCBzdXBwb3J0IHRvIGFsbG93IHVuYWxpZ25lZCBjaHVuayBwbGFjZW1lbnQKPiAgIGxpYmJwZjog
YWRkIGZsYWdzIHRvIHVtZW0gY29uZmlnCj4gICBzYW1wbGVzL2JwZjogYWRkIHVuYWxpZ25lZCBj
aHVua3MgbW9kZSBzdXBwb3J0IHRvIHhkcHNvY2sKPiAgIHNhbXBsZXMvYnBmOiBhZGQgYnVmZmVy
IHJlY3ljbGluZyBmb3IgdW5hbGlnbmVkIGNodW5rcyB0byB4ZHBzb2NrCj4gICBzYW1wbGVzL2Jw
ZjogdXNlIGh1Z2VwYWdlcyBpbiB4ZHBzb2NrIGFwcAo+ICAgZG9jL2FmX3hkcDogaW5jbHVkZSB1
bmFsaWduZWQgY2h1bmsgY2FzZQo+Cj4gIERvY3VtZW50YXRpb24vbmV0d29ya2luZy9hZl94ZHAu
cnN0ICAgICAgICAgICB8IDEwICstCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV94c2suYyAgICB8IDIxICsrLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3hzay5oICAgIHwgIDMgKy0KPiAgLi4uL2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X3R4cnhfY29tbW9uLmggIHwgIDMgKy0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhn
YmUvaXhnYmVfeHNrLmMgIHwgMjEgKystLQo+ICBpbmNsdWRlL25ldC94ZHAuaCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgMyArLQo+ICBpbmNsdWRlL25ldC94ZHBfc29jay5oICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgMiArCj4gIGluY2x1ZGUvdWFwaS9saW51eC9pZl94ZHAuaCAg
ICAgICAgICAgICAgICAgICB8ICA0ICsKPiAgbmV0L2NvcmUveGRwLmMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgMTEgKystCj4gIG5ldC94ZHAveGRwX3VtZW0uYyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IDE3ICsrLS0KPiAgbmV0L3hkcC94c2suYyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgNjAgKysrKysrKysrLS0KPiAgbmV0L3hkcC94c2tfcXVldWUu
aCAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNjAgKysrKysrKysrLS0KPiAgc2FtcGxlcy9i
cGYveGRwc29ja191c2VyLmMgICAgICAgICAgICAgICAgICAgIHwgOTkgKysrKysrKysrKysrKyst
LS0tLQo+ICB0b29scy9pbmNsdWRlL3VhcGkvbGludXgvaWZfeGRwLmggICAgICAgICAgICAgfCAg
NCArCj4gIHRvb2xzL2xpYi9icGYveHNrLmMgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA3
ICsrCj4gIHRvb2xzL2xpYi9icGYveHNrLmggICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAy
ICsKPiAgMTYgZmlsZXMgY2hhbmdlZCwgMjQxIGluc2VydGlvbnMoKyksIDg2IGRlbGV0aW9ucygt
KQo+Cj4gLS0KPiAyLjE3LjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
