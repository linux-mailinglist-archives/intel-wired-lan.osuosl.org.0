Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CCF37AE6E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 20:25:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9FCEF402C8;
	Tue, 11 May 2021 18:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cL0ZUbLcroqV; Tue, 11 May 2021 18:25:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 832994011A;
	Tue, 11 May 2021 18:25:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B6C3C1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 18:24:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A438840520
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 18:24:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=lwn.net
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HtpXsIDGb-r9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 18:24:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ms.lwn.net (ms.lwn.net [IPv6:2600:3c01:e000:3a1::42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B459A40483
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 18:24:54 +0000 (UTC)
Received: from localhost (unknown
 [IPv6:2601:281:8300:104d:444a:d152:279d:1dbb])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 505484BF;
 Tue, 11 May 2021 18:24:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 505484BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
 t=1620757493; bh=9sU3ahlIQ4NVEGbfN/aeZtX+52ui1CI9/vl021LPM1U=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=PD4SBIWrd2qF4jBts8tkLj+dOD8PeMpRMY6MQ2tW8mQ2JgUXHEEhZU+ekEzLQvPFs
 kYce01dJPs7PGlsbLAYPormV3zSabfNRxdZ+094RmneJy6cOXIOibiQ0Hnhy6nyX0o
 YybTFnADzTeyIbwqkBgXCM+lLRxTjrEwjbLGoesTo7x8nR4vCr9iHqNI9w/BPToEjQ
 6Buf1D6flDuONDV8rJZJ42hX0kVfFz0+FAYHlHz0ZS64O57rf6Jg2L/mQJalqCR+kQ
 omQrHuKO/XSfYpBj9D+JC/o25dIcYMFrhTncUqdIfDGY54ZeiVYqhUj7B/FKa0heIn
 qdQSDbPKtA9dQ==
From: Jonathan Corbet <corbet@lwn.net>
To: Andrew Lunn <andrew@lunn.ch>, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>
In-Reply-To: <YJq9abOeuBla3Jiw@lunn.ch>
References: <cover.1620744606.git.mchehab+huawei@kernel.org>
 <95eb2a48d0ca3528780ce0dfce64359977fa8cb3.1620744606.git.mchehab+huawei@kernel.org>
 <YJq9abOeuBla3Jiw@lunn.ch>
Date: Tue, 11 May 2021 12:24:52 -0600
Message-ID: <8735utdt6z.fsf@meer.lwn.net>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 5/5] docs: networking: device_drivers:
 fix bad usage of UTF-8 chars
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
Cc: Linux Doc Mailing List <linux-doc@vger.kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiB3cml0ZXM6Cgo+PiAtbW9uaXRvcmluZyB0b29s
cyBzdWNoIGFzIGlmc3RhdCBvciBzYXIg4oCTbiBERVYgW2ludGVydmFsXSBbbnVtYmVyIG9mIHNh
bXBsZXNdCj4+ICttb25pdG9yaW5nIHRvb2xzIHN1Y2ggYXMgYGlmc3RhdGAgb3IgYHNhciAtbiBE
RVYgW2ludGVydmFsXSBbbnVtYmVyIG9mIHNhbXBsZXNdYAo+Cj4gLi4uCj4KPj4gIEZvciBleGFt
cGxlOiBtaW5fcmF0ZSAxR2JpdCAzR2JpdDogVmVyaWZ5IGJhbmR3aWR0aCBsaW1pdCB1c2luZyBu
ZXR3b3JrCj4+IC1tb25pdG9yaW5nIHRvb2xzIHN1Y2ggYXMgaWZzdGF0IG9yIHNhciDigJNuIERF
ViBbaW50ZXJ2YWxdIFtudW1iZXIgb2Ygc2FtcGxlc10KPj4gK21vbml0b3JpbmcgdG9vbHMgc3Vj
aCBhcyBgYGlmc3RhdGBgIG9yIGBgc2FyIC1uIERFViBbaW50ZXJ2YWxdIFtudW1iZXIgb2Ygc2Ft
cGxlc11gYAo+Cj4gSXMgdGhlcmUgYSBkaWZmZXJlbmNlIGJldHdlZW4gYCBhbmQgYGAgPyBEb2Vz
IGl0IG1ha2Ugc2Vuc2UgdG8gYmUKPiBjb25zaXN0ZW50PwoKVGhpcyBpcyBganVzdCB3ZWlyZCBx
dW90ZXNgClRoaXMgaXMgYGBsaXRlcmFsIHRleHRgYCBzZXQgaW4gbW9ub3NwYWNlIGluIHByb2Nl
c3NlZCBvdXRwdXQuCgpUaGVyZSBpcyBhIGNlcnRhaW4gdGVuc2lvbiBiZXR3ZWVuIHRob3NlIHdo
byB3YW50IHRvIHNlZSBsaWJlcmFsIHVzZSBvZgpsaXRlcmFsLXRleHQgbWFya3VwLCBhbmQgdGhv
c2Ugd2hvIHdvdWxkIHJhdGhlciBoYXZlIGxlc3MgbWFya3VwIGluIHRoZQp0ZXh0IG92ZXJhbGw7
IGNlcnRhaW5seSwgaXQncyBiZXR0ZXIgbm90IHRvIGdvIHRvdGFsbHkgbnV0cyB3aXRoIGl0LgoK
am9uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
