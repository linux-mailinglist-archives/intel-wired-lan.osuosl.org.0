Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22C42DC6C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Dec 2020 19:55:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D030D87675;
	Wed, 16 Dec 2020 18:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z7sgE2yORrTM; Wed, 16 Dec 2020 18:55:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 560EB87490;
	Wed, 16 Dec 2020 18:55:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC39F1BF34F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Dec 2020 18:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E61E486053
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Dec 2020 18:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fi0bRmHsazKN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Dec 2020 18:55:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A002C85F61
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Dec 2020 18:55:16 +0000 (UTC)
Date: Wed, 16 Dec 2020 10:55:14 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608144916;
 bh=D3YhoTgf40AlLt+GK+vtGN+dciBHeYG4J/pl0zPj0AM=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=N08LpIyjKM7c3XZosA7JCe6ugqra2HgKjjz/JXsgHerl6m/7fwavEuRuwHG/LFqAv
 Ej12hXAOF48HsTwbxYivm7IYLsNXvMGmdV3GKA9gOE14xQseXrO3t3zPi25J+GFIcE
 n6vZ7Uwo9w8/gm0x6f6vae7JddFW2Flaw4hbANYuOs1wko4uzAKAXZWLfim1sZIuuC
 8OvXZEaGPqrfxjp4T+9E01jKdaztH7cneevYibxfCRGa0nSpA18Fn0pXUEqr1SIhEL
 833uezVgSgZToHvK2K94MlnlMRBh+E3p91ZFihNTPnG9YzoiCsOazLZDPYwrL3sbAd
 5tIKNwJ0QJhyw==
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Message-ID: <20201216105514.3211bc60@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201211145712.72957-1-bjorn.topel@gmail.com>
References: <20201211145712.72957-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 0/2] i40e/ice AF_XDP ZC fixes
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAxMSBEZWMgMjAyMCAxNTo1NzoxMCArMDEwMCBCasO2cm4gVMO2cGVsIHdyb3RlOgo+
IFRoaXMgc2VyaWVzIGFkZHJlc3MgdHdvIGNyYXNoZXMgaW4gdGhlIEFGX1hEUCB6ZXJvLWNvcHkg
bW9kZSBmb3IgaWNlCj4gYW5kIGk0MGUuIE1vcmUgZGV0YWlscyBpbiBlYWNoIGluZGl2aWR1YWwg
dGhlIGNvbW1pdCBtZXNzYWdlLgoKQXBwbGllZCwgcXVldWVkLiBUaGFua3MhCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
