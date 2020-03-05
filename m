Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AB9179D7D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Mar 2020 02:37:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23599868F6;
	Thu,  5 Mar 2020 01:37:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0EH6z3y8MTTD; Thu,  5 Mar 2020 01:37:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E120E86091;
	Thu,  5 Mar 2020 01:37:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29F641BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2020 01:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1EB1F20794
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2020 01:37:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jk7-mNzn7tpt for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2020 01:37:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A12D20453
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2020 01:37:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 17:37:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,516,1574150400"; d="scan'208";a="441212483"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga006.fm.intel.com with ESMTP; 04 Mar 2020 17:37:16 -0800
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Mar 2020 17:37:16 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.43]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.206]) with mapi id 14.03.0439.000;
 Wed, 4 Mar 2020 17:37:16 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove forward declaration
Thread-Index: AQHV7c2Uiwr5ogumukiXtqyGl0L36Kg5QVuQ
Date: Thu, 5 Mar 2020 01:37:15 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9720149B@ORSMSX103.amr.corp.intel.com>
References: <20200228002515.31650-1-sasha.neftin@intel.com>
In-Reply-To: <20200228002515.31650-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove forward declaration
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
> Sent: Thursday, February 27, 2020 4:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove forward declaration
> 
> Move igc_adapter and igc_ring structures up to avoid
> forward declaration
> It is not necessary to forward declare these structures
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h | 391 +++++++++++++++++---------------
> ---
>  1 file changed, 194 insertions(+), 197 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
