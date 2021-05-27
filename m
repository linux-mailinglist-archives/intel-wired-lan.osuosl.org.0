Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC173934B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 19:25:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B27960BCE;
	Thu, 27 May 2021 17:25:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igPEO6hYsenl; Thu, 27 May 2021 17:25:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29F256064A;
	Thu, 27 May 2021 17:25:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A7C411BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 969AF83DF6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QWB-DuSMYoVa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 17:25:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F8D483B4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:25:21 +0000 (UTC)
IronPort-SDR: 7awYOoSlo6e6ZfWa+NtdEI4AyENofZJDH6UCRm8aZP3bLYatui7m6XUjE62qqGqe+SNkljA4YW
 WNtZxepXTCLQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="182449808"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="182449808"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:24:19 -0700
IronPort-SDR: nOcoIa77wlTpoKr96Oecde1CH95u5lgPW7XGGvr0QFzH2Q8hcV4VabqE0gHcFLLoHrPzmpON2o
 VKd8FOU0xTIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="465462551"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2021 10:24:18 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:24:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 10:24:18 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 10:24:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i8ACXLlQM0ziPqM6l2sluCvqfLw/WzQ2sKLhfJGxjN93sbaqY1CkCKOboDaCFPfqXRvUuh68BBF4ZWjbcEAwYpoJ3oAIU4GuI33mD9I+1nxWDRhJpkP9suhWo+QUAATWBVrSX4N9sDRwFkXnFiwPI0KVYPWI+SVODBwQsa0gbK81+PSr9A83RfVAVNU1h4LlFXwVHw/lTeQtuQB7L8I8mitogeZxZBxqbLRSa58JoyC0FzuWzfO6FWECN6woz9OK0Mfbu8usNY4wvHCujitJbSmlAnSLV2pFTjucukYsKwETp1+I6PnTNO3lt5MDzPEA6W3qK1haA4zbFTG/i8mk4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QFZrRutQjeoumuEMBNU9bc1+rhC/CIN8cPS3k+gODuY=;
 b=fxsNPkEGqG5B9LiAU8IuiAIA2leaukYN5UciQSWDnPE+zbKefRehpsnJEB3DZyYsC4P8c6eacIl16/xU1eU+ZbH8kl2S7DtkBcz7Amdw/4WFXOhpFFsKgKpYFaVrU1sT775Jq5r306rzSTWZeuEA3Amh7gY+jWhL5uyaZUwU7XmP/NHdeVxQiFBd4UE6/N9nVQN1bqVZTpKDNb9lYPx/5zeWZRHIVDiNY46C/ATpDZEsRRa67OLakDCN8QkJSTtaCOctviaYKh/rAB6wmKItTU+W5EeCOPZ7dCHU0tQEgSiRGLXbNsSOn1wsCVs9V8tsATuKBopJ4p0w1e3eNT3m1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QFZrRutQjeoumuEMBNU9bc1+rhC/CIN8cPS3k+gODuY=;
 b=k6bEpYn5ZbSFgsESAcOqEiC5ejNvhuGs5trgvWtS0VpzyYwSAh/LUjlMmFAAqui8tY9t68/1+3AE+7iySJOBBLBcnOvH9sqasgkJ7hQ3wPkBsy83oSIYbpz0G8sC9kh3oXzZDdKK51PSq003/Si4azCySa+PQZMP8QLuE1Q7EIU=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1501.namprd11.prod.outlook.com (2603:10b6:301:d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.21; Thu, 27 May
 2021 17:24:16 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4173.020; Thu, 27 May 2021
 17:24:16 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 4/8] ice: add low level PTP clock
 access functions
Thread-Index: AQHXTZgfhlipGi7up02t9ExzjsyS9ar3nvQQ
Date: Thu, 27 May 2021 17:24:16 +0000
Message-ID: <CO1PR11MB5105DBFB83B6D0667476099CFA239@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210520164850.1884656-1-jacob.e.keller@intel.com>
 <20210520164850.1884656-5-jacob.e.keller@intel.com>
In-Reply-To: <20210520164850.1884656-5-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26070680-4f04-4d7c-20a3-08d921344164
x-ms-traffictypediagnostic: MWHPR11MB1501:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB150166696847FB17AE6AFD9FFA239@MWHPR11MB1501.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iyBkr5s6vdhXCrkN+8OuRcFm+C0cxsW0xMFOLqPlxDvDNCJiVeQBUO7v86KzK2SjEAl8REQ/vuUJ6+KbiLuuYzd1VsmxuISz1m3GtCYv0YGY9TcqHjDEEho7eOWgv2itbaCdrn0PYJHz6ophO+i9FfCHC5j+S3ff3UNC5rqS+9WDsuGUcmXjGMm/olN+TgrOgCQqVjzD1oJNmFaM6U2N+cudPi7E/ZGKbyo5mE6CxmzWg2EwYR7b19ys2uJrTzsvug7IOar9JeH14le++iPsIubVIUUrfuVWeygfS/nKlg2wzrJEUoX1c+oKIhimXtD73D2vNSikaDEC5IDvixNkkNEGORgZtFBHLuEr4vc/ITDr4gPVDxZrWjscG96db7J5apGlMN9hBHTRG49+lLH3kSLLHlwp1KRMbICxjfsZ5dLpeMXA3ceMYRh+4vd9tRJCGWDAJd9VjtFw+TZFrQVSE1rQHqyPEvXxLD5bnY1x9uMjZ7TiE3YSwMXPoUFtBxRMuGgacEs6Nx4SWy1XW5dlwl20cKBBWo+ASglMCnI4Dd6hgLMTQE/RYvbntbpFV1ZlnBTvFVFhb8DSGgOkKHDkoSvVUVOGOeNobfIhTdOKsNI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(366004)(136003)(39860400002)(346002)(2906002)(316002)(186003)(83380400001)(52536014)(5660300002)(110136005)(71200400001)(478600001)(8676002)(7696005)(107886003)(86362001)(55016002)(38100700002)(122000001)(9686003)(26005)(64756008)(66446008)(66476007)(4326008)(66556008)(76116006)(53546011)(6506007)(8936002)(33656002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?SsX4Q5dHs5kQBKzTL1+1MTQXoi6zMCi6TqqebH7N1FhOYr2CXaWfZ51ZUw3y?=
 =?us-ascii?Q?WKLLlsM4dUNg5lKmUfH8WId/70Yl/MnkX1fJqqCqV4tJgMErms9kbL/W/E0F?=
 =?us-ascii?Q?SHgG7AHLgoFpot3HkQ8RxKJQ7IiUrawM3qImVTN6mc4jcDT7Kv4Ui7QAbUnz?=
 =?us-ascii?Q?Q11/GHBzmEZcanOHgBB1OVZ3EW7CBaDREfASB4zNwPs07dU5ZrnX+O9sFihO?=
 =?us-ascii?Q?RwAY3QUVKR1xC3SCM8HEds45SVtoj3Wl3fUGn+7deye20kdj2dx886q/JLaI?=
 =?us-ascii?Q?+GJNjsIE96+iApeKNCRfiYzqlwXtmuJCb2b4Qx0HmafMhNYvKHcX9WhE0ZXd?=
 =?us-ascii?Q?1ns2neZowHrZHmoRrz+p1tqJ+HSjoDL7WjMMQjtbJoXsUS48NyTZ8/bJKSwA?=
 =?us-ascii?Q?aOYAPhY7Ooml34FfqtaN1laxxh6PTj6poaN1A/Q+itobzBX5/jiSHvGtVc7x?=
 =?us-ascii?Q?yNApEA2k6Im5hmumndjBumaUkuSiWCH5YnL3SsKtJEhsabEi8ok2InJuxDK7?=
 =?us-ascii?Q?BkwWUyAvC64hBiAx4r3AdT9HMD/Jy/dgmtIkrRmUqQww6qflHlH5MxAbEP/9?=
 =?us-ascii?Q?NUUtzGHLiug/dZUbszWtk+Cz2utQh38BBkxHNKdbChOLOAFMSxgtovHpBRqR?=
 =?us-ascii?Q?1Lw+rkoKEPG9gJ13U37g1vZpiaHo/JJZBAs9t9E52pvBFJ2oNZ4oaL0aFEYa?=
 =?us-ascii?Q?B+Bbyrtl37HC3jhOYPnEyaH099sYj4N0KpxCWmsTTcaqYzn8h+WG3J3SD6xc?=
 =?us-ascii?Q?IFMtNauzkEjkcwh1Oet0bctCDzLquQr3yG/xVX43wnZCvlVHatorvMHWbIjx?=
 =?us-ascii?Q?xX8/ONnJnnLr4pAXcZ8bkuKIx05MMQjBC1NlJIF5EP6dDbcVv2OmKuaF/gE3?=
 =?us-ascii?Q?D4v2LldqcwWnybCTGVSIGHVGJeb/FN7YBJr8IOBRbqZlE9vn4RrUin3KMhJt?=
 =?us-ascii?Q?yGRpCqwkdPlCaLsMMYrmGS+1e98COujG3ctlO5hf0RTuxH+bDzsuStOGu8Pq?=
 =?us-ascii?Q?tUWR8jHrlWwK1NiJYOVim5TqRD5l9p5zyrP8oLa7CH7HNuvLKmXushUZkhKA?=
 =?us-ascii?Q?WgXu9CsGXFuUKHk+o9xAkXTLZSSYrNAcbJK2XBlAy51RfX/Rhaq/JojDOSvH?=
 =?us-ascii?Q?Y7yRr3Jaso7Vbj2xdeDck2KUXusUwF5toDsk/FXtM4MFCQ2cZOYTWtVGNkgr?=
 =?us-ascii?Q?WNcTpyaj2F++2heZ7BVUtRrwKF4NZSW8Wiba+gynujn/236CGNzGl+SOZzgZ?=
 =?us-ascii?Q?crPhBzX3hnKs0dhDyFLS0NFHcjah0+Eo2n32m4q+WWgFc+HmuyCpMp7L4tUq?=
 =?us-ascii?Q?2b/TCnO5vo6PmnmBCR6ie91i?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26070680-4f04-4d7c-20a3-08d921344164
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 17:24:16.6861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T3q+g9cNl59wd6NGyK2/xtNZAz1xJ1oKkxOpDdYPjWmB0Jbu9t221C2KVIdkF0ZWOvPtE0rp7iDZFT9pBaKTHDdlhvQ9Iql3iLGekSBkvmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1501
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 4/8] ice: add low level PTP clock
 access functions
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
Cc: "Lion, Sean" <sean.lion@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, May 20, 2021 9:49 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Lion, Sean <sean.lion@intel.com>
> Subject: [Intel-wired-lan] [PATCH 4/8] ice: add low level PTP clock access
> functions
> 
> Add the ice_ptp_hw.c file and some associated definitions to the ice driver
> folder. This file contains basic low level definitions for functions that interact
> with the device hardware.
> 
> For now, only E810-based devices are supported. The ice hardware supports
> 2 major variants which have different PHYs with different procedures
> necessary for interacting with the device clock.
> 
> Because the device captures timestamps in the PHY, each PHY has its own
> internal timer. The timers are synchronized in hardware by first preparing the
> source timer and the PHY timer shadow registers, and then issuing a
> synchronization command. This ensures that both the source timer and PHY
> timers are programmed simultaneously. The timers themselves are all driven
> from the same oscillator source.
> 
> The functions in ice_ptp_hw.c abstract over the differences between how
> the PHYs in E810 are programmed vs how the PHYs in E822 devices are
> programmed. This series only implements E810 support, but E822 support will
> be added in a future change.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  17 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 662 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  81 +++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  include/linux/kernel.h                        |  12 +
>  5 files changed, 781 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_hw.h

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
