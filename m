Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D98027818B6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 12:06:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 767C160BBE;
	Sat, 19 Aug 2023 10:06:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 767C160BBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692439582;
	bh=NnkRz6U8ztZr5ggYDGX9lRdXV0lU0TXyTQGE7+OnwhM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RBfd97o950RTDRfue1oXa2WbkhXORoj1orLgTljqxku6yw+E6b+y3QO+3QVZclviA
	 xII3qHvwSvsZDS4VUvLTd25ZKp57S0LT2Dtf3OqfMOGBFrjKCC4t9f+GtEmi0Tei1a
	 sS1RlPFYqwn7TwWeTiWkWev5fqRGNxS9RVXpfhhY2HxP3y+XNX8nA/n961jRO8TJ12
	 96OatWou68hh8S2gZx8UT+YsrljiVPNAsLwpYIRiWCZP/rZGZHYgkPlnF4Zj0N5F23
	 4KioO2Q3fcvaESRlbmL/TI5a4GEPpGXi+FrIxL99/1/TJDTDfpgJVwwbEuZSFQkTiN
	 94Al+xyCsGjTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oIh28jLjUTvE; Sat, 19 Aug 2023 10:06:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFA8060BB6;
	Sat, 19 Aug 2023 10:06:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFA8060BB6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39CD91BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 10:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 141D640616
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 10:06:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 141D640616
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4c9Scew06cGi for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Aug 2023 10:06:14 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D3BC4074E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 10:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D3BC4074E
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0995161B16;
 Sat, 19 Aug 2023 10:06:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D862CC433C7;
 Sat, 19 Aug 2023 10:06:11 +0000 (UTC)
Date: Sat, 19 Aug 2023 12:06:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <2023081940-linguist-pantomime-ebc2@gregkh>
References: <20230816140623.452869-2-przemyslaw.kitszel@intel.com>
 <202308170000.YqabIR9D-lkp@intel.com>
 <cfc29063-9e20-5101-d70b-62b5423d2d10@intel.com>
 <CANiq72m9ZEVkP76FMFOnPYkA8ih4Mq72HtW9AbrJ-JPy9ku3jw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72m9ZEVkP76FMFOnPYkA8ih4Mq72HtW9AbrJ-JPy9ku3jw@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1692439572;
 bh=eZmjagX06AR0K5BLwB36iJyx8ATCTPYSXUB2lSow2tU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oozmb8NYVD4jQQRjJEOWIn7yMeKn7xI4+shKJJU9Gu78uzOjqJtClLybhs3IasuDm
 kLGvPYP+JmwlimLUtAni2m+A88effmA5MAIQYpNrDt8CAbIbyxRY54bhm8rFp466jp
 R9Fdyhztw4Xcq2xFfybSOE2jDSM99pAh4OjDPwLk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=oozmb8NY
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/7] overflow: add
 DEFINE_FLEX() for on-stack allocs
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
Cc: Yujie Liu <yujie.liu@intel.com>, rust-for-linux@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, llvm@lists.linux.dev,
 Philip Li <philip.li@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBBdWcgMTgsIDIwMjMgYXQgMDE6MTA6MDdQTSArMDIwMCwgTWlndWVsIE9qZWRhIHdy
b3RlOgo+IE9uIEZyaSwgQXVnIDE4LCAyMDIzIGF0IDEyOjM44oCvUE0gUHJ6ZW1layBLaXRzemVs
Cj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+IHdyb3RlOgo+ID4KPiA+IFJ1c3QgZm9s
a3MsIGNvdWxkIHlvdSBwbGVhc2UgdGVsbCBtZSBpZiB0aGlzIGlzIHNvbWV0aGluZyBJIHNob3Vs
ZCBmaXgsCj4gPiBvciBJIGp1c3QgdW5jb3ZlcmVkIHNvbWUgZXhpc3RpbmcgYnVnIGluICJ1bnN0
YWJsZSIgdGhpbmc/Cj4gPgo+ID4gUGVyaGFwcyBpdCBpcyB3b3J0aCB0byBtZW50aW9uLCBkaWZm
IG9mIHYzIHZzIHYyIGlzOgo+ID4gbW92ZSBkdW1teSBpbXBsZW1lbnRhdGlvbiBvZiBfX2hhc19i
dWlsdGluKCkgbWFjcm8gdG8gdGhlIHRvcCBvZgo+ID4gY29tcGlsZXJfdHlwZXMuaCwganVzdCBi
ZWZvcmUgYCNpZm5kZWYgQVNTRU1CTFlgCj4gCj4gTm90aGluZyB5b3UgbmVlZCB0byB3b3JyeSBh
Ym91dCwgaXQgaXMgYW4gaXNzdWUgd2l0aCBvbGQgYGJpbmRnZW5gIGFuZAo+IExMVk0gPj0gMTYs
IGZpeGVkIGluIGNvbW1pdCAwOGFiNzg2NTU2ZmYgKCJydXN0OiBiaW5kZ2VuOiB1cGdyYWRlIHRv
Cj4gMC42NS4xIikgd2hpY2ggaXMgaW4gYHJ1c3QtbmV4dGAgYXQgdGhlIG1vbWVudC4gU29ycnkg
YWJvdXQgdGhhdCwgYW5kCj4gdGhhbmtzIGZvciBwaW5naW5nIHVzIQo+IAo+IExLUCAvIFl1amll
IC8gUGhpbGlwOiBzaW5jZSB3ZSBnb3QgYSBmZXcgcmVwb3J0cyBvbiB0aGlzLCB3b3VsZCBpdCBi
ZQo+IHBvc3NpYmxlIHRvIGF2b2lkIExMVk0gPj0gMTYgZm9yIFJ1c3QtZW5hYmxlZCBidWlsZHMg
Zm9yIGFueSBicmFuY2gKPiB0aGF0IGRvZXMgbm90IGluY2x1ZGUgdGhlIG5ldyBgYmluZGdlbmAg
b3IgYXQgbGVhc3QgMDhhYjc4NjU1NmZmPyBPciwKPiBpZiBHcmVnIGlzIE9LIHdpdGggdGhhdCwg
SSBndWVzcyB3ZSBjb3VsZCBhbHNvIGJhY2twb3J0IHRoZSB1cGdyYWRlLAo+IGJ1dCBwZXJoYXBz
IGl0IGlzIGEgYml0IHRvbyBtdWNoIGZvciBzdGFibGU/CgpDb21taXQgaXMgdGlueSBlbm91Z2gg
Zm9yIHN0YWJsZSBiYWNrcG9ydHMgaWYgaXQgZml4ZXMgYSByZWFsIGlzc3VlIHRoYXQKZXZlcnlv
bmUgbmVlZHMgdG8gYWRkcmVzcywgc28gSSBoYXZlIG5vIG9iamVjdGlvbiB0byB0YWtpbmcgaXQg
Zm9yCnN0YWJsZSByZWxlYXNlcyBvbmNlIGl0IGhpdHMgTGludXMncyB0cmVlLgoKdGhhbmtzLAoK
Z3JlZyBrLWgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
