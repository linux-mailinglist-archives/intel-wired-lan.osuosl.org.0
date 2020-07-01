Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05151210197
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 03:37:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B312888AA9;
	Wed,  1 Jul 2020 01:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ge3I-m8Ad9Vz; Wed,  1 Jul 2020 01:37:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4376088A9D;
	Wed,  1 Jul 2020 01:37:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 682521BF34E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 01:37:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3C5F2241A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 01:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgrxe86zHJaX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 01:37:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 842282413D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 01:37:40 +0000 (UTC)
IronPort-SDR: E/FH/HR9bcdxrLZ3gkhmH9YVZTqI3x4maRHoZhI2nNGq0cp6tBuKLuI34RnSU39UH2Sw2cmvbA
 /jQICgacYMtg==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="211496819"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="211496819"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 18:37:39 -0700
IronPort-SDR: FOJdSSvScAe75If4MbAG6v6N7rHXGbSuz6DnceNDVl62rpQjZfMjteVk5kpb/KhnRSZzSVdD8G
 fHpFOeUPX5fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="454819319"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga005.jf.intel.com with ESMTP; 30 Jun 2020 18:37:39 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.199]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.7]) with mapi id 14.03.0439.000;
 Tue, 30 Jun 2020 18:37:39 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: Francesco Ruggeri <fruggeri@arista.com>, Jakub Kicinski <kuba@kernel.org>, 
 David Miller <davem@davemloft.net>
Thread-Topic: [PATCH] igb: reinit_locked() should be called with rtnl_lock
Thread-Index: AQHWTlrL81g79hVuZ0aaoDgUuhrbt6jwv/UAgABMxoCAAOZwIA==
Date: Wed, 1 Jul 2020 01:37:39 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D940449874358A@ORSMSX112.amr.corp.intel.com>
References: <20200629211801.C3D7095C0900@us180.sjc.aristanetworks.com>
 <20200629171612.49efbdaa@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CA+HUmGjHQPUh1frfy5E28Om9WTVr0W+UQVDsm99beC_mbTeMog@mail.gmail.com>
In-Reply-To: <CA+HUmGjHQPUh1frfy5E28Om9WTVr0W+UQVDsm99beC_mbTeMog@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igb: reinit_locked() should be called
 with rtnl_lock
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
Cc: netdev <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Francesco Ruggeri <fruggeri@arista.com>
> Sent: Monday, June 29, 2020 21:51
> To: Jakub Kicinski <kuba@kernel.org>
> Cc: open list <linux-kernel@vger.kernel.org>; netdev
> <netdev@vger.kernel.org>; intel-wired-lan@lists.osuosl.org; David Miller
> <davem@davemloft.net>; Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Subject: Re: [PATCH] igb: reinit_locked() should be called with rtnl_lock
> 
> > Would you mind adding a fixes tag here? Probably:
> >
> > Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
> 
> That seems to be the commit that introduced the driver in 2.6.25.
> I am not familiar with the history of the driver to tell if this was a day 1
> problem or if it became an issue later.
> 
> >
> > And as a matter of fact it looks like e1000e and e1000 have the same
> > bug :/ Would you mind checking all Intel driver producing matches for
> > all the affected ones?
> 
> Do you mean identify all Intel drivers that may have the same issue?
> 

Do not worry about the other Intel drivers, I have our developers looking at each of our drivers for the locking issue.

@David Miller - I am picking up this patch
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
