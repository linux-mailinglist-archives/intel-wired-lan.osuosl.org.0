Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9480473FC05
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 14:31:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C393E4032B;
	Tue, 27 Jun 2023 12:31:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C393E4032B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687869095;
	bh=A+NwsrHdeiQZHoC2I6Dou1BPQPVnqhQOlnJhT9iZuXM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6oGVcXf1t3Van2xlmxPSej0q0t6vMj4f9dOwzxQ0iaJIo8IHQNF+swNdEyIyU/E/a
	 ODnVSHDioVc94yOmyUHZ6Uo6VdfaBm1966ZiKOoSNFoY/97D4bz3nXGUOI7Bjhwrfr
	 vSxMmR74xz93BcCoQIdvwz9sMtKb/CZs0It8bqx4akR7HEOMulUZA96cH+QkhbAHBM
	 HCMmRz0Mjbh0LrH6geAtZCexkzBdIc9n4cd1rwWq5A1LolczvGE7zgWxTMnt/OLCSo
	 RL1sixzq4dsrbVGMbxr9J68wnsytWlkYmJEyOjU+e4E9oCxi/2/opwoapNfB3FmzYt
	 E45fx/aOsCzrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LEJhDIJqEp0Y; Tue, 27 Jun 2023 12:31:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C5BF402D1;
	Tue, 27 Jun 2023 12:31:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C5BF402D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 78CC31BF859
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 12:31:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50BE282F13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 12:31:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50BE282F13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FyuaQVgeW8pv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 12:31:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65CDC82F32
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65CDC82F32
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 12:31:28 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id
 ffacd0b85a97d-31297125334so3910218f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 05:31:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687869086; x=1690461086;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xa+nTJijQ9ASf8WlLQeUdpa+dFZwTDrfcItHW2kOSS0=;
 b=Xy1hKyuZKkynt1pX+gCZR90jBbNP+R3AUDmGdSXLWrBj6MV3pN+t28jHD8sSVzHUUp
 JuLvBVIGEYD+bH0DoIw9uO+klId8aKnzgat4G8Xsphsos24EIV3zzIGAeHkaJ3jN3eVr
 4lXHb57tfPRizpp2jZDye8vhJEhN1wGWDqaLv+veSGGFbuuih8HI/+SBpwTZXF1QHm/C
 LQyFpzTZK/8s0dtoConxzcMK3fOcUjwSzj5s2UIb9qgVkoqBimjYoppDsdrnSAQ9VaMW
 yezEAzenU3bP6/rGnB3MVAKO4Xf+/svtqNV9FFvnFkssXnI3UlhYKi2YzGg0ow/5gUnT
 +/Ig==
X-Gm-Message-State: AC+VfDzkuR/8/X8vvWTIBOW3o30SmWFtJp0pwidhmQwVwlW/rPcwPJUz
 aztdzFVUaXVLy0D3HHPGZlFCTKes6K4DSag2AXo=
X-Google-Smtp-Source: ACHHUZ7kd/kr3QaWqRB+9uv4Csc7z6jMqSymlgLD4iVmB8s7xd+Bx54w8K5LrFWX3fsARyqRx8XVs1/32cbASE/Ft4k=
X-Received: by 2002:a5d:6dce:0:b0:30a:e63b:950 with SMTP id
 d14-20020a5d6dce000000b0030ae63b0950mr33833828wrz.31.1687869086050; Tue, 27
 Jun 2023 05:31:26 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <0a040331995c072c56fce58794848f5e9853c44f.camel@redhat.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Tue, 27 Jun 2023 14:31:13 +0200
Message-ID: <CAA85sZuuwxtAQcMe3LHpFVeF7y-bVoHtO1nukAa2+NyJw3zcyg@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687869086; x=1690461086;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xa+nTJijQ9ASf8WlLQeUdpa+dFZwTDrfcItHW2kOSS0=;
 b=jnG7SEBoHpt9OdYmEA6qDYlvUKAwVDw+SJrYRqe8s0FxpIpSYsd/DVnBjYvk2of1p5
 7sYxzJDZyCHya9HeGhYKtx6+1CLYCTXv6pT+JJi8uGxPklu/fbeDK6H20KqJAed9Pk+F
 sryVJ/yBE9BwE1wzNQp3pgFYxVUmvUVmO+FgSLXZnSg/0rovfigd0IeGZGKcpgweD+gQ
 LEz40yMexBlrFrdBZEPDisLtSmQdeb11gm461PqFQ70j1sRoHJAeS17TnX9rQJm7UmJc
 NrUax+uYKfCLZaNwxZbix/FbM1GUU4v9DWyAtfFuSp/spCD3zLyZ52SR+VUWW/i53MSU
 o6Cg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=jnG7SEBo
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

T24gVHVlLCBKdW4gMjcsIDIwMjMgYXQgMTE6MTnigK9BTSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJl
ZGhhdC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCAyMDIzLTA2LTI2IGF0IDIwOjU5ICswMjAwLCBJ
YW4gS3VtbGllbiB3cm90ZToKPiA+IE9uIE1vbiwgSnVuIDI2LCAyMDIzIGF0IDg6MjDigK9QTSBJ
YW4gS3VtbGllbiA8aWFuLmt1bWxpZW5AZ21haWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gTmV2
ZXJtaW5kLCBJIHRoaW5rIEkgZm91bmQgaXQsIEkgd2lsbCBsb29wIHRoaXMgdGhpbmcgdW50aWwg
SSBoYXZlIGEKPiA+ID4gcHJvcGVyIHRyYWNlLi4uLgo+ID4KPiA+IFN0aWxsIHNvbWUgcXVlc3Rp
b24gbWFya3MsIGJ1dCBtdWNoIGJldHRlcgo+Cj4gVGhhbmtzIQo+ID4KPiA+IGNhdCBidWcudHh0
IHwgLi9zY3JpcHRzL2RlY29kZV9zdGFja3RyYWNlLnNoIHZtbGludXgKPiA+IFsgICA2Mi42MjQw
MDNdIEJVRzoga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSwgYWRkcmVzczogMDAwMDAw
MDAwMDAwMDBjMAo+ID4gWyAgIDYyLjYzMTA4M10gI1BGOiBzdXBlcnZpc29yIHJlYWQgYWNjZXNz
IGluIGtlcm5lbCBtb2RlCj4gPiBbICAgNjIuNjM2MzEyXSAjUEY6IGVycm9yX2NvZGUoMHgwMDAw
KSAtIG5vdC1wcmVzZW50IHBhZ2UKPiA+IFsgICA2Mi42NDE1NDFdIFBHRCAwIFA0RCAwCj4gPiBb
ICAgNjIuNjQ0MTc0XSBPb3BzOiAwMDAwIFsjMV0gUFJFRU1QVCBTTVAgTk9QVEkKPiA+IFsgICA2
Mi42NDg2MjldIENQVTogMSBQSUQ6IDkxMyBDb21tOiBuYXBpL2VubzItNzkgTm90IHRhaW50ZWQg
Ni40LjAgIzM2NAo+ID4gWyAgIDYyLjY1NTE2Ml0gSGFyZHdhcmUgbmFtZTogU3VwZXJtaWNybyBT
dXBlciBTZXJ2ZXIvQTJTRGktMTJDLUhMTjRGLAo+ID4gQklPUyAxLjdhIDEwLzEzLzIwMjIKPiA+
IFsgICA2Mi42NjMzNDRdIFJJUDogMDAxMDpfX3VkcF9nc29fc2VnbWVudAo+ID4gKC4vaW5jbHVk
ZS9saW51eC9za2J1ZmYuaDoyODU4IC4vaW5jbHVkZS9saW51eC91ZHAuaDoyMwo+ID4gbmV0L2lw
djQvdWRwX29mZmxvYWQuYzoyMjggbmV0L2lwdjQvdWRwX29mZmxvYWQuYzoyNjEKPiA+IG5ldC9p
cHY0L3VkcF9vZmZsb2FkLmM6Mjc3KQo+Cj4gU28gaXQncyBmYXVsdGluZyBoZXJlOgo+Cj4gc3Rh
dGljIHN0cnVjdCBza19idWZmICpfX3VkcHY0X2dzb19zZWdtZW50X2xpc3RfY3N1bShzdHJ1Y3Qg
c2tfYnVmZiAqc2VncykKPiB7Cj4gICAgICAgICBzdHJ1Y3Qgc2tfYnVmZiAqc2VnOwo+ICAgICAg
ICAgc3RydWN0IHVkcGhkciAqdWgsICp1aDI7Cj4gICAgICAgICBzdHJ1Y3QgaXBoZHIgKmlwaCwg
KmlwaDI7Cj4KPiAgICAgICAgIHNlZyA9IHNlZ3M7Cj4gICAgICAgICB1aCA9IHVkcF9oZHIoc2Vn
KTsKPiAgICAgICAgIGlwaCA9IGlwX2hkcihzZWcpOwo+Cj4gICAgICAgICBpZiAoKHVkcF9oZHIo
c2VnKS0+ZGVzdCA9PSB1ZHBfaGRyKHNlZy0+bmV4dCktPmRlc3QpICYmCj4gICAgICAgICAvLyBe
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXgo+Cj4gVGhl
IEdTTyBzZWdtZW50IGhhcyBiZWVuIGFzc2VtYmxlZCBieSBza2JfZ3JvX3JlY2VpdmVfbGlzdCgp
Cj4gSSBndWVzcyBzZWctPm5leHQgaXMgTlVMTCwgd2hpY2ggaXMgc29tZXdoYXQgdW5leHBlY3Rl
ZCBhcwo+IG5hcGlfZ3JvX2NvbXBsZXRlKCkgY2xlYXJzIHRoZSBnc29fc2l6ZSB3aGVuIHNlbmRp
bmcgdXAgdGhlIHN0YWNrIGEKPiBzaW5nbGUgZnJhbWUuCj4KPiBPbiB0aGUgZmxpcCBzaWRlLCBB
RkFJQ1MsIG5vdGhpbmcgcHJldmVudHMgdGhlIHN0YWNrIGZyb20gY2hhbmdpbmcgdGhlCj4gYWdn
cmVnYXRlZCBwYWNrZXQgbGF5b3V0IChlLmcuIHB1bGxpbmcgZGF0YSBhbmQvb3IgbGluZWFyaXpp
bmcgdGhlCj4gc2tiKS4KPgo+IEluIGFueSBjYXNlIHRoaXMgbG9va3MgbW9yZSByZWxhdGVkIHRv
IHJ4LWdyby1saXN0IHRoZW4gcngtdWRwLWdyby0KPiBmb3J3YXJkaW5nLiBJIHVuZGVyc3RhbmQg
eW91IGhhdmUgYm90aCBmZWF0dXJlIGVuYWJsZWQgaW4geW91ciBlbnY/Cj4KPiBTaWRlIHF1ZXN0
aW9uczogZG8geW91IGhhdmUgYW55IG5vbiB0cml2aWFsIG5mL2JyIGZpbHRlciBydWxlPwo+Cj4g
VGhlIGZvbGxvd2luZyBjb3VsZCBwb3NzaWJseSB2YWxpZGF0ZSB0aGUgYWJvdmUgYW5kIGF2b2lk
IHRoZSBpc3N1ZSwKPiBidXQgaXQncyBhIGJpdCBwYXBlcmluZyBvdmVyIGl0LiBDb3VsZCB5b3Ug
cGxlYXNlIHRyeSBpdCBpbiB5b3VyIGVudj8KCldpbGwgZG8gYXMgc29vbiBhcyBpIGdldCBob21l
ID0pCgo+IFRoYW5rcyEKPgo+IFBhb2xvCj4gLS0tCj4gZGlmZiAtLWdpdCBhL25ldC9jb3JlL3Nr
YnVmZi5jIGIvbmV0L2NvcmUvc2tidWZmLmMKPiBpbmRleCA2YzU5MTVlZmJjMTcuLjc1NTMxNjg2
YmZkZiAxMDA2NDQKPiAtLS0gYS9uZXQvY29yZS9za2J1ZmYuYwo+ICsrKyBiL25ldC9jb3JlL3Nr
YnVmZi5jCj4gQEAgLTQzMTksNiArNDMxOSw5IEBAIHN0cnVjdCBza19idWZmICpza2Jfc2VnbWVu
dF9saXN0KHN0cnVjdCBza19idWZmICpza2IsCj4KPiAgICAgICAgIHNrYi0+cHJldiA9IHRhaWw7
Cj4KPiArICAgICAgIGlmIChXQVJOX09OX09OQ0UoIXNrYi0+bmV4dCkpCj4gKyAgICAgICAgICAg
ICAgIGdvdG8gZXJyX2xpbmVhcml6ZTsKPiArCj4gICAgICAgICBpZiAoc2tiX25lZWRzX2xpbmVh
cml6ZShza2IsIGZlYXR1cmVzKSAmJgo+ICAgICAgICAgICAgIF9fc2tiX2xpbmVhcml6ZShza2Ip
KQo+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9saW5lYXJpemU7Cj4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
