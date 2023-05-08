Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFE66FA27D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 10:42:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3ED49822E7;
	Mon,  8 May 2023 08:42:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3ED49822E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683535345;
	bh=CcYs2iYOj+PsT7gKD578BGXLSY5Ryww3kc2gnitOiQA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=79WvNVmizzP31rWgaLStxSxmzcqVF+66tVuW+MgOnVJUf7yfEowP4s/lSvAhEORN8
	 spCSChEiASwH5kvsykUB5xdcXWqXO0WBkottRDuZnz08mrc2pDqmq5g6BQXOLYbrVG
	 usTMbPN80fghEbwrUge996rC41o/YAYSfG6x8d/EFWLDwP2JS7vjphCwG4hG4VAuvj
	 b1jFpNoSuRjlOq0kmjYSlhSO41t1/XPnHjwgaSp9oVZgfHmsqaeY0TstpI1bTW4Jvn
	 hqsVee3w0kXf2sMbwGq+IPI5SBJjYkaZ7+NB1IvIkVwqeOMCZ700iWEJ1q+9fH5E4B
	 Fc0CbhQ34rfAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GdL7FTZSCcD6; Mon,  8 May 2023 08:42:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 211FF8229D;
	Mon,  8 May 2023 08:42:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 211FF8229D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D402B1BF25B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 08:42:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A500560E63
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 08:42:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A500560E63
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pvVqY0EZPpR5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 May 2023 08:42:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 819E260F33
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 819E260F33
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 08:42:18 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1pvwRh-0007c7-7u; Mon, 08 May 2023 10:42:13 +0200
Message-ID: <5cb53595-a5fd-3ead-7f65-60b247d6e975@leemhuis.info>
Date: Mon, 8 May 2023 10:42:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US, de-DE
To: Jesse Brandeburg <jesse.brandeburg@gmail.com>,
 Ian Kumlien <ian.kumlien@gmail.com>
References: <CAA85sZvQV2_aTP=2_TZQOMm0cMfxp+NdLx2_yf_qzB=dUKFuwg@mail.gmail.com>
 <20230505142144.46622-1-piotrx.skajewski@intel.com>
 <CAA85sZsMdK6xWjf7JdujOhdXjKaLvSjbTjiGRw7n_Y+7afe5Vw@mail.gmail.com>
 <CAA85sZsZMFMCLtL_70AMXvVsQ+jNze0C=sNmZfwNdwUhTp_kxw@mail.gmail.com>
 <CAEuXFEzznsMofUJNLvRQKugDs+EpY1eEKkdykM5_O=9wkgBKPw@mail.gmail.com>
From: "Linux regression tracking #update (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
In-Reply-To: <CAEuXFEzznsMofUJNLvRQKugDs+EpY1eEKkdykM5_O=9wkgBKPw@mail.gmail.com>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1683535338;
 4c69a777; 
X-HE-SMSGID: 1pvwRh-0007c7-7u
Subject: Re: [Intel-wired-lan] [ixgbe] regression: jumbo frames not working
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 Piotr Skajewski <piotrx.skajewski@intel.com>, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMDYuMDUuMjMgMjA6MzMsIEplc3NlIEJyYW5kZWJ1cmcgd3JvdGU6Cj4gT24gRnJpLCBNYXkg
NSwgMjAyMyBhdCAxOjI4IFBNIElhbiBLdW1saWVuIDxpYW4ua3VtbGllbkBnbWFpbC5jb20KPiA8
bWFpbHRvOmlhbi5rdW1saWVuQGdtYWlsLmNvbT4+IHdyb3RlOgo+IAo+ICAgICBBcyBhIHNpZGUg
bm90ZSwgSSBkb24ndCB1bmRlcnN0YW5kIGhvdyB0aGUgc3dpdGNoIGJvb3RlZCB3aXRoIGp1bWJv
Cj4gICAgIGZyYW1lcyBvZmYgLSB0aGUgY29uZmlnIHN0YXRlZCB0aGF0IHRoZXkgc2hvdWxkIGJl
IG9uLi4uLgo+ICAgICBTbywgc29tZSBraW5kIG9mIGZhaWxvdmVyLi4uIHNvcnJ5IGZvciB0aGUg
bm9pc2UuLgo+IAo+ICAgICBPbiBGcmksIE1heSA1LCAyMDIzIGF0IDc6NTDigK9QTSBJYW4gS3Vt
bGllbiA8aWFuLmt1bWxpZW5AZ21haWwuY29tCj4gICAgIDxtYWlsdG86aWFuLmt1bWxpZW5AZ21h
aWwuY29tPj4gd3JvdGU6Cj4gICAgID4KPiAgICAgPiBTb3JyeS4uLiBJdCBzZWVtcyBsaWtlIG15
IGNpc2NvIHN3aXRjaCBib290ZWQgd2l0aCBqdW1iby1mcmFtZXMKPiAgICAgPiBkaXNhYmxlZCBh
ZnRlciBhIHBvd2VyIG91dGFnZS4uLgo+ICAgICA+IFRoZSBjb25mIHNheXMgaXQgc2hvdWxkIGJl
IGVuYWJsZWQgLSBidXQgc29tZWhvdyBpdCB3YXNuJ3QgOi8KPiAKPiAKPiAKPiBUaGFua3MgZm9y
IGxldHRpbmcgdXMga25vdyEKPiAjcmVnemJvdCByZXNvbHZlOiBub3QgYSByZWdyZXNzaW9uLiBU
aGUgcmVwb3J0ZXIgZm91bmQgdGhlIGNhdXNlIHRvIGJlIGEKPiBuZXR3b3JrIGNvbmZpZyBpc3N1
ZSBhZnRlciBhIHBvd2VyIG91dGFnZS7CoAoKSmVzc2UsIG1hbnkgdGh4IGZvciB0aGlzLCBidXQg
dGhpcyBkaWRuJ3Qgd29yaywgYXMgcmVnemJvdCBleHBlY3RzCmNvbW1hbmRzIHRvIGJlIGluIGEg
c2VwYXJhdGUgcGFyYWdyYXBoIHRvIGF2b2lkIGNhdGNoaW5nIHRoaW5ncyBub3QKbWVhbnQgZm9y
IGl0LiBTbyBsZXQgbWUgcmVhbGl6ZSB5b3VyIGludGVudGlvbjoKCiNyZWd6Ym90IHJlc29sdmU6
IG5vdCBhIHJlZ3Jlc3Npb24uIFRoZSByZXBvcnRlciBmb3VuZCB0aGUgY2F1c2UgdG8gYmUgYQpu
ZXR3b3JrIGNvbmZpZyBpc3N1ZSBhZnRlciBhIHBvd2VyIG91dGFnZS4KCkNpYW8sIFRob3JzdGVu
ICh3ZWFyaW5nIGhpcyAndGhlIExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Npb24gdHJhY2tlcicgaGF0
KQotLQpFdmVyeXRoaW5nIHlvdSB3YW5uYSBrbm93IGFib3V0IExpbnV4IGtlcm5lbCByZWdyZXNz
aW9uIHRyYWNraW5nOgpodHRwczovL2xpbnV4LXJlZ3RyYWNraW5nLmxlZW1odWlzLmluZm8vYWJv
dXQvI3RsZHIKVGhhdCBwYWdlIGFsc28gZXhwbGFpbnMgd2hhdCB0byBkbyBpZiBtYWlscyBsaWtl
IHRoaXMgYW5ub3kgeW91LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
