Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02E0535065
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 May 2022 16:13:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06A68411DE;
	Thu, 26 May 2022 14:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cGPXc_Yc_fwW; Thu, 26 May 2022 14:13:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B1D540B21;
	Thu, 26 May 2022 14:13:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B18B1BF331
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 May 2022 14:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 789B160C1A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 May 2022 14:13:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mK4ZemwN7Nj9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 May 2022 14:13:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B798460B47
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 May 2022 14:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653574393; x=1685110393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qUfNjncTCj5hZWQBBEaqTdJWLymKO7ddU2o85+SJ4Gk=;
 b=kUJYKPL9Tf+ntJTXnNyRR7r+gG+FqFTHkIhKEX/vYJd3AF1EiQm2cpbe
 TQQpyNFpQf2g8+Z/3QJdrSGthfbaB+RYZizQm272VR8jS5LgZw8VU1LTA
 DYhVT+u+QFKvXvTlJg0u3K1wYfqzPPR3WDgFlHPBh59bSwUlO4T5eFo6U
 kbUnii7CU2S0HtrHkWksaAlgcpZkURCobU7K6M/IRcL3msGKzJMVUMnI7
 VhJz7Hb8bF9CeQSZDpMGZTDnF8KyOeqP83EJETX0Fb1LZ0L8LwyqFIDyH
 tFSlvZ0f8e8Z0zTOIsIjlBMdccsumZUDjcCfrDo3bN8M/TbvQvhs8iHmL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="360555080"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="360555080"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 07:13:12 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="549604750"
Received: from unknown (HELO s240.localdomain) ([10.237.94.19])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 07:13:09 -0700
From: Piotr Skajewski <piotrx.skajewski@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	olivier.matz@6wind.com
Date: Thu, 26 May 2022 16:10:15 +0200
Message-Id: <20220526141015.43057-1-piotrx.skajewski@intel.com>
X-Mailer: git-send-email 2.35.0.rc0
In-Reply-To: <20220406095252.22338-1-olivier.matz@6wind.com>
References: <20220406095252.22338-1-olivier.matz@6wind.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 0/2] ixgbe: fix promiscuous mode on
 VF
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, stable@vger.kernel.org,
 nicolas.dichtel@6wind.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Mon, Apr 25, 2022 at 01:51:53PM +0200, Olivier Matz wrote:
> > Hi,
> > 
> > On Wed, Apr 06, 2022 at 11:52:50AM +0200, Olivier Matz wrote:
> > > These 2 patches fix issues related to the promiscuous mode on VF.
> > > 
> > > Comments are welcome,
> > > Olivier
> > > 
> > > Cc: stable@vger.kernel.org
> > > Cc: Nicolas Dichtel <nicolas.dichtel@6wind.com>
> > > 
> > > Changes since v1:
> > > - resend with CC intel-wired-lan
> > > - remove CC Hiroshi Shimamoto (address does not exist anymore)
> > > 
> > > Olivier Matz (2):
> > >   ixgbe: fix bcast packets Rx on VF after promisc removal
> > >   ixgbe: fix unexpected VLAN Rx in promisc mode on VF
> > > 
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > Any feedback about this patchset?
> > Comments are welcome.
>
> I didn't get feedback for this patchset until now. Am I doing things
> correctly? Am I targeting the appropriate mailing lists and people?
>
> Please let me know if I missed something.

Hi Olivier,

Sorry for the late reply,
We had to analyze it internally and it took us some time.
After reviewing, we decided that the proposed patches could be accepted.

ACK for series.

Thanks,
Piotr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
