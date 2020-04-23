Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ECF1B6498
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 21:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1A6586DE6;
	Thu, 23 Apr 2020 19:39:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fyB9RpnWiNTY; Thu, 23 Apr 2020 19:39:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AF0286DE4;
	Thu, 23 Apr 2020 19:39:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B83C1BF27F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 551442280C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0sFtIZQbtDtk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 19:39:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 16BAA20467
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:39:31 +0000 (UTC)
IronPort-SDR: 7EyAiDwBKhXiXsJ3SpBl5pkYHVrVDXc8HvkjP7yMN/hlsQeFje50aSnUsRrQuD4mSm27CmiI9T
 FbU6FN/u54wA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 12:39:30 -0700
IronPort-SDR: oKGtXWCrK5CXG5IvmXcZsej/t2NtFBneJ+VIs/wrUbJAVRBBTYy+XHZQKCbv5r6djLcWyvGnDM
 v0T5VXs+63Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="457619104"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga006.fm.intel.com with ESMTP; 23 Apr 2020 12:39:29 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:39:29 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX154.amr.corp.intel.com (10.22.226.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:39:28 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.59) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 23 Apr 2020 12:39:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e8XDgeKd71V306IujLGhptI/jCVHHRqq9X3e4iL+T9mDt4LTcmCDPvABafhpZYUNVVnZI5GanfeRHouM45Mqrz7JB15cjCBX0mvNH3X4+CPWK6tvKlaPX5y08lOoVpVOGzv7Dn0CRctclbODk4w3QfJFrUofP58HUJLOpMvSxlibq21M3BeLyVT1h5mx94ZSG4jc8yBTl5+o7Ej+IgM9oaVF3jKAty9vCm81uvhmt83tkKd+SX0iGrYXN8v/4SXfGVGryr1vvWg29K37uiSgxVqsnsXQq/8+n2/dE4Aub08DuAfD/UyR1ekN/ErCRj6Z80PCG/bJiC73jKHbBwaikQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yunpfh+D7wqS2v3edTc6zYRDJiWs52cK+MqiGH0DgfI=;
 b=msGaC7/H2He8uoi4kXeDklFJHEwNzHZeKf2v/i1SgZZbnwG4kF16zuBvWqfMVZUQz3KFD1eunPXTViOhnXZ1wP6gzL0VAccc3Mul0d84sxkJ6CKpRTuxEElz4FgcwQgIYibmSAxO4SdMnp67WLepwRJFLjKPSC+8cT/gqjZvv2e47J5NiCpFd7EHlotpQz6mqSrhkhrD/mrjDA1dP8qpa0YSBFX0eDevMmDSoVqigEczxzWtjw3EI5yhfa7ZYUW69jJOLzbmPRD6cRanAdn2yo8hAmbImWSnKkmYzvdBcClu2HCgkTdSZ7bjcQHuvGmtNWqZHL81ay97/F9f5LhSoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yunpfh+D7wqS2v3edTc6zYRDJiWs52cK+MqiGH0DgfI=;
 b=QNQY7b0QJ0zoMlAcGf4QObVLgQmK1MFNT/sddpg2ZThfhc0bLYkPMUrj6HXrZZvjWB8MPUDbEwHfxhw2jZok0l9RthcV+ho5l3NkGDfBUlm5FnzQnfZgGnOWQMBQsTHPDcTOJG5e9CwvwVfp49idI2gKN34JRo84ob6a5v9fuII=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4121.namprd11.prod.outlook.com (2603:10b6:5:199::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Thu, 23 Apr 2020 19:39:27 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 19:39:27 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused
 IGC_ICS_DRSTA define
Thread-Index: AQHWEJOc8LB0ognvrEubiC2a0i/1M6iHLFMQ
Date: Thu, 23 Apr 2020 19:39:27 +0000
Message-ID: <DM6PR11MB2890140235CEF6C534D38897BCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200412062829.17781-1-sasha.neftin@intel.com>
In-Reply-To: <20200412062829.17781-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7643b5cc-45b1-47e8-f521-08d7e7be08de
x-ms-traffictypediagnostic: DM6PR11MB4121:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4121F2D4D8C21F9B1A60D219BCD30@DM6PR11MB4121.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(346002)(366004)(39860400002)(396003)(136003)(8676002)(8936002)(76116006)(5660300002)(33656002)(66476007)(64756008)(53546011)(66556008)(66446008)(6506007)(66946007)(4744005)(26005)(2906002)(186003)(478600001)(7696005)(71200400001)(86362001)(81156014)(110136005)(52536014)(55016002)(316002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WIKXWPaZ09k1aP05a6nWxlILIXo9po0cH/sRSibCjvkNoolghwV8NVzOdRPm9RtZeJJbNlegIlrKW2YHT3rzT9nruciuMTklfpDTLyOVha+tsiTrDr9FnAKXNIxZnrF8kH/QSgGEf6OVjMdBqTvEPOnnSal5bPXw75+ovNrA001QQcjTikVpXBjALMT7NACh6Wc8N7uTkQ8d1T6+zBorqjIBYrHaFxpi58tPo8uFNcDo/kGH2edmqjCh50d/yyHSpvwVUYcPOnCbLhIFdzyXEfhSiBU+9d7vF826wHX5JpkCHpjC50KvKl+G82PgtAsu3NEC2bPIt9l0yjjHuEu0+Pu1AM8F3JAT97XuenFm4V+VK09rbxvK/wx2W8o/ttlp2WeMTWxe2Q4QsI9CmOh4TQvlMpezPKrGeU29CNo6zSLwH2THDUSgt5vIqO/ST9gL
x-ms-exchange-antispam-messagedata: AAH5C6VuWsyWNCo8XT6oF0vPkbhxJnKvxauB5tnPyUdM/mL3ckC2PNnR/WAZ7tFAY0woqFSO1P6HtNTMLnKQlcDKePp2Zb+tBY67ULsWo4gvDbGx2Iw7Ja+l/JMhhcZjdo9b9XL6CUzNZCh6s8VxHQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7643b5cc-45b1-47e8-f521-08d7e7be08de
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 19:39:27.4496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v/S2cCsNYPm1Cr1v5+sRavupf6HDN7dwNwB0tIJrp6h3oAP7xuQS/+BAqOXxKgFrL2HDWMhJAqSD47tS2GgtJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4121
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused
 IGC_ICS_DRSTA define
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
> Sent: Saturday, April 11, 2020 11:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused
> IGC_ICS_DRSTA define
> 
> Device reset assert for interrupt cause register not in
> use for i225 device.
> This patch comes to clean up this define.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
>  1 file changed, 1 deletion(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
