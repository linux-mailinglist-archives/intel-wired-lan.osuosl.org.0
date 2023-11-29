Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3DD7FD4D9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 12:03:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E5C641A06;
	Wed, 29 Nov 2023 11:03:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E5C641A06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701255824;
	bh=sYbx+HsIu3T5oUQpwyODfZKtrqbhnxxPLmf7cAm4u7Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lH/2e9UPKdJrKeCdAFXkJzFRf/LWdljTW+5tldjvrZImX/ERUvcMsxdyD68D+/0M2
	 /ETl2FukXRnbsNof5qcLD+wF6pFxBb9BFvZvvyMWy3ZZuqCwSSyK956jrBtyd+Bnll
	 Va+qEOHB1KMUruz5cIJiiUkvBc4gV/Vr1zPhti7LskU1rQ91sNRbjHFg2UZ3OcJaz7
	 tPOwmQUUCkqH3i7z+bkL4FBHQwVT5u5KXCcl9MyMJTEYzaDVlG0Mu6A0uWSSAGYR0b
	 G8jKV4g4HtTd/qCMdyVGFMVDCPDPAziZKtoyLoylhHKOiW7AXU/vfhdEZELaBLefNw
	 82yUGdWP9ISgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9acdVuCwmMpL; Wed, 29 Nov 2023 11:03:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19B4D401DD;
	Wed, 29 Nov 2023 11:03:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19B4D401DD
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4CF71BF369
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 11:03:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B75E9403C7
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 11:03:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B75E9403C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b99T-Y5uMmKz for <intel-wired-lan@osuosl.org>;
 Wed, 29 Nov 2023 11:03:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2D4F401F3
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 11:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2D4F401F3
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="424287619"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="424287619"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 03:03:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="762275725"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="762275725"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 03:03:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 03:03:17 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 03:03:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 03:03:16 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 03:03:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bqw2RzASOnVAmW7Q0IIq1ibubAScI4GcRoe4SbzttIcDjilpQ1d7N908cvUZ+NYGiMwjT9znyI3pBMpfgCwJvY9pY83bcwvy461UuyUC+iNsCmJqUa7MRIAOah7hzNii5KltynjeK5TXoXdE5mu1TcIB4ltlVyL8JjCQdnb5J8fZopvX2Hb5cXHA/m1TyKiunu4dG+B7UuuOwsaS+IDG50bjGI8QpTbFYRffezEvSN4eE7ArsRnWvujb431oPi+lh6Tlzsv+PWWSnbDxfsPAFZsqMBG1XlaBVCh+8XLbtAMXpbHSGat+48FnOsOu9jKGZz/+jc6SCbzHim/G/zGB/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NtMFLnBqitS9exD8JMr2srH2WnEyAH9XWJmlz8we25c=;
 b=ekQVZknj3LWse98mVw8l2XOSbEsGJVvglaTHxs2G4QJKZrzwL5/hcaKBwJ1Gxd7eM7nkia9jjyhaP7N/PFb3gK3TjvhOABJYEcWbrvUc2ycHXowQPh97WWQyaoGi7sBfTLqaQOvwVBSM2/H5O8p7JltMU18QP4Xo1uYcvlRZz3Wp0ja5Nw3isMD0qo0rmLPalWOuPBGEbNc/i2uozWvmgdc1zY2AdfyS4DsW5We4waMnaND8PNQgjmsjcUuRjWLVxJGqM8EaDUZwYHwrZXLe3eBu6eI6E3q/ogzwsNI5Oi24pXWbhQI1gJ8OxGxIckhdlle8JqkhdlR/iq8U2t6wcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SN7PR11MB7419.namprd11.prod.outlook.com (2603:10b6:806:34d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Wed, 29 Nov
 2023 11:03:14 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7025.022; Wed, 29 Nov 2023
 11:03:13 +0000
Message-ID: <76cd7acf-41be-513f-170b-8c2e57b704b6@intel.com>
Date: Wed, 29 Nov 2023 12:03:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
References: <20231120112726.149409-1-jan.sokolowski@intel.com>
 <705464ad-8559-4096-a31f-4f4b6fc05770@intel.com>
 <PH7PR11MB58190A571FC08D16E58AC8599983A@PH7PR11MB5819.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <PH7PR11MB58190A571FC08D16E58AC8599983A@PH7PR11MB5819.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR4P281CA0229.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e9::7) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SN7PR11MB7419:EE_
X-MS-Office365-Filtering-Correlation-Id: d0450125-c20c-4ef4-5ca5-08dbf0cac83c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aInQHssFta51auRS67f0yVSyo5E3FHKZ8Eq9856YY+dUIWHcKnIIs4nGCjRTi2XYUfnlLuWCpQ0tVNVCYtwE0lY9oMYpvu2rRwu7QnuWI4kDh+2kStGssJb/lV9AfvFMbP41xtXPj20Z+Bgvr+vv2O7dapytV6YmKGO/3V/ayKufl7SvVVOvp28jMpmc6AeXVc0YB5fM/tFV5T3hhyFiONjh4s3ECPyzaXNr6Tn+wKBGQhbXYy7t4jUMmukPmTwZyjGl8Mf3mbDb6DOEdv5yWx/1dM6Zntq8vfASPJ+AMImyWYapGk7PKvFAmerBu1u9LF3AxPqqzByKCNIhTVgm5wNm7yTo/OaCXtlADPMzCwn4lc3TVvYQOTkoTdAkWBjxO6IYAYvl+m9AjTog6GaMfeLVWARlxkQmgrz+oyJD8Cz+2A6znZ4TuIC9iCVz8WtG0859dTQ/6uxxHqWshcMY2ZKCIy9eQhjAdwL0JfX9G4797tq+ImCV4uuchf95znGisC/jLB4uW58f8HAYT8pwZPblyMi14l/gURhRcon6HT/nrleegtcWkSyj/JQOkmldp3iMZvK8DlHrimV8RpGBrrZ3e0LTiSJfjoUlBpnXAR1eGyvFBDDg+RBIG5gLLVkzHy0rUwE40/zwCiPC7e6VeQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(136003)(39860400002)(376002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(66476007)(66556008)(316002)(6666004)(110136005)(66946007)(31686004)(8936002)(8676002)(478600001)(5660300002)(83380400001)(86362001)(31696002)(82960400001)(2906002)(53546011)(2616005)(26005)(6486002)(966005)(6512007)(36756003)(41300700001)(38100700002)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2FNaElYbTJ4bFhXMEU5akFaSzExWW53U3NsUWE5emxYT2RPOVlVdnhkazM5?=
 =?utf-8?B?ajFoWkIxdkdyKzBGZytyNkx5N2NZTXRDN0xOS2lWMlIzR2lsWkExMUwvRHcy?=
 =?utf-8?B?UElwRnluakIzb3BtV1YzdHJ0V1pxU0FEblNWeVlEWUQyOUFreVJHZDBQeHls?=
 =?utf-8?B?b3liY3E0V3pVUnl6UzhPamlRcWd4Qzc4U004cWtPUFdUSmJaWis4bFlnU0wz?=
 =?utf-8?B?NW1qR1EyQWk4clA4bHV6N1lMWVY3aWFkQnJTdnZrNEhvaTlOTzdnZDlsTExa?=
 =?utf-8?B?UjEwa3ZiclFaVlcwalJCM0VDc1QrS1RIclhZUGpxRlpvdUZUVitrNVU4NkRi?=
 =?utf-8?B?UWEybUhSQVc4aVd6UGczM1ZSVXF5cXNia0dFaXNVQzNvSExUazFtZFZUbjl1?=
 =?utf-8?B?ZGtwVHdGVjRjVkZqZ1FBMFg1TG9NNXp6d0M1RWVkaTh6dlpOV0w5Sk5LUzZ5?=
 =?utf-8?B?VHRnSzU5SzA2VHhadmhINHRFWXhmb01ya2d2R2FSRWlVd1N1ZUlTb0J5OUJN?=
 =?utf-8?B?dStnUzg1ZXNEUzkxWExURE5hV2sxOVBQR29kUmcrRG9xekg4RVNvUUZpSjhX?=
 =?utf-8?B?c2J2SDlJVGh1Rmw3TU8yUmVZQlVNTHB4Wnp5SmpDaUtzbHZTV2s0cnBmUkVK?=
 =?utf-8?B?Ky82bVIvOVVXd09JU3JmVE9MS2JRS3JXblNpcmlZSXZieFJtTEdTL09jNDRq?=
 =?utf-8?B?eVltbmhOM2UzNU50MEtsODh4TTlneUNkbUtaekVtUk1paU05dFJoZ3IvaVN5?=
 =?utf-8?B?bFF1MGJHOFlXVU51UXlOb2NrSDc3VkxCKzAvY0I5UHd6MEFFQUQ2ZUVody9K?=
 =?utf-8?B?ZHVDbllzalZUcTZuV3ROWVBacHJlYlF4YTY4U09IaDRFTzlpdHRxYTJhbEdQ?=
 =?utf-8?B?bHVhOGFOWGorMHlXWnF0UWlNUEVMQnV4YVJtZExFUFRPbU5YZGc5V1BoS0RE?=
 =?utf-8?B?UUhSRzN0MFhIZmtIVEd4K2pzWEFCeWsrVUdyK0xtSFhmcDFqKytITjJpdmpo?=
 =?utf-8?B?NGlxUC8xK3RtS3JrSHhMajVtNXFoSjRTSjdrL1N4bjFJYVVZaEh6NzdHYmNv?=
 =?utf-8?B?dWR6eHFLWWZFQ0YreEYwMCtKZlRyRFMzdzNVMW8zWTdjU0FUMk9MTUczZmVV?=
 =?utf-8?B?dlhVbGhKTVFIdnFJeHUrR2FuOHo4RDhpUi9yd1FQalRXMTVlZTZob2U3NGJl?=
 =?utf-8?B?dENmRURZNWk1UkVpOFEvdUhjRWI1VFdld1FhZWpHOHc4d0Izd2xlSzRJcjJB?=
 =?utf-8?B?d3VrMnAyYkxTckFRK2lkb1hkTWtvR2ZmbHdjajIrOUJiYkhvbTEvNGNGZWtW?=
 =?utf-8?B?bExYSjBpVXRQcnVweGNHN0FoaEVWSnZqSUFWVGEycVdWRFRFRElsaGlYNXQ5?=
 =?utf-8?B?Mzd3MUNZNkdFcXpGVjB4ZWtmOW1YNzJYWUQ4c2ZuM3FhNWVnekw0Nm45YkZK?=
 =?utf-8?B?b2lYRko1eUJ0L2ljNjh4Ri9udksvTUlzc0QweGlVbDdDZGNJdGdLR2xrdzJL?=
 =?utf-8?B?b0tqejlKOGxTaFh2MnRMNXFyeGlQd0ZwdWQvaHp1cXN6RDdCTXJ2VkJiRHV6?=
 =?utf-8?B?ZkJqbm5lQlZaRG5MdUcyRmYyUmlmanBxV05JeGp1YmZHTm9DOUFmZXlLRmpZ?=
 =?utf-8?B?dW5uVHJUb09hbW9WMC9HL2RwZSt3Y01SdytGWlg3UDRJalFYWUMxR3dXRldL?=
 =?utf-8?B?VkFDUTY5Vi9ETkxROGV3azN6YUx5NFFWMzhodlQ4cjNvVmlkcUczb3hwUm5V?=
 =?utf-8?B?VUh0b2J0eEloOW9yaFVJTFhQOEROVlhMS1RoTFROUHRURjFFUzkzVkdmNzgr?=
 =?utf-8?B?SnNOVnVWQzBsK0xtMWhqdnB1MGRDYlVyWUpRa2VFVS95MUZRME9wOVlrUTBi?=
 =?utf-8?B?N3R4VlhITFhndnZIblBVeHFaaWswbWN3UHZRSUJHUWxxOE4zU2Fwbk9Mb1Uw?=
 =?utf-8?B?cW5UVk9pR3FrMmhRK0grRWpCREtENE9TWGFwVFBnRzZGZnNoV2dGalVGTmhK?=
 =?utf-8?B?clQrSmNMYXQxWHhlTDg0Qlk0OWJzMVVBbmFKUWVocmhQSHliZy9uaFM3SElQ?=
 =?utf-8?B?WlM0ajNrMGdKZWRNUjVyclBzeFR1SEI0aHI4blJDTTdJbDlOV3MvZWZDZkwv?=
 =?utf-8?B?M3crcTU4NlJVSzUzYTRjUWx6NWNYbUtRZzZsdW9uK3JzMllaZUJoYzEwKzg5?=
 =?utf-8?Q?lG9iyxEkz6kZ9+negJllfWM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0450125-c20c-4ef4-5ca5-08dbf0cac83c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 11:03:13.8668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rzzmmRBWriVuPCzsf8BXvrq530ymxbY1umIyTh5brgyvpVzp5odwTCzA5ge0GF98XpN9Jc4eUnXxKZrlcrQIvtDmnb4/2TfmK5L6sG6+o+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7419
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701255799; x=1732791799;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5SmxJkCPWBynvlCj7O/k+/WsDfWJ09eXr1Y98IB3X2Y=;
 b=VnQJGQJfcXYmtg8Ii6+8eftKg3b0ODBBzuJSUnCH02tRgo7dAGQHHQMa
 /hqWbTuwyRGWftX4IZ0LcDbOTdC/y+ceQVHiIlY843QLt9iM6VSeXdGSo
 8Q8ilJvMk4mY8F/nrVriBmtfLh6fUzoVxA/Kyvv2igo0ZEpXrDz4puUui
 RoAfX5tgkBfN7+i8DB5Nfv4TPQPKzXpWFi3Jgtu6jLl+UU1lBAvQXhK+h
 mljCdm/41QFH1eXSzkVJ/Mobz3psuweVrBtqH832NXxmSEh9HLNNus0/d
 MQ5gq3J+4X0/WpOCnEenLxWy8NPGkjbKV9J+hCEQIjiCpM3dCZT7kfJcI
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VnQJGQJf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove rx_len_errors
 statistic
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

On 11/29/23 11:26, Sokolowski, Jan wrote:
>>
>> On 11/20/2023 3:27 AM, Jan Sokolowski wrote:
>>> It was found that this statistic is incorrectly reported
>>> by HW and thus, useless.
>>>
>>> Remove it.
>>
>> Is there any further information about what is reported incorrectly? Is
>> rx_length_errors part of netdev stats and standardized? Does HW fail to
>> report some packets or does it report packets which don't have an issue?

Great questions

>>
> 
> It's a part of visible stats, standardized.

Please add that info into commit message of v2, and CC netdev.

Perhaps one could ask if it would be better to always-report-zero as
a value of that, standardized, stat. But if we could just remove it,
it's better.

> 
> According to the bug report, HW was misreporting packets that did not have any issues.
> 
>> I mean the hardware does *something*, so I think it would be good to
>> have an understanding of how this differs from what we expected when
>> proposing to remove it.
>>
>> Thanks,
>> Jake
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
