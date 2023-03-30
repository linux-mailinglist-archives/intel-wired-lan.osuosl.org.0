Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8892C6D0E42
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 21:03:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F37FE60BA3;
	Thu, 30 Mar 2023 19:03:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F37FE60BA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680202983;
	bh=NK6VcHO5pr+Mg+Xww9pLm/qiZbkNzjB8/PGMowvSfYY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jhKPLFE8NOJT5UPvqkCFopNirEigJRDBhBirkdmJ0vwqb6bQxBIXIiSKMg5YGZ1yo
	 vufgKD0+jdKApoqnk1qJ0sdSyiSy6UknhQXZ3vKn+nRjIJPucT5JISS7CcwOwEmZFo
	 rWxMu0fMcyT1+oi0en7ZOqHt9bkFAchnnUxsPCpRUNh/cL79be85qqH2/mdZ8xl/Rd
	 TJBssBhnRSVhpSww8vfe/AfoRakxeTAuarA+ykZvNJ5vWq/6Rv7eZVu3fQMOcH38Dk
	 W9NCNJLANBPd/TI2B9TtkVFrfzoSFGn0Ibg+cYangZzYSEBkHHttApEtc6OuAwovnu
	 0OE+ZJq/LHfFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CZxsO5-edBov; Thu, 30 Mar 2023 19:03:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABF5E60B20;
	Thu, 30 Mar 2023 19:03:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABF5E60B20
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6A351BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:02:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B45294210D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:02:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B45294210D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2z85mD6it8ri for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 19:02:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9A8F4210B
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9A8F4210B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:02:55 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 qe8-20020a17090b4f8800b0023f07253a2cso20746949pjb.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 12:02:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680202975;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=p2UKzHLw5AMRHbJxUqeu6Kh29H/LxajcGBLc6kBn8NM=;
 b=KHcN0jgYpBjs6k2SboZWadVV4BqkvPFsKDkqnHe2JLK9wSTGCgzwZ3HvoZlhW8C6ei
 VuiDIs08w5WdT96tUVI41mWJ78P5pD5LJULyWUOqv7fRS1lYy6BKSHuvejsL7MdUkzj9
 fOWzv1sSNVTKquAiLzqBLVx+DV3CM7tSWwWkcVOe9xFJz+n7wwkL8nsAKNRW5xvJlcJ2
 moZlFW0o1tKTZCH2W5clXyy2JcLtKvJRADgXvucxLN62jostmULEx21V+cNhtMdJfgyU
 e2hxSa4MeA/dX1fBc5lhFroluMaOYMyGE0cpq/k2BmzSM1E1jTXMMznsyh6386qDt1ZD
 kvzA==
X-Gm-Message-State: AAQBX9eRHHncXSXazGGISPmM0Y66AQvVTkrAaa903jVb2QFGBudpuNCJ
 9/x00VHqdl31ZjLUuMoEp8fpH/wNAtRweW7iac2pVA==
X-Google-Smtp-Source: AKy350YBv3YNxpoBUla7d5uX/Fr+RDrmMNEjWWjz/UysSH7sQgDbddbgiZwEfCWc8HIRLF59xwmJH1bCBsEZ2qXR3hE=
X-Received: by 2002:a17:902:7b89:b0:19f:2c5a:5786 with SMTP id
 w9-20020a1709027b8900b0019f2c5a5786mr8632202pll.8.1680202974843; Thu, 30 Mar
 2023 12:02:54 -0700 (PDT)
MIME-Version: 1.0
References: <168019602958.3557870.9960387532660882277.stgit@firesoul>
 <168019606574.3557870.15629824904085210321.stgit@firesoul>
 <ZCXWerysZL1XwVfX@google.com>
 <04256caf-aa28-7e0a-59b1-ecf2b237c96f@redhat.com>
In-Reply-To: <04256caf-aa28-7e0a-59b1-ecf2b237c96f@redhat.com>
From: Stanislav Fomichev <sdf@google.com>
Date: Thu, 30 Mar 2023 12:02:43 -0700
Message-ID: <CAKH8qBv9QngYcMjcL=sZR8wVCufPSAv-ZW72OJB-LhZF5a_DrQ@mail.gmail.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1680202975;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=p2UKzHLw5AMRHbJxUqeu6Kh29H/LxajcGBLc6kBn8NM=;
 b=jfxxG+wlfnmoC+ExMU9oSM4vowDpE80ayaaX0O2aBGqC2elIvYflpzHBV9g0BvsEZY
 xy6wYhpi53/pArSydRtmoRVAkpJ47+6HOoJ/ys8DqhLR0XEPWl1geCfVLPnO86XM/QRs
 5M5lmSeM47SYVWpnHWtSjh92WtSPWEMrmBsN0ndbnr4svt5eEX/U9eifrPjCFUjKDWxF
 6VgrxjuOvQCwWy7y7Gx4PeORHJ+Umqiq9RGATMWBwQNFyL5cTxzzB86fQGpO0r+Bf6Lx
 E6Jkc/UAy5cdsW4StBgbk+kOUz91yWbobl/7E3Nh9H7TljwvXrNPn+Bvi2+tZGoOavcs
 9qkg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=jfxxG+wl
Subject: Re: [Intel-wired-lan] [PATCH bpf RFC-V3 1/5] xdp: rss hash types
 representation
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, pabeni@redhat.com, yoong.siang.song@intel.com,
 brouer@redhat.com, boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 edumazet@google.com, hawk@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBNYXIgMzAsIDIwMjMgYXQgMTE6NTbigK9BTSBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVy
CjxqYnJvdWVyQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4KPiBPbiAzMC8wMy8yMDIzIDIwLjM1LCBT
dGFuaXNsYXYgRm9taWNoZXYgd3JvdGU6Cj4gPiBPbiAwMy8zMCwgSmVzcGVyIERhbmdhYXJkIEJy
b3VlciB3cm90ZToKPiA+PiBUaGUgUlNTIGhhc2ggdHlwZSBzcGVjaWZpZXMgd2hhdCBwb3J0aW9u
IG9mIHBhY2tldCBkYXRhIE5JQyBoYXJkd2FyZSB1c2VkCj4gPj4gd2hlbiBjYWxjdWxhdGluZyBS
U1MgaGFzaCB2YWx1ZS4gVGhlIFJTUyB0eXBlcyBhcmUgZm9jdXNlZCBvbiBJbnRlcm5ldAo+ID4+
IHRyYWZmaWMgcHJvdG9jb2xzIGF0IE9TSSBsYXllcnMgTDMgYW5kIEw0LiBMMiAoZS5nLiBBUlAp
IG9mdGVuIGdldCBoYXNoCj4gPj4gdmFsdWUgemVybyBhbmQgbm8gUlNTIHR5cGUuIEZvciBMMyBm
b2N1c2VkIG9uIElQdjQgdnMuIElQdjYsIGFuZCBMNAo+ID4+IHByaW1hcmlseSBUQ1AgdnMgVURQ
LCBidXQgc29tZSBoYXJkd2FyZSBzdXBwb3J0cyBTQ1RQLgo+ID4KPiA+PiBIYXJkd2FyZSBSU1Mg
dHlwZXMgYXJlIGRpZmZlcmVudGx5IGVuY29kZWQgZm9yIGVhY2ggaGFyZHdhcmUgTklDLiBNb3N0
Cj4gPj4gaGFyZHdhcmUgcmVwcmVzZW50IFJTUyBoYXNoIHR5cGUgYXMgYSBudW1iZXIuIERldGVy
bWluaW5nIEwzIHZzIEw0IG9mdGVuCj4gPj4gcmVxdWlyZXMgYSBtYXBwaW5nIHRhYmxlIGFzIHRo
ZXJlIG9mdGVuIGlzbid0IGEgcGF0dGVybiBvciBzb3J0aW5nCj4gPj4gYWNjb3JkaW5nIHRvIElT
TyBsYXllci4KPiA+Cj4gPj4gVGhlIHBhdGNoIGludHJvZHVjZSBhIFhEUCBSU1MgaGFzaCB0eXBl
IChlbnVtIHhkcF9yc3NfaGFzaF90eXBlKSB0aGF0Cj4gPj4gY29udGFpbiBjb21iaW5hdGlvbnMg
dG8gYmUgdXNlZCBieSBkcml2ZXJzLCB3aGljaCBnZXRzIGJ1aWxkIHVwIHdpdGggYml0cwo+ID4+
IGZyb20gZW51bSB4ZHBfcnNzX3R5cGVfYml0cy4gQm90aCBlbnVtIHhkcF9yc3NfdHlwZV9iaXRz
IGFuZAo+ID4+IHhkcF9yc3NfaGFzaF90eXBlIGdldCBleHBvc2VkIHRvIEJQRiB2aWEgQlRGLCBh
bmQgaXQgaXMgdXAgdG8gdGhlCj4gPj4gQlBGLXByb2dyYW1tZXIgdG8gbWF0Y2ggdXNpbmcgdGhl
c2UgZGVmaW5lcy4KPiA+Cj4gPj4gVGhpcyBwcm9wb3NhbCBjaGFuZ2UgdGhlIGtmdW5jIEFQSSBi
cGZfeGRwX21ldGFkYXRhX3J4X2hhc2goKSBhZGRpbmcKPiA+PiBhIHBvaW50ZXIgdmFsdWUgYXJn
dW1lbnQgZm9yIHByb3ZpZGUgdGhlIFJTUyBoYXNoIHR5cGUuCj4gPgo+ID4+IFNpZ25lZC1vZmYt
Ynk6IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgo+ID4+IC0tLQo+
ID4+ICAgaW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaCB8ICAgIDMgKystCj4gPj4gICBpbmNsdWRl
L25ldC94ZHAuaCAgICAgICAgIHwgICA0NiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiA+PiAgIG5ldC9jb3JlL3hkcC5jICAgICAgICAgICAgfCAgIDEwICsr
KysrKysrKy0KPiA+PiAgIDMgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiA+Cj4KPiBbLi4uXQo+ID4+IGRpZmYgLS1naXQgYS9uZXQvY29yZS94ZHAuYyBi
L25ldC9jb3JlL3hkcC5jCj4gPj4gaW5kZXggNTI4ZDRiMzc5ODNkLi4zOGQyZGVlMTZiNDcgMTAw
NjQ0Cj4gPj4gLS0tIGEvbmV0L2NvcmUveGRwLmMKPiA+PiArKysgYi9uZXQvY29yZS94ZHAuYwo+
ID4+IEBAIC03MzQsMTQgKzczNCwyMiBAQCBfX2JwZl9rZnVuYyBpbnQKPiA+PiBicGZfeGRwX21l
dGFkYXRhX3J4X3RpbWVzdGFtcChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIHU2NCAqdGltCj4g
Pj4gICAgKiBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2ggLSBSZWFkIFhEUCBmcmFtZSBSWCBoYXNo
Lgo+ID4+ICAgICogQGN0eDogWERQIGNvbnRleHQgcG9pbnRlci4KPiA+PiAgICAqIEBoYXNoOiBS
ZXR1cm4gdmFsdWUgcG9pbnRlci4KPiA+PiArICogQHJzc190eXBlOiBSZXR1cm4gdmFsdWUgcG9p
bnRlciBmb3IgUlNTIHR5cGUuCj4gPj4gKyAqCj4gPj4gKyAqIFRoZSBSU1MgaGFzaCB0eXBlIChA
cnNzX3R5cGUpIHNwZWNpZmllcyB3aGF0IHBvcnRpb24gb2YgcGFja2V0IGhlYWRlcnMgTklDCj4g
Pj4gKyAqIGhhcmR3YXJlIHdlcmUgdXNlZCB3aGVuIGNhbGN1bGF0aW5nIFJTUyBoYXNoIHZhbHVl
LiAgVGhlIHR5cGUgY29tYmluYXRpb25zCj4gPj4gKyAqIGFyZSBkZWZpbmVkIHZpYSAmZW51bSB4
ZHBfcnNzX2hhc2hfdHlwZSBhbmQgaW5kaXZpZHVhbCBiaXRzIGNhbiBiZSBkZWNvZGVkCj4gPj4g
KyAqIHZpYSAmZW51bSB4ZHBfcnNzX3R5cGVfYml0cy4KPiA+PiAgICAqCj4gPj4gICAgKiBSZXR1
cm46Cj4gPj4gICAgKiAqIFJldHVybnMgMCBvbiBzdWNjZXNzIG9yIGBgLWVycm5vYGAgb24gZXJy
b3IuCj4gPj4gICAgKiAqIGBgLUVPUE5PVFNVUFBgYCA6IG1lYW5zIGRldmljZSBkcml2ZXIgZG9l
c24ndCBpbXBsZW1lbnQga2Z1bmMKPiA+PiAgICAqICogYGAtRU5PREFUQWBgICAgIDogbWVhbnMg
bm8gUlgtaGFzaCBhdmFpbGFibGUgZm9yIHRoaXMgZnJhbWUKPiA+PiAgICAqLwo+ID4+IC1fX2Jw
Zl9rZnVuYyBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQg
KmN0eCwKPiA+PiB1MzIgKmhhc2gpCj4gPj4gK19fYnBmX2tmdW5jIGludCBicGZfeGRwX21ldGFk
YXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LAo+ID4+IHUzMiAqaGFzaCwKPiA+
PiArICAgICAgICAgICAgICAgICAgICAgZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSAqcnNzX3R5cGUp
Cj4gPj4gICB7Cj4gPgo+ID4gWy4uXQo+ID4KPiA+PiArICAgIEJURl9UWVBFX0VNSVQoZW51bSB4
ZHBfcnNzX3R5cGVfYml0cyk7Cj4gPgo+ID4gbml0OiBEbyB3ZSBzdGlsbCBuZWVkIHRoaXMgd2l0
aCBhbiBleHRyYSBhcmd1bWVudD8KPiA+Cj4KPiBZZXMsIHVuZm9ydHVuYXRlbHkgKGNvbXBpbGVy
IG9wdGltaXplcyBvdXQgZW51bSB4ZHBfcnNzX3R5cGVfYml0cykuCj4gRG8gbm90aWNlIHRoZSBk
aWZmZXJlbmNlIHhkcF9yc3NfdHlwZV9iaXRzIHZzIHhkcF9yc3NfaGFzaF90eXBlLgo+IFdlIGRv
bid0IG5lZWQgaXQgZm9yICJ4ZHBfcnNzX2hhc2hfdHlwZSIgYnV0IG5lZWQgaXQgZm9yCj4gInhk
cF9yc3NfdHlwZV9iaXRzIi4KCkFoLCBJIG1pc3NlZCB0aGF0LiBUaGVuIHdoeSBub3QgZXhwb3Nl
IHhkcF9yc3NfdHlwZV9iaXRzPwpLZWVwIHhkcF9yc3NfaGFzaF90eXBlIGZvciBpbnRlcm5hbCBk
cml2ZXJzJyB0YWJsZXMsIGFuZCBleHBvcnQgdGhlCmVudW0gd2l0aCB0aGUgYml0cz8KCj4gLS1K
ZXNwZXIKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
