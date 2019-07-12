Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E080467479
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2019 19:44:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3930822849;
	Fri, 12 Jul 2019 17:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rHmWnkj+6bTk; Fri, 12 Jul 2019 17:44:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EDB8B227FA;
	Fri, 12 Jul 2019 17:44:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8DC5F1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 17:44:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 85FFD84AF9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 17:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6mbDMqOa9MCY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2019 17:44:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A645E8410C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2019 17:44:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 10:44:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="157196510"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga007.jf.intel.com with ESMTP; 12 Jul 2019 10:44:22 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 10:44:22 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.77]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 10:44:22 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: added support for NVM update
 via ixgbe driver
Thread-Index: AQHVMYxxW7wvvRjV70+3n0ujS11cEqbHT7bg
Date: Fri, 12 Jul 2019 17:44:21 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40AB6E@ORSMSX104.amr.corp.intel.com>
References: <20190703104426.3515-1-piotrx.skajewski@intel.com>
In-Reply-To: <20190703104426.3515-1-piotrx.skajewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGUxOGE1Y2ItMjM0My00Y2I2LWI3MjQtMjNkMzM5OTVjNTlhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQU9mSHA3R2hyT1VKRDIyTGpKYkUyOHNkeW9VblZWVkhySXBkTGhxMUIwWTlONDZNSkp1RXhvaFBPZUJPWkpSOCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: added support for NVM update
 via ixgbe driver
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

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Piotr Skajewski
> Sent: Wednesday, July 3, 2019 3:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Skajewski, PiotrX <piotrx.skajewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH] ixgbe: added support for NVM update via
> ixgbe driver
> 
> When Secure Boot is enabled access to the /dev/mem is forbidden for user-
> space applications and clients are reporting inability to use tools in Secure
> Boot Mode. The way to perform NVM update is to use ixgbe driver.
> Currently 10G Linux Base Driver has API which allows only EEPROM access.
> There is a need to extend IOCTL API to allow NVM and registers access.
> 
> Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  38 ++++++
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  17 +++
>  .../net/ethernet/intel/ixgbe/ixgbe_common.h   |   3 +
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  74 +++++++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   3 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  50 +++++--
> drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  41 ++++++
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 129 ++++++++++++++++++
>  8 files changed, 346 insertions(+), 9 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
