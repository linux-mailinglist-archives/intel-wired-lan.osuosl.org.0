Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F29425DCEB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 17:12:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE6852E1CA;
	Fri,  4 Sep 2020 15:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9bW-U90TFHJS; Fri,  4 Sep 2020 15:12:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CFBD32E1BA;
	Fri,  4 Sep 2020 15:12:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 42A5D1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3A00E86E71
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wxyw87fxBrHD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 15:11:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2D2DF86E57
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 15:11:59 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-444-ihUSZxV2O2O6a8T76iYLLw-1; Fri, 04 Sep 2020 11:11:54 -0400
X-MC-Unique: ihUSZxV2O2O6a8T76iYLLw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 435B018A2257;
 Fri,  4 Sep 2020 15:11:52 +0000 (UTC)
Received: from carbon (unknown [10.40.208.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 359365D9D2;
 Fri,  4 Sep 2020 15:11:44 +0000 (UTC)
Date: Fri, 4 Sep 2020 17:11:43 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Message-ID: <20200904171143.5868999a@carbon>
In-Reply-To: <20200904135332.60259-4-bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904135332.60259-4-bjorn.topel@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 3/6] xsk: introduce
 xsk_do_redirect_rx_full() helper
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
Cc: hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 ast@kernel.org, intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 kuba@kernel.org, bpf@vger.kernel.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBl?= =?UTF-8?B?bA==?= <bjorn.topel@intel.com>,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAgNCBTZXAgMjAyMCAxNTo1MzoyOCArMDIwMApCasO2cm4gVMO2cGVsIDxiam9ybi50
b3BlbEBnbWFpbC5jb20+IHdyb3RlOgoKPiBGcm9tOiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3Bl
bEBpbnRlbC5jb20+Cj4gCj4gVGhlIHhza19kb19yZWRpcmVjdF9yeF9mdWxsKCkgaGVscGVyIGNh
biBiZSB1c2VkIHRvIGNoZWNrIGlmIGEgZmFpbHVyZQo+IG9mIHhkcF9kb19yZWRpcmVjdCgpIHdh
cyBkdWUgdG8gdGhlIEFGX1hEUCBzb2NrZXQgaGFkIGEgZnVsbCBSeCByaW5nLgoKVGhpcyBpcyB2
ZXJ5IEFGX1hEUCBzcGVjaWZpYy4gIEkgdGhpbmsgdGhhdCB0aGUgY3B1bWFwIGNvdWxkIGxpa2Vs
eQpiZW5lZml0IGZyb20gc2ltaWxhciBhcHByb2FjaD8gZS5nLiBpZiB0aGUgY3B1bWFwIGt0aHJl
YWQgaXMgc2NoZWR1bGVkCm9uIHRoZSBzYW1lIENQVS4KCkJ1dCBmb3IgY3B1bWFwIHdlIG9ubHkg
d2FudCB0aGlzIGJlaGF2aW9yIGlmIHNjaGVkIG9uIHRoZSBzYW1lIENQVSBhcwpSWC1OQVBJLiAg
VGhpcyBjb3VsZCBiZSAic2VlbiIgYnkgdGhlIGNwdW1hcCBjb2RlIGl0c2VsZiBpbiB0aGUgY2Fz
ZQpicV9mbHVzaF90b19xdWV1ZSgpIGRyb3BzIHBhY2tldHMsIGNoZWNrIGlmIHJjcHUtPmNwdSBl
cXVhbApzbXBfcHJvY2Vzc29yX2lkKCkuICBNYXliZSBJJ20gdGFraW5nIHRoaXMgdG9vIGZhcj8K
Ci0tIApCZXN0IHJlZ2FyZHMsCiAgSmVzcGVyIERhbmdhYXJkIEJyb3VlcgogIE1TYy5DUywgUHJp
bmNpcGFsIEtlcm5lbCBFbmdpbmVlciBhdCBSZWQgSGF0CiAgTGlua2VkSW46IGh0dHA6Ly93d3cu
bGlua2VkaW4uY29tL2luL2Jyb3VlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
