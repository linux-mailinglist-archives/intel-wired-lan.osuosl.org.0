Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CE390ABD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Aug 2019 00:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 900962078C;
	Fri, 16 Aug 2019 22:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pzX3haFm8dwR; Fri, 16 Aug 2019 22:08:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2B617207A4;
	Fri, 16 Aug 2019 22:08:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50B161BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 22:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4253920798
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 22:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YcfxI7FmOQaJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2019 22:08:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D3552078C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 22:08:36 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id x15so3580982pgg.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 15:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KKHGsWwp9VQGZcOx7JBLufoPQpmlvuaisJXdz3bX3gw=;
 b=Jkn31o+e4uQs0EahqmLm4mV9g5QBx1EYv1mbcibd+F/GdP9lJd8/8vekR9wgoOWvJ5
 x3ATYW/MYGpSQuBefNcbX+kAydxew3EHg7CxfjPYRO5NqiQBDF4Fvx9hqIXpui6ElocS
 Sx5nzzY6wHuVzhbjcdYBuzMM1O1Lr2YOTTE/r2E7HP20VEYIlNKPN6m16DPLNxU2kIiG
 K12WZhdMfsPH6vC9yO+4nTutG6nlPUs4cdoWWymMErpx0nClt1u5HaIGy6//oiuqYzdS
 GIy+jMr6KVmwqNOtnYo40wrQ55bHhKTeL3pSIuHejPa78lvJ7akJNbeU4LJA6zsmIpPP
 dJ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KKHGsWwp9VQGZcOx7JBLufoPQpmlvuaisJXdz3bX3gw=;
 b=AMAAtAz3BwzMKBclIuVgEOiBiuwEfMaRi9gO2Cn3xzc6HXe7HCKBuYcGXVY762UQ4b
 MG0CrI7hgUw9gq/tXa3+GbKt29gCWRhdenQvh9utv+syR6ADaMmhsPtw3Dqb1gzz5XbX
 iUlKSERnEw+BkzaJqL758BXeyUE0AwgvA9Lb2FbM7BQ+l+U4i5RG6MmUQLbsP4cZwh30
 5Mjaltws5zwsv5Lg9vrOUhGUdpAqD9gv3DsBnqxYx5kDChtWn6dPRVKM9uuKDqrfVX1+
 oPxQBHgOVB27zt0+UvlEhjhkafHo++43YPSV0xvCuODg71ut6IqmWhgRLExTWlHPZfw8
 91RA==
X-Gm-Message-State: APjAAAVBakXV7fDz1vVNoeClFyNyl62z7wsYAw6J/BwcCAedMhv/bZxG
 kRUsfi19jQUeQ2kJ2+7qrKgEx1xUNS8=
X-Google-Smtp-Source: APXvYqymvxATJjozxNnA+Dw9NWhkSe4BnTdAZZrbxbYUQCtUtiUnBvAU1D9uKS3/fYajOFmjn5YUCg==
X-Received: by 2002:a62:1d8f:: with SMTP id
 d137mr13178397pfd.207.1565993316106; 
 Fri, 16 Aug 2019 15:08:36 -0700 (PDT)
Received: from [169.254.4.234] ([2620:10d:c090:200::3:e378])
 by smtp.gmail.com with ESMTPSA id a10sm9020626pfl.159.2019.08.16.15.08.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 15:08:35 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "=?utf-8?b?QmrDtnJuIFTDtnBlbA==?=" <bjorn.topel@gmail.com>
Date: Fri, 16 Aug 2019 15:08:34 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <331CAEDB-776A-4928-93EF-F45F1339848F@gmail.com>
In-Reply-To: <CAJ+HfNj=devuEky3VwbibA-j+o=bKi4Gg=MeHsuuDGAKc9p2Vw@mail.gmail.com>
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
 <bebfb097-5357-91d8-ebc7-2f8ede392ad7@intel.com>
 <cc3a09eb-bcb8-a6e1-7175-77bddaf10c11@intel.com>
 <CAJ+HfNj=devuEky3VwbibA-j+o=bKi4Gg=MeHsuuDGAKc9p2Vw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/5] Add support for SKIP_BPF
 flag for AF_XDP sockets
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
Cc: maciej.fijalkowski@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, tom.herbert@intel.com,
 Netdev <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 =?utf-8?b?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxNiBBdWcgMjAxOSwgYXQgNjozMiwgQmrDtnJuIFTDtnBlbCB3cm90ZToKCj4gT24gVGh1
LCAxNSBBdWcgMjAxOSBhdCAxODo0NiwgU2FtdWRyYWxhLCBTcmlkaGFyCj4gPHNyaWRoYXIuc2Ft
dWRyYWxhQGludGVsLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDgvMTUvMjAxOSA1OjUxIEFNLCBCasO2
cm4gVMO2cGVsIHdyb3RlOgo+Pj4gT24gMjAxOS0wOC0xNSAwNTo0NiwgU3JpZGhhciBTYW11ZHJh
bGEgd3JvdGU6Cj4+Pj4gVGhpcyBwYXRjaCBzZXJpZXMgaW50cm9kdWNlcyBYRFBfU0tJUF9CUEYg
ZmxhZyB0aGF0IGNhbiBiZSAKPj4+PiBzcGVjaWZpZWQKPj4+PiBkdXJpbmcgdGhlIGJpbmQoKSBj
YWxsIG9mIGFuIEFGX1hEUCBzb2NrZXQgdG8gc2tpcCBjYWxsaW5nIHRoZSBCUEYKPj4+PiBwcm9n
cmFtIGluIHRoZSByZWNlaXZlIHBhdGggYW5kIHBhc3MgdGhlIGJ1ZmZlciBkaXJlY3RseSB0byB0
aGUgCj4+Pj4gc29ja2V0Lgo+Pj4+Cj4+Pj4gV2hlbiBhIHNpbmdsZSBBRl9YRFAgc29ja2V0IGlz
IGFzc29jaWF0ZWQgd2l0aCBhIHF1ZXVlIGFuZCBhIEhXCj4+Pj4gZmlsdGVyIGlzIHVzZWQgdG8g
cmVkaXJlY3QgdGhlIHBhY2tldHMgYW5kIHRoZSBhcHAgaXMgaW50ZXJlc3RlZCBpbgo+Pj4+IHJl
Y2VpdmluZyBhbGwgdGhlIHBhY2tldHMgb24gdGhhdCBxdWV1ZSwgd2UgZG9uJ3QgbmVlZCBhbiAK
Pj4+PiBhZGRpdGlvbmFsCj4+Pj4gQlBGIHByb2dyYW0gdG8gZG8gZnVydGhlciBmaWx0ZXJpbmcg
b3IgbG9va3VwL3JlZGlyZWN0IHRvIGEgc29ja2V0Lgo+Pj4+Cj4+Pj4gSGVyZSBhcmUgc29tZSBw
ZXJmb3JtYW5jZSBudW1iZXJzIGNvbGxlY3RlZCBvbgo+Pj4+ICAgIC0gMiBzb2NrZXQgMjggY29y
ZSBJbnRlbChSKSBYZW9uKFIpIFBsYXRpbnVtIDgxODAgQ1BVIEAgMi41MEdIego+Pj4+ICAgIC0g
SW50ZWwgNDBHYiBFdGhlcm5ldCBOSUMgKGk0MGUpCj4+Pj4KPj4+PiBBbGwgdGVzdHMgdXNlIDIg
Y29yZXMgYW5kIHRoZSByZXN1bHRzIGFyZSBpbiBNcHBzLgo+Pj4+Cj4+Pj4gdHVyYm8gb24gKGRl
ZmF1bHQpCj4+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICBuby1za2lwLWJwZiAgICBza2lwLWJwZgo+Pj4+
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+IHJ4ZHJv
cCB6ZXJvY29weSAgICAgICAgICAgMjEuOSAgICAgICAgIDM4LjUKPj4+PiBsMmZ3ZCAgemVyb2Nv
cHkgICAgICAgICAgIDE3LjAgICAgICAgICAyMC41Cj4+Pj4gcnhkcm9wIGNvcHkgICAgICAgICAg
ICAgICAxMS4xICAgICAgICAgMTMuMwo+Pj4+IGwyZndkICBjb3B5ICAgICAgICAgICAgICAgIDEu
OSAgICAgICAgICAyLjAKPj4+Pgo+Pj4+IG5vIHR1cmJvIDogIGVjaG8gMSA+IC9zeXMvZGV2aWNl
cy9zeXN0ZW0vY3B1L2ludGVsX3BzdGF0ZS9ub190dXJibwo+Pj4+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAg
bm8tc2tpcC1icGYgICAgc2tpcC1icGYKPj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPj4+PiByeGRyb3AgemVyb2NvcHkgICAgICAgICAgIDE1LjQgICAg
ICAgICAyOS4wCj4+Pj4gbDJmd2QgIHplcm9jb3B5ICAgICAgICAgICAxMS44ICAgICAgICAgMTgu
Mgo+Pj4+IHJ4ZHJvcCBjb3B5ICAgICAgICAgICAgICAgIDguMiAgICAgICAgIDEwLjUKPj4+PiBs
MmZ3ZCAgY29weSAgICAgICAgICAgICAgICAxLjcgICAgICAgICAgMS43Cj4+Pj4gLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4KPj4+Cj4+PiBUaGlzIHdv
cmsgaXMgc29tZXdoYXQgc2ltaWxhciB0byB0aGUgWERQX0FUVEFDSCB3b3JrIFsxXS4gQXZvaWRp
bmcgCj4+PiB0aGUKPj4+IHJldHBvbGluZSBpbiB0aGUgWERQIHByb2dyYW0gY2FsbCBpcyBhIG5p
Y2UgcGVyZm9ybWFuY2UgYm9vc3QhIEkgCj4+PiBsaWtlCj4+PiB0aGUgbnVtYmVycyEgOi0pIEkg
YWxzbyBsaWtlIHRoZSBpZGVhIG9mIGFkZGluZyBhIGZsYWcgdGhhdCBqdXN0IAo+Pj4gZG9lcwo+
Pj4gd2hhdCBtb3N0IEFGX1hEUCBSeCB1c2VycyB3YW50IC0tIGp1c3QgZ2V0dGluZyBhbGwgcGFj
a2V0cyBvZiBhCj4+PiBjZXJ0YWluIHF1ZXVlIGludG8gdGhlIFhEUCBzb2NrZXRzLgo+Pj4KPj4+
IEluIGFkZGl0aW9uIHRvIFRva2UncyBtYWlsLCBJIGhhdmUgc29tZSBtb3JlIGNvbmNlcm5zIHdp
dGggdGhlIAo+Pj4gc2VyaWVzOgo+Pj4KPj4+ICogQUZBSVUgdGhlIFNLSVBfQlBGIG9ubHkgd29y
a3MgZm9yIHplcm8tY29weSBlbmFibGVkIHNvY2tldHMuIElNTywgCj4+PiBpdAo+Pj4gICAgc2hv
dWxkIHdvcmsgZm9yIGFsbCBtb2RlcyAoaW5jbHVkaW5nIFhEUF9TS0IpLgo+Pgo+PiBUaGlzIHBh
dGNoIGVuYWJsZXMgU0tJUF9CUEYgZm9yIEFGX1hEUCBzb2NrZXRzIHdoZXJlIGFuIFhEUCBwcm9n
cmFtIAo+PiBpcwo+PiBhdHRhY2hlZCBhdCBkcml2ZXIgbGV2ZWwgKGJvdGggemVyb2NvcHkgYW5k
IGNvcHkgbW9kZXMpCj4+IEkgdHJpZWQgYSBxdWljayBoYWNrIHRvIHNlZSB0aGUgcGVyZiBiZW5l
Zml0IHdpdGggZ2VuZXJpYyBYRFAgbW9kZSwgCj4+IGJ1dAo+PiBpIGRpZG4ndCBzZWUgYW55IHNp
Z25pZmljYW50IGltcHJvdmVtZW50IGluIHBlcmZvcm1hbmNlIGluIHRoYXQKPj4gc2NlbmFyaW8u
IHNvIGkgZGlkbid0IGluY2x1ZGUgdGhhdCBtb2RlLgo+Pgo+Pj4KPj4+ICogSW4gb3JkZXIgdG8g
d29yaywgYSB1c2VyIHN0aWxsIG5lZWRzIGFuIFhEUCBwcm9ncmFtIHJ1bm5pbmcuIAo+Pj4gVGhh
dCdzCj4+PiAgICBjbHVua3kuIEknZCBsaWtlIHRoZSBiZWhhdmlvciB0aGF0IGlmIG5vIFhEUCBw
cm9ncmFtIGlzIGF0dGFjaGVkLAo+Pj4gICAgYW5kIHRoZSBvcHRpb24gaXMgc2V0LCB0aGUgcGFj
a2V0cyBmb3IgYSB0aGF0IHF1ZXVlIGVuZCB1cCBpbiB0aGUKPj4+ICAgIHNvY2tldC4gSWYgdGhl
cmUncyBhbiBYRFAgcHJvZ3JhbSBhdHRhY2hlZCwgdGhlIHByb2dyYW0gaGFzCj4+PiAgICBwcmVj
ZWRlbmNlLgo+Pgo+PiBJIHRoaW5rIHRoaXMgd291bGQgcmVxdWlyZSBtb3JlIGNoYW5nZXMgaW4g
dGhlIGRyaXZlcnMgdG8gdGFrZSBYRFAKPj4gZGF0YXBhdGggZXZlbiB3aGVuIHRoZXJlIGlzIG5v
IFhEUCBwcm9ncmFtIGxvYWRlZC4KPj4KPgo+IFRvZGF5LCBmcm9tIGEgZHJpdmVyIHBlcnNwZWN0
aXZlLCB0byBlbmFibGUgWERQIHlvdSBwYXNzIGEgc3RydWN0Cj4gYnBmX3Byb2cgcG9pbnRlciB2
aWEgdGhlIG5kb19icGYuIFRoZSBwcm9ncmFtIGdldCBleGVjdXRlZCBpbgo+IEJQRl9QUk9HX1JV
TiAodmlhIGJwZl9wcm9nX3J1bl94ZHApIGZyb20gaW5jbHVkZS9saW51eC9maWx0ZXIuaC4KPgo+
IEkgdGhpbmsgaXQncyBwb3NzaWJsZSB0byBhY2hpZXZlIHdoYXQgeW91J3JlIGRvaW5nIHcvbyAq
YW55KiBkcml2ZXIKPiBtb2RpZmljYXRpb24uIFBhc3MgYSBzcGVjaWFsLCBpbnZhbGlkLCBwb2lu
dGVyIHRvIHRoZSBkcml2ZXIgKHNheQo+ICh2b2lkICopMHgxIG9yIHNtdGggbW9yZSBlbGVnYW50
KSwgd2hpY2ggaGFzIGEgc3BlY2lhbCBoYW5kbGluZyBpbgo+IEJQRl9SVU5fUFJPRyBlLmcuIHNl
dHRpbmcgYSBwZXItY3B1IHN0YXRlIGFuZCByZXR1cm4gWERQX1JFRElSRUNULiBUaGUKPiBwZXIt
Y3B1IHN0YXRlIGlzIHBpY2tlZCB1cCBpbiB4ZHBfZG9fcmVkaXJlY3QgYW5kIHhkcF9mbHVzaC4K
Pgo+IEFuIGFwcHJvYWNoIGxpa2UgdGhpcyB3b3VsZCBiZSBnZW5lcmFsLCBhbmQgYXBwbHkgdG8g
YWxsIG1vZGVzCj4gYXV0b21hdGljYWxseS4KPgo+IFRob3VnaHRzPwoKQWxsIHRoZSBkZWZhdWx0
IHByb2dyYW0gZG9lcyBpcyBjaGVjayB0aGF0IHRoZSBtYXAgZW50cnkgY29udGFpbnMgYSB4c2ss
CmFuZCBjYWxsIGJwZl9yZWRpcmVjdF9tYXAoKS4gIFNvIHRoaXMgaXMgcHJldHR5IG11Y2ggdGhl
IHNhbWUgYXMgYWJvdmUsCndpdGhvdXQgYW55IHNwZWNpYWwgY2FzZSBoYW5kbGluZy4KCldoeSB3
b3VsZCB0aGlzIGJlIHNvIGV4cGVuc2l2ZT8gIElzIHRoZSBKSVQgY29tcGlsYXRpb24gdGltZSBi
ZWluZyAKY291bnRlZD8KLS0gCkpvbmF0aGFuCgo+Cj4+Pgo+Pj4gKiBJdCByZXF1aXJlcyBjaGFu
Z2VzIGluIGFsbCBkcml2ZXJzLiBOb3QgbmljZSwgYW5kIHNjYWxlcyBiYWRseS4gCj4+PiBUcnkK
Pj4+ICAgIG1ha2luZyBpdCBnZW5lcmljICh4ZHBfZG9fcmVkaXJlY3QveGRwX2ZsdXNoKSwgc28g
aXQgSnVzdCBXb3JrcyAKPj4+IGZvcgo+Pj4gICAgYWxsIFhEUCBjYXBhYmxlIGRyaXZlcnMuCj4+
Cj4+IEkgdHJpZWQgdG8gbWFrZSB0aGlzIGFzIGdlbmVyaWMgYXMgcG9zc2libGUgYW5kIG1ha2Ug
dGhlIGNoYW5nZXMgdG8gCj4+IHRoZQo+PiBkcml2ZXIgdmVyeSBtaW5pbWFsLCBidXQgY291bGQg
bm90IGZpbmQgYSB3YXkgdG8gYXZvaWQgYW55IGNoYW5nZXMgYXQKPj4gYWxsIHRvIHRoZSBkcml2
ZXIuIHhkcF9kb19kaXJlY3QoKSBnZXRzIGNhbGxlZCBiYXNlZCBhZnRlciB0aGUgY2FsbCAKPj4g
dG8KPj4gYnBmX3Byb2dfcnVuX3hkcCgpIGluIHRoZSBkcml2ZXJzLgo+Pgo+Pj4KPj4+IFRoYW5r
cyBmb3Igd29ya2luZyBvbiB0aGlzIQo+Pj4KPj4+Cj4+PiBCasO2cm4KPj4+Cj4+PiBbMV0KPj4+
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDE4MTIwNzExNDQzMS4xODAzOC0xLWJq
b3JuLnRvcGVsQGdtYWlsLmNvbS8KPj4+Cj4+Pgo+Pj4KPj4+PiBTcmlkaGFyIFNhbXVkcmFsYSAo
NSk6Cj4+Pj4gICAgeHNrOiBDb252ZXJ0IGJvb2wgJ3pjJyBmaWVsZCBpbiBzdHJ1Y3QgeGRwX3Vt
ZW0gdG8gYSB1MzIgYml0bWFwCj4+Pj4gICAgeHNrOiBJbnRyb2R1Y2UgWERQX1NLSVBfQlBGIGJp
bmQgb3B0aW9uCj4+Pj4gICAgaTQwZTogRW5hYmxlIFhEUF9TS0lQX0JQRiBvcHRpb24gZm9yIEFG
X1hEUCBzb2NrZXRzCj4+Pj4gICAgaXhnYmU6IEVuYWJsZSBYRFBfU0tJUF9CUEYgb3B0aW9uIGZv
ciBBRl9YRFAgc29ja2V0cwo+Pj4+ICAgIHhkcHNvY2tfdXNlcjogQWRkIHNraXBfYnBmIG9wdGlv
bgo+Pj4+Cj4+Pj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5j
ICAgfCAyMiArKysrKysrKystCj4+Pj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGVfeHNrLmMgICAgfCAgNiArKysKPj4+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2l4Z2JlL2l4Z2JlX21haW4uYyB8IDIwICsrKysrKysrLQo+Pj4+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMgIHwgMTYgKysrKysrLQo+Pj4+ICAgaW5jbHVk
ZS9uZXQveGRwX3NvY2suaCAgICAgICAgICAgICAgICAgICAgICAgIHwgMjEgKysrKysrKystCj4+
Pj4gICBpbmNsdWRlL3VhcGkvbGludXgvaWZfeGRwLmggICAgICAgICAgICAgICAgICAgfCAgMSAr
Cj4+Pj4gICBpbmNsdWRlL3VhcGkvbGludXgveGRwX2RpYWcuaCAgICAgICAgICAgICAgICAgfCAg
MSArCj4+Pj4gICBuZXQveGRwL3hkcF91bWVtLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgOSArKy0tCj4+Pj4gICBuZXQveGRwL3hzay5jICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCA0MyAKPj4+PiArKysrKysrKysrKysrKysrLS0tCj4+Pj4gICBuZXQveGRwL3hza19k
aWFnLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNSArKy0KPj4+PiAgIHNhbXBsZXMv
YnBmL3hkcHNvY2tfdXNlci5jICAgICAgICAgICAgICAgICAgICB8ICA4ICsrKysKPj4+PiAgIDEx
IGZpbGVzIGNoYW5nZWQsIDEzNSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKPj4+Pgo+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4+
IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
