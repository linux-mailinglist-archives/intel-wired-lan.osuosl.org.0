Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C6D3A32B2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 20:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87D7A4065F;
	Thu, 10 Jun 2021 18:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z4GLb7IvLn2H; Thu, 10 Jun 2021 18:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 786FA4064D;
	Thu, 10 Jun 2021 18:07:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E72DB1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 18:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D548540133
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 18:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8izHWPzis3LJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 18:07:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E28C40118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 18:07:29 +0000 (UTC)
IronPort-SDR: zs4Ckb6rpo5HYta+0e+oDq6ExaCrn215ChVM+pzA55ynw6FS4bQGyaxMeLTGfh7bKLPBFl0jzQ
 1vvO9MSQrZGQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="192678145"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="192678145"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:07:27 -0700
IronPort-SDR: WuMbB/CbGxDDjSsFj80QzFPIj/91kVvmrKBhBl1Et09AJrm05rnxKtm7+AehpfA82T49YS4Xt2
 ghnj0DKcdfzg==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="414201226"
Received: from caclark-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.156.65])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:07:25 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: =?utf-8?Q?J=C4=99drzej?= Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20210611224217.94872-1-jedrzej.jagielski@intel.com>
References: <20210611224217.94872-1-jedrzej.jagielski@intel.com>
Date: Thu, 10 Jun 2021 11:07:24 -0700
Message-ID: <878s3hvbj7.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v1] igb: Fix position of
 assignment to *ring
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
Cc: =?utf-8?Q?J=C4=99drzej?= Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpKxJlkcnplaiBKYWdpZWxza2kgPGplZHJ6ZWouamFnaWVsc2tpQGludGVsLmNvbT4gd3Jp
dGVzOgoKPiBBc3NpZ25tZW50IHRvICpyaW5nIHNob3VsZCBiZSBkb25lIGFmdGVyIGNvcnJlY3Ru
ZXNzIGNoZWNrIG9mIHRoZQo+IGFyZ3VtZW50IHF1ZXVlLgo+Cj4gRml4ZXM6IDkxZGIzNjQyMzZj
OCAoImlnYjogUmVmYWN0b3IgaWdiX2NvbmZpZ3VyZV9jYnMoKSIpCj4gU2lnbmVkLW9mZi1ieTog
SmVkcnplaiBKYWdpZWxza2kgPGplZHJ6ZWouamFnaWVsc2tpQGludGVsLmNvbT4KPiAtLS0KCkFj
a2VkLWJ5OiBWaW5pY2l1cyBDb3N0YSBHb21lcyA8dmluaWNpdXMuZ29tZXNAaW50ZWwuY29tPgoK
Ci0tIApWaW5pY2l1cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
