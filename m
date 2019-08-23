Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA939AECC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2019 14:10:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1AB888573;
	Fri, 23 Aug 2019 12:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1e0hRxW7cE8B; Fri, 23 Aug 2019 12:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A2918856F;
	Fri, 23 Aug 2019 12:10:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CAEE61BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 12:10:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C67958688B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 12:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zDlIdPb3VeVL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2019 12:10:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0103F85FA3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 12:10:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 149C41801594;
 Fri, 23 Aug 2019 12:10:50 +0000 (UTC)
Received: from [10.36.116.150] (ovpn-116-150.ams2.redhat.com [10.36.116.150])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FD2526377;
 Fri, 23 Aug 2019 12:10:47 +0000 (UTC)
From: "Eelco Chaudron" <echaudro@redhat.com>
To: "Ilya Maximets" <i.maximets@samsung.com>
Date: Fri, 23 Aug 2019 14:10:45 +0200
Message-ID: <660415CE-6748-4749-84D6-7007F69D8EFB@redhat.com>
In-Reply-To: <20190822171237.20798-1-i.maximets@samsung.com>
References: <CGME20190822171243eucas1p12213f2239d6c36be515dade41ed7470b@eucas1p1.samsung.com>
 <20190822171237.20798-1-i.maximets@samsung.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Fri, 23 Aug 2019 12:10:50 +0000 (UTC)
Subject: Re: [Intel-wired-lan] [PATCH net v3] ixgbe: fix double clean of tx
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
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 =?utf-8?b?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>, William Tu <u9012063@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMiBBdWcgMjAxOSwgYXQgMTk6MTIsIElseWEgTWF4aW1ldHMgd3JvdGU6Cgo+IFR4IGNv
ZGUgZG9lc24ndCBjbGVhciB0aGUgZGVzY3JpcHRvcnMnIHN0YXR1cyBhZnRlciBjbGVhbmluZy4K
PiBTbywgaWYgdGhlIGJ1ZGdldCBpcyBsYXJnZXIgdGhhbiBudW1iZXIgb2YgdXNlZCBlbGVtcyBp
biBhIHJpbmcsIHNvbWUKPiBkZXNjcmlwdG9ycyB3aWxsIGJlIGFjY291bnRlZCB0d2ljZSBhbmQg
eHNrX3VtZW1fY29tcGxldGVfdHggd2lsbCBtb3ZlCj4gcHJvZF90YWlsIGZhciBiZXlvbmQgdGhl
IHByb2RfaGVhZCBicmVha2luZyB0aGUgY29tcGxldGlvbiBxdWV1ZSByaW5nLgo+Cj4gRml4IHRo
YXQgYnkgbGltaXRpbmcgdGhlIG51bWJlciBvZiBkZXNjcmlwdG9ycyB0byBjbGVhbiBieSB0aGUg
bnVtYmVyCj4gb2YgdXNlZCBkZXNjcmlwdG9ycyBpbiB0aGUgdHggcmluZy4KPgo+ICdpeGdiZV9j
bGVhbl94ZHBfdHhfaXJxKCknIGZ1bmN0aW9uIHJlZmFjdG9yZWQgdG8gbG9vayBtb3JlIGxpa2UK
PiAnaXhnYmVfeHNrX2NsZWFuX3R4X3JpbmcoKScgc2luY2Ugd2UncmUgYWxsb3dlZCB0byBkaXJl
Y3RseSB1c2UKPiAnbmV4dF90b19jbGVhbicgYW5kICduZXh0X3RvX3VzZScgaW5kZXhlcy4KPgo+
IEZpeGVzOiA4MjIxYzVlYmE4YzEgKCJpeGdiZTogYWRkIEFGX1hEUCB6ZXJvLWNvcHkgVHggc3Vw
cG9ydCIpCj4gU2lnbmVkLW9mZi1ieTogSWx5YSBNYXhpbWV0cyA8aS5tYXhpbWV0c0BzYW1zdW5n
LmNvbT4KPiAtLS0KPgo+IFZlcnNpb24gMzoKPiAgICogUmV2ZXJ0ZWQgc29tZSByZWZhY3Rvcmlu
ZyBtYWRlIGZvciB2Mi4KPiAgICogRWxpbWluYXRlZCAnYnVkZ2V0JyBmb3IgdHggY2xlYW4uCj4g
ICAqIHByZWZldGNoIHJldHVybmVkLgo+Cj4gVmVyc2lvbiAyOgo+ICAgKiAnaXhnYmVfY2xlYW5f
eGRwX3R4X2lycSgpJyByZWZhY3RvcmVkIHRvIGxvb2sgbW9yZSBsaWtlCj4gICAgICdpeGdiZV94
c2tfY2xlYW5fdHhfcmluZygpJy4KPgo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdi
ZS9peGdiZV94c2suYyB8IDI5IAo+ICsrKysrKysrLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPgoKRGlkIHNvbWUgdGVzdCB3
aXRoIGFuZCB3aXRob3V0IHRoZSBmaXggYXBwbGllZC4gRm9yIFBWUCB0aGUgcmVzdWx0cyBhcmUg
CmEgbGl0dGxlIGRpZmZlcmVudCBkZXBlbmRpbmcgb24gdGhlIHBhY2tldCBzaXplIChub3RlIHRo
aXMgaXMgYSBzaW5nbGUgCnJ1biwgbm8gZGV2aWF0aW9uKS4KRm9yIHRoZSBzYW1lIHBoeXNpY2Fs
IHBvcnQgaW4gYW5kIG91dCBpdOKAmXMgZmFzdGVyISBOb3RlIHRoaXMgd2FzIE9WUyAKQUZfWERQ
IHVzaW5nIGEgWEVOQSB0ZXN0ZXIgYXQgMTBHIHdpcmUgc3BlZWQuCgoKKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tKwp8IFBoeXNpY2FsIHRvIFZpcnR1YWwgdG8gUGh5c2ljYWwgdGVzdCwgTDMgZmxv
d3NbcG9ydCByZWRpcmVjdF0gICAgICAgICAgCiAgICAgICAgIHwKKy0tLS0tLS0tLS0tLS0tLS0t
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tKwp8ICAgICAgICAgICAgICAgICB8IFBhY2tldCBzaXplICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgIHwKKy0tLS0tLS0tLS0tLS0tLS0tKy0t
LS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tKy0tLS0t
LS0tKwp8IE51bWJlciBvZiBmbG93cyB8ICAgNjQgICB8ICAxMjggICB8ICAyNTYgICB8ICA1MTIg
ICB8ICA3NjggICB8ICAxMDI0ICAKfCAgMTUxNCAgfAorLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0t
LS0rLS0tLS0tLS0rLS0tLS0tLS0rLS0tLS0tLS0rLS0tLS0tLS0rLS0tLS0tLS0rLS0tLS0tLS0r
CnwgW05PIEZJWF0gICAxMDAwIHwgNzM5MTYxIHwgNzAwMDkxIHwgNjkwMDM0IHwgNjU5ODk0IHwg
NjE4MTI4IHwgNTk0MjIzIAp8IDUzNzUwNCB8CistLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLSst
LS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLSsKfCBb
RklYXSAgICAgIDEwMDAgfCA3NDIzMTcgfCA3MDgzOTEgfCA2ODk5NTIgfCA2NTgwMzQgfCA2MjYw
NTYgfCA1ODc2NTMgCnwgNTMwODg1IHwKKy0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tKy0tLS0t
LS0tKy0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tKwoKKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwp8IFBoeXNpY2FsIGxvb3BiYWNrIHRlc3QsIEwzIGZs
b3dzW3BvcnQgcmVkaXJlY3RdICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAg
IHwKKy0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwp8ICAgICAgICAgICAgICAgICB8IFBh
Y2tldCBzaXplICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAg
ICAgICAgICAgIHwKKy0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLSstLS0tLS0tLS0rLS0tLS0t
LS0tKy0tLS0tLS0tLSstLS0tLS0tLS0rLS0tLS0tLS0tKy0tLS0tLS0tKwp8IE51bWJlciBvZiBm
bG93cyB8ICAgNjQgICAgfCAgIDEyOCAgIHwgICAyNTYgICB8ICAgNTEyICAgfCAgIDc2OCAgIHwg
IAoxMDI0ICAgfCAgMTUxNCAgfAorLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tKy0tLS0tLS0t
LSstLS0tLS0tLS0rLS0tLS0tLS0tKy0tLS0tLS0tLSstLS0tLS0tLS0rLS0tLS0tLS0rCnwgW05P
IEZJWF0gICAxMDAwIHwgMjU3MzI5OCB8IDIyMjc1NzggfCAyNTE0MzE4IHwgMjI5ODIwNCB8IDEw
ODE4NjEgfCAKMTAxNTE3MyB8IDc4ODA4MSB8CistLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0r
LS0tLS0tLS0tKy0tLS0tLS0tLSstLS0tLS0tLS0rLS0tLS0tLS0tKy0tLS0tLS0tLSstLS0tLS0t
LSsKfCBbRklYXSAgICAgIDEwMDAgfCAzMzQzMTg4IHwgMzIzNDk5MyB8IDMxNTE4MzMgfCAyMzQ5
NTk3IHwgMTU4NjI3NiB8IAoxMTk3MzA0IHwgODE0ODU0IHwKKy0tLS0tLS0tLS0tLS0tLS0tKy0t
LS0tLS0tLSstLS0tLS0tLS0rLS0tLS0tLS0tKy0tLS0tLS0tLSstLS0tLS0tLS0rLS0tLS0tLS0t
Ky0tLS0tLS0tKwoKClRlc3RlZC1ieTogRWVsY28gQ2hhdWRyb24gPGVjaGF1ZHJvQHJlZGhhdC5j
b20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
