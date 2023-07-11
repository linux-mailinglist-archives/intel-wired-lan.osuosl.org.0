Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E493D74F2FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 17:09:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 131BE83281;
	Tue, 11 Jul 2023 15:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 131BE83281
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689088147;
	bh=ibpX875NuXN1wN1AoRUHZSbVp9cT3KY5l94jfMHAAdI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=P7dGN/YnA0/u4qA6/nRgQSMO3TCaLJzHCb1477JYGCgkcdwEhAtQ9m5tVvXdi6K6+
	 ADWavur7VsBQFcqx3zHnLheupZGTjKeqg+ghHjMzI8ejHKvchPjUsGD8uhbegrDioH
	 yWoVttLVxPx1/IvXYmKXJeSLskTMEULZQQr6DArrhyZC7agl9EW2xcbz8PyyTy5tKK
	 1VocU/7ZMHMJ+3ioBlOAqMXuL+zK4lBw1igLQ3wS8s+vKlUx4ZG0iXAtxvOK2VD7OU
	 pqyId/y00lfFQZWHcdr5pWCCuM5CJsRNPp2vYWODAO6jOJMSLQq8J70fiNvR4gpLA5
	 rA8Rm1AvX2yog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yIqW15jzgXVk; Tue, 11 Jul 2023 15:09:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C075A82257;
	Tue, 11 Jul 2023 15:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C075A82257
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52C891BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 09:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2ACA0818C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 09:20:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2ACA0818C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bBVvjRs-AjUA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 09:20:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5137481926
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp1.osuosl.org (Postfix) with SMTP id 5137481926
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 09:20:38 +0000 (UTC)
Received: from [172.30.11.106] (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPSA id BFBE76062ABFD; 
 Tue, 11 Jul 2023 17:20:29 +0800 (CST)
Message-ID: <c9b37dac-7f13-210b-23f7-57ece0f7d1c6@nfschina.com>
Date: Tue, 11 Jul 2023 17:20:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-MD-Sfrom: yunchuan@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: yunchuan <yunchuan@nfschina.com>
In-Reply-To: <f1f9002c-ccc3-a2de-e4f5-d8fa1f8734e3@molgen.mpg.de>
X-Mailman-Approved-At: Tue, 11 Jul 2023 15:08:56 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] Remove unnecessary
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
Cc: andrew@lunn.ch, irusskikh@marvell.com, kernel-janitors@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com,
 iyappan@os.amperecomputing.com, anthony.l.nguyen@intel.com,
 quan@os.amperecomputing.com, qiang.zhao@nxp.com, linux@armlinux.org.uk,
 xeb@mail.ru, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, yisen.zhuang@huawei.com, wg@grandegger.com,
 steve.glendinning@shawell.net, keyur@os.amperecomputing.com,
 linux-can@vger.kernel.org, mostrows@earthlink.net, mkl@pengutronix.de,
 salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com,
 uttenthaler@ems-wuensche.com, rmody@marvell.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net,
 linuxppc-dev@lists.ozlabs.org, skalluru@marvell.com, hkallweit1@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMy83LzExIDE2OjUzLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFN1LAo+Cj4KPiBU
aGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCj4KPiBBbSAxMC4wNy4yMyB1bSAwODozOCBzY2hyaWVi
IFN1IEh1aToKPj4gRnJvbTogd3V5Y2ggPHl1bmNodWFuQG5mc2NoaW5hLmNvbT4KPgo+IENhbiB5
b3UgcGxlYXNlIHdyaXRlIHRoZSBmdWxsIG5hbWUgY29ycmVjdGx5PyBNYXliZSBZdW4gQ2h1YW4/
Cj4KPiDCoMKgwqAgZ2l0IGNvbmZpZyAtLWdsb2JhbCB1c2VyLm5hbWUgIll1biBDaHVhbiIKPiDC
oMKgwqAgZ2l0IGNvbW1pdCAtLWFtZW5kIC0tYXV0aG9yPSJZdW4gQ2h1YW4gPHl1bmNodWFuQG5m
c2NoaW5hLmNvbT4iCgpEZWFyIFBhdWwgTWVuemVsLAoKVGhhbmtzIGZvciB5b3VyIHJlbWluZGVy
IQpJIGhhdmUgYWxyZWFkeSBjaGFuZ2VkIHRoaXPCoCB0byBteSBmdWxsIG5hbWUgIld1IFl1bmNo
dWFuIi4KU2hvdWxkIEkgcmVzZW5kIGFsbCB0aGVzZSBwYXRjaGVzIHRvIGNoYW5nZSB0aGUgYXV0
aG9yIG5hbWU/Cj4gSSBvbmx5IGdvdCB0aGUgY292ZXIgbGV0dGVyIGJ5IHRoZSB3YXkuCj4gcwpN
YXliZSB0aGUgbmV0d29yayBtZXQgc29tZSBwcm9ibGVtcy4KSSB3aWxsIHNlbmQgdGhpcyBwYXRj
aHNldCB0byB5b3Ugc2VwYXJhdGVseS4KCld1IFl1bmNodWFuCgo+Cj4gS2luZCByZWdhcmRzLAo+
Cj4gUGF1bAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
