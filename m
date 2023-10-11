Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4407C765E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22853611EE;
	Thu, 12 Oct 2023 19:08:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22853611EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137731;
	bh=eocfrlgWNfETUjRAWoebA7F7kY4cdWqZkyW1RnaD1MY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o3NxigodhrH7rQd1OPWhtCkrgWWXsma1VDlw4UFexEcP53ewuxtBr7vcmYKqtgZ4w
	 rUht9ja/UoilVsa2WzDangfAGk4PkqmpTzEZj+bqxUV/OXGl6M2cKrKvrXqQheZMdd
	 txce3h+eTJT8FwBnN6tElJ3dwwDw+TiXqauvH9PNGxgXnHrDEmXUpUBpH22AlhA+FW
	 +quc27NAZNDiJHkkIuohWA1EJGU2g7lkupmZukWNlkteOjcnE+1bbfYgm3qpulxNRE
	 QN4Kum6NAK37K9TEPFAzjR6z4QgqZbrQVep7tQZ75FPjsvuy4S90SQbWCe1yYSFGjD
	 PEvGL8wHVPDtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 05x4i9HDohIU; Thu, 12 Oct 2023 19:08:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF9AB60596;
	Thu, 12 Oct 2023 19:08:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF9AB60596
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DECC21BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 05:26:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE605400F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 05:26:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE605400F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jpM-cY3bOA3h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 05:26:08 +0000 (UTC)
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com
 [IPv6:2607:f8b0:4864:20::b36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C44640042
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 05:26:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C44640042
Received: by mail-yb1-xb36.google.com with SMTP id
 3f1490d57ef6-d81dd7d76e0so7485887276.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:26:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697001967; x=1697606767;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wBvwRr+UYeiNIgyMN0xgl61IRq+wFgkmFE+ImROj8bE=;
 b=E7BqiEVsY/hrGEMtaWNg3KZk5lNTt+ACmIpfRUC4gw+LLtBQ5UcfyHW8cl55nUOaPI
 YTrf0m+wxOjqXwr2ad5nwQ4QNVXgcMaB3sG3k//z25o+YVzE0HM0JI0QfEPueC4m0ldY
 7abvOA9H0MuotMk/OLHuLurIpA0gvAw0WvvPzGU3tQ7Puo1yocBDKQZVZQzYzbbUMhT5
 fOz85im7GqJHtLrhBDedRRuldEVIzg/QJwMP8iTEle7kIV8ES0Pkaltz2G4KvDMBmyc9
 hVCTy2bOAIW0F8MLh1Bhg+lUMTyxc5ypa+jCll4WKcCi/CXeIr2o0HQabG+6Q6PsHEqF
 9igg==
X-Gm-Message-State: AOJu0YyUZsCHLpXfRObWgObmAcSVcUOhjVyr7ry3u5KMIjsnAg882DQJ
 xrb8Aqm9BXFUYos1pzkePIDHbv8sTcXx67FaNrA=
X-Google-Smtp-Source: AGHT+IEaY2Yf4jvH8XVVUz0xhr3RUVnk5NEk7IF1fZvHezTCJfsFmn71Qp6kAytD9i89wqEAY5X70wkXV3Hikk9VCcg=
X-Received: by 2002:a5b:1c8:0:b0:d9a:54c2:1b92 with SMTP id
 f8-20020a5b01c8000000b00d9a54c21b92mr3827731ybp.14.1697001966675; Tue, 10 Oct
 2023 22:26:06 -0700 (PDT)
MIME-Version: 1.0
References: <20231008075221.61863-1-hayatake396@gmail.com>
 <20231010123235.4a6498da@kernel.org>
 <CADFiAcKF08osdvd4EiXSR1YJ22TXrMu3b7ujkMTwAsEE8jzgOw@mail.gmail.com>
 <20231010191019.12fb7071@kernel.org>
In-Reply-To: <20231010191019.12fb7071@kernel.org>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Wed, 11 Oct 2023 14:25:55 +0900
Message-ID: <CADFiAcL-kAzpJJ+KAkvw2tH8H0-21kyOusPSPybcmkf3CM7w9g@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697001967; x=1697606767; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wBvwRr+UYeiNIgyMN0xgl61IRq+wFgkmFE+ImROj8bE=;
 b=LgRUXeoKz8hXBvrstPji5naa8XYUgE0z4xBs8fvwyiw69PRXZvgU1YzrozZbl5UYbJ
 8MS6ESs8pEFYicCujaYY85RTNB/z8ZpV86FmWI4CQk4MSX3Wtrzz5Gm19l/Ea85SxFtm
 IeP5CVpoomKoj6iK5uxGv/0R7IAZLPSvgBldJcBE44MnkeWj7nQ1uAQLD9alwuDMswd2
 x1fdhK5hz1q9bLVqhRN/4tJ2vUq6svqbFZ4/oqVihRMEkqlv29bSTae4ndHR5cCsDfnV
 OGXNs91zB6hIFJw8qczMglEOVY3nxfz2+r4ivJ1ly6duUGMR/PJ66rH+lnsZlN3KwJrU
 ZvBA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=LgRUXeoK
Subject: Re: [Intel-wired-lan] [PATCH net-next] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmsgeW91IGZvciB0ZWFjaGluZyBtZSBzbyBtdWNoIQoKPiA+IFNvcnJ5ISBNeSBlbWFpbCB3
YXMgYmxvY2tlZCBiZWNhdXNlIGl0IHdhc24ndCBzZW50IGluIHBsYWluIHRleHQgbW9kZS4KPiA+
IEkndmUgbWFkZSB0aGUgbmVjZXNzYXJ5IGNoYW5nZXMgYW5kIHdpbGwgcmVzZW5kIGl0LgpJIGdv
dCBpdC4gSSdsbCBkbyBpdCBsaWtlIHRoYXQgOikKUGxlYXNlIGxldCBtZSBrbm93IGlmIEknbSB1
c2luZyBpdCBpbmNvcnJlY3RseS4KCj4gTWFrZXMgc2Vuc2UsIHRoYW5rcyBmb3IgdGhlIGV4dHJh
IGluZm9ybWF0aW9uLiBJIHRoaW5rIGl0IHdvdWxkIGJlCj4gd29ydGggYWRkaW5nIGFsbCBvZiB0
aGlzIHRvIHRoZSBjb21taXQgbWVzc2FnZSEKCm9mIGNvdXJzZTopCkkgZ290IGl0LiBJIHdpbGwg
YWRkIHRoaXMgYmFja2dyb3VuZCBpbmZvcm1hdGlvbiB3aGVuIEkgaXNzdWUgYSBwYXRjaApmb3Ig
dGhlIG5leHQgdmVyc2lvbi4KCj4gUmVnYXJkaW5nIHRoZSBwYXRjaCAtIHlvdSBhcmUgb25seSBh
ZGRpbmcgZmxvdyB0eXBlcywgbm90IGEgbmV3IGZpZWxkCj4gKHdoaWNoIGFyZSBkZWZpbmVkIGFz
IFJYSF8qKS4gSWYgd2Ugd2FudCB0byBoYXNoIG9uIGFuIGV4dHJhIGZpZWxkLAo+IEkgdGhpbmsg
d2UgbmVlZCB0byBzcGVjaWZ5IHRoYXQgZmllbGQgYXMgd2VsbD8KCkkndmUgYmVlbiByZWFsbHkg
c3RydWdnbGluZyB3aXRoIHRoaXMuLi4KV2hlbiBJIHJlYWQgdGhlIEludGVsIElDRSBkb2N1bWVu
dGF0aW9uLCBpdCBzdWdnZXN0cyB0aGF0IGluIFJTUywgVEVJRApjYW4gYmUgYW4gYWRkaXRpb25h
bCBpbnB1dC4KSG93ZXZlciwgSSBjb3VsZG4ndCB0aGluayBvZiBhIHJlYXNvbiBub3QgdG8gaW5j
bHVkZSBURUlEIHdoZW4KZW5hYmxpbmcgUlNTIGZvciBHVFAgY2FzZXMuCgpodHRwczovL3d3dy5p
bnRlbC5jb20vY29udGVudC93d3cvdXMvZW4vY29udGVudC1kZXRhaWxzLzYxNzAxNS9pbnRlbC1l
dGhlcm5ldC1jb250cm9sbGVyLWU4MTAtZHluYW1pYy1kZXZpY2UtcGVyc29uYWxpemF0aW9uLWRk
cC10ZWNobm9sb2d5LWd1aWRlLmh0bWwKKGNmLiBUYWJsZSA4LiBQYXR0ZXJucyBhbmQgSW5wdXQg
U2V0cyBmb3IgaWF2ZiBSU1MpCgpIb3dldmVyLCBmb3IgRmxvdyBEaXJlY3RvciwgaXQncyBjbGVh
ciB0aGF0IHlvdSdkIHdhbnQgdG8gaW5jbHVkZSB0aGUKVEVJRCBmaWVsZC4gQnV0IHNpbmNlIEkg
Zm91bmQgdGhhdCBzb21lb25lIGZyb20gSW50ZWwgaGFzIGFscmVhZHkKY29uZmlndXJlZCBpdCB0
byB1c2UgVEVJRCB3aXRoIEZsb3cgRGlyZWN0b3IsIEkgdGhvdWdodCBtYXliZSB3ZSBkb24ndApu
ZWVkIHRvIGFkZCB0aGUgVEVJRCBwYXJhbWV0ZXIgZm9yIG5vdy4KCmh0dHBzOi8vcGF0Y2h3b3Jr
Lm96bGFicy5vcmcvcHJvamVjdC9pbnRlbC13aXJlZC1sYW4vY292ZXIvMjAyMTAxMjYwNjUyMDYu
MTM3NDIyLTEtaGFpeXVlLndhbmdAaW50ZWwuY29tLwoKSWYgd2Ugd2FudCB0byBpbmNsdWRlIHNv
bWV0aGluZyBvdGhlciB0aGFuIFRFSUQgKGUuZy4sIFFGSSkgaW4gRmxvdwpEaXJlY3RvciwgSSB0
aGluayBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gcHJlcGFyZSBhIG5ldyBmaWVsZC4KCjIwMjPlubQx
MOaciDEx5pelKOawtCkgMTE6MTAgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz46Cj4K
PiBPbiBXZWQsIDExIE9jdCAyMDIzIDEwOjU2OjE3ICswOTAwIHRha2VydSBoYXlhc2FrYSB3cm90
ZToKPiA+IEdUUCBnZW5lcmF0ZXMgYSBmbG93IHRoYXQgaW5jbHVkZXMgYW4gSUQgY2FsbGVkIFRF
SUQgdG8gaWRlbnRpZnkgdGhlCj4gPiB0dW5uZWwuIFRoaXMgdHVubmVsIGlzIGNyZWF0ZWQgZm9y
IGVhY2ggVUUgKFVzZXIgRXF1aXBtZW50KS4KPiA+IEJ5IHBlcmZvcm1pbmcgUlNTIGJhc2VkIG9u
IHRoaXMgZmxvdywgaXQgaXMgcG9zc2libGUgdG8gYXBwbHkgUlNTIGZvcgo+ID4gZWFjaCBjb21t
dW5pY2F0aW9uIHVuaXQgZnJvbSB0aGUgVUUuCj4gPiBXaXRob3V0IHRoaXMsIFJTUyB3b3VsZCBv
bmx5IGJlIGVmZmVjdGl2ZSB3aXRoaW4gdGhlIHJhbmdlIG9mIElQIGFkZHJlc3Nlcy4KPiA+IEZv
ciBpbnN0YW5jZSwgdGhlIFBHVyBjYW4gb25seSBwZXJmb3JtIFJTUyB3aXRoaW4gdGhlIElQIHJh
bmdlIG9mIHRoZSBTR1cuCj4gPiBXaGF0IEknbSB0cnlpbmcgdG8gc2F5IGlzIHRoYXQgUlNTIGJh
c2VkIHNvbGVseSBvbiBJUCBhZGRyZXNzZXMgY2FuIGJlCj4gPiBwcm9ibGVtYXRpYyBmcm9tIGEg
bG9hZCBkaXN0cmlidXRpb24gcGVyc3BlY3RpdmUsIGVzcGVjaWFsbHkgaWYKPiA+IHRoZXJlJ3Mg
YSBiaWFzIGluIHRoZSB0ZXJtaW5hbHMgY29ubmVjdGVkIHRvIGEgcGFydGljdWxhciBiYXNlCj4g
PiBzdGF0aW9uLgo+ID4gQXMgYSByZWZlcmVuY2UgdGhhdCBkaXNjdXNzZXMgYSBzaW1pbGFyIHRv
cGljLCBwbGVhc2Ugc2VlIHRoZSBsaW5rCj4gPiBiZWxvdyhpcyBub3QgUlNTLCBpcyBURUlEIEZs
b3cpOgo+ID4gaHR0cHM6Ly9kb2NzLm52aWRpYS5jb20vbmV0d29ya2luZy1ldGhlcm5ldC1zb2Z0
d2FyZS9jdW11bHVzLWxpbnV4LTU2L0xheWVyLTMvUm91dGluZy9FcXVhbC1Db3N0LU11bHRpcGF0
aC1Mb2FkLVNoYXJpbmcvI2d0cC1oYXNoaW5nCj4KPiBNYWtlcyBzZW5zZSwgdGhhbmtzIGZvciB0
aGUgZXh0cmEgaW5mb3JtYXRpb24uIEkgdGhpbmsgaXQgd291bGQgYmUKPiB3b3J0aCBhZGRpbmcg
YWxsIG9mIHRoaXMgdG8gdGhlIGNvbW1pdCBtZXNzYWdlIQo+Cj4gUmVnYXJkaW5nIHRoZSBwYXRj
aCAtIHlvdSBhcmUgb25seSBhZGRpbmcgZmxvdyB0eXBlcywgbm90IGEgbmV3IGZpZWxkCj4gKHdo
aWNoIGFyZSBkZWZpbmVkIGFzIFJYSF8qKS4gSWYgd2Ugd2FudCB0byBoYXNoIG9uIGFuIGV4dHJh
IGZpZWxkLAo+IEkgdGhpbmsgd2UgbmVlZCB0byBzcGVjaWZ5IHRoYXQgZmllbGQgYXMgd2VsbD8K
Pgo+ID4gVGhhbmsgeW91IGZvciB5b3VyIHVuZGVyc3RhbmRpbmcuCj4gPiAtLS0KPiA+IFNvcnJ5
ISBNeSBlbWFpbCB3YXMgYmxvY2tlZCBiZWNhdXNlIGl0IHdhc24ndCBzZW50IGluIHBsYWluIHRl
eHQgbW9kZS4KPiA+IEkndmUgbWFkZSB0aGUgbmVjZXNzYXJ5IGNoYW5nZXMgYW5kIHdpbGwgcmVz
ZW5kIGl0Lgo+Cj4gTm8gd29ycmllcyEgQWRkaXRpb25hbCByZXF1ZXN0IC0gaW4gdGhlIGZ1dHVy
ZSBwbGVhc2UgcHJlZmVyIHRoZQo+IGJvdHRvbS1wb3N0aW5nIG9yIGludGVybGVhdmVkIHN0eWxl
IG9mIHJlcGxpZXM6Cj4gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvUG9zdGluZ19zdHls
ZSNJbnRlcmxlYXZlZF9zdHlsZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
