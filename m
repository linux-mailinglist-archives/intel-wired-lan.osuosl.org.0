Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 208C8260524
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Sep 2020 21:32:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BEBDC86815;
	Mon,  7 Sep 2020 19:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hz1gQgiN0DNA; Mon,  7 Sep 2020 19:32:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E351867AA;
	Mon,  7 Sep 2020 19:32:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47A341BF361
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 19:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 306AE20397
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 19:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BTjLlcmMy6dp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Sep 2020 19:32:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0FD222000E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 19:32:44 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DC0F2145D;
 Mon,  7 Sep 2020 19:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599507163;
 bh=g+Xuhro+2C6jeU2SaqGnGSXANVvt/STb+HmWaf8GMs4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jvc/WVyWVVkX7Oiqij0df2r4OmV818Ugg4hnSBDCuc8GFrUI3KBa+kmd5mx8BBpJ6
 BdCi37GOMcMFPqs0qoRGCAwzsyqmk9ygp8hkNwCrv+/tuasMRYFZbQ4XjL/lq1sT4o
 jXlGN+P8IZTp7SsinI/CXaow4DcFO52544ijn1QY=
Date: Mon, 7 Sep 2020 12:32:41 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Message-ID: <20200907123241.447371e8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200907150217.30888-5-bjorn.topel@gmail.com>
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
 <20200907150217.30888-5-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/4] ixgbe,
 xsk: use XSK_NAPI_WEIGHT as NAPI poll budget
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAgNyBTZXAgMjAyMCAxNzowMjoxNyArMDIwMCBCasO2cm4gVMO2cGVsIHdyb3RlOgo+
IEZyb206IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPiAKPiBTdGFydCB1
c2luZyBYU0tfTkFQSV9XRUlHSFQgYXMgTkFQSSBwb2xsIGJ1ZGdldCBmb3IgdGhlIEFGX1hEUCBS
eAo+IHplcm8tY29weSBwYXRoLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJq
b3JuLnRvcGVsQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfeHNrLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9peGdiZS9peGdiZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlX3hzay5jCj4gaW5kZXggMzc3MTg1N2NmODg3Li5mMzJjMWJhMGQyMzcgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYwo+IEBAIC0yMzks
NyArMjM5LDcgQEAgaW50IGl4Z2JlX2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaXhnYmVfcV92ZWN0
b3IgKnFfdmVjdG9yLAo+ICAJYm9vbCBmYWlsdXJlID0gZmFsc2U7Cj4gIAlzdHJ1Y3Qgc2tfYnVm
ZiAqc2tiOwo+ICAKPiAtCXdoaWxlIChsaWtlbHkodG90YWxfcnhfcGFja2V0cyA8IGJ1ZGdldCkp
IHsKPiArCXdoaWxlIChsaWtlbHkodG90YWxfcnhfcGFja2V0cyA8IFhTS19OQVBJX1dFSUdIVCkp
IHsKCkkgd2FzIHRoaW5raW5nIHRoYXQgd2UnZCBtdWx0aXBseSAnYnVkZ2V0JyBoZXJlLCBub3Qg
cmVwbGFjZSBpdCB3aXRoIGEKY29uc3RhbnQuIExvb2tzIGxpa2UgaXhnYmUgZHV0aWZ1bGx5IHBh
c3NlcyAncGVyX3JpbmdfYnVkZ2V0JyBpbnRvIHRoZQpjbGVhbl9yeCBmdW5jdGlvbnMsIG5vdCBh
IGNvbXBsZXRlIE5BUEkgYnVkZ2V0LgoKPiAgCQl1bmlvbiBpeGdiZV9hZHZfcnhfZGVzYyAqcnhf
ZGVzYzsKPiAgCQlzdHJ1Y3QgaXhnYmVfcnhfYnVmZmVyICpiaTsKPiAgCQl1bnNpZ25lZCBpbnQg
c2l6ZTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
