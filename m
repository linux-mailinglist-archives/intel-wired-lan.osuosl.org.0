Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CA641C698
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 16:26:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CED048308A;
	Wed, 29 Sep 2021 14:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C3wR8puc2AU8; Wed, 29 Sep 2021 14:26:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED39C83083;
	Wed, 29 Sep 2021 14:26:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D5A141BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD6C5606DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3wjzy_ZtFrpT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 14:26:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59FA060663
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:26:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E40860ED4;
 Wed, 29 Sep 2021 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632925594;
 bh=QZUqLW+rrVYjG2fzvS4fRKLH6cZniCvIXXWbYdcka0w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mb78hnsNs4SNcPw8fEhqyXKvPGc3zCK/a99lx3QDAbg5UyOq/Rlf/LLhrDXhJVFRk
 Jz2Co8cuiZ4aHX6s2P3mCTRNDgvjoDeHnnk/Jh99AlKHYkMhnzpGCJ3plvD7/cJkJx
 uN0E1hagBwcQEKjG5TeHyQHmOxOudPFOFCYPq1NXI5mit2JZXve2AWDI5JgpdvU09A
 ffGQCg1Kkp8c0txxGH2UXOHctPqSnJsAMKTvYviu1uQbU1MryEaFsLG7RPT7JL0wYg
 wE0MHR5mFXxfeeuOyN3ZxskdmVgwuVI2JE21E3NhYRnkBK3RHggdakhx8Xh+AAIBHa
 qxHr8dOPnKtAg==
Date: Wed, 29 Sep 2021 07:26:31 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210929072631.437ffad9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YVR1PKQjsBfvUTPU@unreal>
References: <cover.1632916329.git.leonro@nvidia.com>
 <a8bf9a036fe0a590df830a77a31cc81c355f525d.1632916329.git.leonro@nvidia.com>
 <20210929065549.43b13203@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YVR1PKQjsBfvUTPU@unreal>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 4/5] net/mlx5: Register
 separate reload devlink ops for multiport device
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Simon Horman <simon.horman@corigine.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, linux-rdma@vger.kernel.org,
 Moshe Shemesh <moshe@nvidia.com>, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Bin Luo <luobin9@huawei.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org,
 Felix Manlunas <fmanlunas@marvell.com>, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Shay Drory <shayd@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyOSBTZXAgMjAyMSAxNzoxNjoyOCArMDMwMCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6
Cj4gPiA+IEBAIC04MDgsNiArODEyLDkgQEAgaW50IG1seDVfZGV2bGlua19yZWdpc3RlcihzdHJ1
Y3QgZGV2bGluayAqZGV2bGluaykKPiA+ID4gIAlpZiAoZXJyKQo+ID4gPiAgCQlnb3RvIHRyYXBz
X3JlZ19lcnI7Cj4gPiA+ICAKPiA+ID4gKwlpZiAoIW1seDVfY29yZV9pc19tcF9zbGF2ZShkZXYp
KQo+ID4gPiArCQlkZXZsaW5rX3NldF9vcHMoZGV2bGluaywgJm1seDVfZGV2bGlua19yZWxvYWQp
OyAgCj4gPiAKPiA+IERvZXMgdGhpcyB3b3JrPyBXaGVyZSBkbyB5b3UgbWFrZSBhIGNvcHkgb2Yg
dGhlIG9wcz8g8J+klCBZb3UgY2FuJ3QgbW9kaWZ5Cj4gPiB0aGUgZHJpdmVyLWdsb2JhbCBvcHMs
IHRvIHN0YXRlIHRoZSBvYnZpb3VzLiAgCj4gCj4gZGV2bGlua19vcHMgcG9pbnRlciBpcyBub3Qg
Y29uc3RhbnQgYXQgdGhpcyBzdGFnZSwgc28gd2h5IGNhbid0IEkgY29weQo+IHJlbG9hZF8qIHBv
aW50ZXJzIHRvIHRoZSAibWFpbiIgZGV2bGluayBvcHM/Cj4gCj4gSSB3YW50ZWQgdG8gYXZvaWQg
dG8gY29weSBhbGwgcG9pbnRlcnMuCgpIbS4gSSBtdXN0IGJlIG1pc3NpbmcgYSBrZXkgcGllY2Ug
aGVyZS4gSUlVQyB5b3Ugd2FudCB0byBoYXZlIGRpZmZlcmVudApvcHMgYmFzZWQgb24gc29tZSBk
ZXZpY2UgcHJvcGVydHkuIEJ1dCB0aGVyZSBpcyBvbmx5IG9uZQoKc3RhdGljIHN0cnVjdCBkZXZs
aW5rX29wcyBtbHg1X2Rldmxpbmtfb3BzOwoKc28gaG93IGNhbiB0d28gZGV2bGluayBpbnN0YW5j
ZXMgaW4gdGhlIHN5c3RlbSB1c2UgdGhhdCBhbmQgaGF2ZQpkaWZmZXJlbnQgb3BzIHdpdGhvdXQg
YSBjb3B5PwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
