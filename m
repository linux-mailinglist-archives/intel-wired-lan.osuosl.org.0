Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8677741C6B2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 16:31:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D917C830DE;
	Wed, 29 Sep 2021 14:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7EawQhb9U_KF; Wed, 29 Sep 2021 14:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4059830E2;
	Wed, 29 Sep 2021 14:31:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9AD501BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:31:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8655A421F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZpCp7RJmZMGO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 14:31:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49033421F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:31:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 125FC610CC;
 Wed, 29 Sep 2021 14:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632925867;
 bh=5J9i/PjQ6jdxK2kOImSO+oQGMSYmdpfWzCpwuVBY2d0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vB3ka2ZOtDpsOdBe8FXBPJmSoNh8GSWrL0prJW6U3i/f7lX+X3AoVF5PHb8HZeOUK
 GoD/Qzf9Z3yZQKIaT6lcRYeT3sIxm/S+c9PP4S75v/Z3s55+mQGFuqTdMeKLDrmfKM
 +DRF2ViEmEPJquHp5DZYk8BhsDfoXlmMDdvOuo6KFrgnMWqq8O2LcPqpBHwf+/nzi2
 rHDahLDcWWa0Tne7Z4jjLPHNC9Ad9UeEvHrboot81a0p4i4wzJVOXuZ12uZApMX1Ua
 zh+sR1ZnumyxcwjxXLndgN5mtewH3aref/5V7dtV7d9nIJDAmMdjXp9DwGhEE0coPQ
 eTzrFGTNxPsxg==
Date: Wed, 29 Sep 2021 17:31:04 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YVR4qDxiQw95jaWK@unreal>
References: <cover.1632916329.git.leonro@nvidia.com>
 <a8bf9a036fe0a590df830a77a31cc81c355f525d.1632916329.git.leonro@nvidia.com>
 <20210929065549.43b13203@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YVR1PKQjsBfvUTPU@unreal>
 <20210929072631.437ffad9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929072631.437ffad9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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

T24gV2VkLCBTZXAgMjksIDIwMjEgYXQgMDc6MjY6MzFBTSAtMDcwMCwgSmFrdWIgS2ljaW5za2kg
d3JvdGU6Cj4gT24gV2VkLCAyOSBTZXAgMjAyMSAxNzoxNjoyOCArMDMwMCBMZW9uIFJvbWFub3Zz
a3kgd3JvdGU6Cj4gPiA+ID4gQEAgLTgwOCw2ICs4MTIsOSBAQCBpbnQgbWx4NV9kZXZsaW5rX3Jl
Z2lzdGVyKHN0cnVjdCBkZXZsaW5rICpkZXZsaW5rKQo+ID4gPiA+ICAJaWYgKGVycikKPiA+ID4g
PiAgCQlnb3RvIHRyYXBzX3JlZ19lcnI7Cj4gPiA+ID4gIAo+ID4gPiA+ICsJaWYgKCFtbHg1X2Nv
cmVfaXNfbXBfc2xhdmUoZGV2KSkKPiA+ID4gPiArCQlkZXZsaW5rX3NldF9vcHMoZGV2bGluaywg
Jm1seDVfZGV2bGlua19yZWxvYWQpOyAgCj4gPiA+IAo+ID4gPiBEb2VzIHRoaXMgd29yaz8gV2hl
cmUgZG8geW91IG1ha2UgYSBjb3B5IG9mIHRoZSBvcHM/IPCfpJQgWW91IGNhbid0IG1vZGlmeQo+
ID4gPiB0aGUgZHJpdmVyLWdsb2JhbCBvcHMsIHRvIHN0YXRlIHRoZSBvYnZpb3VzLiAgCj4gPiAK
PiA+IGRldmxpbmtfb3BzIHBvaW50ZXIgaXMgbm90IGNvbnN0YW50IGF0IHRoaXMgc3RhZ2UsIHNv
IHdoeSBjYW4ndCBJIGNvcHkKPiA+IHJlbG9hZF8qIHBvaW50ZXJzIHRvIHRoZSAibWFpbiIgZGV2
bGluayBvcHM/Cj4gPiAKPiA+IEkgd2FudGVkIHRvIGF2b2lkIHRvIGNvcHkgYWxsIHBvaW50ZXJz
Lgo+IAo+IEhtLiBJIG11c3QgYmUgbWlzc2luZyBhIGtleSBwaWVjZSBoZXJlLiBJSVVDIHlvdSB3
YW50IHRvIGhhdmUgZGlmZmVyZW50Cj4gb3BzIGJhc2VkIG9uIHNvbWUgZGV2aWNlIHByb3BlcnR5
LiBCdXQgdGhlcmUgaXMgb25seSBvbmUKPiAKPiBzdGF0aWMgc3RydWN0IGRldmxpbmtfb3BzIG1s
eDVfZGV2bGlua19vcHM7Cj4gCj4gc28gaG93IGNhbiB0d28gZGV2bGluayBpbnN0YW5jZXMgaW4g
dGhlIHN5c3RlbSB1c2UgdGhhdCBhbmQgaGF2ZQo+IGRpZmZlcmVudCBvcHMgd2l0aG91dCBhIGNv
cHk/CgpObywgSSBoYXZlIHR3bzoKKiBCYXNlIG9wcyAtIG1seDVfZGV2bGlua19vcHMKKiBFeHRy
YSByZWxvYWQgY29tbWFuZHMgLSBtbHg1X2RldmxpbmtfcmVsb2FkCgpUaGFua3MKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
