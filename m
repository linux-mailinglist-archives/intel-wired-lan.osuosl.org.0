Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC2D2CF303
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 18:21:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 682C8878C1;
	Fri,  4 Dec 2020 17:21:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nDR6Ypy5pd6q; Fri,  4 Dec 2020 17:21:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42F57878BD;
	Fri,  4 Dec 2020 17:21:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1537E1BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 17:21:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0FD4187C5A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 17:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mtOyVzhzGYbz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 17:21:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0FF8E87C56
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 17:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607102468;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jGONvBImTfZ602Ad3sNIty0XQ3r+dMDvgf8X2UsJFSQ=;
 b=BzD0+rzep106qA1zf6FHaveFnw6m1kk8sjGZxvkgnikHo/WiePqV33sGCVt/WWN2g17qRN
 wgvxFWc+D3lImPhi5Et9dLv5EI/wod74Dag3A6nxTKDv/lV7umnniUwlesmUbEl3Y2DkDo
 +IpssL71hNWSQRjnzcQ9DPS9FApu6Gk=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-539-hNQkC1UrMTOvYI7C2gW5cw-1; Fri, 04 Dec 2020 12:21:00 -0500
X-MC-Unique: hNQkC1UrMTOvYI7C2gW5cw-1
Received: by mail-ej1-f72.google.com with SMTP id k15so2328787ejg.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 09:21:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=U5IeZavI1slGOCHWtn0MYw9qDh47KRQr0SDzs5KB7WA=;
 b=Eaog8DCJDeD9G8pjpOel4K1oJRl4WG0z0csVmMgr8TpQXeTlCEEX6at7T+kX+nefRP
 QZSlJO5PuXWhuoJpCIgA8OXVtjha7ih6h9i7lcAUe9t81wcn/TXnWXnrrMARpjc50mX4
 lBih6mFCVrJhbqXAS6vH/HBxgXL3dHdbPRCIGpOFjG+bMvebxd/PRZPCrLF80DLtdHSU
 AP2Y0y+4ikR2+DqfZezt1OXglwjwicPrf8d01UL8Ovz7FXXvnK70cu6M6ggay0DoAmIw
 Fz801Po7Na7frkjFkwa1A69d0sAe0eiuwafV85TsYrnwetqjOGdS1Op7YR4h65XuijSf
 ddtw==
X-Gm-Message-State: AOAM533A0CLvZxjKWi9JOvahRu5GJ3XLB0QHrtwL1eeD3BR2D58gdYDc
 J7qRLq+h9DJYekmiCcCFM2ZkHizJ5LoOAjRFw9CrA465lJMLlk+uoUtO1NjQpES0z4hdlH2A4ad
 iLS3XWxnCpgYfSr16gyLZqSF883WkMg==
X-Received: by 2002:a17:906:6d0b:: with SMTP id
 m11mr7928029ejr.230.1607102459303; 
 Fri, 04 Dec 2020 09:20:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwhS7VA5Rc4xxMfbG2ag4DHR9oX3MJU8gZ42OYogNWOs5tsZLXm5ObLXgr0/bSOvze7SxxwxA==
X-Received: by 2002:a17:906:6d0b:: with SMTP id
 m11mr7927999ejr.230.1607102458975; 
 Fri, 04 Dec 2020 09:20:58 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id j22sm3112770ejy.106.2020.12.04.09.20.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 09:20:58 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id E20DC182EEA; Fri,  4 Dec 2020 18:20:56 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Daniel Borkmann <daniel@iogearbox.net>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>
In-Reply-To: <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk> <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 04 Dec 2020 18:20:56 +0100
Message-ID: <87pn3p7aiv.fsf@toke.dk>
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
 hawk@kernel.org, netdev@vger.kernel.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGFuaWVsIEJvcmttYW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD4gd3JpdGVzOgoKPiBPbiAxMi80
LzIwIDE6NDYgUE0sIE1hY2llaiBGaWphbGtvd3NraSB3cm90ZToKPj4gT24gRnJpLCBEZWMgMDQs
IDIwMjAgYXQgMDE6MTg6MzFQTSArMDEwMCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3Rl
Ogo+Pj4gYWxhcmRhbUBnbWFpbC5jb20gd3JpdGVzOgo+Pj4+IEZyb206IE1hcmVrIE1hanR5a2Eg
PG1hcmVreC5tYWp0eWthQGludGVsLmNvbT4KPj4+Pgo+Pj4+IEltcGxlbWVudCBzdXBwb3J0IGZv
ciBjaGVja2luZyB3aGF0IGtpbmQgb2YgeGRwIGZ1bmN0aW9uYWxpdHkgYSBuZXRkZXYKPj4+PiBz
dXBwb3J0cy4gUHJldmlvdXNseSwgdGhlcmUgd2FzIG5vIHdheSB0byBkbyB0aGlzIG90aGVyIHRo
YW4gdG8gdHJ5Cj4+Pj4gdG8gY3JlYXRlIGFuIEFGX1hEUCBzb2NrZXQgb24gdGhlIGludGVyZmFj
ZSBvciBsb2FkIGFuIFhEUCBwcm9ncmFtIGFuZCBzZWUKPj4+PiBpZiBpdCB3b3JrZWQuIFRoaXMg
Y29tbWl0IGNoYW5nZXMgdGhpcyBieSBhZGRpbmcgYSBuZXcgdmFyaWFibGUgd2hpY2gKPj4+PiBk
ZXNjcmliZXMgYWxsIHhkcCBzdXBwb3J0ZWQgZnVuY3Rpb25zIG9uIHByZXR0eSBkZXRhaWxlZCBs
ZXZlbDoKPj4+Cj4+PiBJIGxpa2UgdGhlIGRpcmVjdGlvbiB0aGlzIGlzIGdvaW5nISA6KQo+Pj4K
Pj4+PiAgIC0gYWJvcnRlZAo+Pj4+ICAgLSBkcm9wCj4+Pj4gICAtIHBhc3MKPj4+PiAgIC0gdHgK
Pgo+IEkgc3Ryb25nbHkgdGhpbmsgd2Ugc2hvdWxkIF9ub3RfIG1lcmdlIGFueSBuYXRpdmUgWERQ
IGRyaXZlciBwYXRjaHNldAo+IHRoYXQgZG9lcyBub3Qgc3VwcG9ydC9pbXBsZW1lbnQgdGhlIGFi
b3ZlIHJldHVybiBjb2Rlcy4gQ291bGQgd2UKPiBpbnN0ZWFkIGdyb3VwIHRoZW0gdG9nZXRoZXIg
YW5kIGNhbGwgdGhpcyBzb21ldGhpbmcgbGlrZSBYRFBfQkFTRQo+IGZ1bmN0aW9uYWxpdHkgdG8g
bm90IGdpdmUgYSB3cm9uZyBpbXByZXNzaW9uPyBJZiB0aGlzIGlzIHByb3Blcmx5Cj4gZG9jdW1l
bnRlZCB0aGF0IHRoZXNlIGFyZSBiYXNpYyBtdXN0LWhhdmUgX3JlcXVpcmVtZW50c18sIHRoZW4g
dXNlcnMKPiBhbmQgZHJpdmVyIGRldmVsb3BlcnMgYm90aCBrbm93IHdoYXQgdGhlIGV4cGVjdGF0
aW9ucyBhcmUuCgpJIHRoaW5rIHRoZXJlIG1heSBoYXZlIGJlZW4gZHJpdmVycyB0aGF0IG9ubHkg
ZGlkIERST1AvUEFTUyBvbiBmaXJzdAptZXJnZTsgYnV0IGFkZGluZyBUWCB0byB0aGUgImJhc2Ug
c2V0IiBpcyBmaW5lIGJ5IG1lLCBhcyBsb25nIGFzIGl0J3MKYWN0dWFsbHkgZW5mb3JjZWQgOykK
CihBcyBpbiwgd2Ugb3JpZ2luYWxseSBzYWlkIHRoZSBzYW1lIHRoaW5nIGFib3V0IHRoZSBmdWxs
IGZlYXR1cmUgc2V0IGFuZAp0aGF0IG5ldmVyIHJlYWxseSB3b3JrZWQgb3V0KS4KCj4+Pj4gICAt
IHJlZGlyZWN0Cj4+Pgo+Pj4gRHJpdmVycyBjYW4gaW4gcHJpbmNpcGxlIGltcGxlbWVudCBzdXBw
b3J0IGZvciB0aGUgWERQX1JFRElSRUNUIHJldHVybgo+Pj4gY29kZSAoYW5kIGNhbGxpbmcgeGRw
X2RvX3JlZGlyZWN0KCkpIHdpdGhvdXQgaW1wbGVtZW50aW5nIG5kb194ZHBfeG1pdCgpCj4+PiBm
b3IgYmVpbmcgdGhlICp0YXJnZXQqIG9mIGEgcmVkaXJlY3QuIFdoaWxlIG15IHF1aWNrIGdyZXBw
aW5nIGRvZXNuJ3QKPj4+IHR1cm4gdXAgYW55IGRyaXZlcnMgdGhhdCBkbyBvbmx5IG9uZSBvZiB0
aGVzZSByaWdodCBub3csIEkgdGhpbmsgd2UndmUKPj4+IGhhZCBleGFtcGxlcyBvZiBpdCBpbiB0
aGUgcGFzdCwgc28gaXQgd291bGQgcHJvYmFibHkgYmUgYmV0dGVyIHRvIHNwbGl0Cj4+PiB0aGUg
cmVkaXJlY3QgZmVhdHVyZSBmbGFnIGluIHR3by4KPj4+Cj4+PiBUaGlzIHdvdWxkIGFsc28gbWFr
ZSBpdCB0cml2aWFsIHRvIHJlcGxhY2UgdGhlIGNoZWNrIGluIF9feGRwX2VucXVldWUoKQo+Pj4g
KGluIGRldm1hcC5jKSBmcm9tIGxvb2tpbmcgYXQgd2hldGhlciB0aGUgbmRvIGlzIGRlZmluZWQs
IGFuZCBqdXN0Cj4+PiBjaGVja2luZyB0aGUgZmxhZy4gSXQgd291bGQgYmUgZ3JlYXQgaWYgeW91
IGNvdWxkIGRvIHRoaXMgYXMgcGFydCBvZgo+Pj4gdGhpcyBzZXJpZXMuCj4+Pgo+Pj4gTWF5YmUg
d2UgY291bGQgZXZlbiBtYWtlIHRoZSAncmVkaXJlY3QgdGFyZ2V0JyBmbGFnIGJlIHNldCBhdXRv
bWF0aWNhbGx5Cj4+PiBpZiBhIGRyaXZlciBpbXBsZW1lbnRzIG5kb194ZHBfeG1pdD8KPj4gCj4+
ICsxCj4+IAo+Pj4+ICAgLSB6ZXJvIGNvcHkKPj4+PiAgIC0gaGFyZHdhcmUgb2ZmbG9hZC4KPgo+
IE9uZSBvdGhlciB0aGluZyB0aGF0IGlzIHF1aXRlIGFubm95aW5nIHRvIGZpZ3VyZSBvdXQgc29t
ZXRpbWVzIGFuZCBub3QgYWx3YXlzCj4gb2J2aW91cyBmcm9tIHJlYWRpbmcgdGhlIGRyaXZlciBj
b2RlIChhbmQgaXQgbWF5IGV2ZW4gZGlmZmVyIGRlcGVuZGluZyBvbiBob3cKPiB0aGUgZHJpdmVy
IHdhcyBidWlsdCA6LykgaXMgaG93IG11Y2ggWERQIGhlYWRyb29tIGEgZHJpdmVyIHJlYWxseSBw
cm92aWRlcy4KPgo+IFdlIHRyaWVkIHRvIHN0YW5kYXJkaXplIG9uIGEgbWluaW11bSBndWFyYW50
ZWVkIGFtb3VudCwgYnV0IHVuZm9ydHVuYXRlbHkgbm90Cj4gZXZlcnlvbmUgc2VlbXMgdG8gaW1w
bGVtZW50IGl0LCBidXQgSSB0aGluayBpdCB3b3VsZCBiZSB2ZXJ5IHVzZWZ1bCB0byBxdWVyeQo+
IHRoaXMgZnJvbSBhcHBsaWNhdGlvbiBzaWRlLCBmb3IgZXhhbXBsZSwgY29uc2lkZXIgdGhhdCBh
biBhcHAgaW5zZXJ0cyBhIEJQRgo+IHByb2cgYXQgWERQIGRvaW5nIGN1c3RvbSBlbmNhcCBzaG9y
dGx5IGJlZm9yZSBYRFBfVFggc28gaXQgd291bGQgYmUgdXNlZnVsIHRvCj4ga25vdyB3aGljaCBv
ZiB0aGUgZGlmZmVyZW50IGVuY2FwcyBpdCBpbXBsZW1lbnRzIGFyZSByZWFsaXN0aWNhbGx5IHBv
c3NpYmxlIG9uCj4gdGhlIHVuZGVybHlpbmcgWERQIHN1cHBvcnRlZCBkZXYuCgpIb3cgbWFueSBk
aXN0aW5jdCB2YWx1ZXMgYXJlIHRoZXJlIGluIHJlYWxpdHk/IEVub3VnaCB0byBleHByZXNzIHRo
aXMgaW4KYSBmZXcgZmxhZ3MgKFhEUF9IRUFEUk9PTV8xMjgsIFhEUF9IRUFEUk9PTV8xOTIsIGV0
Yz8pLCBvciBkb2VzIGl0IG5lZWQKYW4gYWRkaXRpb25hbCBmaWVsZCB0byBnZXQgdGhlIGV4YWN0
IHZhbHVlPyBJZiB3ZSBpbXBsZW1lbnQgdGhlIGxhdHRlcgp3ZSBhbHNvIHJ1biB0aGUgcmlzayBv
ZiBwZW9wbGUgYWN0dWFsbHkgaW1wbGVtZW50aW5nIGFsbCBzb3J0cyBvZiB3ZWlyZAp2YWx1ZXMs
IHdoZXJlYXMgaWYgd2UgY29uc3RyYWluIGl0IHRvIGEgZmV3IGRpc3RpbmN0IHZhbHVlcyBpdCdz
IGVhc2llcgp0byBwdXNoIGJhY2sgYWdhaW5zdCBhZGRpbmcgbmV3IHZhbHVlcyAoYXMgaXQnbGwg
YmUgb2J2aW91cyBmcm9tIHRoZQphZGRpdGlvbiBvZiBuZXcgZmxhZ3MpLgoKLVRva2UKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
