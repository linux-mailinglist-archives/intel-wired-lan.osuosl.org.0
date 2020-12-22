Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ACB2E03B3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 02:13:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F34128682A;
	Tue, 22 Dec 2020 01:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y4NCo4CzVAoR; Tue, 22 Dec 2020 01:13:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9F3386854;
	Tue, 22 Dec 2020 01:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 213181BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D41C23115
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QJeZW33R4b17 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 01:13:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 994B9231A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:46 +0000 (UTC)
IronPort-SDR: T9PWJ231kePAA24+jBiZxixXm5RLpgpPBtALYiowpvfnffxL4O1PFdE4EU4Yu6yC1mUXG8Nd23
 Qu0fjIxcmICQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="155594672"
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="155594672"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 17:13:44 -0800
IronPort-SDR: ftmXhl/eQbhGtUBoBn9cwEy56wYPSoPAD5SO/JP13ucspAurriXpTDuBUBYyFGjeNF0YGaPSF8
 K3UQZBDPI9uw==
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="457034840"
Received: from bgdudka-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.1.108])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 17:13:44 -0800
MIME-Version: 1.0
In-Reply-To: <20201221225811.GC2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-7-andre.guedes@intel.com>
 <20201221225811.GC2943@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 21 Dec 2020 17:13:44 -0800
Message-ID: <160859962405.45139.5477040596348797483@bgdudka-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH 06/10] igc: Introduce
 igc_update_tx_stats()
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

Quoting Maciej Fijalkowski (2020-12-21 14:58:11)
> On Thu, Dec 17, 2020 at 12:24:11PM -0800, Andre Guedes wrote:
> > Likewise we do with the RX stats, this patch encapsulates the code that
> > updates the driver TX stats in its own local helper.
> 
> I think you can squash this onto previous patch.

I can do that.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
