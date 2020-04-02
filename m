Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D1E19BAB7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 05:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1613186D2D;
	Thu,  2 Apr 2020 03:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvh_bAiSmZif; Thu,  2 Apr 2020 03:42:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C69B786D61;
	Thu,  2 Apr 2020 03:42:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 62D2B1BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5E8FA84C20
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EAmfIOjoexML for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 03:42:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E9F6C84BF1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:42:53 +0000 (UTC)
IronPort-SDR: bYNSIPXs86sVTFKeTiqhA/HkfJMJ40YeO6VT8NpHx2PShVzRzT3358ELzG3kjaGnQ1eSZ6Vk9S
 fcUMkFZNJYlg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 20:42:53 -0700
IronPort-SDR: t9KQXQRoBSUIoLPNSygbspsqzT8S7towxcBdikj/ck3/6Haf092WNl24ElAbydJ4dckPNdVUCf
 9jHLzu9eo4Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="273409173"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga004.fm.intel.com with ESMTP; 01 Apr 2020 20:42:53 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 20:42:52 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.188]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 20:42:52 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 06/10] igc: Use netdev log helpers in
 igc_diag.c
Thread-Index: AQHWAj3CdQH67z85w0efbo5oE+LgwahlPO+Q
Date: Thu, 2 Apr 2020 03:42:51 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722EC48@ORSMSX103.amr.corp.intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
 <20200325003824.5487-7-andre.guedes@intel.com>
In-Reply-To: <20200325003824.5487-7-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 06/10] igc: Use netdev log helpers in
 igc_diag.c
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
> Subject: [Intel-wired-lan] [PATCH 06/10] igc: Use netdev log helpers in
> igc_diag.c
> 
> In igc_diag.c we print log messages using dev_* helpers, generating
> inconsistent output with the rest of the driver. Since this is a network
> device driver, we should preferably use netdev_* helpers because they
> append the interface name to the message, helping making sense out of
> the logs.
> 
> This patch converts all dev_* calls to netdev_*. It also takes this
> opportunity to remove the '\n' character at the end of messages since it
> is automatically added by netdev_* log helpers.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_diag.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
