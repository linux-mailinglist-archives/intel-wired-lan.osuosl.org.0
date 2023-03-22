Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E856C53C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 19:34:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9781841C4C;
	Wed, 22 Mar 2023 18:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9781841C4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679510081;
	bh=Tma1U9gKyf2ykXHnfFz9qNNRP6MWSJINQjydjGDp2oY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iI3yCAuQZOjVZOl0TRXb1wRdQFOprhEr9f3jC8AIoR5DF2fM5Yp0Y3S9t8nM8mSrT
	 iM1hErsoW14OdgjX9PNpBsbRtmVZrgVlrN0k0Y+d4q34dErZu3OUkxm9EkTyaAb8ej
	 7y/z2o05b0loBb2hFIZGDnlc+OK7r74nxf28Tyljh/CejhOl1U3jK8KWb9wktESSRw
	 ReqoeYIeJBRRRmbvdJbRzsIfn3NLtRZlyuvJ3ijHYmgLSwZPGf3qAftN3ZFaVXU6qQ
	 k0EVYmgx06wbrFS53S6egrgDCFlGuy8q+wHbg/DXVyj+hEcMs4sw9qF4I39jPw3mJW
	 XLk7hMUXCjKww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qbh-vQ4cpn0N; Wed, 22 Mar 2023 18:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 880D540C6F;
	Wed, 22 Mar 2023 18:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 880D540C6F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0B931BF35C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 18:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6B2983F94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 18:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6B2983F94
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6QyFdimPxJ05 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 18:34:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E29C682998
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E29C682998
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 18:34:34 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id ek18so76778934edb.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 11:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679510072;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zXYVlCwzaCfo+TEgKRpH4aKOEUQ6BiDkt6e2qr/DXFc=;
 b=VrSrh20M7uv7Zjh1oghK3TYppKjlOwWJIoLbAXrBmDpVNlHGgu5uNQr06dkwsarK+c
 MpKvSLE75kiRREzNGONBN7b7CZgRUZ0+60A2vKrDlINIYq0O52B3M2ACtrDUoR3V/SVY
 zOHwUzvDzWhLEKYXsTN+m41iUlh2p74wSMcm6KDOKxwvmW1YJzYnJZYeuKoOg0EZMiIX
 THVFDcDZFfeZFLKjiAr43mPqzq9+HdokeDSRVnhwGSun2UMg6bledSBr2w3VDt1AR0BL
 G6PrpNyopRcH3T1OCDBh1jHRPXkhLVI4cFI7x5WPz4hpTichPjDNTjMBkT28Jmi01SZN
 Kz9Q==
X-Gm-Message-State: AO0yUKVGMJw5fdrmOZ9dNpWcVjNBon6CaGDiVH2ipewORCzOSP1UCbn+
 +eihguQR1ai8QfOKU8zqk6vSRklO7mcn0HyhDmg=
X-Google-Smtp-Source: AK7set+cm8vcp787lnxRtwapHZN5BJEt7huWdkMB3WhRgBBpjK5k1sP0sjkwT6LiP1GE3bE/5t41Vq0oMY8RqjEeOvw=
X-Received: by 2002:a17:906:f858:b0:92a:581:ac49 with SMTP id
 ks24-20020a170906f85800b0092a0581ac49mr3776308ejb.3.1679510072459; Wed, 22
 Mar 2023 11:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <167940675120.2718408.8176058626864184420.stgit@firesoul>
 <682a413b-4f84-cc06-d378-3b44d721c64e@gmail.com>
In-Reply-To: <682a413b-4f84-cc06-d378-3b44d721c64e@gmail.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Wed, 22 Mar 2023 11:34:21 -0700
Message-ID: <CAADnVQ+AAiFPDkn0r9+1YAcjgLRoF63HspmcL2CQeqvQcHC57A@mail.gmail.com>
To: Tariq Toukan <ttoukan.linux@gmail.com>, 
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679510072;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zXYVlCwzaCfo+TEgKRpH4aKOEUQ6BiDkt6e2qr/DXFc=;
 b=fF+TBG+Lq4+D06+SOgB+UV/iHXuR665aEs3vP9TN9sIrpcu2QGKc1rPbt4THqHFwuk
 DdaoZ6Ul73wtcxi8kCx5cZ7DzlgyilNGPMhcbltGWJopC7YHHpYOhvZQ8o1YIMrocCpE
 HWvmT/oiuvzZAvhFXTdp8pCeXAiAz1N7b82Ju2mOY0zBEg2tcxMvBmS9I2f733aNcuey
 ltOjZU8F6IyFJ1QZNaLRK2bd1WtxBt1ICj3SX/nCUaoCd6nS8Cyc8cJwv/xEsHJcU8eA
 dzeh3CWrJU6OJcU3HNe9/BZspG42mLWTYaiNdbH0uos0zeQFSckGUrqa+rdXGUISLJJl
 IHXA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=fF+TBG+L
Subject: Re: [Intel-wired-lan] [PATCH bpf V2] xdp: bpf_xdp_metadata use
 EOPNOTSUPP for no driver support
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
Cc: xdp-hints@xdp-project.net, Martin KaFai Lau <martin.lau@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Network Development <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Stanislav Fomichev <sdf@google.com>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>, "Ong,
 Boon Leong" <boon.leong.ong@intel.com>, anthony.l.nguyen@intel.com,
 bpf <bpf@vger.kernel.org>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBNYXIgMjEsIDIwMjMgYXQgMTo0M+KAr1BNIFRhcmlxIFRvdWthbiA8dHRvdWthbi5s
aW51eEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4KPgo+IE9uIDIxLzAzLzIwMjMgMTU6NTIsIEplc3Bl
ciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4gPiBXaGVuIGRyaXZlciBkb2Vzbid0IGltcGxlbWVu
dCBhIGJwZl94ZHBfbWV0YWRhdGEga2Z1bmMgdGhlIGZhbGxiYWNrCj4gPiBpbXBsZW1lbnRhdGlv
biByZXR1cm5zIEVPUE5PVFNVUFAsIHdoaWNoIGluZGljYXRlIGRldmljZSBkcml2ZXIgZG9lc24n
dAo+ID4gaW1wbGVtZW50IHRoaXMga2Z1bmMuCj4gPgo+ID4gQ3VycmVudGx5IG1hbnkgZHJpdmVy
cyBhbHNvIHJldHVybiBFT1BOT1RTVVBQIHdoZW4gdGhlIGhpbnQgaXNuJ3QKPiA+IGF2YWlsYWJs
ZSwgd2hpY2ggaXMgYW1iaWd1b3VzIGZyb20gYW4gQVBJIHBvaW50IG9mIHZpZXcuIEluc3RlYWQK
PiA+IGNoYW5nZSBkcml2ZXJzIHRvIHJldHVybiBFTk9EQVRBIGluIHRoZXNlIGNhc2VzLgo+ID4K
PiA+IFRoZXJlIGNhbiBiZSBuYXR1cmFsIGNhc2VzIHdoeSBhIGRyaXZlciBkb2Vzbid0IHByb3Zp
ZGUgYW55IGhhcmR3YXJlCj4gPiBpbmZvIGZvciBhIHNwZWNpZmljIGhpbnQsIGV2ZW4gb24gYSBm
cmFtZSB0byBmcmFtZSBiYXNpcyAoZS5nLiBQVFApLgo+ID4gTGV0cyBrZWVwIHRoZXNlIGNhc2Vz
IGFzIHNlcGFyYXRlIHJldHVybiBjb2Rlcy4KPiA+Cj4gPiBXaGVuIGRlc2NyaWJpbmcgdGhlIHJl
dHVybiB2YWx1ZXMsIGFkanVzdCB0aGUgZnVuY3Rpb24ga2VybmVsLWRvYyBsYXlvdXQKPiA+IHRv
IGdldCBwcm9wZXIgcmVuZGVyaW5nIGZvciB0aGUgcmV0dXJuIHZhbHVlcy4KPiA+Cj4gPiBGaXhl
czogYWI0NjE4MmQwZGNiICgibmV0L21seDRfZW46IFN1cHBvcnQgUlggWERQIG1ldGFkYXRhIikK
PiA+IEZpeGVzOiBiYzhkNDA1YjFiYTkgKCJuZXQvbWx4NWU6IFN1cHBvcnQgUlggWERQIG1ldGFk
YXRhIikKPiA+IEZpeGVzOiAzMDY1MzFmMDI0OWYgKCJ2ZXRoOiBTdXBwb3J0IFJYIFhEUCBtZXRh
ZGF0YSIpCj4gPiBGaXhlczogM2Q3NmE0ZDNkNGU1ICgiYnBmOiBYRFAgbWV0YWRhdGEgUlgga2Z1
bmNzIikKPiA+IFNpZ25lZC1vZmYtYnk6IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGJyb3VlckBy
ZWRoYXQuY29tPgo+Cj4gRm9yIHRoZSBtbHg0LzUgcGFydHM6Cj4gQWNrZWQtYnk6IFRhcmlxIFRv
dWthbiA8dGFyaXF0QG52aWRpYS5jb20+CgpGWUkgdGhpcyBwYXRjaCB3YXMgYXBwbGllZCB0byBi
cGYgdHJlZS4KCnB3LWJvdCBkb2Vzbid0IG5vdGljZSBicGYgdHJlZSBhbnltb3JlIDooCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
