Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6384D50CA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 18:44:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4F4140A0C;
	Thu, 10 Mar 2022 17:44:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id POJZG49-NQ0d; Thu, 10 Mar 2022 17:44:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE399401D8;
	Thu, 10 Mar 2022 17:44:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 965861BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 17:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82848408BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 17:44:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wtioy0JVcIYU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 17:44:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DE987408AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 17:44:46 +0000 (UTC)
Received: from [192.168.0.3] (unknown [95.90.232.235])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2362D61E6478B;
 Thu, 10 Mar 2022 18:44:43 +0100 (CET)
Message-ID: <9bae19f0-1b19-77bd-22b9-52dc84ff5d52@molgen.mpg.de>
Date: Thu, 10 Mar 2022 18:44:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Arjun Anantharam <arjun.anantharam@intel.com>
References: <20220310164115.2004-1-arjun.anantharam@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220310164115.2004-1-arjun.anantharam@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: update ice DDP
 comms package to 1.3.31.0
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
Cc: guruprasad.kudukolly.rao@intel.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBcmp1biwKCgpBbSAxMC4wMy4yMiB1bSAxNzo0MSBzY2hyaWViIEFyanVuIEFuYW50aGFy
YW06Cj4gVXBkYXRlIGljZSBERFAgY29tbXMgcGFja2FnZSBmaWxlIHRvIHRoZSBsYXRlc3QgdmVy
c2lvbjogMS4zLjMxLjAKCkNvdWxkIHlvdSBhZGQgYSBjaGFuZ2UtbG9nIGZvciB3aGF0IGhhcHBl
bmQgYmV0d2VlbiAxLjMuMjAuMCBhbmQgMS4zLjMxLjA/CgoKS2luZCByZWdhcmRzLAoKUGF1bAoK
Cj4gU2lnbmVkLW9mZi1ieTogQXJqdW4gQW5hbnRoYXJhbSA8YXJqdW4uYW5hbnRoYXJhbUBpbnRl
bC5jb20+Cj4gLS0tCj4gICBXSEVOQ0UgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDIgKy0KPiAgIC4uLm1zLTEuMy4yMC4wLnBrZyA9PiBpY2VfY29tbXMtMS4zLjMx
LjAucGtnfSB8IEJpbiA2ODgzODggLT4gNzE3MTc2IGJ5dGVzCj4gICAyIGZpbGVzIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gICByZW5hbWUgaW50ZWwvaWNlL2RkcC1j
b21tcy97aWNlX2NvbW1zLTEuMy4yMC4wLnBrZyA9PiBpY2VfY29tbXMtMS4zLjMxLjAucGtnfSAo
NzUlKQo+IAo+IGRpZmYgLS1naXQgYS9XSEVOQ0UgYi9XSEVOQ0UKPiBpbmRleCAxNmNjMTJmLi5h
MGYwZGMwIDEwMDY0NAo+IC0tLSBhL1dIRU5DRQo+ICsrKyBiL1dIRU5DRQo+IEBAIC01ODgwLDcg
KzU4ODAsNyBAQCBMaW5rOiBpbnRlbC9pY2UvZGRwL2ljZS5wa2cgLT4gaWNlLTEuMy4yNi4wLnBr
Zwo+ICAgCj4gICBMaWNlbnNlOiBSZWRpc3RyaWJ1dGFibGUuIFNlZSBMSUNFTlNFLmljZSBmb3Ig
ZGV0YWlscwo+ICAgCj4gLUZpbGU6IGludGVsL2ljZS9kZHAtY29tbXMvaWNlX2NvbW1zLTEuMy4y
MC4wLnBrZwo+ICtGaWxlOiBpbnRlbC9pY2UvZGRwLWNvbW1zL2ljZV9jb21tcy0xLjMuMzEuMC5w
a2cKClvigKZdCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
