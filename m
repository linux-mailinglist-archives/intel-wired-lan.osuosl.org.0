Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E12355F21A2
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Oct 2022 08:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E36E84015F;
	Sun,  2 Oct 2022 06:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E36E84015F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664693860;
	bh=g0Dn9QaGsqagV9LZyN/j2YrWofl25rUkVBBlVn0cK7c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y2WdDJ2XJi3Gw+rikzLE8V2wQf0OEDbsFz+Y16Ts3ZZFO3dfOCxWj67ms73Qb5qTN
	 QprbaoMUYWdILGWifERpa4izik+taC9TMeMgk080BaVX7s47++QYiGPQnnOcWWnXX3
	 zvXZrgL68/iwODI6KqnPswBSeKpLjEAswJX/SzUU5p3pQmPaWwdtq4HMHj/AVKRMC2
	 99BXmzHoBPA+JxOg5EKIYqIlPfc9PrVfDUpCRKZJUoDZBx9QT00SoctBty/txMqb1a
	 2elLYNBzKY4TdebPZS0OA3M6wk9uE9oiN6dDr2XH2t8l51cV43cEvNqnb6r0oknNFf
	 U858PRHqj1ANg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IoqcSXQNepME; Sun,  2 Oct 2022 06:57:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 746354047C;
	Sun,  2 Oct 2022 06:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 746354047C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B27931BF375
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 06:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B66D82B8C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 06:57:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B66D82B8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FburOw7d1xEB for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Oct 2022 06:57:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B14B82B81
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B14B82B81
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 06:57:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="289610580"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="289610580"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2022 23:57:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="654016131"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="654016131"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 01 Oct 2022 23:57:31 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sat, 1 Oct 2022 23:57:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sat, 1 Oct 2022 23:57:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sat, 1 Oct 2022 23:57:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K/T3QroQKpNyaPoj9Ya0fVO8UVTBwK2qSgbZw8/hh3u3lcG1dHQurPAQgq6bLclo9gMBFF9AzQxD7mN0Xs2oxWv+gkbKGa8dvDu3ty+mzQnhF1XQ/6lW8Iu7gjZVyw6Fhd8VzCXfSdYhusdqiVl+OfcBpHY4UfF9/VQb/P5QOUJC5KsAs0cIq2/CVHgy6SJ5+KL1m6fD6LBm80UfJqPBNxxPVR+fAweTEw+6oSkQXggMyCKaxNTEtCOsPGcj0FzXH+MV8KLhwny+JJCVu2YEorWS60qITxVVuVxWOibgXk2rE5oAqf0F5guddc5YOhH2mNaqeWf6YSElOmosFyym1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DonkIx+RTKP13+imMiXB5OeykWkM9fAMznna1cCIeVk=;
 b=a7dm6Zl/3A+Cx+5GV/G0v3YbgvrMgtZYA4szoDZ5WD6iXid7g+KOOgzMcR8WW5bKY1cmpD5kCOexksD/7A9jD2LTpp8QkOX3h6q9yUmWaEFSevxkIWD0cGVVROGXBbQH3aFlo+Ggz0kFMAL8CEzjRVi0cUn/oJNhM/4/9Vw8Ogw6cnTmGbyuYytje1uGgCJKwDa5KPmBOS+SPiceEaUudK1iZ4/cji6SJayiN7yRk87QTcwJ5z15r2WhBAmEW9Qc+q7yhDEdv7MMDTlr8oaSH4LQR8okc/0j7zypfGSXUfgZ7ZyUPJXhHd9IVeplcm1xcYhwPGutksfPCMf+C8nmvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by DM4PR11MB6359.namprd11.prod.outlook.com (2603:10b6:8:b9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Sun, 2 Oct
 2022 06:57:29 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::2914:9926:3b20:aead]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::2914:9926:3b20:aead%7]) with mapi id 15.20.5676.028; Sun, 2 Oct 2022
 06:57:29 +0000
Message-ID: <d287a371-2a26-04f7-9adc-c7d8a19bfc14@intel.com>
Date: Sun, 2 Oct 2022 09:57:23 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>, "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>
References: <53c37a6f-c8cd-63d6-696f-6b50b70f78ea@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <53c37a6f-c8cd-63d6-696f-6b50b70f78ea@molgen.mpg.de>
X-ClientProxiedBy: FR0P281CA0065.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::18) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2235:EE_|DM4PR11MB6359:EE_
X-MS-Office365-Filtering-Correlation-Id: 52df2afe-3160-415e-cdb7-08daa4435ede
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VU4/XwevIEY148ZsRjYzr+UMvL93cW51Elu5PTakJhNdVbTnMnsLT0x2wxX2PleFisXs6hdl7+Wz375kar1T36mD8ysxPDvAj03zLGLeNU5Vpxoj3sI0WiwV5VEMTzeXCpwrEdyB1iaDBuYJIdtvhx3f4OyxKf18gLzxT58We5NMYxSO5ehLbFQ61Xi80HXhsSRekV3JiHA2xTn6WwvLuHd+NlUMsFkaw0Aib5jT8bBh84wQJko2dIVO/osLeoP72chJzb8bCKTqCtKsJBZVukOse/qh2hL8sqIQ7gqUJNXq/nMDR9GBwhCj4Oc2/YHOyVkJsfhNEHxyR10tfRfwLAy+TnTZKbBk0jYdCARyTf0yqlMt3AndOHgHrJ19k3lJQvKPCWcoH/X7srYS7eNgmXUKNX19vGJJC95kJGVmyy5ORI8RPkGQzBZIrps2SVJmbci47qu5JzlcVgRRpuJPxi8YZkkoD3k4shapXsx6X6IECHivMapcqzFcOGNEWpv0YSDEg6tkJvm4L5uqZP9IUninlhzhdqy0xFRvtCRrmNeCgnvqkJoiL1Q0PiD1vMmVwxG1gOLEKTPgV+68EIV6fP4jMBJU0BrdXlo04BFepcFfkcVRwjpQ8N34z3+mI6h3YbD40aBKqVph8pPDM2X0okbSbla+Olp0IAn6NogVOxTRaO63bDQ3IOnWpX2yJTX4uFeaRw9558nUBfGu/t2IZTFk46aMJV7iTNraAwR6m7i1GEO1GfmHG5hgm3YEspJaW8rARzluzwj6yBJgtMDxlPa7MjIkc6K39AbegyUoOrH1NLYGZfLwAKfollSqk2Ts
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(39860400002)(396003)(136003)(376002)(451199015)(86362001)(6666004)(38100700002)(66476007)(66556008)(66946007)(8676002)(186003)(41300700001)(4326008)(2906002)(83380400001)(8936002)(2616005)(6506007)(31696002)(36756003)(53546011)(26005)(6512007)(5660300002)(31686004)(478600001)(54906003)(6636002)(82960400001)(966005)(6486002)(110136005)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q29HMFJmZW5RKzBOMU5UUHJpNitjbFoxYWZUS2NDdmZMSFByK01BS3plak1Y?=
 =?utf-8?B?czdWbjQwVzlHc2x4L1RCMkt1cjVkWFBuSGV5NTFWaDNjbmdHRi8veE8vTWhM?=
 =?utf-8?B?bTErU0N4Zy9CUjdNZGJyKzNjRVYyTEFuNGtXUXZ0Z3Y3Uy9pODd5OWJpQi81?=
 =?utf-8?B?UFZtcUdQM08rZ2VkQWZUZkZCd0xOUWxHa3RhK0I3eGRVdm50VmJRZy9YWTB2?=
 =?utf-8?B?eVJKRUJNbVQ0QVIzeWpaMlhWeGUrOFVUNmtaVXZLVmE1Q2R4aW9MdXZlMy8v?=
 =?utf-8?B?S1M4bVdQbXBPRnppZGRUdm5lQVAyUm5mWlVoYktBYjkwTWNsQzFwUzJsZFdT?=
 =?utf-8?B?THFsMEVHeGNMamhVN3NidDJVNlJuY0pMQzU2S1ZERWtkN3E0Ui9jSGUvZjRa?=
 =?utf-8?B?OTAzdU5yMFN3U2I2b3VFS3c0dyttMjFXTDQxV1NsOUFLbm03dEhQTE9HUFdU?=
 =?utf-8?B?T1dUanczWC9FQ0gwMk1pUDc3ZmwxNkd5SFdWa2pRY2dSSEZQc0srdC9rWHdK?=
 =?utf-8?B?TW8xa0YrMERWYm9vTE9wOWxJM05OUC9NaDVuaERTV0FXUksvS2R3Vk42WDhH?=
 =?utf-8?B?VzRLVkRIdkdDMmlaZVpRMnBVSGp0Q0RmdkFTMmZJVlZ6Q0dEa2FCQVMwU1RZ?=
 =?utf-8?B?RWZjOVNGTy91b1dCeEZBMFpmNnY1cCtpd1gwQlF2ZWxLSVVtVkFGMXNHeitI?=
 =?utf-8?B?aFQ2MjUzcGZWWHUzYTlOT0NQUUtVKzZEbDcvdVBEWXZTTWVsYVY5bEY5aXNL?=
 =?utf-8?B?Rmx1UFR4MmRsUGV4cDlIbkZna1FnaktMZHpSOWxVTUlRRW9MU2dGelBpSFF2?=
 =?utf-8?B?bEdLT29mdTlsbmtZdTJKclFFTkVnaUhBVEpPb3FJN2FuYzU4ZU5pOFJuSTR2?=
 =?utf-8?B?dm5reEljTjlidUhGZXNkSFRocTFpWnU3WW4zcUszbGRWVVVyTEdYM2VWT2h5?=
 =?utf-8?B?TjBGV01hK0ZoUVJFczBobktxK29uVlk5aEhXb0dUSlNPc0tKY3hTcVpvcGRI?=
 =?utf-8?B?S1AzS09mWTFXVzk3NjNsK0h2VzVwMnplVzJ5UDB6a2VmeEplVjZiM2ZnSExz?=
 =?utf-8?B?T2tOYko4MzZ2ZVVQSVhHbVJpQ0dhQW0ySlFzWlJOcTRTUnc0a0dGUmRBSVFX?=
 =?utf-8?B?a3RFQUFnV3YrSGJMRkFBYTFxZk9Dd1VmckRWNVFYdzg2dXB4TnBMa05CNFdK?=
 =?utf-8?B?amgwK0lyU0ZUVk94eUs1bkRqMGZzditwL3BXZm81TnF1ajRlODgvRmhGUVhY?=
 =?utf-8?B?OFJQaFh6Z09nRXR2am5JYVNDWGVoektnV1dSYTRvU3RIcithKzQyMC95by9r?=
 =?utf-8?B?Vlo0dklzdWFMME5pMExON1VTL1I0eXFkMFQ4SWw2aUZybG5uUUcyL0ozam9U?=
 =?utf-8?B?Uk5nS0xxTk1VcG0zOUFTYjE2Vll0SG80VEM1akN1a25zUXpzMmF0OXRnMXFj?=
 =?utf-8?B?aWo1V2pVUFRoOU1oNFEvWExiUzl6aEk2akpTQWU2cXB2R2IrTGMwRjZLOGJn?=
 =?utf-8?B?cU5zTTY2WnpPaWdKdERSaDZ1cm44cEM0Q3psRHZBYzF1Tnl2NUZSRTJSenQ1?=
 =?utf-8?B?L2lBUHlZeVlmdTA4eG85K3BsZy9IN3VONVgzN0FLMUx6NXdOdC83NjRCdVBo?=
 =?utf-8?B?b0MxRC9hbXNHTVR6QXdkTS9WSHUvUkJMWHliUDVkTWFTTC9SSjQ4Y3FWQld3?=
 =?utf-8?B?S016K1FQNDcyM1RScFpndFNHdTIzSUVDZFIzNTRPbEZnbm1UK0V4MVhaQVB6?=
 =?utf-8?B?SXZSOWxXMy9mL0toMWlwUGwzY05lQmI5VXVUN0phaEhLTm9Tb0ZYQml5OUJ0?=
 =?utf-8?B?M0JnRDI5bTk5azUxWWRqRlRJTzNUNVRqaXpnR2lMUmlmOVpua3RCTlNFY1dw?=
 =?utf-8?B?dDR2TzdqQmlIMGtabnBqRUs5Vng0UGhDcmdrUVNISUhlQWZ6b1E2c3lEVlFK?=
 =?utf-8?B?V0M1c3R4UUhmLzh3VFN3NGxLcWEyNVdWMnp4eEMvek9sQU14bW1neTZTZE5z?=
 =?utf-8?B?RUFXQ3pQdDhzalU1Sm1rL3NnQ2w0Y2lYT3hLWUZCTW1RakNWWFpuRWdUN3Y4?=
 =?utf-8?B?UUpKZmJFY2tKN3NGZW1TZmx0OGxEK0ZFNkx4ZmJvZTcwYzFQMjVFQ2hJb1hk?=
 =?utf-8?Q?2SPaI+229xqMUZbKvq8l5mWsw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52df2afe-3160-415e-cdb7-08daa4435ede
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2022 06:57:29.0270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sWPVkEtlUUs3qrXXQWtv3kPZx4Ee+mpbfBV1dDFqVEWb5mr53218m3isjzt4tMJSILSRySjF1pohuKo9Vr7lKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6359
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664693853; x=1696229853;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2FEqR8Ki/gPu/uTFihu0fVwRQ+dkYv6Ea2vi2nFxSlA=;
 b=fnyYobDRf/xupg4aJG4aReagXEoDzNa8S6TpeOhdTyCZMK7MgTV0jKe9
 8twRT1B4QNXJxoVYK4ARfC+WWhy8petdS7mYFuK1wT5WTVJyCRwTH3ivx
 jn8u/YTNZ0591r2ghYUNLinETNHgHd5mixHFdQ2u1FbCiPeCwS7jnqOyX
 zk1RE3VlbSLUphrEmxIt93E1HuFUdefQdQ1WB4xCWguY30XxzxATq/fm1
 jAsbPgRIO4BrYf2zYLbWXiEESWtztVnLhlDOeHGp94fwCw9g6qV4ktoVj
 vvYYDx9SUb1bAQcDwOE23WtiXjv+tkyQpwP/+aU1wwEXGCzbZl/3660Gn
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fnyYobDR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Link does not come up after resuming from
 ACPI S3
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8zMC8yMDIyIDE4OjU2LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIExpbnV4IGZvbGtz
LAo+IAo+IAo+IE9uIGEgRGVsbCBMYXRpdHVkZSBFNzI1MCB3aXRoIERlYmlhbiBzaWQvdW5zdGFi
bGUsIHJlc3VtaW5nIExpbnV4IDUuMTkuNiAKPiBhbmQgY29ubmVjdGluZyBhbiBFdGhlcm5ldCBj
YWJsZSwgdGhlIGxpbmsgZGlkIG5vdCBjb21lIHVwLgpIZWxsbyBQYXVsLApXaGF0IGlzIHRoZSBk
ZXZpY2UgSUQgeW91IHRyaWVkIHRvIG9wZXJhdGUgb24geW91ciBib2FyZD8gQ291bGQgeW91IApw
cm92aWRlIHdob2xlIGxzcGNpIG91dHB1dCBhbmQgcGFydGljdWxhciBmb3I6CmxzcGNpIC1zIDAw
MDA6MDA6MTkuMCAtdnZ2IGFuZCBsc3BjaSAtcyAwMDAwOjAwOjFmLjYgLXZ2dj8KSSd2ZSBhZGRl
ZCB0aGUgUEFFIGV4cGVydCAoQW1pcikuClRoYW5rcywKU2FzaGEKPiAKPiAgwqDCoMKgICQgbHNw
Y2kgLXMgMDI6MDAuMCAtbm4KPiAgwqDCoMKgIDAyOjAwLjAgTmV0d29yayBjb250cm9sbGVyIFsw
MjgwXTogSW50ZWwgQ29ycG9yYXRpb24gV2lyZWxlc3MgNzI2NSAKPiBbODA4NjowOTVhXSAocmV2
IDU5KQo+IAo+IGBgYAo+IFvigKZdCj4gWzI2MzIzMi4wNjA5MTJdIGUxMDAwZSAwMDAwOjAwOjE5
LjAgZW5vMTogTklDIExpbmsgaXMgRG93bgo+IFsyNjMyMzcuMTYwOTM3XSBlMTAwMGUgMDAwMDow
MDoxOS4wIGVubzE6IE5JQyBMaW5rIGlzIFVwIDEwMDAgTWJwcyBGdWxsIAo+IER1cGxleCwgRmxv
dyBDb250cm9sOiBSeC9UeAo+IFsyNjMyMzguMTQyMjUzXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVu
bzE6IE5JQyBMaW5rIGlzIERvd24KPiBbMjYzMjQ1LjY4NzIwOF0gaXdsd2lmaSAwMDAwOjAyOjAw
LjA6IFJGX0tJTEwgYml0IHRvZ2dsZWQgdG8gZGlzYWJsZSByYWRpby4KPiBbMjYzMjQ1LjY4NzIx
Ml0gaXdsd2lmaSAwMDAwOjAyOjAwLjA6IHJlcG9ydGluZyBSRl9LSUxMIChyYWRpbyBkaXNhYmxl
ZCkKPiBbMjYzMjQ1LjY5OTI2M10gaXdsd2lmaSAwMDAwOjAyOjAwLjA6IERpc2FibGVkIElOVEEg
Yml0cyAweDEwMDAwMDAwIHdlcmUgCj4gcGVuZGluZwo+IFsyNjMyNDYuNzk2OTk0XSBlMTAwMGUg
MDAwMDowMDoxOS4wIGVubzE6IE5JQyBMaW5rIGlzIFVwIDEwMDAgTWJwcyBGdWxsIAo+IER1cGxl
eCwgRmxvdyBDb250cm9sOiBSeC9UeAo+IFsyNjMyNDcuNzc4MTkyXSBlMTAwMGUgMDAwMDowMDox
OS4wIGVubzE6IE5JQyBMaW5rIGlzIERvd24KPiBbMjYzMjUyLjc3MDY2N10gZTEwMDBlIDAwMDA6
MDA6MTkuMCBlbm8xOiBOSUMgTGluayBpcyBVcCAxMDAwIE1icHMgRnVsbCAKPiBEdXBsZXgsIEZs
b3cgQ29udHJvbDogUngvVHgKPiBbMjYzMjUzLjc1MTk0OF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBl
bm8xOiBOSUMgTGluayBpcyBEb3duCj4gW+KApl0KPiBgYGAKPiAKPiBFbmFibGluZyB0aGUgZGVi
dWcgbWVzc2FnZSB3aXRoCj4gCj4gIMKgwqDCoCBlY2hvICJtb2R1bGUgZTEwMDBlICtwIiB8IHN1
ZG8gdGVlIAo+IC9zeXMva2VybmVsL2RlYnVnL2R5bmFtaWNfZGVidWcvY29udHJvbAo+IAo+IHRo
ZXJlIGlzCj4gCj4gYGBgCj4gWzI2MzQ2My44NDU5NDRdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5v
MTogTklDIExpbmsgaXMgVXAgMTAwMCBNYnBzIEZ1bGwgCj4gRHVwbGV4LCBGbG93IENvbnRyb2w6
IFJ4L1R4Cj4gWzI2MzQ2NC44MzkzMzldIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogTklDIExp
bmsgaXMgRG93bgo+IFsyNjM0NjkuNjU4NTU2XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJl
YWRpbmcgUEhZIHBhZ2UgMCAob3IgMHgwIAo+IHNoaWZ0ZWQpIHJlZyAweDEKPiBbMjYzNDY5LjY1
ODYxNl0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiByZWFkaW5nIFBIWSBwYWdlIDAgKG9yIDB4
MCAKPiBzaGlmdGVkKSByZWcgMHgxCj4gWzI2MzQ3MS41NDI0MDNdIGUxMDAwZSAwMDAwOjAwOjE5
LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4gc2hpZnRlZCkgcmVnIDB4MQo+
IFsyNjM0NzEuNTQyNDgwXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBh
Z2UgMCAob3IgMHgwIAo+IHNoaWZ0ZWQpIHJlZyAweDEKPiBbMjYzNDczLjQ1NDEzMV0gZTEwMDBl
IDAwMDA6MDA6MTkuMCBlbm8xOiByZWFkaW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPiBzaGlmdGVk
KSByZWcgMHgxCj4gWzI2MzQ3My40NTQyMTJdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVh
ZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4gc2hpZnRlZCkgcmVnIDB4MQo+IFsyNjM0NzMuNDU0
MjgwXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IDEwMDAgTWJwcywgRnVsbCBEdXBsZXgKPiBb
MjYzNDczLjQ1NDI5OF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBTZXR0aW5nIHBhZ2UgMHgw
Cj4gWzI2MzQ3My40NTQzNjBdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogd3JpdGluZyBQSFkg
cGFnZSAwIChvciAweDAgCj4gc2hpZnRlZCkgcmVnIDB4MTAKPiBbMjYzNDczLjQ1NDQyMF0gZTEw
MDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBTZXR0aW5nIHBhZ2UgMHgwCj4gWzI2MzQ3My40NTQ0Nzld
IGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogd3JpdGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4g
c2hpZnRlZCkgcmVnIDB4MTEKPiBbMjYzNDczLjQ1NDUzOF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBl
bm8xOiBTZXR0aW5nIHBhZ2UgMHg2MDgwCj4gWzI2MzQ3My40NTQ1OTZdIGUxMDAwZSAwMDAwOjAw
OjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSA3NzIgKG9yIAo+IDB4NjA4MCBzaGlmdGVkKSBy
ZWcgMHgxYwo+IFsyNjM0NzMuNDU0NjU2XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IFNldHRp
bmcgcGFnZSAweDYwODAKPiBbMjYzNDczLjQ1NDcxNF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8x
OiB3cml0aW5nIFBIWSBwYWdlIDc3MiAob3IgCj4gMHg2MDgwIHNoaWZ0ZWQpIHJlZyAweDFjCj4g
WzI2MzQ3My40NTQ3NzNdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogU2V0dGluZyBwYWdlIDB4
NjA0MAo+IFsyNjM0NzMuNDU0ODMxXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcg
UEhZIHBhZ2UgNzcwIChvciAKPiAweDYwNDAgc2hpZnRlZCkgcmVnIDB4MTEKPiBbMjYzNDczLjQ1
NDg5MF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBTZXR0aW5nIHBhZ2UgMHg2MDQwCj4gWzI2
MzQ3My40NTQ5NDhdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogd3JpdGluZyBQSFkgcGFnZSA3
NzAgKG9yIAo+IDB4NjA0MCBzaGlmdGVkKSByZWcgMHgxMQo+IFsyNjM0NzMuNDU1MDU5XSBlMTAw
MGUgMDAwMDowMDoxOS4wIGVubzE6IDEwMDAgTWJwcywgRnVsbCBEdXBsZXgKPiBbMjYzNDczLjQ1
NTA3M10gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBTZXR0aW5nIHBhZ2UgMHg2MDgwCj4gWzI2
MzQ3My40NTUxMzFdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSA3
NzIgKG9yIAo+IDB4NjA4MCBzaGlmdGVkKSByZWcgMHgxNAo+IFsyNjM0NzMuNDU1MTkwXSBlMTAw
MGUgMDAwMDowMDoxOS4wIGVubzE6IFNldHRpbmcgcGFnZSAweDAKPiBbMjYzNDczLjQ1NTI0OF0g
ZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiB3cml0aW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPiBz
aGlmdGVkKSByZWcgMHgxMAo+IFsyNjM0NzMuNDU1MzA3XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVu
bzE6IFNldHRpbmcgcGFnZSAweDAKPiBbMjYzNDczLjQ1NTM2NV0gZTEwMDBlIDAwMDA6MDA6MTku
MCBlbm8xOiByZWFkaW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPiBzaGlmdGVkKSByZWcgMHgxMQo+
IFsyNjM0NzMuNDU1NDI0XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IFNldHRpbmcgcGFnZSAw
eDAKPiBbMjYzNDczLjQ1NTQ4Ml0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiB3cml0aW5nIFBI
WSBwYWdlIDAgKG9yIDB4MCAKPiBzaGlmdGVkKSByZWcgMHgxMAo+IFsyNjM0NzMuNDU1NTQxXSBl
MTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IFNldHRpbmcgcGFnZSAweDAKPiBbMjYzNDczLjQ1NTU5
OV0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiByZWFkaW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAK
PiBzaGlmdGVkKSByZWcgMHgxMQo+IFsyNjM0NzMuNDU1NjU4XSBlMTAwMGUgMDAwMDowMDoxOS4w
IGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgMCAob3IgMHgwIAo+IHNoaWZ0ZWQpIHJlZyAweDUKPiBb
MjYzNDczLjQ1NTcxNl0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBTZXR0aW5nIHBhZ2UgMHgw
Cj4gWzI2MzQ3My40NTU3NzRdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogd3JpdGluZyBQSFkg
cGFnZSAwIChvciAweDAgCj4gc2hpZnRlZCkgcmVnIDB4MTAKPiBbMjYzNDczLjQ1NTgzM10gZTEw
MDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBTZXR0aW5nIHBhZ2UgMHgwCj4gWzI2MzQ3My40NTU4OTFd
IGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4g
c2hpZnRlZCkgcmVnIDB4MTEKPiBbMjYzNDczLjQ1NTk1MF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBl
bm8xOiBTZXR0aW5nIHBhZ2UgMHg2MDgwCj4gWzI2MzQ3My40NTYwMDhdIGUxMDAwZSAwMDAwOjAw
OjE5LjAgZW5vMTogd3JpdGluZyBQSFkgcGFnZSA3NzIgKG9yIAo+IDB4NjA4MCBzaGlmdGVkKSBy
ZWcgMHgxNAo+IFsyNjM0NzMuNDU2MDcxXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IGh3LT5m
Yy5jdXJyZW50X21vZGUgPSAzCj4gWzI2MzQ3My40NTYwNzhdIGUxMDAwZSAwMDAwOjAwOjE5LjAg
ZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4gc2hpZnRlZCkgcmVnIDB4MQo+IFsy
NjM0NzMuNDU2MTQwXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2Ug
MCAob3IgMHgwIAo+IHNoaWZ0ZWQpIHJlZyAweDEKPiBbMjYzNDczLjQ1NjIwMV0gZTEwMDBlIDAw
MDA6MDA6MTkuMCBlbm8xOiByZWFkaW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPiBzaGlmdGVkKSBy
ZWcgMHg0Cj4gWzI2MzQ3My40NTYyNjJdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVhZGlu
ZyBQSFkgcGFnZSAwIChvciAweDAgCj4gc2hpZnRlZCkgcmVnIDB4NQo+IFsyNjM0NzMuNDU2MzIy
XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IEZsb3cgQ29udHJvbCA9IEZVTEwuCj4gWzI2MzQ3
My40NTYzMjZdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogMTAwMCBNYnBzLCBGdWxsIER1cGxl
eAo+IFsyNjM0NzMuNDU2MzMwXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IGh3LT5mYy5jdXJy
ZW50X21vZGUgPSAzCj4gWzI2MzQ3My40NTYzNDBdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTog
cmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4gc2hpZnRlZCkgcmVnIDB4MAo+IFsyNjM0NzMu
NDU2NDAxXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgMCAob3Ig
MHgwIAo+IHNoaWZ0ZWQpIHJlZyAweDEKPiBbMjYzNDczLjQ1NjQ2M10gZTEwMDBlIDAwMDA6MDA6
MTkuMCBlbm8xOiByZWFkaW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPiBzaGlmdGVkKSByZWcgMHg0
Cj4gWzI2MzQ3My40NTY1MjRdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVhZGluZyBQSFkg
cGFnZSAwIChvciAweDAgCj4gc2hpZnRlZCkgcmVnIDB4NQo+IFsyNjM0NzMuNDU2NTg1XSBlMTAw
MGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgMCAob3IgMHgwIAo+IHNoaWZ0
ZWQpIHJlZyAweDYKPiBbMjYzNDczLjQ1NjY0Nl0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBy
ZWFkaW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPiBzaGlmdGVkKSByZWcgMHg5Cj4gWzI2MzQ3My40
NTY3MDhdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAw
eDAgCj4gc2hpZnRlZCkgcmVnIDB4YQo+IFsyNjM0NzMuNDU2NzY5XSBlMTAwMGUgMDAwMDowMDox
OS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgMCAob3IgMHgwIAo+IHNoaWZ0ZWQpIHJlZyAweGYK
PiBbMjYzNDczLjQ1NjgyOV0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiAxMDAwIE1icHMsIEZ1
bGwgRHVwbGV4Cj4gWzI2MzQ3My40NTY4MzZdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogTklD
IExpbmsgaXMgVXAgMTAwMCBNYnBzIEZ1bGwgCj4gRHVwbGV4LCBGbG93IENvbnRyb2w6IFJ4L1R4
Cj4gWzI2MzQ3NC40NTgxMDBdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVhZGluZyBQSFkg
cGFnZSAwIChvciAweDAgCj4gc2hpZnRlZCkgcmVnIDB4MQo+IFsyNjM0NzQuNDU4MTY5XSBlMTAw
MGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgMCAob3IgMHgwIAo+IHNoaWZ0
ZWQpIHJlZyAweDEKPiBbMjYzNDc0LjQ1ODIzM10gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBO
SUMgTGluayBpcyBEb3duCj4gYGBgCj4gCj4gUmVtb3ZpbmcgYW5kIGxvYWRpbmcgdGhlIG1vZHVs
ZSAqZTEwMDBlKiBkaWQgbm90IGhlbHAuIFN1c3BlbmRpbmcgYW5kIAo+IHJlc3VtZSBkaWQgbm90
IGVpdGhlci4gT25seSBwb3dlcmluZyBvZmYgdGhlIHN5c3RlbSAobWF5YmUgcmVzdGFydCB3b3Vs
ZCAKPiBoYXZlIHdvcmtlZCB0b28pLgo+IAo+IFRoZSA4IE1CIG91dHB1dCBvZiBgZG1lc2dgIChz
dGlsbCBtaXNzaW5nIHRoZSBlYXJseSBtZXNzYWdlcykgWzFdIAo+IGNvbnRhaW5zIG1vcmUgbGlu
ZXMgZnJvbSB0aGUgc3Vic2VxdWVudCB0cmllcy4KPiAKPiBJdCBvbmx5IGhhcHBlbmVkIG9uY2Us
IGFuZCBJIGFtIHVuYWJsZSB0byByZXByb2R1Y2UgaXQuCj4gCj4gCj4gS2luZCByZWdhcmRzLAo+
IAo+IFBhdWwKPiAKPiAKPiBbMV06IGh0dHBzOi8vb3d3dy5tb2xnZW4ubXBnLmRlL35wbWVuemVs
L2xpbnV4LTUuMTkuNi0tbWVzc2FnZXMudHh0Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
