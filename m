Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DDC4EC310
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Mar 2022 14:21:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F75584562;
	Wed, 30 Mar 2022 12:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ecl02lzMp7vZ; Wed, 30 Mar 2022 12:21:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 871C78455F;
	Wed, 30 Mar 2022 12:21:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 79C061BF59F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 12:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B27E4049A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 12:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j4JFl-5KV34l for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Mar 2022 12:21:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7880F4048F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 12:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648642879; x=1680178879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OXzBCDD0s+U+ac+j1S8pe7nAWp2yh4vu1aPuuDcA/hE=;
 b=TeX347iJfS9Zl5lKX9MdaxZ0H0e6r6VHu063sInqHD3yDJienfX9oNA8
 NTo4hZR5Q4p1pyU6qMJyQVDCiFClA8oJWDIFVQCax6PUybs1O+ajF3Bqs
 0IKBKLrzqBCgEjKnl4/p/RQkM9nhJu9RBz+asfuCamc69oHybTwO6XibY
 jid64oeYvTRhrOu7P4qpRV1nR4KpTx5REJMoVXdV/6TkhHmtnlOUR96Ss
 Bbtme6bhmm8DD5WaosYXk+Ga6r1iJqUwVgd8b123Zid+TBX9yS9ivexUe
 A2kN+gQO/RbFwaHYnpcGwS3tDqLSUUhLcTxbufwk4zO8LeR4kbsxFheFs w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239458949"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="239458949"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 05:21:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="837252293"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga005.fm.intel.com with ESMTP; 30 Mar 2022 05:21:15 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22UCLE8c019312; Wed, 30 Mar 2022 13:21:14 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 "Jakub Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Date: Wed, 30 Mar 2022 14:18:35 +0200
Message-Id: <20220330121835.2737360-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <CO1PR11MB508954503C974FD6D9E162FCD61D9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220325132524.1765342-1-ivecera@redhat.com>
 <CO1PR11MB508954503C974FD6D9E162FCD61D9@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix MAC address setting
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
Cc: ivecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 mschmidt <mschmidt@redhat.com>, open list <linux-kernel@vger.kernel.org>,
 poros <poros@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 28 Mar 2022 17:53:19 +0000

Hey netdev maintainers,

> > -----Original Message-----
> > From: Ivan Vecera <ivecera@redhat.com>
> > Sent: Friday, March 25, 2022 6:25 AM
> > To: netdev@vger.kernel.org
> > Cc: poros <poros@redhat.com>; mschmidt <mschmidt@redhat.com>;
> > Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Jakub
> > Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; moderated
> > list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; open list <linux-
> > kernel@vger.kernel.org>
> > Subject: [PATCH net v2] ice: Fix MAC address setting
> > 
> > Commit 2ccc1c1ccc671b ("ice: Remove excess error variables") merged
> > the usage of 'status' and 'err' variables into single one in
> > function ice_set_mac_address(). Unfortunately this causes
> > a regression when call of ice_fltr_add_mac() returns -EEXIST because
> > this return value does not indicate an error in this case but
> > value of 'err' remains to be -EEXIST till the end of the function
> > and is returned to caller.
> > 
> > Prior mentioned commit this does not happen because return value of
> > ice_fltr_add_mac() was stored to 'status' variable first and
> > if it was -EEXIST then 'err' remains to be zero.
> > 
> > Fix the problem by reset 'err' to zero when ice_fltr_add_mac()
> > returns -EEXIST.
> > 
> > Fixes: 2ccc1c1ccc671b ("ice: Remove excess error variables")
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > ---
> 
> Thanks for the v2. This looks great. Good analysis of how this happened in the commit message, I appreciate that.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

This is an urgent fix, so we would like it to go through -net, not
IWL.
It has this Reviewed-by, and also

Acked-by: Alexander Lobakin <alexandr.lobakin@intel.com>

> 
> >  drivers/net/ethernet/intel/ice/ice_main.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 

--- 8< ---

> > --
> > 2.34.1

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
