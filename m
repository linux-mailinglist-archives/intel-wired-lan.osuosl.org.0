Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E996C5F1549
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Sep 2022 23:57:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 863CC40BE0;
	Fri, 30 Sep 2022 21:57:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 863CC40BE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664575068;
	bh=nhxxmTNTeeLWiNJhFRDeLxdRb8hYQBzDVxP9rqTC/js=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8VQq7ZoXyQPpDMPq6bgCSFMwznZbTfZbxeVBgtXUPISH+IR4Kjw5OazsymYWqQyFD
	 4vowtWnZSu6wfOIJwGrjA0Iw7Zx7GdeXBhG+G8htWuMSu7Qb6onutp3wyyUZgXPDK/
	 /YbZgeHSJNGprlV4J6lCJUda96BMPLYEOR/KCjkPCzuXy39yNZdW+XwTCOdcU7mV7L
	 gqyVtIbSreO9r8AKJXJ4dkAxXA3tm2LFfkdeZyt1vc1GsTzLaB8zCGoJ2HHE1oMNUV
	 8t4IU9IXYNlsOpWY45i94RSGqM8TzYDQI3cQnczeEvStThjSsbnFkssqAcRCJDNVRV
	 JeYVP0MAT4h6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h43UnmvdNofd; Fri, 30 Sep 2022 21:57:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8774A40BA4;
	Fri, 30 Sep 2022 21:57:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8774A40BA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE6DD1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 21:57:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F1DE41A30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 21:57:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F1DE41A30
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oEDO5wC2M57u for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Sep 2022 21:57:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A558419F5
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A558419F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 21:57:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="303207478"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="303207478"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 14:57:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="685438969"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="685438969"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 30 Sep 2022 14:57:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 14:57:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 14:57:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 30 Sep 2022 14:57:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 30 Sep 2022 14:57:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uhj4/BUS+rqbTf006vUz4xxqkL8gp4SSpV39EPh0CyCupV3+qkO4dVkpS+p7+ct+9QxFnT32/2DsYFyy1aIlm4Vyv/F8Tkz0Dudl0fXQxgzXcHAHsOCM99iRtMZqHSBDrAjKsl3i6kE6bzZ7aCbd8QMpcMIOU470HeVKIv1Fv5ygoABNgwYAtaOwk1rpIF8PvoeRO2ygVTei2eyu8SORMSTZu3IShlnlXYZKt9ytSD7SvqrqgcEl7FMd+DOVfTsNUDx7bo6UjF4z4FoLzN+nXGyWhuV2u035vn9eDm8VmDmkR3PCQYmGQQjblhOQ2BImZa+VBiTSWo4/03tu2fXUZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DrMkCufcesxjAeW8SpUrGPXO/2FmLRtf29+aFVmzEFA=;
 b=mfBGxBiNQgDMzszUgTpbSAp6vQNfSWf8Klw8qI8NBfkRu3+ZubATouB4562xfn6guGCry8UAVi+yTCmzn5tfhYV7PY6aHdmszzoK7ols3Kq/58e5xaFaKaA98j5KJK/wmfTunFpFg2uHWjq+KI178YiQ3rP5qBTPjem9Z/SfsprH4C8CFKeKh5/qGGJp0nhoJJIHktWJ4WSEciaNpflWAi2WUMX5ZUVE27Qxqa99xAOgqMI3XtMfIyus+D+c5JRRfq09ecJaqZ0uODVOQLlrZyK6A/TmygmQ9tVOHOMcybpOkQ4GYMUX6VzNNQshYWVlEJbQUctWKkyy3LO4dI75Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Fri, 30 Sep
 2022 21:57:37 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::e1bf:5cad:6e0e:cd0c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::e1bf:5cad:6e0e:cd0c%7]) with mapi id 15.20.5676.023; Fri, 30 Sep 2022
 21:57:37 +0000
Message-ID: <ac5c587f-2c6b-04c8-119e-24b4a02e1e92@intel.com>
Date: Fri, 30 Sep 2022 14:57:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>, Ira Weiny
 <ira.weiny@intel.com>
References: <20220919180949.388785-1-anirudh.venkataramanan@intel.com>
 <20220919180949.388785-2-anirudh.venkataramanan@intel.com>
 <YzYe9h8gbgmNDzK7@iweiny-desk3>
 <1cb2e6f8-28c3-d6f2-6bc0-b39fbabb9a67@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <1cb2e6f8-28c3-d6f2-6bc0-b39fbabb9a67@intel.com>
X-ClientProxiedBy: BYAPR21CA0020.namprd21.prod.outlook.com
 (2603:10b6:a03:114::30) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: b63fec79-d7cb-46d5-edea-08daa32ec9c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Mkaq1JEfJ4wDYRVwAi4OtTzpYVgBo5Ke/a836uMsZDwqPDal+RPi1soKmQb/FGZI/H8reUEy9dTa4e52N49L+QVSAInkIFoJsZY1VsBODb4lvN1qHoELGJy7Iv42ZQHusMr7QYPmdaPXxQkB7vMCVL12b8BOIleVpCGzaClz78emOmoMDc7G8azJCUA/PiqBN4JDlReHYTodw75ZftX7Dv7p0vvssuY9Rh3xCayHpfyNEmzByJkTxWJBOi6EFPPwIdH/G03ZdQucNx/J3Eqtg3qsEzbdEQQqn5hi94/CuQ8vVcAjFZvqphwJCuxzGiyIXKk0tVg/T0M49UXxy8f/otMnL7e7XYMB3IPXmbaoGxhMBDPBENqVcuMOjIkQNRjMVm9hwNSEmRzhl749FmGn1t+Rcund6y2m3YYT1h8+ZmcCeVJ0r9+NHHXjjCT8mVydyh2P4RhrhqE/1FrsLqydUYefRMX3HgwAQCsZaa8LtFwi+o8U3kqq+6Zx+3/5No6i0d8nRy14uuJ1Sm5lqHBQ+62qC/EXZuhR3AHcWHzdgwjzgqVGahyUuktrwEedQbdyqwoaGoVSEZRKx/+urGwLEfCtVzo/0RI9A5PQB0GmcZLuembKhq1S1WxPzoib2B+gfNBvYhBFzuWddiz4WWEax2hiDQpcKwYAjy+mVB1f87sMElTRVmu9fcBiikaKD5+GiqLrdpe4BbUWW3LTSd9Ah7wLFZyLik7xTpbDXRvoEsBo5r9ziPeoANQbJn8N1Qu22LlZAfQh/o4To8LGbJmUrsP9tbgiQGX4qMSrOdnvD+c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(366004)(346002)(396003)(451199015)(31686004)(66476007)(26005)(6512007)(2616005)(186003)(316002)(54906003)(36756003)(38100700002)(82960400001)(6506007)(558084003)(6486002)(53546011)(2906002)(4326008)(107886003)(6636002)(8936002)(110136005)(5660300002)(66556008)(478600001)(66946007)(8676002)(41300700001)(86362001)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGVOcVhuYzJjYjJVaUNvMUJkRGRFR29xdkZjeXpYU01hWDkyZENOTTZCOFU3?=
 =?utf-8?B?bEt3NW1aUG54NHJyVHNmbkpMN1YzaDRRZmR1MHcxV1RqTEh5NFJhOTlIbnRX?=
 =?utf-8?B?M2NUcGNCVUdxd1RMREdzcGJXUkFKOE1YWk1GcGxQMzhkZ3h5U2NnSkdEL2Jv?=
 =?utf-8?B?eFlIWGU3Wjd4Nm1QNHFPM1ZSY3AzRnI1WHJkUXZSV1RZeUhHMEVHNmZFbUQ2?=
 =?utf-8?B?MytUYjlhVlVqVURCRy9teU1uZ204SHRrWDZPVnpSWUVqL2tlSjg3TFhUcHFn?=
 =?utf-8?B?Wk14M0Y2UndLcVVjL2IzanAyeW41dVRDUlRSSktuZGptdWRXT0JzTGZQTHJM?=
 =?utf-8?B?djZCeCtiMWFNYVZ0OGYzcE1ZenBteHRuL3dBT1g5Q0xJMXF5ZDAxbjBHeEZk?=
 =?utf-8?B?YTZxc1lmanJqTXhnbmthT2ROckZJNWx3d2pobXdFODFON2lhaTlSeUhrRndi?=
 =?utf-8?B?N3UwQVJxbXVXdFRrbkp2aFlpVjkvNUwrQ2NnUEZINmlUZm10NGVwNVJmY0U0?=
 =?utf-8?B?dXV3MWRvNllTdk5rckxhTXRncTkyUm1OQzFRa1kwZUNyaWYwbjJJK0ZLdzFr?=
 =?utf-8?B?V0NjTXdDSFJadXVQRW1iSjlMS05vYk92YXlLZWI0UmFSRUtmdmtWQmRmS3Ro?=
 =?utf-8?B?Vm9yUUIvSSt0NXQ4L3lqTWxmK0RrcFc0Q0xEaUdwVms5M2FpSit5NGw4WVlH?=
 =?utf-8?B?SXlZMGhNTXlQSUVDZjNyV1E3SmtCL1BvRmxYalVmU0VBVitTSTRWZnVEcGhG?=
 =?utf-8?B?WGk2Q0dqcXhSb2lUa25SaWdnWW1Db1VBSFFObHIvVExCeFp2cGhZa01vbXVC?=
 =?utf-8?B?OXJVR0szK25LZk9rbVl6eiszT2orbGtJSDNybVlQR0hyRDFXSFIxZWpack1F?=
 =?utf-8?B?V29tbDJlS2FzR1lnZWhGcnVnUm5jMDhLd1M4ZENBd0xLYmQ2SXFjUGlBOVk4?=
 =?utf-8?B?VmZnNHVKdDE0RXFuOXFDTmpSd2s1bmM5Wnp2MjkrMUlmUFhhVXowYmFaNXlJ?=
 =?utf-8?B?Wm9neTkwV1d1VjdHdjRrMHZwa3hQNllYUStQR3RiZ1pNbitodTR1aW91Y0ZT?=
 =?utf-8?B?WFgrSUd4M1Jjc3dlYWFNMEl0QlFPU2FubTRYaEhyQlZaMFRBMGRrYm1MV3Y5?=
 =?utf-8?B?cnBzUHpQNFZUZWZ4L21kZDF2T0s5MEpqVkZnY2VlTDNwVVNJT1ZVMGdsbTVy?=
 =?utf-8?B?Q1hrODB2VUtnL1JvZWJ5OThZekFXVW1GQnR3cVRSQ1h4eit5RFJpU2N2d1Qx?=
 =?utf-8?B?NzBYR1NnckswbFpXaWJhL2c0UElNU1FDZjFVcE5WNCtNM1hwTzdJcW1xYnMr?=
 =?utf-8?B?WnQrdjdEU2dSanc3UDhnWUtPM05iS3ZiNGpjU3NOcU9qU2xlNnlUbFJLcVhT?=
 =?utf-8?B?ZlZxZjFxL2lhTE9HTmtVekJiR25LVGpFWUpjYkZ3Q1FTblNHNFFnM2hCWTVB?=
 =?utf-8?B?Uk01RGVSdzFrOGZ2TUNrSURGclNhKzNxTUNKQkRJYlphdmJJUDM4M2prNERS?=
 =?utf-8?B?OVZwR2RIWDZ5Nzgvb1c4UjhpUUxaTEgvUGNpQlRkRDNuRU5SUWFBdVdNa2RC?=
 =?utf-8?B?SjEySE4zRi9xaHZ0RUJpeXhZc3F6ZXlVSHl3MnoxVFZxdi9QMy9RbDZrTmpC?=
 =?utf-8?B?RDJsSys3WDdtb01OV0g2aG5XMEFnQzFSaXVObXBRKzM5bytML2k3d2lrb05Y?=
 =?utf-8?B?U3ZkUGNzWVhNcmppViswYWpNc1VNditadkQyKzY1REZ4dDlzK1dIUGNMVUgz?=
 =?utf-8?B?d01TL1hvRFBWKzlCdXA4WE1acHhTU2JhR0JhM2ZlZXpEZ2xlYmRwRzZucnp5?=
 =?utf-8?B?WndJYWZ6WGJwZC9qdjZra2tvWEpERzBqb3N2c2F6eXc1N09Kcy9TQlVmbmo3?=
 =?utf-8?B?TE95WXNZUm5ra1VqNTJwQ2x0cDJlL211dXNMQzhUR1lsUXVyMXIvYU9xTktp?=
 =?utf-8?B?NEZjcVlMVWQzRnJuTkZQODBZZVF4WkgyY1RrZElwUU1VNWljRnZzaStpbnNa?=
 =?utf-8?B?SE0xdVRwaGV6bTI3NElLUklsSTBqd3pLMWVNZ0VSTGFiYVhGVVdiczNPMjNq?=
 =?utf-8?B?NGVJL3QvbUNsNGhNTjBka0t2WUNrc2l3cVNnbXFNUTFMRC9URmVNYVNEM2JU?=
 =?utf-8?B?c0gxZVA5dG13eEY3NG5KZ0hBWGl2Nm54a1gvbTMxRFJXbkpLUGlDQytZY01U?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b63fec79-d7cb-46d5-edea-08daa32ec9c4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 21:57:37.7795 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CxYulqDjHVORuy73NGtZYi0nYx6yOqQj2z1VJS81VDXzkjsPLaxOGpPeKje8wbPcNWm2zKfdEHBrMbHRegC9Wke3TeCWSH8LhxoToUFBHGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664575061; x=1696111061;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i7Uvsggq6+zSY8DkZYSSXb4xF8/S8G+H4dYcXRc8ghI=;
 b=RmjYZgNiVKaai7IRvhKRB376Ag9X+JbN+27AY11FLlXcsrfcQCdKj8vV
 UWEY/GmVNfOpK/slPO0LGhBgx/CWzr0+0u1AEzvtx3qi1Ol6BfqQHUcxB
 /T2rU6J6LhI6X784D7ChkcwV1DUb1MywaiRT/EQ7LnjoVX5GqGEeBGLae
 g8AHOmdPiuxZXGBglrCWEA/ZwZp7XAp3B8ZhMUJvOyH2nWOXseJusjvt3
 SUDBAxHBQvQJCzt+6ZI/NLGPNn7VlCd4WsF5b31jXchtL/rhMfofOC06X
 dpYbFSp7hCnM7blzPXmhvI5ebD2hCbAfSIlSq2pDWmwxM9PECqN602YIP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RmjYZgNi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH net-next 2/2] e1000e: Remove
 unnecessary use of kmap_atomic()
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
Cc: "Fabio M . De Francesco" <fmdefrancesco@gmail.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/30/2022 11:20 AM, Anirudh Venkataramanan wrote:
> Tony, do you want me to send a v2? Or is making an inline edit to the 
> patch you've already applied to dev-tree less work for you?
> 
> I am okay either way. Just tell me which one makes life easier for you.

v2 would be great.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
