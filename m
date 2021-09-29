Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B17B41C680
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 16:16:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E016406F9;
	Wed, 29 Sep 2021 14:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FgBZRUOh2J9O; Wed, 29 Sep 2021 14:16:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65B094024A;
	Wed, 29 Sep 2021 14:16:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71B3C1BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C96382BC8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:16:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L34jj_1lT0Ik for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 14:16:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CB4E082AC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 14:16:31 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CCAB4613A7;
 Wed, 29 Sep 2021 14:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632924991;
 bh=x8PJgYHBfZYy5vbHjr7vMOaIkyPKYTkxWVBFHp1eeg4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BGIbu/AGlYFcQKLeJl04hR8MvgPE1d1akDokD6itR1bgBlPElkeaHjQx8b9s1Ymuz
 rnHg724w0U0TGgmuRYa1eHCai5JMHXj1ifyKegB++KTqB9iDoVdgTVgfLotJ2/TyZ1
 DdN68VCwdXXxT36Ly3efz3HJ7qZrHrvX8gytj8GGpcIzpSiVG/hgUDV10GzodN1g6k
 u4zFNgbjNcTbb7weVWrq/JWAijjVLRXb0DSPhop90H1FXzaKPMywXqIfoKSG7c9a9r
 gVLcnKb/RmxNGe/jznBrXa/HEsVN11EVYbKMjwGBXJikb4RfhdhQo91BWLcVObrTWp
 +X4HpqZlazHNQ==
Date: Wed, 29 Sep 2021 17:16:28 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YVR1PKQjsBfvUTPU@unreal>
References: <cover.1632916329.git.leonro@nvidia.com>
 <a8bf9a036fe0a590df830a77a31cc81c355f525d.1632916329.git.leonro@nvidia.com>
 <20210929065549.43b13203@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929065549.43b13203@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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

T24gV2VkLCBTZXAgMjksIDIwMjEgYXQgMDY6NTU6NDlBTSAtMDcwMCwgSmFrdWIgS2ljaW5za2kg
d3JvdGU6Cj4gT24gV2VkLCAyOSBTZXAgMjAyMSAxNTowMDo0NSArMDMwMCBMZW9uIFJvbWFub3Zz
a3kgd3JvdGU6Cj4gPiBGcm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPgo+
ID4gCj4gPiBNdWxpdHBvcnQgc2xhdmUgZGV2aWNlIGRvZXNuJ3Qgc3VwcG9ydCBkZXZsaW5rIHJl
bG9hZCwgc28gaW5zdGVhZCBvZgo+ID4gY29tcGxpY2F0aW5nIGluaXRpYWxpemF0aW9uIGZsb3cg
d2l0aCBkZXZsaW5rX3JlbG9hZF9lbmFibGUoKSB3aGljaAo+ID4gd2lsbCBiZSByZW1vdmVkIGlu
IG5leHQgcGF0Y2gsIHNldCBzcGVjaWFsaXplZCBkZXZsaW5rIG9wcyBjYWxsYmFja3MKPiA+IGZv
ciByZWxvYWQgb3BlcmF0aW9ucy4KPiA+IAo+ID4gVGhpcyBmaXhlcyBhbiBlcnJvciB3aGVuIHJl
bG9hZCBjb3VudGVycyBleHBvc2VkIChhbmQgZXF1YWwgemVybykgZm9yCj4gPiB0aGUgbW9kZSB0
aGF0IGlzIG5vdCBzdXBwb3J0ZWQgYXQgYWxsLgo+ID4gCj4gPiBGaXhlczogZDg5ZGRhYWUxNzY2
ICgibmV0L21seDU6IERpc2FibGUgZGV2bGluayByZWxvYWQgZm9yIG11bHRpIHBvcnQgc2xhdmUg
ZGV2aWNlIikKPiA+IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRp
YS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2Nv
cmUvZGV2bGluay5jIHwgMTMgKysrKysrKysrKy0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2RldmxpbmsuYyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L21lbGxhbm94L21seDUvY29yZS9kZXZsaW5rLmMKPiA+IGluZGV4IDQ3YzlmN2Y1
YmI3OS4uZTg1ZWNhNjk3NmE5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
bWVsbGFub3gvbWx4NS9jb3JlL2RldmxpbmsuYwo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvbWVsbGFub3gvbWx4NS9jb3JlL2RldmxpbmsuYwo+ID4gQEAgLTMwOSwxNCArMzA5LDE3IEBA
IHN0YXRpYyBzdHJ1Y3QgZGV2bGlua19vcHMgbWx4NV9kZXZsaW5rX29wcyA9IHsKPiA+ICAjZW5k
aWYKPiA+ICAJLmZsYXNoX3VwZGF0ZSA9IG1seDVfZGV2bGlua19mbGFzaF91cGRhdGUsCj4gPiAg
CS5pbmZvX2dldCA9IG1seDVfZGV2bGlua19pbmZvX2dldCwKPiA+ICsJLnRyYXBfaW5pdCA9IG1s
eDVfZGV2bGlua190cmFwX2luaXQsCj4gPiArCS50cmFwX2ZpbmkgPSBtbHg1X2RldmxpbmtfdHJh
cF9maW5pLAo+ID4gKwkudHJhcF9hY3Rpb25fc2V0ID0gbWx4NV9kZXZsaW5rX3RyYXBfYWN0aW9u
X3NldCwKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBzdHJ1Y3QgZGV2bGlua19vcHMgbWx4NV9k
ZXZsaW5rX3JlbG9hZCA9IHsKPiA+ICAJLnJlbG9hZF9hY3Rpb25zID0gQklUKERFVkxJTktfUkVM
T0FEX0FDVElPTl9EUklWRVJfUkVJTklUKSB8Cj4gPiAgCQkJICBCSVQoREVWTElOS19SRUxPQURf
QUNUSU9OX0ZXX0FDVElWQVRFKSwKPiA+ICAJLnJlbG9hZF9saW1pdHMgPSBCSVQoREVWTElOS19S
RUxPQURfTElNSVRfTk9fUkVTRVQpLAo+ID4gIAkucmVsb2FkX2Rvd24gPSBtbHg1X2Rldmxpbmtf
cmVsb2FkX2Rvd24sCj4gPiAgCS5yZWxvYWRfdXAgPSBtbHg1X2RldmxpbmtfcmVsb2FkX3VwLAo+
ID4gLQkudHJhcF9pbml0ID0gbWx4NV9kZXZsaW5rX3RyYXBfaW5pdCwKPiA+IC0JLnRyYXBfZmlu
aSA9IG1seDVfZGV2bGlua190cmFwX2ZpbmksCj4gPiAtCS50cmFwX2FjdGlvbl9zZXQgPSBtbHg1
X2RldmxpbmtfdHJhcF9hY3Rpb25fc2V0LAo+ID4gIH07Cj4gPiAgCj4gPiAgdm9pZCBtbHg1X2Rl
dmxpbmtfdHJhcF9yZXBvcnQoc3RydWN0IG1seDVfY29yZV9kZXYgKmRldiwgaW50IHRyYXBfaWQs
IHN0cnVjdCBza19idWZmICpza2IsCj4gPiBAQCAtNzkxLDYgKzc5NCw3IEBAIHN0YXRpYyB2b2lk
IG1seDVfZGV2bGlua190cmFwc191bnJlZ2lzdGVyKHN0cnVjdCBkZXZsaW5rICpkZXZsaW5rKQo+
ID4gIAo+ID4gIGludCBtbHg1X2RldmxpbmtfcmVnaXN0ZXIoc3RydWN0IGRldmxpbmsgKmRldmxp
bmspCj4gPiAgewo+ID4gKwlzdHJ1Y3QgbWx4NV9jb3JlX2RldiAqZGV2ID0gZGV2bGlua19wcml2
KGRldmxpbmspOwo+ID4gIAlpbnQgZXJyOwo+ID4gIAo+ID4gIAllcnIgPSBkZXZsaW5rX3BhcmFt
c19yZWdpc3RlcihkZXZsaW5rLCBtbHg1X2RldmxpbmtfcGFyYW1zLAo+ID4gQEAgLTgwOCw2ICs4
MTIsOSBAQCBpbnQgbWx4NV9kZXZsaW5rX3JlZ2lzdGVyKHN0cnVjdCBkZXZsaW5rICpkZXZsaW5r
KQo+ID4gIAlpZiAoZXJyKQo+ID4gIAkJZ290byB0cmFwc19yZWdfZXJyOwo+ID4gIAo+ID4gKwlp
ZiAoIW1seDVfY29yZV9pc19tcF9zbGF2ZShkZXYpKQo+ID4gKwkJZGV2bGlua19zZXRfb3BzKGRl
dmxpbmssICZtbHg1X2RldmxpbmtfcmVsb2FkKTsKPiAKPiBEb2VzIHRoaXMgd29yaz8gV2hlcmUg
ZG8geW91IG1ha2UgYSBjb3B5IG9mIHRoZSBvcHM/IPCfpJQgWW91IGNhbid0IG1vZGlmeQo+IHRo
ZSBkcml2ZXItZ2xvYmFsIG9wcywgdG8gc3RhdGUgdGhlIG9idmlvdXMuCgpkZXZsaW5rX29wcyBw
b2ludGVyIGlzIG5vdCBjb25zdGFudCBhdCB0aGlzIHN0YWdlLCBzbyB3aHkgY2FuJ3QgSSBjb3B5
CnJlbG9hZF8qIHBvaW50ZXJzIHRvIHRoZSAibWFpbiIgZGV2bGluayBvcHM/CgpJIHdhbnRlZCB0
byBhdm9pZCB0byBjb3B5IGFsbCBwb2ludGVycy4KClRoYW5rcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
