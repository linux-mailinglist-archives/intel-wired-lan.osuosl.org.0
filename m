Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5275841C624
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 15:56:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC854402DD;
	Wed, 29 Sep 2021 13:55:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U5EXRY9ECUHI; Wed, 29 Sep 2021 13:55:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82F2740702;
	Wed, 29 Sep 2021 13:55:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A98971BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9542640707
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:55:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n7njjjPBr8cr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 13:55:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C8BE9406E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:55:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 93920613D1;
 Wed, 29 Sep 2021 13:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632923752;
 bh=40noVjUADcTFuL18AWlGlA5AqcgIKtJPa+QjlNndmaA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TXfiJIOjDYkjlTD+FmCDLSeBSzFecqoscMatnM7hRJz6j32y6GJB5hP8vfTt6JtQw
 gn9IlvE39J2vPbTRVUjz/jaT1L06lP4uP3LB0zCIkKE19K7ZX7zpsQT4XmXdM9B3iy
 n2nfvYiL7HU7s8inrnWIlJkpF247sn7mwN75YafcAT+/81FgXfryg4c2QAJFCt3D9j
 ZSL6MbbLr8QpNIW+tnfQcnHcw8vhN2rd8/kZZ/1VvZZr/OQDqKCuAkkyMyIRCyYbsS
 0inDhEXaYXr29LaGJbQDn0nEnUJH5BtJeJ6S5lwBpW7pky/dWO5mnEJNlMzLVnU0ir
 pugj5/zEYMKlg==
Date: Wed, 29 Sep 2021 06:55:49 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210929065549.43b13203@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <a8bf9a036fe0a590df830a77a31cc81c355f525d.1632916329.git.leonro@nvidia.com>
References: <cover.1632916329.git.leonro@nvidia.com>
 <a8bf9a036fe0a590df830a77a31cc81c355f525d.1632916329.git.leonro@nvidia.com>
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
 Leon Romanovsky <leonro@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Linu Cherian <lcherian@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Eric Dumazet <eric.dumazet@gmail.com>,
 linux-rdma@vger.kernel.org, Moshe Shemesh <moshe@nvidia.com>,
 linux-staging@lists.linux.dev, Shannon Nelson <snelson@pensando.io>,
 intel-wired-lan@lists.osuosl.org, Vadym Kochan <vkochan@marvell.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
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

T24gV2VkLCAyOSBTZXAgMjAyMSAxNTowMDo0NSArMDMwMCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6
Cj4gRnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4KPiAKPiBNdWxpdHBv
cnQgc2xhdmUgZGV2aWNlIGRvZXNuJ3Qgc3VwcG9ydCBkZXZsaW5rIHJlbG9hZCwgc28gaW5zdGVh
ZCBvZgo+IGNvbXBsaWNhdGluZyBpbml0aWFsaXphdGlvbiBmbG93IHdpdGggZGV2bGlua19yZWxv
YWRfZW5hYmxlKCkgd2hpY2gKPiB3aWxsIGJlIHJlbW92ZWQgaW4gbmV4dCBwYXRjaCwgc2V0IHNw
ZWNpYWxpemVkIGRldmxpbmsgb3BzIGNhbGxiYWNrcwo+IGZvciByZWxvYWQgb3BlcmF0aW9ucy4K
PiAKPiBUaGlzIGZpeGVzIGFuIGVycm9yIHdoZW4gcmVsb2FkIGNvdW50ZXJzIGV4cG9zZWQgKGFu
ZCBlcXVhbCB6ZXJvKSBmb3IKPiB0aGUgbW9kZSB0aGF0IGlzIG5vdCBzdXBwb3J0ZWQgYXQgYWxs
Lgo+IAo+IEZpeGVzOiBkODlkZGFhZTE3NjYgKCJuZXQvbWx4NTogRGlzYWJsZSBkZXZsaW5rIHJl
bG9hZCBmb3IgbXVsdGkgcG9ydCBzbGF2ZSBkZXZpY2UiKQo+IFNpZ25lZC1vZmYtYnk6IExlb24g
Um9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L21lbGxhbm94L21seDUvY29yZS9kZXZsaW5rLmMgfCAxMyArKysrKysrKysrLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUvZGV2bGluay5j
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2RldmxpbmsuYwo+IGlu
ZGV4IDQ3YzlmN2Y1YmI3OS4uZTg1ZWNhNjk3NmE5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L21lbGxhbm94L21seDUvY29yZS9kZXZsaW5rLmMKPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUvZGV2bGluay5jCj4gQEAgLTMwOSwxNCArMzA5
LDE3IEBAIHN0YXRpYyBzdHJ1Y3QgZGV2bGlua19vcHMgbWx4NV9kZXZsaW5rX29wcyA9IHsKPiAg
I2VuZGlmCj4gIAkuZmxhc2hfdXBkYXRlID0gbWx4NV9kZXZsaW5rX2ZsYXNoX3VwZGF0ZSwKPiAg
CS5pbmZvX2dldCA9IG1seDVfZGV2bGlua19pbmZvX2dldCwKPiArCS50cmFwX2luaXQgPSBtbHg1
X2RldmxpbmtfdHJhcF9pbml0LAo+ICsJLnRyYXBfZmluaSA9IG1seDVfZGV2bGlua190cmFwX2Zp
bmksCj4gKwkudHJhcF9hY3Rpb25fc2V0ID0gbWx4NV9kZXZsaW5rX3RyYXBfYWN0aW9uX3NldCwK
PiArfTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgZGV2bGlua19vcHMgbWx4NV9kZXZsaW5rX3JlbG9h
ZCA9IHsKPiAgCS5yZWxvYWRfYWN0aW9ucyA9IEJJVChERVZMSU5LX1JFTE9BRF9BQ1RJT05fRFJJ
VkVSX1JFSU5JVCkgfAo+ICAJCQkgIEJJVChERVZMSU5LX1JFTE9BRF9BQ1RJT05fRldfQUNUSVZB
VEUpLAo+ICAJLnJlbG9hZF9saW1pdHMgPSBCSVQoREVWTElOS19SRUxPQURfTElNSVRfTk9fUkVT
RVQpLAo+ICAJLnJlbG9hZF9kb3duID0gbWx4NV9kZXZsaW5rX3JlbG9hZF9kb3duLAo+ICAJLnJl
bG9hZF91cCA9IG1seDVfZGV2bGlua19yZWxvYWRfdXAsCj4gLQkudHJhcF9pbml0ID0gbWx4NV9k
ZXZsaW5rX3RyYXBfaW5pdCwKPiAtCS50cmFwX2ZpbmkgPSBtbHg1X2RldmxpbmtfdHJhcF9maW5p
LAo+IC0JLnRyYXBfYWN0aW9uX3NldCA9IG1seDVfZGV2bGlua190cmFwX2FjdGlvbl9zZXQsCj4g
IH07Cj4gIAo+ICB2b2lkIG1seDVfZGV2bGlua190cmFwX3JlcG9ydChzdHJ1Y3QgbWx4NV9jb3Jl
X2RldiAqZGV2LCBpbnQgdHJhcF9pZCwgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiBAQCAtNzkxLDYg
Kzc5NCw3IEBAIHN0YXRpYyB2b2lkIG1seDVfZGV2bGlua190cmFwc191bnJlZ2lzdGVyKHN0cnVj
dCBkZXZsaW5rICpkZXZsaW5rKQo+ICAKPiAgaW50IG1seDVfZGV2bGlua19yZWdpc3RlcihzdHJ1
Y3QgZGV2bGluayAqZGV2bGluaykKPiAgewo+ICsJc3RydWN0IG1seDVfY29yZV9kZXYgKmRldiA9
IGRldmxpbmtfcHJpdihkZXZsaW5rKTsKPiAgCWludCBlcnI7Cj4gIAo+ICAJZXJyID0gZGV2bGlu
a19wYXJhbXNfcmVnaXN0ZXIoZGV2bGluaywgbWx4NV9kZXZsaW5rX3BhcmFtcywKPiBAQCAtODA4
LDYgKzgxMiw5IEBAIGludCBtbHg1X2RldmxpbmtfcmVnaXN0ZXIoc3RydWN0IGRldmxpbmsgKmRl
dmxpbmspCj4gIAlpZiAoZXJyKQo+ICAJCWdvdG8gdHJhcHNfcmVnX2VycjsKPiAgCj4gKwlpZiAo
IW1seDVfY29yZV9pc19tcF9zbGF2ZShkZXYpKQo+ICsJCWRldmxpbmtfc2V0X29wcyhkZXZsaW5r
LCAmbWx4NV9kZXZsaW5rX3JlbG9hZCk7CgpEb2VzIHRoaXMgd29yaz8gV2hlcmUgZG8geW91IG1h
a2UgYSBjb3B5IG9mIHRoZSBvcHM/IPCfpJQgWW91IGNhbid0IG1vZGlmeQp0aGUgZHJpdmVyLWds
b2JhbCBvcHMsIHRvIHN0YXRlIHRoZSBvYnZpb3VzLgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
