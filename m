Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 262C672F7B7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 10:22:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E88F982BD6;
	Wed, 14 Jun 2023 08:22:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E88F982BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686730972;
	bh=hToJETC6Cm3Pb7i/XzbwB3GOOcFm+7tJA+j4hESjo3Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5/BB2c8qZWMqREVTCRy3+U3QiWXTrObkzCHIYIhARHK8FMy8cD+YjVRCPyBQo91qC
	 5Iuy7wkIYVyQuCFQeZrLG5C8//Ie6d8CCybLfcmuuzF1tgM3mHr30ypZK1Wy5py75a
	 VBlbUKA2M61PEfgtA4B7rtUZIsTSdNhaeUPFtiPAMsvwnIQ4+UlkmBXYkRsv+A6ktP
	 Y7BI8Wy0+I+OIqPxzMdYpOjWbo/6KfX47XqgAS/CQgaSONKxTr3jPb8JuqOWDx6bBu
	 /yS+DEEIJxBGAnSTlbGR0v0XvmyOmgc9jOh3rCEy0OS1ysUMYSIa5dU1GRRnuYCZIl
	 T+ORUJ+LjkB7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8r7IGIKtWJEP; Wed, 14 Jun 2023 08:22:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F88E81F70;
	Wed, 14 Jun 2023 08:22:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F88E81F70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 928D31BF349
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:22:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 679EA40878
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:22:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 679EA40878
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vw-Pu3XOUDot for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 08:22:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D92E4086A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D92E4086A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:22:43 +0000 (UTC)
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-156-N0AU3GATPhS_77Gi4XEYwg-1; Wed, 14 Jun 2023 04:22:41 -0400
X-MC-Unique: N0AU3GATPhS_77Gi4XEYwg-1
Received: by mail-lj1-f199.google.com with SMTP id
 38308e7fff4ca-2b1ebdccb9bso3258011fa.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 01:22:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686730960; x=1689322960;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wOtVpwbcd2pZrvY8CGk40pW4MarLgebQgCPqUq5E+14=;
 b=Lx/+gdbuaLlPwLReEPAM/aZTUyhzqXFb5p5epQT3ij9+wzjeyT4vQUONN1UckhRPKa
 ITQwqLNFyLmv697plxcdnVJvDnQP8doFauRh+NYkUG9VqkQPmQ4FtofMVfEcBc27wUdm
 Bo9r2C5wZEmFF4fcsBQo5oTic4oQRkwAw6nMFdFh5LJUPJy3RtgE3CxZXin0KZAw0uXE
 ILdNllWRRBKsST4VboYDzWuWiBjfQMzwiQLGMhXrDeWfnshwgQpD+Y6Qo2ouLTacI/v9
 3ghWZ7olXdd41UGLd5G93Z3uxHAaIW5KWu/JipzrU7kj827eSpDJZTkC1TccvKlIS2zi
 JynA==
X-Gm-Message-State: AC+VfDxPCSCq7fI9XS5pNfgXfFCrU+l6nt8sfBQmAKXndSeW3c1wrufX
 pxOtFQqEYUEwMz19+yeLMckL4E3steGcNQumGZ2gaU7ZxEHNG4bZ8L/v4HxRsmHFfz6TCKH7wku
 Y4FynvNY95kxBtecwNejbPwJ0+REX6LU25z3DcnOefydLIA==
X-Received: by 2002:a2e:9096:0:b0:2b2:16:45e3 with SMTP id
 l22-20020a2e9096000000b002b2001645e3mr5880167ljg.53.1686730959763; 
 Wed, 14 Jun 2023 01:22:39 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5Nj85s2crGpeLwt4bCYKBQ14HXAfxSCRvfGrySrl8AhjHaJ11/9MvmmHycVGxe2RmHc8s95I8uJ7T9Qo65TPc=
X-Received: by 2002:a2e:9096:0:b0:2b2:16:45e3 with SMTP id
 l22-20020a2e9096000000b002b2001645e3mr5880157ljg.53.1686730959355; 
 Wed, 14 Jun 2023 01:22:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230613204053.3581328-1-jacob.e.keller@intel.com>
In-Reply-To: <20230613204053.3581328-1-jacob.e.keller@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 14 Jun 2023 10:22:28 +0200
Message-ID: <CADEbmW0fKaofdj5aEkP8je-ik74AAZGtDVLZzXLNNSe=pao-4A@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1686730962;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wOtVpwbcd2pZrvY8CGk40pW4MarLgebQgCPqUq5E+14=;
 b=hqLtKdVF8b7yEi/jrOdzaGe2fQdLzvudH406yTe0ZwX+XE50b+5MtVvztLSHg/pgWkjLSl
 7yyo5WYjFc/9SQZjS6CiTHn/UwLJJP0uU1ZHUX2pHbXn3yRnT1v9VYQ6gVKOHTTjShteC9
 mPeXeC6pHOrNH/3OHGfHBL7Jib1Hdqw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=hqLtKdVF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: reduce initial wait for
 control queue messages
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBKdW4gMTMsIDIwMjMgYXQgMTA6NDHigK9QTSBKYWNvYiBLZWxsZXIgPGphY29iLmUu
a2VsbGVyQGludGVsLmNvbT4gd3JvdGU6Cj4gVGhlIGljZV9zcV9zZW5kX2NtZCgpIGZ1bmN0aW9u
IGlzIHVzZWQgdG8gc2VuZCBtZXNzYWdlcyB0byB0aGUgY29udHJvbAo+IHF1ZXVlcyB1c2VkIHRv
IGNvbW11bmljYXRlIHdpdGggZmlybXdhcmUsIHZpcnR1YWwgZnVuY3Rpb25zLCBhbmQgZXZlbiBz
b21lCj4gaGFyZHdhcmUuCj4KPiBXaGVuIHNlbmRpbmcgYSBjb250cm9sIHF1ZXVlIG1lc3NhZ2Us
IHRoZSBkcml2ZXIgaXMgZGVzaWduZWQgdG8KPiBzeW5jaHJvbm91c2x5IHdhaXQgZm9yIGEgcmVz
cG9uc2UgZnJvbSB0aGUgcXVldWUuIEN1cnJlbnRseSBpdCB3YWl0cwo+IGJldHdlZW4gY2hlY2tz
IGZvciAxMDAgdG8gMTUwIG1pY3Jvc2Vjb25kcy4KPgo+IENvbW1pdCBmODZkNmY5YzQ5ZjYgKCJp
Y2U6IHNsZWVwLCBkb24ndCBidXN5LXdhaXQsIGZvcgo+IElDRV9DVExfUV9TUV9DTURfVElNRU9V
VCIpIGRpZCByZWNlbnRseSBjaGFuZ2UgdGhlIGJlaGF2aW9yIGZyb20gYW4KPiB1bm5lY2Vzc2Fy
eSBkZWxheSBpbnRvIGEgc2xlZXAgd2hpY2ggaXMgYSBzaWduaWZpY2FudCBpbXByb3ZlbWVudCBv
dmVyIHRoZQo+IG9sZCBiZWhhdmlvciBvZiBwb2xsaW5nIHVzaW5nIHVkZWxheS4KPgo+IEJlY2F1
c2Ugb2YgdGhlIG5hdHVyZSBvZiBQQ0llIHRyYW5zYWN0aW9ucywgdGhlIGhhcmR3YXJlIHdvbid0
IGJlIGluZm9ybWVkCj4gYWJvdXQgYSBuZXcgbWVzc2FnZSB1bnRpbCB0aGUgd3JpdGUgdG8gdGhl
IHRhaWwgcmVnaXN0ZXIgcG9zdHMuIFRoaXMgaXMKPiBvbmx5IGd1YXJhbnRlZWQgdG8gb2NjdXIg
YXQgdGhlIG5leHQgcmVnaXN0ZXIgcmVhZC4gSW4gaWNlX3NxX3NlbmRfY21kKCksCj4gdGhpcyBo
YXBwZW5zIGF0IHRoZSBpY2Vfc3FfZG9uZSgpIGNhbGwuIEJlY2F1c2Ugb2YgdGhpcywgdGhlIGRy
aXZlcgo+IGVzc2VudGlhbGx5IGZvcmNlcyBhIG1pbmltdW0gb2Ygb25lIGZ1bGwgd2FpdCB0aW1l
IHJlZ2FyZGxlc3Mgb2YgaG93IGZhc3QKPiB0aGUgcmVzcG9uc2UgaXMuCj4KPiBGb3IgdGhlIGhh
cmR3YXJlLWJhc2VkIHNpZGViYW5kIHF1ZXVlLCB0aGlzIGlzIGVzcGVjaWFsbHkgc2xvdy4gSXQg
aXMKPiBleHBlY3RlZCB0aGF0IHRoZSBoYXJkd2FyZSB3aWxsIHJlc3BvbmQgd2l0aGluIDIgb3Ig
MyBtaWNyb3NlY29uZHMsIGFuCj4gb3JkZXIgb2YgbWFnbml0dWRlIGZhc3RlciB0aGFuIHRoZSAx
MDAtMTUwIG1pY3Jvc2Vjb25kIHNsZWVwLgo+Cj4gQWxsb3cgc3VjaCBmYXN0IGNvbXBsZXRpb25z
IHRvIG9jY3VyIHdpdGhvdXQgZGVsYXkgYnkgaW50cm9kdWNpbmcgYSBzbWFsbCA1Cj4gbWljcm9z
ZWNvbmQgZGVsYXkgZmlyc3QgYmVmb3JlIGVudGVyaW5nIHRoZSBzbGVlcGluZyB0aW1lb3V0IGxv
b3AuIEVuc3VyZQo+IHRoZSB0YWlsIHdyaXRlIGhhcyBiZWVuIHBvc3RlZCBieSB1c2luZyBpY2Vf
Zmx1c2goaHcpIGZpcnN0Lgo+Cj4gV2hpbGUgYXQgaXQsIGxldHMgYWxzbyByZW1vdmUgdGhlIElD
RV9DVExfUV9TUV9DTURfVVNFQyBtYWNybyBhcyBpdAo+IG9ic2N1cmVzIHRoZSBzbGVlcCB0aW1l
IGluIHRoZSBpbm5lciBsb29wLiBJdCB3YXMgbGlrZWx5IGludHJvZHVjZWQgdG8KPiBhdm9pZCAi
bWFnaWMgbnVtYmVycyIsIGJ1dCBpbiBwcmFjdGljZSBzbGVlcCBhbmQgZGVsYXkgdmFsdWVzIGFy
ZSBlYXNpZXIgdG8KPiByZWFkIGFuZCB1bmRlcnN0YW5kIHdoZW4gdXNpbmcgYWN0dWFsIG51bWJl
cnMgaW5zdGVhZCBvZiBhIG5hbWVkIGNvbnN0YW50Lgo+Cj4gVGhpcyBjaGFuZ2Ugc2hvdWxkIGFs
bG93IHRoZSBmYXN0IGhhcmR3YXJlIGJhc2VkIGNvbnRyb2wgcXVldWUgbWVzc2FnZXMgdG8KPiBj
b21wbGV0ZSBxdWlja2x5IHdpdGhvdXQgZGVsYXksIHdoaWxlIHNsb3dlciBmaXJtd2FyZSBxdWV1
ZSByZXNwb25zZSB0aW1lcwo+IHdpbGwgc2xlZXAgd2hpbGUgd2FpdGluZyBmb3IgdGhlIHJlc3Bv
bnNlLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRl
bC5jb20+Cj4gLS0tCj4KPiBATWljaGFsLCBkbyB5b3UgdGhpbmsgdGhpcyBpbml0aWFsIDUgbWlj
cm9zZWNvbmQgZGVsYXkgd291bGQgaGF2ZQo+IHNpZ25pZmljYW50IGltcGFjdCBvbiB0aGUgdXNl
IGNhc2VzIHRoYXQgeW91IGZpeGVkIGluIHRoZSBtZW50aW9uZWQgY29tbWl0Pwo+IEkgZG9uJ3Qg
d2FudCB0byBicmVhayB0aG9zZSwgYnV0IGRvIHdhbnQgdG8gbWFrZSBzdXJlIHRoYXQgdGhlIGZh
c3QgcmVzcG9uc2UKPiBoYXJkd2FyZSBxdWV1ZXMgZG9uJ3Qgd2FpdCB1bm5lY2Vzc2FyaWx5LiBP
bmUgYWx0ZXJuYXRpdmUgSSBjb25zaWRlcmVkIHdhcwo+IG9ubHkgZG9pbmcgdGhpcyBkZWxheSBp
ZiB3ZSBhcmUgb24gdGhlIGFwcHJvcHJpYXRlIHF1ZXVlIHR5cGUuIEknZAo+IGFwcHJlY2lhdGUg
eW91ciB0aG91Z2h0cy4KCkkgdGhpbmsgNSB1cyBpcyBxdWljayBlbm91Z2ggdGhhdCB0aGlzIHdv
bid0IGJlIGEgcHJvYmxlbS4KClJldmlld2VkLWJ5OiBNaWNoYWwgU2NobWlkdCA8bXNjaG1pZHRA
cmVkaGF0LmNvbT4KCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJv
bHEuYyB8IDkgKysrKysrKy0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
Y29udHJvbHEuaCB8IDEgLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2NvbnRyb2xxLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Nv
bnRyb2xxLmMKPiBpbmRleCBkMmZhZjFiYWFkMmYuLjM4NWZkODg4MzFkYiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMKPiBAQCAtMTA1Niwx
NCArMTA1NiwxOSBAQCBpY2Vfc3Ffc2VuZF9jbWQoc3RydWN0IGljZV9odyAqaHcsIHN0cnVjdCBp
Y2VfY3RsX3FfaW5mbyAqY3EsCj4gICAgICAgICBpZiAoY3EtPnNxLm5leHRfdG9fdXNlID09IGNx
LT5zcS5jb3VudCkKPiAgICAgICAgICAgICAgICAgY3EtPnNxLm5leHRfdG9fdXNlID0gMDsKPiAg
ICAgICAgIHdyMzIoaHcsIGNxLT5zcS50YWlsLCBjcS0+c3EubmV4dF90b191c2UpOwo+ICsgICAg
ICAgaWNlX2ZsdXNoKGh3KTsKPiArCj4gKyAgICAgICAvKiBXYWl0IGEgc2hvcnQgdGltZSBiZWZv
cmUgaW5pdGlhbCBpY2Vfc3FfZG9uZSgpIGNoZWNrLCB0byBhbGxvdwo+ICsgICAgICAgICogaGFy
ZHdhcmUgdGltZSBmb3IgY29tcGxldGlvbi4KPiArICAgICAgICAqLwo+ICsgICAgICAgdWRlbGF5
KDUpOwo+Cj4gICAgICAgICB0aW1lb3V0ID0gamlmZmllcyArIElDRV9DVExfUV9TUV9DTURfVElN
RU9VVDsKPiAgICAgICAgIGRvIHsKPiAgICAgICAgICAgICAgICAgaWYgKGljZV9zcV9kb25lKGh3
LCBjcSkpCj4gICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4KPiAtICAgICAgICAgICAg
ICAgdXNsZWVwX3JhbmdlKElDRV9DVExfUV9TUV9DTURfVVNFQywKPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIElDRV9DVExfUV9TUV9DTURfVVNFQyAqIDMgLyAyKTsKPiArICAgICAgICAg
ICAgICAgdXNsZWVwX3JhbmdlKDEwMCwgMTUwKTsKPiAgICAgICAgIH0gd2hpbGUgKHRpbWVfYmVm
b3JlKGppZmZpZXMsIHRpbWVvdXQpKTsKPgo+ICAgICAgICAgLyogaWYgcmVhZHksIGNvcHkgdGhl
IGRlc2MgYmFjayB0byB0ZW1wICovCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfY29udHJvbHEuaAo+IGluZGV4IDk1MGI3ZjRhN2EwNS4uOGYyZmQxNjEzYTk1IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaAo+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaAo+IEBA
IC0zNSw3ICszNSw2IEBAIGVudW0gaWNlX2N0bF9xIHsKPgo+ICAvKiBDb250cm9sIFF1ZXVlIHRp
bWVvdXQgc2V0dGluZ3MgLSBtYXggZGVsYXkgMXMgKi8KPiAgI2RlZmluZSBJQ0VfQ1RMX1FfU1Ff
Q01EX1RJTUVPVVQgICAgICAgSFogICAgLyogV2FpdCBtYXggMXMgKi8KPiAtI2RlZmluZSBJQ0Vf
Q1RMX1FfU1FfQ01EX1VTRUMgICAgICAgICAgMTAwICAgLyogQ2hlY2sgZXZlcnkgMTAwdXNlYyAq
Lwo+ICAjZGVmaW5lIElDRV9DVExfUV9BRE1JTl9JTklUX1RJTUVPVVQgICAxMCAgICAvKiBDb3Vu
dCAxMCB0aW1lcyAqLwo+ICAjZGVmaW5lIElDRV9DVExfUV9BRE1JTl9JTklUX01TRUMgICAgICAx
MDAgICAvKiBDaGVjayBldmVyeSAxMDBtc2VjICovCj4KPiAtLQo+IDIuNDAuMC40NzEuZ2JkN2Yx
NGQ5MzUzYgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
