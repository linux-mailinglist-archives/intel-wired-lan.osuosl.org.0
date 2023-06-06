Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BD4724A77
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 19:42:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA15D81E07;
	Tue,  6 Jun 2023 17:42:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA15D81E07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686073359;
	bh=v2mNMBhiLkwZjVkqJOtmVeH8a6Xb+f/Rg2hXV+x4DGw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6vId3JvHaqGGV3BYM8oDtxcLL+iPlInW4BV5Cv317oiG/nh5tbuFeHF9vmIvZRUmK
	 kCSFND7Gch6QS/x8GLZwCMJ5lPfdSQny5KwgcH6O9MHAMEvPnm6Hmip9aPic5pVPtk
	 uCRgHrV6K+0DuTUToxDtZL0WSlk1FnHQDSsOJA0ALL7sFhVXHTATeyPk/4G1knv2xX
	 ST+mAGl5nDh5+fCwX5ZpQVhHCC9tC3+KvjgT2D73+JO4W8O+fMWQ8C0Kj7T3XwywXX
	 xJDEBzLHKO+6BmPdSXHpZ8G5qREOA/zOu2qzO3s6yA3U6Zxjy0hA0xVGWTYfGdrxcx
	 EBW2Dbfwagcjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9ZQAMd56jof; Tue,  6 Jun 2023 17:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6247F81E06;
	Tue,  6 Jun 2023 17:42:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6247F81E06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D6001BF292
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 17:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 53E0781E06
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 17:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53E0781E06
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZRoh9hsmUBzw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 17:42:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0509B81E02
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com
 [IPv6:2607:f8b0:4864:20::b36])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0509B81E02
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 17:42:31 +0000 (UTC)
Received: by mail-yb1-xb36.google.com with SMTP id
 3f1490d57ef6-b9e6ec482b3so7312578276.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Jun 2023 10:42:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686073351; x=1688665351;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Qcl1xVv0DZKFv/tl9qF3aaNP9Nfg+EcmIEUZmmRBufc=;
 b=iRdj9rK0prbCCIpFhFiPs8/yd7QM7QUWVjviqlzvAGNeWwICEYX5NsvQ84ltus/b3U
 RspSP7XCy3N8GDMy8VsLTrKK0iiuS9pZZzxVLi3a87hxroAKUb4ZJA5IjcpiSBmzFme/
 N+de14a7mixM88ZZwCUi2kLBy77MCBAE6GuKo+kSbKvbAoIVUgANe2WrXfzeMZzAlXD/
 VYpB6+bULRCKE+2fAb0Go+Yhrr2jX4CWCpXNSWRTU0JBsgN1RuT9n+x9g3X6IMus2bpi
 fkBBf2VA/4btUQfwyVIRdaLmBefrkwppQFifn9ASep+KdWQJP+ZMOv8NYfUKsV81v5zi
 eVIA==
X-Gm-Message-State: AC+VfDw4cffhezvoowbbsoyoKO9b1t53Rhml7s96zxL33X5r0So+tcWE
 S2NxZsHtghc5biFn+riT12TjU8H8xG5WxKlLNLoc5g==
X-Google-Smtp-Source: ACHHUZ7NVt8mLpnu6WuW8VSN85wkluvK9KNbxJKLv2M1d1HvwSgkyINMeZzGDBD2aJ6e4HUUjKIKfK0sDXQ9oMHsRak=
X-Received: by 2002:a81:4e44:0:b0:561:d6dd:bc84 with SMTP id
 c65-20020a814e44000000b00561d6ddbc84mr3585116ywb.48.1686073350739; Tue, 06
 Jun 2023 10:42:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <CAM0EoMnqscw=OfWzyEKV10qFW5+EFMd5JWZxPSPCod3TvqpnuQ@mail.gmail.com>
 <20230605165353.tnjrwa7gbcp4qhim@skbuf>
 <CAM0EoM=qG9sDjM=F6D=i=h3dKXwQXAt1wui8W_EXDJi2tijRnw@mail.gmail.com>
 <20230606163156.7ee6uk7jevggmaba@skbuf>
In-Reply-To: <20230606163156.7ee6uk7jevggmaba@skbuf>
From: Jamal Hadi Salim <jhs@mojatatu.com>
Date: Tue, 6 Jun 2023 13:42:19 -0400
Message-ID: <CAM0EoM=3+qwj+C9MzDEULeYc3B=_N=vHyP_QDdhcrNsyaQQODw@mail.gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20221208.gappssmtp.com; s=20221208; t=1686073351; x=1688665351; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Qcl1xVv0DZKFv/tl9qF3aaNP9Nfg+EcmIEUZmmRBufc=;
 b=qc7dJ1SUYr4ppYF2g41koTNU6n3Y8g+nKQPoUBcUvC1gHq6zqDipikpYL3kNbWo6r/
 /T/XPVgW+/VFt2BFFu3I9s5D33yPObqSpB4aL4v0LC4qRCpI4wp/w0ooja1XG7q5R/X3
 fyRO4Nq5XPZjlVejykFBCNlC7A7hw1PcOiS580psL4E66wdu0TGIHlpik0ux9SmUVQQq
 f9XjEDANTUdqb7oTQOU1NOgldiCki0WkKYqOuwSmMLBMV5O/G85MtPm2/7itmWbixgoD
 FeGui90Rlt4xB250Uf4lxmmCLZzO/KvecElZ/HSpmEmHxPFU3pglGNOIQQ1RojLzKtmR
 DFkQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=mojatatu-com.20221208.gappssmtp.com
 header.i=@mojatatu-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=qc7dJ1SU
Subject: Re: [Intel-wired-lan] [PATCH RESEND net-next 0/5] Improve the
 taprio qdisc's relationship with its children
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peilin Ye <yepeilin.cs@gmail.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBKdW4gNiwgMjAyMyBhdCAxMjozMuKAr1BNIFZsYWRpbWlyIE9sdGVhbiA8dmxhZGlt
aXIub2x0ZWFuQG54cC5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCBKdW4gMDYsIDIwMjMgYXQgMTE6
Mzk6MzJBTSAtMDQwMCwgSmFtYWwgSGFkaSBTYWxpbSB3cm90ZToKPiA+IDEpSnVzdCBzb21lIGRl
dGFpbHMgYmVjb21lIGNvbmZ1c2luZyBpbiByZWdhcmRzIHRvIG9mZmxvYWQgdnMgbm90OyBGLmUK
PiA+IGNsYXNzIGdyYWZ0aW5nICh0YXByaW9fZ3JhZnQoKSkgaXMgZGUvYWN0aXZhdGluZyB0aGUg
ZGV2aWNlIGJ1dCB0aGF0Cj4gPiBzZWVtcyBvbmx5IG5lZWRlZCBmb3Igb2ZmbG9hZC4gV291bGQg
aXQgbm90IGJlIGJldHRlciB0byBoYXZlIHRob3NlCj4gPiBzZXBhcmF0ZSBhbmQgY2FsbCBncmFm
dF9vZmZsb2FkIHZzIGdyYWZ0X3NvZnR3YXJlLCBldGM/IFdlIHJlYWxseSBuZWVkCj4gPiB0byBj
cmVhdGUgYSBnZW5lcmljIGRvY3VtZW50IG9uIGhvdyBzb21lb25lIHdvdWxkIHdyaXRlIGNvZGUg
Zm9yCj4gPiBxZGlzY3MgZm9yIGNvbnNpc3RlbmN5IChJIHN0YXJ0ZWQgd29ya2luZyBvbiBvbmUg
YnV0IG5ldmVyIGNvbXBsZXRlZAo+ID4gaXQgLSBpZiB0aGVyZSBpcyBhIHZvbHVudGVlciBpIHdv
dWxkIGJlIGhhcHB5IHRvIHdvcmsgd2l0aCBvbmUgdG8KPiA+IGNvbXBsZXRlIGl0KS4KPgo+IEkg
d291bGQgYmUgYSBoYXBweSByZWFkZXIgb2YgdGhhdCBkb2N1bWVudC4gSSBoYXZlbid0IHN0dWRp
ZWQgd2hldGhlcgo+IGRldl9kZWFjdGl2YXRlKCkgYW5kIGRldl9hY3RpdmF0ZSgpIGFyZSBuZWNl
c3NhcnkgZm9yIHRoZSBwdXJlIHNvZnR3YXJlCj4gZGF0YSBwYXRoLCB3aGVyZSB0aGUgcm9vdCB0
YXByaW8gaXMgYWxzbyBkaXJlY3RseSBhdHRhY2hlZCB0byB0aGUgbmV0ZGV2Cj4gVFhRcyBhbmQg
dGhhdCBmYWN0IGRvZXNuJ3QgY2hhbmdlIGFjcm9zcyBpdHMgbGlmZXRpbWUuCgpJIGRpZG50IGdv
IHRoYXQgZmFyIGluIHRoZSBkb2MgYnV0IHdhcyBpbnRlbmRpbmcgdG8uIEl0IHdhcyBzdXBwb3Nl
ZAp0byBiZSBhIHR1dG9yaWFsIHNvbWV3aGVyZSBhbmQgaSBlbmRlZCBub3QgZG9pbmcgaXQuCnNv
bWV0aGluZyBsaWtlIGh0YiB3aWxsIGJlIGEgZ29vZCBleGFtcGxlIHRvIGNvbXBhcmUgd2l0aCAo
aXQgaXMgYQpjbGFzc2Z1bCBxZGlzYyB3aGljaCBpcyBhbHNvIGNhcGFibGUgb2Ygb2ZmbG9hZGlu
ZykuIEl0IGlzIG5vdCB0aGUKc2FtZSBhcyBtcXByaW8gd2hpY2ggY2FuIG9ubHkgYmUgcm9vdC4K
Cj4gPiAyKSBJdCBzZWVtcyBsaWtlIGluIG1xcHJpbyB0aGlzIHFkaXNjIGNhbiBvbmx5IGJlIHJv
b3QgcWRpc2MgKGxpa2UKPiA+IG1xcHJpbykKPgo+IHNvIGZhciBzbyBnb29kCj4KPiA+IGFuZCB5
b3UgZG9udCB3YW50IHRvIHJlcGxhY2UgdGhlIGNoaWxkcmVuIHdpdGggb3RoZXIgdHlwZXMgb2YK
PiA+IHFkaXNjcyBpLmUgdGhlIGNoaWxkcmVuIGFyZSBhbHdheXMgcGZpZm8/IGkuZSBpcyBpdCBw
b3NzaWJsZSBvcgo+ID4gaW50ZW5kZWQgZm9yIGV4YW1wbGUgdG8gcmVwbGFjZSA4MDAxOnggd2l0
aCBiZmlmbyBldGM/IG9yIGV2ZW4gY2hhbmdlCj4gPiB0aGUgcGZpZm8gcXVldWUgc2l6ZSwgZXRj
Pwo+Cj4gbm8sIHRoaXMgaXMgbm90IHRydWUsIHdoeSBkbyB5b3Ugc2F5IHRoaXM/CgpJIGFtIGp1
c3QgYXNraW5nIHF1ZXN0aW9ucyB0cnlpbmcgdG8gdW5kZXJzdGFuZDstPiBTbyBpZiBjYW4gaQpy
ZXBsYWNlLCBmb3IgZXhhbXBsZSwgd2l0aCBhIHRiZiB3b3VsZCBpdCBtYWtlIHNlbnNlIGV2ZW4g
aW4gcy93PwoKPiA+IDMpIE9mZmxvYWQgaW50ZW50aW9uIHNlZW1zIHJlYWxseSB0byBiZSBieXBh
c3NpbmcgZW5xdWV1ZSgpIGFuZCBnb2luZwo+ID4gc3RyYWlndGggdG8gdGhlIGRyaXZlciB4bWl0
KCkgZm9yIGEgc3BlY2lmaWMgRE1BIHJpbmcgdGhhdCB0aGUgc2tiIGlzCj4gPiBtYXBwZWQgdG8u
IEV4Y2VwdCBmb3IgdGhlIGNhc2Ugd2hlcmUgdGhlIGRyaXZlciBzYXlzIGl0J3MgYnVzeSBhbmQK
PiA+IHJlZnVzZXMgdG8gc3Rhc2ggdGhlIHNrYiBpbiByaW5nIGluIHdoaWNoIGNhc2UgeW91IGhh
dmUgdG8gcmVxdWV1ZSB0bwo+ID4gdGhlIGFwcHJvcHJpYXRlIGNoaWxkIHFkaXNjL2NsYXNzLiBJ
IGFtIG5vdCBzdXJlIGhvdyB0aGF0IHdvdWxkIHdvcmsKPiA+IGhlcmUgLSBtcXByaW8gZ2V0cyBh
d2F5IHdpdGggaXQgYnkgbm90IGRlZmluaW5nIGFueSBvZiB0aGUKPiA+IGVuL2RlL3JlcXVldWUo
KSBjYWxsYmFja3MKPgo+IHdhaXQsIHRoZXJlIGlzIGEgcmVxdWV1ZSgpIGNhbGxiYWNrPyB3aGVy
ZT8KCkhybSwgc29tZW9uZSByZW1vdmVkIHRoYXQgb3BzIGkgZ3Vlc3MgYXQgc29tZSBwb2ludCAt
IG5vdCBzdXJlIHdoZW4sCm5lZWQgdG8gbG9vayBhdCBnaXQgaGlzdG9yeS4KQnV0IHNob3J0IGFu
c3dlciBpcyB5ZXMgaXQgdXNlZCB0byBiZSB0aGVyZTsgZ2l0IHdpbGwgcHJvYmFibHkgcmV2ZWFs
CmZyb20gdGhlIGNvbW1pdCBpdHMgZGlzYXBwZWFyYW5jZS4KCj4KPiA+IC0gYnV0IGxpa2VseSBp
dCB3aWxsIGJlIHRoZSBsYWNrIG9mIHJlcXVldWUgdGhhdCBtYWtlcyBpdCB3b3JrLgo+Cj4gTG9v
a2luZyBhdCBkZXZfcmVxdWV1ZV9za2IoKSwgaXNuJ3QgaXQgYWx3YXlzIGdvaW5nIHRvIGJlIHJl
cXVldWVkIHRvCj4gdGhlIHNhbWUgcWRpc2MgaXQgd2FzIG9yaWdpbmFsbHkgZGVxdWV1ZWQgZnJv
bT8gSSBkb24ndCBzZWUgd2hhdCBpcyB0aGUKPiBwcm9ibGVtLgoKSW4gdGhlIGJhc2ljIGNhc2Ug
dGhhdCBhcHByb2FjaCBpcyBzdWZmaWNpZW50LiBGb3IgcGZpZm8geW91IHdhbnQgaXQKdG8gdGhl
IGZpcnN0IHNrYiBkZXF1ZXVlZCB0aGUgbmV4dCBvcHBvcnR1bml0eSB0byBzZW5kIHRvIGgvdy4K
QmFzaWNhbGx5IHRoZSBpZGVhIGlzL3dhczogaWYgdGhlIGhhcmR3YXJlIGlzIGJ1c3kgeW91IG1h
eSBuZWVkIHRvIHJ1bgpzb21lIGFsZ29yaXRobSAocHJlc2VudCBpbiByZXF1ZXVlIGJ1dCBub3Qg
aW4gZW5xdWV1KSB0byBkZWNpZGUgaWYgeW91CnNob3VsZCBwdXQgdGhlIHNrYiBhdCB0aGUgaGVh
ZCwgYXQgdGhlIHRhaWwsIHNvbWV3aGVyZSBlbHNlLCBkcm9wIGl0LApjaGVjayBpZiBzb21lIHRp
bWUgbGltaXQgaGFzIGV4Y2VlZGVkIGFuZCBkbyBzb21ldGhpbmcgZnVua3kgZXRjIGV0Yy4KCj4g
TXkgdW5kZXJzdGFuZGluZyBvZiB0aGUgb2ZmbG9hZCBpbnRlbnRpb24gaXMgbm90IHJlYWxseSB0
byBieXBhc3MgZGVxdWV1ZSgpCj4gaW4gZ2VuZXJhbCBhbmQgYXMgYSBtYXR0ZXIgb2YgcHJpbmNp
cGxlLCBidXQgcmF0aGVyIHRvIGJ5cGFzcyB0aGUgcm9vdCdzCj4gdGFwcmlvX2RlcXVldWUoKSBz
cGVjaWZpY2FsbHksIGFzIHRoYXQgY291bGQgZG8gdW5yZWxhdGVkIHdvcmssIGFuZCBqdW1wCj4g
cmlnaHQgdG8gdGhlIHNwZWNpZmljIGNoaWxkJ3MgZGVxdWV1ZSgpLgo+Cj4gVGhlIGNoaWxkIGNv
dWxkIGhhdmUgaXRzIG93biBjb21wbGV4IGVucXVldWUoKSBhbmQgZGVxdWV1ZSgpIGFuZCB0aGF0
IGlzCj4gcGVyZmVjdGx5IGZpbmUgLSBmb3IgZXhhbXBsZSBjYnNfZGVxdWV1ZV9zb2Z0KCkgaXMg
YSB2YWxpZCBjaGlsZCBkZXF1ZXVlCj4gcHJvY2VkdXJlIC0gYXMgbG9uZyBhcyB0aGUgcHJvY2Vz
cyBpc24ndCBibG9ja2VkIGluIHRoZSBzZW5kbXNnKCkgY2FsbAo+IGJ5IF9fcWRpc2NfcnVuKCkg
cHJvY2Vzc2luZyBwYWNrZXRzIGJlbG9uZ2luZyB0byB1bnJlbGF0ZWQgdHJhZmZpYwo+IGNsYXNz
ZXMuCgpEb2VzIGl0IG1hdHRlciB3aGF0IHR5cGUgdGhlIGNoaWxkIGVucXVldWUvZGVxdWV1ZT8g
ZWcgY2FuIGkgYXR0YWNoIGh0YiwgZXRjPwoKY2hlZXJzLApqYW1hbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
