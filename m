Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3A52A5AA0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 00:40:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9DD8887546;
	Tue,  3 Nov 2020 23:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3tSvSbUoc+id; Tue,  3 Nov 2020 23:40:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48C0B8754F;
	Tue,  3 Nov 2020 23:40:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0A861BF37A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9C5608659E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IWVQi7PhrlbN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 23:40:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4108F86594
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:40:56 +0000 (UTC)
IronPort-SDR: U8nIPlAUDxrf0akCKMzczapyUi4g3S11w4PGBZ/iwxaHYqCBrppoCcPY4aMgEGGgCOGOfVS+ud
 FdMDAp1caIUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="166551818"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="166551818"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 15:40:55 -0800
IronPort-SDR: RADuc6SuB7y4qNyiZymBFwzEvHV17N8H2e1b9m+HAwTBW3+4GKUoPjza7yTMM9yuDiHACe9IJ9
 lum16w4vPy0w==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="305975365"
Received: from anemani-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.254.38.187])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 15:40:55 -0800
MIME-Version: 1.0
In-Reply-To: <20201102182659.GK6427@ranger.igk.intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
 <20201030210351.46482-9-andre.guedes@intel.com>
 <20201102182659.GK6427@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 03 Nov 2020 15:40:55 -0800
Message-ID: <160444685523.10323.13712174376571831748@anemani-mobl2.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH v3 8/9] igc: Add support for XDP_TX
 action
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Quoting Maciej Fijalkowski (2020-11-02 10:26:59)
> > +static struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter,
> > +                                         int cpu)
> > +{
> > +     int index = cpu;
> > +
> > +     if (index >= adapter->num_tx_queues)
> > +             index = index % adapter->num_tx_queues;
> 
> I'm not sure why you don't want to take the suggestion for getting rid of
> modulo op. I won't insist anymore ;)

As I mentioned in the previous comment, I was just following the same
approach from igb. Since I'll submit a v4 already, I'll do that as well.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
