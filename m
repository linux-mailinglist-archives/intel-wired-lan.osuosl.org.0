Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 373A12D1015
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 13:09:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 613662E1FC;
	Mon,  7 Dec 2020 12:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u10QpBlSEF4E; Mon,  7 Dec 2020 12:09:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7061A2E1F8;
	Mon,  7 Dec 2020 12:09:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 576D11BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5246E85C9A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PBfokDj+BngM for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 12:09:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8EED785D5F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607342940;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Oogp+W1aknAJjxG3TGHWcPGum7ebjp+fG4iFe9DbIt4=;
 b=PPYScYf6X8b4ccFBp+x98Hsqj94Wo50WfH2XvKRDDs9YbGU5cjs/e1uO4Rq6LP9lGPKiCm
 iYmYPjY2PpRtJc2Ezuqu98vErtdPci918N+hfgvK0RgmKB5Yv5UJ982hPqRTUbl6pxKMQZ
 6olhQaaiVlXhqXy3wki/UTkNFVRm+9o=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-459-Xk7VJ7WZOkyFb_FHF6ImVQ-1; Mon, 07 Dec 2020 07:08:58 -0500
X-MC-Unique: Xk7VJ7WZOkyFb_FHF6ImVQ-1
Received: by mail-wr1-f69.google.com with SMTP id p16so4798993wrx.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Dec 2020 04:08:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=lsXG7/+LSOoLYlIKjAEhYpKHkiPej1IzWyL2jyZvUL4=;
 b=Ix949GMwC1atY2HAFL7nZjVg49FMl1YWyP0blG1TawZHp+jWcih1iXCsfD6BeS1OrH
 X/er9xCeYhyS/1uXjpAzuyZ+Td+s7pYnpWTMiv3fH05ufCDVpz25Q92R08gLHcBHphi5
 KaoWWgxTdR1JiT7SB4wVPyhok4gdILYlzXW/s6pTWPMGDaN75maWmaAcBANBxK+3rFof
 bEZhrl9pt5uwb6HYFmmtDmknSUfcz6UDbamZ7hg4LF/7d1fF2AEPB77gsmd+kZuGQjfF
 8VEHWUcKGMK819qVYzFCZkVajGQnK8wrt7TnBRQer/AVvKRRhmMR4Vaa9KiL2iq75akt
 YLgg==
X-Gm-Message-State: AOAM5304qAocFDkB2Z5LILO9wJv5NgXCMJrL3tqjg1znTyN6muv8d18z
 wHoj7sVjIiWqtPyGG/8Dsu5TjdYVTSY9CTw4kmcqevVBvQtmBBN1ji+Z1D/vFj19WMPM6jjZD9O
 0Dsry149GPyEZ1ZUyYLa1yft5o0twRw==
X-Received: by 2002:adf:e704:: with SMTP id c4mr10519386wrm.355.1607342937232; 
 Mon, 07 Dec 2020 04:08:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyPX0srtwo8PpNZQMy8Kmk5aGS1/NvZzRKGVQMubbgTQ//setktERB2bd8/aHLgF1anPSNh4Q==
X-Received: by 2002:adf:e704:: with SMTP id c4mr10519326wrm.355.1607342936495; 
 Mon, 07 Dec 2020 04:08:56 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id q4sm13881850wmc.2.2020.12.07.04.08.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 04:08:55 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 942311843F5; Mon,  7 Dec 2020 13:08:55 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>, Daniel Borkmann
 <daniel@iogearbox.net>
In-Reply-To: <20201207125454.3883d315@carbon>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk> <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <87pn3p7aiv.fsf@toke.dk>
 <eb305a4f-c189-6b32-f718-6e709ef0fa55@iogearbox.net>
 <20201207125454.3883d315@carbon>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 07 Dec 2020 13:08:55 +0100
Message-ID: <87r1o16co8.fsf@toke.dk>
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
 hawk@kernel.org, netdev@vger.kernel.org, brouer@redhat.com, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, Saeed Mahameed <saeed@kernel.org>,
 alardam@gmail.com, intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, bpf@vger.kernel.org, bjorn.topel@intel.com,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+IHdyaXRlczoKCj4gT24g
RnJpLCA0IERlYyAyMDIwIDIzOjE5OjU1ICswMTAwCj4gRGFuaWVsIEJvcmttYW5uIDxkYW5pZWxA
aW9nZWFyYm94Lm5ldD4gd3JvdGU6Cj4KPj4gT24gMTIvNC8yMCA2OjIwIFBNLCBUb2tlIEjDuGls
YW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+ID4gRGFuaWVsIEJvcmttYW5uIDxkYW5pZWxAaW9nZWFy
Ym94Lm5ldD4gd3JpdGVzOiAgCj4+IFsuLi5dCj4+ID4+IFdlIHRyaWVkIHRvIHN0YW5kYXJkaXpl
IG9uIGEgbWluaW11bSBndWFyYW50ZWVkIGFtb3VudCwgYnV0IHVuZm9ydHVuYXRlbHkgbm90Cj4+
ID4+IGV2ZXJ5b25lIHNlZW1zIHRvIGltcGxlbWVudCBpdCwgYnV0IEkgdGhpbmsgaXQgd291bGQg
YmUgdmVyeSB1c2VmdWwgdG8gcXVlcnkKPj4gPj4gdGhpcyBmcm9tIGFwcGxpY2F0aW9uIHNpZGUs
IGZvciBleGFtcGxlLCBjb25zaWRlciB0aGF0IGFuIGFwcCBpbnNlcnRzIGEgQlBGCj4+ID4+IHBy
b2cgYXQgWERQIGRvaW5nIGN1c3RvbSBlbmNhcCBzaG9ydGx5IGJlZm9yZSBYRFBfVFggc28gaXQg
d291bGQgYmUgdXNlZnVsIHRvCj4+ID4+IGtub3cgd2hpY2ggb2YgdGhlIGRpZmZlcmVudCBlbmNh
cHMgaXQgaW1wbGVtZW50cyBhcmUgcmVhbGlzdGljYWxseSBwb3NzaWJsZSBvbgo+PiA+PiB0aGUg
dW5kZXJseWluZyBYRFAgc3VwcG9ydGVkIGRldi4gIAo+PiA+IAo+PiA+IEhvdyBtYW55IGRpc3Rp
bmN0IHZhbHVlcyBhcmUgdGhlcmUgaW4gcmVhbGl0eT8gRW5vdWdoIHRvIGV4cHJlc3MgdGhpcyBp
bgo+PiA+IGEgZmV3IGZsYWdzIChYRFBfSEVBRFJPT01fMTI4LCBYRFBfSEVBRFJPT01fMTkyLCBl
dGM/KSwgb3IgZG9lcyBpdCBuZWVkCj4+ID4gYW4gYWRkaXRpb25hbCBmaWVsZCB0byBnZXQgdGhl
IGV4YWN0IHZhbHVlPyBJZiB3ZSBpbXBsZW1lbnQgdGhlIGxhdHRlcgo+PiA+IHdlIGFsc28gcnVu
IHRoZSByaXNrIG9mIHBlb3BsZSBhY3R1YWxseSBpbXBsZW1lbnRpbmcgYWxsIHNvcnRzIG9mIHdl
aXJkCj4+ID4gdmFsdWVzLCB3aGVyZWFzIGlmIHdlIGNvbnN0cmFpbiBpdCB0byBhIGZldyBkaXN0
aW5jdCB2YWx1ZXMgaXQncyBlYXNpZXIKPj4gPiB0byBwdXNoIGJhY2sgYWdhaW5zdCBhZGRpbmcg
bmV3IHZhbHVlcyAoYXMgaXQnbGwgYmUgb2J2aW91cyBmcm9tIHRoZQo+PiA+IGFkZGl0aW9uIG9m
IG5ldyBmbGFncykuICAKPj4gCj4+IEl0J3Mgbm90IGV2ZXJ5d2hlcmUgc3RyYWlnaHQgZm9yd2Fy
ZCB0byBkZXRlcm1pbmUgdW5mb3J0dW5hdGVseSwgc2VlIGFsc28gWzAsMV0KPj4gYXMgc29tZSBk
YXRhIHBvaW50cyB3aGVyZSBKZXNwZXIgbG9va2VkIGludG8gaW4gdGhlIHBhc3QsIHNvIGluIHNv
bWUgY2FzZXMgaXQKPj4gbWlnaHQgZGlmZmVyIGRlcGVuZGluZyBvbiB0aGUgYnVpbGQvcnVudGlt
ZSBjb25maWcuLgo+PiAKPj4gICAgWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2JwZi8xNTg5
NDUzMTQ2OTguOTcwMzUuNTI4NjgyNzk1MTIyNTU3ODQ2Ny5zdGdpdEBmaXJlc291bC8KPj4gICAg
WzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2JwZi8xNTg5NDUzNDY0OTQuOTcwMzUuMTI4MDk0
MDA0MTQ1NjYwNjE4MTUuc3RnaXRAZmlyZXNvdWwvCj4KPiBZZXMsIHVuZm9ydHVuYXRlbHkgZHJp
dmVycyBoYXZlIGFscmVhZHkgZ290dGVuIGNyZWF0aXZlIGluIHRoaXMgYXJlYSwKPiBhbmQgdmFy
aWF0aW9ucyBoYXZlIHNuZWFrZWQgaW4uICBJIHJlbWVtYmVyIHRoYXQgd2Ugd2VyZSBmb3JjZWQg
dG8KPiBhbGxvdyBTRkMgZHJpdmVyIHRvIHVzZSAxMjggYnl0ZXMgaGVhZHJvb20sIHRvIGF2b2lk
IGEgbWVtb3J5Cj4gY29ycnVwdGlvbi4gSSB0cmllZCBoYXJkIHRvIGhhdmUgdGhlIG1pbmltdW0g
MTkyIGJ5dGVzIGFzIGl0IGlzIDMKPiBjYWNoZWxpbmVzLCBidXQgSSBmYWlsZWQgdG8gZW5mb3Jj
ZSB0aGlzLgo+Cj4gSXQgbWlnaHQgYmUgdmFsdWFibGUgdG8gZXhwb3NlIGluZm8gb24gdGhlIGRy
aXZlcnMgaGVhZHJvb20gc2l6ZSwgYXMKPiB0aGlzIHdpbGwgYWxsb3cgZW5kLXVzZXJzIHRvIHRh
a2UgYWR2YW50YWdlIG9mIHRoaXMgKGluc3RlYWQgb2YgaGF2aW5nCj4gdG8gdXNlIHRoZSBsb3dl
c3QgY29tbW9uIGhlYWRyb29tKSBhbmQgdXAtZnJvbnQgaW4gdXNlcnNwYWNlIHJlamVjdGluZwo+
IHRvIGxvYWQgb24gZS5nLiBTRkMgdGhhdCBoYXZlIHRoaXMgYW5ub3lpbmcgbGltaXRhdGlvbi4K
Pgo+IEJVVCB0aGlua2luZyBhYm91dCB3aGF0IHRoZSBkcml2ZXJzIGhlYWRyb29tIHNpemUgTUVB
TlMgdG8gdXNlcnNwYWNlLAo+IEknbSBub3Qgc3VyZSBpdCBpcyB3aXNlIHRvIGdpdmUgdGhpcyBp
bmZvIHRvIHVzZXJzcGFjZS4gIFRoZQo+IFhEUC1oZWFkcm9vbSBpcyB1c2VkIGZvciBzZXZlcmFs
IGtlcm5lbCBpbnRlcm5hbCB0aGluZ3MsIHRoYXQgbGltaXQgdGhlCj4gYXZhaWxhYmxlIHNwYWNl
IGZvciBncm93aW5nIHBhY2tldC1oZWFkcm9vbS4gIEUuZy4gKDEpIHhkcF9mcmFtZSBpcwo+IHNv
bWV0aGluZyB0aGF0IHdlIGxpa2VseSBuZWVkIHRvIGdyb3cgKGV2ZW4tdGhvdWdoIEknbSBwdXNo
aW5nIGJhY2spLAo+IEUuZy4gKDIpIG1ldGFkYXRhIGFyZWEgd2hpY2ggU2FlZWQgaXMgbG9va2lu
ZyB0byBwb3B1bGF0ZSBmcm9tIGRyaXZlcgo+IGNvZGUgKGFsc28gcmVkdWNlIHBhY2tldC1oZWFk
cm9vbSBmb3IgZW5jYXAtaGVhZGVycykuICBTbywgdXNlcnNwYWNlCj4gY2Fubm90IHVzZSB0aGUg
WERQLWhlYWRyb29tIHNpemUgdG8gbXVjaC4uLgoKKEFoLCB5b3UgaGFkIGFscmVhZHkgcmVwbGll
ZCwgc29ycnkgc2VlbXMgSSBtaXNzZWQgdGhhdCkuCgpDYW4gd2UgY2FsY3VsYXRlIGEgbnVtYmVy
IGZyb20gdGhlIGhlYWRyb29tIHRoYXQgaXMgbWVhbmluZ2Z1bCBmb3IKdXNlcnNwYWNlPyBJIHN1
cHBvc2UgdGhhdCB3b3VsZCBiZSAidG90YWwgbnVtYmVyIG9mIGJ5dGVzIGF2YWlsYWJsZSBmb3IK
bWV0YWRhdGErcGFja2V0IGV4dGVuc2lvbiI/IEV2ZW4gd2l0aCBncm93aW5nIGRhdGEgc3RydWN0
dXJlcywgYW55CnBhcnRpY3VsYXIga2VybmVsIHNob3VsZCBiZSBhYmxlIHRvIGluZm9ybSB1c2Vy
c3BhY2Ugb2YgdGhlIGN1cnJlbnQKdmFsdWUsIG5vPwoKLVRva2UKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
