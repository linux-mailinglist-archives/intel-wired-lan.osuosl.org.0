Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 905DA14306B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2020 18:04:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 218D920403;
	Mon, 20 Jan 2020 17:04:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pYYgd0RXD1km; Mon, 20 Jan 2020 17:04:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 71E132048F;
	Mon, 20 Jan 2020 17:04:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 283BA1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2020 17:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1533720403
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2020 17:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZKPiwkjn3fUj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2020 17:04:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id BD24E20363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2020 17:04:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 09:04:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="426810785"
Received: from nmilosev-mobl2.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.51.72])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jan 2020 09:04:16 -0800
To: Ryan Goodfellow <rgoodfel@isi.edu>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>
References: <14f9e1bf5c3a41dbaec53f83cb5f0564@isi.edu>
 <CAJ+HfNhdPEe34DVUAj4eHxLkBUSTo2CXbLHoWu+dwFCp753oMg@mail.gmail.com>
 <20200117171637.GB69024@smtp.ads.isi.edu>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <a0f645bc-82b6-5b14-4608-bfde991a6678@intel.com>
Date: Mon, 20 Jan 2020 18:04:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200117171637.GB69024@smtp.ads.isi.edu>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] zero-copy between interfaces
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
Cc: "xdp-newbies@vger.kernel.org" <xdp-newbies@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjAtMDEtMTcgMTg6MTYsIFJ5YW4gR29vZGZlbGxvdyB3cm90ZToKWy4uLl0KPiAKPiBo
dHRwczovL2dpdGxhYi5jb20vbWVyZ2V0Yi90ZWNoL25ldHdvcmstZW11bGF0aW9uL2tlcm5lbC9z
bmlwcGV0cy8xOTMxMDgwCj4gCgpSeWFuLCB0aGFua3MgYSBsb3QgZm9yIHRoZSBkZXRhaWxlZCBy
ZXBvcnQhIE11Y2ggYXBwcmVjaWF0ZWQhCgpMb25nIHN0b3J5IHNob3J0LCB0aGUgaTQwZSBjcmFz
aCBpcyB0aGF0IHRoZSBkcml2ZXJzIHRyaWVzIHRvIGFsbG9jYXRlIAoyNTYgcXVldWVzLCBidXQg
dGhlIEhXIGlzIHNob3J0IG9uIHF1ZXVlcy4gVGhlIGRyaXZlcnMgZW50ZXJzIGEgYnJva2VuIApz
dGF0ZSwgd2hpY2ggdHJpZ2dlcnMgdGhlIGNyYXNoLgoKSSdsbCBtYWtlIHN1cmUgd2UnbGwgZ2V0
IGEgcGF0Y2ggZm9yIHRoaXMuCgoKQmrDtnJuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
