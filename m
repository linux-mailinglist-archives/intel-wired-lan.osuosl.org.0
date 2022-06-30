Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF1B561263
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jun 2022 08:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40FB740A60;
	Thu, 30 Jun 2022 06:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40FB740A60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656570147;
	bh=G/kWShXCxGfotSsUt3ceMMYY5eUa3391+E7SFcIjMuY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J6u3PjzkvQ6onE5BddrFeYNC3S7S3WiFehuZ32DsXxZ5sPwblzin951eV6MGLZiH0
	 9Po3a43BJRot5c40V6p+WuQrHm5QVE04SbY4bz2Rbtp78v9qSxjqs9rrTjgQR2Qmgg
	 cnkowW38H7aK4RIRqKvtUNtUfLkRNPcgROsnqOCb97Me8bl3iQyDd69q+RrOU/q/un
	 QjDN+xqmZUlsUI/sLXeMGp5rZOexCakYURXpt1IL5wMLFO1YB/wc+L//LvcViA+Kqz
	 j+0KLifo0jRRcq2eJZWWFGId2MjC9WAAQVpfw7urjF9u1CLba9Slx69BSTj7+SDrjG
	 YdqGnMlUVYlfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R6oMpjsDX6DM; Thu, 30 Jun 2022 06:22:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F39940926;
	Thu, 30 Jun 2022 06:22:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F39940926
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 268A11BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 06:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F28D561219
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 06:22:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F28D561219
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fni4jkMR5Fq5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 06:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AC3360ED9
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AC3360ED9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 06:22:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="343945473"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="343945473"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 23:22:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="767994210"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 29 Jun 2022 23:22:19 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 23:22:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 29 Jun 2022 23:22:19 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 29 Jun 2022 23:22:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gNswSlWXb5E9I1fW57k1X1EXxGEzvnSHL2FRPrfDazHBYSDyKIG/+UOuc+ssWq6UeE/36tn+8r88pp2gH5vs+9zrYkIIq0+iI1dIq5x9xMbXlsq79F/Dztus2H7KOewmaseWhV7hlFrFEYjCsCMICPT9Go7vV2mupDCiSeSsZ5sUwb2dgVkj8GP6EBCkN7IIANTxckEFeGSYL/LQn7YByBQMZzAPfPIsscea0fcFeOGRi9cpgFZTZj948C1RUzxkvn+BMVibV5/n7127lmG1s37EMMayOXnr0dRjuLAr8676mp9M/CXSKN/kMEzYxDzgCvbJghHM7eQMWTnhyfycVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uAx4JQbaf5kpKMbwXqP+JWa2pFjyO9sNlVsVflB8E88=;
 b=JHemb848Gdj2nN03OdKPPVKQfGeqWSSpUySaRO82drwFtmRtTSpyZSFRAAOwRxG4oSH+y4ipgzMt3Or0FuZ0fO6YtAQfTvtoJpbXOm7ms+jDvnL8srRXKxGVBXk+w1GhdNT2ExCt8465MB5oQXRG7PxJnM8OOFB76+uxUqrlTh89KxIo24GT+p482usd8Rm7zPQZLiarDM9IbiSnOnT8fisqzUwk1Q1VEJ5N5zYsZ5RYUg2yMTdeJu46dtwo1hFSvum3zkf7ZZm/Ru3rd95RgCLRFAaHvowbw2RkoRWSGCnrNfRwbOlthDhGYyDovoBA29JCb2iVMR+w0WCVQ7JoRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by BYAPR11MB2887.namprd11.prod.outlook.com (2603:10b6:a03:89::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Thu, 30 Jun
 2022 06:22:17 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8%5]) with mapi id 15.20.5373.018; Thu, 30 Jun 2022
 06:22:17 +0000
Message-ID: <0ec8de81-2aaa-8084-f927-89f0f72114f7@intel.com>
Date: Thu, 30 Jun 2022 08:22:11 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220628104354.4195-1-anatolii.gerasymenko@intel.com>
 <f1bc6014-1743-ec50-a719-639890ed6649@molgen.mpg.de>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <f1bc6014-1743-ec50-a719-639890ed6649@molgen.mpg.de>
X-ClientProxiedBy: FR0P281CA0012.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::17) To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5b104e7b-6264-429e-36ca-08da5a60e14f
X-MS-TrafficTypeDiagnostic: BYAPR11MB2887:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e692/QQDxHz63Ytcx7GAiGbgSUgkcNrx9H1rhwgqCxY7gaQ/wxcHeSz+xf4H0Hoz7e/2ig6M9HFG1lw90X9aTVpV0Fjr/xwx/8DQdIF/ySql8y1rPEQ1YqJ/DUZ9ABdh53M3D9oV9Uzxq7fbfDBjRp0eIqEhAqz3bUzeJd/b1dBqfAFHsEibG6Y9WErc5SSdX09gJvt6SmqutzeWr5uic40RiToU/Tw7RmRxyb2uAQURca9DHZ4PWC3QsbHMPs4Wae97snuvGGF0aa1bv9lqQn0lu1DLDCRLKj3HJC6mtNbSPu+bAOa3NitMW3amRrroIhabkPPZTMIojTH9HALlodnHuZC6OCNsZf0dsSjKTMQ8FgktkMtR9TS13PQDscNagzPzQW+i2UamcwbM6x6+Bu++Q45B/tOWYjgxHeFHiubZlS0LmHEvZNh2+MpQb7qvstJfhef3cBqlze4Mjl30MZmcp/xwueVKrPfh/5IAVBRVKH7kJhRmnZHXKsB4TANdTwdV85bFNlpwKw+fGIOO78WbpkMPebHB/VNprYb7s14ygs7tBANvMRUualMKsIRTlhVao4/g9P7O1I0IgNR7IzG0y6aUxi5/UkuRymc+oboJn4VZKizpQJw+apllJdmHa7I3wLkLO2LMQFf4w2lKpmLhqwgW2FJmj6jWextpxfOTQDDTvG6n4xpb++nrb4nu9MAx+cDnlQ3qC0bMPohy0iHRYpDjfm9LFEA4xI8jktt5RBnNivbITCauH2Mwc1bJnIaH+GI31USfyzDfE1y+pmJU269lKG+OymsrmUgZIyGxSkCvrTGCyr3c2Sy/icDBFoHnF+OIgOB6dNXdaoer705+//oYBu0sAoKUZKghljY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(396003)(39860400002)(376002)(136003)(44832011)(5660300002)(36756003)(8676002)(6916009)(66946007)(316002)(31686004)(186003)(8936002)(4744005)(2906002)(86362001)(31696002)(107886003)(4326008)(6666004)(41300700001)(6486002)(26005)(66556008)(82960400001)(83380400001)(6512007)(478600001)(6506007)(53546011)(2616005)(66476007)(38100700002)(168613001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzFRL1hYL1B2dC8wUExYK0doZ1RtczFTb29kZjRLOVEwdzBWUFF3SEx6OVlN?=
 =?utf-8?B?M1c0RXRGWWtld005Nm9mbzF1K3ZQZHlGdUU4dzh4emxaN1g0cnJjUWxsQTBj?=
 =?utf-8?B?K0JqM25OSllKY3dnL0FiM0paazBHUE5NYmpSWE5uajlhTE5uSEVRK2hIekJJ?=
 =?utf-8?B?V3U4b0JZb0xOL2svU292YXdFbnYwek5aMXRjRjVXWEtTbWhEOTVRRVNibzhl?=
 =?utf-8?B?WkhXZFJzTzA5TTNKa3d6bkJWSmJjaFJoa2NXRTNhZVM1QWk5S21PM2Mzb05L?=
 =?utf-8?B?VFZqT21qSkJKSUtGV2tvc3JPUHJMQWRBYzAxR0xTR3RjUnRFRzZXZ29qemM5?=
 =?utf-8?B?dVVPNWxsSXhHSDRPU3hxVzVibGpxMzVVNWJYSHU1bStWT0VFVDhZN3Rrd1p2?=
 =?utf-8?B?TnNrODJjVmJEMEFiRkF3dHhTRUhFK2xRV3JUbFg1SFRyOXhYblpqYjFIcTZy?=
 =?utf-8?B?UVJDWUtvTmNXV1Q0ay9KdGhvbWxZc1VmK0laWFNkWlRmOXNDMStnRUxtZGg1?=
 =?utf-8?B?b2F2dUYzSitQL3pBblVSNDVNc1NHVThNVnF4Y01yWDFqaEFwNFRFVnpnWDVi?=
 =?utf-8?B?QmcvYyt2TStybkh1c2hUK3JLbWVwZzlJYjROMUNvTkFGNkRGS2hHZC9uUng1?=
 =?utf-8?B?cnZDbkQyMWh3NkpHWmlEVDFsZ1BCV0U4c2FsZFY2VXY5NGZwRlZtM3hDSEdq?=
 =?utf-8?B?d2NNTndlVzdRT3dzYTlaRThVaHVNQjBQa2RUZEFmV096Tm8xWGhVeXFQT2g2?=
 =?utf-8?B?Nk1jTkplRTdRNm0yaitJNi9CSnNtcGxTZldsUkNkZEpDREIva1plUlhxeUdH?=
 =?utf-8?B?S2lRMitwNTE3OElvNzFFTGRxMlhXWXRBVkVXTEpERVh0MU5qVVRFVXpNc2ZL?=
 =?utf-8?B?TisrYXZtYTN6MUswRm9FRi9EdU82ckFGSHRVMWVzUUFQMTJ4NEM2MlRUVFFj?=
 =?utf-8?B?Nkl5dWZlYnhxTE5ia0JWZ2pvQnNSM25UN0hnL1ZYYitqRkNQZkVnT01aS0xH?=
 =?utf-8?B?MitMVUJIV2VodXJ6K0x3R1pOTkJKeThvRmk4YklkWjhDeStNWDV4TU5tRHFa?=
 =?utf-8?B?Y1phRXNvYWRYZTNYaGRwNDNhcEwzVEQ4T3RJUTFmeUZKNFNXczBjZE0ybGNC?=
 =?utf-8?B?Y3ZZdHNmZmE1aWt0WFU4blVtdkVld1p3ejc5aVBJK0FHdkxUeDJGTmt4WHYr?=
 =?utf-8?B?cDFDaHltalJpOG50ZzVzanJXcWd0bExpZ1A2eTZ0UHFLN3RQWmZqN3Z5OFVn?=
 =?utf-8?B?SCtkaGJvL1daUFE1WWcvSE0xVjdUR3NGTHZkZ3FORG5QOGpUY2FqazJnTmRt?=
 =?utf-8?B?TTQxbVNWaklnekNYcFNGMHJkOGhpYkZ1Z0E0UWprOGlEckZvb2hGK3VyQzhR?=
 =?utf-8?B?NW1LZTVzZ1dleVR5RnoyNDArZDlxUHhwdHBzWE50VUNjZmtEMTFkNXBpK2JP?=
 =?utf-8?B?YVRTcEdBbHFlT1FDcFdFdXdHS1NaQ29WR1RHZXpLSStWTms2SVZRYWJ0N2hm?=
 =?utf-8?B?REh4Y0UyUUlaZy82ZSs1enhFSm1TU2tyYU1SSjRJd0ZQTkdBNHJER3FjZCt0?=
 =?utf-8?B?dVBNemJHK3U0UzFIcllJTjFGVWo3RERKOTJkd1h6QXcrYUlSL0dUaEdPYzEy?=
 =?utf-8?B?SzR1NUxRcWpDNHZvb1Z0TnBFTUY3bE41eTRjbG9MbEpEY1dydi9say8zaEJz?=
 =?utf-8?B?QU1pNmE4c3hFZFJPU2ZBczhpUHFOTmxybDBHdG8rRVV5VnU0RzA4VGZrTGsy?=
 =?utf-8?B?dHNaWnJQSThIU3laTi9JR08wZ3Z5TjAvbnZxeUh6dzlwc0tFbFc5bkF5T050?=
 =?utf-8?B?Wll5ZnFQeG5ESlZSNFFRZ1ZhYUc4R1k1TSthamp6Tmt0U3JDSk54dU1qaUxI?=
 =?utf-8?B?Sm0zdCtMdEpuMFZJNEVoa2NLcmtNNDdJN0lkQVdIajEvaXVTOXlGMzJqa3RP?=
 =?utf-8?B?Vm15UUhJVFpWNWJPUG1wdm8xdktVUDJhY29tZ1N6RG5oNzM5VWUySEt1Z0xZ?=
 =?utf-8?B?Zk9RRzhQMGxMcXlnUXN4R0dvN1RqaEJ4dG5nUzVYRTNud3BlbmRjbU5oQTNX?=
 =?utf-8?B?bzNHNGVGVUcybWhwaHl2QUFlamF5TVRsUEEvSnVZNWh6dXlHZXUyV0RENm01?=
 =?utf-8?B?YU10ZGVjbytOVHZ0UHFxUGNLeURFUnFOckx4a1dwS3hvQnR2dm52UlF1anNr?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b104e7b-6264-429e-36ca-08da5a60e14f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2022 06:22:17.1959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JRHpy5cRadHli/LtIcSlysACIJWDilQMTeaAIpRaIwU2mbCVorkbGy6ILYQ0LnAwu1FSYMnJ65IMvKZd4s0dy4p4plAXhoYyjnC7C89+AxE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2887
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656570140; x=1688106140;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q84TC34EoB5dAWspV/JNldJqDWXELKtQkTSCX2mOh0c=;
 b=aTByQHeLQ9xiKURnvMnxZpYL3LOlOYUBdxtfJxIp5Tlhja9Ja+PGGR8T
 Z6lYycnjBzNYJBeR3jO+OvPrK4sKHW66QKx2Rjh+j6jcydJez0ce1yCJ9
 Hjgvb36UJmEj44ei+H5IC9zTgbg34Fqr3hdIIt0nAEBAiwn0MMV7JXmEw
 /5rAcEQ1lW5ovhZQn1Pwg77EKdOHVFxldKVOoBZRLMC359dcG9HGZQLEJ
 ulS4MdkJ5VmmPH9pZPZlUwm+RxM12CpbnZtDVBVCgx0eoZOqSBo+LEC6S
 09dxXpRz2QpSHfp0GP6nsLCc8oHfCfk/ZTlBJMBDfPtrVBnpJnEMJsxg0
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aTByQHeL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Patches not threaded below the cover letter
 (was: [PATCH net-next 0/2] ice: FCS/CRC stripping control)
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjguMDYuMjAyMiAxMjo0OSwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gRGVhciBBbmF0b2xpaSwK
PiAKPiAKPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaGVzLgo+IAo+IEFtIDI4LjA2LjIyIHVtIDEy
OjQzIHNjaHJpZWIgQW5hdG9saWkgR2VyYXN5bWVua286Cj4+IEltcGxlbWVudCBwb3NzaWJpbGl0
eSB0byBjaGFuZ2UgRkNTL0NSQyBzdHJpcHBpbmcgZmVhdHVyZSB1c2luZwo+PiBldGh0b29sIGNv
bW1hbmQuCj4+Cj4+IEhhdmluZyBGQ1MvQ1JDIGNvdWxkIGJlIHVzZWZ1bCBmb3I6Cj4+IC0gbmV0
d29yayBzbmlmZmVycyB0byBpbnNwZWN0IEZDUy9DUkMgY29ycmVjdG5lc3MKPj4gLSBmb3IgYmVu
Y2htYXJraW5nIHVzZSBjYXNlcwo+PiAtIFhEUCBwcm9ncmFtcwo+Pgo+PiBBbmF0b2xpaSBHZXJh
c3ltZW5rbyAoMSk6Cj4+IMKgwqAgaWNlOiBJbXBsZW1lbnQgRkNTL0NSQyBhbmQgVkxBTiBzdHJp
cHBpbmcgY28tZXhpc3RlbmNlIHBvbGljeQo+Pgo+PiBKZXNzZSBCcmFuZGVidXJnICgxKToKPj4g
wqDCoCBpY2U6IEltcGxlbWVudCBjb250cm9sIG9mIEZDUy9DUkMgc3RyaXBwaW5nCj4gCj4gW+KA
pl0KPiAKPiBGb3Igc29tZSByZWFzb24gdGhlIHR3byBwYXRjaGVzIGFyZSBub3QgdGhyZWFkZWQg
YmVsb3cgdGhlIGNvdmVyIGxldHRlciBhbHRob3VnaCB5b3UgdXNlIGdpdC1zZW5kLWVtYWlsOgo+
IAo+IMKgwqDCoCBYLU1haWxlcjogZ2l0LXNlbmQtZW1haWwgMi4yNS4xCj4gCj4gQ2FuIHlvdSBw
bGVhc2UgY2hlY2sgeW91IHNldHVwPwo+IAoKWWVzLCB0aGF0IGlzIHN0cmFuZ2UuIEkgd2lsbCBj
aGVjay4KVGhhbmsgeW91LCBQYXVsLgoKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
