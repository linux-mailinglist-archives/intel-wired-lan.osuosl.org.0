Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 457C529F95A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Oct 2020 01:00:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D802586AE0;
	Fri, 30 Oct 2020 00:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dm4EfDAQQ_4j; Fri, 30 Oct 2020 00:00:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4544586B5B;
	Fri, 30 Oct 2020 00:00:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2FECF1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 00:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2CB918687E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 00:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8Slk72DDlGQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Oct 2020 00:00:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F97C86943
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Oct 2020 00:00:16 +0000 (UTC)
IronPort-SDR: jIMWlwlnGlrzd1dR3Pb7AFbLfTkdXBIiDsSmmscX+NAHlA118dEIej8EddwkUjY0x+pLj08lH3
 QTv6jpGC1tjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="168663367"
X-IronPort-AV: E=Sophos;i="5.77,431,1596524400"; d="scan'208";a="168663367"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 17:00:14 -0700
IronPort-SDR: kd4ZFmMjM68WiPjLMzPQoYi88nWlyGg8pjPE0JPJkLPLq45jhhVXQt3mrwIzIdFkg+DVw9+R7/
 DUV+9WlVpyUg==
X-IronPort-AV: E=Sophos;i="5.77,431,1596524400"; d="scan'208";a="469330512"
Received: from sjaggi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.112.32])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 17:00:14 -0700
MIME-Version: 1.0
In-Reply-To: <20201029143009.GD890@ranger.igk.intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
 <20201028201943.93147-9-andre.guedes@intel.com>
 <20201029143009.GD890@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 29 Oct 2020 17:00:13 -0700
Message-ID: <160401601359.13680.1113520617252128897@sjaggi-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH v2 08/10] igc: Add support for XDP_TX
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

Quoting Maciej Fijalkowski (2020-10-29 07:30:09)
> > +
> > +struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter, int cpu)
> > +{
> > +     int index = cpu;
> > +
> > +     if (index >= adapter->num_tx_queues)
> > +             index = index % adapter->num_tx_queues;
> 
> So you kept modulos? :) I think you can simply substitute it with
> subtraction.

Did you mean something like:

	while (index >= adapter->num_tx_queues)
		index -= adapter->num_tx_queues

That should work too. I just followed the same approach we do in igb driver
here.

Thanks,
Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
