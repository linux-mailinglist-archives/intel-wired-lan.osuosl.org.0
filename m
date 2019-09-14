Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5B6B293B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Sep 2019 03:08:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C532187D54;
	Sat, 14 Sep 2019 01:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p6f06cEhql48; Sat, 14 Sep 2019 01:08:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CDBF87C9A;
	Sat, 14 Sep 2019 01:08:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9FCF71BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2019 01:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8AF7180B14
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2019 01:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Du10aStayt7T for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Sep 2019 01:07:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9C8F7876FE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2019 01:07:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 18:07:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="386585675"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga006.fm.intel.com with ESMTP; 13 Sep 2019 18:07:54 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.221]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.172]) with mapi id 14.03.0439.000;
 Fri, 13 Sep 2019 18:07:54 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: Add set_rx_mode support
Thread-Index: AQHVapjV4Z1tztOdNk+TKBKunUot1A==
Date: Sat, 14 Sep 2019 01:07:53 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971184E5@ORSMSX103.amr.corp.intel.com>
References: <20190910070512.31391-1-sasha.neftin@intel.com>
In-Reply-To: <20190910070512.31391-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add set_rx_mode support
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

On Tue, 2019-09-10 at 10:05 +0300, Sasha Neftin wrote:
> Add multicast addresses list to the MTA table.
> Implement promiscious mode and add basic rx mode support.
> Add option for ipv6 address settings.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |   4 +
>  drivers/net/ethernet/intel/igc/igc_base.c    |   1 +
>  drivers/net/ethernet/intel/igc/igc_defines.h |   6 +
>  drivers/net/ethernet/intel/igc/igc_hw.h      |   2 +
>  drivers/net/ethernet/intel/igc/igc_mac.c     | 125 +++++++++++-
>  drivers/net/ethernet/intel/igc/igc_mac.h     |   3 +
>  drivers/net/ethernet/intel/igc/igc_main.c    | 271 +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   2 +
>  8 files changed, 413 insertions(+), 1 deletion(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
