Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEB314F5E0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Feb 2020 03:03:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44F0387BBF;
	Sat,  1 Feb 2020 02:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1qHl1FlODxRu; Sat,  1 Feb 2020 02:02:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D976A88398;
	Sat,  1 Feb 2020 02:02:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20D6C1BF375
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Feb 2020 02:02:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1A5368827F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Feb 2020 02:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zmy7+g+ki5ni for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Feb 2020 02:02:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 711AC87BBF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Feb 2020 02:02:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 18:02:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,388,1574150400"; d="scan'208";a="230432043"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga003.jf.intel.com with ESMTP; 31 Jan 2020 18:02:56 -0800
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jan 2020 18:02:56 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.147]) by
 ORSMSX155.amr.corp.intel.com ([169.254.7.66]) with mapi id 14.03.0439.000;
 Fri, 31 Jan 2020 18:02:39 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: Add dump options
Thread-Index: AQHVyrAUy7aJjNqWaE2+9XHK/+xoragFsUMw
Date: Sat, 1 Feb 2020 02:02:38 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971D26A5@ORSMSX103.amr.corp.intel.com>
References: <20200114075554.14538-1-sasha.neftin@intel.com>
In-Reply-To: <20200114075554.14538-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add dump options
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sasha Neftin
> Sent: Monday, January 13, 2020 11:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1] igc: Add dump options
> 
> Placeholder for debugging functionality.
> In this patch, we add some registers and rings summary dumps.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/Makefile      |   2 +-
>  drivers/net/ethernet/intel/igc/igc.h         |   4 +
>  drivers/net/ethernet/intel/igc/igc_defines.h |   3 +
>  drivers/net/ethernet/intel/igc/igc_dump.c    | 323
> +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_main.c    |   2 +
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   5 +
>  6 files changed, 338 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_dump.c
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
