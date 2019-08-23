Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990409A767
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2019 08:10:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2340882EC;
	Fri, 23 Aug 2019 06:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f7TbUxXtohLw; Fri, 23 Aug 2019 06:10:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47D0288271;
	Fri, 23 Aug 2019 06:10:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7743B1BF5F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 06:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 730648377F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 06:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Kx2NS78QDzp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2019 06:10:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B111D87C65
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 06:10:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 23:10:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="170030314"
Received: from arappl-mobl2.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.53.140])
 by orsmga007.jf.intel.com with ESMTP; 22 Aug 2019 23:10:27 -0700
To: William Tu <u9012063@gmail.com>,
 Alexander Duyck <alexander.duyck@gmail.com>
References: <CGME20190822171243eucas1p12213f2239d6c36be515dade41ed7470b@eucas1p1.samsung.com>
 <20190822171237.20798-1-i.maximets@samsung.com>
 <CAKgT0UepBGqx=FiqrdC-r3kvkMxVAHonkfc6rDt_HVQuzahZPQ@mail.gmail.com>
 <CALDO+SYhU4krmBO8d4hsDGm+BuUAR4qMv=WzVa=jAx27+g9KnA@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <217e90f5-206a-bb80-6699-f6dd750b57d9@intel.com>
Date: Fri, 23 Aug 2019 08:10:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CALDO+SYhU4krmBO8d4hsDGm+BuUAR4qMv=WzVa=jAx27+g9KnA@mail.gmail.com>
Content-Language: en-US
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
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Ilya Maximets <i.maximets@samsung.com>, bpf <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAxOS0wOC0yMiAxOTozMiwgV2lsbGlhbSBUdSB3cm90ZToKPiBPbiBUaHUsIEF1ZyAyMiwg
MjAxOSBhdCAxMDoyMSBBTSBBbGV4YW5kZXIgRHV5Y2sKPiA8YWxleGFuZGVyLmR1eWNrQGdtYWls
LmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIFRodSwgQXVnIDIyLCAyMDE5IGF0IDEwOjEyIEFNIElseWEg
TWF4aW1ldHMgPGkubWF4aW1ldHNAc2Ftc3VuZy5jb20+IHdyb3RlOgo+Pj4KPj4+IFR4IGNvZGUg
ZG9lc24ndCBjbGVhciB0aGUgZGVzY3JpcHRvcnMnIHN0YXR1cyBhZnRlciBjbGVhbmluZy4KPj4+
IFNvLCBpZiB0aGUgYnVkZ2V0IGlzIGxhcmdlciB0aGFuIG51bWJlciBvZiB1c2VkIGVsZW1zIGlu
IGEgcmluZywgc29tZQo+Pj4gZGVzY3JpcHRvcnMgd2lsbCBiZSBhY2NvdW50ZWQgdHdpY2UgYW5k
IHhza191bWVtX2NvbXBsZXRlX3R4IHdpbGwgbW92ZQo+Pj4gcHJvZF90YWlsIGZhciBiZXlvbmQg
dGhlIHByb2RfaGVhZCBicmVha2luZyB0aGUgY29tcGxldGlvbiBxdWV1ZSByaW5nLgo+Pj4KPj4+
IEZpeCB0aGF0IGJ5IGxpbWl0aW5nIHRoZSBudW1iZXIgb2YgZGVzY3JpcHRvcnMgdG8gY2xlYW4g
YnkgdGhlIG51bWJlcgo+Pj4gb2YgdXNlZCBkZXNjcmlwdG9ycyBpbiB0aGUgdHggcmluZy4KPj4+
Cj4+PiAnaXhnYmVfY2xlYW5feGRwX3R4X2lycSgpJyBmdW5jdGlvbiByZWZhY3RvcmVkIHRvIGxv
b2sgbW9yZSBsaWtlCj4+PiAnaXhnYmVfeHNrX2NsZWFuX3R4X3JpbmcoKScgc2luY2Ugd2UncmUg
YWxsb3dlZCB0byBkaXJlY3RseSB1c2UKPj4+ICduZXh0X3RvX2NsZWFuJyBhbmQgJ25leHRfdG9f
dXNlJyBpbmRleGVzLgo+Pj4KPj4+IEZpeGVzOiA4MjIxYzVlYmE4YzEgKCJpeGdiZTogYWRkIEFG
X1hEUCB6ZXJvLWNvcHkgVHggc3VwcG9ydCIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBJbHlhIE1heGlt
ZXRzIDxpLm1heGltZXRzQHNhbXN1bmcuY29tPgo+Pj4gLS0tCj4+Pgo+Pj4gVmVyc2lvbiAzOgo+
Pj4gICAgKiBSZXZlcnRlZCBzb21lIHJlZmFjdG9yaW5nIG1hZGUgZm9yIHYyLgo+Pj4gICAgKiBF
bGltaW5hdGVkICdidWRnZXQnIGZvciB0eCBjbGVhbi4KPj4+ICAgICogcHJlZmV0Y2ggcmV0dXJu
ZWQuCj4+Pgo+Pj4gVmVyc2lvbiAyOgo+Pj4gICAgKiAnaXhnYmVfY2xlYW5feGRwX3R4X2lycSgp
JyByZWZhY3RvcmVkIHRvIGxvb2sgbW9yZSBsaWtlCj4+PiAgICAgICdpeGdiZV94c2tfY2xlYW5f
dHhfcmluZygpJy4KPj4+Cj4+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4
Z2JlX3hzay5jIHwgMjkgKysrKysrKystLS0tLS0tLS0tLS0KPj4+ICAgMSBmaWxlIGNoYW5nZWQs
IDExIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQo+Pgo+PiBUaGFua3MgZm9yIGFkZHJl
c3NpbmcgbXkgY29uY2VybnMuCj4+Cj4+IEFja2VkLWJ5OiBBbGV4YW5kZXIgRHV5Y2sgPGFsZXhh
bmRlci5oLmR1eWNrQGxpbnV4LmludGVsLmNvbT4KPiAKPiBUaGFua3MuCj4gCj4gVGVzdGVkLWJ5
OiBXaWxsaWFtIFR1IDx1OTAxMjA2M0BnbWFpbC5jb20+Cj4gCgpXaWxsLCB0aGFua3MgZm9yIHRl
c3RpbmchIEZvciB0aGlzIHBhdGNoLCBkaWQgeW91IG5vdGljZSBhbnkgcGVyZm9ybWFuY2UKZGVn
cmFkYXRpb24/CgoKQ2hlZXJzLApCasO2cm4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
