Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A26B26687B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 21:00:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A6CA87B83;
	Fri, 11 Sep 2020 19:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r68ykRy45Myt; Fri, 11 Sep 2020 19:00:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 545C287B88;
	Fri, 11 Sep 2020 19:00:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6EBCC1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 19:00:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 576F42E2B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 19:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nryMRCNNETMr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 19:00:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 9802D2E2BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 19:00:11 +0000 (UTC)
IronPort-SDR: Y1/dStOUw6aBiXNhcwFilEECzxzp2ncQz0ujM9n5sgAMSdmk6O29Qv+oIgidmFSikwf67yMIfb
 iaZC456aD1ew==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="158872738"
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="158872738"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 12:00:08 -0700
IronPort-SDR: kbJRtATcXqMIZYEWhTVSp4nx1R87fX0Ubo85bNfgkBXkokJ0MQwU3jL6QnJnsGJNGB/j0DKpvp
 RSclCt8pb/iQ==
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="329876700"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.209.99.126])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 12:00:07 -0700
Date: Fri, 11 Sep 2020 12:00:05 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20200911120005.00000178@intel.com>
In-Reply-To: <20200911075515.6d81066b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911075515.6d81066b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 00/11] make
 drivers/net/ethernet W=1 clean
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski wrote:

> On Thu, 10 Sep 2020 18:23:26 -0700 Jesse Brandeburg wrote:
> > Some of these patches are already sent to Intel Wired Lan, but the rest
> > of the series titled drivers/net/ethernet affects other drivers, not
> > just Intel, but they depend on the first five.
> 
> Great stuff. Much easier to apply one large series than a thousand
> small patches. I haven't read all the comment changes but FWIW:
> 
> Reviewed-by: Jakub Kicinski <kuba@kernel.org>

Thanks!

> I feel slightly bad for saying this but I think your config did not
> include all the drivers, 'cause I'm still getting some warnings after
> patch 11. Regardless this is impressive effort, thanks!

No worries! I want to get it right, can you share your methodology?

I saw from some other message that you're doing
make CC="ccache gcc" allmodconfig
make CC="ccache gcc" -j 64 W=1 C=1

Is that the right sequence? did you start with a make mrproper as well?
I may have missed some drivers when I did this:
make allyesconfig
make menuconfig
<turn on all "Ethernet Drivers" = m manually>

but I'd like to target the actual job you're running and use that as
the short-term goal.

Also, if you have any comments about the removal of the lvalue from
some of the register read operations, I figure that is the riskiest
part of all this.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
