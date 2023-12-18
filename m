Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F2D817DDD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 00:06:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A8C2408B3;
	Mon, 18 Dec 2023 23:06:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A8C2408B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702940814;
	bh=d1hReVUwJjofjawmxg4XuPIcvmZ4m4uoilwdhrJVWI0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T1sOIiaIKY/WFv4moQZYFLRZo4AdzyjxDz1KzLkMJm22Z/zL8UsMsl21LwvFuZEO2
	 1C9MuGaCqqPwNpJT4C5HndWTBB2E2v/d4q2e+I+jCAo8EtorcmQYDOPYcPxgq1rsis
	 pGSV7PbwlIoAJHaq7q/bGh9k3UYHzzEgqnGR7rvd/0ynYIk1/NvS3ADp4KVBOZZvSC
	 8ausOGUTmynGptr+v8NT9urpXUAEIAeoE/tcalMXAnW4dqy+2txZK6zrrKY7t4/IdX
	 rfJx1c6a/SnYu1wuQavbtMhhyIgkDQ/H3dqQHjUof7teJooneA9UzH/KMOal/Tcyoc
	 TsrGZxCqGVnug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P6qnXy-gWLTq; Mon, 18 Dec 2023 23:06:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2E274085E;
	Mon, 18 Dec 2023 23:06:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2E274085E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2ED2B1BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 23:06:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 05C5861397
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 23:06:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05C5861397
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UjZsPm8cFWJx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 23:06:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CF2D6138C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 23:06:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CF2D6138C
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2673121"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; 
   d="scan'208";a="2673121"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 15:06:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="17366926"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 15:06:44 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 15:06:44 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 15:06:44 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 15:06:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KBzt5bmz+AauvPmiWDgn77lY9vFcQtxOaeWkqL7KL/99kr4894BN5S5GhR3z1QylcrxJ//OzWznWWoMdC1dYF7N50/0G4QcWaLXuC3XOcTnDxd9ogw+dUnsqtIuEVLfGeETbzB12vQrenm9sXGZrp9k9OBFvKUsUcbw4Ii8MjgiNioWE/RtPgpsaOpzv20CSq8weACMab54Vu9cK6MI5c3NYV7RXF23qqCz1s10GsYdGHUFbggUtUHRjI2/ZsxEBNNTNTEnLgaDTlY6xFCtSES4ZzUDa+gf6Zg0NE0vp1s4dn776zg7rJyUxMH5coXWlKB/BMT1KZZTzG9CdVQxE3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RWAzucvsoI/mFvyUPoFlYINWvxEpu+t7dw4v3rzZC3A=;
 b=dnSScc0rnNVop06JknHiiYGWVzzJHPT0UMtziGf6XvPUlkg4JRLL/XbVFJfwM8fB07Db3HgOVRPKfhb3RBGzC1THsVz3srKj5D/tNnKxmU+y1tLxksv6sMCcvE6B4OJ42px360EFNlvBJKovkmfL2aokwPRUz7zH+NCjmtwo1up/7dQ0inXAz23nuGMuTjj2vRMFav0SLxSvCsGH2Ls/+ReX4gmk3JG1OL9LBD0jIsE1bjGWlWjv76Kg1Kt9sHtx53bEh9DWW4zGwP1oQA3NYPHpJ6y41VDAyZttyMp44cnQ1+pjgisQMC4zlGSLcD+1ffh1743G4zQgSHyMoyEw7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CH3PR11MB7770.namprd11.prod.outlook.com (2603:10b6:610:129::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Mon, 18 Dec
 2023 23:06:41 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 23:06:41 +0000
Message-ID: <3ddf5201-5434-edc3-129d-113c1f6ee332@intel.com>
Date: Mon, 18 Dec 2023 15:06:37 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Pawel Chmielewski <pawel.chmielewski@intel.com>, Michal Schmidt
 <mschmidt@redhat.com>
References: <20231102155149.2574209-1-pawel.chmielewski@intel.com>
 <CADEbmW03axMX30oiEG0iNLLiGYaTi6pqx9qdrLsR7DSC-x-fyw@mail.gmail.com>
 <ZXsyfFHcFnaqeWe+@baltimore>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <ZXsyfFHcFnaqeWe+@baltimore>
X-ClientProxiedBy: MW4PR04CA0115.namprd04.prod.outlook.com
 (2603:10b6:303:83::30) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CH3PR11MB7770:EE_
X-MS-Office365-Filtering-Correlation-Id: 69a8be64-f58a-43fc-4f22-08dc001dfecb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7FN8IKjNpqtNfPjaxe7ldKy2fvdwyW65o/IpU1se9kK2o1U0e7qT2TdsjfuWfTCDjeBjpGNjbzaF1aP/28gltuMQh1Ny1WWcCcOiZZaj4wSvlYY3jEhwx5xp3NV66DJ8/Cnex5MVHM4QlSftrE62YCz2Oim96cLhBON1dw9cIUoAXOTPd750gv8ob2fUXEwB//7+sb8Wm97v8d7VOIQ8xxx/FMknebA4WDy3NgJ4TDslerhK7oL5qgAj6TpnuE3YAZeLDoZYo5BsK+02GeS3sFRxyFQ6SwvI+KfPsWg46cBCxHxXvQ+0wqjKEfwmLKga+4I0HDEU58kxuOJ0oc9kYHSFH3PbFhAWuAzQXKuq/eiZjUznHD1lNgAdn3IcSfqXrSFA7UwlFC4pFwTfm+QwujINm2I4Ss2DmvIjNv6Onz4LOu9yySzfgScyPo5h+Xr8VrRhnXQxygyRM8tjVhb5CPTaG4+/dxubjKxTK0Ge9DBUZanchmkVT7suuPeCVTvJ9ublK6Jvia5B99HD+KTLtA9iWzQuI6xamcdlieApexLsY8pCLyJREOucg9K/mMj53NUNI3EdQTtSuH0m75ak6iEHV+zZ2meT142ooPLDlHrv+Ed7x2s+B8l88oe5IuJw9ZgP9YunOX2XC2fp0tRr4w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(26005)(82960400001)(36756003)(38100700002)(2906002)(41300700001)(31696002)(86362001)(31686004)(83380400001)(6666004)(4326008)(8676002)(8936002)(6486002)(2616005)(478600001)(110136005)(66476007)(316002)(54906003)(66556008)(66946007)(6506007)(53546011)(5660300002)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHltUFFWZGloTUd5SHlYc1BXTHkzSTRiejB5dU1TeFY4N0l3c0U2d0h1Vjg2?=
 =?utf-8?B?dnlGdHNxVE8zMnVqNmx6OW9UcytXMVFrbndrbVdwZjBnWFd2emV3eUREKzlW?=
 =?utf-8?B?SGg3L2R1RGVvS0JYc21tUk9MMDgwR3poWmVhR2hYMHoyYTBYamJZQkljaUVh?=
 =?utf-8?B?VXNpbkx6cHBrRlpjN1FNL2hUdXU4bUFHZzd2RjE0TUxuOHh1bU40U0hpVnM1?=
 =?utf-8?B?RU0xRDVnTHZib1dsVWRsVVpiNjdCRVUzU1hpQTlqRkcrcDBiOGlrOTNUMkNi?=
 =?utf-8?B?RDVpZTNFcE9oUTZZVElXbXdreGt2R09PVDZ2Z0lDd2RERkZoN2NGcXQ3bUtT?=
 =?utf-8?B?d3l0OUIyVEJQN3FlS0syU0doaFBtNC8wY1diNFVpa2RMNVFoOURXcnVVMHpH?=
 =?utf-8?B?d0c5K0huOE9LUjdFRTFkRVY2S3A1bGtVdEU1ZkpObkdiVEIyOWNpbWZzNlBF?=
 =?utf-8?B?MHpPVUtsOG5KMDRPeXVUUjdTRnp0cnZ5aW9PZHFVbXBmcWUrR215cFUwU0xP?=
 =?utf-8?B?OWoyMWo1NnFzZmNneDFVYUlENHRXc3hnRUhKT0JxcFlRSDRSTmdlTW8wbU1z?=
 =?utf-8?B?NGFvVDV2UWVaWnhJWU9SdEwwaENQVmpPVzhOM3pCVG5RQ3hwOUthVTUrVEtJ?=
 =?utf-8?B?SzBWRXBRMlBiYk5CMXdPNW5XNFZWN0F6K1JOME9pdllXazF2cWlRTFJXb3Ny?=
 =?utf-8?B?ZThIN3IzQUpsSjNSVUs3R09FZmdkQTQ3aW4xNGtwam8xNHMzbitrMERZS0tW?=
 =?utf-8?B?WkpZK3dyUHJDS1Jsd0NUeUEvUHMzQ01oQzZpbEVOZTJkQjZwaVN4QU5nUkI1?=
 =?utf-8?B?V1JYdUFJSG5XUnZHU3V0MitrdnNNY1ZXYlkxTUg5ejY3V0JUcmRiYVZuNEUy?=
 =?utf-8?B?bVA1U0s3MWNWN0x0ZjJVLzFtUkl3dDI5bytWMGNZMHZobjFybTBsUlZzcEpY?=
 =?utf-8?B?U3czb2xVNytlY3dENXgvb0hIeFhOUjJDUHBYckg0UDlCUmIxZUNHaCtzcjha?=
 =?utf-8?B?cytTejNzSytLRW9YK1hZT2lLTHJyRXN6WjJ2V2xDTVVtUHBTeG1USEcreXNZ?=
 =?utf-8?B?RGE3Z3RkQlYyMUtweGptbnBodWcyNHVENzEyNHFId3U1ZFFBYXVVVUhqWFdk?=
 =?utf-8?B?YmdUTXUzQ0tqcjllMlAvR2FJZHVLS2VxK3FEU0xtR1h5d2gwK0FiaHVaU0VT?=
 =?utf-8?B?aTR1QUQyL0c3Z0RSaE9zR1dKUm5ubHZ1cEJvRnEyRlJOSkYyaldVTTgwNTkz?=
 =?utf-8?B?bXloMDNMc1BmZXJzdVA2R2dOdGFTUmVKelBMNW1UV29JaHVSdG9IOHYxeVd3?=
 =?utf-8?B?S0xNTUM4UFZyNVhZemMvN3YvRGttSUpqSWtYV2NBUFRhaGdIN0lLSHhkUDFT?=
 =?utf-8?B?VmJJNUNvaWZjY2ZrMzFoM1dZOHVYOFV5OFBDaGoyZnlkTno3ZWM5a0RwUmZr?=
 =?utf-8?B?cEFXV0U0RGJKVEZvcGJUakc3WUp5Y0w1emVzWnZTOGhHNXBSM2NSZ2xUaFpQ?=
 =?utf-8?B?d3pmN0NXTS91R3dEOC9rcDZCdEhVWDlleWRXSTdiWmwvSHgxM1RlR3RFb0VR?=
 =?utf-8?B?ZW92YTBEZkdyNkp4UWp2VDZQalo3NU5wS25ZaW9nS2NDQ2pYQzVoZmJScE4x?=
 =?utf-8?B?NzVlRW91QUxnWlAyYnJKbGovNjU3R2VhWVpReG9jNUFkU0tmV2VCWlVaSE1I?=
 =?utf-8?B?anlxRjU5b01vUnBZUG1HNFh3WERpc2lxa1JBWFFWaDVoQXpCckNSZi9Tc3E2?=
 =?utf-8?B?MGpqeUlTNENmTk50Rm50VEhwK0FIbnVwUnhmZTZvR3JZQXlVem9YN3ZjVXJW?=
 =?utf-8?B?Mld3RmFlbHR6Wm9XZ3lFeWFELzFVQTllTW1uclkvR0xKd3RNMTJNRkR0bFBL?=
 =?utf-8?B?OEkxZnFnNHJXVU9hU3RZMGVCNnB2Q0dlK0JPME05QklGa3J5QmJVR0ZZQUlT?=
 =?utf-8?B?VE5TZUhZTGp1MVNNTHB1bUdlTU54WEdiblUwMzViczhxWXFYM0l0WXpVMzg0?=
 =?utf-8?B?bEg1Y0s2WEg3WGJGZmhJbnpuV2Z3alBkOGtjTzBWWitRWDdtRWhuUG0wZFo2?=
 =?utf-8?B?QWRiOGI0R0hxRTRqblNSMTJzdzdxelJlOGY0eGdqVGJlZ3crRWozUWZMK2Iv?=
 =?utf-8?B?SGV3ZHdiL2ZZUWVXMmh4TlVzVmlEUXpGeWt2L1lCNDRwbjRKcmVZQWdVZ0RU?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69a8be64-f58a-43fc-4f22-08dc001dfecb
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 23:06:41.0409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AHibsqDDYSm5CWnBDnHsIqehjne+7lKEFW3U2xqkupUlZ6H8lPbZadhXkTcnt3w1O/EFjiHF48i6zCfD1VUMOMWPShsos3rxg7v7uPmdLIU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7770
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702940806; x=1734476806;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4phDGFKHBjOv0Z+JQUJFYyExfDr9JbmFq/aRyI6RPFU=;
 b=JGF0JZTPZ26jN6Y/oGpidPI12eL+MPp4Fd5aKgvfw1eWc9SOKJ3wUYmo
 0JVjWgQ7anPg2i0HImJ+yD+HIbA16oTS7IrSVo1Oiz9WmFnRQxL6G7HNM
 utWCQxhqprsrnndfay7WJzDtx2XLwr3+ckIm8r9gRq6caY7iloLL5rhIt
 fXxXLIwsKvleqf/gqOKyarqPwd+KiPymnSYf8hhgpmHAGCCc38Yc8Pizf
 DdCLKtrlYjXVQ7uoLnMcsrdjKWf+mPN0QiVvERYNYBlMti8ODUdtFODfv
 LLNjm3TaLqCW2BbfoGReV3MDLMg919INTEyJfzvqicaWnhdTFgc+mNg3l
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JGF0JZTP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Reset VF on Tx MDD
 event
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, lukasz.czapnik@intel.com,
 intel-wired-lan@lists.osuosl.org, Liang-Min Wang <liang-min.wang@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMi8xNC8yMDIzIDg6NTEgQU0sIFBhd2VsIENobWllbGV3c2tpIHdyb3RlOgo+IE9uIFRo
dSwgRGVjIDE0LCAyMDIzIGF0IDA5OjM3OjMyQU0gKzAxMDAsIE1pY2hhbCBTY2htaWR0IHdyb3Rl
Ogo+PiBPbiBUaHUsIE5vdiAyLCAyMDIzIGF0IDQ6NTbigK9QTSBQYXdlbCBDaG1pZWxld3NraQo+
PiA8cGF3ZWwuY2htaWVsZXdza2lAaW50ZWwuY29tPiB3cm90ZToKPj4+IEZyb206IExpYW5nLU1p
biBXYW5nIDxsaWFuZy1taW4ud2FuZ0BpbnRlbC5jb20+CgouLi4KCj4+PiBXaGVuIE1hbGljaW91
cyBEcml2ZXIgRGV0ZWN0aW9uIGV2ZW50IG9jY3VycywgcGVyZm9ybSBncmFjZWZ1bCBWRiByZXNl
dAo+Pj4gdG8gcXVpY2tseSBicmluZyBWRiBiYWNrIHRvIG9wZXJhdGlvbmFsIHN0YXRlLiBBZGQg
YSBsb2cgbWVzc2FnZSB0bwo+Pj4gbm90aWZ5IGFib3V0IHRoZSBjYXVzZSBvZiB0aGUgcmVzZXQu
Cj4+Cj4+IFNvcnJ5IGZvciBicmluZ2luZyB0aGlzIHVwIHNvIGxhdGUsIGJ1dCBJIGhhdmUganVz
dCBub3cgcmVhbGl6ZWQgdGhpczoKPj4gV2Fzbid0IGZyZWV6aW5nIG9mIHRoZSBxdWV1ZSBvcmln
aW5hbGx5IHRoZSBpbnRlbmRlZCBiZWhhdmlvciwgYXMgYQo+PiBwZW5hbHR5IGZvciBiZWluZyBt
YWxpY2lvdXM/Cj4+IFNob3VsZG4ndCB0aGVzZSByZXNldHMgYXQgbGVhc3QgYmUgZ3VhcmRlZCBi
eSBJQ0VfRkxBR19NRERfQVVUT19SRVNFVF9WRj8KPj4KPj4gTWljaGFsCj4gCj4gSW4gc29tZSBj
YXNlcywgdGhlIE1ERCBjYW4gYmUgY2F1c2VkIGFsc28gYnkgYSByZWd1bGFyIHNvZnR3YXJlIGVy
cm9yCj4gKGxpa2UgdGhlIG9uZSBtZW50aW9uZWQgaW4gY29tbWl0IG1lc3NhZ2UpLCBhbmQgbm90
IHRoZSBhY3R1YWwgbWFsaWNpb3VzCj4gYWN0aW9uLiBUaGVyZSB3YXMgZGVjaXNpb24gdG8gY2hh
bmdlIHRoZSBkZWZhdWx0IGJlaGF2aW9yIHRvIGF2b2lkIGRlbmlhbAo+IG9mIHNlcnZpY2UuCgpN
aWNoYWwgYnJpbmdzIHVwIHNvbWUgdmFsaWQgcXVlc3Rpb25zLiBJJ2QgbGlrZSB0byBjbGFyaWZ5
IHRoZSAKZXhwZWN0YXRpb25zIGJldHdlZW4gaG93IHRoZSB0d28gc2hvdWxkIHdvcmsgdG9nZXRo
ZXIgYmVmb3JlIG1vdmluZyAKZm9yd2FyZCB3aXRoIHRoaXMuCgpUaGFua3MsClRvbnkKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
