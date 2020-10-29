Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC1B29F957
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Oct 2020 01:00:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2961486972;
	Thu, 29 Oct 2020 23:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QLPkpLYdUmla; Thu, 29 Oct 2020 23:59:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 62BEE86657;
	Thu, 29 Oct 2020 23:59:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 165E41BF20D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 23:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0ECD02045C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 23:59:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id emauboOxI6kA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Oct 2020 23:59:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 64F862001C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Oct 2020 23:59:56 +0000 (UTC)
IronPort-SDR: qVSeoBI8cqksjyJ/BUiJyfaKGTjWCWR8NBwPRaR66CT/GQAFcrYMY75esSygaMjczRV6iZ54pM
 HxEDz3+rnL6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="147816783"
X-IronPort-AV: E=Sophos;i="5.77,431,1596524400"; d="scan'208";a="147816783"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 16:59:55 -0700
IronPort-SDR: d0M1+Kcb/fSCBpiIQwUl51vKCUz8avao45kE4eZ1lPv3HgpIl3irTZcOL05hYGTGnGfkXh0jCV
 IxIIXkQiMBEA==
X-IronPort-AV: E=Sophos;i="5.77,431,1596524400"; d="scan'208";a="526924063"
Received: from sjaggi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.112.32])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 16:59:55 -0700
MIME-Version: 1.0
In-Reply-To: <20201029140744.GB890@ranger.igk.intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
 <20201028201943.93147-6-andre.guedes@intel.com>
 <20201029140744.GB890@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 29 Oct 2020 16:59:54 -0700
Message-ID: <160401599423.13680.4898876957090159392@sjaggi-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH v2 05/10] igc: Refactor rx timestamp
 handling
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

Quoting Maciej Fijalkowski (2020-10-29 07:07:44)
> On Wed, Oct 28, 2020 at 01:19:38PM -0700, Andre Guedes wrote:
> > This patch refactors the rx timestamp handling in preparation to land
> > XDP support.
> > 
> > RX timestamps are put in the rx buffer by hardware, before the packet
> > data. When creating the xdp buffer, we will need to check the rx
> > descriptor to determine if the buffer contains timestamp information
> > and consider the offset when setting xdp.data.
> 
> Out of curiosity, is the timestamping somehow configurable on this device
> or does it always take place? Could it be toggled?

It is configurable in the sense that we can enable/disable timestamps.
How timestamps are reported to host, however, is not configurable. The only
method is via rx buffers.

Thanks,
Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
