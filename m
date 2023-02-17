Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD82D69B190
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 18:02:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 470F940448;
	Fri, 17 Feb 2023 17:02:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 470F940448
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676653359;
	bh=RE9y28dZRUHh9299SqYW3jjcQGHFvCcc9H08WxKHoo8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AkApglsBbKTfAXEDdIOhevtcFSgB+9psP4XXKfwaYws3flM7Iqptrgdxu/UUrS91o
	 pglxBElGkxHo6y1BMDFytVIggMZzxcPgu57Sf1ysfCUiZSTQys3VnHiRPh6NCU8w4s
	 vUgY2UnPU22dB7FCwfKb9niQLsbGfcobVYXNEc6uWK/tRLgzGFH2IodZuVwhMlvir/
	 oP9RuUXg18XndZNATnu0YdXsOWfI+30MvHfTqGorIurIwtbXa4h5sakiv3V2WgHtUR
	 lyuV5CEPs45GKkL/HscCGGCGRxhLTFMLVvhnrqAbNVVeUWAf6RKWglfKLbnhBcn7Ov
	 REDeevq5SIuNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NInVeSKD7B0S; Fri, 17 Feb 2023 17:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 269FB40382;
	Fri, 17 Feb 2023 17:02:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 269FB40382
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B9C641BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 17:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9AB73821E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 17:02:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AB73821E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5HgEopIgAh_8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 17:02:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96F8181E97
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96F8181E97
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 17:02:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="330696112"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="330696112"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 09:02:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="759437124"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="759437124"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Feb 2023 09:02:30 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 09:02:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 09:02:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 17 Feb 2023 09:02:28 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 17 Feb 2023 09:02:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=REtgTH1/aSNY/4yTpWsLJfdC2mCuzDHXVT7U4w9CS6LQjNqJS1FbGtM8G43jhm7YkpGtsoAbVq31efIDvKLEwWDhRNgNxsH91f7oUUO7SiB4Sggl7CSee7QiIEPKuKqHzrODgPUwA0MAn+Vk0TJFFpXVFtFrJYWQRDL5S0zjxatTqrYEKcPPskYS3E6VNSJpTzekOdk235P8BNaiAJ7VdMEEjDDe67CUduvpc46l9hYuLtEhUCipXhMLnZS6lVCGaWudKftZ/JYRc2TUTp7geDpR9qK9xk2TDR0kfIkG0EB+QbV0gXAGj13jOx7FDTl74e5hQBpbRWw7vJNGRfOS4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=amUZ1E2Z5SO3DBm8z/nCAIdXNRafTMQ1k1sFQL79XRw=;
 b=DBVD3TemdmRAikBWVES6tFKPQ5RG83DSrGgiktxCR9SDDL1vXgLccBIchTwqwnm33lO3a2K1MmW+IW+9H5oAIpGGmREJV5EsanyiFPXVWBhg0H6e03+lOzkSVOpZA7GntDfcLsHHB+B8lqpiTM+vZIAIkJVKkR9sTs2mQTpEg3wqoL6DPL8WM2CIzGb9exGAn5G0k6UhjivZ0qvqiZUhkV9PlVguejHNO44y1ispJIduFcV6NkeDBJsxxx0hvUwgB7PSxREX+/w9funS3Y3uGyIzpuejCE64OuG5X/z/3GqaoBNenJBjfB9tgaXlS09ptMmnHZT31v+eroIoq/nq9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB6383.namprd11.prod.outlook.com (2603:10b6:8:bf::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.23; Fri, 17 Feb
 2023 17:02:27 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6086.026; Fri, 17 Feb 2023
 17:02:27 +0000
Message-ID: <06ca5763-0f8b-36cc-6ea7-0c835f1b6ccf@intel.com>
Date: Fri, 17 Feb 2023 09:02:21 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Tirthendu Sarkar <tirthendu.sarkar@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230216140043.109345-1-tirthendu.sarkar@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230216140043.109345-1-tirthendu.sarkar@intel.com>
X-ClientProxiedBy: SJ0PR03CA0148.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM4PR11MB6383:EE_
X-MS-Office365-Filtering-Correlation-Id: 18700bc8-07e5-4251-8d0c-08db1108beed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qz/n+ypTp25HDiJioqtWJgMC/8hJq8RbQCnH74l/PQJD3rriZfFoPj8Za5TaZo5KHBKnlvn22+/tkD87iJt2p/hL1ZFnkcO3ClCfTWEZiwVGzte06HzFMjv8d9ctWibPJ3geS2nn1DH8gQXMdoPZ2nS4ZFT/hbecvYprOZr2x0wbebQvEPXnJsbB3V9Zj8adEGT84be7JZ1oMxEZ71WI0WdYGmhfDvsLtd/EZ9AsVEvWGU9oMpM2BdTmmASH6CEnrNdwdasArdGoVjVpg7xy+LHEiI9ZAfBbKAakBxqiim4Stzg0MVZfv+3iKbiOlDOr44LK2576tHVLgWbL7aAsI1qCpLkl5CISptNwSIa8gB6qHpFkPFRJMCT9HnSP29g8l9gLwCyC/NLJMeAXVouC/Rr+118mPku5lmM/2jOdwsUn6LFjLTljD5U93nTvwPeB6ho5wvar1XF7EARx76Ic7fN1OG5Im0HBGhJUv5t/EOIQTDJGtLchkAUzmlrQqzdqHViDJIC0GntjMiKLI1xQphgVe0waN/Jq8SV+T0ffLYELqmRnUHOxEZdYhB6lzcYYOMNq2MDwmtp4YaG2lLVjuoRfs+1PH0d0s/og+jtV00h3UzwFYJcJXaj8sX8lNxdLCe71aOkitvZqaagEW4eSGx9m63o36xp4H/+wHbRuVHV5gumFr7JNYqVlEJ77btgG8SXA0YgrOKoJpCXeAC3hNWUh/AnvYC6oqxOPMTrpl90=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(346002)(396003)(136003)(376002)(451199018)(316002)(83380400001)(66476007)(66556008)(66946007)(6486002)(38100700002)(36756003)(8676002)(8936002)(2906002)(82960400001)(31686004)(4326008)(26005)(478600001)(2616005)(41300700001)(5660300002)(53546011)(6506007)(6512007)(86362001)(6666004)(186003)(31696002)(107886003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFA3MGR6Q3dXWW9tUkozOU8vRlkwNHVmeGs0a3JaaFM2ckZpeE1aM0lwbVcw?=
 =?utf-8?B?Vis3ZFVPeHRna0h3TUlzL3ZCaURqUDBMSmhKRXZWUG9hQmdnT3Q0QnhGY1d2?=
 =?utf-8?B?aFdMdlpRS2dJN2dmRFdPM2krWFpVOVdlWEhNZ1ZQanFoek1TaFVscHRjdWtq?=
 =?utf-8?B?S20yRUJKZFNMYzNYTWd2enJLWStyaDcyQU13dDJuR3ZIRk5DaFI2WVpjdFVG?=
 =?utf-8?B?Z1hDU3RnT0JKanhvRUdmbEJkR2E2ZDRZRW9PR1dqL0p0SllDZ045RStxWG8r?=
 =?utf-8?B?bXEwQjhtczZmcWNhMGdtK21sREhHZlJUOUhnR2toRExVOTdZZVRMb2VkaDl2?=
 =?utf-8?B?MWdSeTlwdTlzdzdDRzBmaUdacDUxNXF2UzR0TGcrdHpjYi9BTVFxd1ZsVXRh?=
 =?utf-8?B?WHluVU0xYU52K3plQ1dzaU0ydEY1WTQ5UE9QbFFMRlppM2w5L0Fncmd1dzkr?=
 =?utf-8?B?SUJUSlNEZUI5cWtRTklVQlBMdERKTW5za2pwc1dodXg4ZDBEOFdmTDNGZXR4?=
 =?utf-8?B?V0RSNzRpM0tlMGNjYVNtMksydURWY2dzQkFQZ01KYi9MRU5vWDdubWR1TFVl?=
 =?utf-8?B?VU1rcjcyN3A1elluWHp5ajBtUmx6RldrMHBvenk4UVMzTHY3SXJQaGFUeDFR?=
 =?utf-8?B?Z1lDTXdEVG5CdjREcnNsdlREdmRvQjdUc0tqRjhreW1MSEE4cllLejlLVzlM?=
 =?utf-8?B?UkkrSzF4ejBIOTRId0JSTnkzaXJac0QrSEQ2ZVhyNzBqaVJ2eGc4ZUt6cnc5?=
 =?utf-8?B?a0JoOWozYk92YjFHYzlYK3cxdlY0NmdIZmY2S1RDYTBSeEpBSUhpejcreGRW?=
 =?utf-8?B?UzlGMmVnRTZjcC8zQ25NdWRsSVRiMGdjQTlsRWRLVERnY05vcFlmNnBPK1BF?=
 =?utf-8?B?NzdrdkprL0hhVEo2bGZMVnhSU3hEL1BjME5Sd01ldEloNlBqc3BjZnlERFRl?=
 =?utf-8?B?ZlEyeU1EMnlNelRKLzM0U3BHeXZBaWxHci9sbHM1a1F3S2tDalB4bkljMnEw?=
 =?utf-8?B?Q29JYmJWNkFhMG8wQTZFZnJqRFJUNkwxOVVOMkFnMVkxaHZZRmxkeE9KZzVI?=
 =?utf-8?B?TENSMkZHZW1HMXBNRzhodnpnSU9jekNUNE9BeC81dkgwSGxiRFlFTlFLeFlR?=
 =?utf-8?B?aU0yUFpBTGFsZUJyaDBFMmVKYTRsdGlVU3hJYnlzTTZNKzRQNXRFOWU4dmpP?=
 =?utf-8?B?SE5wZ3RoOVJPbk1KdW5jemhZekZTYUt0Z000UGdIV2lIb0dHaXpaMjFLaUxn?=
 =?utf-8?B?UzV2Z3p2THNIZWtQZmgybDNJcHdubXNVSFdtSnBjRlJYTkdNVXAxcXRaRTNP?=
 =?utf-8?B?OTdURnVWMFB3VSsyOUx0aEF4ajJyQXVTT1RvVVdvMWlSQ0s2Rit3T3dPT1RE?=
 =?utf-8?B?Y3Q3S21qbUtpam9VT2poM01sdnFvRStsZ0Jrd1BtSFlOMzdoL0dhL1VKc0VQ?=
 =?utf-8?B?WWFjRUZyd0M2RWpZaUJselJ1MnZuOWR3S2hoM2dtOUY0ZytTYUo1UkE0MGdT?=
 =?utf-8?B?V0F4MldsRC9nSklEVXBEaVNvTVJ2WnJUdUpWRVczcDlRZjBWTHJtTWpwV0Ny?=
 =?utf-8?B?NHVMak44QVVtd0VmSDhQSWVMcTB6WmpuZUsxMHUzSmtLZUgwZlBtbEp1RVg4?=
 =?utf-8?B?TktUQm5pSjRGOHpTZno1TDdrRk42c3NmeFZlbTdZKzNhQ1hkcUtoYlhDM3Zv?=
 =?utf-8?B?VHZQQk9sY3o0WjVIYThRYUYxQW50YlQxZklwbDRBY3Vid0lWT0h0bFF2d05o?=
 =?utf-8?B?RG4zNWtUMDhDQTdOd0xPQkRDeWdLZlJzSFIvMXlVYkF2bWlYdzBuYUxmWkQz?=
 =?utf-8?B?MmJsTlhGbnJNMXBpcncyQ096Y2YvK09KRmVtTVRaMEljSGFmZkNHczVZd1Fy?=
 =?utf-8?B?TVFOYzVINUlVN2oxWmhuZW5XNHlqRjV1eEVFWTgvRmR3S2l1ajdlaXNEVm05?=
 =?utf-8?B?QS9WV2JGck1yLzU5SC9lNnkwWERZNlorYU9XTmlOZEdFRTdlYmFpemZtaU43?=
 =?utf-8?B?RnJYZTlGam4rclVta3JuWUoxTFNTMElpTDEvME11UVNvVnRkVEIvL08rdCt3?=
 =?utf-8?B?d0ZGelJZZUJ4MGhzc3g0anhKdE1XQURVWlRUTlJiNGs0WERRS1hkTlg5QTBR?=
 =?utf-8?B?OW1uUGpIL2cyTnlUR0YrN1RNY2Jsd0dPRU5iL2xUbWxlemQ2TUZpU2hiUCtY?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18700bc8-07e5-4251-8d0c-08db1108beed
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 17:02:26.7144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /7KM2u8LsnciSeJr9vcqyIJwP63LDMFZGjix5qHRdTAaP1kLgMuaSDZ9toKLw8dO3fh4Y1Kzd3yi2CmOVGMjwzlDtrmSEjlgqGjdBXQ5Ifs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6383
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676653352; x=1708189352;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ltkb+UmnbiDYVUM4VgiIVfb1fcofSPinKnbX8LPBPdk=;
 b=FLbXBQ8TAbwRYN1w6E5CXgVqnPRetQCYv5CQepGBJ+uO7vFs4OvoU4fp
 RjndJISRhoVun9TgJr8s9sEWscqJZxXRQuwViOJ8CIsO3WPLxTGoTrjBv
 gjNg3VJ09o7laDOq6GXhPPm3r134g9dUAdJYVt2i/Z7NdutlZTn/G214p
 gS7wSLmExfoU1OcndoweDm7JBVN5JqH214y8in9PjzuRMPBN4Iak20KnD
 4HIKVBNCOrK/QrgQwAWsGzUXFnkVh6gcwR5wnaD/o74+nGmUmsZrwRt3Y
 TPJ6uEP44KczupUgZmvGZj/eVS//M6eIvJUDwuiTSwAHPEzdxCFrSHZdJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FLbXBQ8T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next v5 0/8] i40e: support XDP
 multi-buffer
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, jesse.brandeburg@intel.com,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/16/2023 6:00 AM, Tirthendu Sarkar wrote:
> This patchset adds multi-buffer support for XDP. Tx side already has
> support for multi-buffer. This patchset focuses on Rx side. The last
> patch contains actual multi-buffer changes while the previous ones are
> preparatory patches.
> 
> On receiving the first buffer of a packet, xdp_buff is built and its
> subsequent buffers are added to it as frags. While 'next_to_clean' keeps
> pointing to the first descriptor, the newly introduced 'next_to_process'
> keeps track of every descriptor for the packet.
> 
> On receiving EOP buffer the XDP program is called and appropriate action
> is taken (building skb for XDP_PASS, reusing page for XDP_DROP, adjusting
> page offsets for XDP_{REDIRECT,TX}).
> 
> The patchset also streamlines page offset adjustments for buffer reuse
> to make it easier to post process the rx_buffers after running XDP prog.
> 
> With this patchset there does not seem to be any performance degradation
> for XDP_PASS and some improvement (~1% for XDP_TX, ~5% for XDP_DROP) when
> measured using xdp_rxq_info program from samples/bpf/ for 64B packets.
> 
> Changelog:
>      v4 -> v5:
>      - Change s/size/truesize [Tony]
>      - Rebased on top of commit 9dd6e53ef63d ("i40e: check vsi type before
>        setting xdp_features flag") [Lorenzo]
>      - Changed size of on stack variable to u32 from u16.

Hi Tirthendu,

Did you move over to next-queue/dev-queue because this series still 
isn't applying.

Also, I'm not seeing the truesize change on patch 4 as there are still 
issues being reported on it.

Thanks,
Tony

>      v3 -> v4:
>      - Added non-linear XDP buffer support to xdp_features. [Maciej]
>      - Removed double space. [Maciej]
> 
>      v2 -> v3:
>      - Fixed buffer cleanup for single buffer packets on skb alloc
>        failure.
>      - Better naming of cleanup function.
>      - Stop incrementing nr_frags for overflowing packets.
>   
>      v1 -> v2:
>      - Instead of building xdp_buff on eop now it is built incrementally.
>      - xdp_buff is now added to i40e_ring struct for preserving across
>        napi calls. [Alexander Duyck]
>      - Post XDP program rx_buffer processing has been simplified.
>      - Rx buffer allocation pull out is reverted to avoid performance
>        issues for smaller ring sizes and now done when at least half of
>        the ring has been cleaned. With v1 there was ~75% drop for
>        XDP_PASS with the smallest ring size of 64 which is mitigated by
>        v2 [Alexander Duyck]
>      - Instead of retrying skb allocation on previous failure now the
>        packet is dropped. [Maciej]
>      - Simplified page offset adjustments by using xdp->frame_sz instead
>        of recalculating truesize. [Maciej]
>      - Change i40e_trace() to use xdp instead of skb [Maciej]
>      - Reserve tailroom for legacy-rx [Maciej]
>      - Centralize max frame size calculation
> 
> Tirthendu Sarkar (8):
>    i40e: consolidate maximum frame size calculation for vsi
>    i40e: change Rx buffer size for legacy-rx to support XDP multi-buffer
>    i40e: add pre-xdp page_count in rx_buffer
>    i40e: Change size to truesize when using i40e_rx_buffer_flip()
>    i40e: use frame_sz instead of recalculating truesize for building skb
>    i40e: introduce next_to_process to i40e_ring
>    i40e: add xdp_buff to i40e_ring struct
>    i40e: add support for XDP multi-buffer Rx
> 
>   drivers/net/ethernet/intel/i40e/i40e_main.c  |  78 ++--
>   drivers/net/ethernet/intel/i40e/i40e_trace.h |  20 +-
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c  | 420 +++++++++++--------
>   drivers/net/ethernet/intel/i40e/i40e_txrx.h  |  21 +-
>   4 files changed, 307 insertions(+), 232 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
