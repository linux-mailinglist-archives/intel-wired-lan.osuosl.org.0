Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D849992D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 18:30:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 255D687675;
	Thu, 22 Aug 2019 16:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZO-sydaTFW3c; Thu, 22 Aug 2019 16:30:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 863E287875;
	Thu, 22 Aug 2019 16:30:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 272381BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2212D87821
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qzbUSCLtZ0Cw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 16:30:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B49287675
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:30:20 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190822163018euoutp0233209aba48c72e8c7b73e0cc9c1e6999~9S6U6ITZS0188101881euoutp02b
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:30:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190822163018euoutp0233209aba48c72e8c7b73e0cc9c1e6999~9S6U6ITZS0188101881euoutp02b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566491418;
 bh=hOUF6Gzqf4+SSBY2i+OpEO1X4NBxnMXVxjifcFB2spM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=FZc1smLqzb3zZa27YKCvH9TrAOzk3JBf+6VsRV9Edal7LQi5dQd86hVxMbYYIvJaO
 7CpBhaZqUQ6A+mmnPLHFXnLL3Mn+Xvsq3sbpvRGYtAHhiL2jn3zFTEguV4Hc8yE3Z4
 pKdFxxjM792eRFkGJbxaJTtoKS4S2bBsWMjtXNnM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190822163017eucas1p274647b13d0f228bb3e37a4e455ef2831~9S6T1giVj2067120671eucas1p2I;
 Thu, 22 Aug 2019 16:30:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id B8.06.04469.813CE5D5; Thu, 22
 Aug 2019 17:30:16 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190822163016eucas1p126fb54c2234bdd541cfb0b4e41bb5684~9S6S0N6Mk2136721367eucas1p1X;
 Thu, 22 Aug 2019 16:30:16 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190822163015eusmtrp2776678612bd907e910c8d3db09280d07~9S6SkeoJu2926429264eusmtrp2G;
 Thu, 22 Aug 2019 16:30:15 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-f2-5d5ec3185b42
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 7A.E6.04166.713CE5D5; Thu, 22
 Aug 2019 17:30:15 +0100 (BST)
Received: from [106.109.129.180] (unknown [106.109.129.180]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190822163014eusmtip2e6ae918716aa14a03338431c59d73b6d~9S6Rpbg-J2946029460eusmtip2S;
 Thu, 22 Aug 2019 16:30:14 +0000 (GMT)
To: William Tu <u9012063@gmail.com>
From: Ilya Maximets <i.maximets@samsung.com>
Message-ID: <5bcebb64-2bd8-902e-eebe-3a94f317b074@samsung.com>
Date: Thu, 22 Aug 2019 19:30:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CALDO+SaRNMvmXrQqOtNiRsOkgfOQAW4EA2yVgmeoGQto2zvfMQ@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe3fOzs6Gs7dp+WBhtW4Y5qWszofQgqhD90AoFK2lp01y0zZd
 WR+yvM80NWG4FI0IaxXF8l4pzctmUpJprSxUMMrsullhieY8Sn77Pc//+T/v/4GXJmQfhL50
 vCaZ02oUCXJKQta2jz1bBy0x0cF/xjcyk+V9JDM61idixrPuIcbVaqOYa1d/EUxZVwbJvO0Z
 o5ie7DERM/nmr5Bp/5hBMfb7/Yh50VhGMTesdhHTXrmIedXtsXU+W33ztYBtML0TsdceDgtY
 g6ObYC3mXIrtSE9hjXmDBPutqZdiC6rNiHVZ/A5IIiVb4riEeD2nDQo7KlHVlTiESTWbTjfd
 clJp6E6AAYlpwKFQWpopMCAJLcM3ENRkDQr5YhRBgdVO8IULQafNRc5aftQ3zwhVCOoqe2f8
 PxB8ru+amqJpL7wb2toIt8EbrwDj8+/IPUNgCwnm0a/TmygcAE9utSI3S3EYlH9yIbeXxKvg
 Q164u70QHwbnQIuQH1kAHaVD01YxPgh9uZcpNxPYBy6M3hTyvBTSa65MhwNcREP59RLEp94O
 hRYHwbMXfLJVi3heApMNFQKez0F/xjDizTkIjNaJGSEcqkeeidzhCOwPdxuD3Ah4G/zM9OfR
 ExxfFvARPKG41kjwbSnkZMn4HSvh7+OqmQC+8PqrS1SI5KY5h5nmHGOac4zp/7OViDQjHy5F
 p1ZyuhANdypQp1DrUjTKwNhEtQVNfb/OCZuzHv3sPmZFmEZyD6ndEBMtEyr0ulS1FQFNyL2l
 +qKpljROkXqG0yYe0aYkcDorWkyTch/p2XkDUTKsVCRzJzguidPOqgJa7JuGBA82P61cHyEK
 zYiJxfdWqxqVcZqWveObvYI1HlnGPRtGyopH9nd9Pl6YFH2gYJ9X63C2IbXiN5dU1Uc1R5zL
 3Sk2ePbm73ipXx6xMflwy6qFjuiLJy892pWgRJHgOC/3N99WxTS/zI+KP+R96O4ZPBGq0i9a
 Fuu3xrkiSqjuH3ovJ3UqRchaQqtT/ANYMhJFegMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrFIsWRmVeSWpSXmKPExsVy+t/xe7rih+NiDc5NMLD4P/c2i8WXn7fZ
 Lf60bWC0+HzkOJvF4oXfmC3mnG9hsbhz5SebxZX2n+wW/2/9ZrU49qKFzeLE5vuMFpd3zWGz
 WHHoBLvFsQViFtcv8Tjwe2xZeZPJY+esu+wei/e8ZPLounGJ2WPTqk42j5PNpR7Tux8ye7zf
 d5XNo2/LKkaPz5vkArii9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxS
 UnMyy1KL9O0S9DK2T7nBWrDVrGLf6k9sDYxrdboYOTkkBEwkPu7Yz9zFyMUhJLCUUeL1rw5W
 iISUxI9fF6BsYYk/17rYIIreM0r0HL3F3sXIwSEs4C1x9CgzSI2IgLLE9IsfGEFqmAW2sEhs
 3raCCSQhJDCRVeLwr1wQm01AR+LU6iOMIDavgJ3E3FefGUHmsAioSjzvtgcJiwpESBzeMQuq
 RFDi5MwnLCA2p0CgxO3OyWwgNrOAusSfeZeYIWxxiaYvK1khbHmJ5q2zmScwCs1C0j4LScss
 JC2zkLQsYGRZxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERjv24793LyD8dLG4EOMAhyMSjy8
 J7riYoVYE8uKK3MPMUpwMCuJ8JZNBArxpiRWVqUW5ccXleakFh9iNAX6bSKzlGhyPjAV5ZXE
 G5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYGxP6Zzh+r7CeG7FGy8/
 HtNJ/F43BRZ2RWzYuuXZ0ZY193/feX86UO8w91bBw2KpHJNSN8fdDBD7xu9VcI3rY20os3Wi
 mNG3junbLdNLY6Yder4x29dbZrJ92+Ge47s2LeJb8jC13/UX23eHMIEyr5M1E565OnyQ4NzC
 3PTWel0l0/87IiUp3UosxRmJhlrMRcWJAKyumBoNAwAA
X-CMS-MailID: 20190822163016eucas1p126fb54c2234bdd541cfb0b4e41bb5684
X-Msg-Generator: CA
X-RootMTR: 20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce
References: <CGME20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce@eucas1p1.samsung.com>
 <20190820151611.10727-1-i.maximets@samsung.com>
 <CAKgT0Udn0D0_f=SOH2wpBRWV_u4rb1Qe2h7gguXnRNzJ_VkRzg@mail.gmail.com>
 <625791af-c656-1e42-b60e-b3a5cedcb4c4@samsung.com>
 <CAKgT0Uc27+ucd=a_sgTmv5g7_+ZTg1zK4isYJ0H7YWQj3d=Ejg@mail.gmail.com>
 <f7d0f7a5-e664-8b72-99c7-63275aff4c18@samsung.com>
 <CAKgT0UcCKiM1Ys=vWxctprN7fzWcBCk-PCuKB-8=RThM=CqLSQ@mail.gmail.com>
 <CALDO+SZCbxEEwCS6MyHk-Cp_LJ33N=QFqwZ8uRm0e-PBRgxRYw@mail.gmail.com>
 <cbf7c51b-9ce7-6ef6-32c4-981258d4af4c@samsung.com>
 <CALDO+SaRNMvmXrQqOtNiRsOkgfOQAW4EA2yVgmeoGQto2zvfMQ@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix double clean of tx
 descriptors with xdp
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjIuMDguMjAxOSAxOTowNywgV2lsbGlhbSBUdSB3cm90ZToKPiBPbiBUaHUsIEF1ZyAyMiwg
MjAxOSBhdCAxOjE3IEFNIElseWEgTWF4aW1ldHMgPGkubWF4aW1ldHNAc2Ftc3VuZy5jb20+IHdy
b3RlOgo+Pgo+PiBPbiAyMi4wOC4yMDE5IDA6MzgsIFdpbGxpYW0gVHUgd3JvdGU6Cj4+PiBPbiBX
ZWQsIEF1ZyAyMSwgMjAxOSBhdCA5OjU3IEFNIEFsZXhhbmRlciBEdXljawo+Pj4gPGFsZXhhbmRl
ci5kdXlja0BnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gT24gV2VkLCBBdWcgMjEsIDIwMTkg
YXQgOToyMiBBTSBJbHlhIE1heGltZXRzIDxpLm1heGltZXRzQHNhbXN1bmcuY29tPiB3cm90ZToK
Pj4+Pj4KPj4+Pj4gT24gMjEuMDguMjAxOSA0OjE3LCBBbGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4+
Pj4+PiBPbiBUdWUsIEF1ZyAyMCwgMjAxOSBhdCA4OjU4IEFNIElseWEgTWF4aW1ldHMgPGkubWF4
aW1ldHNAc2Ftc3VuZy5jb20+IHdyb3RlOgo+Pj4+Pj4+Cj4+Pj4+Pj4gT24gMjAuMDguMjAxOSAx
ODozNSwgQWxleGFuZGVyIER1eWNrIHdyb3RlOgo+Pj4+Pj4+PiBPbiBUdWUsIEF1ZyAyMCwgMjAx
OSBhdCA4OjE4IEFNIElseWEgTWF4aW1ldHMgPGkubWF4aW1ldHNAc2Ftc3VuZy5jb20+IHdyb3Rl
Ogo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFR4IGNvZGUgZG9lc24ndCBjbGVhciB0aGUgZGVzY3JpcHRv
ciBzdGF0dXMgYWZ0ZXIgY2xlYW5pbmcuCj4+Pj4+Pj4+PiBTbywgaWYgdGhlIGJ1ZGdldCBpcyBs
YXJnZXIgdGhhbiBudW1iZXIgb2YgdXNlZCBlbGVtcyBpbiBhIHJpbmcsIHNvbWUKPj4+Pj4+Pj4+
IGRlc2NyaXB0b3JzIHdpbGwgYmUgYWNjb3VudGVkIHR3aWNlIGFuZCB4c2tfdW1lbV9jb21wbGV0
ZV90eCB3aWxsIG1vdmUKPj4+Pj4+Pj4+IHByb2RfdGFpbCBmYXIgYmV5b25kIHRoZSBwcm9kX2hl
YWQgYnJlYWtpbmcgdGhlIGNvbWxldGlvbiBxdWV1ZSByaW5nLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+
IEZpeCB0aGF0IGJ5IGxpbWl0aW5nIHRoZSBudW1iZXIgb2YgZGVzY3JpcHRvcnMgdG8gY2xlYW4g
YnkgdGhlIG51bWJlcgo+Pj4+Pj4+Pj4gb2YgdXNlZCBkZXNjcmlwdG9ycyBpbiB0aGUgdHggcmlu
Zy4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBGaXhlczogODIyMWM1ZWJhOGMxICgiaXhnYmU6IGFkZCBB
Rl9YRFAgemVyby1jb3B5IFR4IHN1cHBvcnQiKQo+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogSWx5
YSBNYXhpbWV0cyA8aS5tYXhpbWV0c0BzYW1zdW5nLmNvbT4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSSdt
IG5vdCBzdXJlIHRoaXMgaXMgdGhlIGJlc3Qgd2F5IHRvIGdvLiBNeSBwcmVmZXJlbmNlIHdvdWxk
IGJlIHRvCj4+Pj4+Pj4+IGhhdmUgc29tZXRoaW5nIGluIHRoZSByaW5nIHRoYXQgd291bGQgcHJl
dmVudCB1cyBmcm9tIHJhY2luZyB3aGljaCBJCj4+Pj4+Pj4+IGRvbid0IHRoaW5rIHRoaXMgcmVh
bGx5IGFkZHJlc3Nlcy4gSSBhbSBwcmV0dHkgc3VyZSB0aGlzIGNvZGUgaXMgc2FmZQo+Pj4+Pj4+
PiBvbiB4ODYgYnV0IEkgd291bGQgYmUgd29ycmllZCBhYm91dCB3ZWFrIG9yZGVyZWQgc3lzdGVt
cyBzdWNoIGFzCj4+Pj4+Pj4+IFBvd2VyUEMuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEl0IG1pZ2h0IG1h
a2Ugc2Vuc2UgdG8gbG9vayBhdCBhZGRpbmcgdGhlIGVvcF9kZXNjIGxvZ2ljIGxpa2Ugd2UgaGF2
ZQo+Pj4+Pj4+PiBpbiB0aGUgcmVndWxhciBwYXRoIHdpdGggYSBwcm9wZXIgYmFycmllciBiZWZv
cmUgd2Ugd3JpdGUgaXQgYW5kIGFmdGVyCj4+Pj4+Pj4+IHdlIHJlYWQgaXQuIFNvIGZvciBleGFt
cGxlIHdlIGNvdWxkIGhvbGQgb2Ygb24gd3JpdGluZyB0aGUgYnl0ZWNvdW50Cj4+Pj4+Pj4+IHZh
bHVlIHVudGlsIHRoZSBlbmQgb2YgYW4gaXRlcmF0aW9uIGFuZCBjYWxsIHNtcF93bWIgYmVmb3Jl
IHdlIHdyaXRlCj4+Pj4+Pj4+IGl0LiBUaGVuIG9uIHRoZSBjbGVhbnVwIHdlIGNvdWxkIHJlYWQg
aXQgYW5kIGlmIGl0IGlzIG5vbi16ZXJvIHdlIHRha2UKPj4+Pj4+Pj4gYW4gc21wX3JtYiBiZWZv
cmUgcHJvY2VlZGluZyBmdXJ0aGVyIHRvIHByb2Nlc3MgdGhlIFR4IGRlc2NyaXB0b3IgYW5kCj4+
Pj4+Pj4+IGNsZWFyaW5nIHRoZSB2YWx1ZS4gT3RoZXJ3aXNlIHRoaXMgY29kZSBpcyBnb2luZyB0
byBqdXN0IGtlZXAgcG9wcGluZwo+Pj4+Pj4+PiB1cCB3aXRoIGlzc3Vlcy4KPj4+Pj4+Pgo+Pj4+
Pj4+IEJ1dCwgdW5saWtlIHJlZ3VsYXIgY2FzZSwgeGRwIHplcm8tY29weSB4bWl0IGFuZCBjbGVh
biBmb3IgcGFydGljdWxhcgo+Pj4+Pj4+IHR4IHJpbmcgYWx3YXlzIGhhcHBlbnMgaW4gdGhlIHNh
bWUgTkFQSSBjb250ZXh0IGFuZCBldmVuIG9uIHRoZSBzYW1lCj4+Pj4+Pj4gQ1BVIGNvcmUuCj4+
Pj4+Pj4KPj4+Pj4+PiBJIHNhdyB0aGUgJ2VvcF9kZXNjJyBtYW5pcHVsYXRpb25zIGluIHJlZ3Vs
YXIgY2FzZSBhbmQgeWVzLCB3ZSBjb3VsZAo+Pj4+Pj4+IHVzZSAnbmV4dF90b193YXRjaCcgZmll
bGQganVzdCBhcyBhIGZsYWcgb2YgZGVzY3JpcHRvciBleGlzdGVuY2UsCj4+Pj4+Pj4gYnV0IGl0
IHNlZW1zIHVubmVjZXNzYXJpbHkgY29tcGxpY2F0ZWQuIEFtIEkgbWlzc2luZyBzb21ldGhpbmc/
Cj4+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBTbyBpcyBpdCBhbHdheXMgaW4gdGhlIHNhbWUgTkFQSSBj
b250ZXh0Py4gSSBmb3Jnb3QsIEkgd2FzIHRoaW5raW5nCj4+Pj4+PiB0aGF0IHNvbWVob3cgdGhl
IHNvY2tldCBjb3VsZCBwb3NzaWJseSBtYWtlIHVzZSBvZiBYRFAgZm9yIHRyYW5zbWl0Lgo+Pj4+
Pgo+Pj4+PiBBRl9YRFAgc29ja2V0IG9ubHkgdHJpZ2dlcnMgdHggaW50ZXJydXB0IG9uIG5kb194
c2tfYXN5bmNfeG1pdCgpIHdoaWNoCj4+Pj4+IGlzIHVzZWQgaW4gemVyby1jb3B5IG1vZGUuIFJl
YWwgeG1pdCBoYXBwZW5zIGluc2lkZQo+Pj4+PiBpeGdiZV9wb2xsKCkKPj4+Pj4gIC0+IGl4Z2Jl
X2NsZWFuX3hkcF90eF9pcnEoKQo+Pj4+PiAgICAgLT4gaXhnYmVfeG1pdF96YygpCj4+Pj4+Cj4+
Pj4+IFRoaXMgc2hvdWxkIGJlIG5vdCBwb3NzaWJsZSB0byBib3VuZCBhbm90aGVyIFhEUCBzb2Nr
ZXQgdG8gdGhlIHNhbWUgbmV0ZGV2Cj4+Pj4+IHF1ZXVlLgo+Pj4+Pgo+Pj4+PiBJdCBhbHNvIHBv
c3NpYmxlIHRvIHhtaXQgZnJhbWVzIGluIHhkcF9yaW5nIHdoaWxlIHBlcmZvcm1pbmcgWERQX1RY
L1JFRElSRUNUCj4+Pj4+IGFjdGlvbnMuIFJFRElSRUNUIGNvdWxkIGhhcHBlbiBmcm9tIGRpZmZl
cmVudCBuZXRkZXYgd2l0aCBkaWZmZXJlbnQgTkFQSQo+Pj4+PiBjb250ZXh0LCBidXQgdGhpcyBv
cGVyYXRpb24gaXMgYm91bmQgdG8gc3BlY2lmaWMgQ1BVIGNvcmUgYW5kIGVhY2ggY29yZSBoYXMK
Pj4+Pj4gaXRzIG93biB4ZHBfcmluZy4KPj4+Pj4KPj4+Pj4gSG93ZXZlciwgSSdtIG5vdCBhbiBl
eHBlcnQgaGVyZS4KPj4+Pj4gQmrDtnJuLCBtYXliZSB5b3UgY291bGQgY29tbWVudCBvbiB0aGlz
Pwo+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEFzIGZhciBhcyB0aGUgbG9naWMgdG8gdXNlIEkgd291bGQg
YmUgZ29vZCB3aXRoIGp1c3QgdXNpbmcgYSB2YWx1ZSB5b3UKPj4+Pj4+IGFyZSBhbHJlYWR5IHNl
dHRpbmcgc3VjaCBhcyB0aGUgYnl0ZWNvdW50IHZhbHVlLiBBbGwgdGhhdCB3b3VsZCBuZWVkCj4+
Pj4+PiB0byBoYXBwZW4gaXMgdG8gZ3VhcmFudGVlIHRoYXQgdGhlIHZhbHVlIGlzIGNsZWFyZWQg
aW4gdGhlIFR4IHBhdGguIFNvCj4+Pj4+PiBpZiB5b3UgY2xlYXIgdGhlIGJ5dGVjb3VudCBpbiBp
eGdiZV9jbGVhbl94ZHBfdHhfaXJxIHlvdSBjb3VsZAo+Pj4+Pj4gdGhlb3JldGljYWxseSBqdXN0
IHVzZSB0aGF0IGFzIHdlbGwgdG8gZmxhZyB0aGF0IGEgZGVzY3JpcHRvciBoYXMgYmVlbgo+Pj4+
Pj4gcG9wdWxhdGVkIGFuZCBpcyByZWFkeSB0byBiZSBjbGVhbmVkLiBBc3N1bWluZyB0aGUgbG9n
aWMgYWJvdXQgdGhpcwo+Pj4+Pj4gYWxsIGJlaW5nIGluIHRoZSBzYW1lIE5BUEkgY29udGV4dCBh
bnl3YXkgeW91IHdvdWxkbid0IG5lZWQgdG8gbWVzcwo+Pj4+Pj4gd2l0aCB0aGUgYmFycmllciBz
dHVmZiBJIG1lbnRpb25lZCBiZWZvcmUuCj4+Pj4+Cj4+Pj4+IENoZWNraW5nIHRoZSBudW1iZXIg
b2YgdXNlZCBkZXNjcywgaS5lLiBuZXh0X3RvX3VzZSAtIG5leHRfdG9fY2xlYW4sCj4+Pj4+IG1h
a2VzIGl0ZXJhdGlvbiBpbiB0aGlzIGZ1bmN0aW9uIGxvZ2ljYWxseSBlcXVhbCB0byB0aGUgaXRl
cmF0aW9uIGluc2lkZQo+Pj4+PiAnaXhnYmVfeHNrX2NsZWFuX3R4X3JpbmcoKScuIERvIHlvdSB0
aGluayB3ZSBuZWVkIHRvIGNoYW5nZSB0aGUgbGF0ZXIKPj4+Pj4gZnVuY3Rpb24gdG9vIHRvIGZv
bGxvdyBzYW1lICdieXRlY291bnQnIGFwcHJvYWNoPyBJIGRvbid0IGxpa2UgaGF2aW5nCj4+Pj4+
IHR3byBkaWZmZXJlbnQgd2F5cyB0byBkZXRlcm1pbmUgbnVtYmVyIG9mIHVzZWQgZGVzY3JpcHRv
cnMgaW4gdGhlIHNhbWUgZmlsZS4KPj4+Pj4KPj4+Pj4gQmVzdCByZWdhcmRzLCBJbHlhIE1heGlt
ZXRzLgo+Pj4+Cj4+Pj4gQXMgZmFyIGFzIGl4Z2JlX2NsZWFuX3hkcF90eF9pcnEoKSB2cyBpeGdi
ZV94c2tfY2xlYW5fdHhfcmluZygpLCBJCj4+Pj4gd291bGQgc2F5IHRoYXQgaWYgeW91IGdvdCBy
aWQgb2YgYnVkZ2V0IGFuZCBmcmFtZWQgdGhpbmdzIG1vcmUgbGlrZQo+Pj4+IGhvdyBpeGdiZV94
c2tfY2xlYW5fdHhfcmluZyB3YXMgZnJhbWVkIHdpdGggdGhlIG50YyAhPSBudHUgYmVpbmcKPj4+
PiBvYnZpb3VzIEkgd291bGQgcHJlZmVyIHRvIHNlZSB1cyBnbyB0aGF0IHJvdXRlLgo+Pj4+Cj4+
Pj4gUmVhbGx5IHRoZXJlIGlzIG5vIG5lZWQgZm9yIGJ1ZGdldCBpbiBpeGdiZV9jbGVhbl94ZHBf
dHhfaXJxKCkgaWYgeW91Cj4+Pj4gYXJlIGdvaW5nIHRvIGJlIHdvcmtpbmcgd2l0aCBhIHN0YXRp
YyBudHUgdmFsdWUgc2luY2UgeW91IHdpbGwgb25seQo+Pj4+IGV2ZXIgcHJvY2VzcyBvbmUgaXRl
cmF0aW9uIHRocm91Z2ggdGhlIHJpbmcgYW55d2F5LiBJdCBtaWdodCBtYWtlIG1vcmUKPj4+PiBz
ZW5zZSBpZiB5b3UganVzdCB3ZW50IHRocm91Z2ggYW5kIGdvdCByaWQgb2YgYnVkZ2V0IGFuZCBp
LCBhbmQKPj4+PiBpbnN0ZWFkIHVzZWQgbnRjIGFuZCBudHUgbGlrZSB3aGF0IHdhcyBkb25lIGlu
Cj4+Pj4gaXhnYmVfeHNrX2NsZWFuX3R4X3JpbmcoKS4KPj4+Pgo+Pj4+IFRoYW5rcy4KPj4+Pgo+
Pj4+IC0gQWxleAo+Pj4KPj4+IE5vdCBmYW1pbGlhciB3aXRoIHRoZSBkcml2ZXIgZGV0YWlscy4K
Pj4+IEkgdGVzdGVkIHRoaXMgcGF0Y2ggYW5kIHRoZSBpc3N1ZSBtZW50aW9uZWQgaW4gT1ZTIG1h
aWxpbmcgbGlzdC4KPj4+IGh0dHBzOi8vd3d3Lm1haWwtYXJjaGl2ZS5jb20vb3ZzLWRldkBvcGVu
dnN3aXRjaC5vcmcvbXNnMzUzNjIuaHRtbAo+Pj4gYW5kIGluZGVlZCB0aGUgcHJvYmxlbSBnb2Vz
IGF3YXkuCj4+Cj4+IEdvb2QuIFRoYW5rcyBmb3IgdGVzdGluZyEKPj4KPj4+IEJ1dCBJIHNhdyBh
IGh1Z2UgcGVyZm9ybWFuY2UgZHJvcCwKPj4+IG15IEFGX1hEUCB0eCBwZXJmb3JtYW5jZSBkcm9w
cyBmcm9tID45TXBwcyB0byA8NU1wcHMuCj4+Cj4+IEkgZGlkbid0IGV4cGVjdCBzbyBiaWcgcGVy
Zm9ybWFuY2UgZGlmZmVyZW5jZSB3aXRoIHRoaXMgY2hhbmdlLgo+PiBXaGF0IGlzIHlvdXIgdGVz
dCBzY2VuYXJpbz8KPiAKPiBJIHdhcyB1c2luZyBPVlMgd2l0aCBkdWFsIHBvcnQgTklDLCBzZXR0
aW5nIG9uZSBPcGVuRmxvdyBydWxlCj4gaW5fcG9ydD1ldGgyIGFjdGlvbnM9b3V0cHV0OmV0aDMK
PiBhbmQgZXRoMiBmb3IgcnggYW5kIG1lYXN1cmUgZXRoMyB0eAo+ICdzYXIgLW4gREVWIDEnICBz
aG93cyBwcmV0dHkgaHVnZSBkcm9wIG9uIGV0aDMgdHguCgonc2FyJyBqdXN0IHBhcnNlcyBuZXQg
cHJvY2ZzIHRvIG9idGFpbiBpbnRlcmZhY2Ugc3RhdHMsIGJ1dCBpbnRlcmZhY2Ugc3RhdHMKYXJl
IG5vdCBjb3JyZWN0IGR1ZSB0byB0aGlzIGJ1ZyAoc2FtZSBwYWNrZXRzIGFjY291bnRlZCBzZXZl
cmFsIHRpbWVzKS4KCj4gCj4+IElzIGl0IHBvc3NpYmxlIHRoYXQgeW91J3JlIGFjY291bnRpbmcg
c2FtZQo+PiBwYWNrZXQgc2V2ZXJhbCB0aW1lcyBkdWUgdG8gYnJva2VuIGNvbXBsZXRpb24gcXVl
dWU/Cj4gCj4gVGhhdCdzIHBvc3NpYmxlLgo+IExldCBtZSBkb3VibGUgY2hlY2sgb24geW91ciB2
MiBwYXRjaC4KPiAKPiBARWVsY286IGRvIHlvdSBhbHNvIHNlZSBzb21lIHBlcmZvcm1hbmNlIGRp
ZmZlcmVuY2U/Cj4gCj4gUmVnYXJkcywKPiBXaWxsaWFtCj4gCj4+Cj4+IExvb2tpbmcgYXQgc2Ft
cGxlcy9icGYveGRwc29ja191c2VyLmM6Y29tcGxldGVfdHhfb25seSgpLCBpdCBhY2NvdW50cwo+
PiBzZW50IHBhY2tldHMgKHR4X25wa3RzKSBieSBhY2N1bXVsYXRpbmcgcmVzdWx0cyBvZiB4c2tf
cmluZ19jb25zX19wZWVrKCkKPj4gZm9yIGNvbXBsZXRpb24gcXVldWUsIHNvIGl0J3Mgbm90IGEg
dHJ1c3RlZCBzb3VyY2Ugb2YgcHBzIGluZm9ybWF0aW9uLgo+Pgo+PiBCZXN0IHJlZ2FyZHMsIEls
eWEgTWF4aW1ldHMuCj4+Cj4+Pgo+Pj4gVGVzdGVkIHVzaW5nIGtlcm5lbCA1LjMuMC1yYzMrCj4+
PiAwMzowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0
IENvbnRyb2xsZXIKPj4+IDEwLUdpZ2FiaXQgWDU0MC1BVDIgKHJldiAwMSkKPj4+IFN1YnN5c3Rl
bTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgMTBHIDJQIFg1NDAtdCBBZGFwdGVyCj4+PiBD
b250cm9sOiBJL08tIE1lbSsgQnVzTWFzdGVyKyBTcGVjQ3ljbGUtIE1lbVdJTlYtIFZHQVNub29w
LSBQYXJFcnItCj4+PiBTdGVwcGluZy0gU0VSUi0gRmFzdEIyQi0gRGlzSU5UeCsKPj4+Cj4+PiBS
ZWdhcmRzLAo+Pj4gV2lsbGlhbQo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
