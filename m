Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 211DB3A065B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jun 2021 23:43:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1350283280;
	Tue,  8 Jun 2021 21:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LkND6TyA9y0J; Tue,  8 Jun 2021 21:43:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3DC482B51;
	Tue,  8 Jun 2021 21:43:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F0151BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 21:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C0AC4025E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 21:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XhuNACoExB9L for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jun 2021 21:43:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B88E54023E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 21:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623188627;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MCZsWrIKiyxknYekkNRr1fCGJGx6D8ddnBBYhJ4ZFDg=;
 b=XosedhL8853/FOysvWrH11unaPuqpkZDB/9ZTBagFLyD+MBh2nzM0Qgxvum70DrxK201Lf
 5NU+sAj7KK27ta1rCpUUxppgRDo77zCzfYJlE6deX9jaaLq26/j5Q2d0UX/n1oSVjfUAvK
 bcMEJawPu+atEmBP2hRc61HwDRP05Bc=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-463-ozkUCdiAOyG9b3861PvjqQ-1; Tue, 08 Jun 2021 17:43:43 -0400
X-MC-Unique: ozkUCdiAOyG9b3861PvjqQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 j13-20020aa7de8d0000b029038fc8e57037so11441076edv.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jun 2021 14:43:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=UO0J5rCgH7Iumd+lPo8k4Dl2OQ9K2Az34Q2U2WC1yms=;
 b=LGKMfb4CRMdnM9bS1fiDS4qDRwxxe2t/zsFNpw63dfR2tYOTm2lXP3BVfh6uqm/YKh
 rGk2AuZCYjfSoND82l2vcMWLp57tSjw/6jdISYzjb42Q/LDAvj/S4tmb5LT2SAXQRG8I
 NsPwwBgej0ceoZgaZF76cfxIv4LEmdHYsBlW39qlzZ9Al2x2lan9UtM0Xv2aC0iCDq+a
 It4ObS6dPzd38tLRsUS2LL9nK7wl+tJZZDCzFA6k8WK7aJDUQ62Bj/O+OWBaMDHbkhqv
 pXME7P2hx8N07Qg1XGSUGngdXJTMjauvvb+YAX26QPCihXSzFHvsArZfIvXXQBRlGPhi
 t2LA==
X-Gm-Message-State: AOAM5339n3BaIufIiolS1LC0hkMaHH2ZYiG0wYB4J6IupQNSb9csTNDr
 dd4BA2grCLbpYGEH6CG0wyP4yGQ6+GX+qappAzNTIqJpnYzhJcPmWoFskJroF8PQ2kiZX6AAqcm
 kpYW6N/iVZp7E8FCM4FyFckYtSFSv8w==
X-Received: by 2002:a17:906:34d6:: with SMTP id
 h22mr25423366ejb.413.1623188622416; 
 Tue, 08 Jun 2021 14:43:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz74lYJW7U76qPg3eEYhfqRk0CA1pV0lVlikeR1uu2uLrVEB8Lsoz/4glU3lp6X5rLyb8/SWA==
X-Received: by 2002:a17:906:34d6:: with SMTP id
 h22mr25423346ejb.413.1623188622228; 
 Tue, 08 Jun 2021 14:43:42 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id bh3sm324394ejb.19.2021.06.08.14.43.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 14:43:41 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id C1704180723; Tue,  8 Jun 2021 23:43:40 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <20210608121259.GA1971@ranger.igk.intel.com>
References: <20210601113236.42651-1-maciej.fijalkowski@intel.com>
 <20210601113236.42651-3-maciej.fijalkowski@intel.com>
 <87czt5dal0.fsf@toke.dk> <20210608121259.GA1971@ranger.igk.intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 08 Jun 2021 23:43:40 +0200
Message-ID: <87o8cgnib7.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next 2/2] ice: introduce XDP Tx
 fallback path
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPiB3cml0ZXM6
Cgo+IE9uIFR1ZSwgSnVuIDAxLCAyMDIxIGF0IDAyOjM4OjAzUE0gKzAyMDAsIFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToKPj4gTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxr
b3dza2lAaW50ZWwuY29tPiB3cml0ZXM6Cj4+IAo+PiA+IFVuZGVyIHJhcmUgY2lyY3Vtc3RhbmNl
cyB0aGVyZSBtaWdodCBiZSBhIHNpdHVhdGlvbiB3aGVyZSBhIHJlcXVpcmVtZW50Cj4+ID4gb2Yg
aGF2aW5nIGEgWERQIFR4IHF1ZXVlIHBlciBjb3JlIGNvdWxkIG5vdCBiZSBmdWxmaWxsZWQgYW5k
IHNvbWUgb2YgdGhlCj4+ID4gVHggcmVzb3VyY2VzIHdvdWxkIGhhdmUgdG8gYmUgc2hhcmVkIGJl
dHdlZW4gY29yZXMuIFRoaXMgeWllbGRzIGEgbmVlZAo+PiA+IGZvciBwbGFjaW5nIGFjY2Vzc2Vz
IHRvIHhkcF9yaW5ncyBhcnJheSBvbnRvIGNyaXRpY2FsIHNlY3Rpb24gcHJvdGVjdGVkCj4+ID4g
Ynkgc3BpbmxvY2suCj4+ID4KPj4gPiBEZXNpZ24gb2YgaGFuZGxpbmcgc3VjaCBzY2VuYXJpbyBp
cyB0byBhdCBmaXJzdCBmaW5kIG91dCBob3cgbWFueSBxdWV1ZXMKPj4gPiBhcmUgdGhlcmUgdGhh
dCBYRFAgY291bGQgdXNlLiBBbnkgbnVtYmVyIHRoYXQgaXMgbm90IGxlc3MgdGhhbiB0aGUgaGFs
Zgo+PiA+IG9mIGEgY291bnQgb2YgY29yZXMgb2YgcGxhdGZvcm0gaXMgYWxsb3dlZC4gWERQIHF1
ZXVlIGNvdW50IDwgY3B1IGNvdW50Cj4+ID4gaXMgc2lnbmFsbGVkIHZpYSBuZXcgVlNJIHN0YXRl
IElDRV9WU0lfWERQX0ZBTExCQUNLIHdoaWNoIGNhcnJpZXMgdGhlCj4+ID4gaW5mb3JtYXRpb24g
ZnVydGhlciBkb3duIHRvIFJ4IHJpbmdzIHdoZXJlIG5ldyBJQ0VfVFhfWERQX0xPQ0tFRCBpcyBz
ZXQKPj4gPiBiYXNlZCBvbiB0aGUgbWVudGlvbmVkIFZTSSBzdGF0ZS4gVGhpcyByaW5nIGZsYWcg
aW5kaWNhdGVzIHRoYXQgbG9ja2luZwo+PiA+IHZhcmlhbnRzIGZvciBnZXR0aW5nL3B1dHRpbmcg
eGRwX3JpbmcgbmVlZCB0byBiZSB1c2VkIGluIGZhc3QgcGF0aC4KPj4gPgo+PiA+IEZvciBYRFBf
UkVESVJFQ1QgdGhlIGltcGFjdCBvbiBzdGFuZGFyZCBjYXNlIChvbmUgWERQIHJpbmcgcGVyIENQ
VSkgY2FuCj4+ID4gYmUgcmVkdWNlZCBhIGJpdCBieSBwcm92aWRpbmcgYSBzZXBhcmF0ZSBuZG9f
eGRwX3htaXQgYW5kIHN3YXAgaXQgYXQKPj4gPiBjb25maWd1cmF0aW9uIHRpbWUuIEhvd2V2ZXIs
IGR1ZSB0byB0aGUgZmFjdCB0aGF0IG5ldF9kZXZpY2Vfb3BzIHN0cnVjdAo+PiA+IGlzIGEgY29u
c3QsIGl0IGlzIG5vdCBwb3NzaWJsZSB0byByZXBsYWNlIGEgc2luZ2xlIG5kbywgc28gZm9yIHRo
ZQo+PiA+IGxvY2tpbmcgdmFyaWFudCBvZiBuZG9feGRwX3htaXQsIHdob2xlIG5ldF9kZXZpY2Vf
b3BzIG5lZWRzIHRvIGJlCj4+ID4gcmVwbGF5ZWQuCj4+ID4KPj4gPiBJdCBoYXMgYW4gaW1wYWN0
IG9uIHBlcmZvcm1hbmNlICgxLTIgJSkgb2YgYSBub24tZmFsbGJhY2sgcGF0aCBhcwo+PiA+IGJy
YW5jaGVzIGFyZSBpbnRyb2R1Y2VkLgo+PiAKPj4gSSBnZW5lcmFsbHkgZmVlbCB0aGlzIGlzIHRo
ZSByaWdodCBhcHByb2FjaCwgYWx0aG91Z2ggdGhlIHBlcmZvcm1hbmNlCj4+IGltcGFjdCBpcyBh
IGJpdCB1bmZvcnR1bmF0ZWx5LCBvYnZpb3VzbHkuIE1heWJlIGl0IGNvdWxkIGJlIGF2b2lkZWQg
YnkKPj4gdGhlIHVzZSBvZiBzdGF0aWNfYnJhbmNoPyBJLmUuLCBrZWVwIGEgZ2xvYmFsIHJlZmNv
dW50IG9mIGhvdyBtYW55Cj4+IG5ldGRldnMgYXJlIHVzaW5nIHRoZSBsb2NrZWQgcGF0aCBhbmQg
b25seSBhY3RpdmF0ZSB0aGUgY2hlY2sgaW4gdGhlCj4+IGZhc3QgcGF0aCB3aGlsZSB0aGF0IHJl
ZmNvdW50IGlzID4wPwo+Cj4gVGhpcyB3b3VsZCBiZSBhbiBpZGVhbCBzb2x1dGlvbiBpZiB3ZSB3
b3VsZCBiZSBhYmxlIHRvIGhhdmUgaXQgUEYtc2NvcGVkLAo+IHdoaWNoIEFGQUlDVCBpcyBub3Qg
cG9zc2libGUgYXMgc3RhdGljIGtleSBpcyBwZXIgbW9kdWxlLCByaWdodD8KClllYWgsIHN0YXRp
Y19icmFuY2ggYmFzaWNhbGx5IHBhdGNoZXMgdGhlIGtlcm5lbCB0ZXh0IHdoZW4gYWN0aXZhdGVk
CihoZW5jZSB0aGUgbG93IG92ZXJoZWFkKSwgc28gaXQncyBhIGdsb2JhbCBzd2l0Y2guLi4KCj4g
SSBjaGVja2VkIHRoYXQgYmVmb3JlIHRoZSBiYW5rIGhvbGlkYXkgaGVyZSBpbiBQb2xhbmQgYW5k
IGluZGVlZCBJIHdhcyBub3QKPiBvYnNlcnZpbmcgcGVyZiBkcm9wcy4gT25seSB0aGluZyB0aGF0
IGlzIHF1ZXN0aW9uYWJsZSBpcyB0aGUgZmFjdCB0aGF0IGEKPiBzaW5nbGUgUEYgd291bGQgYWZm
ZWN0IGFsbCB0aGUgb3RoZXJzIHRoYXQgaWNlIGRyaXZlciBpcyBzZXJ2aW5nLgo+Cj4gT1RPSCBJ
IHNlZSB0aGF0IEplc3BlciBhY2tlZCB0aGF0IHdvcmsuCj4KPiBMZXQgbWUgcGxheSB3aXRoIHRo
aXMgYSBiaXQgbW9yZSBhcyBJJ20gaW4gdGhlIG1pZGRsZSBvZiBzd2l0Y2hpbmcgbXkgSFcKPiBs
YWIsIGJ1dCBJIHdhbnRlZCB0byBicmVhayB0aGUgc2lsZW5jZSBvdmVyIGhlcmUuIEkgZGlkbid0
IG1hbmFnZSB0byBjaGVjawo+IHRoYXQgb25lIGZhbGxiYWNrIHBhdGggd2lsbCBhZmZlY3Qgb3Ro
ZXIgUEZzLgo+Cj4gVGhhbmtzIFRva2UgZm9yIHRoYXQgZ3JlYXQgaWRlYSA6KSBhbnkgb3RoZXIg
b3BpbmlvbnMgYXJlIG1vcmUgdGhhbgo+IHdlbGNvbWUuCgpZb3UncmUgd2VsY29tZSEgOikKCi1U
b2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
