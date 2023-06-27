Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECC473F88F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 11:19:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00A8E41705;
	Tue, 27 Jun 2023 09:19:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00A8E41705
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687857560;
	bh=kuiZ/fv9WuoKqzW2m2bq+z4MsnWDmjWh4foBshdB02U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4Y27I+uCr7pDnYir9NahwAPYMqAw6AelpZhAIFkeUvQvSfaXha5mEcfdG4LIuhtfJ
	 0v6eTlXLje4sctoi3LagQ0If0UdMfaa90SfKGMhXVTgBiF+/iiyMj9OAIRzNuvNHxR
	 n4DP50Cb51cPmhd6M/eCzuW0OzGe/jt+O0FZK9PqfynDh7lQanjCv9d3eKecuLvn0K
	 HSQkqrtx1rvOJ+Ws78Oz6tcU36a35EiT+87vz1VSSypLq4VdqnnRmaIJjLqq1Be+fe
	 EkuUvY+7bi/d7SP2e+A+DLDp8Pw/KI7Wk5GTMhQnjd59CmHv4JLTH+e+fJJZbSqI7s
	 QWz483Ospsgog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nKKfxGoCNRKc; Tue, 27 Jun 2023 09:19:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB91540289;
	Tue, 27 Jun 2023 09:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB91540289
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 191FF1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 09:19:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E489781951
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 09:19:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E489781951
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id weHhY9CpZw2D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 09:19:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16DA581911
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16DA581911
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 09:19:12 +0000 (UTC)
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-330-GUgEyH6iNmOjGpeWHCvyAQ-1; Tue, 27 Jun 2023 05:19:09 -0400
X-MC-Unique: GUgEyH6iNmOjGpeWHCvyAQ-1
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-635e2618aaeso3036986d6.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 02:19:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687857549; x=1690449549;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eBL/ONwUzr+ymBLvWZ1Y11d3T68bnTpzSD3KdNONaLc=;
 b=AxHZ0I2ArDUdbHDyEuL/vkmYBt7HFGXVFbZed9i53kKxg8R45Uv6oxUmNT5iXEzD3X
 jWrdDYGj9GZ315aGIpMRebbwodSUyYd6nuBvZVdCk/NP1FjRq7vNm8y8JcHuJogQmQTl
 AmT3TkOexrIDs/hHvF862Pw9uGpOxzSJfnAeGGKB7+JuSU+urbIoXzbWgC5j1S+C8s6R
 c09qWTtADBr1gshC7T+VldxilEitmnm3AZ/rja47/+z0pwss18/EsvF9FMHK7LPTxlUv
 WoBFCc6VEsRfFJnhF0BfxVull43+KzFL7Ezpjhvt1vAwWTni7ZsKUorlI57cFbgsPAfw
 YTtg==
X-Gm-Message-State: AC+VfDy/hR3OeIHftc2/aTSw/vTmkuRJECSqI+fAvoVyh+LI/eWP8wYr
 UqPL1LRCqQhvlRn2Rkp798FOtZMWrbl/Mo6+/0vVKXb8Mrb4X6W1Ya8rkyaeYvPCtdxtHTeRe0k
 5uFD9LAuTmvLg0KUY7nactiZX81/XzQ==
X-Received: by 2002:a05:6214:5298:b0:62f:1283:6185 with SMTP id
 kj24-20020a056214529800b0062f12836185mr37647409qvb.2.1687857548929; 
 Tue, 27 Jun 2023 02:19:08 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7Mpr5BxSTiv/lGQNPYL079y7c7KMZMILIPd+bPX/Eb9M0+r627zUdyOvLZwRglkf/GIl0WJQ==
X-Received: by 2002:a05:6214:5298:b0:62f:1283:6185 with SMTP id
 kj24-20020a056214529800b0062f12836185mr37647399qvb.2.1687857548666; 
 Tue, 27 Jun 2023 02:19:08 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-239-6.dyn.eolo.it. [146.241.239.6])
 by smtp.gmail.com with ESMTPSA id
 q15-20020ae9e40f000000b0075ed10554a5sm3758590qkc.11.2023.06.27.02.19.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jun 2023 02:19:08 -0700 (PDT)
Message-ID: <0a040331995c072c56fce58794848f5e9853c44f.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Tue, 27 Jun 2023 11:19:05 +0200
In-Reply-To: <CAA85sZu=CzJx9QD87-vehOStzO9qHUSWk6DXZg3TzJeqOV5-aw@mail.gmail.com>
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
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1687857552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HWy11D3yHejjCFk+ZjP2ir9NwRgWu3xv6a7x/dnZlwY=;
 b=MsOD1u9idCsF+4zR/wghl82+YHQ3Lvchj8vAgKS406h2IYuiY28yRknGF6yZMX1Iv2GRfx
 WspDfcinJPYotGAs7Zw9EBlmYVjS75qzm2frX3uO2KKRQGIDct8lF8h11K/tRMlIxLMAW/
 6URq6XuUoSAiGS2dooDPFcWPKRDrsv0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MsOD1u9i
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

T24gTW9uLCAyMDIzLTA2LTI2IGF0IDIwOjU5ICswMjAwLCBJYW4gS3VtbGllbiB3cm90ZToKPiBP
biBNb24sIEp1biAyNiwgMjAyMyBhdCA4OjIw4oCvUE0gSWFuIEt1bWxpZW4gPGlhbi5rdW1saWVu
QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiAKPiA+IE5ldmVybWluZCwgSSB0aGluayBJIGZvdW5kIGl0
LCBJIHdpbGwgbG9vcCB0aGlzIHRoaW5nIHVudGlsIEkgaGF2ZSBhCj4gPiBwcm9wZXIgdHJhY2Uu
Li4uCj4gCj4gU3RpbGwgc29tZSBxdWVzdGlvbiBtYXJrcywgYnV0IG11Y2ggYmV0dGVyCgpUaGFu
a3MhCj4gCj4gY2F0IGJ1Zy50eHQgfCAuL3NjcmlwdHMvZGVjb2RlX3N0YWNrdHJhY2Uuc2ggdm1s
aW51eAo+IFsgICA2Mi42MjQwMDNdIEJVRzoga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5j
ZSwgYWRkcmVzczogMDAwMDAwMDAwMDAwMDBjMAo+IFsgICA2Mi42MzEwODNdICNQRjogc3VwZXJ2
aXNvciByZWFkIGFjY2VzcyBpbiBrZXJuZWwgbW9kZQo+IFsgICA2Mi42MzYzMTJdICNQRjogZXJy
b3JfY29kZSgweDAwMDApIC0gbm90LXByZXNlbnQgcGFnZQo+IFsgICA2Mi42NDE1NDFdIFBHRCAw
IFA0RCAwCj4gWyAgIDYyLjY0NDE3NF0gT29wczogMDAwMCBbIzFdIFBSRUVNUFQgU01QIE5PUFRJ
Cj4gWyAgIDYyLjY0ODYyOV0gQ1BVOiAxIFBJRDogOTEzIENvbW06IG5hcGkvZW5vMi03OSBOb3Qg
dGFpbnRlZCA2LjQuMCAjMzY0Cj4gWyAgIDYyLjY1NTE2Ml0gSGFyZHdhcmUgbmFtZTogU3VwZXJt
aWNybyBTdXBlciBTZXJ2ZXIvQTJTRGktMTJDLUhMTjRGLAo+IEJJT1MgMS43YSAxMC8xMy8yMDIy
Cj4gWyAgIDYyLjY2MzM0NF0gUklQOiAwMDEwOl9fdWRwX2dzb19zZWdtZW50Cj4gKC4vaW5jbHVk
ZS9saW51eC9za2J1ZmYuaDoyODU4IC4vaW5jbHVkZS9saW51eC91ZHAuaDoyMwo+IG5ldC9pcHY0
L3VkcF9vZmZsb2FkLmM6MjI4IG5ldC9pcHY0L3VkcF9vZmZsb2FkLmM6MjYxCj4gbmV0L2lwdjQv
dWRwX29mZmxvYWQuYzoyNzcpCgpTbyBpdCdzIGZhdWx0aW5nIGhlcmU6CgpzdGF0aWMgc3RydWN0
IHNrX2J1ZmYgKl9fdWRwdjRfZ3NvX3NlZ21lbnRfbGlzdF9jc3VtKHN0cnVjdCBza19idWZmICpz
ZWdzKQp7CiAgICAgICAgc3RydWN0IHNrX2J1ZmYgKnNlZzsKICAgICAgICBzdHJ1Y3QgdWRwaGRy
ICp1aCwgKnVoMjsKICAgICAgICBzdHJ1Y3QgaXBoZHIgKmlwaCwgKmlwaDI7CgogICAgICAgIHNl
ZyA9IHNlZ3M7CiAgICAgICAgdWggPSB1ZHBfaGRyKHNlZyk7CiAgICAgICAgaXBoID0gaXBfaGRy
KHNlZyk7CgogICAgICAgIGlmICgodWRwX2hkcihzZWcpLT5kZXN0ID09IHVkcF9oZHIoc2VnLT5u
ZXh0KS0+ZGVzdCkgJiYKICAgICAgICAvLyBeXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXgoKVGhlIEdTTyBzZWdtZW50IGhhcyBiZWVuIGFzc2VtYmxlZCBi
eSBza2JfZ3JvX3JlY2VpdmVfbGlzdCgpCkkgZ3Vlc3Mgc2VnLT5uZXh0IGlzIE5VTEwsIHdoaWNo
IGlzIHNvbWV3aGF0IHVuZXhwZWN0ZWQgYXMKbmFwaV9ncm9fY29tcGxldGUoKSBjbGVhcnMgdGhl
IGdzb19zaXplIHdoZW4gc2VuZGluZyB1cCB0aGUgc3RhY2sgYQpzaW5nbGUgZnJhbWUuCgpPbiB0
aGUgZmxpcCBzaWRlLCBBRkFJQ1MsIG5vdGhpbmcgcHJldmVudHMgdGhlIHN0YWNrIGZyb20gY2hh
bmdpbmcgdGhlCmFnZ3JlZ2F0ZWQgcGFja2V0IGxheW91dCAoZS5nLiBwdWxsaW5nIGRhdGEgYW5k
L29yIGxpbmVhcml6aW5nIHRoZQpza2IpLgoKSW4gYW55IGNhc2UgdGhpcyBsb29rcyBtb3JlIHJl
bGF0ZWQgdG8gcngtZ3JvLWxpc3QgdGhlbiByeC11ZHAtZ3JvLQpmb3J3YXJkaW5nLiBJIHVuZGVy
c3RhbmQgeW91IGhhdmUgYm90aCBmZWF0dXJlIGVuYWJsZWQgaW4geW91ciBlbnY/CgpTaWRlIHF1
ZXN0aW9uczogZG8geW91IGhhdmUgYW55IG5vbiB0cml2aWFsIG5mL2JyIGZpbHRlciBydWxlPwoK
VGhlIGZvbGxvd2luZyBjb3VsZCBwb3NzaWJseSB2YWxpZGF0ZSB0aGUgYWJvdmUgYW5kIGF2b2lk
IHRoZSBpc3N1ZSwKYnV0IGl0J3MgYSBiaXQgcGFwZXJpbmcgb3ZlciBpdC4gQ291bGQgeW91IHBs
ZWFzZSB0cnkgaXQgaW4geW91ciBlbnY/CgpUaGFua3MhCgpQYW9sbwotLS0KZGlmZiAtLWdpdCBh
L25ldC9jb3JlL3NrYnVmZi5jIGIvbmV0L2NvcmUvc2tidWZmLmMKaW5kZXggNmM1OTE1ZWZiYzE3
Li43NTUzMTY4NmJmZGYgMTAwNjQ0Ci0tLSBhL25ldC9jb3JlL3NrYnVmZi5jCisrKyBiL25ldC9j
b3JlL3NrYnVmZi5jCkBAIC00MzE5LDYgKzQzMTksOSBAQCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiX3Nl
Z21lbnRfbGlzdChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAogCiAJc2tiLT5wcmV2ID0gdGFpbDsKIAor
CWlmIChXQVJOX09OX09OQ0UoIXNrYi0+bmV4dCkpCisJCWdvdG8gZXJyX2xpbmVhcml6ZTsKKwog
CWlmIChza2JfbmVlZHNfbGluZWFyaXplKHNrYiwgZmVhdHVyZXMpICYmCiAJICAgIF9fc2tiX2xp
bmVhcml6ZShza2IpKQogCQlnb3RvIGVycl9saW5lYXJpemU7CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
