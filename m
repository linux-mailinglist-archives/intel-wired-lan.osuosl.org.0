Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0DB26AF0E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 23:01:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF0008728A;
	Tue, 15 Sep 2020 21:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 55tgKHoKdsYJ; Tue, 15 Sep 2020 21:01:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5871787288;
	Tue, 15 Sep 2020 21:01:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47AE01BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 21:01:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 386B220016
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 21:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMHg3wYsjSSJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 21:01:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 9BD5D22882
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 21:01:02 +0000 (UTC)
IronPort-SDR: 8mmEsJb/Ot5OC/BUmOynqboD+T7viJbF6wxOBwIAK2ukfa1z7sTSOPww0p/DZ0+dWnNwD13W2H
 IdggNIw0VHCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="156770056"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="156770056"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 14:01:01 -0700
IronPort-SDR: I/XBhBVhiQRmdXFSW8IHhwqdaQGXrJha0whNjIJTr9uaqsnI+mKGIgXYd1vV4bDA/IKhVmdK4K
 cWHvFrIrNatQ==
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="506907383"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.212.118.172])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 14:01:00 -0700
Date: Tue, 15 Sep 2020 14:00:58 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: David Miller <davem@davemloft.net>
Message-ID: <20200915140058.00007553@intel.com>
In-Reply-To: <20200915.133156.1580615428345209072.davem@davemloft.net>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
 <20200915.133156.1580615428345209072.davem@davemloft.net>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] make
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

David Miller wrote:
> Jesse, in all of these patches, I want to see the warning you are
> fixing in the commit message.
> 
> Especially for the sh_eth.c one because I have no idea what the
> compiler is actually warning about just by reading your commit
> message and patch on it's own.

Ok, I'll respin with those added for the compiler warning fixes in
particular, and some simplified descriptions of the classes of kdoc
warnings.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
