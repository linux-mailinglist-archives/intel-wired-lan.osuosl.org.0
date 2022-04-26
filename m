Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E509510A9A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Apr 2022 22:34:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A79060F97;
	Tue, 26 Apr 2022 20:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ei0nlsi8IJ5; Tue, 26 Apr 2022 20:34:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 316CB6111E;
	Tue, 26 Apr 2022 20:34:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C55291BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 20:34:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C06AC41946
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 20:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kw3-0rzIXOW1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Apr 2022 20:34:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 99FFF41940
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 20:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651005280; x=1682541280;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wVuSA2Km9tuZ3WLoM7SGG2gKBoPkgFIsWiqcC4ktVos=;
 b=LzBHUlbDyf4dItPwPU5MmDdalQ+vZCSzTCxMYadpwOnLGmf4fzEL1hQd
 e//x9USSGaRwKwfkqzlZVVTb+bZIf0qSak+NM5fbytPM/aJQmeONA2RF2
 LBvqRQaJJ3dDVssBRQfYAD89TdO8INjUIdQPS51bB8lMjpK9Puj2feCDs
 hHzASid26ONybxrVIbrWw9mXUbtQngNg74gJ7D0dh8KE3C6tY6sstn9Oi
 DfdudJ1wT5xE///iJEn4npenl18ahCHs7CVD0C0PiMf3UPX5dvM8QAGKu
 Xo/QQL1hRClvPEreLB4l0W+TbE52wdz8FzUxzTRx6n8I5YK5sHjXsjJZe Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="245637283"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="245637283"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 13:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="539028706"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 26 Apr 2022 13:34:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 26 Apr 2022 13:34:39 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 26 Apr 2022 13:34:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 26 Apr 2022 13:34:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 26 Apr 2022 13:34:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9SldGnnbcsHIgooVtjz5EyLNrDutn0TluWGX/DhRzGyeIkE/ObEdofI7KbPcW2pQq5mtNDVg35uTFQwciwGPXSOMYH0GbroNS/qeqyEm7XKOm9hrdmlAM5+C8TjbEpQJGO6FxOLYoD7sTjhSMlmUTbuKAa2gra+vyV+oeYRvbJ0LyC9szOYi6zi1UWePL9Ox+hj9JHudQ/7N+Qo26ZszguYROccyQaPKrAm4l1gZabhn5/zyKlAVCOY04lgt556I7H9LErftpUuGV6q3Jnpnwypo0auDTqTYQrMLzVfD2ZiqAcyWSJJG/UdQc7MlS/2kZ/BdXIbgbswvYOA0rekEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+lalkbxPyFpdrmZgB+RnhVbBaWeLic9s0M9CtPpuAAk=;
 b=bfnNdkGKsG2dVTh39LPQAUvgkibkisR85A5302HxpgKA68PF2xcUTAsLNvtT51hMHkAoJUSKmU6VXGEEeuAKb3DYe9dAWc1mgt5B+Z28kz4GAcGHg+l2gDsAiRtPMS1Jimw1kGZI52oZLwGO+N1VMhCskDhhwODxXj5Pd8y+z7D6vLatdPidcXzJwTxv9aAFfvtAF1pIeYzvzZ4kqE/fek4FfYD0PIl+FeZPSIUCribSTgNS3VKapgAwMy96bKxXjuqtdoNXbN2r38Av0srrJ/9UD3b/op0E7fQ8GchopMagXoJFoeYnHQfnQhiCZ0hDzFGRFUNHW9rNQFUAjHHHdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB6032.namprd11.prod.outlook.com (2603:10b6:510:1d3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Tue, 26 Apr
 2022 20:34:37 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5186.021; Tue, 26 Apr 2022
 20:34:37 +0000
Message-ID: <e7fa973e-b50e-7983-d897-9d8fa7001853@intel.com>
Date: Tue, 26 Apr 2022 13:34:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220422173905.23410-1-arkadiusz.kubalewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220422173905.23410-1-arkadiusz.kubalewski@intel.com>
X-ClientProxiedBy: SJ0PR03CA0241.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::6) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3f804131-d90a-4f6b-8a49-08da27c42e0f
X-MS-TrafficTypeDiagnostic: PH7PR11MB6032:EE_
X-Microsoft-Antispam-PRVS: <PH7PR11MB60324BDD9ACEE6A94D69CA0FC6FB9@PH7PR11MB6032.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e+zq/K2qeSPZG6m3zqnUh0fyx3WftFp86qzDmof1hKvoXHzNtxPUIyCqOKO3dXaZGUVQdLOnLoqxkHEx1ILRhJvSKnqdM96bsxt0+4if4zKG3bq7BXYlSqvV6JhQ4RWL5disLJMYuJw2z+sb9Dvgv+npT6HuHRrMrG0qfLnvboeW7ufyIsQZ6cK72A0rAmbt+d8FmrI+cxdwWOcvUdq2rXv0EO3O6Im5p87hyh4FEavzMkAxfAxy/puayIQcvh268mer9qAnSLh33goQdbbfnouswhhcDQro8xbCdOw14sYvCf3UDdUkcFJC51zlZsQqoZk/rJ2aUPrg9NDu2IUATq0lCOkUq4+BAc07a30Yn/ed0T1MnOyetp4xHy0Zk3X4ahkgcpgacLTEyMuAPUY+yHsdneskKFS6BxnZAlyWzGLo1Jcx69jy8Jc+nEYkxgjfXNkmxgwVRFijZk6gMe0ZpkWqgUm3Fh9jTKwPGb5ZRzQD/pWdbc66bJqmgth/VTHK0QhxjFV0B0uf66GEoMpSxZYTPhYxcy90HTYuihqrlHrOB5mx+vXwmt/scAQJCmIaVIDDOByf4L9WlDaitgVCnUB263i2BznO6X6kEVa4k2EcxEBAlwUyc1QZTrkZQuF7r3J5LtJ1lF9qbVH/5EWxLqpIeJAZQWccFKDQKAiBqSRpzqrzG7R1PYHbC5AY+EQcdFMgSkwCOy/ydss1nAJt/Bw1YeWVrtMYETmKnEib+eM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2616005)(31686004)(316002)(83380400001)(36756003)(82960400001)(38100700002)(8676002)(508600001)(2906002)(66476007)(86362001)(6506007)(31696002)(66556008)(66946007)(6486002)(8936002)(186003)(26005)(6666004)(53546011)(6512007)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFphdm96Q0xGa0xUZnhMTFVuajUyR1FSVTNBUVZvaU1lOHE0a0FMWm40Nks1?=
 =?utf-8?B?S3l1UnpmTnFwRHZHZkNrakpySVVQejdkZG0wU1AyamlEMHozOS9yb3R1WXJx?=
 =?utf-8?B?SzdWb3FCZGRyaTQ0QkZYNkdSZmh6SUZuRTBCQ2VFc2hVdTYxa0sxVzR6L1cw?=
 =?utf-8?B?WHdURlBlWlYwYVp1VVUxc3ZJVTlVcElNbzgyaFJYM0ZYZ3ZzZVJwT2Zyb0RJ?=
 =?utf-8?B?ZEtCOXkrM2RPbmMyTE1odjlRSWdNcWFOZHEwV2tudzdRY3A3R3JQejNtNTlX?=
 =?utf-8?B?VjlBRDlYdWtLTUFDbHU3NDVWaXhhdGM1anBXTzU1ekJWR0t6Rk1oM04wRDVQ?=
 =?utf-8?B?RlJWV1dsMW1XaWJvUE5ick9PbjRhNzFqeXlFRGx0cENRa2djWTF5V1ZXMkZU?=
 =?utf-8?B?eXg1Z2ppL2NlMjZzWklaS2xLVnN5TDFjTWhsYWZWMGpQc3M4TlNOS084S3o5?=
 =?utf-8?B?V3lPYisyZjNzVW9qOTZ2RDZBSG90bk9OcTUvUXBVdjlYQk5ld3NrOWUvK1pC?=
 =?utf-8?B?Y2VVOERrUUc0M1V2TkNLWnlrejg0OXI3bWtlRHpmTFl6c0JlU3FDbnR5aDBH?=
 =?utf-8?B?YkFsbVRBUEdScjBwOC9EQjhWKzZQaTlnSjhHUXoyUTlweVhGY1FHcE5rNzNF?=
 =?utf-8?B?YXJnL0NxREVhT2NMeHBUS1laUTd4VzBVdnlWZmE4dkVCOWVuRG1TVExleDFH?=
 =?utf-8?B?VWRxOWpnTzRhR2d1dGJWb3VURlY1NGFkdks1blU5NE9IVDJCMEdKZ0tkZzR4?=
 =?utf-8?B?RlNDUGJJNzZLTllBRkZ1Q1ZyZndMeFFpeFFManhKem5KQ2pMTldoaW11Q0Yy?=
 =?utf-8?B?Snc2Yng3WnFUV2huRHBmTHRWSGt3TGZ0aDU3U09xN3YyblhxVS9GRGo3T2xi?=
 =?utf-8?B?UE1LdXZnY2hLSDNNdkRRWnViUENsMnBySmtWWHUwbVNnTHBuU1pWYWdYMGk4?=
 =?utf-8?B?SkxHQmNKWHNpS2g5MW1VbHQ3K0tpdU9SL1Qza1RMbk9aZW1FRXJTd3ZpTVQ0?=
 =?utf-8?B?c3I0TFZwT3pIL3BCQUMvZE85bkFGeXl1dmsyWTd4b0ZKeWhNVXpoeEo0NTl2?=
 =?utf-8?B?cXVPTXJsVWttT2E1KzdtTXZTQVV5czJWS1ZFc2hjeU1sR1hncy82RXFZMmlr?=
 =?utf-8?B?Um5xTTg1V0xmUnFMSTFHZmFCNzcyNzJOYXNIVXd4VHp5SFlPdVRlMFV1eVBG?=
 =?utf-8?B?SlJ5MFhoeVFOQkw5bDlNSTA4WTVXLzlGNDhneUJSUStGMWlpbjJSSTExSit6?=
 =?utf-8?B?TnVVMm5Ya1l4eW10SmUrNGpxaE1nMW1TNExhN29wbmNWYW9EaksrdVBEbVJQ?=
 =?utf-8?B?RWFpa0NsN0VDYnBvYjAxRGd1UXhOcDI1alY4N0taMTZFU3J5dWZpVjVzcmhx?=
 =?utf-8?B?NmRKb1I3VnVQSU1WMHcrZy9nd3FKbG91R0RYMFVyaDhBeU1mU2NuektCZitM?=
 =?utf-8?B?L2FWV3dlQTE0aEhsVEhwNldsNUZXWVRjZlk0ZERkVzh1VloxQ0ZoSW9RVExl?=
 =?utf-8?B?TXZyK3U1am5SekdRUzhyWjljS2pLelJSdVZLRDl4U3RJN0oyYXBzR3BvSE4x?=
 =?utf-8?B?OXBhaEhnU2VDam1qLzcyNzBJSlA5WXBVejVDbm5NdnVnbWh2d2YrUVphaHpp?=
 =?utf-8?B?THFwdmVrQlFDVnk3K0FMWm9UTkh2aWEyUDU3VTNvNHBneENPdGVIaytaQ0FQ?=
 =?utf-8?B?SFJndW0xWEFNRmxLM2paYkkzSWRtbi9FNXNHNzJFSWw5bVo4aUdMQXA4SGtE?=
 =?utf-8?B?Q0F5QXB3Z2NOY3VQL2VHSUgzQlJWdXRWNkNhcUdsOTJTNUZBbmE4cEF3clZo?=
 =?utf-8?B?Z2wvMTF1ZWtzaUJFbDNKR3VnbE52cm80ZllNU0tmK2RYcmx2c05ackFTR1My?=
 =?utf-8?B?VzMyUS9JTHBwT1BlaVpKRzJwVlRmb2F3KzNSYzhRb3BLSWJ2ZWllTTBHODgy?=
 =?utf-8?B?Q3VrQlo4UFYrZHlkUzdGSW5hLzdXMkJHY2pWaGhFTVdJQ0pUdGRjc1BWWXJk?=
 =?utf-8?B?UzRoeVdiNVpuT3dEUEE4bFZFZ1NFZ3VkOW5SU1ZvSExVVlh0cExuQ01wNDRz?=
 =?utf-8?B?N3ZsOUxROVZjRzI3Wk9aWE41ZkVnZ3ZNelpMWlh6MktVZmFBazBOdVJWSDVG?=
 =?utf-8?B?Q2JuVDZQZjJQWDVpcTdjd3dlL1AwSkxGTWpQU1ZJVzAwcEVVWnF2eVF0cWhL?=
 =?utf-8?B?eHZ4WXVBUjczUjBaVWxuSFIrVHpqVlE0VFE3YTZmb1d0RHdNYzdpV3Q0aG5j?=
 =?utf-8?B?QkNZaUpWUlE3czNxNjRMODVsclY4cGc2MUlYNjRSS2NYV1BCQWtlQmJES2JM?=
 =?utf-8?B?ZEpoNFlqb0NLLytWcS9nT1JEVEFiS3RNNEZaeVpkaHF0RE14SDV0U3FKNzcv?=
 =?utf-8?Q?EX/3y+kNqSQdCRy4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f804131-d90a-4f6b-8a49-08da27c42e0f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2022 20:34:36.9627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zZH0qPvMhtgf9oTGelm8U65oxP5Xpeoqr1xt6MT91aO27DINPrXlfzUO8kH3/RC43k3FTsi2wLHZ3JhuWdOI20DrcSCyddpVRgjvQ12wFO0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6032
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix crash when writing
 timestamp on rx rings
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 4/22/2022 10:39 AM, Arkadiusz Kubalewski wrote:
> Do not allow to write timestamps on RX rings if PF is being configured.
> When PF is being configured RX rings can be freed or rebuilt. If at the same
> time timestamps are updated, the kernel will crash by dereferencing null RX
> ring pointer.
>
> PID: 1449   TASK: ff187d28ed658040  CPU: 34  COMMAND: "ice-ptp-0000:51"
>   #0 [ff1966a94a713bb0] machine_kexec at ffffffff9d05a0be
>   #1 [ff1966a94a713c08] __crash_kexec at ffffffff9d192e9d
>   #2 [ff1966a94a713cd0] crash_kexec at ffffffff9d1941bd
>   #3 [ff1966a94a713ce8] oops_end at ffffffff9d01bd54
>   #4 [ff1966a94a713d08] no_context at ffffffff9d06bda4
>   #5 [ff1966a94a713d60] __bad_area_nosemaphore at ffffffff9d06c10c
>   #6 [ff1966a94a713da8] do_page_fault at ffffffff9d06cae4
>   #7 [ff1966a94a713de0] page_fault at ffffffff9da0107e
>      [exception RIP: ice_ptp_update_cached_phctime+91]
>      RIP: ffffffffc076db8b  RSP: ff1966a94a713e98  RFLAGS: 00010246
>      RAX: 16e3db9c6b7ccae4  RBX: ff187d269dd3c180  RCX: ff187d269cd4d018
>      RDX: 0000000000000000  RSI: 0000000000000000  RDI: 0000000000000000
>      RBP: ff187d269cfcc644   R8: ff187d339b9641b0   R9: 0000000000000000
>      R10: 0000000000000002  R11: 0000000000000000  R12: ff187d269cfcc648
>      R13: ffffffff9f128784  R14: ffffffff9d101b70  R15: ff187d269cfcc640
>      ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
>   #8 [ff1966a94a713ea0] ice_ptp_periodic_work at ffffffffc076dbef [ice]
>   #9 [ff1966a94a713ee0] kthread_worker_fn at ffffffff9d101c1b
>   #10 [ff1966a94a713f10] kthread at ffffffff9d101b4d
>   #11 [ff1966a94a713f50] ret_from_fork at ffffffff9da0023f
>
> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---

This doesn't apply to net-queue.

Thanks,

Tony

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
