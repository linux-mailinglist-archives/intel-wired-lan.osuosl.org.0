Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 896C297FE4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2019 18:22:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 40852880F9;
	Wed, 21 Aug 2019 16:22:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mV3ttgeoi4GI; Wed, 21 Aug 2019 16:22:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32E148818B;
	Wed, 21 Aug 2019 16:22:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19B6F1BF308
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 16:22:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 149BA86D82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 16:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XrO7-WAroJcB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2019 16:22:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 27D8D86B2D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 16:22:02 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190821162200euoutp0112aabc73c0622cb0880ec3859e87b0f4~8-JzNGVkB3196531965euoutp01z
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 16:22:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190821162200euoutp0112aabc73c0622cb0880ec3859e87b0f4~8-JzNGVkB3196531965euoutp01z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566404520;
 bh=o9OwLt9/WkSr9TsiZ22HcVerYaZHCMss002A6VSz+VY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=QM347XBCVwm4okIAiXPi/8cOqADxaNgyMahFYUtthzwAU8PsPAdbtWZPqUFFsHVyc
 +31p4IbF+wMVPgSWDnXCiML/y6NVibD3gwljf34/7yRU5JW+qx7PJ6m5fwW7zFls1i
 FsZmXtltWO/B9Fa3pzkHRpk8/bvsaT72TrGkB4FQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190821162159eucas1p22949f7d89eb3c051c42232f0528f322c~8-JyWCaAl0529205292eucas1p2A;
 Wed, 21 Aug 2019 16:21:59 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 89.F6.04309.7AF6D5D5; Wed, 21
 Aug 2019 17:21:59 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190821162158eucas1p2f45685b792cc1fae1d62becab15cda24~8-Jxdzpol0535005350eucas1p25;
 Wed, 21 Aug 2019 16:21:58 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190821162158eusmtrp11c7aa05bb3b12307c612da80565912b2~8-JxPW8QO1676516765eusmtrp1N;
 Wed, 21 Aug 2019 16:21:58 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-eb-5d5d6fa744e6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 50.DD.04166.6AF6D5D5; Wed, 21
 Aug 2019 17:21:58 +0100 (BST)
Received: from [106.109.129.180] (unknown [106.109.129.180]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190821162157eusmtip1d58ee00e2fe90c2bf5e66e1a481b6ab0~8-JwZRz180228402284eusmtip1t;
 Wed, 21 Aug 2019 16:21:57 +0000 (GMT)
To: Alexander Duyck <alexander.duyck@gmail.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
From: Ilya Maximets <i.maximets@samsung.com>
Message-ID: <f7d0f7a5-e664-8b72-99c7-63275aff4c18@samsung.com>
Date: Wed, 21 Aug 2019 19:21:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKgT0Uc27+ucd=a_sgTmv5g7_+ZTg1zK4isYJ0H7YWQj3d=Ejg@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se1BMYRjG+/acPee00+a0oXcKsZMZGeUyZnyZphR/nBly+4tYbDrS1FZ2
 K6UxNelO9zGxYiIju8bIWkluY+kmFqmUIrcZrUq0GzWasJ0a/ff75nmf93mfmY8hZF/E7kxk
 TDyvjlFGyykJWdMwZvapilUoVgyfWoz/nO0msW2sm8bjWdUIWx83Urjy/E8Clz/PIHFP2xiF
 27LHaPznzW8xbujLoHDTjV6EX9WVU/iyqYnGDRVz8etWp3WzOKOuS8Td1r6lucq7FhGX19lK
 cAZ9LsU1H0vgyo5/ILih++0UV2DUI85qWLBVEirxD+ejIxN59fKAfZKDVzt+obh785NaK76I
 0tBbtzzkyAC7GgrvWMR5SMLI2MsIPmWaRMLDhkBrtkw9rAi+V2eLpy0TLwtoQahCUFR6acr/
 A4HpczuZhxjGld0I9fWE3TCbjQJ95bnJGYL9SMDZoWbKLlDsMnhy5TGys5QNgBHTIG1nkl0M
 A4ank2lz2B0w/P6RWJhxgebTn0k7O7Lb4Na7jkkmWDdIt+nEAnvCsZtnCHsYsMUMZHWPEvaD
 gN0A2acWCQ1c4WujkRZ4HrSUniAFToXeDAsSvDkIykwTIkEIBGO/mbbvIVhvuFa3XFgZBCOZ
 3gI6Q+egi3CBM5TUlE2FSiEnSybs8ILfD6sIgd2h65uVLkJy7Yxe2hldtDO6aP/HViBSj9z4
 BI0qgtesiuEP+2qUKk1CTITv/liVAf37fi0TjbZaVDceZkIsg+RO0iIfhUImViZqklUmBAwh
 ny1NKg9VyKThyuQjvDp2rzohmteYkAdDyt2kKQ7vd8nYCGU8H8Xzcbx6WhUxju5paMvO+WGZ
 Lu1HD7Xp+hKz/SIv1H709lgfXByoP/Qz/7inz/Cmko5rS/JbN+eu6SlUrr04us0vIDi8hzrv
 jwfS/VZIt3u+2EIF4XOqkFl8w54e92rklfrgpKH0WezWnf3d8eMLhxyud6QYDzjtDgsNCdPp
 LtiyLDUh0RUfvL6ezpX7muWk5qBy5VJCrVH+BYrQQBB6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrDIsWRmVeSWpSXmKPExsVy+t/xu7rL8mNjDb6/1LD4P/c2i8WXn7fZ
 Lf60bWC0+HzkOJvF4oXfmC3mnG9hsbhz5SebxZX2n+wW/2/9ZrU49qKFzeLE5vuMFpd3zWGz
 WHHoBLvFsQViFtcv8Tjwe2xZeZPJY+esu+wei/e8ZPLounGJ2WPTqk42j5PNpR7Tux8ye7zf
 d5XNo2/LKkaPz5vkArii9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxS
 UnMyy1KL9O0S9DLWXvvOWLBXtuLSgudMDYx3xbsYOTkkBEwk/l3sY+9i5OIQEljKKHF38kM2
 iISUxI9fF1ghbGGJP9e62CCK3jNKrDw/Gcjh4BAW8JY4epQZpEZEIFvixo8+VpAaZoEnzBJt
 /y4wQzRcYpL4N20+C0gVm4COxKnVRxhBbF4BO4mvh96yg9gsAqoSbzadAdsmKhAhcXjHLKga
 QYmTM5+A9XIKBEpsv3cNzGYWUJf4M+8SM4QtLtH0ZSUrhC0v0bx1NvMERqFZSNpnIWmZhaRl
 FpKWBYwsqxhFUkuLc9Nziw31ihNzi0vz0vWS83M3MQJjftuxn5t3MF7aGHyIUYCDUYmHd4Ju
 bKwQa2JZcWXuIUYJDmYlEd6KOVGxQrwpiZVVqUX58UWlOanFhxhNgZ6byCwlmpwPTEd5JfGG
 pobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYE3asryvpNN3U5/ZtspC3
 wwWtXXVfLhSZdBVYtM47qdKT/sj5UozN1ahrpV9E0758+vzs37EX78rdvveVFmlPTFiiIT51
 8eOGF6GcF45Eb3WW6fiWPFXrZfkfefP8uebHVQ5rLreZk+66ccP/Nk++vL6Ekp5T+4N8bYpj
 F7mJM/AW7PkedPW8EktxRqKhFnNRcSIAFIcfWQ8DAAA=
X-CMS-MailID: 20190821162158eucas1p2f45685b792cc1fae1d62becab15cda24
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
 William Tu <u9012063@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjEuMDguMjAxOSA0OjE3LCBBbGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gT24gVHVlLCBBdWcg
MjAsIDIwMTkgYXQgODo1OCBBTSBJbHlhIE1heGltZXRzIDxpLm1heGltZXRzQHNhbXN1bmcuY29t
PiB3cm90ZToKPj4KPj4gT24gMjAuMDguMjAxOSAxODozNSwgQWxleGFuZGVyIER1eWNrIHdyb3Rl
Ogo+Pj4gT24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgODoxOCBBTSBJbHlhIE1heGltZXRzIDxpLm1h
eGltZXRzQHNhbXN1bmcuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IFR4IGNvZGUgZG9lc24ndCBjbGVh
ciB0aGUgZGVzY3JpcHRvciBzdGF0dXMgYWZ0ZXIgY2xlYW5pbmcuCj4+Pj4gU28sIGlmIHRoZSBi
dWRnZXQgaXMgbGFyZ2VyIHRoYW4gbnVtYmVyIG9mIHVzZWQgZWxlbXMgaW4gYSByaW5nLCBzb21l
Cj4+Pj4gZGVzY3JpcHRvcnMgd2lsbCBiZSBhY2NvdW50ZWQgdHdpY2UgYW5kIHhza191bWVtX2Nv
bXBsZXRlX3R4IHdpbGwgbW92ZQo+Pj4+IHByb2RfdGFpbCBmYXIgYmV5b25kIHRoZSBwcm9kX2hl
YWQgYnJlYWtpbmcgdGhlIGNvbWxldGlvbiBxdWV1ZSByaW5nLgo+Pj4+Cj4+Pj4gRml4IHRoYXQg
YnkgbGltaXRpbmcgdGhlIG51bWJlciBvZiBkZXNjcmlwdG9ycyB0byBjbGVhbiBieSB0aGUgbnVt
YmVyCj4+Pj4gb2YgdXNlZCBkZXNjcmlwdG9ycyBpbiB0aGUgdHggcmluZy4KPj4+Pgo+Pj4+IEZp
eGVzOiA4MjIxYzVlYmE4YzEgKCJpeGdiZTogYWRkIEFGX1hEUCB6ZXJvLWNvcHkgVHggc3VwcG9y
dCIpCj4+Pj4gU2lnbmVkLW9mZi1ieTogSWx5YSBNYXhpbWV0cyA8aS5tYXhpbWV0c0BzYW1zdW5n
LmNvbT4KPj4+Cj4+PiBJJ20gbm90IHN1cmUgdGhpcyBpcyB0aGUgYmVzdCB3YXkgdG8gZ28uIE15
IHByZWZlcmVuY2Ugd291bGQgYmUgdG8KPj4+IGhhdmUgc29tZXRoaW5nIGluIHRoZSByaW5nIHRo
YXQgd291bGQgcHJldmVudCB1cyBmcm9tIHJhY2luZyB3aGljaCBJCj4+PiBkb24ndCB0aGluayB0
aGlzIHJlYWxseSBhZGRyZXNzZXMuIEkgYW0gcHJldHR5IHN1cmUgdGhpcyBjb2RlIGlzIHNhZmUK
Pj4+IG9uIHg4NiBidXQgSSB3b3VsZCBiZSB3b3JyaWVkIGFib3V0IHdlYWsgb3JkZXJlZCBzeXN0
ZW1zIHN1Y2ggYXMKPj4+IFBvd2VyUEMuCj4+Pgo+Pj4gSXQgbWlnaHQgbWFrZSBzZW5zZSB0byBs
b29rIGF0IGFkZGluZyB0aGUgZW9wX2Rlc2MgbG9naWMgbGlrZSB3ZSBoYXZlCj4+PiBpbiB0aGUg
cmVndWxhciBwYXRoIHdpdGggYSBwcm9wZXIgYmFycmllciBiZWZvcmUgd2Ugd3JpdGUgaXQgYW5k
IGFmdGVyCj4+PiB3ZSByZWFkIGl0LiBTbyBmb3IgZXhhbXBsZSB3ZSBjb3VsZCBob2xkIG9mIG9u
IHdyaXRpbmcgdGhlIGJ5dGVjb3VudAo+Pj4gdmFsdWUgdW50aWwgdGhlIGVuZCBvZiBhbiBpdGVy
YXRpb24gYW5kIGNhbGwgc21wX3dtYiBiZWZvcmUgd2Ugd3JpdGUKPj4+IGl0LiBUaGVuIG9uIHRo
ZSBjbGVhbnVwIHdlIGNvdWxkIHJlYWQgaXQgYW5kIGlmIGl0IGlzIG5vbi16ZXJvIHdlIHRha2UK
Pj4+IGFuIHNtcF9ybWIgYmVmb3JlIHByb2NlZWRpbmcgZnVydGhlciB0byBwcm9jZXNzIHRoZSBU
eCBkZXNjcmlwdG9yIGFuZAo+Pj4gY2xlYXJpbmcgdGhlIHZhbHVlLiBPdGhlcndpc2UgdGhpcyBj
b2RlIGlzIGdvaW5nIHRvIGp1c3Qga2VlcCBwb3BwaW5nCj4+PiB1cCB3aXRoIGlzc3Vlcy4KPj4K
Pj4gQnV0LCB1bmxpa2UgcmVndWxhciBjYXNlLCB4ZHAgemVyby1jb3B5IHhtaXQgYW5kIGNsZWFu
IGZvciBwYXJ0aWN1bGFyCj4+IHR4IHJpbmcgYWx3YXlzIGhhcHBlbnMgaW4gdGhlIHNhbWUgTkFQ
SSBjb250ZXh0IGFuZCBldmVuIG9uIHRoZSBzYW1lCj4+IENQVSBjb3JlLgo+Pgo+PiBJIHNhdyB0
aGUgJ2VvcF9kZXNjJyBtYW5pcHVsYXRpb25zIGluIHJlZ3VsYXIgY2FzZSBhbmQgeWVzLCB3ZSBj
b3VsZAo+PiB1c2UgJ25leHRfdG9fd2F0Y2gnIGZpZWxkIGp1c3QgYXMgYSBmbGFnIG9mIGRlc2Ny
aXB0b3IgZXhpc3RlbmNlLAo+PiBidXQgaXQgc2VlbXMgdW5uZWNlc3NhcmlseSBjb21wbGljYXRl
ZC4gQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8KPj4KPiAKPiBTbyBpcyBpdCBhbHdheXMgaW4gdGhl
IHNhbWUgTkFQSSBjb250ZXh0Py4gSSBmb3Jnb3QsIEkgd2FzIHRoaW5raW5nCj4gdGhhdCBzb21l
aG93IHRoZSBzb2NrZXQgY291bGQgcG9zc2libHkgbWFrZSB1c2Ugb2YgWERQIGZvciB0cmFuc21p
dC4KCkFGX1hEUCBzb2NrZXQgb25seSB0cmlnZ2VycyB0eCBpbnRlcnJ1cHQgb24gbmRvX3hza19h
c3luY194bWl0KCkgd2hpY2gKaXMgdXNlZCBpbiB6ZXJvLWNvcHkgbW9kZS4gUmVhbCB4bWl0IGhh
cHBlbnMgaW5zaWRlCml4Z2JlX3BvbGwoKQogLT4gaXhnYmVfY2xlYW5feGRwX3R4X2lycSgpCiAg
ICAtPiBpeGdiZV94bWl0X3pjKCkKClRoaXMgc2hvdWxkIGJlIG5vdCBwb3NzaWJsZSB0byBib3Vu
ZCBhbm90aGVyIFhEUCBzb2NrZXQgdG8gdGhlIHNhbWUgbmV0ZGV2CnF1ZXVlLgoKSXQgYWxzbyBw
b3NzaWJsZSB0byB4bWl0IGZyYW1lcyBpbiB4ZHBfcmluZyB3aGlsZSBwZXJmb3JtaW5nIFhEUF9U
WC9SRURJUkVDVAphY3Rpb25zLiBSRURJUkVDVCBjb3VsZCBoYXBwZW4gZnJvbSBkaWZmZXJlbnQg
bmV0ZGV2IHdpdGggZGlmZmVyZW50IE5BUEkKY29udGV4dCwgYnV0IHRoaXMgb3BlcmF0aW9uIGlz
IGJvdW5kIHRvIHNwZWNpZmljIENQVSBjb3JlIGFuZCBlYWNoIGNvcmUgaGFzCml0cyBvd24geGRw
X3JpbmcuCgpIb3dldmVyLCBJJ20gbm90IGFuIGV4cGVydCBoZXJlLgpCasO2cm4sIG1heWJlIHlv
dSBjb3VsZCBjb21tZW50IG9uIHRoaXM/Cgo+IAo+IEFzIGZhciBhcyB0aGUgbG9naWMgdG8gdXNl
IEkgd291bGQgYmUgZ29vZCB3aXRoIGp1c3QgdXNpbmcgYSB2YWx1ZSB5b3UKPiBhcmUgYWxyZWFk
eSBzZXR0aW5nIHN1Y2ggYXMgdGhlIGJ5dGVjb3VudCB2YWx1ZS4gQWxsIHRoYXQgd291bGQgbmVl
ZAo+IHRvIGhhcHBlbiBpcyB0byBndWFyYW50ZWUgdGhhdCB0aGUgdmFsdWUgaXMgY2xlYXJlZCBp
biB0aGUgVHggcGF0aC4gU28KPiBpZiB5b3UgY2xlYXIgdGhlIGJ5dGVjb3VudCBpbiBpeGdiZV9j
bGVhbl94ZHBfdHhfaXJxIHlvdSBjb3VsZAo+IHRoZW9yZXRpY2FsbHkganVzdCB1c2UgdGhhdCBh
cyB3ZWxsIHRvIGZsYWcgdGhhdCBhIGRlc2NyaXB0b3IgaGFzIGJlZW4KPiBwb3B1bGF0ZWQgYW5k
IGlzIHJlYWR5IHRvIGJlIGNsZWFuZWQuIEFzc3VtaW5nIHRoZSBsb2dpYyBhYm91dCB0aGlzCj4g
YWxsIGJlaW5nIGluIHRoZSBzYW1lIE5BUEkgY29udGV4dCBhbnl3YXkgeW91IHdvdWxkbid0IG5l
ZWQgdG8gbWVzcwo+IHdpdGggdGhlIGJhcnJpZXIgc3R1ZmYgSSBtZW50aW9uZWQgYmVmb3JlLgoK
Q2hlY2tpbmcgdGhlIG51bWJlciBvZiB1c2VkIGRlc2NzLCBpLmUuIG5leHRfdG9fdXNlIC0gbmV4
dF90b19jbGVhbiwKbWFrZXMgaXRlcmF0aW9uIGluIHRoaXMgZnVuY3Rpb24gbG9naWNhbGx5IGVx
dWFsIHRvIHRoZSBpdGVyYXRpb24gaW5zaWRlCidpeGdiZV94c2tfY2xlYW5fdHhfcmluZygpJy4g
RG8geW91IHRoaW5rIHdlIG5lZWQgdG8gY2hhbmdlIHRoZSBsYXRlcgpmdW5jdGlvbiB0b28gdG8g
Zm9sbG93IHNhbWUgJ2J5dGVjb3VudCcgYXBwcm9hY2g/IEkgZG9uJ3QgbGlrZSBoYXZpbmcKdHdv
IGRpZmZlcmVudCB3YXlzIHRvIGRldGVybWluZSBudW1iZXIgb2YgdXNlZCBkZXNjcmlwdG9ycyBp
biB0aGUgc2FtZSBmaWxlLgoKQmVzdCByZWdhcmRzLCBJbHlhIE1heGltZXRzLgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
