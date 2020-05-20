Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 695661DBE17
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 21:38:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1693A87100;
	Wed, 20 May 2020 19:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LwYMRD1s1Xo0; Wed, 20 May 2020 19:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22E86870EA;
	Wed, 20 May 2020 19:38:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C2F1D1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE695881BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bw-SLx8qj2lg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 17:02:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4642B8818F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:02:29 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7711420708;
 Wed, 20 May 2020 17:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589994149;
 bh=whpzmBwWqd+gQAUGWLi+RbgTC02qz0FLfolqqvqu7LQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Dz1iB4Meka3S3vPoGpbLpYfm8i83lJ+hM5iKd7NtF5xIWoWGUYqxZ6XkRPpAAvQy5
 tVa41gDmBBO528lGkjjhXJo31Tn7PniVeyCbT+HrvISOEV1KTn2Mqf7dCjbJ44CSV0
 vxqWwNyOSL8m6cPKswHtskR6dwCdw6/q5eQaEGxI=
Date: Wed, 20 May 2020 10:02:18 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Message-ID: <20200520100218.56e4ee2c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200520094742.337678-8-bjorn.topel@gmail.com>
References: <20200520094742.337678-1-bjorn.topel@gmail.com>
 <20200520094742.337678-8-bjorn.topel@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 20 May 2020 19:38:45 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 07/15] i40e: separate
 kernel allocated rx_bi rings from AF_XDP rings
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

T24gV2VkLCAyMCBNYXkgMjAyMCAxMTo0NzozNCArMDIwMCBCasO2cm4gVMO2cGVsIHdyb3RlOgo+
IEZyb206IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPiAKPiBDb250aW51
aW5nIHRoZSBwYXRoIHRvIHN1cHBvcnQgTUVNX1RZUEVfWFNLX0JVRkZfUE9PTCwgdGhlIEFGX1hE
UAo+IHplcm8tY29weS9za19idWZmIHJ4X2JpIHJpbmdzIGFyZSBub3cgc2VwYXJhdGUuIEZ1bmN0
aW9ucyB0byBwcm9wZXJseQo+IGFsbG9jYXRlIHRoZSBkaWZmZXJlbnQgcmluZ3MgYXJlIGFkZGVk
IGFzIHdlbGwuCj4gCj4gdjMtPnY0OiBNYWRlIGk0MGVfZmRfaGFuZGxlX3N0YXR1cygpIHN0YXRp
Yy4gKGtidWlsZCB0ZXN0IHJvYm90KQo+IAo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1
b3NsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVs
LmNvbT4KClRoZXJlIGlzIGEgbmV3IHdhcm5pbmcgaGVyZSwgYXQgbGVhc3Qgb25lLiBCdXQgaTQw
ZSBoYXMgc28gbWFueQpleGlzdGluZyB3YXJuaW5ncyB3aXRoIFc9MSwgSSBjYW4ndCBmaWd1cmUg
b3V0IHdoaWNoIG9uZSBpcyBuZXcgOigKCllvdSBtb3N0IGxpa2VseSBmb3Jnb3QgdG8gYWRqdXN0
IGtkb2Mgc29tZXdoZXJlIGFmdGVyIGFkZGluZyBvcgpyZW1vdmluZyBhIGZ1bmN0aW9uIHBhcmFt
ZXRlci4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
