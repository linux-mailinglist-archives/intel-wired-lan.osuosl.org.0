Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A621730B77
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 01:19:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 571EC611AD;
	Wed, 14 Jun 2023 23:19:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 571EC611AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686784777;
	bh=LDTkJRds4lZvLdbFeJ4L7FiDnEC3ky5rynWK7b8TBO0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zBRuMTeUV4sTBtgEG49+cyDTDCtMxi7KYDghNkGftTsVykiG14NeBmhIeGdEY74Wf
	 zYtuPwSSQi1e4hENtIuq/U5XSuZW952OFV14hi5o97N1zmYGyI/fRbkPl+kMUR9RZM
	 0hVwLTqxsyR8xkzvHT2fHhv6OHxq1KVFb3Rw4ydZCmSvX2HVAMzEwROaSUxuS0yCYZ
	 3Z91qwJ3oSGjVy9P3hLbKbgORX2Z4pb8eJZrz366IO5FYX+jKvahpk/uUARjajZuJQ
	 r8qPIH0ZG35VxmG28Ip49HfsnlxOYvqsNtYsbR0NO7bVXvcyzI6NDhYJ/9Qb0zvHWM
	 ND/SX6DEqJM/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7WghXrJ_u-D; Wed, 14 Jun 2023 23:19:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1440F60FD9;
	Wed, 14 Jun 2023 23:19:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1440F60FD9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE5DB1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 23:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4A9783A0C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 23:19:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4A9783A0C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sOcijnxtUcb0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 23:19:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD566839E9
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD566839E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 23:19:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="387176233"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="387176233"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 16:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="782277425"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="782277425"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 14 Jun 2023 16:19:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 16:19:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 16:19:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 16:19:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 16:19:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ctrHpvEyTd0pcLgnkKkVxAuKNE/ITfe6hl/vlU5GWS3Frx8EZITDM2EgLrETFnlimlyX2GuXRMoPKayBCFJoTaoPr5+CIx1yKFs2+40bWaD+9TVyZZLpGv5AxUJgRnzmEzItZX8lMSGQ/QlJtaIDfvX4gqTRnSkNDK2Hleg1wTx7JS0+uD85OA32dMvzparB7PrfdSMhDwUeHhC2TDPYuXsA93yhOaYoISxC9vxJOZHyfbRAtrQMJ5/A+LaqmlQ9dm7/zXjGI9CTu6iM3HPEuX4Lkz1samaw0nd6DooFsu3CAbg9NLHC1xcW1FzYNV984IdjVCzLtNIwsXcfS5Zrbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nw60cGoJdRpMShXAF0pne/7hAR35BGZO3D97nvsXczA=;
 b=B0VXj8JmIMiR11/pGicNq1mV55KsudtG9jVZyQWksRiU9LDxxvAKixiUSJxu9hNC++IHuHhZrw4YEKbjROzZmJGqaWifWHAg3gVjauFAowPF1QGHOk4x1ZoiKf4Hw4GuCxsErsdzlLFuL+Pnspwv2xjU1jZLEN+rESY90ydi+ie1Th3FHVSrNu99ChJ/mX83mZudirXWWAsCrZdJPyjqos80zcnOKojRdvssYHHMSMR9e5aAHEilqy0XoPLru/Fa3SpgSk6FEDoXciTYCaDg4ZgdQv14YjlukJSSOnNA5fEo2XLWnnuSDKEeyc8GmP+BFmdWRPhxgOCPEhGRtPdLRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by CYYPR11MB8358.namprd11.prod.outlook.com (2603:10b6:930:c9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Wed, 14 Jun
 2023 23:19:26 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%6]) with mapi id 15.20.6455.030; Wed, 14 Jun 2023
 23:19:26 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Brett Creeley <bcreeley@amd.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v4 05/10] ice: process events created by lag
 netdev event handler
Thread-Index: AQHZnwam8kEZIoOpNEC5ktVuu0r1zK+K7neQ
Date: Wed, 14 Jun 2023 23:19:26 +0000
Message-ID: <MW5PR11MB58117A92BC18CB758DF950BDDD5AA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230609211626.621968-1-david.m.ertman@intel.com>
 <20230609211626.621968-6-david.m.ertman@intel.com>
 <887cbcd2-d01c-2736-d0de-660de80ef4d6@amd.com>
In-Reply-To: <887cbcd2-d01c-2736-d0de-660de80ef4d6@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|CYYPR11MB8358:EE_
x-ms-office365-filtering-correlation-id: 99abd95e-b193-4f55-9281-08db6d2dcbc6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pUDvPrZ/Zof03TbX5xjBM9JvetvyAtPMaXKxzFoaxO3AptdYl7XjDVlZxWqEdSgcOu+9ehpf4sq42sOTWmgLsIC/zFNUDq0tnFXe5YMvcTVLZkmNyoSbq5a8x21QCX834sBPd6/Oah2kQrPPzPDlDkCexp8VG0CUvunDGCf7I4NyldV1fTjYjIPNi6AyGxSI8Jt9W+cc+QWV+XBq4ecfVI6hcn0onT6nbktyCZ370tEDaa2Hr/yl/MnVuJkLJghZxHB+ZWHXmDugWbmr17zGso5KYkZERHMpEzgrPG/SGlcckrwXSWJzJrccP4XpGkksGpVcdmXSDES0XgkXjmuXKZ161vZfwfzt96MXj1/GUVbUfBeckpki/+uoROl+nYZeQIkFqFTNRhnyxmFAXiHoqggQpWGGvrBBokfk+dtkifZA/6wom3fkA8SEO/n4Xx1Lohrq/niRkhXSfcFQ08hXZurUkEGLbAE27Q/GhCOD/pIGaTN55FxTS2Q57+kBCxfWXP78HT0S375X1Bhl8EZD9GtvI7ibBjbx3J+7YgQltpCGTTmRtWylfhmJTx99Or0LIO9Xh4rN6y9PniQ9a/0i8JFudTwV0QJ4Oi2SclYSpDuAygCH2ZraiwzT83aN+P93
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(39860400002)(376002)(346002)(451199021)(83380400001)(5660300002)(52536014)(186003)(55016003)(6506007)(2906002)(41300700001)(9686003)(8936002)(7696005)(26005)(8676002)(316002)(122000001)(110136005)(54906003)(38070700005)(33656002)(53546011)(82960400001)(478600001)(38100700002)(4326008)(66476007)(64756008)(66556008)(66946007)(66446008)(86362001)(76116006)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z2FvQW8zMExxTVdFbG1GYmFVZU5xdU1EQnYydWtIcHhsNitKT09iVjFrdE9E?=
 =?utf-8?B?YnZXUjZKR25LdXVzNm1SL2dJL2E2QnRvT09lQmM5cS9WRURwY3J6c0k0V0xF?=
 =?utf-8?B?eUtBQzkxei81MzExNFV0NVE2b1dUanNZMmg0NHBjQnBrcUEyM2pMN3RyTkl1?=
 =?utf-8?B?WjQrVEdrK0toMEVzL1JtVEtQQ09TVExseEJHais1Tm5XSjY2QUpRRDgrc1g5?=
 =?utf-8?B?aVMwOVlkY3V2VlNqbjM3b1RCY2h1elVoZDJUZ3dpMHdCeG9yTXJoZ2piVk9Q?=
 =?utf-8?B?blAxdWoxR0RKWWRrR2R6VndVNmh1eEVuSkt5cDdHYUNCeS9rajRJR0V0aElB?=
 =?utf-8?B?MU5oZk9Ddmx1eitTcjBPcVZNQzJ3R1JIWU9qTVprdWF6QWU1ajBRQWhLQytV?=
 =?utf-8?B?dnB3RVV0U3I3MURpcXFzUGpwa0pCUUpYT2VJUGxVTkhQL1dYQTgrVHRwdFhq?=
 =?utf-8?B?emtxeDhVOXpVSHVaQTFBWXFKV2ZpUXJyUVhlM2g4dVZkZVEwUUZKakhDczBk?=
 =?utf-8?B?Nm8rQjg1YzVOVkJaMzZQdlltaFlXTDdpUjhjMGx5TFBJVnNtaTNjQnRHbjNx?=
 =?utf-8?B?Y2xuWWMvOUQvQzhQR3dMZ0xtVGpwNXdtUVJEbDhPeUt6STQ1WmJNNGUyR0g5?=
 =?utf-8?B?Mm0rTzF6NUhpSmxlMDZ6MFViMGR1ZFE1T1ZMcUNGSGhLL281Q2VvSnh6czRV?=
 =?utf-8?B?UkgzcGhST1FDQ2lhWUhGVkp5VCtoUEw4cXhmeEV6MGFTbjV3RkowTVFuVEpK?=
 =?utf-8?B?ZkxqbjlnQmxpWGExcEJ2M2ZDN1lpdUtmM0RBTWZHNGgrMWhpUCtRUVdMa3Nt?=
 =?utf-8?B?QUZ1Qmd6OXFVWlVpZU5RckwyUS82NSs2blhQSGlxL1Y3ekplaUt5a2ZtM0dv?=
 =?utf-8?B?dU03N0xJYS8zdmJBbnJNR3ZpdWM4WkdOQUF3RElERm8wL3dVa1ZTSjkvUWFW?=
 =?utf-8?B?cWZDMVN3WkpnejV3L0p1bitDUWdNR2RsbytIRU92ajNGa1phdjE5MjNLcDNo?=
 =?utf-8?B?SHZKNXczSVk4Zm15eDNPUjArcjExRGE5VytRRzdBTUlTT3BYZ2hCeEFHeGF0?=
 =?utf-8?B?VGhZMURhUUZlQk9abXBpMXZvSFQ5dlVvdDgzdXdvdkFYNElXSlAxbWo1R2xi?=
 =?utf-8?B?aUdQc2xrallVU3dqY1hNQVZ6NCtYZytLUEZRTE5IK21weVBJNXlnUWwwK3pK?=
 =?utf-8?B?WmQrd0cyZGJTR1VJcVZEYnppTDZPSmE1QWo0Q3FENjFpZWNHUzk1dVdNOUZx?=
 =?utf-8?B?TTZMeUVsaU40NlV6N1hOZmQrYzZabCtlWXZ1ZEsvak5hSzlMR3h1b2M4bktu?=
 =?utf-8?B?SGdKNDgybjdVSGF2cmlpTk80S2laWW9HbExOdU04L3RQdjRhVnNYSHViMlJK?=
 =?utf-8?B?eUwxdDFvWSt2bkxlUDFFdWduc2FCYytwSzRuWEJUQXEwRkNRd1NuNlpwQnZS?=
 =?utf-8?B?Z0xQTkcvV1hNNEI4WkN5cDQvSi9EMHdmN3hTWnNqa3F5d3RUSE9sNk1lSzMw?=
 =?utf-8?B?ZVM3MUNlZ0pMU0hieHhBbTZYWXNjU1VkVDJQUU5vSDg1SEpVYlhDZ05wTzVS?=
 =?utf-8?B?WXpxNWZnQ2U5RzNSdXAyS0NDRlUwbmRvZ2k1RzJkWmJibTVFRHZyT0FrY0Zx?=
 =?utf-8?B?aFoxS3l2Q21wQ3pqWEdtZ240QXdzRjhRTDBTY1lqaG45cjFCc0toM0Iwa0hY?=
 =?utf-8?B?b3o4UmVNSm11RWhCcXlZTHBlOFl1MjBub3M0VW5SKzJLazloSjZGSnM4Mkxj?=
 =?utf-8?B?Qmp3TDlpQ29KVnB4UTl2azlJeGo3cW1BMjROS1RibE5YWUd0NEZXS3VaNWtS?=
 =?utf-8?B?eXA1MlpwdjB5Rms4aktUbFpTWDZvZ09UZmJHWG9Ud2pxbkxsS2tIci9uOTRN?=
 =?utf-8?B?b0puaDB2czFKWTVPWG1OWkxHQ3Z5VUVlYjlmc0dwM09IN3JYWVZlV2Via2lo?=
 =?utf-8?B?SFNwUGVGcm55QTZoaS9SSVhCZFhRZFJ2TlpVUTAwYW9FZThYeU5neG0xeDc0?=
 =?utf-8?B?S1FUMmd3akp6dUR1bkZTdnRLaDRucjJPNE9NYVRhdXI2emdLS01OWFZKNENK?=
 =?utf-8?B?RlpIcW9JZ1JBL0lKZXUwRnJ5YXk2MStCanU0UjVOSTJnV04yYkNDT0M5V0or?=
 =?utf-8?Q?/FsScwc/TUrn1TkE3pvtJcNtt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99abd95e-b193-4f55-9281-08db6d2dcbc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 23:19:26.2368 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoekKuR4kogxrZzcKr0m9V+7GZaZ4Iq/eQNQ6oRCCAY4ueZdTpGO9StcrS4YPYNsIwUCMzCycy2kkEv143F/EVpGEmX/mKhi5hgM5S5YOj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8358
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686784769; x=1718320769;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Nw60cGoJdRpMShXAF0pne/7hAR35BGZO3D97nvsXczA=;
 b=aP08DKQlDTtd0pJGVQYkgFNUyqgsvNhgAuaZtk0G2ClA63uHxu3s0Yyz
 k1Zi1Bfby/EeoO+2U510AaK1co/qJ2bhviSQqYbiStehLkMz/4CDXBbgS
 Y7xdE/QyiNOXc0/1NkaGskIcyIre9bDgX/7I4YZEFw/ip2L01vh1ZmniA
 areC+78f08BZ6evl5xsGfhdvFINmFQmrN6AQw8iTr6Tf5CR4KREWCYFSa
 6Ub82L4EExM3OnFeOAjnsoyDLQyQ990JvLG7Qhl9ROrlzofZxOT+upGPA
 NEkM/6ArM9D9NC3azkQVn1f4fImt48VeCTjmCcDg8LCKmIaoBe6f8Tqgb
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aP08DKQl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 05/10] ice: process events
 created by lag netdev event handler
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Brett Creeley <bcreeley@amd.com>
> Sent: Wednesday, June 14, 2023 2:24 PM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: daniel.machon@microchip.com; simon.horman@corigine.com;
> netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next v4 05/10] ice: process events created by lag
> netdev event handler
> 
> On 6/9/2023 2:16 PM, Dave Ertman wrote:
> > Caution: This message originated from an External Source. Use proper
> caution when opening attachments, clicking links, or responding.
> >
> >
> > Add in the function framework for the processing of LAG events.  Also add
> > in helper function to perform common tasks.
> >
> > Add the basis of the process of linking a lower netdev to an upper netdev.
> >
> > Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_lag.c      | 535 +++++++++++++++---
> >   drivers/net/ethernet/intel/ice/ice_lag.h      |   1 +
> >   drivers/net/ethernet/intel/ice/ice_switch.c   |  10 +-
> >   drivers/net/ethernet/intel/ice/ice_switch.h   |   3 +
> >   drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +
> >   5 files changed, 478 insertions(+), 73 deletions(-)
> >
> 
> [...]
> 
> > +/**
> > + * ice_lag_reclaim_vf_nodes - When interface leaving bond primary
> reclaims nodes
> > + * @lag: primary interface lag struct
> > + * @src_hw: HW struct for current node location
> > + */
> > +static void
> > +ice_lag_reclaim_vf_nodes(struct ice_lag *lag, struct ice_hw *src_hw)
> > +{
> > +       struct ice_pf *pf;
> > +       int i, tc;
> > +
> > +       if (!lag->primary || !src_hw)
> > +               return;
> > +
> > +       pf = lag->pf;
> > +       ice_for_each_vsi(pf, i)
> > +               if (pf->vsi[i] && (pf->vsi[i]->type == ICE_VSI_VF ||
> > +                                  pf->vsi[i]->type == ICE_VSI_SWITCHDEV_CTRL))
> > +                       ice_for_each_traffic_class(tc)
> > +                               ice_lag_reclaim_vf_tc(lag, src_hw, i, tc);
> 
> Seems like indentation got messed up here for ice_lag_reclaim_vf_tc()?
> Is this supposed to be under the if block?

Unless I am missing something, looks correct to me?  The if statement has a parenthetical
sub block that the second line of the if statement is aligning to.  The ice_for_each_traffic_class
is one indent in from the if block, and the ice_lag_reclaim_vf_tc is under the macro'd for statement.

DaveE
> 
> > +}
> > +
> 
> 
> [...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
