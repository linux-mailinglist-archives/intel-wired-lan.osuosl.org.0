Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2653B2DE9E1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 20:43:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B73DE879A2;
	Fri, 18 Dec 2020 19:43:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YFpUNX-1o7uF; Fri, 18 Dec 2020 19:43:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6B92879BE;
	Fri, 18 Dec 2020 19:43:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B28D1BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 19:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 22ADA2E31B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 19:43:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PGmL-mK86oHT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 19:43:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 4CCDB20440
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 19:43:29 +0000 (UTC)
Received: from [192.168.1.11] (x4db7d636.dyn.telefonica.de [77.183.214.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1E5D420646219;
 Fri, 18 Dec 2020 20:43:26 +0100 (CET)
To: Todd Fujinaka <todd.fujinaka@intel.com>,
 Ben Greear <greearb@candelatech.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
Date: Fri, 18 Dec 2020 20:43:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
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
Cc: Greg KH <gregkh@linuxfoundation.org>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBUb2RkLAoKCkFtIDE4LjEyLjIwIHVtIDIwOjI3IHNjaHJpZWIgRnVqaW5ha2EsIFRvZGQ6
Cj4gWWVzLCBhbmQgSSdtIHBsdWdnaW5nIHRoZSBob2xlIGluIHRoZSBSRUFETUUgcmlnaHQgbm93
LiBIZXJlJ3MgdGhlIHByb3Bvc2VkIHRleHQ6Cj4gCj4gQWR2ZXJ0aXNlbWVudHMgZm9yIDIuNUcg
YW5kIDVHIG9uIHRoZSB4NTUwIHdlcmUgdHVybmVkIG9mZiBieSBkZWZhdWx0IGR1ZSB0bwo+IGlu
dGVyb3BlcmFiaWxpdHkgaXNzdWVzIHdpdGggY2VydGFpbiBzd2l0Y2hlcy4gVG8gdHVybiB0aGVt
IGJhY2sgb24sIHVzZQo+IAo+IGV0aHRvb2wgLXMgPGV0aFg+IGFkdmVydGlzZSBOCj4gCj4gd2hl
cmUgTiBpcyBhIGNvbWJpbmF0aW9uIG9mIHRoZSBmb2xsb3dpbmcuCj4gCj4gMTAwYmFzZVRGdWxs
ICAgIDB4MDA4Cj4gMTAwMGJhc2VURnVsbCAgIDB4MDIwCj4gMjUwMGJhc2VURnVsbCAgIDB4ODAw
MDAwMDAwMDAwCj4gNTAwMGJhc2VURnVsbCAgIDB4MTAwMDAwMDAwMDAwMAo+IDEwMDAwYmFzZVRG
dWxsICAweDEwMDAKPiAKPiBGb3IgZXhhbXBsZSwgdG8gdHVybiBvbiBhbGwgbW9kZXM6Cj4gZXRo
dG9vbCAtcyA8ZXRoWD4gYWR2ZXJ0aXNlIDB4MTgwMDAwMDAwMTAyOAo+IAo+IEZvciBtb3JlIGRl
dGFpbHMgcGxlYXNlIHNlZSB0aGUgZXRodG9vbCBtYW4gcGFnZS4KCldoYXQgY29tbWl0IGludHJv
ZHVjZWQgdGhpcyByZWdyZXNzaW9uLiBQbGVhc2UgYmVhciBpbiBtaW5kLCB0aGF0IHRoaXMgCmNv
bnRyYWRpY3RzIExpbnV44oCZIG5vLXJlZ3Jlc3Npb24gcG9saWN5LCBhbmQgdGhlIGNvbW1pdCBz
aG91bGQgdGhlcmVmb3JlIApiZSByZXZlcnRlZCBhcyBzb29uIGFzIHBvc3NpYmxlLgoKCktpbmQg
cmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
