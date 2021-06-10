Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA70A3A35C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 23:19:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3932440202;
	Thu, 10 Jun 2021 21:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUUSc7F9_uPz; Thu, 10 Jun 2021 21:19:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47979401DE;
	Thu, 10 Jun 2021 21:19:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9D941BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C87FB83C55
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y-OhjvIBgGbP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 21:19:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AB54883C52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:19:27 +0000 (UTC)
IronPort-SDR: hQ+vNRfu1IiBfUnQzvU7x1RGqpXQWDYtYlIgCUNViCK2HINLFP6cad/hAnE8JUahLkks8vZWoM
 Ids+5cXAfYug==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="269256695"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="269256695"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 14:19:23 -0700
IronPort-SDR: jNssffs//mfsHIDIPePviPZ5A0TNmJ+GxgiLoRamMDqDeqiHjh28ZJK43TvJmvJph3IhskWupf
 yjThnz9Czuqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="486339081"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2021 14:19:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 14:19:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 14:19:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 14:19:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 14:19:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LJ1PMPHaqQfBsXjb8/mXG4eR7YIljpK1F44tg5DXuGSLLa9yNge5GvSP/cbpgYmAytKNxuHd8/w6Zgw1wmUZHN4eSFe1Qk6TpjGFVAI/DPxQlctc7BD7vY1FDZmCWv3hxX/3YCjhbKLlFE2DUfsbTVGmSBafaQ1MrRZuhb16ClAjxUePlW/PwbuBcY0PQ9DbFHQMF1+hU4Fz5dtXjxsbjm8jSQ8Ir1qET6IFNfZopLclt02qyLNHTbhPDYh6MbQABRegZbm99ccwEKfwTi/d20/IbzsjLFAOyVlkGv2cmD5VZvPzsw9YBW3oYFkN6Rykk4AGuVV+98zEbt2XumQEuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G/Mrmu0WBBkq2lqGlrgN7uvxpwu1Xb1ejqxHi02ml6M=;
 b=fHfu5yvevajX1991Yb2l3A7kn93v8+ouiTdodtPcugVkEOfAnJ2+/jnLxtjFWnEQy5AoEQkFYTBKi1/bleoWTOoVla2+/vXW/OmJzQgHkaPec+6sw6JdBgZQhIFyVSpaE5vHGy+3eqlhoGn53NVDNAwoh7DTJwsYEi9wiGNLpB31b2VSPVWVIrJjKvXZZfc8Je2u3zkHIj7WYmeehrPPTUBQzL9iLBWVKJOb8OzZVF6j6F379u1hEHq9uOoVc6vJeWf9Zt1kRV8N10d0Wkmerpi493rq9uuh0Z6SHZ4fE+iTl6ogxKS77Gm/yYRUr0KoNCfeRWgbB411YCqXay1R9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G/Mrmu0WBBkq2lqGlrgN7uvxpwu1Xb1ejqxHi02ml6M=;
 b=hiaRpwxRY7xyGEfEiEgV8mmX7dNpD4IDV6p9SOVbO0ObJzsW7QeQLQe1qgmFy+H/ik+U5LL0eF84fuTmirr9MB0/t2a8BLzgaZvd7cXVo1evhwUeNXVUqRbZR9anRtTAVWFRi203iZL3SI42eX+2CohwL4Hg88GJnfVm4SvlbYA=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1390.namprd11.prod.outlook.com (2603:10b6:300:22::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Thu, 10 Jun
 2021 21:19:17 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4195.031; Thu, 10 Jun 2021
 21:19:17 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 4/8] ice: add low level PTP clock
 access functions
Thread-Index: AQHXXU/gjp7mPCEEP0CNL9Iy3MeeCqsNwcZw
Date: Thu, 10 Jun 2021 21:19:17 +0000
Message-ID: <CO1PR11MB51050E49A6501ACB66CFAC84FA359@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
 <20210609163953.52440-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20210609163953.52440-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: ba9537ca-e2ed-4dec-935e-08d92c55680e
x-ms-traffictypediagnostic: MWHPR11MB1390:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1390D012766215B21F2D5D7BFA359@MWHPR11MB1390.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9hZPljA++oPQ8dPDRFND3cjw7+Ifmz9946Aga2tkwnmXREevgThpfvEGU+DlmKbkvMzvozunlV3hCLSfNVrgz89jFZEv7njWrbs5t1UY3wya+XZ6+79/eDPO4lDivOg7OkD7RFc7TAdr1uCSCBfTqjhxhMrHHYwC/J/AhnkUmAodoclG703pq9oAwjMunnEa7JnGzPIiQPCI2DRHFJYk1D0uROZgPOu/Mu680b2rtcSDO5wC5bXSW2vgASWbLZGj4uox6lGy1AbQWSBWn43k2bfCkYMy+5tQnTskGNnMkoImtmZU7qD9oG9xFJDGZfvxTnhlCXyLgcBua/b57O6Cx0UELdlZWfb+MnqqUBuG3YxrsF8dLWU7V1mPKKsuKBg8iOyN5WWNewC0djTovvrtH2yKv9THjURGxbXtQB1es+iT5Q6xHPwvh/cADRjsPeOiO8wV7gaRXvHGAtvuKgrNTd4a8ecdTOOtect4sKY7pvH/m2cbA7n/m/xpfOASBeDsn7eJnYo0fR7wFkX6l22QY6Y93beNvFWaTorCUZ3rpopSH82ggU7qNmk4fF28lt05EM5mS2jDjxDW4xmdsw1DyJ3C9F8Z8xlUNxCnFBIvdRw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(39860400002)(346002)(376002)(396003)(66476007)(316002)(76116006)(71200400001)(8936002)(122000001)(8676002)(110136005)(66556008)(26005)(9686003)(66946007)(38100700002)(478600001)(83380400001)(2906002)(6506007)(7696005)(33656002)(52536014)(53546011)(5660300002)(86362001)(66446008)(186003)(55016002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lSHNEeRld/rO0MfZUp5E6R1h245ZjvN2auJDUAyO9FPCtOwZtau4FqopSZb5?=
 =?us-ascii?Q?Uw9qBYUZ2G3VHcLjwklICPdQuy+jxS6h6qJJgCHTBgp1E/hDqKo+rUy36mPZ?=
 =?us-ascii?Q?nf1ZtjkCX6ZtdX8aTJE4mbWL7lEW3XMjP8dGzhxdXoT8QnaSHwkytypfCV8I?=
 =?us-ascii?Q?ROTGIpb0sfo9oDtsOPGcX+V5xgD/jd06nmTMVlcYHqbdnN7gl7hd1glqefyR?=
 =?us-ascii?Q?JnOoM4CNPC8wj2ry23fmiA5LGRh/FIHD7Keb++vCkxiKJ1D6CQEHIMiQYMFw?=
 =?us-ascii?Q?FuhpmRApy0LEEkI+r5RRNCFkqT3ZNkkRN+BNkgC5HZBcWNzxipX7BYRXTJNi?=
 =?us-ascii?Q?tFJfNlRiMX71j6NxAv0N5D0c7xLTd613DTqpa3eoU4IQiZCKjSSPp2JZ9VG+?=
 =?us-ascii?Q?Q+N5e2IYiGuFxWVsYJYns3MzhlMyGvyekesZYRaKwbqixcIpZDIGsD9EnIHP?=
 =?us-ascii?Q?r+gRWiddgqqhVx2tpubi2VxgZIxLdqcK2H3ho8kt9rinBUxJ/OMr00RMIZUE?=
 =?us-ascii?Q?mWMuuQjoJx+zhHnPvg6+CL9ke4OZNIo4vY/Wz8QcTiMICepNOujHHVZ+4mG1?=
 =?us-ascii?Q?qZ2TVfrThPq+E6uls7et9R+ZJTqx6r4hDE/BBS+3uOm4Z2bLZdj80QnJ5leP?=
 =?us-ascii?Q?sq/8m+3tXHkCJYuZk2k1Dj0Fbe468OyBN0iLgY54NzkTO2g0oYSWTVeMgBj0?=
 =?us-ascii?Q?sFfbNrEz0gZgfzOGXkNVq00jkPNQPGYfhs8QgetcpAOh9bdVSINvDrokSypl?=
 =?us-ascii?Q?N4LWneF4OKaLC6iqkui4rj7wnJRvSXFewiwuxXWn0nrclWJhW0ogeBS0uZTi?=
 =?us-ascii?Q?xW4wba3/sebA00s24znuMbRQ7le1OxvfYEV776CNyC7XkcAkuBfresWhXpAg?=
 =?us-ascii?Q?85rnzuwJMM6QS6X9+PllCiQ+AQH6KVGk7sPsyoqTJ0US/QIo5YrWChSFx7Yl?=
 =?us-ascii?Q?X/d0i3DhrygEhXYSOXTOp4duHattLmFZrGWHpyEQpZK6P/oYmgY274LunJ5X?=
 =?us-ascii?Q?0nNwNvi8GDccOI0MdZVSM5ggTNwS19HvKI8obwlBiFGGRkL19b08EogSXHcy?=
 =?us-ascii?Q?PoQ8ymwz9SuKS1rS2CVOv19ptpn/sBxk99ND5UpuzKiPMM0qVFaNlSfqLqFw?=
 =?us-ascii?Q?rBu4+1UgUJEau0eRJSs2wRG+REN9dF3J4r4B4Y+sS2KH1L0hj+2Ux/kWAw4w?=
 =?us-ascii?Q?IoN5b5jBvubiQa8kSE2I7QJQ8HHjRf5/t79R6RiQCISKLB28YoYTT1v0gY7I?=
 =?us-ascii?Q?xfCu4UvxtYTyC8X47M05DQU/Wv5sUE3rlC/YhhEW9CtfqltozU+U0vwLxNa9?=
 =?us-ascii?Q?MIMaf2CU8YYNk/8dgKcpRpxD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba9537ca-e2ed-4dec-935e-08d92c55680e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 21:19:17.8059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2uiYe7vVkOE8XYE+9sdfzphxlxbo2mCGdzZlqc98BTGrBQM9LAYD2YCvC7tmY8dbNMowl5bd2LmgPBrxkzLj5/+9DwAb89ze4JtxLpI3jXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1390
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 4/8] ice: add low level PTP clock
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Wednesday, June 9, 2021 9:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 4/8] ice: add low level PTP clock access
> functions
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
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
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 655 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  79 +++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  include/linux/kernel.h                        |  12 +
>  5 files changed, 772 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_hw.h

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
