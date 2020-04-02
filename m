Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3770619BAAB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 05:35:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E5201261DF;
	Thu,  2 Apr 2020 03:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eruZlNbyCJYT; Thu,  2 Apr 2020 03:35:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 71AE026209;
	Thu,  2 Apr 2020 03:35:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECE351BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:35:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF0A787E8F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VpFfm28CgwgS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 03:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 43DAD87E8B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:35:39 +0000 (UTC)
IronPort-SDR: Trq32tABtkY0lO3cEvRWy+SYM4209T6XZe4AnZA7Dvn7M9Q063vz6xPL4BvL4QhEXn2hIZYfQb
 WSWd+1Zoe4uQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 20:35:38 -0700
IronPort-SDR: QrPxZcALz19uLb5tNT6y9ZS8sNNIKF4LOmVMpzBItce6GuGpzlcEgr05ybqLhwmM/lyz/Srg4t
 URfcL/MmQC7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="396212201"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga004.jf.intel.com with ESMTP; 01 Apr 2020 20:35:38 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 20:35:38 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.134]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 20:35:38 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 02/10] igc: Use netdev log helpers in
 igc_ethtool.c
Thread-Index: AQHWAj3D3UsM7zFuWUih1/zG55WLaKhlOutQ
Date: Thu, 2 Apr 2020 03:35:37 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722EBF3@ORSMSX103.amr.corp.intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
 <20200325003824.5487-3-andre.guedes@intel.com>
In-Reply-To: <20200325003824.5487-3-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 02/10] igc: Use netdev log helpers in
 igc_ethtool.c
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
> Subject: [Intel-wired-lan] [PATCH 02/10] igc: Use netdev log helpers in
> igc_ethtool.c
> 
> In igc_ethtool.c we print log messages using dev_* helpers, generating
> inconsistent output with the rest of the driver. Since this is a network
> device driver, we should preferably use netdev_* helpers because they
> append the interface name to the message, helping making sense the of
> the logs.
> 
> This patch converts all dev_* calls to netdev_*. It also takes this
> opportunity to remove the '\n' character at the end of messages since it
> is automatically added by netdev_* log helpers.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 48 +++++++++-----------
>  1 file changed, 22 insertions(+), 26 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
