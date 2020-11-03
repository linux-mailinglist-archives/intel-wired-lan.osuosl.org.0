Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0996E2A4F14
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Nov 2020 19:39:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 883FC8647F;
	Tue,  3 Nov 2020 18:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fE6ezZSD-faV; Tue,  3 Nov 2020 18:39:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0AE1863DB;
	Tue,  3 Nov 2020 18:39:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C5D1F1BF475
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 18:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B9F2A86241
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 18:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id evlAOjV8I3jJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 18:39:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E6EC86191
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 18:39:42 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 996752074B;
 Tue,  3 Nov 2020 18:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604428782;
 bh=6Xps4bIUFtPepouNBqtps60Iy2leilNlFonhy3YWMkY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=h248a77653NHUhqb1KV9+o4A1pWMp00jHEw2F/2qy6d8aGuWyFbzs5I/e/VObpLu/
 GLDn8k/OtOjSLHa+8/BmLvcd2b3BL/X1CPLxzFq2TflJocMmfFZdcyBR4SyeXFxm2C
 2u5QTZGEIChOwklxepD8Sg/3taUJAVzO3T3lSjkY=
Date: Tue, 3 Nov 2020 10:39:40 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20201103103940.2ed27fa2@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <36ce1f2e-843c-4995-8bb2-2c2676f01b9d@molgen.mpg.de>
References: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
 <20201102231307.13021-3-pmenzel@molgen.mpg.de>
 <20201102161943.343586b1@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <36ce1f2e-843c-4995-8bb2-2c2676f01b9d@molgen.mpg.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ethernet: igb: e1000_phy: Check
 for ops.force_speed_duplex existence
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Jeffrey Townsend <jeffrey.townsend@bigswitch.com>,
 "David S . Miller" <davem@davemloft.net>,
 John W Linville <linville@tuxdriver.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAzIE5vdiAyMDIwIDA4OjM1OjA5ICswMTAwIFBhdWwgTWVuemVsIHdyb3RlOgo+IEFj
Y29yZGluZyB0byAqRGV2ZWxvcGVyJ3MgQ2VydGlmaWNhdGUgb2YgT3JpZ2luIDEuMSogWzNdLCBp
dOKAmXMgbXkgCj4gdW5kZXJzdGFuZGluZywgdGhhdCBpdCBpcyAqbm90KiByZXF1aXJlZC4gVGhl
IGl0ZW1zIChhKSwgKGIpLCBhbmQgKGMpIAo+IGFyZSBjb25uZWN0ZWQgYnkgYW4gKm9yKi4KPiAK
PiA+ICAgICAgICAgKGIpIFRoZSBjb250cmlidXRpb24gaXMgYmFzZWQgdXBvbiBwcmV2aW91cyB3
b3JrIHRoYXQsIHRvIHRoZSBiZXN0Cj4gPiAgICAgICAgICAgICBvZiBteSBrbm93bGVkZ2UsIGlz
IGNvdmVyZWQgdW5kZXIgYW4gYXBwcm9wcmlhdGUgb3BlbiBzb3VyY2UKPiA+ICAgICAgICAgICAg
IGxpY2Vuc2UgYW5kIEkgaGF2ZSB0aGUgcmlnaHQgdW5kZXIgdGhhdCBsaWNlbnNlIHRvIHN1Ym1p
dCB0aGF0Cj4gPiAgICAgICAgICAgICB3b3JrIHdpdGggbW9kaWZpY2F0aW9ucywgd2hldGhlciBj
cmVhdGVkIGluIHdob2xlIG9yIGluIHBhcnQgCj4gPiAgICAgICAgICAgICBieSBtZSwgdW5kZXIg
dGhlIHNhbWUgb3BlbiBzb3VyY2UgbGljZW5zZSAodW5sZXNzIEkgYW0KPiA+ICAgICAgICAgICAg
IHBlcm1pdHRlZCB0byBzdWJtaXQgdW5kZXIgYSBkaWZmZXJlbnQgbGljZW5zZSksIGFzIGluZGlj
YXRlZAo+ID4gICAgICAgICAgICAgaW4gdGhlIGZpbGU7IG9yICAKCkFjaywgYnV0IHRoZW4geW91
IG5lZWQgdG8gcHV0IHlvdXJzZWxmIGFzIHRoZSBhdXRob3IsIGJlY2F1c2UgaXQncwp5b3UgY2Vy
dGlmeWluZyB0aGF0IHRoZSBjb2RlIGZhbGxzIHVuZGVyIChiKS4KCkF0IGxlYXN0IHRoYXQncyBt
eSB1bmRlcnN0YW5kaW5nLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
