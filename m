Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0E72433A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Aug 2020 07:33:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C5F787E76;
	Thu, 13 Aug 2020 05:33:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jgHhOgsol6cz; Thu, 13 Aug 2020 05:33:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0DE2A87E8F;
	Thu, 13 Aug 2020 05:33:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D62B91BF86D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 05:33:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D11CA8484F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 05:33:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7IZOeV0Z3v3x for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Aug 2020 05:33:43 +0000 (UTC)
X-Greylist: delayed 00:05:13 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3FCEE848A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 05:33:43 +0000 (UTC)
Received: from [192.168.0.48] ([217.24.225.235]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MA4ja-1k04A53B4U-00BYAn; Thu, 13 Aug 2020 07:28:11 +0200
To: Jakub Kicinski <kuba@kernel.org>
References: <20200812143950.11675-1-sassmann@kpanic.de>
 <20200812104628.340a073a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <282db652-e9a7-d7be-1f9d-9434c11323d4@kpanic.de>
Date: Thu, 13 Aug 2020 07:28:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200812104628.340a073a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
X-Provags-ID: V03:K1:0AN9FO5BzAlQft0r3CQlN/YuAV8tUhrMf03DbcSTVncgzgVcbIO
 pzlI7by81gYk5b+8izTS50j9TzI/eb4TyWuSf2Q3fd7M1DYWpH6NCnDL5kDJgJclxOVDVQs
 5yloOECMlm1Zg/ObGfChfFNwQc8RpNaA+byji2EIJ0H5qzBB0OupJwfHgSJQqYjAzgAS+7y
 1fTmvMWdx7W2+8/mzctqQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:u1W/k5C0gDA=:oVGur+eBucsJa/8RHlSJ7O
 vFlQVl6AZoKk2rIB9+UPrnt4OKcsJFhi0SFrxRHQrGUmUvaZB9zcJI0BpTkBfm64bdLlabRQE
 lwjyGBK00Vw8kgzbPRkDVxfuBRhIca7HDT9VzBHVRPF4VDnCRwlpNJf8hLSmCa9Oa8aYIYp4I
 MHObllZeeRK1ZT5tnL+w3FJ8jUApW5L3YpETNH/+eeg/lJG7xNKEOlh5ddXyjGWkgBH/7yHSz
 1fykNW+oZEI7Ka0eaf66828jWie+RT1NgYU1m5oYAW6C+2IEnT7nT4kbUrVgtUSbeO7GGS7SF
 +pgQ6HfQsS/mjIlBYMfeUX7z5UAFYpRX2pr4AEfbKEEdjfbEuCzDVDqf3APD1tARpJGRXLv5z
 ionvXgmF1x2Ia4Jp/QPMOl58JkAIOdBiY4LV6I+pAj6yD+XjxbFYabY3oLPwEeNnMs6MuEol0
 an/bT4B28wI8FuKxG3kkTAEqHqfNBOHD/DXf0uI/dhdqT2hZ7IqoPtv+3B0PK3nVk8HZZmOdo
 sy6t3uXtaU8MS9HKqWGOHQRExlnqd6x8iMp7Yp2VVESyaXI63a0RnrjiZ6H47ls0gWQ2kI0pf
 RXZ15eNzVsVAAi1BQ69fbF8kGnRmKdTPhCJdlFFsCZoYtYrUBWpy/NRTsKK/Ml3VU691bY8Dz
 /xd2nxuXGH+dNh/wTmNJcQiFIdGMrQ516C57A3aPX64x4PV7TQre2Ta+c2d06GqZUd6MrUVOv
 fJKapbPwAA2usyJ3AFkH0KrJZDPZpq+f5Siwg0Y+zb2EpmJTt7MsG0u4Yfc11VHAy5WZH5YIi
 C6qlsgWISoZ55LYyYUQUPO/dg38YqaYZLOfnWYiEgo2+2OxWjuKBUY0Ueg9n5y1BY44FKaC
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix uninitialized variable in
 i40e_set_vsi_promisc
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
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIuMDguMjAgMTk6NDYsIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+IE9uIFdlZCwgMTIgQXVn
IDIwMjAgMTY6Mzk6NTAgKzAyMDAgU3RlZmFuIEFzc21hbm4gd3JvdGU6Cj4+IGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jOiBJbiBmdW5jdGlvbiDigJhp
NDBlX3NldF92c2lfcHJvbWlzY+KAmToKPj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3ZpcnRjaG5sX3BmLmM6MTE3NjoxNDogZXJyb3I6IOKAmGFxX3JldOKAmSBtYXkgYmUg
dXNlZCB1bmluaXRpYWxpemVkIGluIHRoaXMgZnVuY3Rpb24gWy1XZXJyb3I9bWF5YmUtdW5pbml0
aWFsaXplZF0KPj4gICBpNDBlX3N0YXR1cyBhcV9yZXQ7Cj4gCj4gV2hhdCdzIHlvdXIgY29tcGls
ZXI/IEkgZG9uJ3Qgc2VlIGl0IG9uIEdDQyAxMC4xLgoKZ2NjIHZlcnNpb24gOC4zLjEgMjAxOTEx
MjEgKFJlZCBIYXQgOC4zLjEtNSkgKEdDQykKCj4+IEluIGNhc2UgdGhlIGNvZGUgaW5zaWRlIHRo
ZSBpZiBzdGF0ZW1lbnQgYW5kIHRoZSBmb3IgbG9vcCBkb2VzIG5vdCBnZXQKPj4gZXhlY3V0ZWQg
YXFfcmV0IHdpbGwgYmUgdW5pbml0aWFsaXplZCB3aGVuIHRoZSB2YXJpYWJsZSBnZXRzIHJldHVy
bmVkIGF0Cj4+IHRoZSBlbmQgb2YgdGhlIGZ1bmN0aW9uLgo+IAo+IEkgdGhpbmsgaXQnZCBiZSBh
IGJldHRlciBmaXggdG8gbWFrZSBudW1fdmxhbnMgdW5zaWduZWQuCgpBZ3JlZWQsIEknbGwgc2Vu
ZCBhIHYyIHBhdGNoIGxhdGVyLgpUaGFua3MgZm9yIHRoZSByZXZpZXcgSmFrdWIhCgogIFN0ZWZh
bgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
