Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2232D0FF3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 13:03:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A826287808;
	Mon,  7 Dec 2020 12:03:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nu1534cPEq9u; Mon,  7 Dec 2020 12:03:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2697C87809;
	Mon,  7 Dec 2020 12:03:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5514B1BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:03:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4F4D586D36
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:03:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xYOfhpqH33b1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 12:03:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C28C286CF4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607342614;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GJjkCHCo/Gql4PJ49zcGAijs+pyIju16zLADLNdbI8w=;
 b=hyF6pgFn2wmdvCan+kWmNUq7/CYc1H5+ekzic+uTVE0dSvpQJr1ZHweKWaLhUeyYmRh0Xk
 iZsEJ9KCOd1XG6msTSICUoASEP7R0Og8BZSy4cxbMnd0HtANT5xJy0kNF026ZtBaQ0fIZA
 QxKqnDyNroy/EKryX68LGYzsaF83xiM=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-17-HgRCu7vWPVilurModHynuQ-1; Mon, 07 Dec 2020 07:03:30 -0500
X-MC-Unique: HgRCu7vWPVilurModHynuQ-1
Received: by mail-wr1-f69.google.com with SMTP id x10so4791135wrs.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Dec 2020 04:03:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=GJjkCHCo/Gql4PJ49zcGAijs+pyIju16zLADLNdbI8w=;
 b=DGC6Mu+FBZdNg8fg4cpuI7XG2tLBVXXYAXtk63T1ACiyqqHr2EID7tEqswEU6TEoMk
 04QX0IuPhuRVKTmE8kvb67d8dm+E5BWNdOwerJXC4ZD/ckgJxTL9PSnARVNyTIP6Eb80
 AjAvtU6s6PvZ6qMd3dZzYt5pFxpqNwa1KYqeUqkBc8xj2ibqsEeWLpQQXFatSLGhIatF
 ZGttaj6SSvkWrptPhY7m7bjy54XfQL0eo423w6ydI30qGTskjDcg5/QQ/DbLtW7KxGHG
 +xKZUqCDLwTuozGwUomGo1/AZygnz+w1jgHCCdW8MSugF9PB0piaj5lZ9WTHdrwD+32Z
 gsBg==
X-Gm-Message-State: AOAM5310rUG4kYDvhLYXAIU/jky/Sjczciur2oM1j0xdJmib39HvyWNt
 Ja358/nTP1EjbtRAuI/6wyF4kUQYfW8ZOPGfo9VKl7KmeCz94QfVj4qk52dQT5gxcLNPNArrtgF
 xVZyRVtZDUx+4ltgCgl2wWbKmjCEu5g==
X-Received: by 2002:a1c:f715:: with SMTP id v21mr18479554wmh.2.1607342609753; 
 Mon, 07 Dec 2020 04:03:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJylGcoP7WlRbm8G2sWRxkZt+vYlKcGJovmzr6Hww9hY+IPCyNa85SCqV6DtKpa6MIyAdeu2tg==
X-Received: by 2002:a1c:f715:: with SMTP id v21mr18479512wmh.2.1607342609483; 
 Mon, 07 Dec 2020 04:03:29 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id z189sm14413663wme.23.2020.12.07.04.03.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 04:03:28 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 6DC261843F5; Mon,  7 Dec 2020 13:03:28 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Daniel Borkmann <daniel@iogearbox.net>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Jesper Dangaard Brouer <brouer@redhat.com>
In-Reply-To: <eb305a4f-c189-6b32-f718-6e709ef0fa55@iogearbox.net>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk> <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <87pn3p7aiv.fsf@toke.dk>
 <eb305a4f-c189-6b32-f718-6e709ef0fa55@iogearbox.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 07 Dec 2020 13:03:28 +0100
Message-ID: <87wnxt6cxb.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, netdev@vger.kernel.org, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGFuaWVsIEJvcmttYW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD4gd3JpdGVzOgoKPiBPbiAxMi80
LzIwIDY6MjAgUE0sIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4gRGFuaWVsIEJv
cmttYW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD4gd3JpdGVzOgo+IFsuLi5dCj4+PiBXZSB0cmll
ZCB0byBzdGFuZGFyZGl6ZSBvbiBhIG1pbmltdW0gZ3VhcmFudGVlZCBhbW91bnQsIGJ1dCB1bmZv
cnR1bmF0ZWx5IG5vdAo+Pj4gZXZlcnlvbmUgc2VlbXMgdG8gaW1wbGVtZW50IGl0LCBidXQgSSB0
aGluayBpdCB3b3VsZCBiZSB2ZXJ5IHVzZWZ1bCB0byBxdWVyeQo+Pj4gdGhpcyBmcm9tIGFwcGxp
Y2F0aW9uIHNpZGUsIGZvciBleGFtcGxlLCBjb25zaWRlciB0aGF0IGFuIGFwcCBpbnNlcnRzIGEg
QlBGCj4+PiBwcm9nIGF0IFhEUCBkb2luZyBjdXN0b20gZW5jYXAgc2hvcnRseSBiZWZvcmUgWERQ
X1RYIHNvIGl0IHdvdWxkIGJlIHVzZWZ1bCB0bwo+Pj4ga25vdyB3aGljaCBvZiB0aGUgZGlmZmVy
ZW50IGVuY2FwcyBpdCBpbXBsZW1lbnRzIGFyZSByZWFsaXN0aWNhbGx5IHBvc3NpYmxlIG9uCj4+
PiB0aGUgdW5kZXJseWluZyBYRFAgc3VwcG9ydGVkIGRldi4KPj4gCj4+IEhvdyBtYW55IGRpc3Rp
bmN0IHZhbHVlcyBhcmUgdGhlcmUgaW4gcmVhbGl0eT8gRW5vdWdoIHRvIGV4cHJlc3MgdGhpcyBp
bgo+PiBhIGZldyBmbGFncyAoWERQX0hFQURST09NXzEyOCwgWERQX0hFQURST09NXzE5MiwgZXRj
PyksIG9yIGRvZXMgaXQgbmVlZAo+PiBhbiBhZGRpdGlvbmFsIGZpZWxkIHRvIGdldCB0aGUgZXhh
Y3QgdmFsdWU/IElmIHdlIGltcGxlbWVudCB0aGUgbGF0dGVyCj4+IHdlIGFsc28gcnVuIHRoZSBy
aXNrIG9mIHBlb3BsZSBhY3R1YWxseSBpbXBsZW1lbnRpbmcgYWxsIHNvcnRzIG9mIHdlaXJkCj4+
IHZhbHVlcywgd2hlcmVhcyBpZiB3ZSBjb25zdHJhaW4gaXQgdG8gYSBmZXcgZGlzdGluY3QgdmFs
dWVzIGl0J3MgZWFzaWVyCj4+IHRvIHB1c2ggYmFjayBhZ2FpbnN0IGFkZGluZyBuZXcgdmFsdWVz
IChhcyBpdCdsbCBiZSBvYnZpb3VzIGZyb20gdGhlCj4+IGFkZGl0aW9uIG9mIG5ldyBmbGFncyku
Cj4KPiBJdCdzIG5vdCBldmVyeXdoZXJlIHN0cmFpZ2h0IGZvcndhcmQgdG8gZGV0ZXJtaW5lIHVu
Zm9ydHVuYXRlbHksIHNlZSBhbHNvIFswLDFdCj4gYXMgc29tZSBkYXRhIHBvaW50cyB3aGVyZSBK
ZXNwZXIgbG9va2VkIGludG8gaW4gdGhlIHBhc3QsIHNvIGluIHNvbWUgY2FzZXMgaXQKPiBtaWdo
dCBkaWZmZXIgZGVwZW5kaW5nIG9uIHRoZSBidWlsZC9ydW50aW1lIGNvbmZpZy4uCj4KPiAgICBb
MF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYnBmLzE1ODk0NTMxNDY5OC45NzAzNS41Mjg2ODI3
OTUxMjI1NTc4NDY3LnN0Z2l0QGZpcmVzb3VsLwo+ICAgIFsxXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9icGYvMTU4OTQ1MzQ2NDk0Ljk3MDM1LjEyODA5NDAwNDE0NTY2MDYxODE1LnN0Z2l0QGZp
cmVzb3VsLwoKUmlnaHQsIHdlbGwgaW4gdGhhdCBjYXNlIG1heWJlIHdlIHNob3VsZCBqdXN0IGV4
cG9zZSB0aGUgYWN0dWFsIGhlYWRyb29tCmFzIGEgc2VwYXJhdGUgbmV0bGluayBhdHRyaWJ1dGU/
IEFsdGhvdWdoIEkgc3VwcG9zZSB0aGF0IHdvdWxkIHJlcXVpcmUKYW5vdGhlciByb3VuZCBvZiBk
cml2ZXIgY2hhbmdlcyBzaW5jZSBKZXNwZXIncyBwYXRjaCB5b3UgbGlua2VkIGFib3ZlCm9ubHkg
cHV0cyB0aGlzIGludG8geGRwX2J1ZmYgYXQgWERQIHByb2dyYW0gcnVudGltZS4KCkplc3Blciwg
V0RZVD8KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
