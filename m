Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C00D871F2D3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 21:18:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00CA381EA5;
	Thu,  1 Jun 2023 19:18:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00CA381EA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685647138;
	bh=rx9saKyPK0znXdZZE8zTK1qidFnJbHTzh1W255J+WxA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bYUOxzPnDWFtm8VjU90O2enISsjXe/3KZnKtrNQOaWJs4YgI6MNHbm4QrOn72npY5
	 sM8USnDC+YR9eCWEVHhKpD5zRNTw1SbSDbTq0ccJsCVJKUyOVj7J0Pt4Pq/kjobCy3
	 co/V8hNWGmGjyLP62xEK2bkF5xqb49/Kn1p/HwbKQ0yhwTgQktiXU0IcaSFPbzjAd9
	 rTLf4K3kSk2Mri0A6Emyla+g9K6tA+wbdRKIs28D+I0iwlmT6zFJPdQQPcu7HoBNxG
	 W8p8B9/L4tVoLskdnBLXWONZ6gmWlzdZkyVAFJdtl7mv5irV0snmIw2nwFZvlD0hJx
	 4fp9iOuztD8yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VpMJpvFPmQZL; Thu,  1 Jun 2023 19:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A08AF818C9;
	Thu,  1 Jun 2023 19:18:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A08AF818C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C2421BF57B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 19:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 52C4342578
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 19:18:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52C4342578
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9cYwPyuM4fxU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 19:18:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6C6941F71
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6C6941F71
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 19:18:49 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-155-Q_ylVGVON2-S-6xFbZq-BA-1; Thu, 01 Jun 2023 15:18:46 -0400
X-MC-Unique: Q_ylVGVON2-S-6xFbZq-BA-1
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-506b21104faso865706a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Jun 2023 12:18:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685647125; x=1688239125;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AXZblQ6dfdJAFvhTySHqrm3zHQnYxLEODsJjqzbVtrQ=;
 b=V9TMCOu/TTuO27/GcB2/j9kYby9ysLdZfVWG6K1iT9X/hmNnnXqzgmsDb/TSI2Jedy
 qqP22CJqf0Osdx+d8mA2tlJYOcb/kRE3leAHnQa28rMvMBqucB6noptUNS8DnpLVshHn
 /u36J02w2ltUeAJMjM9Z+zoEx6joJa+KasMy8TGYCraFwSxBTiUoofOT480PhLTh+aS6
 BSemXDonrfohmU2Qcc9FnUmGKSSEsw944VCP1YzIBTqXDpiB2bzp0s+ZGZCQ1kWQrniw
 yaRRywCmk7hBI8UbbMRpw0FeCZBrCm9N9Ary/Lb9XrprtoJF8iMFkWE8bFDAQ9Z55J1Q
 ixog==
X-Gm-Message-State: AC+VfDyBUjuxgPy/VQkZlFUIXjjVDWWmJkjWlNanv6+gwu1ahImiM8//
 Mk1vRZgvx6B6ETDgzzgmYFowDSck5Zv1qB17aKOzCAch6Wwc/BVqrcbDtj13kq0E6Lq6hkj20N9
 xRXBOAGjGQh0MQ963bhHKBC3kQopWYubrwPOOhzU2VtAbvg==
X-Received: by 2002:a50:ee9a:0:b0:514:9e81:9060 with SMTP id
 f26-20020a50ee9a000000b005149e819060mr584826edr.13.1685647125483; 
 Thu, 01 Jun 2023 12:18:45 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7shnT9gaJdT8OwU0fEFchHcG0Td6FvusUjAGGkrZs3vVfH+EsjjjmZ5AtnFd09NNf+O8AshtIo80PK/4VvPp8=
X-Received: by 2002:a50:ee9a:0:b0:514:9e81:9060 with SMTP id
 f26-20020a50ee9a000000b005149e819060mr584814edr.13.1685647125180; Thu, 01 Jun
 2023 12:18:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230530174605.2772054-1-jacob.e.keller@intel.com>
 <20230530174605.2772054-6-jacob.e.keller@intel.com>
 <CADEbmW0zqcb9AqHTcy=+bk70ippSR0Ze9FJDMcXBAeT7XWgsLg@mail.gmail.com>
 <ff2ae1ce-98df-48af-8079-4b47e5828f0d@intel.com>
In-Reply-To: <ff2ae1ce-98df-48af-8079-4b47e5828f0d@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 1 Jun 2023 21:18:33 +0200
Message-ID: <CADEbmW1jxrNGjNJjj1AX0eNN1Cfs2ea0H2R8GipgHv0jKPTS_g@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1685647128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AXZblQ6dfdJAFvhTySHqrm3zHQnYxLEODsJjqzbVtrQ=;
 b=Ll7cT9Fnc312QHCG43h7b4AmRaknpM4q427opEA1q7gzZP899V2dEbYGbz66hnCZIhZ3+1
 8nkl2ILVrMjvPJaLfNucWaEIcYaljID6zG+/O+IGO82FWYee29VTOLe5AKIUJ7fQU2uu0s
 yxWpng8ihW15MPM3w4dRDCQl7001lRQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ll7cT9Fn
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: do not re-enable
 miscellaneous interrupt until thread_fn completes
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBKdW4gMSwgMjAyMyBhdCA4OjQ24oCvUE0gSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtl
bGxlckBpbnRlbC5jb20+IHdyb3RlOgo+IE9uIDUvMzEvMjAyMyA3OjE5IEFNLCBNaWNoYWwgU2No
bWlkdCB3cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDMwLCAyMDIzIGF0IDc6NDbigK9QTSBKYWNvYiBL
ZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBBdCB0aGUg
ZW5kIG9mIGljZV9taXNjX2ludHIoKSB0aGUgZHJpdmVyIGNhbGxzIGljZV9pcnFfZHluYW1pY19l
bmEoKSB0bwo+ID4+IHJlLWVuYWJsZSB0aGUgbWlzY2VsbGFuZW91cyBpbnRlcnJ1cHQuIFRoaXMg
aXMgZG9uZSBiZWZvcmUgdGhlCj4gPj4gaWNlX21pc2NfaW50cl90aHJlYWRfZm4gY2FuIHJ1biBh
bmQgY29tcGxldGUuCj4gPj4KPiA+PiBBY2NvcmRpbmcgdG8gdGhlIGtlcm5lbCBmdW5jdGlvbiBj
b21tZW50IGRvY3VtZW50YXRpb24gZm9yCj4gPj4gcmVxdWVzdF90aHJlYWRlZF9pcnEoKSwgdGhl
IGludGVycnVwdCBzaG91bGQgcmVtYWluIGRpc2FibGVkIHVudGlsIHRoZQo+ID4+IHRocmVhZCBm
dW5jdGlvbiBjb21wbGV0ZXMgaXRzIHRhc2suCj4gPj4KPiA+PiBCeSByZS1lbmFibGluZyB0aGUg
aW50ZXJydXB0IGF0IHRoZSBlbmQgb2YgdGhlIGhhcmQgSVJRLCBpdCBpcyBwb3NzaWJsZSBmb3IK
PiA+PiBhIG5ldyBpbnRlcnJ1cHQgdG8gdHJpZ2dlciB3aGlsZSB0aGUgdGhyZWFkIGZ1bmN0aW9u
IGlzIHByb2Nlc3NpbmcuIFRoaXMgaXMKPiA+PiBwcm9ibGVtYXRpYyBmb3IgUFRQIFR4IHRpbWVz
dGFtcHMuCj4gPj4KPiA+PiBGb3IgRTgyMiBkZXZpY2VzLCB0aGUgaGFyZHdhcmUgaW4gdGhlIFBI
WSBrZWVwcyB0cmFjayBvZiBob3cgbWFueQo+ID4+IG91dHN0YW5kaW5nIHRpbWVzdGFtcHMgYXJl
IGdlbmVyYXRlZCBhbmQgaG93IG1hbnkgdGltZXN0YW1wcyBhcmUgcmVhZCBmcm9tCj4gPj4gdGhl
IFBIWS4KPiA+Pgo+ID4+IFRoaXMgY291bnRlciBpcyBpbmNyZW1lbnRlZCBvbmNlIGZvciBlYWNo
IHRpbWVzdGFtcCB0aGF0IGlzIGNhcHR1cmVkIGJ5Cj4gPj4gaGFyZHdhcmUsIGFuZCBkZWNyZW1l
bnRlZCBvbmNlIGVhY2ggdGltZSBhIHRpbWVzdGFtcCBpcyByZWFkIGZyb20gdGhlIFBIWS4KPiA+
PiBUaGUgUEhZIHdpbGwgbm90IGdlbmVyYXRlIGEgbmV3IGludGVycnVwdCB1bmxlc3MgdGhpcyBp
bnRlcm5hbCBjb3VudGVyIGlzCj4gPj4gemVybyBiZWZvcmUgdGhlIG1vc3QgcmVjZW50bHkgY2Fw
dHVyZWQgdGltZXN0YW1wLgo+ID4+Cj4gPj4gQmVjYXVzZSBvZiB0aGlzIGNvdW50ZXIgYmVoYXZp
b3IsIGEgcmFjZSB3aXRoIHRoZSBoYXJkIElSUSBhbmQgdGhyZWFkZWQgSVJRCj4gPj4gZnVuY3Rp
b24gY2FuIHJlc3VsdCBpbiB0aGUgcG90ZW50aWFsIGZvciB0aGUgY291bnRlciB0byBnZXQgc3R1
Y2sgc3VjaCB0aGF0Cj4gPj4gbm8gbmV3IGludGVycnVwdHMgd2lsbCBiZSB0cmlnZ2VyZWQgdW50
aWwgdGhlIGRldmljZSBpcyByZXNldC4KPiA+Pgo+ID4+IENvbnNpZGVyIHRoZSBmb2xsb3dpbmcg
ZmxvdzoKPiA+Pgo+ID4+ICAxIC0+IFR4IHRpbWVzdGFtcCBjb21wbGV0ZXMgaW4gaGFyZHdhcmUK
PiA+PiAgMiAtPiB0aW1lc3RhbXAgaW50ZXJydXB0IG9jY3Vycwo+ID4+ICAzIC0+IGljZV9taXNj
X2ludHIoKSByZS1lbmFibGVzIHRpbWVzdGFtcCBpbnRlcnJ1cHQsIGFuZCB3YWtlcyB0aGUKPiA+
PiAgICAgICB0aHJlYWRfZm4KPiA+PiAgNCAtPiB0aHJlYWRfZm4gaXMgcnVubmluZyBhbmQgcHJv
Y2Vzc2luZyBUeCB0aW1lc3RhbXAKPiA+PiAgNSAtPiB0aGUgVHggdGltZXN0YW1wIGlzIHJlYWQg
ZnJvbSBQSFksIGNsZWFyaW5nIHRoZSBjb3VudGVyCj4gPj4gIDYgLT4gYSBuZXcgVHggdGltZXN0
YW1wIGNvbXBsZXRlcyBpbiBoYXJkd2FyZSwgdHJpZ2dlcmluZyBpbnRlcnJ1cHQKPiA+PiAgNyAt
PiB0aGUgdGhyZWFkX2ZuIGhhc24ndCBleGl0ZWQgYW5kIHJlcG9ydGVkIElSUSBoYW5kbGVkCj4g
Pj4gIDggLT4gaWNlX21pc2NfaW50cigpIHRyaWdnZXJzIGFuZCBzZWVzIFBUUCBpbnRlcnJ1cHQs
IHNvIHRyaWVzIHRvIHdha2UgdGhyZWFkCj4gPj4gIDkgLT4gdGhyZWFkX2ZuIGlzIGFscmVhZHkg
cnVubmluZyAoSVJRVEZfUlVOVEhSRUFEIGlzIHNldCBzdGlsbCEpIHNvIHdlCj4gPj4gICAgICAg
c2tpcCBydW5uaW5nIHRoZSB0aHJlYWQuLi4KPiA+Cj4gPiBUaGVyZSBpcyBhIG1pc3VuZGVyc3Rh
bmRpbmcgaGVyZS4gSVJRVEZfUlVOVEhSRUFEIGRvZXMgbm90IHJlbWFpbiBzZXQKPiA+IGZvciB0
aGUgZXhlY3V0aW9uIG9mIHRocmVhZF9mbi4gVGhlIElSUSB0aHJlYWQgY2xlYXJzIHRoZSBmbGFn
Cj4gPiAqYmVmb3JlKiBpdCBzdGFydHMgZXhlY3V0aW5nIHlvdXIgdGhyZWFkX2ZuLiBTZWUga2Vy
bmVsL2lycS9tYW5hZ2UuYy4KPiA+IFRoZSBJUlEgdGhyZWFkJ3MgbWFpbiBsb29wIGlzIGluIGly
cV90aHJlYWQoKS4gRXZlcnkgaXRlcmF0aW9uIG9mIHRoZQo+ID4gbG9vcCBzdGFydHMgd2l0aCBp
cnFfd2FpdF9mb3JfaW50ZXJydXB0KCkuIEl0IHVzZXMKPiA+ICJ0ZXN0X2FuZF9jbGVhcl9iaXQo
SVJRVEZfUlVOVEhSRUFELCAuLi4pIiB0byBjaGVjayBpZiB0aGVyZSdzIHdvcmsgdG8KPiA+IGRv
Lgo+ID4KPiA+IFNvIGl0J3Mgbm90IHBvc3NpYmxlIGZvciBzdGVwIDkgdG8gZm9yZ2V0IHRoZSBp
bnRlcnJ1cHQgbGlrZSB0aGF0LiBJZgo+ID4gdGhyZWFkX2ZuIGlzIHN0aWxsIGV4ZWN1dGluZywg
dGhlIHNldHRpbmcgb2YgSVJRVEZfUlVOVEhSRUFEIGJ5IHRoZQo+ID4gaGFyZCBpbnRlcnJ1cHQg
aGFuZGxlciB3aWxsIHRlbGwgdGhlIElSUSB0aHJlYWQgdG8gZ28gdGhyb3VnaCB0aGUgbG9vcAo+
ID4gYWdhaW4uCj4gPgo+ID4gTWljaGFsCj4gPgo+Cj4gT2ssIHNvIG15IG9yaWdpbmFsIHVuZGVy
c3RhbmRpbmcgd2FzIGZsYXdlZCwgYnV0IEkgdGhpbmsgSSBzZWUgdGhlCj4gYWN0dWFsIHJhY2Ug
dGhhdCBoYXBwZW5lZC4KPgo+IEknbGwgdHJ5IHRvIGV4cGxhaW4gaXQgaGVyZSwgYW5kIHNlZSBp
ZiB5b3UgYWdyZWUgd2l0aCB0aGUgb3V0bGluZSwgdGhlbgo+IEkgY2FuIHVwZGF0ZSB0aGUgY29t
bWl0IG1lc3NhZ2UuCj4KPiBUaGUgUEhZcyBrZWVwIHRyYWNrIG9mIGhvdyBtYW55IG91dHN0YW5k
aW5nIHRpbWVzdGFtcHMgYXJlIGluIG1lbW9yeSwKPiBhbmQgb25seSBnZW5lcmF0ZSBhbiBpbnRl
cnJ1cHQgaWYgdGhlIGNvdW50IG9mIHRpbWVzdGFtcHMgZ29lcyBmcm9tCj4gYmVsb3cgYSB0aHJl
c2hvbGQgdG8gYWJvdmUgYSB0aHJlc2hvbGQgdmFsdWUgKHNldCBieSB0aGUgZHJpdmVyIHRvIGJl
IDEsCj4gc28gdGhhdCBpdCB3aWxsIGludGVycnVwdCBpbW1lZGlhdGVseSBvbiB0aGUgZmlyc3Qg
dGltZXN0YW1wKS4KPgo+IEFzIGxvbmcgYXMgdGhlcmUgYXJlIHVucmVhZCB0aW1lc3RhbXBzIGlu
IHRoZSBtZW1vcnkgYmFuaywgaXQgd2lsbCBub3QKPiBnZW5lcmF0ZSBhIG5ldyBpbnRlcnJ1cHQu
Cj4KPiBTb21laG93LCB0aGUgZGV2aWNlIGdldHMgaW4gYSBzdGF0ZSB3aGVyZSBpdCBmYWlsZWQg
dG8gcmVhZCB0aGUKPiB0aW1lc3RhbXBzIGZyb20gdGhlIFBIWSBtZW1vcnkgKmFmdGVyKiB0aGUg
aW50ZXJydXB0IG9jY3VycmVkLiBXaGVuIHRoaXMKPiBoYXBwZW5zLCB3ZSBubyBsb25nZXIgZ2V0
IGEgbmV3IGludGVycnVwdCwgYmVjYXVzZSB0aGUgUEhZIHNlZXMgdGhhdAo+IHRoZXJlIGFyZSBz
dGlsbCB1bnJlYWQgdGltZXN0YW1wcy4gKFllcywgSSBrbm93LCB0aGlzIGlzIGEgcG9vciBkZXNp
Z24pLgo+Cj4gQmVjYXVzZSBvZiB0aGlzLCB3ZSBzdG9wIHByb2Nlc3NpbmcgYWxsIGZ1dHVyZSB0
aW1lc3RhbXBzLgo+Cj4gVGhlIGFjdHVhbCByYWNlIGlzIHBvc3NpYmx5IHNvbWV0aGluZyBsaWtl
IHRoZSBmb2xsb3dpbmc6Cj4KPiBzYW1lIHN0ZXBzIHVwIGZyb20gMS03LCB0aGVuOgo+Cj4gOCAt
PiBpY2VfbWlzY19pbnRyIHRpcmlnZ2VycyBhbmQgc2VlcyBQVFAgaW50ZXJydXB0LCBzbyBpdCBz
ZXRzCj4gUEZJTlRfT0lDUl9UU1lOX1RYX00gaW4gcGYtPm9pY3JfbWlzYy4KPiA5IC0+IHVuZm9y
dHVuYXRlbHksIGljZV9taXNjX2ludHJfdGhyZWFkX2ZuIHRoZW4gKmNsZWFycyogdGhlIGJpdCBh
ZnRlcgo+IGV4aXRpbmcgZnJvbSBpdHMgcHJvY2Vzc2luZyBsb29wLgo+IDEwIC0+IG9uY2UgdGhy
ZWFkX2ZuIGV4aXRzLCB0aGUgdGhyZWFkZWQgSVJRIGxvZ2ljIHJlLXJ1bnMgdGhlIGZ1bmN0aW9u
Lgo+IEhvd2V2ZXIsIGR1ZSB0byB0aGUgd2F5IHRoYXQgd2UgaW50ZXJhY3QgYmV0d2VlbiB0aGUg
bWFpbiBhbmQgdGhyZWFkCj4gZnVuY3Rpb24sIHRoZSBzZWNvbmQgcnVuIHNlZXMgdGhhdCBQRklO
VF9PSUNSX1RTWU5fVFhfTSBpcyB1bnNldCwgc28gaXQKPiBkb2Vzbid0IHJ1biB0aGUgbG9vcCBh
Z2Fpbi4KPgo+IFRoaXMgcGF0Y2ggZml4ZXMgdGhpbmdzIGJ5IGVuc3VyaW5nIHRoYXQgdGhlIGhh
cmR3YXJlIHdvbid0IGV2ZW4KPiBnZW5lcmF0ZSBhIGhhcmQgSVJRIGludGVycnVwdCB1bnRpbCB0
aGUgdGhyZWFkX2ZuIGNvbXBsZXRlcy4gV2UgY291bGQKPiBhbHNvIGluc3RlYWQgZml4IHRoaXMg
YnkgaW1wcm92aW5nIHRoZSBjb21tdW5pY2F0aW9uIGJldHdlZW4gdGhlIGhhbmRsZXIKPiBmdW5j
dGlvbiBhbmQgdGhlIHRocmVhZCBmdW5jdGlvbiBieSB1c2luZyBhdG9taWMgdGVzdF9hbmRfY2xl
YXIoKSwgb3IgYnkKPiB1c2luZyBhbiBhdG9taWMgY291bnRlci4KPgo+IEkgY2FuIHNlbmQgYSB2
MyB3aXRoIGFwcHJvcHJpYXRlIGZpeGVzIGFuZCBhbiB1cGRhdGVkIGNvbW1pdCBtZXNzYWdlLAo+
IG9uY2UgdGhpcyBkZXNjcmlwdGlvbiBtYWtlcyBzZW5zZSB0byB5b3UuCgpPSywgdGhlIG5ldyBl
eHBsYW5hdGlvbiBzZWVtcyBwbGF1c2libGUuCk1pY2hhbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
