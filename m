Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFED432CE0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 06:44:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35912406E3;
	Tue, 19 Oct 2021 04:44:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HKn4doJuuCW3; Tue, 19 Oct 2021 04:44:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 333B2406D6;
	Tue, 19 Oct 2021 04:44:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D2AB1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 04:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A89482C21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 04:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6WgCU72mjc_o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 04:44:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 74F7882BBC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 04:44:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="291888144"
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="291888144"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 21:44:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="483071365"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 18 Oct 2021 21:44:48 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 21:44:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 21:44:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 18 Oct 2021 21:44:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 18 Oct 2021 21:44:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gUI2U5MXB6G/Noibvp2dJIJZGIS2wnd0iXvnY48xBvpdgfLMg5kHGmUHraGcktkvEsksBfZ9cmOBao2W9Xek02h00ZypnVWIv6cms/MlZSQsP5JNzj92HDSGmJcFFVq8sbc5+0ufeiQTadB3WC4b0IdvGiFM9gZAHHnT04EsX3AwwwrL2Mw5isqzf4BC0+hpbG38YzCms4aVSMJ58nTxQFSbFBKwsLwezy76zoJYxhvOYcVcXwqKEpMkOCUjHK2S6q9kcmjs/o0JOnaM9gNzcSko5y6Ns47OaaZTq4HzxDekcx6DyP+u/XHu0qBR7OvFeJawkHzLpe3UBkT/scEHxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YkVGqfZxOb0lA3NEb4oHoVc/IC+xEbMzL7NFpaaLLwc=;
 b=DpJrWGv/WzXe3by70fDV7zKA4FqY4c5CUBFfDbJttHxn9+X2Mnl0boetyOocBeZC3s2vVl3N8XAV+VI/k9J7HUqVzhSy5RRWC5UnxVprPWHKrbMf99tjamhjd0+jOcqq1grzeozUBJro+3IJuFILBIspZKAKA+9VI3zg0bAwqLyWr7W70uHHF0DRpkm2bipbFtNWiHAz8Aji89i5u6xfh2rrOXIHW41z59tylcyjaEwisgXyvEdUML1FY+RTUAJkPq7IhVqfvAfuddNTJ/8Bhm0MXk9xDJoje1DGE2iPWewOyhOla9eTReipI8sgeeINY2KbrzD8OnZiaPeBG4A7mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YkVGqfZxOb0lA3NEb4oHoVc/IC+xEbMzL7NFpaaLLwc=;
 b=rHEQyAWU4owluPtoPqjC5WQdBWoRTS7t4sXMEqbuY/UXBVjjNrXVOl3IOUL6bS2YOZD6pKKnEtHYU+L26Dw5KGOOQIYI6S5XBixR52bm4q0mhG0TSp2hK3zYv3FgG0LomNCajVUSpCU8onGUtwwb84susjh3upGbhF7oaH5yByQ=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1790.namprd11.prod.outlook.com (2603:10b6:300:10e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.17; Tue, 19 Oct
 2021 04:44:46 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4608.018; Tue, 19 Oct 2021
 04:44:46 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Refactor PR ethtool ops
Thread-Index: AQHXvCDEiA+Ehgwg2EOIi6FRahjooqvZz6ow
Date: Tue, 19 Oct 2021 04:44:45 +0000
Message-ID: <MW3PR11MB45546F215FB67F287F3002039CBD9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211008084403.6075-1-wojciech.drewek@intel.com>
In-Reply-To: <20211008084403.6075-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9540ded1-ad82-4a28-4c53-08d992bb2cf2
x-ms-traffictypediagnostic: MWHPR11MB1790:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB17904E33022E78D9D13A4C569CBD9@MWHPR11MB1790.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6dr1zu4XdSk41Sfacf5kAS7dHHf0JtGWK4wbNMOq5em3+UPLH+Jalar6ObQSfV97prlhtSV2ioqCPdywcLJdmJm92EXPXmq0CULufkow7sEfFaBgn+LWrVzzS5WgAmtLNXx67LRp7HDDi5XgzeA0fUf3sYsKy4yB0T29tMkfkO1Ob0VTzl68S9bbRBU6nXCx3Vz5GUy+He+wH1b6ZOBnFI/aPzrMROvLGxkQOcpoSvYENU6rdRigi74+NUbUOAMtiSktn49xqvF4WFAIRH2OPcW1eK6gzynxlrorwy1YTELR1R6H4g6dvhB/WTHd863t+eJQWq6644UeLEWtUHg09dKvMUR0hhcadA0xw+I2uY2Su3qa9jkovYEBDY9OoYIE2y5gD04OHkmwg+QJBJz9sRXDytgewyuFgVeoIVrs5avwgmgF026AppStwlTylYEp5IAL/qMxkfG6NQI6VamQ00JY1evVrRpL8ZIHRCkWSz82TQRfvoE5gqEvCHTM4+xu+t+COrB3G32497v1Sr1k7d+duq/tyJXImZtF9nkrplwc+s3dU91MS1SLVU5tzO+kfBA7Vs9zUAjpaOzTa7fCAsYb2lfXJelMKcBtKrPTmzJsCN6AjC5YKEu3lJSzZVXbRoTDPpiPvaCBZn7SdWOw1be70JfGu4gF7Ue4GRae/0gBfDjR67r37TyZrL767kGuexvtlMMSQl86MgmnQ1hpJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(8676002)(38100700002)(8936002)(82960400001)(66476007)(26005)(5660300002)(66446008)(186003)(7696005)(71200400001)(6506007)(2906002)(52536014)(508600001)(83380400001)(33656002)(66556008)(316002)(76116006)(64756008)(55016002)(110136005)(9686003)(38070700005)(66946007)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pwNZrrlE81mkpqMFKNyqbnM6LLEPpOQpICxF1FI0dlOpAzp6ckTv33Zo9R/k?=
 =?us-ascii?Q?ZiNbMZd0YaXCzbW9TWXvYs94jZpReoC0NUPx+d4flKaAug/38zwGOH7EA8bI?=
 =?us-ascii?Q?Pi+bzgV4NPJVdB92sOqD3QGmjIet6x3rp3lZTFdkCdM/KeJB8NC9BIF+D77X?=
 =?us-ascii?Q?ehc+EL621W6q3tcLMwIEAFDOzHzYV2q4ZWzOVQ/qNmrfcpSpYUNOCq/TDDx8?=
 =?us-ascii?Q?d6X3EDL2hrrQJNgNwP3VJPYNWw/k9NbDr4Ro7eAzS8rYvMnfmm6RJuFx1msa?=
 =?us-ascii?Q?OU9EsynxCy6oODbn9CFYIdX6JicxPcF0HZR++81n8aDgtubHPoLD7FRISxE8?=
 =?us-ascii?Q?9wVVXfj816j8sCEUSbSkqRDGAc0pXxKk8BLqXscnwKMQWGIH/UGaGgMBO5Er?=
 =?us-ascii?Q?ttTzVXBV05XPP0c8Yx4F7MueeHXoSe2G663a7c9g0exJeOlQstfIWdkatWSN?=
 =?us-ascii?Q?kQcrXij45v4GcKQHQiLka1YadRETj2gwBHmMgovEIqCTMb7Wc2xGfL3628+G?=
 =?us-ascii?Q?1Gd7kzS/+YdoVFG7wOds3rUt2YjUL+mHQIpA/67YLXSNyfMf3wF4Uv9SyfsM?=
 =?us-ascii?Q?ntKvqvNrqWuwxbJE8VnP7lI/19zvSKEEGfAOaLKtNKeu9ANsfqxFs8LM4Ohf?=
 =?us-ascii?Q?oqmb3JEBZTp2V2FLVin/cbQxifSxSNPhyFRbH6BkmqYZSwIoZgfBgOdofB+1?=
 =?us-ascii?Q?VzvFO21u0Lmd1wvP/SyTYJVJQl94EeZH8nDEGDqlQGbN5nvpcdsKB2hc9Jod?=
 =?us-ascii?Q?IwWRicyFx1mdTyZSmIznjBq96gr/PYDi2xafuSyLvYOIgrlC8Jt3Cq7kelNa?=
 =?us-ascii?Q?ORr+3X5ljLJO0ciL7Ec7SlK3IS+XWNg7vr59q1ysqEkSzzGHsT2eejqkj7lK?=
 =?us-ascii?Q?qfg9lCqTOplkqs6y9cEH5zRVBKVxa6vu/Hq6VEOPcdOIAuYXqB/7g6ALlGxM?=
 =?us-ascii?Q?SbjNbu4gNjJJTMIZ+DEkJ0ryXh2EnCHydf8zuOabaMiJqo3+SE+aa/BTjP70?=
 =?us-ascii?Q?Tc1ME9UlWLFeRfhU6/ogRidVFmdJp6SsYGKHrXfc2l6CwWzMDgmeBS7kczv6?=
 =?us-ascii?Q?AHwQNK2D+jSPGaFACCmvXevy5okjYLJdeunY4F0UDFthjrTCjl9ut+qfc/mk?=
 =?us-ascii?Q?QnYidDbJWU3PTIHi9V/sFp8OmAvrrhG6OX0F2+FpF/pHmEXgfAenDb/lemw3?=
 =?us-ascii?Q?gWR/PyaJnOe0OtK9RWK1eaOI9AhTXasRWuXaIGald59I0Vnt0VL7iYup6iEB?=
 =?us-ascii?Q?frjtY0ktUsPm075Sqb9ohRWZFjFDWcnrD9nUCEyqvcHQaj2z0ebsfw7+aE8Z?=
 =?us-ascii?Q?0N4I5Xg1gBa9AEbXsX2C5SF/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9540ded1-ad82-4a28-4c53-08d992bb2cf2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2021 04:44:45.9565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dGIKkjbkWXLuJn6R311VY2JDYK2AxdzwMP7Pgk+tWDLkdNaOoomtIg3Z0FwIAShclXUkLjiWeIGurWv2EarECEk2RnKOdbr24ZjAM+rQGlQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1790
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Refactor PR ethtool ops
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Friday, October 8, 2021 2:14 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Refactor PR ethtool ops
>
>This patch improves a few things:
>
>- it fixes issue where ethtool -i reports that PR supports
>  priv-flags and tests when in fact it does not support them
>- instead of using the same functions for both PF and PR ethtool ops,
>  this patch introduces separate ops for both cases and internal
>  functions with core logic.
>- prevent accessing VF VSI while VF is not ready by calling
>  ice_check_vf_ready_for_cfg
>- all PR specific functions in ethtool.c were moved to one place in
>  file
>- instead overwriting n_priv_flags in ice_repr_get_drvinfo,
>  priv-flags code was moved from __ice_get_drvinfo to ice_get_drvinfo
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 99 +++++++++++++++-----
> 1 file changed, 74 insertions(+), 25 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
