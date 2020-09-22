Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0741E27483C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Sep 2020 20:36:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2682520788;
	Tue, 22 Sep 2020 18:36:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id preSTVk-ReEt; Tue, 22 Sep 2020 18:36:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D3F5B203C4;
	Tue, 22 Sep 2020 18:36:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 327101BF865
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Sep 2020 18:36:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2BBB286667
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Sep 2020 18:36:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YoaroAr5PKLx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Sep 2020 18:35:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B59AC860D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Sep 2020 18:35:59 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30D812065D;
 Tue, 22 Sep 2020 18:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600799759;
 bh=jaCf4zip5swAI+S2TMkjFoRd/HDKVe1ywnXGlHM6tu8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=wDv7z04Gs+mB/qvO+x+mZBwLe0FzIDYysnbMGuCCA7KSemiT6EE81giV1vFMu3KWe
 jHgbXg3WFOBJxDGIP+l8JT5CYoOJiUbczT6FWIQuKd0BVar8cjcmmWW6IE7gqJ8Vdl
 rVIreXtoxwidqPpn9eXmu+7bVaJYh1JbXMVbMNhA=
Date: Tue, 22 Sep 2020 11:35:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>
Message-ID: <20200922113557.15a95bf4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <DM6PR11MB289053EE6E23D53BD4D2126BBC3B0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200722012716.2814777-1-kuba@kernel.org>
 <20200722012716.2814777-5-kuba@kernel.org>
 <SN6PR11MB2896F5ACC5A59F7F330183FFBC3C0@SN6PR11MB2896.namprd11.prod.outlook.com>
 <20200921144408.19624164@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <DM6PR11MB289053EE6E23D53BD4D2126BBC3B0@DM6PR11MB2890.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 4/7] selftests: net: add a
 test for shared UDP tunnel info tables
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 22 Sep 2020 17:34:41 +0000 Brown, Aaron F wrote:
> I should have tunneling enabled as modules, config I was using in
> it's entirety (started with a `make localmodconfig` on a Red Hat
> EL8.x box then started adding modules as needed, so I expect I am
> missing something :)  config follows:

No luck :(

# ./udp_tunnel_nic.sh 
PASSED all 435 checks

Since your failures are on port 1 - which is the config where the
driver sleeps I wonder if this is not a race condition of some sort.

Could you try poking at the values in function check_tables?
The sleep lengths and the retries?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
