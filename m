Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6925A4DEC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 03:47:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E97C386DE7;
	Fri, 21 Jun 2019 01:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9acF5n1akUPr; Fri, 21 Jun 2019 01:47:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C77886CE7;
	Fri, 21 Jun 2019 01:47:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 778131BF404
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 01:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 741AD85FE4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 01:47:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mywAqYQ0RtVQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2019 01:47:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 09D8285FD4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 01:47:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 18:47:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="359145176"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jun 2019 18:47:51 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 20 Jun 2019 18:47:51 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.135]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.187]) with mapi id 14.03.0439.000;
 Thu, 20 Jun 2019 18:47:51 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Artem Bityutskiy <dedekind1@gmail.com>, "David S. Miller"
 <davem@davemloft.net>
Thread-Topic: [PATCH 2/2] net: intel: igb: add RR2DCDELAY to ethtool
 registers dump
Thread-Index: AQHVJ9NVgGkqkqdx+EWP8Pmc6SGThg==
Date: Fri, 21 Jun 2019 01:47:50 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970B1271@ORSMSX103.amr.corp.intel.com>
References: <20190618115513.99661-1-dedekind1@gmail.com>
 <20190618115513.99661-2-dedekind1@gmail.com>
In-Reply-To: <20190618115513.99661-2-dedekind1@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/2] net: intel: igb: add RR2DCDELAY
 to ethtool registers dump
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2019-06-18 at 14:55 +0300, Artem Bityutskiy wrote:
> From: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
> 
> This patch adds the RR2DCDELAY register to the ethtool registers dump.
> RR2DCDELAY exists on I210 and I211 Intel Gigabit Ethernet chips and it stands
> for "Read Request To Data Completion Delay". Here is how this register is
> described in the I210 datasheet:
> 
> "This field captures the maximum PCIe split time in 16 ns units, which is the
> maximum delay between the read request to the first data completion. This is
> giving an estimation of the PCIe round trip time."
> 
> In other words, whenever I210 reads from the host memory (e.g., fetches a
> descriptor from the ring), the chip measures every PCI DMA read transaction and
> captures the maximum value. So it ends up containing the longest DMA
> transaction time.
> 
> This register is very useful for troubleshooting and research purposes. If you
> are dealing with time-sensitive networks, this register can help you get
> an idea of your "I210-to-ring" latency. This helps answering questions like
> "should I have PCIe ASPM enabled?" or "should I enable deep C-states?" on
> my system.
> 
> It is safe to read this register at any point, reading it has no effect on
> the I210 chip functionality.
> 
> Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igb/e1000_regs.h  | 2 ++
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 5 ++++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
