Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2AB244008
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Aug 2020 22:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8DE6788A18;
	Thu, 13 Aug 2020 20:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sAT-v5Ldypvi; Thu, 13 Aug 2020 20:46:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFF6B88A47;
	Thu, 13 Aug 2020 20:46:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E5DBA1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 20:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A8EF78716B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 20:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T9G5i0N_vzqA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Aug 2020 20:46:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C56B88713F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 20:46:30 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBFAD20675;
 Thu, 13 Aug 2020 20:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597351589;
 bh=uehgvCNV3BFvFyx84FWaaRHqZkxJXKC6eo2Ocl0e9CE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qSTWHfncZiCfp+zQHvyQj0mIPNRc2tnWbFIUzawYrmODh4lNB58BXbgFQNCZkvaF7
 AnRxxiyEuuE9B9YmLde4KFRzP/EH5fjBfeDdEu/syvoKTEqrMv5jViSRxR2BuxNUE2
 xLutx0S278Avv/khFCMG3xZOJak4nj/gx6A4cYwA=
Date: Thu, 13 Aug 2020 13:46:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <20200813134627.4dd521cc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200813112638.12699-1-sassmann@kpanic.de>
References: <20200813112638.12699-1-sassmann@kpanic.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: fix return of uninitialized
 aq_ret in i40e_set_vsi_promisc
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAxMyBBdWcgMjAyMCAxMzoyNjozOCArMDIwMCBTdGVmYW4gQXNzbWFubiB3cm90ZToK
PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYzogSW4g
ZnVuY3Rpb24g4oCYaTQwZV9zZXRfdnNpX3Byb21pc2PigJk6Cj4gZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmM6MTE3NjoxNDogZXJyb3I6IOKAmGFxX3Jl
dOKAmSBtYXkgYmUgdXNlZCB1bmluaXRpYWxpemVkIGluIHRoaXMgZnVuY3Rpb24gWy1XZXJyb3I9
bWF5YmUtdW5pbml0aWFsaXplZF0KPiAgIGk0MGVfc3RhdHVzIGFxX3JldDsKPiAKPiBJbiBjYXNl
IHRoZSBjb2RlIGluc2lkZSB0aGUgaWYgc3RhdGVtZW50IGFuZCB0aGUgZm9yIGxvb3AgZG9lcyBu
b3QgZ2V0Cj4gZXhlY3V0ZWQgYXFfcmV0IHdpbGwgYmUgdW5pbml0aWFsaXplZCB3aGVuIHRoZSB2
YXJpYWJsZSBnZXRzIHJldHVybmVkIGF0Cj4gdGhlIGVuZCBvZiB0aGUgZnVuY3Rpb24uCj4gCj4g
QXZvaWQgdGhpcyBieSBjaGFuZ2luZyBudW1fdmxhbnMgZnJvbSBpbnQgdG8gdTE2LCBzbyBhcV9y
ZXQgYWx3YXlzIGdldHMKPiBzZXQuIE1ha2luZyB0aGlzIGNoYW5nZSBpbiBhZGRpdGlvbmFsIHBs
YWNlcyBhcyBudW1fdmxhbnMgc2hvdWxkIG5ldmVyCj4gYmUgbmVnYXRpdmUuCj4gCj4gRml4ZXM6
IDM3ZDMxOGQ3ODA1ZiAoImk0MGU6IFJlbW92ZSBzY2hlZHVsaW5nIHdoaWxlIGF0b21pYyBwb3Nz
aWJpbGl0eSIpCj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIEFzc21hbm4gPHNhc3NtYW5uQGtwYW5p
Yy5kZT4KCkFja2VkLWJ5OiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPgoKR29vZCBl
bm91Z2ggLSBpbiBnZW5lcmFsIHVubGVzcyB5b3UncmUgdHJ5aW5nIHRvIHNhdmUgc3BhY2UgdXNp
bmcgdHlwZXMKb3RoZXIgdGhhbiB1bnNpZ25lZCBpbnQgaXMgbm90IHJlYWxseSB3b3J0aCBpdCwg
YW5kIGNhbiBzbG93IHRoZSBjb2RlCmRvd24gLSBzaW5jZSAyQiBhcml0aG1ldGljIGlzIGFjdHVh
bGx5IHNsb3dlc3Qgb24gbW9kZXJuIENQVXMuIEJ1dCBpdCdzCm5vdCBhIGZhc3QgcGF0aCwgc28g
ZG9lc24ndCBtYXR0ZXIgbXVjaC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
