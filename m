Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF2798CD9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 10:06:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 390DE86A32;
	Thu, 22 Aug 2019 08:06:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NI5pJ2tojWZP; Thu, 22 Aug 2019 08:06:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BED9E869F5;
	Thu, 22 Aug 2019 08:06:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 931C81BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 08:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8B5D087635
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 08:06:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1jbCwXbqGZkQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 08:05:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 777D18762A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 08:05:59 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190822080556euoutp01c2633b44156d5b59eb4707bfa4582cd7~9MB9WkLrP0357603576euoutp01P
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 08:05:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190822080556euoutp01c2633b44156d5b59eb4707bfa4582cd7~9MB9WkLrP0357603576euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566461156;
 bh=4zxlvUFQ7kHa/ksIbQBsJoh28JPFEn+LcgjtZFtKCHY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ONNztFHtxctClNwYIDQtXTgHdMTa1iV/H7OkuxSEo9ECWjS0sJRD5zTuVXTBsC/Gu
 tf302rQHiFWN+ORTsNAk3PE9naHdW6UWMLeTrQyhpGPYRafMgQ0LsLwy2KID+mkeTy
 CkmPbpdgMP03hct31Hyr4wDwQQeKbCLUHIux/5wU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190822080555eucas1p2cfd3d35e5146fdfbd8a2f18ec2b54549~9MB8nyJzw0411304113eucas1p2x;
 Thu, 22 Aug 2019 08:05:55 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 1E.B2.04374.3EC4E5D5; Thu, 22
 Aug 2019 09:05:55 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190822080554eucas1p2610b6e5b48679b6cc912eb5ced8b9502~9MB75AJy82378423784eucas1p2q;
 Thu, 22 Aug 2019 08:05:54 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190822080554eusmtrp23e970cb4e30bb13756c118f3d7af5245~9MB7qzioP3146831468eusmtrp2Z;
 Thu, 22 Aug 2019 08:05:54 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-8f-5d5e4ce3aaff
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 93.1A.04166.2EC4E5D5; Thu, 22
 Aug 2019 09:05:54 +0100 (BST)
Received: from [106.109.129.180] (unknown [106.109.129.180]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190822080553eusmtip2170b491e8fa5ca2ecbf729347cfc9810~9MB6yGR6m2361123611eusmtip24;
 Thu, 22 Aug 2019 08:05:53 +0000 (GMT)
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>, Alexander
 Duyck <alexander.duyck@gmail.com>
From: Ilya Maximets <i.maximets@samsung.com>
Message-ID: <54faa2f1-345d-b5b2-7e48-963876b62813@samsung.com>
Date: Thu, 22 Aug 2019 11:05:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ+HfNjo0tpk2v_+85SuX7Jw797QwRA7uJBggPHtY=JznLC9Zg@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBKsWRmVeSWpSXmKPExsWy7djPc7qPfeJiDb7slLX4P/c2i8WXn7fZ
 Lc5PO8Vm8adtA6PF5yPH2SwWL/zGbDHnfAuLxZ0rP9ksrrT/ZLf4f+s3q8WxFy1sFpd3zWGz
 WHHoBLvFsQViFtcv8Tjwe2xZeZPJY+esu+wei/e8ZPLounGJ2WPTqk42j5PNpR7Tux8ye7zf
 d5XNo2/LKkaPz5vkAriiuGxSUnMyy1KL9O0SuDLWvtQvaNeueNfwi6mB8aNSFyMnh4SAicSV
 /susXYxcHEICKxglrjTPZIZwvjBKdL1+ApX5zCjx98oiZpiW7n1LmSASyxklTq37CVX1kVFi
 zqktjCBVwgLxEnPurWYCsUUEsiW+X5zKBlLELPCDWWLn7JNsIAk2AR2JU6uPgDXwCthJHFu1
 nx3EZhFQldgx/xHYOlGBCIlPDw6zQtQISpyc+YQFxOYUCJRY8KwXLM4sIC7R9GUllC0v0bx1
 NtgTEgK9HBKPp91kgbjbRWLj+i9QPwhLvDq+hR3ClpH4v3M+E4RdL3G/5SUjRHMHo8T0Q/+g
 EvYSW16fA2rgANqgKbF+lz6IKSHgKPG1VRPC5JO48VYQ4gQ+iUnbpjNDhHklOtqEIGaoSPw+
 uBzqACmJm+8+s09gVJqF5LFZSJ6ZheSZWQhrFzCyrGIUTy0tzk1PLTbOSy3XK07MLS7NS9dL
 zs/dxAhMf6f/Hf+6g3Hfn6RDjAIcjEo8vBN0Y2OFWBPLiitzDzFKcDArifBWzImKFeJNSays
 Si3Kjy8qzUktPsQozcGiJM5bzfAgWkggPbEkNTs1tSC1CCbLxMEp1cC4VP7sveunlms4nwoy
 XDlf/xS73LQv8z/pHO5bxfM5M3zehOY9JVesfWIkesPfuR+K2LqxWDFvyqN966YdqLnV2rld
 kOmNaMGkOZW8/XuZzwk9Dw32YtC8fUTWpDXCRqDjlzvzjIC+wiXF1rF5LwwYTl7RVsyaoOyr
 Xy5wTfb5jLgdcysfb+dXYinOSDTUYi4qTgQAk/YWrHsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrNIsWRmVeSWpSXmKPExsVy+t/xe7qPfOJiDRovaVj8n3ubxeLLz9vs
 FuennWKz+NO2gdHi85HjbBaLF35jtphzvoXF4s6Vn2wWV9p/slv8v/Wb1eLYixY2i8u75rBZ
 rDh0gt3i2AIxi+uXeBz4PbasvMnksXPWXXaPxXteMnl03bjE7LFpVSebx8nmUo/p3Q+ZPd7v
 u8rm0bdlFaPH501yAVxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYp
 qTmZZalF+nYJehlrX+oXtGtXvGv4xdTA+FGpi5GTQ0LARKJ731KmLkYuDiGBpYwSh65uYoNI
 SEn8+HWBFcIWlvhzrQssLiTwnlFi9n0wW1ggXmLOvdVMILaIQLZE09GLbCCDmAV+MUscf7kT
 aupUFomH+2+zg1SxCehInFp9hBHE5hWwkzi2aj9YnEVAVWLH/EfMILaoQITE4R2zoGoEJU7O
 fMICYnMKBEoseNYLdhGzgLrEn3mXmCFscYmmLyuh4vISzVtnM09gFJqFpH0WkpZZSFpmIWlZ
 wMiyilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzDitx37uXkH46WNwYcYBTgYlXh4J+jGxgqx
 JpYVV+YeYpTgYFYS4a2YExUrxJuSWFmVWpQfX1Sak1p8iNEU6LmJzFKiyfnAZJRXEm9oamhu
 YWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoExRprjYBR334HdH2Ma51lsXvDi
 3cTVLlm5q4s5H0/2XHmuP0rw+qS6wzJCnLHi1xLOrjx9fklpwZNFDhpuN6dLdB99u2tmj9mv
 QpmAtjwtzoPFFg9e3p+8cvECFeHnbvMXPti0aMlT49+/DtpWceQtP71xneGdy0k7Zus8tDo7
 NSJ++Tk3gcv32ZVYijMSDbWYi4oTAc2jckYOAwAA
X-CMS-MailID: 20190822080554eucas1p2610b6e5b48679b6cc912eb5ced8b9502
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
 <CAJ+HfNjo0tpk2v_+85SuX7Jw797QwRA7uJBggPHtY=JznLC9Zg@mail.gmail.com>
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
 Alexei Starovoitov <ast@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 William Tu <u9012063@gmail.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjIuMDguMjAxOSAxMDoxMiwgQmrDtnJuIFTDtnBlbCB3cm90ZToKPiBPbiBXZWQsIDIxIEF1
ZyAyMDE5IGF0IDE4OjU3LCBBbGV4YW5kZXIgRHV5Y2sgPGFsZXhhbmRlci5kdXlja0BnbWFpbC5j
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
KS4KPj4KPiAKPiArMS4gSSdkIHByZWZlciB0aGlzIGFzIHdlbGwhCgpTb3VuZHMgZ29vZC4gSSds
bCBsb29rIGluIHRoaXMgZGlyZWN0aW9uLgpCdXQgSSdtIG5vdCBjb21wbGV0ZWx5IHN1cmUgYWJv
dXQgJ2J1ZGdldCcgZWxpbWluYXRpb24uIFdvdWxkbid0IGl0IGNhdXNlCmlzc3VlcyBpZiB3ZSds
bCBjbGVhbiB0aGUgd2hvbGUgcmluZyBhdCBvbmNlPyBJIG1lYW4gbWF5YmUgaXQnbGwgYmUgdG9v
IGxvbmcKdG8gaG9sZCB0aGUgQ1BVIGNvcmUgZm9yIHRoaXMgYW1vdW50IG9mIHdvcmsuCldlIGNv
dWxkIHJlLXdvcmsgdGhlIGNvZGUga2VlcGluZyB0aGUgbG9vcCBicmVhayBvbiBidWRnZXQgZXho
YXVzdGlvbi4KV2hhdCBkbyB5b3UgdGhpbms/Cgo+IAo+IAo+IENoZWVycywKPiBCasO2cm4KPiAK
Pj4gVGhhbmtzLgo+Pgo+PiAtIEFsZXgKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+PiBJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+PiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KPiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
