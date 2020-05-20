Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5815D1DBE16
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 21:38:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C167F88C7B;
	Wed, 20 May 2020 19:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I6kkbwdYawmm; Wed, 20 May 2020 19:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8033988BC9;
	Wed, 20 May 2020 19:38:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CD381BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2D8B7204FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lTqDKTrqp7qw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 17:03:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0BD4F204D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:03:48 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DFE420708;
 Wed, 20 May 2020 17:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589994228;
 bh=/YtqEongQLlP1gJq4f41wHCnKACXtCf/GgNRIFAx/h8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=C01ybvQtnzIB0EvtgCHy/2qwoBsIDW3cigmV2uHwWrQC7vsZi+YBAGHYbML7SSGjs
 2YkZY0jN7JXGK/oNAQ0OuUEFhf7xudXR7VHRs9DrrsJGtsJ6ZBOBPW45y7A8zIx1+k
 oSaGA+AV+XqTRJl6HOoqm5CMAzFdgPermilOA5MA=
Date: Wed, 20 May 2020 10:03:42 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Message-ID: <20200520100342.620a0979@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200520094742.337678-10-bjorn.topel@gmail.com>
References: <20200520094742.337678-1-bjorn.topel@gmail.com>
 <20200520094742.337678-10-bjorn.topel@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 20 May 2020 19:38:45 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 09/15] ice,
 xsk: migrate to new MEM_TYPE_XSK_BUFF_POOL
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
Cc: maximmi@mellanox.com, maciej.fijalkowski@intel.com, hawk@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyMCBNYXkgMjAyMCAxMTo0NzozNiArMDIwMCBCasO2cm4gVMO2cGVsIHdyb3RlOgo+
IEZyb206IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPiAKPiBSZW1vdmUg
TUVNX1RZUEVfWkVST19DT1BZIGluIGZhdm9yIG9mIHRoZSBuZXcgTUVNX1RZUEVfWFNLX0JVRkZf
UE9PTAo+IEFQSXMuCj4gCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnCj4g
U2lnbmVkLW9mZi1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVs
LmNvbT4KCnBhdGNoIDggYWxzbyBoYXMgYSB3YXJuaW5nIEkgY2FuJ3QgZmlndXJlIG91dC4KCkJ1
dCBoZXJlIChwYXRjaCA5KSBpdCdzIHF1aXRlIGNsZWFyOgoKZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV94c2suYzo0MTQ6IHdhcm5pbmc6IEV4Y2VzcyBmdW5jdGlvbiBwYXJhbWV0
ZXIgJ2FsbG9jJyBkZXNjcmlwdGlvbiBpbiAnaWNlX2FsbG9jX3J4X2J1ZnNfemMnCmRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmM6NDgwOiB3YXJuaW5nOiBFeGNlc3MgZnVu
Y3Rpb24gcGFyYW1ldGVyICd4ZHAnIGRlc2NyaXB0aW9uIGluICdpY2VfY29uc3RydWN0X3NrYl96
YycKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
