Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD8D7A8E6D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 23:28:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EC17613A6;
	Wed, 20 Sep 2023 21:28:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EC17613A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695245293;
	bh=ABh34uR1LxN66kktKM9jXV/AhEDqew3q7RMXebQ/CMw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jv3HQdA3CQzoGoqzZ5u23eiFrDleLp9ku5XiulbnFIhJqGgxz6/zwBHQVs6qAipYv
	 zkmtYBiTuuUMJsbTYlHBoLaYfn5Ipmoh+0WSp+QdX16QhjY2wllXCSUtOf7psNI+k8
	 W0Fderp2uoLRrTDfxCwKKp5u+DF+MXGAHnBfIPmV4MA/OhfNQmn2vvhNRpKPM3RYy1
	 hXcv382yx9rgI72ky5YsdV+WhWKsqV9TYAE619uAmbPFJye30Pydat0JIAMwqQczpA
	 YyLVgsUiGdvRP+MCkfuzhsJa4kYE53PbvjoY8oYgJSZoXIKzH1GPjAHkqXCW9LnSgW
	 HwYdqelB/iNKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VfUQvJBjwsEL; Wed, 20 Sep 2023 21:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E253E61355;
	Wed, 20 Sep 2023 21:28:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E253E61355
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4D8C1BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 21:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88D9540153
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 21:28:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88D9540153
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZAjVrjPeUHrg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 21:28:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60F1F40133
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 21:28:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60F1F40133
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="360593588"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="360593588"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 14:28:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="740374283"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="740374283"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 14:28:05 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 14:28:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 14:28:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 14:28:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=guXAjepxAlljh66Sya+QGZdjoC0eNEmdu+e3EGxX+QLRwzhQh5fhjBtHtW7WnI6BChiUgBb3hnmRb5p5NlTAyrC5cz9gn65zVk5+ByUcqalxDfsJXX/7iZdgOOhnNWyOlDX5uW3NbWdRYttuAhdf5dSv4+x2ZXPVYw2SNJXgFTrdnCEMsGUk0ZhsCnnQtJVwWLAryFHGAeRQnZyvAJhJux8hK3ovEYEaLLn/UyWNzsUsmUzyjQXCEJXRyE8NBPphv6qq4VVpg964TY8Zmfuin/xcFrqAR2FL10v4sqjV5yjfGX0gIpPpkdAnStxLzUWuHqD2SPTvkKmIm5Kqf0dKIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4PDxXZ5SPPvEt2WBGfwOfjRaqOf3t+IlKfE0ooZx5dw=;
 b=W3psZsW8zduC0wh/hsaGnrVnRuLXp4VL3XU/XkMBta2N3+Zde5uBGySqQUumOypXU/0STuf2jVkdXbiK+rsn8g9R5fAIJgzhnx9c4XzeS9v7+BWl0yRDzgfoQpZeyt00CAMLXoSAP6PzD8assQIZ93QJ9TCOXqGhaGszP6kbDucYx4kdhXjiHQWc4fK2zX0sHtkkf2ShvzZbaW9YXANshCYrQKqCOzJE0vW+iKU1PjdX0c5KaMU6e3PFFgbVsqxaXXfpM19Tu2FcDUsoHvc/EoEYWYJBEJ2rD+NsBa0gvGBqGimLPq+grL3nC1RO9H4e4hu0deM+DUb5LRViOeX5MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA0PR11MB7186.namprd11.prod.outlook.com (2603:10b6:208:442::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Wed, 20 Sep
 2023 21:27:52 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%4]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 21:27:52 +0000
Message-ID: <0d9de75d-8ef2-bbb1-761c-9d511e72259f@intel.com>
Date: Wed, 20 Sep 2023 14:27:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20230919233435.518620-1-jacob.e.keller@intel.com>
 <20230919233435.518620-3-jacob.e.keller@intel.com>
 <3299d418-9f11-da7c-2dce-f23fef67eee2@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <3299d418-9f11-da7c-2dce-f23fef67eee2@intel.com>
X-ClientProxiedBy: MW4PR03CA0282.namprd03.prod.outlook.com
 (2603:10b6:303:b5::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA0PR11MB7186:EE_
X-MS-Office365-Filtering-Correlation-Id: 7888ed0f-aa07-4afc-19f9-08dbba207229
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2RdmRfEQ5ONtKHYxOaNeQjhGo6pjCW6qJK55j1xPWgUpni+2elOfBX2RvO+57bbjngkURRFPH6B0jcjEw3wACF2owoBtWnsP9q9Z45rTOPNuFES19SuEecuZ1JQ1tBIHpBOTzaiLMZ8+5MHlzXZ+qhkpayPfdri0qdqayS1afQaD4LJDx35NqLAgKZKDMendaMf0Wq5oxr9+Oh0Dhwl2jdcEnG46t2yNZru0xv/MebW/V2ioTrB/4AS7hk+7MDUAWguUNuzSzyMFEbJGe575rpGxI5zkyPN/65kUV+nvamTO5jOxVI7z/VJDY20hN1NIf7jwtpyO5vM1XejwWuoHo8QaRv3JZOCojsg3c8SMYHeEhy5k4UQYHg8ChY5am13rUJjkitrle/+ielXGiRWoDJBA47er1vMRKzMHkzr2hKaCYF88CL99Li6XK0Q6ln/SWz1yEqN+cLtQJ9imHTbhU57rYqYee1XGTGwPjbEMEJR1AfhPVRxnG5481F0P/U9yZS5KOiPDYIaFkFUBWKM9oSUgbKL//Je3pHky90ES0k+0SCELpOHb55DMJuMZobT9Dg9uNEjO2Qcl0HG04jLsItDOjhb2uw+jHle+pKhPZz2pGaeN9i1BuM1rqaCju1wvoH1P7BR7Sr8eB1HGwIY5tg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(396003)(136003)(1800799009)(451199024)(186009)(31686004)(6506007)(6486002)(53546011)(36756003)(38100700002)(82960400001)(31696002)(107886003)(86362001)(2616005)(2906002)(26005)(30864003)(6512007)(478600001)(83380400001)(8936002)(5660300002)(8676002)(110136005)(4326008)(41300700001)(66476007)(66556008)(66946007)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTVmWFUvL0FqcHFPS3YwclYvbnlXenlIV0xaRUo4SklXbFhiZnhtY1VyMlZP?=
 =?utf-8?B?djZzTGZFaGlyZWp0VGNBVlRyM2JaZzV1ZGlKRXFLcE5HbjZJcE5aVnErWDhn?=
 =?utf-8?B?OFZTYU5ZQko2b1MwbjlVSTA0WTlBYWdHL2YyQ016Zm1EMjJ5M3V4aGFpWFhp?=
 =?utf-8?B?WmlwYnIxVklOTm52Smw4SVlwNVRVaWtjK0ZxL1IwZ20rRFFKUytRQXZybDFK?=
 =?utf-8?B?SitoNEZrTVpiSUtPdUhnSVBnQ0l1QWJsajc1ZDFCQWcvdE1ZZlMvQnRjNWE5?=
 =?utf-8?B?SHcxMnlreGFWdFFkNkpsYkRQTFh3SkhVc2hFWGlkaTNuRi8vMmJrSHJ4bVBX?=
 =?utf-8?B?MmhReXFzNm5nMDVvWEw2dWxwcHl5VXZOY00zbGl3VXI4M0xTbk1WZDJQMWds?=
 =?utf-8?B?QUZqZlIrV0pwaFdIUm5aOE1FRzhBODZJU0xqbjZLenFsclRWUEw0RHVmRktO?=
 =?utf-8?B?aG5RcFZkd3RSakZzTEVzejl1TStMcUt1VUZSQldTQUpiTFptajVxZDJKbmQw?=
 =?utf-8?B?WERFcktta1hNajRqZUVuUWxVRTI5aFk4YTBETjl1WkoyclRSWHBFanlvTEVN?=
 =?utf-8?B?NVc3ak0xZlMzd2JQdjVhSFlvL0lVNGh3NTh3dVpGeWpZbVBFZzBXNnpOM0dv?=
 =?utf-8?B?Mm9oV3hnSFpmd2ZhUEswUmlmOVJWNkxIUTFlZnViSitEdDR4OWVJY3AxTlVj?=
 =?utf-8?B?cUg0SmVwM2JCajRMZlpPUm5pQ1Y4Rkh3U2NpM2hneUo1M2p1SkREQjZleDYr?=
 =?utf-8?B?SFhpaGh6VTUxMXZmbTI0M2tXL2F5aXlLcUNQeHF1TCt5cUthVFBSRUZCN0V2?=
 =?utf-8?B?dkJ5TkhlV3hJek5OclJYaklOZ1I3Y1hPWTZvK2wwbHJlUkp5MUxDZDFwMEdk?=
 =?utf-8?B?aEdqYlNhWjFjOGluY1gvckFadlF1Z2N5Y0JoMlFnMTR1VVlwdWpGck1Sakpn?=
 =?utf-8?B?cVBHYnJ0K1p4SmM2NmR0TEtGT0U2RVpkZkxiekgzcWZTZ0NlOXM4bmpVV254?=
 =?utf-8?B?ZTFGWFB2R2FsbGJIWnpiRENOMWE5OFNwRFp2eVFTSDZDUjlVaFVuRTJCbUo5?=
 =?utf-8?B?bVpneDNHVzIrQnU4L2hjNjZJYXVseHZzYkU5bEFwb0RvREx2UkVIMHpDT3RT?=
 =?utf-8?B?RW1sTkY2cWFXK2h0SkJnV3h5ZWNMd1VpUnpBaXBrT1JFWVB6aFhJVmlVTWZk?=
 =?utf-8?B?SDdwdDZCR0tpUDh1cDBYSkVIUG41TExtdUcrQ1VkVlhqdjA1NS91ZHBYNitV?=
 =?utf-8?B?QjEycHdLdWxKRnpWS3ZONDhYdkxSMU83aG1IQklyaGZlbUZUMlpodDJEU0sv?=
 =?utf-8?B?a1VHc2swaHBBL1dsVGFzYzBTNUtNVlAwUEd0QjVFYjZFWExKdlpVOUU2TjVT?=
 =?utf-8?B?ZkdMZmwwVk0ydS9BeXpqTUZtVnNFZytxak0rS3dmOVFZdkFPQnkyaGNVcFZU?=
 =?utf-8?B?T08wQ1A3cGpRelU5R24wYlVnWHR6S2xZSE9VSVRZc0RnS2d6RXN4ZDF2WFBo?=
 =?utf-8?B?cE9NMlIxMDEySnRmakZDOXFUVGNha3RNOEhlRExIajRObm1yQWMvN3BZd25u?=
 =?utf-8?B?MFRYdlRMZWI1S3lLTjVFamtqdGJNd2c5THZHRE5oanlBejhrazdVVlNPMjV2?=
 =?utf-8?B?d2RiaHFpSXRmSE5wUXRMUFZFS0NWS21oNW44dXJqOHV5cWVXb21CTUdXUVlV?=
 =?utf-8?B?SnVMQm5MOUpnSEp3c1Z4eFRHdG8vc2F2Z040cDV4Y1gyR3NuQS9BclRUOFJS?=
 =?utf-8?B?VjcwTDVBM2xFQUJWUDNITnRBVzhRMnMxWXR4L1pmMXZPQ2ozaVZZNmM1WFV3?=
 =?utf-8?B?ekpzckdQS3dvQ3YxMHdoY3JweWZNYlcwR1FBSmNDWHNSQkNuQmt4TUxVang0?=
 =?utf-8?B?b1VZUHpuazlISnprQTVvZFZ4amJBTk5BU1RGU2dZam9TT3dORXNvUDVRTGln?=
 =?utf-8?B?U0VVTUZXcms1ZXRmVzEzb3lXYVM2aXBXTXJBL29yOURMaVBmeWJvM2JHOWln?=
 =?utf-8?B?NWNkWEVnOVBuTVIwWWphT0RDL2NrY053RHBDV3l5ZTlqUFlLMWUzQkpsVWFS?=
 =?utf-8?B?dEhaY3lEVk1jbjc4eFVRY0MwckxjZ2pIbXhQOW43Vm1BYlNTcDB2OU1JNVlQ?=
 =?utf-8?B?TW1nby9UY1NKb2MwaVg5MUpnNEdmZlFndHhXK2lnNlhhOHVMY1RtNTJyaVJz?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7888ed0f-aa07-4afc-19f9-08dbba207229
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 21:27:52.1348 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RuE5DJVikuY3FG9SVNJN0AgsRxl/Wx/wuccNzKwGIh/CQmrUTifow3KLbR4+208rw6DN8+YxrNouSaAIyf/0clls57A+CG+jmTz4tf0ngrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695245286; x=1726781286;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZUl8XmYOh03WMI8OUScWcYOfBfwDz24IZN4E1VRt0TY=;
 b=INnqclCT161ziaLkhdRyu9HtH2cHhOWOQzyPSUErUDciJqD/WFeoRPky
 CfTZpXUnz77aw9joEWEyX2j8UTGeu27MxwafV/7QGaImTHCRgOhV6hjCD
 tB+Auut4i3wfh86w8GJoGXvk9l8fvAZ92ka3YgX8VWHg720233B/6lG6o
 M1uOHn9S3DdG868qK8VmSGXOmYTND4K1S+fOnSOg2xMy+ZPlPZiKj1HfL
 ELzoHTzaYLCq8SwXj+hSjiSgdvM6dkUd4NMCUBshw6xPgAwR5ed/NcjWF
 1Hc0dGS10HX4/6OQcRub0JR+WRXj4dkcaztyprmZmYmeJCJLwRKlp+i6i
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=INnqclCT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: move netlist check
 functions to ice_common.c
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/20/2023 3:35 AM, Przemek Kitszel wrote:
> On 9/20/23 01:34, Jacob Keller wrote:
>> The ice_ptp_hw.c file has a few functions which check for whether the
>> device netlist has a node indicating hardware support for certain features.
>> These checks don't really make sense to be in ice_ptp_hw.c. In addition,
>> their names could be confusing as they just say "is_present" but really are
>> checking the netlist.
>>
>> Additionally, these functions are only compiled into the ice module if
>> CONFIG_PTP_1588_CLOCK is enabled. They are used in ice_lib.c which is
>> unconditionally compiled, so this can result in build errors if the PTP
>> support is disabled:
>>
>> ld: vmlinux.o: in function `ice_init_feature_support':
>> (.text+0x8702b8): undefined reference to `ice_is_phy_rclk_present'
>> ld: (.text+0x8702cd): undefined reference to `ice_is_cgu_present'
>> ld: (.text+0x8702d9): undefined reference to `ice_is_clock_mux_present_e810t'
>>
> 
> You have two commits that combined are fixing a build error,
> one of which is realatively small (1st in this series).
> Could you please combine them, if only to provide Fixes: tag?
> 
Sure I can squash these and add Fixes tag(s).

>> To fix this, we need to define these functions outside of ice_ptp.c or
>> ice_ptp_hw.c.
>>
>> The ice_common.c already hace ice_is_gps_in_netlist. Move the similar
> 
> hace :)

Good catch.

> 
> Codewise it looks good, I recall some of the code already :D
> 

Yea, I sent a lot of the same code as part of another series a few weeks
ago but didn't notice the conflicts with DPLL, and the DPLL series
landed first.  This aligns with the version I proposed.

>> functions in ice_ptp_hw.c into ice_common.c, renaming them to use the
>> postfix "_in_netlist" to match the GPS check. Where appropriate, also drop
>> the _e810t postfix as well.
>>
>> This also makes the ice_find_netlist_node only called from within
>> ice_common.c, so its safe to mark it static and stop declaring it in the
>> ice_common.h header.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_common.c | 66 ++++++++++++++++++++-
>>   drivers/net/ethernet/intel/ice/ice_common.h |  6 +-
>>   drivers/net/ethernet/intel/ice/ice_lib.c    |  6 +-
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 66 ---------------------
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  3 -
>>   5 files changed, 69 insertions(+), 78 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>> index bcf7d9c56248..12c09374c2be 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -477,9 +477,8 @@ ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
>>    * netlist. When found ICE_SUCCESS is returned, ICE_ERR_DOES_NOT_EXIST
>>    * otherwise. If node_handle provided, it would be set to found node handle.
>>    */
>> -int
>> -ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
>> -		      u16 *node_handle)
>> +static int ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx,
>> +				 u8 node_part_number, u16 *node_handle)
>>   {
>>   	struct ice_aqc_get_link_topo cmd;
>>   	u8 rec_node_part_number;
>> @@ -2552,6 +2551,67 @@ bool ice_is_pf_c827(struct ice_hw *hw)
>>   	return false;
>>   }
>>   
>> +/**
>> + * ice_is_phy_rclk_in_netlist
>> + * @hw: pointer to the hw struct
>> + *
>> + * Check if the PHY Recovered Clock device is present in the netlist
>> + */
>> +bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw)
>> +{
>> +	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>> +				  ICE_AQC_GET_LINK_TOPO_NODE_NR_C827, NULL) &&
>> +	    ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>> +				  ICE_AQC_GET_LINK_TOPO_NODE_NR_E822_PHY, NULL))
>> +		return false;
>> +
>> +	return true;
>> +}
>> +
>> +/**
>> + * ice_is_clock_mux_in_netlist
>> + * @hw: pointer to the hw struct
>> + *
>> + * Check if the Clock Multiplexer device is present in the netlist
>> + */
>> +bool ice_is_clock_mux_in_netlist(struct ice_hw *hw)
>> +{
>> +	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
>> +				  ICE_AQC_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
>> +				  NULL))
>> +		return false;
>> +
>> +	return true;
>> +}
>> +
>> +/**
>> + * ice_is_cgu_in_netlist - check for CGU presence
>> + * @hw: pointer to the hw struct
>> + *
>> + * Check if the Clock Generation Unit (CGU) device is present in the netlist.
>> + * Save the CGU part number in the hw structure for later use.
>> + * Return:
>> + * * true - cgu is present
>> + * * false - cgu is not present
>> + */
>> +bool ice_is_cgu_in_netlist(struct ice_hw *hw)
>> +{
>> +	if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>> +				   ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032,
>> +				   NULL)) {
>> +		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
>> +		return true;
>> +	} else if (!ice_find_netlist_node(hw,
>> +					  ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>> +					  ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384,
>> +					  NULL)) {
>> +		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384;
>> +		return true;
>> +	}
>> +
>> +	return false;
>> +}
>> +
>>   /**
>>    * ice_is_gps_in_netlist
>>    * @hw: pointer to the hw struct
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
>> index 59969f702dae..4a75c0c89301 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
>> @@ -93,11 +93,11 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
>>   		    struct ice_aqc_get_phy_caps_data *caps,
>>   		    struct ice_sq_cd *cd);
>>   bool ice_is_pf_c827(struct ice_hw *hw);
>> +bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw);
>> +bool ice_is_clock_mux_in_netlist(struct ice_hw *hw);
>> +bool ice_is_cgu_in_netlist(struct ice_hw *hw);
>>   bool ice_is_gps_in_netlist(struct ice_hw *hw);
>>   int
>> -ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
>> -		      u16 *node_handle);
>> -int
>>   ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
>>   			u8 *node_part_number, u16 *node_handle);
>>   int
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>> index b96fbf76ca6d..6e70d678f323 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>> @@ -3995,14 +3995,14 @@ void ice_init_feature_support(struct ice_pf *pf)
>>   	case ICE_DEV_ID_E810_XXV_QSFP:
>>   	case ICE_DEV_ID_E810_XXV_SFP:
>>   		ice_set_feature_support(pf, ICE_F_DSCP);
>> -		if (ice_is_phy_rclk_present(&pf->hw))
>> +		if (ice_is_phy_rclk_in_netlist(&pf->hw))
>>   			ice_set_feature_support(pf, ICE_F_PHY_RCLK);
>>   		/* If we don't own the timer - don't enable other caps */
>>   		if (!ice_pf_src_tmr_owned(pf))
>>   			break;
>> -		if (ice_is_cgu_present(&pf->hw))
>> +		if (ice_is_cgu_in_netlist(&pf->hw))
>>   			ice_set_feature_support(pf, ICE_F_CGU);
>> -		if (ice_is_clock_mux_present_e810t(&pf->hw))
>> +		if (ice_is_clock_mux_in_netlist(&pf->hw))
>>   			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
>>   		if (ice_gnss_is_gps_present(&pf->hw))
>>   			ice_set_feature_support(pf, ICE_F_GNSS);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> index 5619644d5da7..882dfdad0021 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> @@ -3556,45 +3556,6 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
>>   	}
>>   }
>>   
>> -/**
>> - * ice_is_phy_rclk_present - check recovered clk presence
>> - * @hw: pointer to the hw struct
>> - *
>> - * Check if the PHY Recovered Clock device is present in the netlist
>> - * Return:
>> - * * true - device found in netlist
>> - * * false - device not found
>> - */
>> -bool ice_is_phy_rclk_present(struct ice_hw *hw)
>> -{
>> -	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>> -				  ICE_AQC_GET_LINK_TOPO_NODE_NR_C827, NULL) &&
>> -	    ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>> -				  ICE_AQC_GET_LINK_TOPO_NODE_NR_E822_PHY, NULL))
>> -		return false;
>> -
>> -	return true;
>> -}
>> -
>> -/**
>> - * ice_is_clock_mux_present_e810t
>> - * @hw: pointer to the hw struct
>> - *
>> - * Check if the Clock Multiplexer device is present in the netlist
>> - * Return:
>> - * * true - device found in netlist
>> - * * false - device not found
>> - */
>> -bool ice_is_clock_mux_present_e810t(struct ice_hw *hw)
>> -{
>> -	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
>> -				  ICE_AQC_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
>> -				  NULL))
>> -		return false;
>> -
>> -	return true;
>> -}
>> -
>>   /**
>>    * ice_get_pf_c827_idx - find and return the C827 index for the current pf
>>    * @hw: pointer to the hw struct
>> @@ -3708,33 +3669,6 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
>>   	}
>>   }
>>   
>> -/**
>> - * ice_is_cgu_present - check for CGU presence
>> - * @hw: pointer to the hw struct
>> - *
>> - * Check if the Clock Generation Unit (CGU) device is present in the netlist
>> - * Return:
>> - * * true - cgu is present
>> - * * false - cgu is not present
>> - */
>> -bool ice_is_cgu_present(struct ice_hw *hw)
>> -{
>> -	if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>> -				   ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032,
>> -				   NULL)) {
>> -		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
>> -		return true;
>> -	} else if (!ice_find_netlist_node(hw,
>> -					  ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>> -					  ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384,
>> -					  NULL)) {
>> -		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384;
>> -		return true;
>> -	}
>> -
>> -	return false;
>> -}
>> -
>>   /**
>>    * ice_cgu_get_pin_desc_e823 - get pin description array
>>    * @hw: pointer to the hw struct
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
>> index 6f277e7b06b9..18a993134826 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
>> @@ -271,10 +271,7 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
>>   int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
>>   int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
>>   bool ice_is_pca9575_present(struct ice_hw *hw);
>> -bool ice_is_phy_rclk_present(struct ice_hw *hw);
>> -bool ice_is_clock_mux_present_e810t(struct ice_hw *hw);
>>   int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx);
>> -bool ice_is_cgu_present(struct ice_hw *hw);
>>   enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
>>   struct dpll_pin_frequency *
>>   ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
