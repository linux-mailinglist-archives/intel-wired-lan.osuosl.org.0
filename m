Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B0D852550
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 02:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A00FD60A42;
	Tue, 13 Feb 2024 01:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GHiGIY4_mWEO; Tue, 13 Feb 2024 01:12:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1092960A45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707786728;
	bh=lYvNMBBoD9j2qMdaraNnkc8bRew5ESxtoKtS8JH5QZI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c28muehOB9QK+Fq24rhAH8cSI8qv9RPulFsRHBqN5L3RjjtN1oYtxKggEKGdZaYUm
	 54fQgytrAI83yuVvo5N3gJlEFb5Jl6riy8hJQx5LjMI0+XVywDjcqxiyA4RFsESRlD
	 9luNJt+8lFcIfsNcphHIaI7IUQCL2OzHcf/fiFxdfBU5WakyupAarlH2sACplPxabD
	 uzGsndSOEfrw9Ssow+Lit9EIT8T3POxYtJNM9rQ6EZPGHs6AxKU8g1aZOxruPcjH9l
	 68WNv+sWrmWSFj93xFiR8dcQcUS6Npqtmd9XvVrMPgz5d+7xcj2EQq4zb+wVyFog0R
	 V1Xr2VDn4jrdg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1092960A45;
	Tue, 13 Feb 2024 01:12:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0C291BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 01:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD081404A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 01:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ewCcCTF5GzWC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 01:12:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sridhar.samudrala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1578B40467
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1578B40467
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1578B40467
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 01:12:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="19199566"
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; d="scan'208";a="19199566"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 17:12:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="2792752"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 17:12:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 17:12:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 17:12:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 17:12:01 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 17:12:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDFWtVC0sLsVLVCtcTkytVy1Clgg/XxcLddHeQbnob9yb2cHXfkqWA9lX6MYGEBzo654vzl2CtVHqQ8LRguWYmSyI88ND0YgIEQruM7lyPTVpHi7X48mG/Lc3lizKJDZ2icVwSRYBI/ZLt7PtIhVeDq1uxKgqOzrN+BZ3mxPwcOgwR5eGZl/FCEeAbu2Zx6WcXSx1XHHRRcDw1+zmkiBCb9JaBZe00j34PjKeb7HCNTaDZwXALi7KBrdEEThjRB3YZ6/9r1VDeFbGiCSAoEv0D9WkufJUyePYQ3srbCXVrZ/lvSvA1el1EcGMjvENrcsI8JDW8skoDDCCv0GM7aORQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lYvNMBBoD9j2qMdaraNnkc8bRew5ESxtoKtS8JH5QZI=;
 b=jJLYLYlqy7DVTbs8oC+3vyC43Agpt2J5T445+P41WClgdEMinT36Gbvk3BmjlECmkmZfAfQhBkWi52icncHns8YuwBOYxbcfCq3fHd8IqpnoUkoJlz0KPgJslVhfKxbTme5tnVv4pSb65QFrbIFu0SgwAsCaXarIJWRF0JKZCsdeyhJPF8R9Q9Uh9Ut3+7Pzmf/SvjzmEjvRt6dSIoGlTyeS/fXivbvkvwukLIG8DavuUKBvXRhxNrd2yOSdRjJ93aB14JuapTvCHwC04i9UtD6sreuX8LPONI98bu4pxrxODmvqaxhGJltMDU6G31zonLxno3nOpJ64939LqR9lHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB4893.namprd11.prod.outlook.com (2603:10b6:a03:2ac::17)
 by LV3PR11MB8481.namprd11.prod.outlook.com (2603:10b6:408:1b7::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.33; Tue, 13 Feb
 2024 01:11:58 +0000
Received: from SJ0PR11MB4893.namprd11.prod.outlook.com
 ([fe80::ad31:79ae:4d1:80b4]) by SJ0PR11MB4893.namprd11.prod.outlook.com
 ([fe80::ad31:79ae:4d1:80b4%5]) with mapi id 15.20.7270.033; Tue, 13 Feb 2024
 01:11:58 +0000
Message-ID: <db5a1878-efbd-4fc7-bffe-acc8095bb44f@intel.com>
Date: Mon, 12 Feb 2024 19:11:55 -0600
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Saeed Mahameed <saeed@kernel.org>
References: <20240208035352.387423-1-saeed@kernel.org>
 <20240208035352.387423-16-saeed@kernel.org>
 <20240209222738.4cf9f25b@kernel.org>
Content-Language: en-US
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <20240209222738.4cf9f25b@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0128.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::13) To SJ0PR11MB4893.namprd11.prod.outlook.com
 (2603:10b6:a03:2ac::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4893:EE_|LV3PR11MB8481:EE_
X-MS-Office365-Filtering-Correlation-Id: 10fdc21c-6df0-446c-5022-08dc2c30c6e7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: heOhI9zVMM4CQ29y1NJXNRb7GTil/S5ldOgACt5er7y6WAQqEcxwbX9Atm0CKXDlfdQh+EzXCpOlqXGA8b90qcuMNzDETmSVPbtih/1aJ5yC8ErU7+n6Cy3lFhZHaH9nTUwDXxa1p17k5fDqT4bPSQz6xVfSRNh/BeDywfvfD5g0qhxT8XzIn/wGu3a0yLSk8JNw0nMXM33AUkpw9neg/mG2qLrSqdrLB75TY4Xt0kHJBNy+h4+w0R/qOnNw728NrOm2DCWpC+Z3RSBeHHxgnOsyqSxOT8J1OLp2b0e0sjJkuZK41gDGms5HSCmIN8zJfmQOcibLZkShWTkWKO2uIPMOxUYJytFBDAaGKKMUKst5Yod3HhBYj0CGflT7iyda6V4imEhquGJ5BUA1VxvIcQTbCLqqe+FSIfaIjokyfEkyc60cIH59+e4iTrTHjCVlDig+u2xBM2gkDUkO0IUTEAQA9LDhQWbgZqt5evvMDBCI/M2MUB5Qt0xQQVQX5kl93yjB6EFit3RRYTFhQIGKOdMmianINXZNNmkgap1a8rDwL0GSVZsVp/aefsYOAwM5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4893.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(376002)(39860400002)(366004)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(2906002)(36756003)(6486002)(6512007)(6506007)(54906003)(53546011)(316002)(6666004)(110136005)(478600001)(26005)(41300700001)(2616005)(107886003)(83380400001)(4326008)(66476007)(8936002)(8676002)(86362001)(66946007)(7416002)(5660300002)(31696002)(38100700002)(82960400001)(66556008)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0hVQ2lnSjFPMUhObWhNYXpaekVnbDVIc243dnFqZWlUazlTRUk1T01NOHdu?=
 =?utf-8?B?aGozeFJwK28zeUZ3Q2FXRTFiYkxMQ0crNG5qK1N3MVdRSk4weWg2MG1OR2I2?=
 =?utf-8?B?UWZNT3NUNlk5Qks4b0pWYTR1ZkczL1RjbGlqbzV0VHlJZURzejRLb215OEhR?=
 =?utf-8?B?eXh3d1JVTGdSRHM1YXZoWlpJOWhUU0YzNjNuSE43SXRwN1BDU1ZJeVdSOVdU?=
 =?utf-8?B?ek1kQTVwVnVVS0ZPV1NNRzJzTEE3U0xyWG1mNE5HcDJ0Yko3Q3JZRWhGRkVO?=
 =?utf-8?B?b1pFanhFT09wc3AzQSs3Sk9JRFcxMjlqNk15RlBWZU9mUDRBVU0zKzNQelJD?=
 =?utf-8?B?VUd6ZUI1LzdleUVMZ3BUWi90bGUwZW1ML1c4OGE1a0N6UllYNGJCcTBlcG9V?=
 =?utf-8?B?UlVVdU83UmN6ZC9kc2haMGxZQ0hOZHA2UnlRVzYrL3ZONk9IMnlGOHRCZWtM?=
 =?utf-8?B?Qi90TGJMdGdJdDhrcmtZZmdPSGM1TFJvN0pyZ3VpNlJsa2IySTlvdjFLN0Zo?=
 =?utf-8?B?UTdMb3MwWXcyRGtSUWpsTHdZUnBpS2lwMERoRjV6cEFvbjdrbUdyYVV5NGgw?=
 =?utf-8?B?dkZWUC95RExEaFBTKy9XWHoweHlPYVhHRzlOMmNjS29uQXduK1ZTd095VlBL?=
 =?utf-8?B?ekFCVHRNNDhiWHdnbm1DOHRVZ3VWMlI3L2dUR2MwMW91M2J2RjUraGRrZXlh?=
 =?utf-8?B?Ry8wQkk4Sys5S0gxMmpFS3d1R0xNb1ZNSVAzZzB0ZDRIbm1vMVpPcS96cDFZ?=
 =?utf-8?B?dHRxcnVQc1Q1UTBTYnJuZ3JaYVNkelhDUkdtYW8zMFVTeG84NWlYaXVIcFhG?=
 =?utf-8?B?QjJWN0MwbkZVT2FGQVFHMFpDSkQ0SkFxM09yUUZ0c0srTXBSTzI3UjN6YjNr?=
 =?utf-8?B?M2tiMGNhblJqS1Z4K0pRSkdkdUVCVG1JQkFiV0NYSnlVWmxUQzBGaTVHUzhX?=
 =?utf-8?B?VmRDcit1d0pRdTdjSHVYSmhUTnI0d0x6NW9FQ0RCeG1scFd0VVlCVUlKUjNF?=
 =?utf-8?B?UDBPclhsQVA2RUhSbVJYZ1Voamx5M25Ma00yejlMNlJtd1JIY3lmME92Mndi?=
 =?utf-8?B?STJBUTJLay8vYjJpaVJyYVFtdk1vZEZyTUF5Z0ZaOUJLbzViTjZHaUhVbTBZ?=
 =?utf-8?B?TWNOVnNRTjVRRjBsOHMxOG5zQkFqK2hJY3Y3SERhQUNnUFQranJkNlBPWGFY?=
 =?utf-8?B?Si9scFlTVXg3b09mdW1hbktaT3VGanB1Y3dWaUJrak1kcDhJQytjb1QwU2l5?=
 =?utf-8?B?VGgwY0lCSzcxWW5WZ0tiN09pVk9Ib3QwNnZ6RHZOaklMem15a3Q2MkdrRHpt?=
 =?utf-8?B?MmhIYzltNmJBRCtPMWlaaVlPSzZUS3UzbXdYeGo5N3lySElrNUlMakxBdkR5?=
 =?utf-8?B?RWcvZy9vVXBGZmZIdm56cnJJTjExdjVKOUgvOWtzTHZFVlJqdC91YUFBK2Q2?=
 =?utf-8?B?T0owL0VjdmFoenFxcFpXOEMzdEdMNFArRHh5a0VWY0V5Z3V4dFZaQTV3RkFT?=
 =?utf-8?B?ZFB0WFlNOGlxMnBid2REbUwxMVcza25CZlFha0duUkZuOG1FbzRXRXZTUVFF?=
 =?utf-8?B?MkFlMlRNZUJ3azFZNW5tZFowVDlnTTEwa2lBOVpHUHQ4bXprMHcxTGZMZnpN?=
 =?utf-8?B?ZmlxUTg4ZW8vM0RmV3NwamVHRFZMMWQyMUNEWnVRM3A2NDVlNGZzbU50Mm1C?=
 =?utf-8?B?T3Y3bXpnSUwzb09wV2JFeFI1MTZ2c2g5QXh4eldNMzZlVmh0QVZ2YnN5Ui9v?=
 =?utf-8?B?RW5HOVlOZktHN3dGdG5GUkdYYUJHQmM3MG9MdVpDVml4SnBaTDd1aE9UbUVY?=
 =?utf-8?B?REhmSmxMU0NIOVVHMEZqb3BVQmNrY1BVRDI0TFAxSk9mdXJzNVdWcjBKRXZK?=
 =?utf-8?B?eElMNE14aGp3Mm5QWjJndklERTFCa3dUNmw2cjc5d1RnOU9NQi9kWVRPQUIv?=
 =?utf-8?B?ZGwrRm9DamN4R3BaZVZPeUI2Qjd5b0lPcE1zb1pEUi9VS3pzYW5zODNTUk9Z?=
 =?utf-8?B?Vkt4NWNRakxFOUJUR3NCMDg4YnlPRTI5emsyL05wS3hoTFpHNitsOGR4aDlV?=
 =?utf-8?B?WHlhRkc1c1E3TEVZWU05eHNRME5vbVU4SWR4ck5pUGtRTHgxQ09uRTN0aVRD?=
 =?utf-8?B?b0wrREdpNGs4V1o0RXRwRFBhSDVTNzJNMnFGS0hCdElBZHo3Sjk5RkRpcEdD?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10fdc21c-6df0-446c-5022-08dc2c30c6e7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4893.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 01:11:58.7744 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HC5nfkEeSkAmXGk1to6ZWqPO3FMyL278wdVHkqsW96O99CdWLzCKQnSHt5YshPT58T30L6DzRDD7PzZOkVRRzNw8qXEY4wvTFZwYwI8SrQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8481
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707786725; x=1739322725;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bmDaNRUPRDe3QdP+hLZUoRUzFAmHxP664W73fOqTb28=;
 b=leWKgXDfq1jjN+bmzEmVqZNw/zLrGN5SkvyL+Vaz+8DywaXYpwwsEjla
 MBwa40wi4qPeCPujEHDI+gFGqR7kNiwllrCRwz59WRJ63GerpExUx8hb/
 c3wbfY28lIXD4AAwOKBCanZYzJk5B+nr5N3YhwJn6ZyFICXQvgXMetAOI
 Gl4UpI2mynqPwL1FqT+MWPgHs8WZrX6FjQu/Qi55LErDXDgI2PMhu/yA/
 qawnGEjw9ChGznIxodnNfaU6oFa+D2mca7Syvc/a3lfYl0cyjUdzgq9Y6
 k+fdYtNV7LK6ZvptEYyrOihjqVm2zt185Yt2kxTG9kE8GXcKNpHUHV80T
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=leWKgXDf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next V2 15/15] Documentation: net/mlx5:
 Add description for Socket-Direct netdev combining
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
Cc: Amritha Nambiar <amritha.nambiar@intel.com>, netdev@vger.kernel.org,
 Gal Pressman <gal@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Andy Gospodarek <andy@greyhouse.net>, Michael Chan <michael.chan@broadcom.com>,
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Leon Romanovsky <leonro@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/10/2024 12:27 AM, Jakub Kicinski wrote:
> On Wed,  7 Feb 2024 19:53:52 -0800 Saeed Mahameed wrote:
>> From: Tariq Toukan <tariqt@nvidia.com>
>>
>> Add documentation for the feature and some details on some design decisions.
> 
> Thanks.
> 
>> diff --git a/Documentation/networking/device_drivers/ethernet/mellanox/mlx5/sd.rst b/Documentation/networking/device_drivers/ethernet/mellanox/mlx5/sd.rst
> 
> SD which is not same SD which Jiri and William are talking about?
> Please spell out the name.
> 
> Please make this a general networking/ documentation file.
> 
> If other vendors could take a look and make sure this behavior makes
> sense for their plans / future devices that'd be great.
> 
>> new file mode 100644
>> index 000000000000..c8b4d8025a81
>> --- /dev/null
>> +++ b/Documentation/networking/device_drivers/ethernet/mellanox/mlx5/sd.rst
>> @@ -0,0 +1,134 @@
>> +.. SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB
>> +.. include:: <isonum.txt>
>> +
>> +==============================
>> +Socket-Direct Netdev Combining
>> +==============================
>> +
>> +:Copyright: |copy| 2024, NVIDIA CORPORATION & AFFILIATES. All rights reserved.
>> +
>> +Contents
>> +========
>> +
>> +- `Background`_
>> +- `Overview`_
>> +- `Channels distribution`_
>> +- `Steering`_
>> +- `Mutually exclusive features`_
>> +
>> +Background
>> +==========
>> +
>> +NVIDIA Mellanox Socket Direct technology enables several CPUs within a multi-socket server to
> 
> Please make it sound a little less like a marketing leaflet.
> Isn't multi-PF netdev not a better name for the construct?
> We don't call aRFS "queue direct", also socket has BSD socket meaning.

Yes Socket Direct is definitely misleading.
At Intel, we call this multi-homing technology where multiple PFs are 
associated with a single uplink port. multi-pf netdev sounds technically 
correct.


> 
>> +connect directly to the network, each through its own dedicated PCIe interface. Through either a
>> +connection harness that splits the PCIe lanes between two cards or by bifurcating a PCIe slot for a
>> +single card. This results in eliminating the network traffic traversing over the internal bus
>> +between the sockets, significantly reducing overhead and latency, in addition to reducing CPU
>> +utilization and increasing network throughput.
>> +
>> +Overview
>> +========
>> +
>> +This feature adds support for combining multiple devices (PFs) of the same port in a Socket Direct
>> +environment under one netdev instance. Passing traffic through different devices belonging to
>> +different NUMA sockets saves cross-numa traffic and allows apps running on the same netdev from
>> +different numas to still feel a sense of proximity to the device and acheive improved performance.
>> +
>> +We acheive this by grouping PFs together, and creating the netdev only once all group members are
>> +probed. Symmetrically, we destroy the netdev once any of the PFs is removed.
> 
> s/once/whenever/
> 
>> +The channels are distributed between all devices, a proper configuration would utilize the correct
>> +close numa when working on a certain app/cpu.
>> +
>> +We pick one device to be a primary (leader), and it fills a special role. The other devices
> 
> "device" is probably best avoided, users may think device == card,
> IIUC there's only one NIC ASIC here?
> 
>> +(secondaries) are disconnected from the network in the chip level (set to silent mode). All RX/TX
> 
> s/in/at/
> 
>> +traffic is steered through the primary to/from the secondaries.
> 
> I don't understand the "silent" part. I mean - you do pass traffic thru
> them, what's the silence referring to?
> 
>> +Currently, we limit the support to PFs only, and up to two devices (sockets).
>> +
>> +Channels distribution
>> +=====================
>> +
>> +Distribute the channels between the different SD-devices to acheive local numa node performance on
> 
> Something's missing in this sentence, subject "we"?
> 
>> +multiple numas.
> 
> NUMA nodes
> 
>> +Each channel works against one specific mdev, creating all datapath queues against it. We distribute
> 
> The mix of channel and queue does not compute in this sentence for me.
> 
> Also mdev -> PF?
> 
>> +channels to mdevs in a round-robin policy.
>> +
>> +Example for 2 PFs and 6 channels:
>> ++-------+-------+
>> +| ch ix | PF ix |
> 
> ix? id or idx or index.
> 
>> ++-------+-------+
>> +|   0   |   0   |
>> +|   1   |   1   |
>> +|   2   |   0   |
>> +|   3   |   1   |
>> +|   4   |   0   |
>> +|   5   |   1   |
>> ++-------+-------+
>> +
>> +This round-robin distribution policy is preferred over another suggested intuitive distribution, in
>> +which we first distribute one half of the channels to PF0 and then the second half to PF1.
> 
> Preferred.. by whom? Just say that's the most broadly useful and therefore default config.
> 
>> +The reason we prefer round-robin is, it is less influenced by changes in the number of channels. The
>> +mapping between a channel index and a PF is fixed, no matter how many channels the user configures.
>> +As the channel stats are persistent to channels closure, changing the mapping every single time
> 
> to -> across
> channels -> channel or channel's or channel closures
> 
>> +would turn the accumulative stats less representing of the channel's history.
>> +
>> +This is acheived by using the correct core device instance (mdev) in each channel, instead of them
>> +all using the same instance under "priv->mdev".
>> +
>> +Steering
>> +========
>> +Secondary PFs are set to "silent" mode, meaning they are disconnected from the network.
>> +
>> +In RX, the steering tables belong to the primary PF only, and it is its role to distribute incoming
>> +traffic to other PFs, via advanced HW cross-vhca steering capabilities.
> 
> s/advanced HW//
> 
> You should cover how RSS looks - single table which functions exactly as
> it would for a 1-PF device? Two-tier setup?
> 
>> +In TX, the primary PF creates a new TX flow table, which is aliased by the secondaries, so they can
>> +go out to the network through it.
>> +
>> +In addition, we set default XPS configuration that, based on the cpu, selects an SQ belonging to the
>> +PF on the same node as the cpu.
>> +
>> +XPS default config example:
>> +
>> +NUMA node(s):          2
>> +NUMA node0 CPU(s):     0-11
>> +NUMA node1 CPU(s):     12-23
>> +
>> +PF0 on node0, PF1 on node1.
> 
> You didn't cover how users are supposed to discover the topology.
> netdev is linked to a single device in sysfs, which is how we get
> netdev <> NUMA node mapping today. What's the expected way to get
> the NUMA nodes here?

In this configuration, there is 1:N relation between netdev and numa 
nodes and 1:1 relation between queue and numa node.

It would help if get-queue API exposes numa node as a parameter.

> 
> And obviously this can't get merged until mlx5 exposes queue <> NAPI <>
> IRQ mapping via the netdev genl.
> 
> <snip>
> 
>> +Mutually exclusive features
>> +===========================
>> +
>> +The nature of socket direct, where different channels work with different PFs, conflicts with
>> +stateful features where the state is maintained in one of the PFs.
>> +For exmaple, in the TLS device-offload feature, special context objects are created per connection
>> +and maintained in the PF.  Transitioning between different RQs/SQs would break the feature. Hence,
>> +we disable this combination for now.
> 
> 
