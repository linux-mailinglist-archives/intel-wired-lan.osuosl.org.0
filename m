Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ECD98D67
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 10:17:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 684D92152E;
	Thu, 22 Aug 2019 08:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2BP9AWNqg6Qv; Thu, 22 Aug 2019 08:17:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B73E920774;
	Thu, 22 Aug 2019 08:17:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19EE71BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 08:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 15C55204FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 08:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id weS1pbJu4YTH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 08:17:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 0CBAD204C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 08:17:23 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190822081721euoutp01c39eaffc2a7ef7d6a750a794f5933f63~9ML7UN2ZE1097110971euoutp019
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 08:17:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190822081721euoutp01c39eaffc2a7ef7d6a750a794f5933f63~9ML7UN2ZE1097110971euoutp019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566461841;
 bh=eH3VAAcLRYwEU2jjSTk2TX56nvxFUZ0pGc8FxPpOx10=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=CEVkgJpqlmitBpoTgBdgpD1urSxXxgP1RWEgMET7Se53rVn9lWqKjUe4VOuZORI8p
 Df2leGzW26YMGIT/RYMpA5xO0Ca1PubjbS97oGoEcKcxlp6+5inMRm1AbCM3ie0B6a
 kfgcIElLShRfWRV4yXDrPk1YCN+szwKok24WbEUs=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190822081720eucas1p29ee1e2d981cc9fa43bf41c748e1d8f2e~9ML6khgqf2927229272eucas1p2M;
 Thu, 22 Aug 2019 08:17:20 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 53.84.04374.09F4E5D5; Thu, 22
 Aug 2019 09:17:20 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190822081719eucas1p13b7b5abe25b1838b38e77002a5daa5c3~9ML52Wn7g2311423114eucas1p1H;
 Thu, 22 Aug 2019 08:17:19 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190822081719eusmtrp118abc76009661efb2087d6ca197b26bf~9ML5nhRmO2148421484eusmtrp1n;
 Thu, 22 Aug 2019 08:17:19 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-cb-5d5e4f90955c
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id FE.1D.04117.F8F4E5D5; Thu, 22
 Aug 2019 09:17:19 +0100 (BST)
Received: from [106.109.129.180] (unknown [106.109.129.180]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190822081718eusmtip28624971d74a2604a01884c8f1e9f78b1~9ML4wwYRV2944029440eusmtip2S;
 Thu, 22 Aug 2019 08:17:18 +0000 (GMT)
To: William Tu <u9012063@gmail.com>, Alexander Duyck
 <alexander.duyck@gmail.com>
From: Ilya Maximets <i.maximets@samsung.com>
Message-ID: <cbf7c51b-9ce7-6ef6-32c4-981258d4af4c@samsung.com>
Date: Thu, 22 Aug 2019 11:17:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CALDO+SZCbxEEwCS6MyHk-Cp_LJ33N=QFqwZ8uRm0e-PBRgxRYw@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGvZ3pzLRSGUqVE0RJGjVCFNwexsQ9mEz0wS0RRFCrjAWlVTqC
 ghsKoqJRcINWlJJqWHyAsEWQkFjKrjUCCopEVFDBoMEipJaIDgORt++e/57/nD85FKbskXpT
 UfpjnEGviVYTcry8zmlfnLZlT/iS69U+zNi9TpwZcnaSzGhKEWIctnqCseQMY0zWi2Scedfm
 JJi2i06SGXvrkjJ1X5MJpqHkPWJaK7MIJs/aQDJ15llMe4vbOne2NP+NhK0wdZGspapPwqZ2
 tGBsccFlgm1MimUzrnzA2B/Vrwj2WmkBYh3Fc7fKQ+WrIrjoqDjOELhmnzzym+MTOmoOPPHk
 dSuZiMoWpCIZBfQKaOqxkKlITinpPAQD5jZMfAwhGCl0TigOBMaXZnKypaLWiUQhF0FO9v2J
 lkEEH2tt0lREUZ70ZqitxYQGFb0dMqu6CIExOgmHF+kHBSboRdD0yIaE7wp6DZS4fIUyTs+H
 4Zyu8Vkz6RD42V0jFVhBe0CjsQcXWEZvg/SMdly09ILzQ/lSkX0hqewuJu55m4KmjtOCPdBB
 YCo6JZY9ob++dCKKDzTfvIqLfBbeJ/eNxwL6EoIM6x+JKKyF0m92UvDBaD8orAwULdfDrwt+
 Is6AjgEPcYEZcKM8AxPLCriUohQ95oHrae7EXt7w5ruDTENq05RYpilRTFOimP6PNSO8AHlx
 sbxOy/HL9dzxAF6j42P12oADR3TF6N/tNf+p//UYVY/utyKaQmo3Rdri8HClVBPHx+usCChM
 rVKcyAoNVyoiNPEJnOHIXkNsNMdb0WwKV3spTk7r3q2ktZpj3GGOO8oZJlUJJfNORDKVpe/V
 1Wm/5476uId1uYcFRcr1xhB70EjCzpWFp5d8WWZ7Wkhl5htbZTWfr4xoY1a32PyDn/n1Fm3s
 39S38GfbLonqgXvV82WGXsvw52bJliJ59qhR1zzdlu77cPBOWvoh14amxLjAmM1+t2rmrPTu
 PXM5mq8Ptq+N6+YPn9uxqV+N85Gapf6Ygdf8BZdSLFR3AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrNIsWRmVeSWpSXmKPExsVy+t/xe7r9/nGxBot2aln8n3ubxeLLz9vs
 Fn/aNjBafD5ynM1i8cJvzBZzzrewWNy58pPN4kr7T3aL/7d+s1oce9HCZnFi831Gi8u75rBZ
 rDh0gt3i2AIxi+uXeBz4PbasvMnksXPWXXaPxXteMnl03bjE7LFpVSebx8nmUo/p3Q+ZPd7v
 u8rm0bdlFaPH501yAVxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYp
 qTmZZalF+nYJehmvPz9mLFigX7H72mX2Bsatal2MnBwSAiYSO4/+ZOxi5OIQEljKKNH+cB0b
 REJK4sevC6wQtrDEn2tdbBBF7xklDp36DdTBwSEs4C1x9CgzSI2IQJBEx5ZLrCA1zAKtLBKz
 FhxggWiYyiLR+nASO0gVm4COxKnVR8CaeQXsJDb/lgcJswioSnxbeBesRFQgQuLwjlmMIDav
 gKDEyZlPWEBsToFAiYnTr4PZzALqEn/mXWKGsMUlmr6sZIWw5SWat85mnsAoNAtJ+ywkLbOQ
 tMxC0rKAkWUVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYMRvO/Zzyw7GrnfBhxgFOBiVeHgn
 6MbGCrEmlhVX5h5ilOBgVhLhrZgTFSvEm5JYWZValB9fVJqTWnyI0RTouYnMUqLJ+cBklFcS
 b2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgVFmR45g/nuFvO4W5kcs
 Zy4tXnL79LzTt019ligbLD5ZzH5AoiBN4VDoVP1nZ91Et8ziS/ZI3CG9Oahh06sXnHd25vMm
 hWjpTpihIBPza/qHDQH7tT5fWGH2Wbvh5sJvPF9P6C3aXHvQy/f3t7X/jBd8/ZcibTy9K/jc
 bP6lRy+3d8atjO0/Nc1ZiaU4I9FQi7moOBEAWMOQ/A4DAAA=
X-CMS-MailID: 20190822081719eucas1p13b7b5abe25b1838b38e77002a5daa5c3
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

T24gMjIuMDguMjAxOSAwOjM4LCBXaWxsaWFtIFR1IHdyb3RlOgo+IE9uIFdlZCwgQXVnIDIxLCAy
MDE5IGF0IDk6NTcgQU0gQWxleGFuZGVyIER1eWNrCj4gPGFsZXhhbmRlci5kdXlja0BnbWFpbC5j
b20+IHdyb3RlOgo+Pgo+PiBPbiBXZWQsIEF1ZyAyMSwgMjAxOSBhdCA5OjIyIEFNIElseWEgTWF4
aW1ldHMgPGkubWF4aW1ldHNAc2Ftc3VuZy5jb20+IHdyb3RlOgo+Pj4KPj4+IE9uIDIxLjA4LjIw
MTkgNDoxNywgQWxleGFuZGVyIER1eWNrIHdyb3RlOgo+Pj4+IE9uIFR1ZSwgQXVnIDIwLCAyMDE5
IGF0IDg6NTggQU0gSWx5YSBNYXhpbWV0cyA8aS5tYXhpbWV0c0BzYW1zdW5nLmNvbT4gd3JvdGU6
Cj4+Pj4+Cj4+Pj4+IE9uIDIwLjA4LjIwMTkgMTg6MzUsIEFsZXhhbmRlciBEdXljayB3cm90ZToK
Pj4+Pj4+IE9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDg6MTggQU0gSWx5YSBNYXhpbWV0cyA8aS5t
YXhpbWV0c0BzYW1zdW5nLmNvbT4gd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+PiBUeCBjb2RlIGRvZXNu
J3QgY2xlYXIgdGhlIGRlc2NyaXB0b3Igc3RhdHVzIGFmdGVyIGNsZWFuaW5nLgo+Pj4+Pj4+IFNv
LCBpZiB0aGUgYnVkZ2V0IGlzIGxhcmdlciB0aGFuIG51bWJlciBvZiB1c2VkIGVsZW1zIGluIGEg
cmluZywgc29tZQo+Pj4+Pj4+IGRlc2NyaXB0b3JzIHdpbGwgYmUgYWNjb3VudGVkIHR3aWNlIGFu
ZCB4c2tfdW1lbV9jb21wbGV0ZV90eCB3aWxsIG1vdmUKPj4+Pj4+PiBwcm9kX3RhaWwgZmFyIGJl
eW9uZCB0aGUgcHJvZF9oZWFkIGJyZWFraW5nIHRoZSBjb21sZXRpb24gcXVldWUgcmluZy4KPj4+
Pj4+Pgo+Pj4+Pj4+IEZpeCB0aGF0IGJ5IGxpbWl0aW5nIHRoZSBudW1iZXIgb2YgZGVzY3JpcHRv
cnMgdG8gY2xlYW4gYnkgdGhlIG51bWJlcgo+Pj4+Pj4+IG9mIHVzZWQgZGVzY3JpcHRvcnMgaW4g
dGhlIHR4IHJpbmcuCj4+Pj4+Pj4KPj4+Pj4+PiBGaXhlczogODIyMWM1ZWJhOGMxICgiaXhnYmU6
IGFkZCBBRl9YRFAgemVyby1jb3B5IFR4IHN1cHBvcnQiKQo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IElseWEgTWF4aW1ldHMgPGkubWF4aW1ldHNAc2Ftc3VuZy5jb20+Cj4+Pj4+Pgo+Pj4+Pj4gSSdt
IG5vdCBzdXJlIHRoaXMgaXMgdGhlIGJlc3Qgd2F5IHRvIGdvLiBNeSBwcmVmZXJlbmNlIHdvdWxk
IGJlIHRvCj4+Pj4+PiBoYXZlIHNvbWV0aGluZyBpbiB0aGUgcmluZyB0aGF0IHdvdWxkIHByZXZl
bnQgdXMgZnJvbSByYWNpbmcgd2hpY2ggSQo+Pj4+Pj4gZG9uJ3QgdGhpbmsgdGhpcyByZWFsbHkg
YWRkcmVzc2VzLiBJIGFtIHByZXR0eSBzdXJlIHRoaXMgY29kZSBpcyBzYWZlCj4+Pj4+PiBvbiB4
ODYgYnV0IEkgd291bGQgYmUgd29ycmllZCBhYm91dCB3ZWFrIG9yZGVyZWQgc3lzdGVtcyBzdWNo
IGFzCj4+Pj4+PiBQb3dlclBDLgo+Pj4+Pj4KPj4+Pj4+IEl0IG1pZ2h0IG1ha2Ugc2Vuc2UgdG8g
bG9vayBhdCBhZGRpbmcgdGhlIGVvcF9kZXNjIGxvZ2ljIGxpa2Ugd2UgaGF2ZQo+Pj4+Pj4gaW4g
dGhlIHJlZ3VsYXIgcGF0aCB3aXRoIGEgcHJvcGVyIGJhcnJpZXIgYmVmb3JlIHdlIHdyaXRlIGl0
IGFuZCBhZnRlcgo+Pj4+Pj4gd2UgcmVhZCBpdC4gU28gZm9yIGV4YW1wbGUgd2UgY291bGQgaG9s
ZCBvZiBvbiB3cml0aW5nIHRoZSBieXRlY291bnQKPj4+Pj4+IHZhbHVlIHVudGlsIHRoZSBlbmQg
b2YgYW4gaXRlcmF0aW9uIGFuZCBjYWxsIHNtcF93bWIgYmVmb3JlIHdlIHdyaXRlCj4+Pj4+PiBp
dC4gVGhlbiBvbiB0aGUgY2xlYW51cCB3ZSBjb3VsZCByZWFkIGl0IGFuZCBpZiBpdCBpcyBub24t
emVybyB3ZSB0YWtlCj4+Pj4+PiBhbiBzbXBfcm1iIGJlZm9yZSBwcm9jZWVkaW5nIGZ1cnRoZXIg
dG8gcHJvY2VzcyB0aGUgVHggZGVzY3JpcHRvciBhbmQKPj4+Pj4+IGNsZWFyaW5nIHRoZSB2YWx1
ZS4gT3RoZXJ3aXNlIHRoaXMgY29kZSBpcyBnb2luZyB0byBqdXN0IGtlZXAgcG9wcGluZwo+Pj4+
Pj4gdXAgd2l0aCBpc3N1ZXMuCj4+Pj4+Cj4+Pj4+IEJ1dCwgdW5saWtlIHJlZ3VsYXIgY2FzZSwg
eGRwIHplcm8tY29weSB4bWl0IGFuZCBjbGVhbiBmb3IgcGFydGljdWxhcgo+Pj4+PiB0eCByaW5n
IGFsd2F5cyBoYXBwZW5zIGluIHRoZSBzYW1lIE5BUEkgY29udGV4dCBhbmQgZXZlbiBvbiB0aGUg
c2FtZQo+Pj4+PiBDUFUgY29yZS4KPj4+Pj4KPj4+Pj4gSSBzYXcgdGhlICdlb3BfZGVzYycgbWFu
aXB1bGF0aW9ucyBpbiByZWd1bGFyIGNhc2UgYW5kIHllcywgd2UgY291bGQKPj4+Pj4gdXNlICdu
ZXh0X3RvX3dhdGNoJyBmaWVsZCBqdXN0IGFzIGEgZmxhZyBvZiBkZXNjcmlwdG9yIGV4aXN0ZW5j
ZSwKPj4+Pj4gYnV0IGl0IHNlZW1zIHVubmVjZXNzYXJpbHkgY29tcGxpY2F0ZWQuIEFtIEkgbWlz
c2luZyBzb21ldGhpbmc/Cj4+Pj4+Cj4+Pj4KPj4+PiBTbyBpcyBpdCBhbHdheXMgaW4gdGhlIHNh
bWUgTkFQSSBjb250ZXh0Py4gSSBmb3Jnb3QsIEkgd2FzIHRoaW5raW5nCj4+Pj4gdGhhdCBzb21l
aG93IHRoZSBzb2NrZXQgY291bGQgcG9zc2libHkgbWFrZSB1c2Ugb2YgWERQIGZvciB0cmFuc21p
dC4KPj4+Cj4+PiBBRl9YRFAgc29ja2V0IG9ubHkgdHJpZ2dlcnMgdHggaW50ZXJydXB0IG9uIG5k
b194c2tfYXN5bmNfeG1pdCgpIHdoaWNoCj4+PiBpcyB1c2VkIGluIHplcm8tY29weSBtb2RlLiBS
ZWFsIHhtaXQgaGFwcGVucyBpbnNpZGUKPj4+IGl4Z2JlX3BvbGwoKQo+Pj4gIC0+IGl4Z2JlX2Ns
ZWFuX3hkcF90eF9pcnEoKQo+Pj4gICAgIC0+IGl4Z2JlX3htaXRfemMoKQo+Pj4KPj4+IFRoaXMg
c2hvdWxkIGJlIG5vdCBwb3NzaWJsZSB0byBib3VuZCBhbm90aGVyIFhEUCBzb2NrZXQgdG8gdGhl
IHNhbWUgbmV0ZGV2Cj4+PiBxdWV1ZS4KPj4+Cj4+PiBJdCBhbHNvIHBvc3NpYmxlIHRvIHhtaXQg
ZnJhbWVzIGluIHhkcF9yaW5nIHdoaWxlIHBlcmZvcm1pbmcgWERQX1RYL1JFRElSRUNUCj4+PiBh
Y3Rpb25zLiBSRURJUkVDVCBjb3VsZCBoYXBwZW4gZnJvbSBkaWZmZXJlbnQgbmV0ZGV2IHdpdGgg
ZGlmZmVyZW50IE5BUEkKPj4+IGNvbnRleHQsIGJ1dCB0aGlzIG9wZXJhdGlvbiBpcyBib3VuZCB0
byBzcGVjaWZpYyBDUFUgY29yZSBhbmQgZWFjaCBjb3JlIGhhcwo+Pj4gaXRzIG93biB4ZHBfcmlu
Zy4KPj4+Cj4+PiBIb3dldmVyLCBJJ20gbm90IGFuIGV4cGVydCBoZXJlLgo+Pj4gQmrDtnJuLCBt
YXliZSB5b3UgY291bGQgY29tbWVudCBvbiB0aGlzPwo+Pj4KPj4+Pgo+Pj4+IEFzIGZhciBhcyB0
aGUgbG9naWMgdG8gdXNlIEkgd291bGQgYmUgZ29vZCB3aXRoIGp1c3QgdXNpbmcgYSB2YWx1ZSB5
b3UKPj4+PiBhcmUgYWxyZWFkeSBzZXR0aW5nIHN1Y2ggYXMgdGhlIGJ5dGVjb3VudCB2YWx1ZS4g
QWxsIHRoYXQgd291bGQgbmVlZAo+Pj4+IHRvIGhhcHBlbiBpcyB0byBndWFyYW50ZWUgdGhhdCB0
aGUgdmFsdWUgaXMgY2xlYXJlZCBpbiB0aGUgVHggcGF0aC4gU28KPj4+PiBpZiB5b3UgY2xlYXIg
dGhlIGJ5dGVjb3VudCBpbiBpeGdiZV9jbGVhbl94ZHBfdHhfaXJxIHlvdSBjb3VsZAo+Pj4+IHRo
ZW9yZXRpY2FsbHkganVzdCB1c2UgdGhhdCBhcyB3ZWxsIHRvIGZsYWcgdGhhdCBhIGRlc2NyaXB0
b3IgaGFzIGJlZW4KPj4+PiBwb3B1bGF0ZWQgYW5kIGlzIHJlYWR5IHRvIGJlIGNsZWFuZWQuIEFz
c3VtaW5nIHRoZSBsb2dpYyBhYm91dCB0aGlzCj4+Pj4gYWxsIGJlaW5nIGluIHRoZSBzYW1lIE5B
UEkgY29udGV4dCBhbnl3YXkgeW91IHdvdWxkbid0IG5lZWQgdG8gbWVzcwo+Pj4+IHdpdGggdGhl
IGJhcnJpZXIgc3R1ZmYgSSBtZW50aW9uZWQgYmVmb3JlLgo+Pj4KPj4+IENoZWNraW5nIHRoZSBu
dW1iZXIgb2YgdXNlZCBkZXNjcywgaS5lLiBuZXh0X3RvX3VzZSAtIG5leHRfdG9fY2xlYW4sCj4+
PiBtYWtlcyBpdGVyYXRpb24gaW4gdGhpcyBmdW5jdGlvbiBsb2dpY2FsbHkgZXF1YWwgdG8gdGhl
IGl0ZXJhdGlvbiBpbnNpZGUKPj4+ICdpeGdiZV94c2tfY2xlYW5fdHhfcmluZygpJy4gRG8geW91
IHRoaW5rIHdlIG5lZWQgdG8gY2hhbmdlIHRoZSBsYXRlcgo+Pj4gZnVuY3Rpb24gdG9vIHRvIGZv
bGxvdyBzYW1lICdieXRlY291bnQnIGFwcHJvYWNoPyBJIGRvbid0IGxpa2UgaGF2aW5nCj4+PiB0
d28gZGlmZmVyZW50IHdheXMgdG8gZGV0ZXJtaW5lIG51bWJlciBvZiB1c2VkIGRlc2NyaXB0b3Jz
IGluIHRoZSBzYW1lIGZpbGUuCj4+Pgo+Pj4gQmVzdCByZWdhcmRzLCBJbHlhIE1heGltZXRzLgo+
Pgo+PiBBcyBmYXIgYXMgaXhnYmVfY2xlYW5feGRwX3R4X2lycSgpIHZzIGl4Z2JlX3hza19jbGVh
bl90eF9yaW5nKCksIEkKPj4gd291bGQgc2F5IHRoYXQgaWYgeW91IGdvdCByaWQgb2YgYnVkZ2V0
IGFuZCBmcmFtZWQgdGhpbmdzIG1vcmUgbGlrZQo+PiBob3cgaXhnYmVfeHNrX2NsZWFuX3R4X3Jp
bmcgd2FzIGZyYW1lZCB3aXRoIHRoZSBudGMgIT0gbnR1IGJlaW5nCj4+IG9idmlvdXMgSSB3b3Vs
ZCBwcmVmZXIgdG8gc2VlIHVzIGdvIHRoYXQgcm91dGUuCj4+Cj4+IFJlYWxseSB0aGVyZSBpcyBu
byBuZWVkIGZvciBidWRnZXQgaW4gaXhnYmVfY2xlYW5feGRwX3R4X2lycSgpIGlmIHlvdQo+PiBh
cmUgZ29pbmcgdG8gYmUgd29ya2luZyB3aXRoIGEgc3RhdGljIG50dSB2YWx1ZSBzaW5jZSB5b3Ug
d2lsbCBvbmx5Cj4+IGV2ZXIgcHJvY2VzcyBvbmUgaXRlcmF0aW9uIHRocm91Z2ggdGhlIHJpbmcg
YW55d2F5LiBJdCBtaWdodCBtYWtlIG1vcmUKPj4gc2Vuc2UgaWYgeW91IGp1c3Qgd2VudCB0aHJv
dWdoIGFuZCBnb3QgcmlkIG9mIGJ1ZGdldCBhbmQgaSwgYW5kCj4+IGluc3RlYWQgdXNlZCBudGMg
YW5kIG50dSBsaWtlIHdoYXQgd2FzIGRvbmUgaW4KPj4gaXhnYmVfeHNrX2NsZWFuX3R4X3Jpbmco
KS4KPj4KPj4gVGhhbmtzLgo+Pgo+PiAtIEFsZXgKPiAKPiBOb3QgZmFtaWxpYXIgd2l0aCB0aGUg
ZHJpdmVyIGRldGFpbHMuCj4gSSB0ZXN0ZWQgdGhpcyBwYXRjaCBhbmQgdGhlIGlzc3VlIG1lbnRp
b25lZCBpbiBPVlMgbWFpbGluZyBsaXN0Lgo+IGh0dHBzOi8vd3d3Lm1haWwtYXJjaGl2ZS5jb20v
b3ZzLWRldkBvcGVudnN3aXRjaC5vcmcvbXNnMzUzNjIuaHRtbAo+IGFuZCBpbmRlZWQgdGhlIHBy
b2JsZW0gZ29lcyBhd2F5LgoKR29vZC4gVGhhbmtzIGZvciB0ZXN0aW5nIQoKPiBCdXQgSSBzYXcg
YSBodWdlIHBlcmZvcm1hbmNlIGRyb3AsCj4gbXkgQUZfWERQIHR4IHBlcmZvcm1hbmNlIGRyb3Bz
IGZyb20gPjlNcHBzIHRvIDw1TXBwcy4KCkkgZGlkbid0IGV4cGVjdCBzbyBiaWcgcGVyZm9ybWFu
Y2UgZGlmZmVyZW5jZSB3aXRoIHRoaXMgY2hhbmdlLgpXaGF0IGlzIHlvdXIgdGVzdCBzY2VuYXJp
bz8gSXMgaXQgcG9zc2libGUgdGhhdCB5b3UncmUgYWNjb3VudGluZyBzYW1lCnBhY2tldCBzZXZl
cmFsIHRpbWVzIGR1ZSB0byBicm9rZW4gY29tcGxldGlvbiBxdWV1ZT8KCkxvb2tpbmcgYXQgc2Ft
cGxlcy9icGYveGRwc29ja191c2VyLmM6Y29tcGxldGVfdHhfb25seSgpLCBpdCBhY2NvdW50cwpz
ZW50IHBhY2tldHMgKHR4X25wa3RzKSBieSBhY2N1bXVsYXRpbmcgcmVzdWx0cyBvZiB4c2tfcmlu
Z19jb25zX19wZWVrKCkKZm9yIGNvbXBsZXRpb24gcXVldWUsIHNvIGl0J3Mgbm90IGEgdHJ1c3Rl
ZCBzb3VyY2Ugb2YgcHBzIGluZm9ybWF0aW9uLgoKQmVzdCByZWdhcmRzLCBJbHlhIE1heGltZXRz
LgoKPiAKPiBUZXN0ZWQgdXNpbmcga2VybmVsIDUuMy4wLXJjMysKPiAwMzowMC4wIEV0aGVybmV0
IGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0IENvbnRyb2xsZXIKPiAxMC1H
aWdhYml0IFg1NDAtQVQyIChyZXYgMDEpCj4gU3Vic3lzdGVtOiBJbnRlbCBDb3Jwb3JhdGlvbiBF
dGhlcm5ldCAxMEcgMlAgWDU0MC10IEFkYXB0ZXIKPiBDb250cm9sOiBJL08tIE1lbSsgQnVzTWFz
dGVyKyBTcGVjQ3ljbGUtIE1lbVdJTlYtIFZHQVNub29wLSBQYXJFcnItCj4gU3RlcHBpbmctIFNF
UlItIEZhc3RCMkItIERpc0lOVHgrCj4gCj4gUmVnYXJkcywKPiBXaWxsaWFtCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
