Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0761865FB86
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 07:35:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A214960E16;
	Fri,  6 Jan 2023 06:35:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A214960E16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672986910;
	bh=aoFTXxrRtdcz+kHl0nvIhBRP4rWeMNSIEEF1ZJsBt1I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aWwZd4pcIQ9pmcQw2XKK346qfaS1eRkSS3W+1/iRKxgN2tdpLhTUFxSjW67d0hmaI
	 NE7nzSPNHdCDGzeWi1H/3z0c706soP0dUdBsES0crvj6s9M/y4J3pIo/1Xb6tvzy7r
	 hO6o5JTKFQOpRLw8+INnQ7BvlcAOEg0juDw4jj9m6VV2VhW/efcpqBgBunne4xaFwC
	 GOWMqmaU4viUt0fu2IwsgJWZNi/frPU+gUgP48REVrOdFxxdIUy9hAiChBxzHgSgob
	 o8yBK604vgO2od0w3k+e1GsRnoOtYwPUH3pZSq2Q+lRPBBfk3V/Yg6Rl54m5gwRTv2
	 +17kAQxvkpeIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fAAE-qxihp_h; Fri,  6 Jan 2023 06:35:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9646960BAB;
	Fri,  6 Jan 2023 06:35:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9646960BAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86B021BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F52160BAB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F52160BAB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f6myn6ed6Ldu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 06:35:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2111060BA6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2111060BA6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:35:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="349629789"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="349629789"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 22:35:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="688213105"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="688213105"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 05 Jan 2023 22:35:00 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:35:00 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:34:59 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 22:34:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 22:34:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJkFNzzGxCGH9O/O9Z7HToqpRpeRekcfM2x46R1smEgjtMbpYw+AftDzyKNFchLsr7t06h98w/DwYN/ySfM7+W5NWgNf0b92aFTJjAcSqW7oCAlIB1APFJ9jdhmX/5z3J8JF2DoSvxI9Z5tnFC4vsQgoqzMzBIHMvoWvaPPtCSgpdZrgvwZBrK9srKLZbreqVc2jPfJ3I/LDd0crjQj/NbLMjQ19MU8VoaDODoQZmy1/80WnIhbISlRVRSON8CUHA17jn0MFh9p/hj+At1kqvZ7tBdhKfJmtF7P+aay7iHugXNu9O9FIMz2ISCa42tz2Pc2beQNDMKa/mGe5sJ1obw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V0hF+jq5d+6tjqEnTHLL+AyalhWEcrA486ithVACdLE=;
 b=LhDH9j0g+24mxMQdk1tZbV+5u7atsFsCe4TEF3swNQEqAQVQTA23ZZD0kyj2DFAJ2EdOU1a1HVnxcXOfrGloMYPqSKibHpDgvfKuyGUd97sm7uvut2FJJlWAc5uIaA2/OdPC54/OEpxQjPbXXz5rJzVMxKHd5+j8s2NErVdImggLhHG9TblLoKm2FsQJn4kURhrJN9JVGiMp2K5E6umW6STrZHpQfUL4v4xYmtFBLZcJ+NPjlpcoGx91I4R921cwesoI3KCKMqs7RBH+2N3hP6aMdAscnmwvVDa+aWT/RBIbxgIN6NEACcfmro9DHEaFMCGwFBa2VgI+oUAF3xeDzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 06:34:57 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 06:34:57 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 06/10] ice: split probe
 into smaller functions
Thread-Index: AQHZFTME+oZSJYDrw0KfiPX/vnd5LK6RB2Fw
Date: Fri, 6 Jan 2023 06:34:57 +0000
Message-ID: <BYAPR11MB336783CE717CA364CF6C515EFCFB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
 <20221221113822.12858-7-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221221113822.12858-7-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB5294:EE_
x-ms-office365-filtering-correlation-id: 4b4acf2a-d1fa-4f6f-d435-08daefb0211e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +uXGfzaMHS7BdveCeqt4Aueju1r+MVRxh52aBMCH6f2VRfzr5dFfccWBxWWwgbx8m3tjqelM8CZA0Sc3NNNm2+XHe2fGhiYa7/2cdILP8MzEJ97TCbo+zGRRL6JupWkRj/WEzHbRniSV0hU7YAjo9jcc+oLmYekCO0Qi1sZyuy8twglUzzvzsJXDs+j9dTBI3NJnmvekjoxjjmGO90khrXrtrZz5X2wnxuT1M+Tw4NCUmQlKDMck++hFMuj+8mtRL4/1WCthjpgI6ytwdGcT+anWq0EiHn2JnDKLN2Nna4F/6oCPyWf1cA+PNGUI5Tep5kfwOGUrYTdKvBc64xyj94lraE1yEkjvORi8Ms69dNecf7qaJWrS+fyHJAAGwv+ksaOzJpsb8Hx5rvXc/ZcyOQm3+2WWrZzS55M+4TYX0Ra4YrEFD5Uhrg+FDpzdIfTYU9yQrS8qWe+MF2k/ePc3cXo07AuTnnEeKf4JegqvqSl7k3OBzZzGvneh9z0rTDU2QA3S4u6byDkyOvgcCPtHLFZiLAsEcIE7xgwDKsAQUY09L2PJKNvpV1FPsFEk9RHVmkb+FNU2PcdaM4bexE9ruz1prim2mGuTol87Et2MyRozsbAulhZ/LZG0m40eas5lgEmc6CvKxxcS5H34lr1pHY9AQkJp+R6JhBtwDEAImFyOlctOU3EpAwt+nqY9bmp5YJHZrLQVxMwmPs5V37tfCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199015)(2906002)(5660300002)(52536014)(71200400001)(8936002)(41300700001)(478600001)(4326008)(316002)(8676002)(66556008)(76116006)(66476007)(110136005)(64756008)(66946007)(66446008)(54906003)(9686003)(55236004)(26005)(33656002)(6506007)(55016003)(83380400001)(7696005)(186003)(122000001)(53546011)(38100700002)(82960400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BV4jBf4yleW8rGhsVAeVVTkoH1TZv2ov4vguA8HRwCy0a8nlWbqLQBcoMNgU?=
 =?us-ascii?Q?bv0Q4xvjsVJN1HWw5DOgUgTBFouHcZPFuf/sIqS7vyKcdQ+Hdb3v3Km73ITI?=
 =?us-ascii?Q?52xr8u0dVcSSTGsd1Q04VtOXOcEA6QNuUqVH1oyctM0Ntz30rUfpUGFesz48?=
 =?us-ascii?Q?r/Pqi+lBaNoE0ODr0LX5E1rIES+6CwxFUUuthytPE0sSD8chXbLIl+FAtFTs?=
 =?us-ascii?Q?gxZfCAf4d3C0TT8XSoW43pZT3BILvMqp5MCbp8BbT60X4bQn7kCQ/wKo7z+F?=
 =?us-ascii?Q?68tSy7NjZmi02pdJywuDABuD9JEw72d7bKNL/+xEdh27dK1mYChEuSKf07gl?=
 =?us-ascii?Q?H5NQjsttLWjs64EhYf+RARcml3yh6QVoxcYRrG61YyQheevlpErxQpjMJaVw?=
 =?us-ascii?Q?vJReVaD2Gtpzc5pNMXWQn57eo3TOlpnAFisK7Nr2N1685c1skXHrCtG1G7sl?=
 =?us-ascii?Q?QA2pf+5LWQXUKsPFIPqtpWU8prKl2IdoRui40VR6aboB2wTSJGd5F42QlyyU?=
 =?us-ascii?Q?U76VA81Huj4EBivLyv07n8K1Hx5QctISUeAWeYPYWtW8jaGZhszk+2Tv3SJ1?=
 =?us-ascii?Q?wnnCoQQbZniJCC1mYXhLYyKEnigHxhYcqP/V67msrLoWvlCxOkQGpQhEtRrL?=
 =?us-ascii?Q?CU0MrReN3oqViOG09MuqjXg6HAXZ1o6DCit+FRArtnY17g/fRl6R6O/AagV5?=
 =?us-ascii?Q?KQFv4Ijv0n/pZDy+V+F3oCtMLSFTTGwtpB6/kOzY3DXm95q43fOFVz28at94?=
 =?us-ascii?Q?SJ5yt+LnDScgrMXicfotPj2Jr/HQhK/bTISOMLiVLOnIt2yC1FEgkPRgG9um?=
 =?us-ascii?Q?t2+hUFQQJ4AeFqRTtKe64Rh77xLfy0Jeb9oDtGnbnFys3mBFkKH34+kGcLj0?=
 =?us-ascii?Q?Whlv+FPXrP7PvNTGti/qbQiRaYnNMb9cSTgjsLBOpWyFWpRpIDCBRLHu5usf?=
 =?us-ascii?Q?mx3HTKnPgZyGFxSIoFpmuKVHTKoi2cYmAcnxk6nWp74bo/3PjkeWd0vNeNOr?=
 =?us-ascii?Q?uVEykjmeS90BGoqcmjNAJ/J+8c7i+8AZZGj82XqG7J2+hoLgizVXWXE4SYDp?=
 =?us-ascii?Q?JPnFL1w++sKtgcfZPjpq3KmpCtFzPAwsLQxHEYnpkU7yfnYU5NEg7EnqW1xH?=
 =?us-ascii?Q?dZ3SbHGb1NszNZMr/mP/tbpRNeQ1XDGVH9bynSd0LoZ+rhSyA9LYefpTvTmS?=
 =?us-ascii?Q?7W7PlG+HMTaWYr4ZkEhQi0yg8KTj23aDFAWFxAwhR4UUs1Da4twJfypI0Z1D?=
 =?us-ascii?Q?rHPkYEeywazDJs5K/7JLEfRWEIIST+QkUP8+WdF3m/LjogE+xQYB9YqnNvFd?=
 =?us-ascii?Q?WP5mUtpPDrdjcbtbotYPJ29H18ReZvndH8SRVYTcfESGYteF/7sqTAw3iUGJ?=
 =?us-ascii?Q?baKPOUBYCMnksnL//Dv8JE7TqrfgVW7cA2x7Nmns+HdzAKkXovqxxj7HXJfN?=
 =?us-ascii?Q?8N7QZoK4m1dqsloE/UQGGk8lwHhDqyfzVVsoDOjZdhX7pwB0xqj2FulllzMI?=
 =?us-ascii?Q?n1zd/G3/gBthxihjzXmfjqjr8hQ8HxRVso6s/Tngq26qB5XKSqANg2VofKe7?=
 =?us-ascii?Q?5EMJW6PfHbKGulCybj95oZTFd3kjVgqoYqnmyDXl?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b4acf2a-d1fa-4f6f-d435-08daefb0211e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 06:34:57.4828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WMTI9UEP8UF4e8iyjCQscnxfk2HEsFDWj2ldTFaII/ADmNW08c8KmRrh4To6XNZWDCXm2MQqUMcx28I0dDFUZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672986903; x=1704522903;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LHGkscvR1o+V+uHgN5GftkzogDzGHMt702kPrx66JSk=;
 b=KaGeYLM5gzS7SNzlI/T6ntR5UsIwVPZRqcFJieZTkSJr99QJgmsT9LiN
 QmVyQzA9gUTrtINCDC37nMpbdlZEm3EYAwLru3l+vqmgK1OnTKwkCWCC2
 GNpxaG5h2La2HJRvKddOAMwlAmzrscgiDD4/JS5KF0ZA/S08W9NpeRFQo
 ZCB/Ja5PcpuVzIeeUrklayuRcie+1raFgGPpfPFyKjl60FreYZowsYhWa
 6GvefUUpOU4HK+stA3vlF96cZAs+L+96Bq2K9tQgO2N54olE7qlK6fBDC
 EiEdKUJC5nIxdzQ6IJT94eGpBmzI6Pqni+64AcPNDQrx3Ylc6xWXqsJ52
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KaGeYLM5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 06/10] ice: split probe
 into smaller functions
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Mikailenko,
 Benjamin" <benjamin.mikailenko@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, December 21, 2022 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Mikailenko, Benjamin
> <benjamin.mikailenko@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kaliszczuk, Leszek
> <leszek.kaliszczuk@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 06/10] ice: split probe into
> smaller functions
> 
> Part of code from probe can be reused in reload flow. Move this code to
> separate function. Create unroll functions for each part of initialization, like:
> ice_init_dev() and ice_deinit_dev(). It simplifies unrolling and can be used in
> remove flow.
> 
> Avoid freeing port info as it could be reused in reload path.
> Will be freed in remove path since is allocated via devm_kzalloc().
> 
> Also clean the remove path to reflect the init steps.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h        |   2 +
>  drivers/net/ethernet/intel/ice/ice_common.c |  11 +-
>  drivers/net/ethernet/intel/ice/ice_main.c   | 932 ++++++++++++--------
>  3 files changed, 559 insertions(+), 386 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
