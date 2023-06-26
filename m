Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3D773E585
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jun 2023 18:44:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13F7E404AF;
	Mon, 26 Jun 2023 16:44:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13F7E404AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687797873;
	bh=UGRt3nOBOe8YSRuK1gA2rkFSPYlhbNhe7CscRT/aDPE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eQjEhtE5eI6eKGscKozo6ZuiGm+/U+CnD04HLwyf93xmYX2WAQbsR5tn9eMz1HK+U
	 0L74xNKfSBixUmeSHeNo8bn6mI/N2AQp9FyPkYpR4i+aHi1+wQnCcCqAQYhfkUc0jl
	 ZpzWeGkXc1gtl5d8IX3bPzGDxIWlr1B7rwKJ/+wvZvvkmfiExHrU091XvbOxU52DHf
	 qbFQeB7wvMmeVBR8IR7MJHLANoQJhKOuPsTyDbFnX0oEtHUPlO1xjnP/D55i2iLUr7
	 3sa/b2RA43A7O5ko2i3OT/abbCijRraIQhtsDiEz9hpwjOXZiu0UQ1I1uTpG6e/2hb
	 e7xXJupnk58Zg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sEUXo3wN8Dlt; Mon, 26 Jun 2023 16:44:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A214640424;
	Mon, 26 Jun 2023 16:44:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A214640424
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C09D01BF37E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 16:44:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E0C841867
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 16:44:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E0C841867
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lRXxYt7RakTZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jun 2023 16:44:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40D3040207
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40D3040207
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 16:44:23 +0000 (UTC)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-599-UBGuvq6SPPCgheLne-odkQ-1; Mon, 26 Jun 2023 12:42:40 -0400
X-MC-Unique: UBGuvq6SPPCgheLne-odkQ-1
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-4009ad15222so6345541cf.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 09:42:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687797728; x=1690389728;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=asxiZidzTKqbTTIG034hchvV0jRmIRYObF5XRhg78do=;
 b=kURwYzijz78s46HPojHCsmInPi6j5G+PMVsReNfrI1Pg8qdXu03qlxo4NeXxCjEUH2
 7CXQ5e42NzOpwsvyGiby274B1qP5t/dDs0WEuMtnPtZCAMJAHmxLOTXBnUWsRPn3BOTC
 HvKE8g605Hrfwp4gpFHdFtfkpMkNqNVzikkTzJ8wpKJctAqpteo8haAgYcgJ9E903en0
 Q88JIk9bnZjjlB0Hw19u0WDWq6We7ZK0zJeJMLGl/yaOzXpvjBIK40hdocExEJ/zAjkE
 /pLcrSfCYKHdeuyy+Z8I2+FZIPLZ5BjQ1rKBKo3dr4hT0fNcdEA0aMPbxyh37SYhMLgh
 QOGA==
X-Gm-Message-State: AC+VfDyWdk2cF/m7OzEJSYTwsZvsKLBuZjqWjVgsa+u7WXzME+UGXZex
 yKBsF2eXX6dCplD3C+aET+ENcLEALABn1yEI6KZkAJvdONGu3ey0tuWQdA21K2LAqs26wxFkc03
 t7LPkKpIel4eIUQSMdykbpdQQGNc9JA==
X-Received: by 2002:a05:622a:130e:b0:400:9ac5:e16e with SMTP id
 v14-20020a05622a130e00b004009ac5e16emr8444129qtk.5.1687797728129; 
 Mon, 26 Jun 2023 09:42:08 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5I3CAeI8ca2wi5jtMkoY6xwiJKbr/NuY1Vge9snGy8/6GCXsGn93S3NFzjf2ojjaf+RnFiRg==
X-Received: by 2002:a05:622a:130e:b0:400:9ac5:e16e with SMTP id
 v14-20020a05622a130e00b004009ac5e16emr8444115qtk.5.1687797727830; 
 Mon, 26 Jun 2023 09:42:07 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-231-243.dyn.eolo.it.
 [146.241.231.243]) by smtp.gmail.com with ESMTPSA id
 m25-20020aed27d9000000b003f364778b2bsm3296930qtg.4.2023.06.26.09.42.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jun 2023 09:42:07 -0700 (PDT)
Message-ID: <a766b45e26b465224fa5f0be721af147a8599fa7.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
Date: Mon, 26 Jun 2023 18:42:04 +0200
In-Reply-To: <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1687797861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=asxiZidzTKqbTTIG034hchvV0jRmIRYObF5XRhg78do=;
 b=JR6gZ5NngVneEe7zz/IWCI8uBSt4j7YC4suVpMtla2Lm1dCpUW3cfh6TH+OXEaDfBlyKNA
 v59bGoZgIxLzTnAgS+960iBpfcaNARZSzlX2HkBLSTZgTbLxbG24MEx7bE+mKLpcD8tR+B
 8npnJnN+2w0I5s4DHji76V7s+OWEFj0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JR6gZ5Nn
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
Cc: Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIzLTA2LTI2IGF0IDE2OjI1ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiBP
biBNb24sIEp1biAyNiwgMjAyMyBhdCA0OjE44oCvUE0gQWxleGFuZGVyIExvYmFraW4KPiA8YWxl
a3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4gd3JvdGU6Cj4gPiAKPiA+IEZyb206IElhbiBLdW1s
aWVuIDxpYW4ua3VtbGllbkBnbWFpbC5jb20+Cj4gPiBEYXRlOiBTdW4sIDI1IEp1biAyMDIzIDEy
OjU5OjU0ICswMjAwCj4gPiAKPiA+ID4gSXQgY291bGQgYWN0dWFsbHkgYmUgdGhhdCBpdCdzIHJl
bGF0ZWQgdG86IHJ4LWdyby1saXN0IGJ1dAo+ID4gPiByeC11ZHAtZ3JvLWZvcndhcmRpbmcgbWFr
ZXMgaXQgdHJpZ2dlciBxdWlja2VyLi4uICBJIGhhdmUgeWV0IHRvCj4gPiA+IHRyaWdnZXIgaXQg
b24gaWdiCj4gPiAKPiA+IEhpLCB0aGUgcngtdWRwLWdyby1mb3J3YXJkaW5nIGF1dGhvciBoZXJl
Lgo+ID4gCj4gPiAoZ29vZCB0aGluZyB0aGlzIGFwcGVhcmVkIG9uIElXTCwgd2hpY2ggSSByZWFk
IHRpbWUgdG8gdGltZSwgYnV0IHBsZWFzZQo+ID4gIENjIG5ldGRldiBuZXh0IHRpbWUpCj4gPiAo
dGh1cyArQ2MgSmFrdWIsIEVyaWMsIGFuZCBuZXRkZXYpCj4gCj4gV2VsbCwgdHdvIHRoaW5ncywg
aXQgc2VlbXMgbGlrZSByeC11ZHAtZ3JvLWZvcndhcmRpbmcgYWNjZWxlcmF0ZXMgaXQKPiBidXQg
dGhlIGlzc3VlIGlzIGFjdHVhbGx5IGluOiByeC1ncm8tbGlzdAo+IAo+IEFuZCBzaW5jZSBpJ3Zl
IG9ubHkgYmVlbiBhYmxlIHRvIHRyaWdnZXIgaXQgaW4gaXhnYmUgaSB0aG91Z2h0IGl0Cj4gbWln
aHQgYmUgYSBkcml2ZXIgaXNzdWUgPSkKPiAKPiA+ID4gT24gU2F0LCBKdW4gMjQsIDIwMjMgYXQg
MTA6MDPigK9QTSBJYW4gS3VtbGllbiA8aWFuLmt1bWxpZW5AZ21haWwuY29tPiB3cm90ZToKPiA+
ID4gPiAKPiA+ID4gPiBIaSBhZ2FpbiwKPiA+ID4gPiAKPiA+ID4gPiBJIHN1c3BlY3QgdGhhdCBJ
IGhhdmUgcm91bmRlZCB0aGlzIGRvd24gdG8gdGhlIHJ4LXVkcC1ncm8tZm9yd2FyZGluZwo+ID4g
PiA+IG9wdGlvbi4uLiBJIGtub3cgaXQncyBub3Qgb24gYnkgZGVmYXVsdCBidXQuLi4uCj4gPiA+
ID4gCj4gPiA+ID4gU28sIEkgaGF2ZSBhIG1hY2hpbmUgd2l0aCBmb3VyIG5pY3MsIGFsbCB1c2lu
ZyBpeGdiZSwgdGhleSBhcmUgYWxsOgo+ID4gPiA+IDA2OjAwLjAgRXRoZXJuZXQgY29udHJvbGxl
cjogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgQ29ubmVjdGlvbgo+ID4gPiA+IFg1NTMgMUdi
RSAocmV2IDExKQo+ID4gPiA+IDA2OjAwLjEgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwgQ29y
cG9yYXRpb24gRXRoZXJuZXQgQ29ubmVjdGlvbgo+ID4gPiA+IFg1NTMgMUdiRSAocmV2IDExKQo+
ID4gPiA+IDA3OjAwLjAgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRXRo
ZXJuZXQgQ29ubmVjdGlvbgo+ID4gPiA+IFg1NTMgMUdiRSAocmV2IDExKQo+ID4gPiA+IDA3OjAw
LjEgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgQ29ubmVj
dGlvbgo+ID4gPiA+IFg1NTMgMUdiRSAocmV2IDExKQo+ID4gPiA+IAo+ID4gPiA+IEJ1dCBJIGhh
dmUgYmVlbiBwbGF5aW5nIHdpdGggdmFyaW91cy4uLiBjdXJyZW50bHkgaSBkbzoKPiA+ID4gPiBm
b3IgaW50ZXJmYWNlIGluIGVubzEgZW5vMiBlbm8zIGVubzQgOyBkbwo+ID4gPiA+ICAgZm9yIG9m
ZmxvYWQgaW4gbnR1cGxlIGh3LXRjLW9mZmxvYWQgcngtZ3JvLWxpc3QgOyBkbwo+ID4gPiA+ICAg
ICBldGh0b29sIC1LICRpbnRlcmZhY2UgJG9mZmxvYWQgb24gPiAvZGV2L251bGwKPiA+ID4gPiAg
IGRvbmUKPiA+ID4gPiAgIGV0aHRvb2wgLUcgJGludGVyZmFjZSByeCA4MTkyIHR4IDgxOTIgPiAv
ZGV2WW51bGwKPiA+ID4gPiBkb25lCj4gPiA+ID4gCj4gPiA+ID4gQW5kIGl0IGFsbCBzZWVtcyB0
byB3b3JrIGp1c3QgZmluZSBmb3IgbXkgbGl0dGxlIGZpcmV3YWxsCj4gPiA+ID4gCj4gPiA+ID4g
SG93ZXZlciwgZW5hYmxpbmcgcngtdWRwLWdyby1mb3J3YXJkaW5nIHJlc3VsdHMgaW4gdGhlIGF0
dGFjaGVkIG9vb29wcwo+ID4gPiA+IChzb3JyeSwgY2FuJ3Qgc2VlIG1vcmUsIGJlZW4gcmVjcmVh
dGluZyBieSB3YXRjaGluZyBzaG93cyBvbiBIQk8KPiA+ID4gPiBtYXguLi4gKQo+ID4gCj4gPiBX
aGVyZSdzIHRoZSBtZW50aW9uZWQgb29wcz8gV2hlcmUncyB0aGUgb3JpZ2luYWwgbWVzc2FnZT8K
PiAKPiBIZWxkIGJ5IHRoZSBtYWlsaW5nIGxpc3Qgc2luY2UgaSBjYW4gb25seSBnZXQgYSBzY3Jl
ZW5zaG90IG9mIGl0Li4uCj4gV2lsbCBhdHRhY2ggdGhlIGxhdGVzdCBvbmUgdG8gdGhpcyBlbWFp
bAoKVGhhdCBpbWFnZSBpcyBub3QgdmVyeSB1c2VmdWwvZG9lcyBub3QgcHJvdmlkZSBhIGxvdCBv
ZiByZWxldmFudAppbmZvcm1hdGlvbi4gQ291bGQgeW91IHBsZWFzZSB1c2Uga2R1bXAvY3Jhc2gg
dG8gY29sbGVjdCBhIChkZWNvZGVkKQpmdWxsIHN0YWNrIHRyYWNlPwoKPiAoSSB3aXNoIHRoYXQg
aSBjb3VsZCBlYXNpbHkgZ2V0IGEgbGFyZ2VyIGJhY2t0cmFjZSBidXQgaSBoYXZlbid0Cj4gbG9v
a2VkIGluIGZ1cnRoZXIgYXRtKQo+IAo+ID4gQ2FuJ3QgdGhpcyBiZSByZWxhdGVkIHRvIFswXT8K
PiAKPiBEb24ndCBrbm93LCBteSBtYWluIHRlc3QgaGFzIGJlZW4gcnVubmluZyB2aWRlbyBzdHJl
YW1zIGluIHRoZQo+IGJhY2tncm91bmQgLSBldmVudHVhbGx5IHRoZXkgY2F1c2UgYSBvb3BzICh3
aXRoaW4gNDAgbWludXRlcyBvciBzbykKPiBCdXQgaSBkb3VidCBpdCdzIGNvdW50ZWQgYXMgdHVu
bmVsIGRhdGEgOykKCkkgcmVhZCB0aGUgYWJvdmUgYXMgeW91IGRvbid0IGhhdmUgVURQIHR1bm5l
bHMgaW4geW91ciBzZXR1cC4gQW0gSQpjb3JyZWN0PwoKVGhhbmtzLAoKUGFvbG8KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
