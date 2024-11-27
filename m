Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B977E9DA85F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Nov 2024 14:19:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6016842DC1;
	Wed, 27 Nov 2024 13:19:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oBWMbxSxuwpl; Wed, 27 Nov 2024 13:19:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7541B42DC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732713568;
	bh=r7BZ1hknu+0/PJrZ9arWKPuoV/F6yPiqEmgHcOPhgiw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qbFzbc2jFwD9f4Ug3DSQsghLBO2Y2bkzvpJlahTvPeKQugJQpj1CehU436RtYpTym
	 r8FdTcfQrSn8bLyXDChuPeSpJaoFrvI2z2ki0lEePbhgnuP9RSTV8Y0M9gJkOo3nyY
	 NhNQsjYmDZukvhjlyb2oKjw0xv8DfDWK9Tm+wpjgJP7L8PLZPKqiMdLGuIq5T+cAqN
	 ibVnkMSfs9IXDbUeYzJQklOs8ku+7GdwZieVruGjzDjzQys/UbBxtWnCnQbpcI9Nem
	 DZSBkEhTnu0g773ZAu1vr4Q3q/R2bsKoLhEKeSn2cNJK0FWLPKQzTJpjkLJEjChrIB
	 Ea1TMgB3IDyAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7541B42DC0;
	Wed, 27 Nov 2024 13:19:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 427BE1DA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 13:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3DB83847EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 13:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id du8JjplcW3GP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Nov 2024 13:19:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C56C8844BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C56C8844BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C56C8844BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 13:19:24 +0000 (UTC)
X-CSE-ConnectionGUID: 37qMfB/URNG7tPTZO0CFjg==
X-CSE-MsgGUID: 4JAvUrhzTEaLGFZUfhnBhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="50443962"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="50443962"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 05:19:24 -0800
X-CSE-ConnectionGUID: 2emgnzOlTcKGvPujODNWtw==
X-CSE-MsgGUID: dG/u3DeWR0i4yMQ4wCu5Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="122905525"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 05:19:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 05:19:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 05:19:22 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 05:19:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a4CpTmmlbi7kfIdeoGyF926vSGQFOn4MSndWQac9G1aowgGpLK3foJGblLkiVoZ8bRfIX+QYP1BZ0vvYXilUDpnGNH5G7sUNC/eko9WGOAYFkbgx3DKJ6S9He09XQNzILlSq6fSEw1P8FTqQ3IEDvDRHh/NjilbBLL8uv0KqPKixhEmr3rXmOsBP1e1mqlkT/OZqhTAXoktCVGznqmvT4e5i7cTXR5kSyZ/03TJsG/yQF4CVz6Vmx2uXQvDrqKkuomfHTZKfKWlIZd7Z4k/v2BxK/tCe5cbN1vBISzOWyXrlt8H+YTtC5rDpKuWv7tVATOozIKtj2CJ2dj8W8O2F1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r7BZ1hknu+0/PJrZ9arWKPuoV/F6yPiqEmgHcOPhgiw=;
 b=MvDn2Bv+W+DJDI8tjA0r5q1fczq2PfwdRsH1nhLTwATmkcw50WbeRqYL3FwXqHpMFCRtJgIQTnvFePjugySwU6x8+dhZRZo5YK/rWKqotrdnme/UP58stLQaAL53d8BB5GK8Ll7TAYazuNYlBO3Ho0A3hxEVPlMcTs/esE6KikcB+ThM6N5q14ehYdLlPa9FkKdamQLoxfGe8J6C3Mxf+1waGpWirhbXOjHsjlgFZHlACWkTYwbPQQyUqCXxlo5ZKp79bP3YFiR+Jeldh1Ct0EwrJseOqx6Q5dXGh7JijtB+TKbF70jHKF1+UH6Uq0++yIuIlwV2cpnLDHCJTGaLIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by DM4PR11MB6334.namprd11.prod.outlook.com (2603:10b6:8:b5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.14; Wed, 27 Nov
 2024 13:19:20 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::c7ea:ab4f:35f9:9b07]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::c7ea:ab4f:35f9:9b07%7]) with mapi id 15.20.8207.010; Wed, 27 Nov 2024
 13:19:20 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [PATCH iwl-net] ice: fix incorrect PHY settings for 100 GB/s
Thread-Index: AQHbP+0+/jmF4KnFUU6JzgEAAJ1pD7LJ1TWAgAEci0A=
Date: Wed, 27 Nov 2024 13:19:20 +0000
Message-ID: <PH0PR11MB4904824FA658713F78CA404D94282@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20241126102311.344972-1-przemyslaw.korba@intel.com>
 <946b6621-fd35-46b9-84ee-37de14195610@lunn.ch>
In-Reply-To: <946b6621-fd35-46b9-84ee-37de14195610@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|DM4PR11MB6334:EE_
x-ms-office365-filtering-correlation-id: 35374bac-1bee-4efd-38d9-08dd0ee61a2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?DII5gVea6n5nIi/Ywu/hh7SMZ9DjauaSoRAIOngkij9xIJieUfIi4j+VLqQA?=
 =?us-ascii?Q?E04NvmuCGErJObQhhatRM0CdlmS93E9xmTtUQHN5HHtTWh/A19CAq/BZ7N7L?=
 =?us-ascii?Q?Dz9SH6gpgotu9m8uaAklXb+2vNmiaMd0/Lfycjp89ACRJ/+bijLdW5AWd56w?=
 =?us-ascii?Q?+HTjtlfpbY4roUWUzPpjXV+CB44GeukzswB0KkeSpq6epPu/psQQOD1YlDfH?=
 =?us-ascii?Q?2bhevLwlkiVbxP/GnF/0aGb4j3NoFM9RFQrO0Ev8nZQbs6vKuuSPzgwlAk41?=
 =?us-ascii?Q?rbJ1EBG9BBFCtb/Y+CfIqLBWMPdLiEk0/RFaRjejdFb+HCa/NtyHWtLQUK2y?=
 =?us-ascii?Q?9Ul+kgEoB8sPaU6rq6a3LKeLXyITAj+wDSziP4rUpkYMQDO+fQ/kOISRToff?=
 =?us-ascii?Q?5J1NBzbUNpzACBe79EXbnP1WgKAxoJxgffuaW+3m+YaVyRc9kmTnpzYWGjWf?=
 =?us-ascii?Q?0lleIdJzD5F0g5TZVjpA1HN9LzqCrhDA3M98qYmDUukU6lW9wyNAOG+DlK6X?=
 =?us-ascii?Q?G8wqpX1ppRnENERDPp6ioB+preyt7xRb7KvIlLwXjACx3nHL1ywz2oooZhVy?=
 =?us-ascii?Q?OTfKbNA3T7v6cHDFCjxHfrdb+jsz2LR1aW6I5u8fv/3/lzZAsIWfL6jqDih+?=
 =?us-ascii?Q?w40epCI+0KJLMI8t71pBt6ufveIr/2WI7NzA28/398dzQthpbKr1k7+cWTYv?=
 =?us-ascii?Q?s2wDjvn3dAiGT5lU3Djsm0m5R2V//VRONz3jq2aDAp6JJZSypuFKBiP0BUEo?=
 =?us-ascii?Q?0ajEb3AzgZ3XhAx8I1qGfmkFwfG1NKORtPPkN7K3QpLL9rdfDv2psR7eTnJH?=
 =?us-ascii?Q?hSWS7SVOv9F6imlJZ89NXRw/xYMoQuLWfLNAEAQsAUyxidI28kzhfJ3OcL4O?=
 =?us-ascii?Q?7DjEBF3L0MIvaqD+nK0wc/T538Ywrs6S5WJxHgTNVkKn408pBVRPqhuIStHc?=
 =?us-ascii?Q?YSjZsGh5AkdKwJxSLHWaycCbGF/8tB2Zv6RX/xHrYtAD+DLgJt+jDRTTMxgH?=
 =?us-ascii?Q?rD59/NngsKsEi+tkJr3diMmPkocjwd2kS5uT+XY6LDm4gxUr1B9yq7OEeW+Z?=
 =?us-ascii?Q?iFtuCklqHzIycSPcJ4XuqGdPudA+rZ1amx+u2RgCIGh2F/wZGpHYbAd/tgIo?=
 =?us-ascii?Q?VpEgMdFlSNIsL2x78upkb/i6DjErBLATWzhWbqxC+MzgQYaqlKmzO3OfzjPw?=
 =?us-ascii?Q?5Rt6Y4VGrUDFg3e93vLWKiucrOY6g5+uQV0HqwKU4fwDBRC4FEaRcCiejbnR?=
 =?us-ascii?Q?M1YaHFGgK+cR1Ogrq8fdglExCtLvkvH1262Cs/Wno2iqp3nbFfzBYRlebTcR?=
 =?us-ascii?Q?fG2C4l8j9rpH6HYvwpzkxBVKMQMsHlz1k3aen7k7T8WNWx8YUPKSPhArBlLR?=
 =?us-ascii?Q?HbVZPvhHecznL2qqf7gI3o5nlDTa4eJpC+jofNK0h5AponMIVw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7JC+LPTV/d5h72OvVl8AkuhsFLX1Vojfl4u35E6Ukm1dPdGSQNu617mCjc8c?=
 =?us-ascii?Q?q+i/WIoz15VRLT1zuJQ9nkJaopkEYS+piAq1u5CwJvjzgDNdDDN7UXVV/Ag3?=
 =?us-ascii?Q?zqlAFOfPWyHEk+CWYJrvx+ZH9DqcU/TM39mliiftrfIJ3XMRvaOrFA+cu0i1?=
 =?us-ascii?Q?6SiZjw1DgHfKRYO4DXFkzwjj6cO1SpSPCbtzygbeTxMHiza1AU8R9rIV3bNR?=
 =?us-ascii?Q?laHK5vebY6eaGBQTaceYdIMsWSjlufoCHI0F7yVnAxVVtrekeUKTy2eSVjcu?=
 =?us-ascii?Q?Wbis8ykG2soq2/aoVnjvcjDnrlpzMC1DgxVL70dILDaLv4U1NYBRt0PrSUWJ?=
 =?us-ascii?Q?8QH4jbDdU5gSVsFJBQSimq1AWzAuIdADJdqrAhUSVikHxYp0uwFcmoanaxYc?=
 =?us-ascii?Q?cBublK9d0gbJb85X8ZQpkGizzCwZFEvU4Svn6H/6LCcymRVqzTridYYg8Y0R?=
 =?us-ascii?Q?MyDUBxg4M4LmcGP8yO9WGmds+e1AZDe/tcLedRytqDFlrzRSzuU5hjNQXmFW?=
 =?us-ascii?Q?eFkOzryOy3aN5nTNtKhW2voCMX/yeSgv3NdAZQJCkncTpAzgwe4AQR8895ns?=
 =?us-ascii?Q?draeS38puJ/iA3hIJVdNRPYHaVM39JO0nPGb4PyGJFBtrw39ia63AlzhAvyC?=
 =?us-ascii?Q?YMD5EUEKMfGHQ+IyncJNhx4qqiqaGZP6MrFAhx70++MJZPsE0t19qv4p9RfV?=
 =?us-ascii?Q?ZuFcnR1HM6xnUmE+C1xmaWMT1/SgztfOkJj4f3/zHX46tDMCeEY3xbnpaM3i?=
 =?us-ascii?Q?q5IF1qbTGduT4Md9RhrVd4N6Vtz8eEqQ/llL9EryTWnLiMeeaGj4EUOx9LL/?=
 =?us-ascii?Q?fc8eUk3ldMy8QYdlH8KfQmgao3uvbAH+ecHBwvUw0BCHpVjdH2ExD+kXV1Md?=
 =?us-ascii?Q?5qqFsyAY/cZI1IZ5YP0LMsBDb+qtEW4iVcgBQ5IT1fIkstXvemrA18HGTfnt?=
 =?us-ascii?Q?yazJjjuvMKZnDjyWpRIyJLcIwvTQ9XS1PtxSJ1kHrpQTNlNzG18Ikhiqikba?=
 =?us-ascii?Q?FqbUhR+zx40MKFq0qWKOCiKs9z3J+uYK/K3Nj3M5NMn0Fs5sMPa09qByypk1?=
 =?us-ascii?Q?fxEyfTuOvkISwf+ULT/IA/nuudwEQrti3Y2Piv19zWc8AHApQBBJzuMvHyP9?=
 =?us-ascii?Q?DQVcWL31CbaaawrcbiEISA8tIaTCih0R+DaKRB5x5oTLAXcledXGbhP+/tO/?=
 =?us-ascii?Q?cMq6s1SuhCaDMbbBlauH/0pa8N6SMt26z5pQMhwsWV5NN6TOTbprPGwHmr76?=
 =?us-ascii?Q?0VwZepsaKfCFomFun/YW8xddBQSW/tMxdmJHZgGxJRfzkJOUuT2KpmgrlH5X?=
 =?us-ascii?Q?vSRGFmgnhdtmoE3SQaUYCsd0J5EpW2cJ70Th4tmjMa80J7f+rDTQLKBPdH/a?=
 =?us-ascii?Q?XAUqMbWiIsszhJDbmHihZK5NJKuw1QGlnJ/RC6M4+ESbfGustq/XImy3QRyQ?=
 =?us-ascii?Q?S+PBGNb4/n5H88C+o7RmYmvfgax32WrX5zxpGxEZTPbYTGES0Udw7fTpQDfo?=
 =?us-ascii?Q?TUv5s8hIgvpCLaFLaEQ2ZemNwsgQQUInnfJm45HAfTr6cxCi/EzF86sWCgzV?=
 =?us-ascii?Q?t7t4QIcbKmZqAov1uFArtPztCkligO5Sy9UqC62X?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35374bac-1bee-4efd-38d9-08dd0ee61a2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 13:19:20.0624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r6e3a69bX2W5OG/cVc/rMUtkcQ3DSzKsLIYQxAi3xi9cWTSGTAF4rCdR3Xb2hc+fU0g8Q+QQXEeWEwWpR5EQbiZd6QyOiyzGU6/imDWAbu4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6334
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732713565; x=1764249565;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hAnOkIeAug6SlmHGfxK1sYBOFtrCY3qs6Vc6Cv9R2/k=;
 b=FEdIPDUJOiak8D7Cj0N7JizXJnF2nm+e1VPmWimpxxMhxToO/G0AGgmO
 85duepmXLqnKwNSi6x9uzXcre02se7GOlhgOPfM631l+186bDda73QhXC
 zJU2G/ishWdBEyTgG510MeboSa841/Tqu92td2efNrrx0Oh7nghDfymOv
 s/avOgIqqYdBxrfMDlBE9QRs51Ha8mIBPVJHvV3BDLTlSUyw7VjOdPnJw
 I2qsNNrVKwKdEpLRyBRbZfcTWlBYG6cgg7YZlwU2B8wd9xpI3uCbi1EQC
 dWEo3RXnIB5iHeq9xSFuZVimAOyGiQqudo5q9BFyYtbE+KkgZhtZKIVzs
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FEdIPDUJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect PHY
 settings for 100 GB/s
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Tue, Nov 26, 2024 at 11:23:11AM +0100, Przemyslaw Korba wrote:
> > ptp4l application reports too high offset when ran on E823 device with
> > a 100GB/s link. Those values cannot go under 100ns, like in a PTP
> > working case when using 100 GB/s cable.
> > This is due to incorrect frequency settings on the PHY clocks for
> > 100 GB/s speed. Changes are introduced to align with the internal
> > hardware documentation, and correctly initialize frequency in PHY
> > clocks with the frequency values that are in our HW spec.
> > To reproduce the issue run ptp4l as a Time Receiver on E823 device,
> > and observe the offset, which will never approach values seen in the
> > PTP working case.
>=20
> You forgot to Cc: the PTP maintainer.

Who is the PTP maintainer? Is it necessary? This is only Intel's driver,=20
I am not sure if PTP maintainer is necessary.=20

>=20
> If i spent the time to measure the latency and configured ptp4l correctly=
 to take
> into account the latency, would i not see this issue? And will this chang=
e then
> cause a regression because it changes the latency invalidating my measure=
ments?
>=20

I don't think ptp4l config, or configured latency has anything to do with t=
hat, you should
still see issue with any configured latency. due to incorrect PHY settings =
there was incorrect=20
calculation in Vernier algorithm. Not much to do with latency. The Problem =
was that the offset=20
was quite far off,  I will attach logs in commit message once the window is=
 opened. I did not test=20
with other ptp4l configs other than the standard one. Thanks for reviewing =
by the way! : )

>     Andrew
