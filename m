Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF7114F5E8
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Feb 2020 03:20:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F42C2002F;
	Sat,  1 Feb 2020 02:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VMtUAbdrBEZV; Sat,  1 Feb 2020 02:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2CBC220436;
	Sat,  1 Feb 2020 02:20:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41E3F1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Feb 2020 02:20:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D5F486EA0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Feb 2020 02:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onJDJt4956f8 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Feb 2020 02:20:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C7D5C85A1D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Feb 2020 02:20:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 18:20:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,388,1574150400"; d="scan'208";a="325779258"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jan 2020 18:20:19 -0800
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jan 2020 18:20:19 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.147]) by
 ORSMSX155.amr.corp.intel.com ([169.254.7.66]) with mapi id 14.03.0439.000;
 Fri, 31 Jan 2020 18:20:19 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] igc: Complete to commit Add
 legacy power management support
Thread-Index: AQHVyhYlIqjdtK+JwEWdbi0qisbPmqgFtXhw
Date: Sat, 1 Feb 2020 02:20:19 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971D270D@ORSMSX103.amr.corp.intel.com>
References: <20200113133359.24847-1-sasha.neftin@intel.com>
In-Reply-To: <20200113133359.24847-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Complete to commit Add legacy
 power management support
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
> Sent: Monday, January 13, 2020 5:34 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2] igc: Complete to commit Add legacy
> power management support
> 
> commit 9513d2a5dc7f ("igc: Add legacy power management support")
> Add power management resume and schedule suspend requests.
> Add power management get and put synchronization.
> 
> v1 -> v2:
> add pm_runtime_put_noidle
> add pm_runtime_get_noresume
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 27
> +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
