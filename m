Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B39261A4A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 20:34:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06BD086BE2;
	Tue,  8 Sep 2020 18:34:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K1ohVlKkdALw; Tue,  8 Sep 2020 18:34:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 227DB85F52;
	Tue,  8 Sep 2020 18:34:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C568A1BF470
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 18:34:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C0D2686EC8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 18:34:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ylU9GVBC7oqE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 18:34:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 46AFA86F7D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 18:34:29 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7BE882080A;
 Tue,  8 Sep 2020 18:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599590069;
 bh=Q2aUeWbmIlzFAIQ2g+Em1W7hGUhQ3SdVjRw0XbA9Qjk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Mz+X30XHvoisG0Te7TqkD0luE9o9NUqKpjRKbe02fUXLCRpPFOC1s1AcGtPTvCqsr
 zvd5u2MFdNMkm0rHdRb80dzIDVHtb8Vd9AoIntUG5pA+WHW8CKX8DSlJZUp7h1z7TH
 xmuhU7/QNb4YE1ekcr+6iF9WceYwVNz94FcqLG7c=
Date: Tue, 8 Sep 2020 11:34:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <20200908113426.7af79b5b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <12536115-3dae-1efa-5c0d-34fc951fca48@intel.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904162751.632c4443@carbon>
 <27e05518-99c6-15e2-b801-cbc0310630ef@intel.com>
 <20200904165837.16d8ecfd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <1d2e781e-b26d-4cf0-0178-25b8835dbe26@intel.com>
 <20200907114055.27c95483@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <8f698ac5-916f-9bb0-cce2-f00fba6ba407@intel.com>
 <20200908102438.28351aab@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <12536115-3dae-1efa-5c0d-34fc951fca48@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
Cc: Eric Dumazet <eric.dumazet@gmail.com>, daniel@iogearbox.net,
 Jesper Dangaard Brouer <brouer@redhat.com>, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCA4IFNlcCAyMDIwIDIwOjI4OjE0ICswMjAwIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4g
T24gMjAyMC0wOS0wOCAxOToyNCwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4gPj4gSSdsbCBzdGFy
dCBwbGF5aW5nIGFyb3VuZCBhIGJpdCwgYnV0IGFnYWluLCBJIHRoaW5rIHRoaXMgc2ltcGxlIHNl
cmllcwo+ID4+IHNob3VsZCBnbyBpbiBqdXN0IHRvIG1ha2UgQUZfWERQIHNpbmdsZSBjb3JlIHVz
YWJsZSp0b2RheSouICAKPiA+IE5vIG9iamVjdGlvbiBmcm9tIG1lLiAgCj4gCj4gVGhhbmtzIEph
a3ViLCBidXQgYXMgeW91IChwcm9iYWJseSkgbm90aWNlZCBpbiB0aGUgb3RoZXIgdGhyZWFkIE1h
eGltIAo+IGhhZCBzb21lIHZhbGlkIGNvbmNlcm5zLiBMZXQncyBkcm9wIHRoaXMgZm9yIG5vdywg
YW5kIEknbGwgZ2V0IGJhY2sgCj4gYWZ0ZXIgc29tZSBleHBlcmltZW50YXRpb24vaGFja2luZy4K
ClllYWgsIEkgc29ydCBvZiBhc3N1bWVkIHlvdSBnb3QgdGhlIHdha2UtdXAgcHJvYmxlbSBkb3du
IDpTCgpJZiBpdCBnZXRzIGNvbXBsaWNhdGVkIGl0IG1heSBub3QgYmUgd29ydGggcHVyc3Vpbmcg
dGhpcyBvcHRpbWl6YXRpb24uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
