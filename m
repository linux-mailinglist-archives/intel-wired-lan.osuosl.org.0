Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B81929F95B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Oct 2020 01:00:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CEAB86B70;
	Fri, 30 Oct 2020 00:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ADxaXBkGp4E; Fri, 30 Oct 2020 00:00:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8FC5386B7A;
	Fri, 30 Oct 2020 00:00:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F6881BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 00:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 99CF6874E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 00:00:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jjqwiorJvMsD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Oct 2020 00:00:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 337EB874E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 00:00:21 +0000 (UTC)
IronPort-SDR: taNYr81BwJTyjDJt+ZHOdcWFAf8ejzDhnKV0F5dFqR5byHn6x2Wbnpj3qfaidEUWY9pZPpTRWr
 N4UEk2o1hAjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="167751078"
X-IronPort-AV: E=Sophos;i="5.77,431,1596524400"; d="scan'208";a="167751078"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 17:00:20 -0700
IronPort-SDR: yTpQUte9RR363W10ecWKrcpGw6QFeRIashvD5FdGq7QfdGfu/TVWj9407Oub0v3kA+qqkpfRJ9
 3inOgNApn8Pw==
X-IronPort-AV: E=Sophos;i="5.77,431,1596524400"; d="scan'208";a="304610951"
Received: from sjaggi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.112.32])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 17:00:20 -0700
MIME-Version: 1.0
In-Reply-To: <20201029143439.GE890@ranger.igk.intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
 <20201028201943.93147-11-andre.guedes@intel.com>
 <20201029143439.GE890@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 29 Oct 2020 17:00:19 -0700
Message-ID: <160401601981.13680.8790675217584504450@sjaggi-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH v2 10/10] igc: Implement ndo_xdp_xmit
 callback
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

Quoting Maciej Fijalkowski (2020-10-29 07:34:39)
> On Wed, Oct 28, 2020 at 01:19:43PM -0700, Andre Guedes wrote:
> > This patch introduces the helper igc_xdp_xmit() which implements the
> > ndo_xdp_xmit ops, enabling the igc driver to transmit packets forwarded
> > to it by xdp programs running on other interfaces.
> > 
> > This patch has been tested with the sample app "xdp_redirect_map"
> > located in samples/bpf/.
> > 
> > Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc_main.c | 41 +++++++++++++++++++++++
> >  drivers/net/ethernet/intel/igc/igc_xdp.c  |  3 +-
> >  drivers/net/ethernet/intel/igc/igc_xdp.h  |  2 ++
> >  3 files changed, 44 insertions(+), 2 deletions(-)
> 
> I think that it should be squashed with previous patch? So you have
> XDP_REDIRECT support in a single patch.

Sure, makes sense.

Thanks,
Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
