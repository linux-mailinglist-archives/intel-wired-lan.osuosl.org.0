Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1C71A67EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2020 16:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4673A85A5B;
	Mon, 13 Apr 2020 14:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HpQb7wGHuZqw; Mon, 13 Apr 2020 14:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89FEB85540;
	Mon, 13 Apr 2020 14:21:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 785721BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 14:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 73BEC86F8D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 14:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uFetv6WK8gmi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2020 14:21:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F35DE86CD3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 14:21:41 +0000 (UTC)
IronPort-SDR: wHBo7FnxZGShOw8bJj/rSoUxUhMeigZxW7YMsCfbj/uRB2DLovVDYoh5+yT/yTvM69Tqr4+TAP
 SWrjgU+usVbg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 07:21:36 -0700
IronPort-SDR: i8gShf0X7zk7BO3TLUVFDIG/CijacUlgnfZkLRJ1dOEhgMWIi7iDlvFWkUNRobElXa1HtnYjob
 Z4tcpVcMp0ug==
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; d="scan'208";a="245148696"
Received: from ksmartin-mobl.amr.corp.intel.com (HELO localhost)
 ([10.251.159.43])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 07:21:35 -0700
MIME-Version: 1.0
In-Reply-To: <c15d5749-cbc0-6602-72fb-574c635693ac@intel.com>
References: <20200411002834.13916-1-andre.guedes@intel.com>
 <20200411002834.13916-3-andre.guedes@intel.com>
 <c15d5749-cbc0-6602-72fb-574c635693ac@intel.com>
From: Andre Guedes <andre.guedes@linux.intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Apr 2020 07:21:35 -0700
Message-ID: <158678769505.32076.16137849283842601925@ksmartin-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH 2/4] igc: Remove mac_table from
 igc_adapter
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> > index 1127ef81e374..e190a7f83c3c 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> > +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> > @@ -62,6 +62,7 @@
> >    * (RAR[15]) for our directed address used by controllers with
> >    * manageability enabled, allowing us room for 15 multicast addresses.
> >    */
> > +#define IGC_RAH_RAH_MASK     0x0000FFFF
> Hello Andre, does it intentioanlly twice _RAH_RAH_?

Yes. The field name in the datasheet is also 'RAH'. So we have one for the
register name and one for the field name.

- Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
