Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C30F6740C56
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 11:06:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2238981F2A;
	Wed, 28 Jun 2023 09:06:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2238981F2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687943199;
	bh=MibwCbTR4DNIjXZy/KeKJ1zNyitIqf06jN1xT24Ozpc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JO9t+czfxOWOfarnb9pJDzU7U4Nqvt49dpAbyudaWy848wpQbRuWEUy1sgR0EkvCh
	 /DG1DZBgjrQUKZuOIS/TYf7FC7Hc0XForWgddL64Uk0+tfm7XOqgE3ZB0Fo7f3lPfY
	 0bEczwv5RHD7SgkmTciCF0RvO3T5KlfqC1Z+D/lRrpY1Y3OeIPEelB2PO1MPxWK1Eh
	 PGn7zIvL+oBFSZPEUC+pNgtSQ4w/kr3h2kOhEz+vxnQ2HBRpC9NNhi+vm7vrarv0n2
	 pjdGIU3qwnoW3qwARU6wGUYG47eEecsVeyXB+NUr+nU/HW7I4vjB4UYUPKQ4jLcvKr
	 RtmvL8r/cQXGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4JUzydzP7PKN; Wed, 28 Jun 2023 09:06:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67BE581F25;
	Wed, 28 Jun 2023 09:06:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67BE581F25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C1E31BF408
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 09:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3420981F25
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 09:06:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3420981F25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kAxgTso17j2Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 09:06:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECD3B81F22
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECD3B81F22
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 09:06:30 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-644-A-ATerTqOzqM0SykDXx6eg-1; Wed, 28 Jun 2023 05:06:28 -0400
X-MC-Unique: A-ATerTqOzqM0SykDXx6eg-1
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-76716078e78so25930285a.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 02:06:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687943188; x=1690535188;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9Mt+AGh8pL9GItdGuqz+S5zOSB1kzaQK/lmag+rkrIs=;
 b=UJU3bpNdJvrKBziQ5+IIej9qX1XtpAOVkKCq9SxmDeVSGdOZSwrJlojTmmXJ3r5F5t
 3Rsf7bdRxXHenOQx3eU4Xxf8KPQI7iMoGCEiOeiTY8fVJBfVzrEubYGAVLYSZ8xnnCJQ
 PQVonO+SRytK6vZclTIsev9hNWDrqEwkQS8zet5OHhF8bLi4/CkpSB6XWwmklqzM89hO
 ksiMZugRxFTp3/4rkzQc3uhxFJ43flyepBCRIh8tPzcs8E5i3CMAouvNSiT9I+tsyQsn
 ZLIkO3oSkIsjEkU55jjTydFBeH5Sr4q5quEDrwzO/aCnatQFinQl+hpPihy0yv0I4rjU
 7tkw==
X-Gm-Message-State: AC+VfDwa09Txlx1tcYzEn/YmkKNwQ8JQ+ax9mjyM+jxxgLAVIvY/D4z8
 1yo/eXdGyyQ9r7vmGLrFt116fQv2v8fLMtd8azeDhAeCafbpu2yp3A1VvmHoZzgExGPirfCee2G
 MVdTPMoNhAeEDLhh/YJvzuL7OIJc9YQ==
X-Received: by 2002:a05:620a:190e:b0:765:3b58:99ab with SMTP id
 bj14-20020a05620a190e00b007653b5899abmr6305764qkb.4.1687943187637; 
 Wed, 28 Jun 2023 02:06:27 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7Pi+d+bIvaIEDtLwWVvkne70c3lcUzJGi2BHechnsH7bQHg9u9IfRMS66e/7JSp3u01eCa+w==
X-Received: by 2002:a05:620a:190e:b0:765:3b58:99ab with SMTP id
 bj14-20020a05620a190e00b007653b5899abmr6305743qkb.4.1687943187280; 
 Wed, 28 Jun 2023 02:06:27 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-226-127.dyn.eolo.it.
 [146.241.226.127]) by smtp.gmail.com with ESMTPSA id
 pe34-20020a05620a852200b007623c96430csm3426449qkn.111.2023.06.28.02.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jun 2023 02:06:26 -0700 (PDT)
Message-ID: <486ae2687cd2e2624c0db1ea1f3d6ca36db15411.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 28 Jun 2023 11:06:23 +0200
In-Reply-To: <CAA85sZurk7-_0XGmoCEM93vu3vbqRgPTH4QVymPR5BeeFw6iFg@mail.gmail.com>
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
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1687943189;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pEVxyVgDZMj0mMtllu0s6Z3z8eMf24hMchluFOhP2pg=;
 b=OhcsNag2w8q0cV9OmUpMCpDeWMpEj+nGLeJcLOmkZ15NLwokrdhTNfteqMyk3G7iScCbHu
 TB4+Ztbbg7tUdPFDt6tES6Zodw5pUYACP63VZmPg27B81Q5TOPxJ+PCshW5FRv61aVI2RO
 9rvxcW5hilA+RaG4BA2hLZ6YwY/xcE4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OhcsNag2
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

SGVsbG8sCgpPbiBXZWQsIDIwMjMtMDYtMjggYXQgMDk6MzcgKzAyMDAsIElhbiBLdW1saWVuIHdy
b3RlOgo+IEJlZW4gcnVubmluZyBhbGwgbmlnaHQgYnV0IGV2ZW50dWFsbHkgaXQgY3Jhc2hlZCBh
Z2Fpbi4uLgo+IAo+IFsyMTc1My4wNTU3OTVdIE91dCBvZiBtZW1vcnk6IEtpbGxlZCBwcm9jZXNz
IDk3MCAocWVtdS1zeXN0ZW0teDg2KQo+IHRvdGFsLXZtOjQ3MDk0ODhrQiwgYW5vbi1yc3M6MjE3
MjY1MmtCLCBmaWxlLXJzczo0NjA4a0IsCj4gc2htZW0tcnNzOjBrQiwgVUlEOjc3IHBndGFibGVz
OjQ4MDBrQiBvb21fc2NvcmVfYWRqOjAKPiBbMjQyNDkuMDYxMTU0XSBnZW5lcmFsIHByb3RlY3Rp
b24gZmF1bHQsIHByb2JhYmx5IGZvciBub24tY2Fub25pY2FsCj4gYWRkcmVzcyAweGIwNzQ2ZDRl
NmJlZTM1ZTI6IDAwMDAgWyMxXSBQUkVFTVBUIFNNUCBOT1BUSQo+IFsyNDI0OS4wNzIxMzhdIENQ
VTogMCBQSUQ6IDg5MyBDb21tOiBuYXBpL2VubzEtNjggVGFpbnRlZDogRyAgICAgICAgVwo+ICAg
ICAgICAgNi40LjAtZGlydHkgIzM2Ngo+IFsyNDI0OS4wODA2NzBdIEhhcmR3YXJlIG5hbWU6IFN1
cGVybWljcm8gU3VwZXIgU2VydmVyL0EyU0RpLTEyQy1ITE40RiwKPiBCSU9TIDEuN2EgMTAvMTMv
MjAyMgo+IFsyNDI0OS4wODg4NTJdIFJJUDogMDAxMDprbWVtX2NhY2hlX2FsbG9jX2J1bGsgKG1t
L3NsdWIuYzozNzcKPiBtbS9zbHViLmM6Mzg4IG1tL3NsdWIuYzozOTUgbW0vc2x1Yi5jOjM5NjMg
bW0vc2x1Yi5jOjQwMjYpCj4gWzI0MjQ5LjA5NDA4Nl0gQ29kZTogMGYgODQgNDYgZmYgZmYgZmYg
NjUgZmYgMDUgYTQgYmQgZTQgNDcgNDggOGIgNGQKPiAwMCA2NSA0OCAwMyAwZCBlOCA1ZiBlMyA0
NyA5YyA1ZSBmYSA0NSAzMSBkMiBlYiAyZiA4YiA0NSAyOCA0OCAwMSBkMAo+IDQ4IDg5IGM3IDw0
OD4gOGIgMDAgNDggMzMgODUgYjggMDAgMDAgMDAgNDggMGYgY2YgNDggMzEgZjggNDggODkgMDEg
NDkKPiA4OSAxNwo+IEFsbCBjb2RlCj4gPT09PT09PT0KPiAgICAwOiAwZiA4NCA0NiBmZiBmZiBm
ZiAgICBqZSAgICAgMHhmZmZmZmZmZmZmZmZmZjRjCj4gICAgNjogNjUgZmYgMDUgYTQgYmQgZTQg
NDcgaW5jbCAgICVnczoweDQ3ZTRiZGE0KCVyaXApICAgICAgICAjIDB4NDdlNGJkYjEKPiAgICBk
OiA0OCA4YiA0ZCAwMCAgICAgICAgICBtb3YgICAgMHgwKCVyYnApLCVyY3gKPiAgIDExOiA2NSA0
OCAwMyAwZCBlOCA1ZiBlMyBhZGQgICAgJWdzOjB4NDdlMzVmZTgoJXJpcCksJXJjeCAgICAgICAg
IyAweDQ3ZTM2MDAxCj4gICAxODogNDcKPiAgIDE5OiA5YyAgICAgICAgICAgICAgICAgICAgcHVz
aGYKPiAgIDFhOiA1ZSAgICAgICAgICAgICAgICAgICAgcG9wICAgICVyc2kKPiAgIDFiOiBmYSAg
ICAgICAgICAgICAgICAgICAgY2xpCj4gICAxYzogNDUgMzEgZDIgICAgICAgICAgICAgIHhvciAg
ICAlcjEwZCwlcjEwZAo+ICAgMWY6IGViIDJmICAgICAgICAgICAgICAgIGptcCAgICAweDUwCj4g
ICAyMTogOGIgNDUgMjggICAgICAgICAgICAgIG1vdiAgICAweDI4KCVyYnApLCVlYXgKPiAgIDI0
OiA0OCAwMSBkMCAgICAgICAgICAgICAgYWRkICAgICVyZHgsJXJheAo+ICAgMjc6IDQ4IDg5IGM3
ICAgICAgICAgICAgICBtb3YgICAgJXJheCwlcmRpCj4gICAyYToqIDQ4IDhiIDAwICAgICAgICAg
ICAgICBtb3YgICAgKCVyYXgpLCVyYXggPC0tIHRyYXBwaW5nIGluc3RydWN0aW9uCj4gICAyZDog
NDggMzMgODUgYjggMDAgMDAgMDAgeG9yICAgIDB4YjgoJXJicCksJXJheAo+ICAgMzQ6IDQ4IDBm
IGNmICAgICAgICAgICAgICBic3dhcCAgJXJkaQo+ICAgMzc6IDQ4IDMxIGY4ICAgICAgICAgICAg
ICB4b3IgICAgJXJkaSwlcmF4Cj4gICAzYTogNDggODkgMDEgICAgICAgICAgICAgIG1vdiAgICAl
cmF4LCglcmN4KQo+ICAgM2Q6IDQ5IDg5IDE3ICAgICAgICAgICAgICBtb3YgICAgJXJkeCwoJXIx
NSkKPiAKPiBDb2RlIHN0YXJ0aW5nIHdpdGggdGhlIGZhdWx0aW5nIGluc3RydWN0aW9uCj4gPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ICAgIDA6IDQ4IDhiIDAw
ICAgICAgICAgICAgICBtb3YgICAgKCVyYXgpLCVyYXgKPiAgICAzOiA0OCAzMyA4NSBiOCAwMCAw
MCAwMCB4b3IgICAgMHhiOCglcmJwKSwlcmF4Cj4gICAgYTogNDggMGYgY2YgICAgICAgICAgICAg
IGJzd2FwICAlcmRpCj4gICAgZDogNDggMzEgZjggICAgICAgICAgICAgIHhvciAgICAlcmRpLCVy
YXgKPiAgIDEwOiA0OCA4OSAwMSAgICAgICAgICAgICAgbW92ICAgICVyYXgsKCVyY3gpCj4gICAx
MzogNDkgODkgMTcgICAgICAgICAgICAgIG1vdiAgICAlcmR4LCglcjE1KQo+IFsyNDI0OS4xMTI5
NTFdIFJTUDogMDAxODpmZmZmOWZjMzAzOTczZDIwIEVGTEFHUzogMDAwMTAwODYKPiBbMjQyNDku
MTE4Mjc1XSBSQVg6IGIwNzQ2ZDRlNmJlZTM1ZTIgUkJYOiAwMDAwMDAwMDAwMDAwMDAxIFJDWDog
ZmZmZjhkNWEyZmEzMWRhMAo+IFsyNDI0OS4xMjU1MDFdIFJEWDogYjA3NDZkNGU2YmVlMzU3MiBS
U0k6IDAwMDAwMDAwMDAwMDAyODYgUkRJOiBiMDc0NmQ0ZTZiZWUzNWUyCj4gWzI0MjQ5LjEzMjcz
MF0gUkJQOiBmZmZmOGQ1NmMwMTZkNTAwIFIwODogMDAwMDAwMDAwMDAwMDQwMCBSMDk6IGZmZmY4
ZDU2ZWRlMGU2N2EKPiBbMjQyNDkuMTM5OTU4XSBSMTA6IDAwMDAwMDAwMDAwMDAwMDEgUjExOiBm
ZmZmOGQ1NmM1OWQ4OGMwIFIxMjogMDAwMDAwMDAwMDAwMDAxMAo+IFsyNDI0OS4xNDcxODddIFIx
MzogMDAwMDAwMDAwMDAwMDgyMCBSMTQ6IGZmZmY4ZDVhMmZhMmE4MTAgUjE1OiBmZmZmOGQ1YTJm
YTJhODE4Cj4gWzI0MjQ5LjE1NDQxNV0gRlM6ICAwMDAwMDAwMDAwMDAwMDAwKDAwMDApIEdTOmZm
ZmY4ZDVhMmZhMDAwMDAoMDAwMCkKPiBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4gWzI0MjQ5LjE2
MjYyMF0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo+
IFsyNDI0OS4xNjg0NzFdIENSMjogMDAwMDdmMGYzZjdmODc2MCBDUjM6IDAwMDAwMDAxMDI0NjYw
MDAgQ1I0OiAwMDAwMDAwMDAwMzUyNmYwCj4gWzI0MjQ5LjE3NTcxN10gQ2FsbCBUcmFjZToKPiBb
MjQyNDkuMTc4MjY4XSAgPFRBU0s+Cj4gWzI0MjQ5LjE4MDQ3Nl0gPyBkaWVfYWRkciAoYXJjaC94
ODYva2VybmVsL2R1bXBzdGFjay5jOjQyMQo+IGFyY2gveDg2L2tlcm5lbC9kdW1wc3RhY2suYzo0
NjApCj4gWzI0MjQ5LjE4MzkwN10gPyBleGNfZ2VuZXJhbF9wcm90ZWN0aW9uIChhcmNoL3g4Ni9r
ZXJuZWwvdHJhcHMuYzo3ODMKPiBhcmNoL3g4Ni9rZXJuZWwvdHJhcHMuYzo3MjgpCj4gWzI0MjQ5
LjE4ODcyNl0gPyBhc21fZXhjX2dlbmVyYWxfcHJvdGVjdGlvbgo+ICguL2FyY2gveDg2L2luY2x1
ZGUvYXNtL2lkdGVudHJ5Lmg6NTY0KQo+IFsyNDI0OS4xOTM3MjBdID8ga21lbV9jYWNoZV9hbGxv
Y19idWxrIChtbS9zbHViLmM6Mzc3IG1tL3NsdWIuYzozODgKPiBtbS9zbHViLmM6Mzk1IG1tL3Ns
dWIuYzozOTYzIG1tL3NsdWIuYzo0MDI2KQo+IFsyNDI0OS4xOTgzNjFdID8gbmV0aWZfcmVjZWl2
ZV9za2JfbGlzdF9pbnRlcm5hbCAobmV0L2NvcmUvZGV2LmM6NTcyOSkKPiBbMjQyNDkuMjAzOTYw
XSBuYXBpX3NrYl9jYWNoZV9nZXQgKG5ldC9jb3JlL3NrYnVmZi5jOjMzOCkKPiBbMjQyNDkuMjA4
MDc4XSBfX25hcGlfYnVpbGRfc2tiIChuZXQvY29yZS9za2J1ZmYuYzo1MTcpCj4gWzI0MjQ5LjIx
MTkzNF0gbmFwaV9idWlsZF9za2IgKG5ldC9jb3JlL3NrYnVmZi5jOjU0MSkKPiBbMjQyNDkuMjE1
NjE2XSBpeGdiZV9wb2xsCj4gKGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X21haW4uYzoyMTY1Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFp
bi5jOjIzNjEKPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmM6
MzE3OCkKPiBbMjQyNDkuMjE5MzA1XSBfX25hcGlfcG9sbCAobmV0L2NvcmUvZGV2LmM6NjQ5OCkK
PiBbMjQyNDkuMjIyOTA1XSBuYXBpX3RocmVhZGVkX3BvbGwgKC4vaW5jbHVkZS9saW51eC9uZXRw
b2xsLmg6ODkKPiBuZXQvY29yZS9kZXYuYzo2NjQwKQo+IFsyNDI0OS4yMjcxOTddID8gX19uYXBp
X3BvbGwgKG5ldC9jb3JlL2Rldi5jOjY2MjUpCj4gWzI0MjQ5LjIzMTA1MF0ga3RocmVhZCAoa2Vy
bmVsL2t0aHJlYWQuYzozNzkpCj4gWzI0MjQ5LjIzNDMwMF0gPyBrdGhyZWFkX2NvbXBsZXRlX2Fu
ZF9leGl0IChrZXJuZWwva3RocmVhZC5jOjMzMikKPiBbMjQyNDkuMjM5MjA3XSByZXRfZnJvbV9m
b3JrIChhcmNoL3g4Ni9lbnRyeS9lbnRyeV82NC5TOjMxNCkKPiBbMjQyNDkuMjQyODkyXSAgPC9U
QVNLPgo+IFsyNDI0OS4yNDUxODVdIE1vZHVsZXMgbGlua2VkIGluOiBjaGFvc2tleQo+IFsyNDI0
OS4yNDkxMzNdIC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXS0tLQo+IFsyNDI0OS4y
NzAxNTddIHBzdG9yZTogYmFja2VuZCAoZXJzdCkgd3JpdGluZyBlcnJvciAoLTI4KQo+IFsyNDI0
OS4yNzU0MDhdIFJJUDogMDAxMDprbWVtX2NhY2hlX2FsbG9jX2J1bGsgKG1tL3NsdWIuYzozNzcK
PiBtbS9zbHViLmM6Mzg4IG1tL3NsdWIuYzozOTUgbW0vc2x1Yi5jOjM5NjMgbW0vc2x1Yi5jOjQw
MjYpCj4gWzI0MjQ5LjI4MDY2MF0gQ29kZTogMGYgODQgNDYgZmYgZmYgZmYgNjUgZmYgMDUgYTQg
YmQgZTQgNDcgNDggOGIgNGQKPiAwMCA2NSA0OCAwMyAwZCBlOCA1ZiBlMyA0NyA5YyA1ZSBmYSA0
NSAzMSBkMiBlYiAyZiA4YiA0NSAyOCA0OCAwMSBkMAo+IDQ4IDg5IGM3IDw0OD4gOGIgMDAgNDgg
MzMgODUgYjggMDAgMDAgMDAgNDggMGYgY2YgNDggMzEgZjggNDggODkgMDEgNDkKPiA4OSAxNwo+
IEFsbCBjb2RlCj4gPT09PT09PT0KPiAgICAwOiAwZiA4NCA0NiBmZiBmZiBmZiAgICBqZSAgICAg
MHhmZmZmZmZmZmZmZmZmZjRjCj4gICAgNjogNjUgZmYgMDUgYTQgYmQgZTQgNDcgaW5jbCAgICVn
czoweDQ3ZTRiZGE0KCVyaXApICAgICAgICAjIDB4NDdlNGJkYjEKPiAgICBkOiA0OCA4YiA0ZCAw
MCAgICAgICAgICBtb3YgICAgMHgwKCVyYnApLCVyY3gKPiAgIDExOiA2NSA0OCAwMyAwZCBlOCA1
ZiBlMyBhZGQgICAgJWdzOjB4NDdlMzVmZTgoJXJpcCksJXJjeCAgICAgICAgIyAweDQ3ZTM2MDAx
Cj4gICAxODogNDcKPiAgIDE5OiA5YyAgICAgICAgICAgICAgICAgICAgcHVzaGYKPiAgIDFhOiA1
ZSAgICAgICAgICAgICAgICAgICAgcG9wICAgICVyc2kKPiAgIDFiOiBmYSAgICAgICAgICAgICAg
ICAgICAgY2xpCj4gICAxYzogNDUgMzEgZDIgICAgICAgICAgICAgIHhvciAgICAlcjEwZCwlcjEw
ZAo+ICAgMWY6IGViIDJmICAgICAgICAgICAgICAgIGptcCAgICAweDUwCj4gICAyMTogOGIgNDUg
MjggICAgICAgICAgICAgIG1vdiAgICAweDI4KCVyYnApLCVlYXgKPiAgIDI0OiA0OCAwMSBkMCAg
ICAgICAgICAgICAgYWRkICAgICVyZHgsJXJheAo+ICAgMjc6IDQ4IDg5IGM3ICAgICAgICAgICAg
ICBtb3YgICAgJXJheCwlcmRpCj4gICAyYToqIDQ4IDhiIDAwICAgICAgICAgICAgICBtb3YgICAg
KCVyYXgpLCVyYXggPC0tIHRyYXBwaW5nIGluc3RydWN0aW9uCj4gICAyZDogNDggMzMgODUgYjgg
MDAgMDAgMDAgeG9yICAgIDB4YjgoJXJicCksJXJheAo+ICAgMzQ6IDQ4IDBmIGNmICAgICAgICAg
ICAgICBic3dhcCAgJXJkaQo+ICAgMzc6IDQ4IDMxIGY4ICAgICAgICAgICAgICB4b3IgICAgJXJk
aSwlcmF4Cj4gICAzYTogNDggODkgMDEgICAgICAgICAgICAgIG1vdiAgICAlcmF4LCglcmN4KQo+
ICAgM2Q6IDQ5IDg5IDE3ICAgICAgICAgICAgICBtb3YgICAgJXJkeCwoJXIxNSkKPiAKPiBDb2Rl
IHN0YXJ0aW5nIHdpdGggdGhlIGZhdWx0aW5nIGluc3RydWN0aW9uCj4gPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ICAgIDA6IDQ4IDhiIDAwICAgICAgICAgICAg
ICBtb3YgICAgKCVyYXgpLCVyYXgKPiAgICAzOiA0OCAzMyA4NSBiOCAwMCAwMCAwMCB4b3IgICAg
MHhiOCglcmJwKSwlcmF4Cj4gICAgYTogNDggMGYgY2YgICAgICAgICAgICAgIGJzd2FwICAlcmRp
Cj4gICAgZDogNDggMzEgZjggICAgICAgICAgICAgIHhvciAgICAlcmRpLCVyYXgKPiAgIDEwOiA0
OCA4OSAwMSAgICAgICAgICAgICAgbW92ICAgICVyYXgsKCVyY3gpCj4gICAxMzogNDkgODkgMTcg
ICAgICAgICAgICAgIG1vdiAgICAlcmR4LCglcjE1KQo+IFsyNDI0OS4yOTk1NzhdIFJTUDogMDAx
ODpmZmZmOWZjMzAzOTczZDIwIEVGTEFHUzogMDAwMTAwODYKPiBbMjQyNDkuMzA0OTE3XSBSQVg6
IGIwNzQ2ZDRlNmJlZTM1ZTIgUkJYOiAwMDAwMDAwMDAwMDAwMDAxIFJDWDogZmZmZjhkNWEyZmEz
MWRhMAo+IFsyNDI0OS4zMTIxNjFdIFJEWDogYjA3NDZkNGU2YmVlMzU3MiBSU0k6IDAwMDAwMDAw
MDAwMDAyODYgUkRJOiBiMDc0NmQ0ZTZiZWUzNWUyCj4gWzI0MjQ5LjMxOTQwN10gUkJQOiBmZmZm
OGQ1NmMwMTZkNTAwIFIwODogMDAwMDAwMDAwMDAwMDQwMCBSMDk6IGZmZmY4ZDU2ZWRlMGU2N2EK
PiBbMjQyNDkuMzI2NjUxXSBSMTA6IDAwMDAwMDAwMDAwMDAwMDEgUjExOiBmZmZmOGQ1NmM1OWQ4
OGMwIFIxMjogMDAwMDAwMDAwMDAwMDAxMAo+IFsyNDI0OS4zMzM4OTZdIFIxMzogMDAwMDAwMDAw
MDAwMDgyMCBSMTQ6IGZmZmY4ZDVhMmZhMmE4MTAgUjE1OiBmZmZmOGQ1YTJmYTJhODE4Cj4gWzI0
MjQ5LjM0MTE0MV0gRlM6ICAwMDAwMDAwMDAwMDAwMDAwKDAwMDApIEdTOmZmZmY4ZDVhMmZhMDAw
MDAoMDAwMCkKPiBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4gWzI0MjQ5LjM0OTM1Nl0gQ1M6ICAw
MDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo+IFsyNDI0OS4zNTUy
MDZdIENSMjogMDAwMDdmMGYzZjdmODc2MCBDUjM6IDAwMDAwMDAxMDI0NjYwMDAgQ1I0OiAwMDAw
MDAwMDAwMzUyNmYwCj4gWzI0MjQ5LjM2MjQ1Ml0gS2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6
IEZhdGFsIGV4Y2VwdGlvbiBpbiBpbnRlcnJ1cHQKPiBbMjQyNDkuNTY2ODU0XSBLZXJuZWwgT2Zm
c2V0OiAweDM2ZTAwMDAwIGZyb20gMHhmZmZmZmZmZjgxMDAwMDAwCj4gKHJlbG9jYXRpb24gcmFu
Z2U6IDB4ZmZmZmZmZmY4MDAwMDAwMC0weGZmZmZmZmZmYmZmZmZmZmYpCj4gWzI0MjQ5LjU5NDEy
NF0gLS0tWyBlbmQgS2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IEZhdGFsIGV4Y2VwdGlvbiBp
bgo+IGludGVycnVwdCBdLS0tCj4gCj4gSXQncyBhbHNvIG9kZCB0aGF0IGkgZ2V0IGEgT09NIC0g
aXQgb25seSBzZWVtcyB0byBoYXBwZW4gd2hlbiBpIGVuYWJsZQo+IHJ4LWdyby1saXN0wqAKClVu
Zm9ydHVuYXRlbHksIG5vdCB0aGUgcmVzdWx0IEkgd2FzIGxvb2tpbmcgZm9yLiBUaGF0IGxlYWRz
IHRvIG1vcmUKcXVlc3Rpb25zIHRoZW4gYW5zd2VyLCBJJ20gc29ycnkuCgpIb3cgbG9uZyBkaWQg
dGhlIGhvc3Qga2VlcCBnb2luZyB3aXRoIHJ4LWdyby1saXN0IGVuYWJsZWQ/CgpEaWQgeW91IG9i
c2VydmUgdGhlIFdBUk5fT04oKSBpbnRyb2R1Y2VkIGJ5IHRoZSB0ZW50YXRpdmUgZml4PwoKPiAt
IGl0J3MgYWxzbyBvZGQgYmVjYXVzZSB0aGlzIG1hY2hpbmUgYWx3YXlzIGhhcyB+OEdCIG9mCj4g
bWVtb3J5IGF2YWlsYWJsZQoKSXQgbG9va3MgbGlrZSB0aGVyZSBpcyBhIG1lbW9yeSBsZWFrIHNv
bWV3aGVyZSwgYW5kIEkgZG9uJ3QgdGhpbmsgdGhlCnRlbnRhdGl2ZSBmaXh1cCBpbnRyb2R1Y2Vk
IHN1Y2ggaXNzdWUuCgpJdCBsb29rcyBsaWtlIHRoZSBhYm92ZSBzcGxhdCBpcyBkdWUgdG8gYSBz
bGFiIGNvcnJ1cHRpb24sIHdoaWNoIGluCnR1cm4gY291bGQgYmUgdW5yZWxhdGVkIGZyb20gdGhl
IG1lbnRpb25lZCBsZWFrLCBidXQgaXQgY291bGQvc2hvdWxkIApiZSByZWxhdGVkIHRvIHJ4LWdy
by1saXN0LiAKCkNvdWxkIHlvdSBwbGVhc2UgcnVuIHRoZSB0ZXN0IHdpdGggYm90aCBrbWVtbGVh
ayBhbmQga2FzYW4gZW5hYmxlZD8KCkFkZGl0aW9uYWxseSBjb3VsZCB5b3UgcGxlYXNlIGRpc2Ns
b3NlIGlmIHlvdSBoYXZlIG5vbiB0cml2aWFsCm5ldGZpbHRlciBhbmQvb3IgYnJpZGdlIGZpbHRl
ciBhbmQvb3IgdGMgcnVsZXMgcG9zc2libHkgbW9kaWZ5aW5nIHRoZQppbmNvbWluZy9lZ3Jlc3Mg
cGFja2V0cz8KCklmIGthc2FuIGlzIG5vdCBhbiBvcHRpb24sIGNvdWxkIHlvdSBwbGVhc2UgYXBw
bHkgdGhlIGRlYnVnIHRoZSBwYXRjaApiZWxvdz8gKG9uIHRvcCBvZiB0aGUgcHJldmlvdXMgb25l
KQoKVGhhbmtzIQoKUGFvbG8KLS0tCmRpZmYgLS1naXQgYS9uZXQvY29yZS9za2J1ZmYuYyBiL25l
dC9jb3JlL3NrYnVmZi5jCmluZGV4IDZjNTkxNWVmYmMxNy4uOTRhZGNhMjdiMjA1IDEwMDY0NAot
LS0gYS9uZXQvY29yZS9za2J1ZmYuYworKysgYi9uZXQvY29yZS9za2J1ZmYuYwpAQCAtNDI5NSw2
ICs0Mjk1LDggQEAgc3RydWN0IHNrX2J1ZmYgKnNrYl9zZWdtZW50X2xpc3Qoc3RydWN0IHNrX2J1
ZmYgKnNrYiwKIAkJZGVsdGFfbGVuICs9IG5za2ItPmxlbjsKIAogCQlza2JfcHVzaChuc2tiLCAt
c2tiX25ldHdvcmtfb2Zmc2V0KG5za2IpICsgb2Zmc2V0KTsKKwkJaWYgKFdBUk5fT05fT05DRShu
c2tiLT5kYXRhIC0gc2tiLT5oZWFkID4gc2tiLT50YWlsKSkKKwkJCWdvdG8gZXJyX2xpbmVhcml6
ZTsKIAogCQlza2JfcmVsZWFzZV9oZWFkX3N0YXRlKG5za2IpOwogCQlsZW5fZGlmZiA9IHNrYl9u
ZXR3b3JrX2hlYWRlcl9sZW4obnNrYikgLSBza2JfbmV0d29ya19oZWFkZXJfbGVuKHNrYik7CkBA
IC00MzAyLDYgKzQzMDQsMTEgQEAgc3RydWN0IHNrX2J1ZmYgKnNrYl9zZWdtZW50X2xpc3Qoc3Ry
dWN0IHNrX2J1ZmYgKnNrYiwKIAogCQlza2JfaGVhZGVyc19vZmZzZXRfdXBkYXRlKG5za2IsIHNr
Yl9oZWFkcm9vbShuc2tiKSAtIHNrYl9oZWFkcm9vbShza2IpKTsKIAkJbnNrYi0+dHJhbnNwb3J0
X2hlYWRlciArPSBsZW5fZGlmZjsKKwkJaWYgKFdBUk5fT05fT05DRSh0bmxfaGxlbiA+IHNrYl9o
ZWFkcm9vbShuc2tiKSkpCisJCQlnb3RvIGVycl9saW5lYXJpemU7CisJCWlmIChXQVJOX09OX09O
Q0Uoc2tiX2hlYWRyb29tKG5za2IpICsgb2Zmc2V0ID4gbnNrYi0+dGFpbCkpCisJCQlnb3RvIGVy
cl9saW5lYXJpemU7CisKIAkJc2tiX2NvcHlfZnJvbV9saW5lYXJfZGF0YV9vZmZzZXQoc2tiLCAt
dG5sX2hsZW4sCiAJCQkJCQkgbnNrYi0+ZGF0YSAtIHRubF9obGVuLAogCQkJCQkJIG9mZnNldCAr
IHRubF9obGVuKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
