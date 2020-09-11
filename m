Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFB6266808
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 20:05:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 54B378792A;
	Fri, 11 Sep 2020 18:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mm5x4GaBIT9w; Fri, 11 Sep 2020 18:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4414387937;
	Fri, 11 Sep 2020 18:05:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24B271BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E54DF21507
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u4rNq+ox3CbN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 01:42:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 2632320514
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:42:30 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id F2BD08D9AA58D4C9B10A;
 Fri, 11 Sep 2020 09:42:25 +0800 (CST)
Received: from [10.174.179.81] (10.174.179.81) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Fri, 11 Sep 2020 09:42:24 +0800
To: Jakub Kicinski <kuba@kernel.org>
References: <20200910150429.31912-1-wanghai38@huawei.com>
 <20200910123800.74865996@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20200910123819.3ce47422@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: "wanghai (M)" <wanghai38@huawei.com>
Message-ID: <53e857ff-f5c7-a2c9-b0ec-67c2d4ad29c3@huawei.com>
Date: Fri, 11 Sep 2020 09:42:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200910123819.3ce47422@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Originating-IP: [10.174.179.81]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 11 Sep 2020 18:05:17 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] Fix some kernel-doc
 warnings for e1000/e1000e
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CtTaIDIwMjAvOS8xMSAzOjM4LCBKYWt1YiBLaWNpbnNraSDQtLXAOgo+IE9uIFRodSwgMTAgU2Vw
IDIwMjAgMTI6Mzg6MDAgLTA3MDAgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4+IE9uIFRodSwgMTAg
U2VwIDIwMjAgMjM6MDQ6MjYgKzA4MDAgV2FuZyBIYWkgd3JvdGU6Cj4+PiBXYW5nIEhhaSAoMyk6
Cj4+PiAgICBlMTAwMGU6IEZpeCBzb21lIGtlcm5lbC1kb2Mgd2FybmluZ3MgaW4gaWNoOGxhbi5j
Cj4+PiAgICBlMTAwMGU6IEZpeCBzb21lIGtlcm5lbC1kb2Mgd2FybmluZ3MgaW4gbmV0ZGV2LmMK
Pj4+ICAgIGUxMDAwOiBGaXggYSBidW5jaCBvZiBrZXJuZWxkb2MgcGFyYW1ldGVyIGlzc3VlcyBp
biBlMTAwMF9ody5jCj4+IFlvdSBzaG91bGQgcHV0IHNvbWUgdGV4dCBoZXJlIGJ1dCBJIGNhbiBj
b25maXJtIHRoaXMgc2V0IHJlbW92ZXMgMTcKPj4gd2FybmluZ3MuCj4gUmV2aWV3ZWQtYnk6IEph
a3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+Cj4gLgpUaGFucyBmb3IgeW91ciByZXZpZXcs
IEknbGwgYWRkIHNvbWUgZGVzY3JpcHRpb24gbmV4dCB0aW1lCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
