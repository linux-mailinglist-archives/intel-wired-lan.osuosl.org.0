Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7B5242E3F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Aug 2020 19:46:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 17AEE23453;
	Wed, 12 Aug 2020 17:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v6cnqjlMEqqh; Wed, 12 Aug 2020 17:46:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D87A72353A;
	Wed, 12 Aug 2020 17:46:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E2921BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Aug 2020 17:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 69BEC86B91
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Aug 2020 17:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LDrfKpP5Y10I for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Aug 2020 17:46:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EC1F686B90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Aug 2020 17:46:31 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80E682076C;
 Wed, 12 Aug 2020 17:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597254390;
 bh=rXcoDk9gtfvVEnCmNy1rAZyEXFA+hEFh1I5Kv8xj2Xs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=v5O44GKlgq291C72JNGazRYcN+6RHvge/gdLnu/APCsLGcNQ08dqsN57RUbYCjxXn
 zrZMX6cydZiYAbwK3k5XqIWZaDmMiYsh+gQhNjpIFnjLHgOodKp9JAjTJEFqmRQgv6
 ZrzCNq56Gyai7z9PhLx7EVxAKmcxGs0UIORMjri4=
Date: Wed, 12 Aug 2020 10:46:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <20200812104628.340a073a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200812143950.11675-1-sassmann@kpanic.de>
References: <20200812143950.11675-1-sassmann@kpanic.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix uninitialized variable in
 i40e_set_vsi_promisc
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

T24gV2VkLCAxMiBBdWcgMjAyMCAxNjozOTo1MCArMDIwMCBTdGVmYW4gQXNzbWFubiB3cm90ZToK
PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYzogSW4g
ZnVuY3Rpb24g4oCYaTQwZV9zZXRfdnNpX3Byb21pc2PigJk6Cj4gZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmM6MTE3NjoxNDogZXJyb3I6IOKAmGFxX3Jl
dOKAmSBtYXkgYmUgdXNlZCB1bmluaXRpYWxpemVkIGluIHRoaXMgZnVuY3Rpb24gWy1XZXJyb3I9
bWF5YmUtdW5pbml0aWFsaXplZF0KPiAgIGk0MGVfc3RhdHVzIGFxX3JldDsKCldoYXQncyB5b3Vy
IGNvbXBpbGVyPyBJIGRvbid0IHNlZSBpdCBvbiBHQ0MgMTAuMS4KCj4gSW4gY2FzZSB0aGUgY29k
ZSBpbnNpZGUgdGhlIGlmIHN0YXRlbWVudCBhbmQgdGhlIGZvciBsb29wIGRvZXMgbm90IGdldAo+
IGV4ZWN1dGVkIGFxX3JldCB3aWxsIGJlIHVuaW5pdGlhbGl6ZWQgd2hlbiB0aGUgdmFyaWFibGUg
Z2V0cyByZXR1cm5lZCBhdAo+IHRoZSBlbmQgb2YgdGhlIGZ1bmN0aW9uLgoKSSB0aGluayBpdCdk
IGJlIGEgYmV0dGVyIGZpeCB0byBtYWtlIG51bV92bGFucyB1bnNpZ25lZC4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
