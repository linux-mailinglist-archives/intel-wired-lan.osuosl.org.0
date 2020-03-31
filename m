Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02749199FA1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 22:00:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9773F2535C;
	Tue, 31 Mar 2020 20:00:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KgwQC9CFhZ9u; Tue, 31 Mar 2020 20:00:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA332253A7;
	Tue, 31 Mar 2020 20:00:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C81E1BF418
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:00:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1862686D80
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:00:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pv9bkrwUX_Y9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 20:00:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0358F86D77
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:00:43 +0000 (UTC)
IronPort-SDR: 42BwiWAmFnWY0x/BQoiyXcOpAr88g0Db4yfGmDTTaIBBeSd001oxBD8i15X4gE502k/hDZvyUf
 qH3JLar/cDKw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:00:43 -0700
IronPort-SDR: LI49hBKHuvDheTwA018yABkOWb7wQHSULNvkJFVGPQlFF2Gh9Cihdnh8Drz78i8LL7DTIf85Uo
 4teOLsCRbFOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,328,1580803200"; d="scan'208";a="422417391"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga005.jf.intel.com with ESMTP; 31 Mar 2020 13:00:43 -0700
Received: from orsmsx122.amr.corp.intel.com (10.22.225.227) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 31 Mar 2020 13:00:43 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX122.amr.corp.intel.com ([169.254.11.66]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 13:00:42 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 05/12] igc: Refactor igc_rar_set_index()
Thread-Index: AQHV/XlF9sUl08J7gEuYYfa4YMj6GKhjMvbA
Date: Tue, 31 Mar 2020 20:00:42 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722DDCC@ORSMSX103.amr.corp.intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-6-andre.guedes@intel.com>
In-Reply-To: <20200318230102.36952-6-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 05/12] igc: Refactor
 igc_rar_set_index()
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
> Andre Guedes
> Sent: Wednesday, March 18, 2020 4:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 05/12] igc: Refactor igc_rar_set_index()
> 
> Current igc_rar_set_index() implementation is a bit convoluted so this
> patch does some code refactoring to improve it.
> 
> The helper igc_rar_set_index() is about writing MAC filter settings into
> hardware registers. Logic such as address validation belongs to
> functions upper in the call chain such as igc_set_mac() and
> igc_add_mac_filter(). So this patch moves the is_valid_ether_addr() call
> to igc_add_mac_filter(). No need to touch igc_set_mac() since it already
> checks it.
> 
> The variables 'rar_low' and 'rar_high' represent the value in registers
> RAL and RAH so we rename them to 'ral' and 'rah', respectivelly, to
> match the registers names.
> 
> To make it explicity, filter settings are passed as arguments to the
> function instead of reading them from adapter->mac_table "under the
> hood". Also, the function was renamed to igc_set_mac_filter_hw to make
> it more clear what it does.
> 
> Finally, the patch removes some wrfl() calls and comments not needed.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 75 +++++++++++++----------
>  1 file changed, 43 insertions(+), 32 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
