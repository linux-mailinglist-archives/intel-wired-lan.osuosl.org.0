Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9FC66234C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jan 2023 11:41:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C13C5405BC;
	Mon,  9 Jan 2023 10:41:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C13C5405BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673260877;
	bh=PPCIon7KawJZn4KCXg6IZJq7rqylKjsci1kAOzjMgVA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UhWqxFA8tsOGCIycWrKuB2lj+Jw/bKyupALJWIUO2CPPlykf9AzPVOFdSEf5p0zBV
	 zlu2L05vLwP4ngiUku1RgJYe18Cy4CyKAk64x7fgf4FFT77XfVfmhJe/nZ8PpDyzFW
	 3DRknMt7pjGsUb0xQf9+mnOLZbkUe4RRgISZwoSCD8IV8upotoQCprzuwBUx3zq1Tb
	 RFtBZHIn3es1CzkvhrDwfq7G/ducFnsf78Lr3mgQFaQZl1YPU5AGqsu5nAVhDNcP3n
	 N5b4NVBr5+GDXEVhlBKTpdbFc2mQvJ/CT95uDB9WvTog5Db3b+LoE5SCmAm9AH9VuU
	 KVaHMhhsDpjyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LxPKDn9S9ifN; Mon,  9 Jan 2023 10:41:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9421740157;
	Mon,  9 Jan 2023 10:41:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9421740157
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 056F61BF46A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 10:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D382240157
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 10:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D382240157
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Saz0tUNqZW9x for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jan 2023 10:41:10 +0000 (UTC)
X-Greylist: delayed 00:07:40 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D19F940105
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D19F940105
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 10:41:09 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 3B32ECE0B56;
 Mon,  9 Jan 2023 10:33:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA15AC433EF;
 Mon,  9 Jan 2023 10:33:20 +0000 (UTC)
Date: Mon, 9 Jan 2023 11:33:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Wang Hai <wanghai38@huawei.com>
Message-ID: <Y7vtbayi+2GfkhEa@kroah.com>
References: <20221220012143.52141-1-wanghai38@huawei.com>
 <54066d0e-ef50-183f-74fe-551bb99741eb@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54066d0e-ef50-183f-74fe-551bb99741eb@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1673260401;
 bh=ZUImioBdrk3XKJsixsqfdOKeV/GUBIF4fNM0CYvWFR8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ybbsx1md5/zhL+OBdguHE/hSq9xkxsIUV68LQPrt04qspADxNXhB4ckBbpdU5v8Ou
 ZNaT2UTxEaPU9B5bcQYfnX9wLmhfH5jaMAlYQEib+mjXxERtVu1Cxx0MjRAfphlgZx
 Za+hF+fLZc7FfqT8ECTQ7LP+9o7sMT+ib96A05Xg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=ybbsx1md
Subject: Re: [Intel-wired-lan] [PATCH v2] kobject: Fix slab-out-of-bounds in
 fill_kobj_path()
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
Cc: rafael@kernel.org, jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 alice.chao@mediatek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBKYW4gMDksIDIwMjMgYXQgMDU6Mzc6MjNQTSArMDgwMCwgV2FuZyBIYWkgd3JvdGU6
Cj4gCj4g5ZyoIDIwMjIvMTIvMjAgOToyMSwgV2FuZyBIYWkg5YaZ6YGTOgo+ID4gSW4ga29iamVj
dF9nZXRfcGF0aCgpLCBpZiBrb2JqLT5uYW1lIGlzIGNoYW5nZWQgYmV0d2VlbiBjYWxscwo+ID4g
Z2V0X2tvYmpfcGF0aF9sZW5ndGgoKSBhbmQgZmlsbF9rb2JqX3BhdGgoKSBhbmQgdGhlIGxlbmd0
aCBiZWNvbWVzCj4gPiBsb25nZXIsIHRoZW4gZmlsbF9rb2JqX3BhdGgoKSB3aWxsIGhhdmUgYW4g
b3V0LW9mLWJvdW5kcyBidWcuCj4gPiAKPiA+IFRoZSBhY3R1YWwgY3VycmVudCBwcm9ibGVtIG9j
Y3VycyB3aGVuIHRoZSBpeGdiZSBwcm9iZS4KPiA+IAo+ID4gSW4gaXhnYmVfbWlpX2J1c19pbml0
KCksIGlmIHRoZSBsZW5ndGggb2YgbmV0ZGV2LT5kZXYua29iai5uYW1lCj4gPiBsZW5ndGggYmVj
b21lcyBsb25nZXIsIG91dC1vZi1ib3VuZHMgd2lsbCBvY2N1ci4KPiA+IAo+ID4gY3B1MCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY3B1MQo+ID4gaXhnYmVfcHJvYmUK
PiA+ICAgcmVnaXN0ZXJfbmV0ZGV2KG5ldGRldikKPiA+ICAgIG5ldGRldl9yZWdpc3Rlcl9rb2Jq
ZWN0Cj4gPiAgICAgZGV2aWNlX2FkZAo+ID4gICAgICBrb2JqZWN0X3VldmVudCAvLyBTZW5kaW5n
IEFERCBldmVudHMKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzeXN0ZW1kLXVkZXZkIC8vIHJlbmFtZSBuZXRkZXYKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGV2X2NoYW5nZV9uYW1lCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZpY2VfcmVuYW1lCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAga29iamVj
dF9yZW5hbWUKPiA+ICAgaXhnYmVfbWlpX2J1c19pbml0ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8Cj4gPiAgICBtZGlvYnVzX3JlZ2lzdGVyICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfAo+ID4gICAgIF9fbWRpb2J1c19yZWdpc3RlciAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwKPiA+ICAgICAgZGV2aWNlX3JlZ2lzdGVyICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
Cj4gPiAgICAgICBkZXZpY2VfYWRkICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+
ID4gICAgICAgIGtvYmplY3RfdWV2ZW50ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiA+
ICAgICAgICAga29iamVjdF9nZXRfcGF0aCAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gPiAg
ICAgICAgICBsZW4gPSBnZXRfa29ial9wYXRoX2xlbmd0aCAvLyBvbGQgbmFtZSAgfAo+ID4gICAg
ICAgICAgcGF0aCA9IGt6YWxsb2MobGVuLCBnZnBfbWFzayk7ICAgICAgICAgIHwKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBrb2JqLT5uYW1lID0g
bmFtZTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAvKiBuYW1lIGxlbmd0aCBiZWNvbWVzCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICogbG9uZ2VyCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICovCj4gPiAgICAgICAgICBmaWxsX2tvYmpfcGF0
aCAvKiBrb2JqIHBhdGggbGVuZ3RoIGlzCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgKiBs
b25nZXIgdGhhbiBwYXRoLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICogcmVzdWx0aW5n
IGluIG91dCBvZgo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICogYm91bmRzIHdoZW4gZmls
bGluZyBwYXRoCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgKi8KPiA+IAo+ID4gVGhpcyBp
cyB0aGUga2FzYW4gcmVwb3J0Ogo+ID4gCj4gPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiA+IEJVRzogS0FTQU46IHNs
YWItb3V0LW9mLWJvdW5kcyBpbiBmaWxsX2tvYmpfcGF0aCsweDUwLzB4YzAKPiA+IFdyaXRlIG9m
IHNpemUgNyBhdCBhZGRyIGZmMTEwMDA5MDU3M2QxZmQgYnkgdGFzayBrd29ya2VyLzI4OjEvNjcz
Cj4gPiAKPiA+ICAgV29ya3F1ZXVlOiBldmVudHMgd29ya19mb3JfY3B1X2ZuCj4gPiAgIENhbGwg
VHJhY2U6Cj4gPiAgIDxUQVNLPgo+ID4gICBkdW1wX3N0YWNrX2x2bCsweDM0LzB4NDgKPiA+ICAg
cHJpbnRfYWRkcmVzc19kZXNjcmlwdGlvbi5jb25zdHByb3AuMCsweDg2LzB4MWU3Cj4gPiAgIHBy
aW50X3JlcG9ydCsweDM2LzB4NGYKPiA+ICAga2FzYW5fcmVwb3J0KzB4YWQvMHgxMzAKPiA+ICAg
a2FzYW5fY2hlY2tfcmFuZ2UrMHgzNS8weDFjMAo+ID4gICBtZW1jcHkrMHgzOS8weDYwCj4gPiAg
IGZpbGxfa29ial9wYXRoKzB4NTAvMHhjMAo+ID4gICBrb2JqZWN0X2dldF9wYXRoKzB4NWEvMHhj
MAo+ID4gICBrb2JqZWN0X3VldmVudF9lbnYrMHgxNDAvMHg0NjAKPiA+ICAgZGV2aWNlX2FkZCsw
eDVjNy8weDkxMAo+ID4gICBfX21kaW9idXNfcmVnaXN0ZXIrMHgxNGUvMHg0OTAKPiA+ICAgaXhn
YmVfcHJvYmUuY29sZCsweDQ0MS8weDU3NCBbaXhnYmVdCj4gPiAgIGxvY2FsX3BjaV9wcm9iZSsw
eDc4LzB4YzAKPiA+ICAgd29ya19mb3JfY3B1X2ZuKzB4MjYvMHg0MAo+ID4gICBwcm9jZXNzX29u
ZV93b3JrKzB4M2I2LzB4NmEwCj4gPiAgIHdvcmtlcl90aHJlYWQrMHgzNjgvMHg1MjAKPiA+ICAg
a3RocmVhZCsweDE2NS8weDFhMAo+ID4gICByZXRfZnJvbV9mb3JrKzB4MWYvMHgzMAo+ID4gCj4g
PiBUaGlzIHJlcHJvZHVjZXIgdHJpZ2dlcnMgdGhhdCBidWc6Cj4gPiAKPiA+IHdoaWxlOgo+ID4g
ZG8KPiA+ICAgICAgcm1tb2QgaXhnYmUKPiA+ICAgICAgc2xlZXAgMC41Cj4gPiAgICAgIG1vZHBy
b2JlIGl4Z2JlCj4gPiAgICAgIHNsZWVwIDAuNQo+ID4gCj4gPiBXaGVuIGNhbGxpbmcgZmlsbF9r
b2JqX3BhdGgoKSB0byBmaWxsIHBhdGgsIGlmIHRoZSBuYW1lIGxlbmd0aCBvZgo+ID4ga29iaiBi
ZWNvbWVzIGxvbmdlciwgcmV0dXJuIGZhaWx1cmUgYW5kIHJldHJ5LiBUaGlzIGZpeGVzIHRoZSBw
cm9ibGVtLgo+ID4gCj4gPiBGaXhlczogMWRhMTc3ZTRjM2Y0ICgiTGludXgtMi42LjEyLXJjMiIp
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBXYW5nIEhhaSA8d2FuZ2hhaTM4QGh1YXdlaS5jb20+Cj4gPiAt
LS0KPiBIaSwgZ3JlZyBrLWguCj4gU29ycnkgdG8gYm90aGVyIHlvdS4gQ2FuIHRoaXMgcGF0Y2gg
YmUgbWVyZ2VkIGludG8gdGhlIG1haW5saW5lPwoKSXQncyBpbiBteSAidG8gcmV2aWV3IiBxdWV1
ZSB0aGF0IEkgYW0gd29ya2luZyBvbi4gIEFzIHRoaXMgaXMgbm90CmFueXRoaW5nIHRoYXQgYSBu
b3JtYWwgdXNlciBjYW4gdHJpZ2dlciwgaXQncyBub3QgdGhhdCBoaWdoIG9mIGEKcHJpb3JpdHks
IHJpZ2h0PwoKdGhhbmtzLAoKZ3JlZyBrLWgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
