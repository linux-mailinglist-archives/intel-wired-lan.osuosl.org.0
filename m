Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5509919BAB9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 05:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D60B86834;
	Thu,  2 Apr 2020 03:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPktkLiIr1WM; Thu,  2 Apr 2020 03:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6965386917;
	Thu,  2 Apr 2020 03:44:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A64C1BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 418C5261F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dbcTDgel-eYH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 03:44:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 91BAE261DF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:44:50 +0000 (UTC)
IronPort-SDR: 3YhQx26Ty9kafceo6mFDe+IfC3hccoEzPqQkOah+wDogDWm9H9BPnyY296fMcrB39mjadeFyma
 YjUHBfsiSvlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 20:44:50 -0700
IronPort-SDR: I0G+FJwUADdDINHfXfQySzRoUn7CScz5ZJnwjMcKz6Swc2cqAxHF/lCQ13UEXVcvS43rTk13u+
 EH7FfpJ4EDgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="449464470"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga005.fm.intel.com with ESMTP; 01 Apr 2020 20:44:50 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 20:44:49 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.205]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 20:44:49 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 07/10] igc: Remove '\n' from log
 strings in igc_i225.c
Thread-Index: AQHWAj3NQqt8KagaXkO94lDH5NsOXKhlPZFA
Date: Thu, 2 Apr 2020 03:44:49 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722EC5E@ORSMSX103.amr.corp.intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
 <20200325003824.5487-8-andre.guedes@intel.com>
In-Reply-To: <20200325003824.5487-8-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 07/10] igc: Remove '\n' from log
 strings in igc_i225.c
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
> Sent: Tuesday, March 24, 2020 5:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 07/10] igc: Remove '\n' from log strings in
> igc_i225.c
> 
> To keep log strings in igc_i225.c consistent with the rest of the driver
> code, this patch removes the '\n' character at the end. The newline
> character is automatically added by netdev_dbg() so there is no changes
> in the output.
> 
> Note: hw_dbg() is a macro that expands to netdev_dbg().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_i225.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
