Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3CD7472EE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 15:41:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBFAC41797;
	Tue,  4 Jul 2023 13:41:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBFAC41797
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688478094;
	bh=+oHkjOdXdjVKoDdujAOXB0HkdVZRPzX73Aa7o84zgg8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ueo//DGupqSeS+zyzl/T0nTldoTY3WXRA0DcXZaSfJTPQqmPChEzyZ127hArNpbEo
	 VgtCFVIUclls/1d/U9d8x3s+j7ft/X39/mZHJrTpP4ngOZiUPyqzKeDzVDMMEEIJdF
	 ASZaxMaJ2hsBvJJVM5f5jzvSCDbAyzjQ2YcBdtiG4pjBDHdnJVO44QFLMcNblraAcw
	 ofWZCDND6i87mooBgKvze6BHu6/q10L9EKe96uk/5cMwYB7c7MAgIgvIpWZaIu1IDA
	 ZvwSRdW9IXgGKJYntu+ZpIUf6qMddASz1/9kv+QFNwP9FLG7v42bW7AmU0h44lotZc
	 VolcIVb0IbMEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6MkTSWojI3kL; Tue,  4 Jul 2023 13:41:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B4F341794;
	Tue,  4 Jul 2023 13:41:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B4F341794
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 955A41BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 13:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D67481C93
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 13:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D67481C93
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id txDoqB87VNEt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 13:41:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5855881852
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5855881852
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 13:41:26 +0000 (UTC)
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-461-SbG40d50PN2GCG1zpunEAw-1; Tue, 04 Jul 2023 09:41:23 -0400
X-MC-Unique: SbG40d50PN2GCG1zpunEAw-1
Received: by mail-qv1-f70.google.com with SMTP id
 6a1803df08f44-635eb5b04e1so12684156d6.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Jul 2023 06:41:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688478083; x=1691070083;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wN6My7QkCSTDEbV1bafiq227wzDsbUpmpzFl4pw15UQ=;
 b=FBJXFzVtexda5Aeah5FoPi05hyiOtCWeiCRSjqyG6pAwnKnLO9K1PUcIIH4b8FHfkI
 3r840pJtOcTh+MiP3zMCruoXZqF08BaHbxU7COcKnVgJo88olyAW2l69aGU3GAyTwmKh
 xFtVCjGfltGQVyM9Od4M7rlWC08RI0q7C/hIG8atvilujsmMb/SnI0ZqPGpQdyFrxKJk
 uEhhkhkHfcfYsBmZW8N+DPfC8oxbH/wONoKe7tuzm9+MyYS9b8yK5T1AHXhrkIDZ0gzD
 7J8ODWUHQOi0vuvXI10U0xNZgpaO5AHlE47MfMVva5EFI0q09QAP+UI6RKZm+9FcdJvp
 6BFQ==
X-Gm-Message-State: ABy/qLaah9doep2bYhtb8QcWF59HUu9bwwGm+4AjTaphNn5Ebfroui6H
 NOyQydqe2zXSHcxi1hkLG7814hZzTxr2RZpkf1Dco4UR/n8WIsNe6FtLu2Hu2nWJxdcNUHbI9vh
 +iCqfBIsC67NrbdcxiwJQmvEOwXMYvw==
X-Received: by 2002:a05:6214:2aa3:b0:636:e4f:6b88 with SMTP id
 js3-20020a0562142aa300b006360e4f6b88mr14204377qvb.1.1688478083398; 
 Tue, 04 Jul 2023 06:41:23 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHXCCe62PE3K++Fb0dctl/2E4pM6lZzo0WB+ybxV1kEqus5eoSqkO8gs6NXLp3YpVeadEFZrA==
X-Received: by 2002:a05:6214:2aa3:b0:636:e4f:6b88 with SMTP id
 js3-20020a0562142aa300b006360e4f6b88mr14204362qvb.1.1688478083156; 
 Tue, 04 Jul 2023 06:41:23 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-247-156.dyn.eolo.it.
 [146.241.247.156]) by smtp.gmail.com with ESMTPSA id
 p1-20020a05621415c100b006260c683bf2sm12551882qvz.53.2023.07.04.06.41.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Jul 2023 06:41:22 -0700 (PDT)
Message-ID: <062061fc4d4d3476e3b0255803b726956686eb19.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Tue, 04 Jul 2023 15:41:19 +0200
In-Reply-To: <CAA85sZuQh0FMoGDFVyOad6G1UB9keodd3OCZ4d4r+xgXDArcVA@mail.gmail.com>
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
 <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
 <CAA85sZti1=ET=Tc3MoqCX0FqthHLf6MSxGNAhJUNiMms1TfoKA@mail.gmail.com>
 <CAA85sZvn04k7=oiTQ=4_C8x7pNEXRWzeEStcaXvi3v63ah7OUQ@mail.gmail.com>
 <ffb554bfa4739381d928406ad24697a4dbbbe4a2.camel@redhat.com>
 <CAA85sZunA=tf0FgLH=MNVYq3Edewb1j58oBAoXE1Tyuy3GJObg@mail.gmail.com>
 <CAA85sZsH1tMwLtL=VDa5=GBdVNWgifvhK+eG-hQg69PeSxBWkg@mail.gmail.com>
 <CAA85sZu=CzJx9QD87-vehOStzO9qHUSWk6DXZg3TzJeqOV5-aw@mail.gmail.com>
 <0a040331995c072c56fce58794848f5e9853c44f.camel@redhat.com>
 <CAA85sZuuwxtAQcMe3LHpFVeF7y-bVoHtO1nukAa2+NyJw3zcyg@mail.gmail.com>
 <CAA85sZurk7-_0XGmoCEM93vu3vbqRgPTH4QVymPR5BeeFw6iFg@mail.gmail.com>
 <486ae2687cd2e2624c0db1ea1f3d6ca36db15411.camel@redhat.com>
 <CAA85sZsJEZK0g0fGfH+toiHm_o4pdN+Wo0Wq9fgsUjHXGxgxQA@mail.gmail.com>
 <CAA85sZs4KkfVojx=vxbDaWhWRpxiHc-RCc2OLD2c+VefRjpTfw@mail.gmail.com>
 <5688456234f5d15ea9ca0f000350c28610ed2639.camel@redhat.com>
 <CAA85sZvT-vAHQooy8+i0-bTxgv4JjkqMorLL1HjkXK6XDKX41w@mail.gmail.com>
 <CAA85sZs2biYueZsbDqdrMyYfaqH6hnSMpymgbsk=b3W1B7TNRA@mail.gmail.com>
 <CAA85sZs_H3Dc-mYnj8J5VBEwUJwbHUupP+U-4eG20nfAHBtv4w@mail.gmail.com>
 <92a4d42491a2c219192ae86fa04b579ea3676d8c.camel@redhat.com>
 <CAA85sZvtspqfep+6rH8re98-A6rHNNWECvwqVaM=r=0NSSsGzA@mail.gmail.com>
 <dfbbe91a9c0abe8aba2c00afd3b7f7d6af801d8e.camel@redhat.com>
 <CAA85sZuQh0FMoGDFVyOad6G1UB9keodd3OCZ4d4r+xgXDArcVA@mail.gmail.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688478084;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wN6My7QkCSTDEbV1bafiq227wzDsbUpmpzFl4pw15UQ=;
 b=Opop9tuzD9e5vNWNtS3I6NvA0bUV91u0+jUdRBG6/7yT+4qIHyvE4/K66tvfPFf9yvrXtX
 cvjuJ7YsSsmjR0cx+0HDggekCWFr3mBbWAQxywiB8NtBpWVs8YGUHYQVrSsWGbhs97yHP0
 alG1dFJlvHUt3Un6SyxM2yU+6XAlqd0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Opop9tuz
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyMDIzLTA3LTA0IGF0IDE1OjIzICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiBP
biBUdWUsIEp1bCA0LCAyMDIzIGF0IDI6NTTigK9QTSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhh
dC5jb20+IHdyb3RlOgo+ID4gCj4gPiBPbiBUdWUsIDIwMjMtMDctMDQgYXQgMTM6MzYgKzAyMDAs
IElhbiBLdW1saWVuIHdyb3RlOgo+ID4gPiBQcm9wcGVyIGJ1ZyB0aGlzIHRpbWU6Cj4gPiA+IGNh
dCBidWcudHh0IHwgLi9zY3JpcHRzL2RlY29kZV9zdGFja3RyYWNlLnNoIHZtbGludXgKPiA+IAo+
ID4gVG8gYmUgc3VyZSwgaXMgdGhpcyB3aXRoIHRoZSBsYXN0IHBhdGNoIEkgc2hhcmVkPyB0aGlz
IG9uZSBJIG1lYW46Cj4gCj4gVGhlIGN1cnJlbnQgbW9kaWZpY2F0aW9ucyBJIGhhdmUsIG9uIHRv
cCBvZiB2Ni40LjEsIGlzOgo+IGRpZmYgLS1naXQgYS9uZXQvY29yZS9za2J1ZmYuYyBiL25ldC9j
b3JlL3NrYnVmZi5jCj4gaW5kZXggY2VhMjhkMzBhYmI1Li44NTUyY2FhMTk3ZjkgMTAwNjQ0Cj4g
LS0tIGEvbmV0L2NvcmUvc2tidWZmLmMKPiArKysgYi9uZXQvY29yZS9za2J1ZmYuYwo+IEBAIC00
MjcyLDYgKzQyNzIsMTEgQEAgc3RydWN0IHNrX2J1ZmYgKnNrYl9zZWdtZW50X2xpc3Qoc3RydWN0
IHNrX2J1ZmYgKnNrYiwKPiAKPiAgICAgICAgIHNrYl9zaGluZm8oc2tiKS0+ZnJhZ19saXN0ID0g
TlVMTDsKPiAKPiArICAgICAgIC8qIGxhdGVyIGNvZGUgd2lsbCBjbGVhciB0aGUgZ3NvIGFyZWEg
aW4gdGhlIHNoYXJlZCBpbmZvICovCj4gKyAgICAgICBlcnIgPSBza2JfaGVhZGVyX3VuY2xvbmUo
c2tiLCBHRlBfQVRPTUlDKTsKPiArICAgICAgIGlmIChlcnIpCj4gKyAgICAgICAgICAgICAgIGdv
dG8gZXJyX2xpbmVhcml6ZTsKPiArCj4gICAgICAgICB3aGlsZSAobGlzdF9za2IpIHsKPiAgICAg
ICAgICAgICAgICAgbnNrYiA9IGxpc3Rfc2tiOwo+ICAgICAgICAgICAgICAgICBsaXN0X3NrYiA9
IGxpc3Rfc2tiLT5uZXh0Owo+IEBAIC00MzI4LDYgKzQzMzMsOSBAQCBzdHJ1Y3Qgc2tfYnVmZiAq
c2tiX3NlZ21lbnRfbGlzdChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+IAo+ICAgICAgICAgc2tiLT5w
cmV2ID0gdGFpbDsKPiAKPiArICAgICAgIGlmIChXQVJOX09OX09OQ0UoIXNrYi0+bmV4dCkpCj4g
KyAgICAgICAgICAgICAgIGdvdG8gZXJyX2xpbmVhcml6ZTsKPiArCj4gICAgICAgICBpZiAoc2ti
X25lZWRzX2xpbmVhcml6ZShza2IsIGZlYXR1cmVzKSAmJgo+ICAgICAgICAgICAgIF9fc2tiX2xp
bmVhcml6ZShza2IpKQo+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9saW5lYXJpemU7Cj4gLS0t
Cj4gCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvOTJhNGQ0MjQ5MWEyYzIxOTE5
MmFlODZmYTA0YjU3OWVhMzY3NmQ4Yy5jYW1lbEByZWRoYXQuY29tLwo+ID4gCj4gPiBDb3VsZCB5
b3UgcGxlYXNlIGFkZGl0aW9uYWxseSBlbmFibGUgQ09ORklHX0RFQlVHX05FVCBpbiB5b3VyIGJ1
aWxkPwo+IAo+IFN1cmUsIHdpbGwgZG8KPiAKPiA+IENvdWxkIHlvdSBwbGVhc2UgZ2l2ZSBhIGRl
dGFpbGVkIGRlc2NyaXB0aW9uIG9mIHlvdXIgbmV0d29yayB0b3BvbG9neQo+ID4gYW5kIHRoZSBy
dW5uaW5nIHRyYWZmaWM/Cj4gCj4gVGhpcyBtYWNoaW5lIGhhcyB0d28gInJlYWwgaW50ZXJmYWNl
cyIgYW5kIHR3byBpbnRlcmZhY2VzIHRoYXQgcnVucyBhcwo+IGJyaWRnZXMgZm9yIHZpcnR1YWwg
bWFjaGluZXMKPiBlbm8xIC0gcmVhbCBpbnRlcm5hbAo+IGVubzIgLSBicmlkZ2UgLSBpbnRlcm5h
bAo+IGVubzMgLSByZWFsIGV4dGVybmFsCj4gZW5vNCAtIGJyaWRnZSAtIGV4dGVybmFsCj4gCj4g
VGhlIGJyaWRnZXMgYXJlIHVzZWQgYnkgdGhyZWUgdmlydHVhbCBtYWNoaW5lcywgdHdvIG9mIHdo
aWNoIGFyZQo+IGF0dGFjaGVkIG9uIGJvdGggbmV0d29ya3MKPiAKPiBUcmFmZmljIHNlZW1lZCB0
byBiZSB2aWRlbyBzdHJlYW1pbmcsIGF0IGxlYXN0IGF0IGZpcnN0LCBub3cgSSBkb24ndAo+IHJl
YWxseSBrbm93LiBJIGRvIGhhdmUgYSBmZXcgc21hcnQgZGV2aWNlcyBzbyBJIGFzc3VtZSB0aGVy
ZSBpcwo+IGEgYml0IG9mIG11bHRpY2FzdCB0cmFmZmljIGFzIHdlbGwgLSBidXQgbm90IHJlYWxs
eSBhbnl0aGluZyB1bnVzdWFsIGFzIHN1Y2guCgpJbiB0aGVyZSBhbnkgWERQIHByb2dyYW0gcnVu
bmluZyBvbiB0aGUgaG9zdCBzaWRlPyBQb3NzaWJseSBjaGFuZ2luZwp0aGUgcGFja2V0IGhkcj8K
ClRoYW5rcyEKCi9QCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
