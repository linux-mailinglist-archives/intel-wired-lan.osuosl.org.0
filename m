Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E2E742937
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 17:15:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7BC8415B0;
	Thu, 29 Jun 2023 15:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7BC8415B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688051739;
	bh=0B1Rlv4VVNdaDxTiHmKfvXyFT6PgoZgK+IZ6ksvLs5U=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=7TXDvVIZ4YlrbIJ49FNUh9wf+5DLnr8T6s9J6H3J/APPuVKVlAd7maHpb5KmfoxIG
	 lYRoyeiD3KscY/K+81Px9vMTwJpfZMHvhcSd//Mj7vrbklu6iYCKHke8fzXAV76JFt
	 mHw+XPISxU9nPefwjm3B4rAlpGJcG3LXTg8XuINi29LtsQpJMIsl0RG+csvSKCjHII
	 EzDCFxBrarSAy5O2LGl51gKVFi9yzyCtUpfJvQuLuWNY5GGycIPigkM2AZRGb/RSfm
	 xXW2PKybM02H7kuyZ/LjcD7Vz5YCRdnWVKHobg8hk57w2Hb0Ht2PHk1mgtTtHAisO+
	 HInazq2nPz7Vw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nmHaJrx_cZEg; Thu, 29 Jun 2023 15:15:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC81740CBC;
	Thu, 29 Jun 2023 15:15:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC81740CBC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A67191BF277
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 02:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E98C81A99
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 02:11:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E98C81A99
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WxVpeTsC6_Yj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 02:11:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABFB581465
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp1.osuosl.org (Postfix) with SMTP id ABFB581465
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 02:11:21 +0000 (UTC)
Received: from [172.30.11.106] (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPSA id 23C4C604D34EE; 
 Thu, 29 Jun 2023 10:10:39 +0800 (CST)
Message-ID: <72784932-8390-4f82-fbaa-5086804025df@nfschina.com>
Date: Thu, 29 Jun 2023 10:10:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>
X-MD-Sfrom: yunchuan@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: yunchuan <yunchuan@nfschina.com>
In-Reply-To: <ecd70c28-1629-4b6c-96fc-a0b8f8713a04@lunn.ch>
X-Mailman-Approved-At: Thu, 29 Jun 2023 15:15:34 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/10] Remove unnecessary
 (void*) conversions
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
Cc: irusskikh@marvell.com, kernel-janitors@vger.kernel.org,
 linux@armlinux.org.uk, edumazet@google.com, iyappan@os.amperecomputing.com,
 anthony.l.nguyen@intel.com, quan@os.amperecomputing.com,
 Hao Lan <lanhao@huawei.com>, qiang.zhao@nxp.com, f.fainelli@gmail.com,
 jesse.brandeburg@intel.com, xeb@mail.ru, intel-wired-lan@lists.osuosl.org,
 yangyingliang@huawei.com, kuba@kernel.org, pabeni@redhat.com,
 yisen.zhuang@huawei.com, ansuelsmth@gmail.com, steve.glendinning@shawell.net,
 keyur@os.amperecomputing.com, mostrows@earthlink.net, salil.mehta@huawei.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux@rempel-privat.de,
 olteanv@gmail.com, linuxppc-dev@lists.ozlabs.org, davem@davemloft.net,
 hkallweit1@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMy82LzI4IDIyOjM5LCBBbmRyZXcgTHVubiB3cm90ZToKPiBPbiBXZWQsIEp1biAyOCwg
MjAyMyBhdCAwNDozNzo0M1BNICswMjAwLCBBbmRyZXcgTHVubiB3cm90ZToKPj4+IEhpLCBIYW8g
TGFuLAo+Pj4KPj4+IFNvcnJ5IGZvciB0aGF0LCBJIGp1c3QgY29tcGlsZWQgdGhlc2UgcGF0Y2hl
cyBpbiB0aGUgbWFpbmxpbmUgYnJhbmNoLgo+Pj4gSSBrbm93IG5vdywgaXQncyBhbHNvIG5lY2Vz
c2FyeSB0byBjb21waWxlIHBhdGNoZXMgaW4gbmV0IGFuZCBuZXQtbmV4dAo+Pj4gYnJhbmNoLgo+
Pj4gVGhhbmtzIGZvciB5b3VyIHJlcGx5IQo+PiBuZXQtbmV4dCBpcyBhbHNvIGNsb3NlZCBhdCB0
aGUgbW9tZW50IGR1ZSB0byB0aGUgbWVyZ2Ugd2luZG93LiBQbGVhc2UKPj4gd2FpdCB0d28gd2Vl
a3MgYmVmb3JlIHJlcG9zdGluZywgYnkgd2hpY2ggdGltZSBuZXQtbmV4dCB3aWxsIGJlIG9wZW4K
Pj4gYWdhaW4uCgpIaSwgQW5kcmV3IEx1bm4sCgpVbmRlcnN0YW5kLCBhbmQgdGhhbmtzIGZvciB5
b3VyIHJlbWluZGluZyEKCj4gWW91ciBlbWFpbCB0aHJlYWRpbmcgYWxzbyBzZWVtcyB0byBiZSBi
cm9rZW4sIHRoZXJlIGlzIG5vCj4gdGhyZWFkaW5nLiBUaGF0IG1pZ2h0IGNhdXNlIHBhdGh3b3Jr
cyBhbiBpc3N1ZS4KU29tZXRpbWVzIGl0IGRvZXNuJ3Qgd29yaywgYnV0IEkgYWxzbyByZWNlaXZl
IGVtYWlsIGZyb20gZW1haWwgbGlzdC4KU28gSSBjYW4gcmVhZCB5b3VyIGVtYWlsIGZyb20gZW1h
aWwgbGlzdCBhbHRob3VnaCBzb21ldGhpbmcgaXMgYnJva2VuLgpUaGFua3MgYWdhaW7vvIEKCnd1
eWNoCgo+Cj4gCUFuZHJldwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
