Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18960397D7F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jun 2021 02:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AF09401F0;
	Wed,  2 Jun 2021 00:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pWV3p63Wbyj9; Wed,  2 Jun 2021 00:10:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 894604017C;
	Wed,  2 Jun 2021 00:10:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 965801BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 00:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8360D60755
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 00:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lj-t0I4dmKjy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jun 2021 00:10:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEBD4606BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jun 2021 00:10:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 2E8AA613D1;
 Wed,  2 Jun 2021 00:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622592608;
 bh=k/R3M+Z0gY5AxBgS0EmJ/2I47IB9GAN9JHVTlj8MpVQ=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=NDDI8qBZB1pfEOKXoMqmH3O7OEScRxd6wIDazqKmRGEfEf1v8glNnt6mFPu4ivO7J
 tqFyTZVwdYBhKM9kihNOZOXzAORjwWDLURW+RZaxzSmGjYPfSjXv6IFD4aVWIChvTP
 c/F4nvtkGcPCEN0k83hF1E5+2cq9oX6S29xCSbafA5FyHXR32GmrL8YCN5/4dp3ose
 gkV4g4PpSWjvAGxzaB8JhV9LVLiPAk/Xf135YZDpYt816KNn4Ku9gcyT3BxUUoXKI9
 sUnSeJf4JSeRmQwcyJruxfR6vXB97HT7wx1uslTjHxWkuBrM1YqUQ0xJV0ei5OCkI/
 pes1aNOt0LqgA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 24B8260A6F;
 Wed,  2 Jun 2021 00:10:08 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162259260814.22595.7166722857871359129.git-patchwork-notify@kernel.org>
Date: Wed, 02 Jun 2021 00:10:08 +0000
References: <20210601140238.20712-1-yuehaibing@huawei.com>
In-Reply-To: <20210601140238.20712-1-yuehaibing@huawei.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] igb: Fix
 -Wunused-const-variable warning
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
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG86CgpUaGlzIHBhdGNoIHdhcyBhcHBsaWVkIHRvIG5ldGRldi9uZXQtbmV4dC5naXQgKHJl
ZnMvaGVhZHMvbWFzdGVyKToKCk9uIFR1ZSwgMSBKdW4gMjAyMSAyMjowMjozOCArMDgwMCB5b3Ug
d3JvdGU6Cj4gSWYgQ09ORklHX0lHQl9IV01PTiBpcyBuLCBnY2Mgd2FybnM6Cj4gCj4gZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwXzgyNTc1LmM6Mjc2NToxNzoKPiAgd2Fybmlu
Zzog4oCYZTEwMDBfZW1jX3RoZXJtX2xpbWl04oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3Vu
dXNlZC1jb25zdC12YXJpYWJsZT1dCj4gIHN0YXRpYyBjb25zdCB1OCBlMTAwMF9lbWNfdGhlcm1f
bGltaXRbNF0gPSB7Cj4gICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn4KPiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvZTEwMDBfODI1NzUuYzoyNzU5OjE3Ogo+ICB3
YXJuaW5nOiDigJhlMTAwMF9lbWNfdGVtcF9kYXRh4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFst
V3VudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gIHN0YXRpYyBjb25zdCB1OCBlMTAwMF9lbWNfdGVt
cF9kYXRhWzRdID0gewo+ICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fgo+IAo+
IFsuLi5dCgpIZXJlIGlzIHRoZSBzdW1tYXJ5IHdpdGggbGlua3M6CiAgLSBbbmV0LW5leHRdIGln
YjogRml4IC1XdW51c2VkLWNvbnN0LXZhcmlhYmxlIHdhcm5pbmcKICAgIGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvbmV0ZGV2L25ldC1uZXh0L2MvMGEyMDZmOWQ5ZTIzCgpZb3UgYXJlIGF3ZXNvbWUs
IHRoYW5rIHlvdSEKLS0KRGVldC1kb290LWRvdCwgSSBhbSBhIGJvdC4KaHR0cHM6Ly9rb3JnLmRv
Y3Mua2VybmVsLm9yZy9wYXRjaHdvcmsvcHdib3QuaHRtbAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
