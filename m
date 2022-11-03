Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9C0618742
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 19:16:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FD0281EE4;
	Thu,  3 Nov 2022 18:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FD0281EE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667499377;
	bh=Z3++0cd1hLxPAQwDPRsj5OEXgNQnJEv2w3moBKVz3DA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=17ps3+bDV37BmjMDw8GXBoIvYVdApZggp40xOTmIE3cLAehzYk14CD2E7hX6zPkkT
	 lelDJSfhI/yh7Tw8nZtCzZw5r4HX40rvdVIL0Fef5XJjVoDpA+JLmOA3sEPpswAOU2
	 03+YPaT6xlZQU+ECE66fhhVL7eB0JXZ1dvbD6rFIOYDvwaygPZR1XjRmQT4SqpApTY
	 tolXIBz0qmIzou0+X9ijqDHac1+boz4CMD9sSX0FSRKKN0Qi8E8QBK9TX/fzfU3KaZ
	 jOrlitOclWFh4plK9SRO5lor5VkhyVteb2xQ4EaRHeKQsaDXDRBbc1qTuyIHyYyUTH
	 051+36+hIs8Cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jq5Hfg_x3T4S; Thu,  3 Nov 2022 18:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3592B81ED1;
	Thu,  3 Nov 2022 18:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3592B81ED1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 639151BF3DE
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 18:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 468794182F
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 18:16:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 468794182F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TeBnZWhlptcB for <intel-wired-lan@osuosl.org>;
 Thu,  3 Nov 2022 18:16:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3006141762
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3006141762
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 18:16:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="310883390"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="310883390"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 11:16:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="698334177"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="698334177"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 03 Nov 2022 11:16:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 11:16:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 11:16:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 11:16:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 11:16:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f1Vy7jFWQKjtjKFu08mfQQCp4if1CujgYEA9LhWgcFmc3g2bP+atzdoG3Pd9Eo/Egvsck85npbsalXLN2zIW15L8s3O8DyAssRJYIAaFnUwP3UEXOqeuhDNbZg/pKy3iX3h6ej5nEMaL6p9SUma44lNRxRUizXjPj4Jd3EWr4UG107orbMyihT5H0y9TJ/pI39p3wlVFgvygb26KR6B+HR9cElzvonuiMlxd+2KviWuIi+UYw2pqxxMonVb3akxrAp5aFNAHqqZX1mdsx70fRfmiMR6NAlzx+h2EBxgmLVnYN7hgjUKAfwa2IGMxS7FgdbaWi3CegVQn7ZxwvEobHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QSng7HyRTMVG3n0nv/1PhtZKSvy9FWyWgzI3bJ71FJE=;
 b=IlU+GYAD5N9pOCOxHMT+jIiM8AwjVFhtmbFOpZpjAMViOSZkoUYJaIT9hA0GjJU9pyx3pBUXs0C+KExNVaT3HmmVRmVEm0e/bmKIy6m76LQpQokyZIJQc9M1mySXIrPpciypxEf4PqotLbxgnnt+Q3exC3+CvapIcqkfKNFRHtSWBX8kFybpO2iVI7jG3SjeFStQb4eooVNvNxmF2esC23r5Z0iwllbv6SucKaw5+0pZjfcMwRSKqxq5OG1Y+Gfuyze+oDY/RSGP9QeJ+H0rdFk6/p2pIZb9UHJPzKhRYXxYyewzYK9OMSDMQqLhPE9Ox1dMRi6f6JuBWaKajrr/UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB6394.namprd11.prod.outlook.com (2603:10b6:208:3ad::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 18:16:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 18:16:06 +0000
Message-ID: <c3fd89e4-b87f-eee8-9c7e-f3264f01f8b3@intel.com>
Date: Thu, 3 Nov 2022 11:15:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <20221025140307.2330-1-muhammad.husaini.zulkifli@intel.com>
 <109b3730-7936-d7ed-1693-84c65c92f2d0@intel.com>
 <SJ1PR11MB6180AA9E5B4C32DF523E002EB8389@SJ1PR11MB6180.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <SJ1PR11MB6180AA9E5B4C32DF523E002EB8389@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR06CA0057.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::34) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB6394:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a511f2a-7500-43bb-a6e5-08dabdc7798c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pb3HlxD1rqR4K3eEyzmFfMTwrspZXkOPe1SJoFjcDJDobBKQB87gCgf72dmI+0Y8WOc5Zvsmnvg8mEFDQXPkiauoPo8CC88l1zxaOwynjLg+AjQJ2A0zpTgQOFzY/0ALfFfBL8fB4WBmJQmSb9t0wYubvNzSqJ7LswwJFpUYyLJg9epIf2wS+/nliTt2OzA3XkWCxU6cafUx2oe5A4YX/H7YmIlnp3duvjLmGnrp3vEAi8kIxGzQ86aZ9G+/kDg6MqBNL4Sc2D3GDhllnSI/mFU1ziT+rMnUUhah4gXWIqJh4Escf9JpGVB3UVXTpl/Sk8KvH8ZkSYLJpDriL8Z2vSkb9auLIvI9uflam5d+sQq24u/+1GQQbZ76H7Oryf18r0BGW2eYEfk9Qd6WjIu4j7HXU8iJfLhO9zxW6S7G9ACGCqxMdkGek2W4aKgxaUPYcfpYHAOR3YWC0mwtLzxZ4L0K63X5LLrdN6PWczcuGG4/zFmkH5cUcH/laLGBqDbxrbswZH1+Ony1nbMaTF6fiFAzf4AOtuojbaiGLaS4qgffRp5gwij//zjlHf2vD0b08jx5dKVkTo9+7+3W4J+WalMs+swFc5iYuOPAW8R6ffRx2AlTFJ9LQa2cvrxbHgVMy12xJ+mvfQTaGR/WBE3N90AYue8UP1OMdFcWZT2qa8tg/7qEqvFT3tRXUPZNZaw0/ctgerECLin6dmiob9D2zOCpg3iHVAkGJojVtwuEWJjujMwPOXgBMBnGIPIiF8bKzWJufxKTq5xa8g9GspFed2WtxD9vl27QP4z8HnCocqc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(39860400002)(366004)(376002)(451199015)(186003)(6486002)(83380400001)(2906002)(66556008)(6506007)(66476007)(4326008)(5660300002)(8676002)(66946007)(478600001)(53546011)(38100700002)(31696002)(86362001)(82960400001)(8936002)(36756003)(6512007)(316002)(107886003)(110136005)(54906003)(6666004)(2616005)(31686004)(41300700001)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VC9LRFA1cmhKaHpPcFpwUnlIOFN1NGFMaTV0WURTM1NvSkZHZUEvaW1CcmZx?=
 =?utf-8?B?L3kxNDB6YVNjd01OdmtYZjFWWllnUzVPSWU0VjJvTS9VbkF2cEtwVnRTNko3?=
 =?utf-8?B?Q1VHdUhhRFI2Zlo2cWRnYlFkc1E0enpPNVVhejNlZEl4cllrYU9kTXZhK2Yz?=
 =?utf-8?B?UDM2RkZqaER0TUpqNWJHODR3TzFhZTZaanVYQkVYeGtFeWtpOHZBZERyVm9C?=
 =?utf-8?B?RWNMNzhydENKY3pkeTA4TjY2UHRYUlpLcmRia0xYdmxnc2pXWk9yeU8wOTFD?=
 =?utf-8?B?Q3pVY1pWWGhwVzI2Ync5cXJqR08za3doUUhKeXlmV1VkaHB2RExYMFA3dVVy?=
 =?utf-8?B?YmxDSStMS0g4MTJBZ1hnM1hrS3ZrWkRUVGxtbFV4TzFKdWg0TUtHUUZYRzgy?=
 =?utf-8?B?Tnpyb3lOUWwyalF4K2ZkRUVCRUwyTEQ3MVRsMDh5SGF4TlRna2Z3NmpHZzRB?=
 =?utf-8?B?ZEdSanBMdHBkYlRkaTNLY2FGRVByYTN3YVBBc0FPcVVLaDQ5OXdGbUx5bnhD?=
 =?utf-8?B?UjRJOGVkTTRMMytyN2ZMNGh0TDlxS2NLTDAwMDNaQXVDM0NFYk9lQ3pLd21W?=
 =?utf-8?B?Tmw3dmdLbHFNWDhuenpROXg5STFIeFNUNktXN0ZYZDNYTlc0Z2lOZDVXaHdP?=
 =?utf-8?B?UjlCVGdCMDRsbVkxMFFYV0dXdmJCQnZNWG1oRlcyU3dKZGgxSEk5SFlqbWs3?=
 =?utf-8?B?MDRacWJjcDRTY01oTHQ3d2VsUVdvK0xSMjVTa2F5VldZKzhzODFBVWNWWHJ4?=
 =?utf-8?B?S3JwcVFXRVdtQ3RPcU1tall5VGhmWHpDQUpnNExleFI4MWJ2SHdWY1hWTWZS?=
 =?utf-8?B?UUhpNmlPMkNIYnF0cjl3em9zT052VHZQa21aeE04U1NiN21wRGhrQzZxREFh?=
 =?utf-8?B?TGhxeVM2MFpJS0JYYkx2NSt1S0hQbGxveXpTKzhJZnRkR0RRRVkvSUx2RE9k?=
 =?utf-8?B?WXR4aVBmcDhBTkJhbHVYSU5wTklxa1VhajdNVk1ZaDFPTU9UVmlVT0pkR25E?=
 =?utf-8?B?RGoxSGFOQU5yb1piR21XMTcwZys3NnhCaW5JQXJxOHA4N1hWZVhHdHdWeHFq?=
 =?utf-8?B?cklUZVZ3d25BNE1saTZXQ1FMRDlEVjlVWFFldmQ4UUtFYUpBOUVrRmpsZzRJ?=
 =?utf-8?B?MG1MUXNzdDFSQ1Voa1NKRGU4T1BGSy9USWs1MjZyYUhod2lRcWtTbTlmdHRn?=
 =?utf-8?B?cW90MmxRMDg3alAvd04vUWJXODg3aUFUdTZQa2Y1QWdYTW9zN2FWK21wdmpD?=
 =?utf-8?B?bFFpVEVjNkZTK2pNSG9yTFhUdlNTNVl1Y1NFSENuTzcraHMxU0x0RjNxSFow?=
 =?utf-8?B?dGpPbEJ3R3psMlJ3L3l1V1hkMHlwemZKbXU2QjJRVzVnZmV1blRIMmhuaWJx?=
 =?utf-8?B?QkhVcUJzeE1NdnM2SXd2N1Q5dm43a1FpQkkzaFd3MEhRdi9aVnZCMGh2bmhB?=
 =?utf-8?B?V1lKY2N6cTFXWUdKNEMvSGdqQmZGNkJnT2hhTSsvZEhXQXpRRGlRMlRkNFBu?=
 =?utf-8?B?VGVkSXpGV3l3M3VuZ3NaTFFYNmdremh6dk9leXMrYWtzOEdhMW9uRE5JVUhw?=
 =?utf-8?B?SzE0dGN4bkErYitDbEVqVm5JV1NLNUpybnZaM1FpSUF3TnRseHJTSSt1ckZk?=
 =?utf-8?B?eXlmWXJ0a0laZSt5eEdQVFhETzlMUUF1VC9LbXdKQ1pQNWJteUVzeTVuMWNy?=
 =?utf-8?B?YzJVRHFIREV0NHREaGZBVk14a1RVQkQ2L2RBTnk0aHM5eGpZbytxT2p3cEk4?=
 =?utf-8?B?VmMyOWs0aGFBYXBGTHk0MmZiNUFzWEh6V0RaT0ZrZGZkQVUzM1NzcFliM3pF?=
 =?utf-8?B?VUdvcDF6L1JDYTJNclNpd1Fpc2I3WFF1WVZQYVk1SU5sdUpxMjhiNWtzRjRw?=
 =?utf-8?B?VXJWem5FNlFva01oSU5EdkdBc1FzQzRHUzRweHRueXB2aFJkeTJicHpDbjA5?=
 =?utf-8?B?TUN6WjI0ZVdpNGhzQU9WNnROKzA4eFM3M2ZhK3VXaWtzYThWZjRXTERwcVR5?=
 =?utf-8?B?aGpwWVRBYXFZNUdFVWF0SWNLeFY0TGVNSVYwNnYvamM4ZXFpeXZZcTBkWGNT?=
 =?utf-8?B?NUx0V1lWZHRiTDZMNllLQ0lMRDVpZ3pJSHlvWTJGc3R0NXd4dEE3RWk2NVZa?=
 =?utf-8?B?bWR2MDFBZWVlR0twZThqRlZqUWNja3RGUnI4SUVxYjZXaE53RTd0SzF4M3h2?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a511f2a-7500-43bb-a6e5-08dabdc7798c
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 18:16:06.4873 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gqIjmD/FG2z6/fzF9ERHdmpYCg579E8tGqbk9Q84FyWI777I6MwZOK21BEx7RTDn0ttv7Tkw1inxBeMoPpAtoF7Vako4qQmLEwAInmjS8iY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6394
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667499370; x=1699035370;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sVl8m/8BPbXI/eOLc20TrQr88cy1pAoNwVX5EMoyIaY=;
 b=d2N8mT2SQRpZ7Vg/rF28Cxd936mkKfBkjRhs/yWbMp+f0SFo/KV9Q+gK
 7KeL8Uprn9EW6GA3vfJZ6FLOIXefgsO+dwsykjJamOEOn3t2Jo+LhF9Ui
 Wck1W5GQniHJ6+U+RYhIMKAuo0aOctVcRpOuNIEN1BTwD4x1lb+fKzgsR
 mptpMUP7Xlj+nF86GS8LTK6k8osW0+vZIm/Lii77029iKa/v02LXKRLFq
 /ggNXr2/FoLgjrg8uunqulMnIly6o00EjIXkhv/h2Dhv8dcVs8Te2jFik
 IWINSNH1s4LLY1G3d/4HcP/ny1kl08mgIyTv5d6Rtd0kghxnW58wI6Gvp
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d2N8mT2S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by
 using first flag bit
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Chilakala,
 Mallikarjuna" <mallikarjuna.chilakala@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/2/2022 6:13 PM, Zulkifli, Muhammad Husaini wrote:
>> -----Original Message-----
>> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
>> Sent: Thursday, 3 November, 2022 5:34 AM
>> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
>> intel-wired-lan@osuosl.org
>> Cc: pmenzel@molgen.mpg.de; Chilakala, Mallikarjuna
>> <mallikarjuna.chilakala@intel.com>
>> Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by
>> using first flag bit
>>
>>
>>
>> On 10/25/2022 7:03 AM, Muhammad Husaini Zulkifli wrote:
>>> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>>>
>>> The I225 hardware has a limitation that packets can only be scheduled
>>> in the [0, cycle-time] interval. So, scheduling a packet to the start
>>> of the next cycle doesn't usually work.
>>>
>>> To overcome this, we use the Transmit Descriptor first flag to
>>> indicates that a packet should be the first packet (from a queue) in a
>>> cycle according to the section 7.5.2.9.3.4 The First Packet on Each
>>> QBV Cycle in Intel Discrete I225/6 User Manual.
>>>
>>> But this only works if there was any packet from that queue during the
>>> current cycle, to avoid this issue, we issue an empty packet if that's
>>> not the case. Also require one more descriptor to be available, to
>>> take into account the empty packet that might be issued.
>>
>> <snip>
> 
> Are you expecting me to cut the test result here?

Nothing needed here, I'm just denoting that I've cut some of the text 
out to trim the response.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
