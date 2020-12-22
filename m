Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A48282E0DEA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 18:43:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D42685FA5;
	Tue, 22 Dec 2020 17:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Qh9lwq1BFwO; Tue, 22 Dec 2020 17:43:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD30F85F8F;
	Tue, 22 Dec 2020 17:43:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE5811BF873
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 17:43:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB19E86822
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 17:43:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b6BAR3nr3lec for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 17:43:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0BC82867F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 17:43:55 +0000 (UTC)
IronPort-SDR: l1eC7K2DDO4hSVPIXkUW0JZngEkAySMyzx7TMFOCTQ4/sBp5WaTVeCb7wFxFqTxbJ5AOxm3siZ
 8EL+Y8WvBRFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9843"; a="173333105"
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="173333105"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 09:43:53 -0800
IronPort-SDR: Oiq22H2SR468LGHGgLRW8NaGi04eSIJiSiIndH+9UnDBuIq/rVeVPUUh54XruTlL3UO1zODPjE
 3evh+1/UWPVg==
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="492337471"
Received: from ticela-az-003.amr.corp.intel.com (HELO localhost)
 ([10.254.73.166])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 09:43:53 -0800
MIME-Version: 1.0
In-Reply-To: <20201222142045.GI2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201222142045.GI2943@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 22 Dec 2020 09:43:52 -0800
Message-ID: <160865903286.65485.9554304438716971248@ticela-az-003.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH 00/10] igc: Add support for AF_XDP
 zero-copy
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

Quoting Maciej Fijalkowski (2020-12-22 06:20:45)
> On Thu, Dec 17, 2020 at 12:24:05PM -0800, Andre Guedes wrote:
> > Hi,
> > 
> > This series adds AF_XDP zero-copy feature to igc driver.
> > 
> > The initial patches do some code refactoring, preparing the code base to
> > land the AF_XDP zero-copy feature, avoiding code duplications. The last
> > patches of the series are the ones implementing the feature.
> > 
> > The last patch which indeed implements AF_XDP zero-copy support was
> > originally way too lengthy so, for the sake of code review, I broke it
> > up into two patches: one adding support for the RX functionality and the
> > other one adding TX support. Feel free to squash those two patches when
> > pushing the series to net-next if you find appropriate.
> 
> Generally this looks good! I had only minor comments.

Thanks for your review, Maciej. I'm working on the v2 and should submit it
soon.

> I'm interested how are you going to utilize the AF_XDP ZC, probably
> something related to TSN ;)

Yes, that's right. In TSN use cases, tx and rx latency within the system is
relevant. AF_XDP ZC infra provides us a lower latency alternative to AF_PACKET.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
