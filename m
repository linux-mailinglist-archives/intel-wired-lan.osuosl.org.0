Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD58505FAF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 00:19:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4173241E27;
	Mon, 18 Apr 2022 22:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id noI-q5b6qGyf; Mon, 18 Apr 2022 22:19:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB74441E1F;
	Mon, 18 Apr 2022 22:19:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E4AD1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 22:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2845B41E1F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 22:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RACQ7UxdMLbn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Apr 2022 22:19:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9FB3A41E1B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 22:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650320383; x=1681856383;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tkMPhmpg8zUnNqBW3w1L4glAPuX9BfNfJ6dlQLQ2H9M=;
 b=STRyR/RdituV4m0VH/4ByF0w18ggDOcX57/KFCPcru1ARi7Fh/sqyudM
 7MJPMwIpxVU/XHICxZlDKjQpPnBwFsg95Nq5vwvVV/BPAGQb1Odjkrmed
 8/f7oTNr/QLYs4WYzPXl6JXqlfLwOHd43MtlK28+Z4ZEfBn/FnPbB8Qr/
 vveGeI5dUZA8WQGrNY/YkPTXfhEnYcvZPDpN96qlCVkh4rzb1MV5URxtH
 IzeFAB2mRQHsMMKnru3ER+rWXdeZtZ7mB18sBc9xO54sEIHklhwqBhGqL
 byfwlwwF+sJMM+Z59J+wA2YtVhB47FAu0KSx+YZKWhR0MDfiYESTfDem4 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="250924584"
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="250924584"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 15:19:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="726810261"
Received: from moseshab-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.209.143.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 15:19:42 -0700
Date: Mon, 18 Apr 2022 15:19:41 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <Yl3j/bOvoX13WGSW@iweiny-desk3>
References: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204161331080.3501@hadrien>
 <df4c0f81-454d-ab96-1d74-1c4fbc3dbd63@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df4c0f81-454d-ab96-1d74-1c4fbc3dbd63@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH v3] intel: igb: igb_ethtool.c: Convert
 kmap() to kmap_local_page()
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
Cc: outreachy@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@inria.fr>,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU2F0LCBBcHIgMTYsIDIwMjIgYXQgMDM6MTQ6NTdQTSArMDIwMCwgQWxhYSBNb2hhbWVkIHdy
b3RlOgo+ICAgIE9uINmh2abigI8v2aTigI8v2aLZoNmi2aIg2aHZozrZo9mhLCBKdWxpYSBMYXdh
bGwgd3JvdGU6Cj4gCj4gCj4gIE9uIFNhdCwgMTYgQXByIDIwMjIsIEFsYWEgTW9oYW1lZCB3cm90
ZToKPiAKPiAKPiAgQ29udmVydCBrbWFwKCkgdG8ga21hcF9sb2NhbF9wYWdlKCkKPiAKPiAgV2l0
aCBrbWFwX2xvY2FsX3BhZ2UoKSwgdGhlIG1hcHBpbmcgaXMgcGVyIHRocmVhZCwgQ1BVIGxvY2Fs
IGFuZCBub3QKPiAgZ2xvYmFsbHkgdmlzaWJsZS4KPiAKPiAgSXQncyBub3QgY2xlYXJlci4gCj4g
Cj4gICAgSSBtZWFuIHRoaXMgIiBmaXgga3VubWFwX2xvY2FsIHBhdGggdmFsdWUgdG8gdGFrZSBh
ZGRyZXNzIG9mIHRoZSBtYXBwZWQKPiAgICBwYWdlIiBiZSBtb3JlIGNsZWFyZXIKPiAKPiAgVGhp
cyBpcyBhIGdlbmVyYWwgc3RhdGVtZW50IGFib3V0IHRoZSBmdW5jdGlvbi4gIFlvdQo+ICBuZWVk
IHRvIGV4cGxhaW4gd2h5IGl0IGlzIGFwcHJvcHJpYXRlIHRvIHVzZSBpdCBoZXJlLiAgVW5sZXNz
IGl0IGlzIHRoZQo+ICBjYXNlIHRoYXQgYWxsIGNhbGxzIHRvIGttYXAgc2hvdWxkIGJlIGNvbnZl
cnRlZCB0byBjYWxsIGttYXBfbG9jYWxfcGFnZS4KPiAKPiAgICBJdCdzIHJlcXVpcmVkIHRvIGNv
bnZlcnQgYWxsIGNhbGxzIGttYXAgdG8ga21hcF9sb2NhbF9wYWdlLiBTbywgSSBkb24ndAo+ICAg
IHdoYXQgc2hvdWxkIHRoZSBjb21taXQgbWVzc2FnZSBiZT8KPiAKPiAgICBJcyB0aGlzIHdpbGwg
YmUgZ29vZCA6Cj4gCj4gICAgImttYXBfbG9jYWxfcGFnZSgpIHdhcyByZWNlbnRseSBkZXZlbG9w
ZWQgYXMgYSByZXBsYWNlbWVudCBmb3Iga21hcCgpLiAKPiAgICBUaGUKPiAgICBrbWFwX2xvY2Fs
X3BhZ2UoKSBjcmVhdGVzIGEgbWFwcGluZyB3aGljaCBpcyByZXN0cmljdGVkIHRvIGxvY2FsIHVz
ZSBieSBhCj4gICAgc2luZ2xlIHRocmVhZCBvZiBleGVjdXRpb24uICIKPiAKCkkgdGhpbmsgSSBh
bSBtaXNzaW5nIHNvbWUgdGhyZWFkIGNvbnRleHQgaGVyZS4gIEknbSBub3Qgc3VyZSB3aG8gc2Fp
ZCB3aGF0CmFib3ZlLiAgU28gSSdtIGdvaW5nIHRvIHN0YXJ0IG92ZXIuCgpBbGFhLAoKSXQgaXMg
aW1wb3J0YW50IHRvIHJlbWVtYmVyIHRoYXQgYSBnb29kIGNvbW1pdCBtZXNzYWdlIHNheXMgMiB0
aGluZ3MuCgoJMSkgV2hhdCBpcyB0aGUgcHJvYmxlbSB5b3UgYXJlIHRyeWluZyB0byBzb2x2ZQoJ
MikgT3ZlcnZpZXcgb2YgdGhlIHNvbHV0aW9uCgpGaXJzdCBvZmYgSSB1bmRlcnN0YW5kIHlvdXIg
ZnJ1c3RyYXRpb24uICBJbiBteSBvcGluaW9uIGZpeGVzIGFuZCBjbGVhbiB1cHMKbGlrZSB0aGlz
IGFyZSB2ZXJ5IGhhcmQgdG8gd3JpdGUgZ29vZCBjb21taXQgbWVzc2FnZXMgZm9yIGJlY2F1c2Ug
c28gb2Z0ZW4gdGhlCmNvZGUgZGlmZiBzZWVtcyBzbyBzZWxmIGV4cGxhbmF0b3J5LiAgSG93ZXZl
ciwgZWFjaCBjb2RlIGNoYW5nZSBjb21lcyBhdCB0aGUKaWRlbnRpZmljYXRpb24gb2YgYSBwcm9i
bGVtLiAgQW5kIHJlbWVtYmVyIHRoYXQgJ3Byb2JsZW0nIGRvZXMgbm90IGFsd2F5cyBtZWFuCmEg
YnVnIGZpeC4KClRoZSBkZXByZWNhdGlvbiBvZiBrbWFwKCkgbWF5IG5vdCBzZWVtIGxpa2UgYSBw
cm9ibGVtLiAgSSBtZWFuIHdoeSBjYW4ndCB3ZQpqdXN0IGxlYXZlIGttYXAoKSBhcyBpdCBpcz8g
IEl0IHdvcmtzIHJpZ2h0PwoKQnV0IHRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIGttYXAgKGhpZ2ht
ZW0pIGludGVyZmFjZSBoYXMgYmVjb21lIHN0YWxlIGFuZCBpdHMKb3JpZ2luYWwgcHVycG9zZSB3
YXMgdGFyZ2V0ZWQgdG93YXJkIGxhcmdlIG1lbW9yeSBzeXN0ZW1zIHdpdGggMzIgYml0IGtlcm5l
bHMuClRoZXJlIGFyZSB2ZXJ5IGZldyBzeXN0ZW1zIGJlaW5nIHJ1biBsaWtlIHRoYXQgYW55IGxv
bmdlci4KClNvIGhvdyBkbyB3ZSBjbGVhbiB1cCB0aGUga21hcCBpbnRlcmZhY2UgdG8gYmUgbW9y
ZSB1c2VmdWwgdG8gdGhlIGtlcm5lbApjb21tdW5pdHkgbm93IHRoYXQgMzIgYml0IGtlcm5lbHMg
d2l0aCBoaWdobWVtIGFyZSBzbyByYXJlPwoKVGhlIGNvbW11bml0eSBoYXMgaWRlbnRpZmllZCB0
aGF0IGEgZmlyc3Qgc3RlcCBvZiB0aGF0IGlzIHRvIG1vdmUgYXdheSBmcm9tIGFuZApldmVudHVh
bGx5IHJlbW92ZSB0aGUga21hcCgpIGNhbGwuICBUaGlzIGlzIGR1ZSB0byB0aGUgY2FsbCBiZWlu
ZyBpbmNvcnJlY3RseQp1c2VkIHRvIGNyZWF0ZSBsb25nIHRlcm0gbWFwcGluZ3MuICBNb3N0IGNh
bGxzIHRvIGttYXAoKSBhcmUgbm90IHVzZWQKaW5jb3JyZWN0bHkgYnV0IHRob3NlIGNhbGwgc2l0
ZXMgbmVlZGVkIHNvbWV0aGluZyBpbiBiZXR3ZWVuIGttYXAoKSBhbmQKa21hcF9hdG1vaWMoKS4g
IFRoYXQgY2FsbCBpcyBrbWFwX2xvY2FsX3BhZ2UoKS4KCk5vdyB0aGF0IGttYXBfbG9jYWxfcGFn
ZSgpIGV4aXN0cyB0aGUga21hcCgpIGNhbGxzIGNhbiBiZSBhdWRpdGVkIGFuZCBtb3N0IChJCmhv
cGUgbW9zdClbMV0gY2FuIGJlIHJlcGxhY2VkIHdpdGgga21hcF9sb2NhbF9wYWdlKCkuCgpUaGUg
Y2hhbmdlIHlvdSBoYXZlIGJlbG93IGlzIGNvcnJlY3QuICBCdXQgaXQgbGFja3MgYSBnb29kIGNv
bW1pdCBtZXNzYWdlLiAgV2UKbmVlZCB0byBjb3ZlciB0aGUgMiBwb2ludHMgYWJvdmUuCgoJMSkg
SnVsaWEgaXMgYXNraW5nIHdoeSB5b3UgbmVlZGVkIHRvIGRvIHRoaXMgY2hhbmdlLiAgV2hhdCBp
cyB0aGUKCSAgIHByb2JsZW0gb3IgcmVhc29uIGZvciB0aGlzIGNoYW5nZT8gIChJcmEgdG9sZCB5
b3UgdG8gaXMgbm90IGEgZ29vZAoJICAgcmVhc29uLiAgOy0pCgoJICAgUFMgSW4gZmFjdCBtZSB0
ZWxsaW5nIHlvdSB0byBtYXkgYWN0dWFsbHkgYmUgYSB2ZXJ5IGJhZCByZWFzb24uLi4KCSAgIGov
ayA7LSkKCgkyKSBXaHkgaXMgdGhpcyBzb2x1dGlvbiBvayBhcyBwYXJ0IG9mIHRoZSBkZXByZWNh
dGlvbiBhbmQgcmVtb3ZhbCBvZgoJICAga21hcCgpPwoKQSBmaW5hbCBub3RlOyB0aGUgMiBhYm92
ZSBwb2ludHMgZG9uJ3QgbmVlZCBhIGxvdCBvZiB0ZXh0LiAgSGVyZSBJIHVzZWQKMiBzaW1wbGUg
c2VudGVuY2VzLgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIyMDEyNDAxNTQwOS44
MDc1ODctMi1pcmEud2VpbnlAaW50ZWwuY29tLwoKSSBob3BlIHRoaXMgaGVscHMsCklyYQoKWzFd
IEJ1dCBub3QgYWxsLi4uICBzb21lIHVzZXMgb2Yga21hcCgpIGhhdmUgYmVlbiBpZGVudGlmaWVk
IGFzIGJlaW5nIHByZXR0eQpjb21wbGV4LgoKPiAKPiAganVsaWEKPiAKPiAKPiAgU2lnbmVkLW9m
Zi1ieTogQWxhYSBNb2hhbWVkIDxlbmcuYWxhYW1vaGFtZWRzb2xpbWFuLmFtQGdtYWlsLmNvbT4K
PiAgLS0tCj4gIGNoYW5nZXMgaW4gVjI6Cj4gICAgICAgICAgZml4IGt1bm1hcF9sb2NhbCBwYXRo
IHZhbHVlIHRvIHRha2UgYWRkcmVzcyBvZiB0aGUgbWFwcGVkIHBhZ2UuCj4gIC0tLQo+ICBjaGFu
Z2VzIGluIFYzOgo+ICAgICAgICAgIGVkaXQgY29tbWl0IG1lc3NhZ2UgdG8gYmUgY2xlYXJlcgo+
ICAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfZXRodG9vbC5jIHwg
NCArKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+IAo+ICBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9l
dGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYwo+
ICBpbmRleCAyYTU3ODIwNjNmNGMuLmMxNGZjODcxZGQ0MSAxMDA2NDQKPiAgLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMKPiAgKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMKPiAgQEAgLTE3OTgsMTQgKzE3OTgs
MTQgQEAgc3RhdGljIGludCBpZ2JfY2hlY2tfbGJ0ZXN0X2ZyYW1lKHN0cnVjdCBpZ2JfcnhfYnVm
ZmVyICpyeF9idWZmZXIsCj4gCj4gICAgICAgICAgZnJhbWVfc2l6ZSA+Pj0gMTsKPiAKPiAgLSAg
ICAgICBkYXRhID0ga21hcChyeF9idWZmZXItPnBhZ2UpOwo+ICArICAgICAgIGRhdGEgPSBrbWFw
X2xvY2FsX3BhZ2UocnhfYnVmZmVyLT5wYWdlKTsKPiAKPiAgICAgICAgICBpZiAoZGF0YVszXSAh
PSAweEZGIHx8Cj4gICAgICAgICAgICAgIGRhdGFbZnJhbWVfc2l6ZSArIDEwXSAhPSAweEJFIHx8
Cj4gICAgICAgICAgICAgIGRhdGFbZnJhbWVfc2l6ZSArIDEyXSAhPSAweEFGKQo+ICAgICAgICAg
ICAgICAgICAgbWF0Y2ggPSBmYWxzZTsKPiAKPiAgLSAgICAgICBrdW5tYXAocnhfYnVmZmVyLT5w
YWdlKTsKPiAgKyAgICAgICBrdW5tYXBfbG9jYWwoZGF0YSk7Cj4gCj4gICAgICAgICAgcmV0dXJu
IG1hdGNoOwo+ICAgfQo+ICAtLQo+ICAyLjM1LjIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
