Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5A0260F88
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 12:21:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 911FB85D44;
	Tue,  8 Sep 2020 10:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UOloYsFJVyRa; Tue,  8 Sep 2020 10:21:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7576F867ED;
	Tue,  8 Sep 2020 10:21:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9BFC31BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 10:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 927CB85D54
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 10:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WaLSf2NblT0H for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 10:21:43 +0000 (UTC)
X-Greylist: delayed 00:09:10 by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3D15D85D44
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 10:21:43 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4B020206462B7;
 Tue,  8 Sep 2020 12:12:30 +0200 (CEST)
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>, ast@kernel.org, 
 daniel@iogearbox.net, netdev@vger.kernel.org, bpf@vger.kernel.org
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
 <20200907150217.30888-5-bjorn.topel@gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <82901368-8e17-a63d-0e46-2434b5777c04@molgen.mpg.de>
Date: Tue, 8 Sep 2020 12:12:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200907150217.30888-5-bjorn.topel@gmail.com>
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
Cc: kuba@kernel.org, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBCasO2cm4sCgoKQW0gMDcuMDkuMjAgdW0gMTc6MDIgc2NocmllYiBCasO2cm4gVMO2cGVs
Ogo+IEZyb206IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPiAKPiBTdGFy
dCB1c2luZyBYU0tfTkFQSV9XRUlHSFQgYXMgTkFQSSBwb2xsIGJ1ZGdldCBmb3IgdGhlIEFGX1hE
UCBSeAo+IHplcm8tY29weSBwYXRoLgoKQ291bGQgeW91IHBsZWFzZSBhZGQgdGhlIGRlc2NyaXB0
aW9uIGZyb20gdGhlIHBhdGNoIHNlcmllcyBjb3ZlciBsZXR0ZXIgCnRvIHRoaXMgY29tbWl0IHRv
bz8gVG8gbXkga25vd2xlZGdlLCB0aGUgbWVzc2FnZSBpbiB0aGUgY292ZXIgbGV0dGVyIAp3b27i
gJl0IGJlIHN0b3JlZCBpbiB0aGUgZ2l0IHJlcG9zaXRvcnkuCgo+IFNpZ25lZC1vZmYtYnk6IEJq
w7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpb4oCmXQoKCktpbmQgcmVnYXJkcywK
ClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
