Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 744FB26108F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 13:20:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3048486990;
	Tue,  8 Sep 2020 11:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zyfc488WtAOI; Tue,  8 Sep 2020 11:20:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D1B48697D;
	Tue,  8 Sep 2020 11:20:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 15B511BF82B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0D6D5868CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tXK53B9zdZn4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 11:20:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 64B21868A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:20:18 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1EB82206462B7;
 Tue,  8 Sep 2020 13:20:16 +0200 (CEST)
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, bpf@vger.kernel.org
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
 <20200907150217.30888-5-bjorn.topel@gmail.com>
 <82901368-8e17-a63d-0e46-2434b5777c04@molgen.mpg.de>
 <0fb03a39-d098-8fc9-ba70-e919ef8e091e@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <0b927a07-6fbb-0e5b-e791-9558c9ea8e63@molgen.mpg.de>
Date: Tue, 8 Sep 2020 13:20:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0fb03a39-d098-8fc9-ba70-e919ef8e091e@intel.com>
Content-Language: en-US
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBCasO2cm4sCgoKQW0gMDguMDkuMjAgdW0gMTM6MTIgc2NocmllYiBCasO2cm4gVMO2cGVs
Ogo+IE9uIDIwMjAtMDktMDggMTI6MTIsIFBhdWwgTWVuemVsIHdyb3RlOgoKPj4gQW0gMDcuMDku
MjAgdW0gMTc6MDIgc2NocmllYiBCasO2cm4gVMO2cGVsOgo+Pj4gRnJvbTogQmrDtnJuIFTDtnBl
bCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgo+Pj4KPj4+IFN0YXJ0IHVzaW5nIFhTS19OQVBJX1dF
SUdIVCBhcyBOQVBJIHBvbGwgYnVkZ2V0IGZvciB0aGUgQUZfWERQIFJ4Cj4+PiB6ZXJvLWNvcHkg
cGF0aC4KPj4KPj4gQ291bGQgeW91IHBsZWFzZSBhZGQgdGhlIGRlc2NyaXB0aW9uIGZyb20gdGhl
IHBhdGNoIHNlcmllcyBjb3ZlciAKPj4gbGV0dGVyIHRvIHRoaXMgY29tbWl0IHRvbz8gVG8gbXkg
a25vd2xlZGdlLCB0aGUgbWVzc2FnZSBpbiB0aGUgY292ZXIgCj4+IGxldHRlciB3b27igJl0IGJl
IHN0b3JlZCBpbiB0aGUgZ2l0IHJlcG9zaXRvcnkuCj4gCj4gUGF1bCwgdGhhbmtzIGZvciB0aGUg
aW5wdXQhIFRoZSBuZXRkZXYvYnBmIHRyZWVzIGFsd2F5cyBpbmNsdWRlIHRoZSAKPiBjb3ZlciBs
ZXR0ZXIgaW4gdGhlIG1lcmdlIGNvbW1pdC4KClllcywgZm9yIHB1bGwvbWVyZ2UgcmVxdWVzdHMu
IEJ1dCB5b3UgcG9zdGVkIHRoZW0gdG8gdGhlIGxpc3QsIHNvIEnigJlkIAphc3N1bWUgdGhleSB3
aWxsIGJlIGFwcGxpZWQgd2l0aCBgZ2l0IGFtYCBhbmQgbm90IG1lcmdlZCwgb3IgYW0gSSAKbWlz
c2luZyBzb21ldGhpbmcuIENvdWxkIHlvdSBwbGVhc2UgcG9pbnQgbWUgdG8gYSBtZXJnZSBjb21t
aXQgd2hlcmUgdGhlIApwYXRjaGVzIHdlcmUgcG9zdGVkIHRvIHRoZSBsaXN0PwoKCktpbmQgcmVn
YXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
