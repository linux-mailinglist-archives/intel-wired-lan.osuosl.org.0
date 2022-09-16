Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D32135BB164
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Sep 2022 18:56:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C901419FE;
	Fri, 16 Sep 2022 16:56:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C901419FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663347410;
	bh=J7GPJ2N/2fHcFhGEWQBUiq7od25zLuMUPHZcCy3pWfw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5OLNA91CpBLwl3xErBLN2YVZUM0bXGmRLeHlHFguGzHQZKOmj+N30L+HvaZu0n4FQ
	 Jt7msdkFbkZyH+9zt2bOto3KDATJomnfwEXjsJA2u9bPhcVHZ6krmbx6ve7JO9gzsz
	 GLHshzlZnzS/8eZMmWKGKbJwttqRFrc21UxMnPDRgnilIJd+LyD3vx/6KFdSXTyJM2
	 RDDUWOme55ZdIQBKIvbPQB3e66bXndqnv3PZ5NkfqhhFNQd6+ao9Mc0Kx4dZ71Po+e
	 yIH6IgkSUggM3HpVDRMY0lwU8ekssynjY8J7KfhDg9X2NNoMMy1M7RmdamtDRC0vDY
	 jR0vGPatN7Cqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eJAnSPYzja4Q; Fri, 16 Sep 2022 16:56:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C41EF41A09;
	Fri, 16 Sep 2022 16:56:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C41EF41A09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B5011BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 16:56:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 273E941A09
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 16:56:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 273E941A09
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bOciFb1feaDA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Sep 2022 16:56:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EE1C419FE
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8EE1C419FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 16:56:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="300395269"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="300395269"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 09:56:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="648326315"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 16 Sep 2022 09:56:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 09:56:40 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 09:56:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 09:56:40 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 09:56:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CYgDuuQSe8FlCbFISLLgqjsSTrWalOS6bnucWgjI2fOITf8twb03mjAeEtLsAxK8Rpt/i/hIZrR+/RPTeNXFEx/IFfBUl19cIgrdcjUOSQgDYPYb7oFDnVISiP7JENMFdthUP/LBiWPZa7W0Rz2ETXx0/irLEGupOJS4uwOw1YrJHKCDTwSfRgI+3wChn7sZBkixvMnSu138eUzQ4Cz8MB/yVXBPDE/LXhoivKShzX5VLwt0mbGsius4TmMbdUor2PJQ62UKJ72qKmDzIlsMemrtwfBAzAlMo2sK9RfNfrDdyxUkmRoq4IuYMF7IaKUs8jdPWLIPFGSblnw7AQY/hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RxOQ1dskrQIDMAGmPomQuLIO3L+KrSQvZWi8ti2Ow8A=;
 b=hW5skPScu7DqVz5RWSmBwIff3cQvVemp9TVQpoUc0VvbE1cMv74PpUm+uk5bP9HjOFI8GoY8OOC0kUJOGLJnIrcM5g5m/ODYNxi7OVLS6wFlTZW2+37U0EBKfUQXL5EQGxQJ5gaHjvvL6ie3i3/NJ1rcRx6YWLu9DVnQN9/apg+Y4W9ZCsxsyWApJrDiHgSkNXcZvzMsukzk3Cc06GHyTYrYMI79HbpEkz5eUUcwzonhi9rVcDvem5VsoJ1C8ya+sPsj8Nsc+cu1T5fWwKjOUwxt8z6dyXTESOTJ8ZD399F50IytcQQx/4ymW3/KRbfRqnrZBJVkNC5MnloyO+fZVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH0PR11MB5644.namprd11.prod.outlook.com (2603:10b6:510:ef::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.16; Fri, 16 Sep
 2022 16:56:32 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 16:56:32 +0000
Message-ID: <ba4d5bb2-9579-9bc1-cd54-b931e022b3d6@intel.com>
Date: Fri, 16 Sep 2022 09:56:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220916131440.566617-1-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220916131440.566617-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: SJ0P220CA0016.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::23) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH0PR11MB5644:EE_
X-MS-Office365-Filtering-Correlation-Id: ea33bec7-7c21-4e7f-8ef1-08da9804684a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u/t4zzcXC2X8vdLHCArfRiaBjEFf09OgN5lNWN4KhEQLcR04oPn9ueGDCno/oW3krGaGjvuGwZiZUfEFcsqa9Xs179l2mZvOflsuBWkN3TWkuHe2783iUKD7RPLU+nFweNlQ6NbXYknp7HDzWSEzPF4a76dYk8+Y/ZDsQSjnLUvyn9hunqtGKQJBx4VMK+Ie4ypf/vTQVWOPQwP26v91a1LDaOeyhxxKAOnPEMp/ttYRgCc4U0KULQo0f4WMF6syhbQZw6LgQqL1QzQ9q/jRQeprG2UamHoiHEMx2ZGHguvGlOtLG2Hs1WRKOs9uUSap9UqMryf/oZnm0csmAL9o28srKhG9fjPjLXnKbDPB6TuuO8qVDkZxXgZzWd85QNhlVMxC8+b4/0Bi7+3Bnhr1W15UpgU3TsXXFwyC8bp0yrKpgm+OJWUREtw+gg9r8fELBUmwoFpxbGCEdwyB2mZ9/cZKw2gLRRregi8ajihFfJ7O2najk+hBUta1As8jLu/YWntn0RoDG1mufAGJYzTZbQ706gQTzW5BYiOOWHuB4Sj0m1FWvwyfmDhj5m7dbQTdhF3bOkrMsw98kbDhUayhOz6oCMPd5yLN0T0z2xZO1JHnLMeCp6xiZ4AufIJDBIcSJg5xS7K/PkpIGUsGi035eFjVTlnw6ZTB8dYLeSF67MePFzP49HMY+C0wfa/UjsFK5OmPT//wq+g/2YeqQMY7hGQ1wLAR+rI5NaXOs3DuBRK73CD0sr9dxFkEnRlBjjc1op3TStgT913pObzDJzkBWMlqbHEstljJvaZr362JBHJTnSswHGLkpLj9H+fhHLnCNzGqVS4KeLQNqQNOz3lANwRC5rcH5oI/kwmeUVvqVG4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199015)(8676002)(316002)(38100700002)(36756003)(5660300002)(31696002)(86362001)(66476007)(66556008)(66946007)(8936002)(2906002)(83380400001)(2616005)(53546011)(186003)(966005)(41300700001)(6486002)(6506007)(478600001)(82960400001)(26005)(31686004)(6512007)(45980500001)(43740500002)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkkraFd2MVkrbHZKWFFTMmNyMDRTNFA1cDRpVlFicllZU0ozb1lDMkd3TE1v?=
 =?utf-8?B?Yng3Rm1IRHBIM21FaHFVMWF0Umt2dWlFN2VaTVVYUkZZWVVFWFlOa0ZkdUMw?=
 =?utf-8?B?ODNmLzlFb20rSEF0NTZXYkI2UU9Kc0xKSE1BbEh0NGFpQXF5VGI4bDVITWtD?=
 =?utf-8?B?VzYrdzVEUDRXWlIvczRhcGdQSVJZaXdvSlZXQVlISEV0V05GU3JSQlpkWkFo?=
 =?utf-8?B?M2xORzBxUzFaeDRZbkxqY1lRakEyd280WlNYQ2ZnWmtUWFFBT0NoVTRlQUg4?=
 =?utf-8?B?RUprQ0xMellmaFlqUWZHMTBPYXM4VWtuWEFib0tvdVZBMkxiTE5UZDBLZkNn?=
 =?utf-8?B?bUhrWjl5VXc5MjVMdndFeXdpTXI1WDlkbHdVRmFodklSL1BOOE81VXhsUE40?=
 =?utf-8?B?Z2Y2Y0ZhNjQzaGo2ZmlBSDVZcGpabm5RRm9KaVBhS0hyR1RmS0IxdmJEckYv?=
 =?utf-8?B?cE16aGdIa3Q4YzBRTFlkMTMwM21WR3lkRmhPclorLy9IWUtlU1laWTZ1N241?=
 =?utf-8?B?OXB3dHJnTkhQdzFFdUlSeWV4Q3gxNlkrRWdPV3dFUytZTS9Oak0yakdUb05u?=
 =?utf-8?B?a04yRkdORC9BcExSRy9jd1FvT1k2ck9VRmhMaGFBYStmVWxNSHo2ZFBlNkZX?=
 =?utf-8?B?ZFdyVHpuOUViMzdWVWRXbW43T2M2UitkOVlRU2dMZEZsTFcvalJsRjQyaDRW?=
 =?utf-8?B?NGxJUWwvQy82VHVialpGTnlvZGpsSjRiSWc4UDVXSmdSZTB6eHh5bnFJY0Zp?=
 =?utf-8?B?Qnc3cGZRS0t2NmU0KzVZY1Ewbm9IZFhIVWNiSi9pVnJObXJTcTd0NE4zNHpy?=
 =?utf-8?B?b3Z2eXB1ODdaa3hmOE1xUGxkenBiQ2FsNnA3L3dtSDFkclJHZzFOVVI2b3Rj?=
 =?utf-8?B?Z2tRcHBRclpmZUlvZUMxWk9iRzQycE5IY3F1TnFMZGNrbGlUck1RZzNuNGds?=
 =?utf-8?B?aDJMeGRSNk55VkNJMFZTN1lwQmxIU3ljclZxd09iQnZYb1VieUp5eEg1c2ww?=
 =?utf-8?B?MnpBOFR4WnpreCtmU2Ryd2ZGSmpCMWkwbmRaVFRjUW1Bc0xDMXBCKzhHeFM2?=
 =?utf-8?B?STIyY09IV3M0cEErK3czZkdiQ1ZSSVFtOW1BMkhkSlgwSCtrVm5OUTFUV09F?=
 =?utf-8?B?NTRDdkxTdWIxMVBvMHUvbGhLMEZSYU1ucVppWnlSUzZHMXJlaWxsRlJyMWVu?=
 =?utf-8?B?YitQYUIzTVpwbUVJNmFsbFRCUGU4WG1IZDlxV0ZIdDZQNjRLNmVXUGs0OHg0?=
 =?utf-8?B?cE92bHFFYzl0N3F0VmhwSHBOMmpBSk5HUUhKaWxFZE5SS0tEYThDRHZLa0Mv?=
 =?utf-8?B?MzZKbmk1YUVuMXhvYzN6dU1DOXRFbk1URk9ocXJBZGQzRC9JaUdBcnNHUFlH?=
 =?utf-8?B?YVRLelpYWURPQ3ZpNWJhcEJKODJacXduWXJLV0FHVDR3VnEvdjh5YUhUckQy?=
 =?utf-8?B?WUZsRUhud3NKdUVRN0I0SC9HVFQ3TElGeVp3TXhvTzY2Ukt6Ni9sZDZ5Vkpi?=
 =?utf-8?B?aGNGTVBWZnh2SW02clB3OUhEdlZtVDNvOHZHVENhOE96Y3Q1OFl2YktWVlBq?=
 =?utf-8?B?UXVZVExlYWlOUkljT2hNSHVsWUZUUVBrcXZsMkJwSTlFR3pHaG9mU1QyckpV?=
 =?utf-8?B?YjlSSW1rQTYwQmMzdXJXOXorY2ZlOXptN3BVd1Nhd1krUjFPNFluR2VhYjlW?=
 =?utf-8?B?clp2Y2pTOVJ0ZkNtMDFZN04rZysvV3VuQmRVNk5oQytFNGNqWlU4YzZWdkhF?=
 =?utf-8?B?Y2N4emcyQXBCaENvTkZHNTJiZkJCYm1XYkR2dUpHYlI2aW05OWVwSVZFK3hF?=
 =?utf-8?B?VTZGVTBHaGJ5WlBYckVFVkdyMzlNOWxlb0laWGJ3N0dhM1JHa09hcDJLKzZN?=
 =?utf-8?B?dlhBM0YyUndPVzB6QU81eDJxZFVVL2UzZTVWemtrNXdwaFNuYTFhQ0E1VElV?=
 =?utf-8?B?aWppVWZ3ZHJhUUJKOVFVTDNjQ0ZKczdLWXRONHRUcGFhUTB0RjdvekNmd3V2?=
 =?utf-8?B?TVFadDUycmVubnZ3cEI2WTJML1RiK2oxbDlOY0ZGQk8zQUNTRzhmb3orMUdL?=
 =?utf-8?B?c2Rmd1g3ZnJxUzBSVDY0aE93b3JKVm9YWEFZV2ZDOWtsVUZwUldaYnlBejh2?=
 =?utf-8?B?eC8rQjZDYzU2U2w3M3dSQ1Y4ZDlVNDA5cDhpLzZ5MlRuMUl6YkEzQ1B4ekhE?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea33bec7-7c21-4e7f-8ef1-08da9804684a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 16:56:32.5697 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i/oxxHlQzoe7L870OvxcscUyChFYxQyLJADL2tAFgPDDDzuNIcQgWWBmlFiIY0qwsG7jz4TbYBC40HV6DDR1B3h00pVaOFMwKZrHjOxVPEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5644
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663347401; x=1694883401;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4UtlskxCNY/wBE3oGk6ZhU+QeROVO745jHEn0L9w+pc=;
 b=n/K1kpML7Hy203iFm/5rawMRl6+tTfZqJdsb0y46/Q9mxsR7atdDSMzW
 NuT1KF8tGVWW453ydj8hwvikEBfgrnKvR6EbuK9tmYbqCv2Pp15Qst5sj
 FR+MRsNwKZrKApP1rbQL5VUpaBB5M4fdS90XjMPz/TfOzWImTGa1/8DUO
 jnIocL+DedlGC3BL7aeU0aAyT/CwoTqt5oNLqDpPh54Lg/2aVbT24DtCU
 YhxAsJbHcYmPcSElklluD+ul7dyz3rtk5Pyl7gnY6Ilx6nRk9xW8EIbnv
 W3OAYqE+Hf11AZdpt+GYnNnnSdg+RAoN2vl2brLvmdkKPGLY4wYWOPoLc
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n/K1kpML
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: Add GPIO pin
 support for E823 products
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

On 9/16/2022 6:14 AM, Karol Kolacinski wrote:
> Add GPIO pin setup for E823, which is only 1PPS input and output.

Is this different than this patch [1] which is already applied?

If yes, this should be a v2 with a change log. If no, can you please 
clarify why it's being resent. There's no additional information and/or 
cover letter so I'm not sure what the intention is.

> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c | 25 ++++++++
>   drivers/net/ethernet/intel/ice/ice_common.h |  1 +
>   drivers/net/ethernet/intel/ice/ice_ptp.c    | 64 +++++++++++++++++++++
>   3 files changed, 90 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 2a4b68ef7d55..11cc17372b74 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -193,6 +193,31 @@ bool ice_is_e810t(struct ice_hw *hw)
>   	return false;
>   }
>   
> +/**
> + * ice_is_e823
> + * @hw: pointer to the hardware structure
> + *
> + * returns true if the device is E823-L or E823-C based, false if not.
> + */
> +bool ice_is_e823(struct ice_hw *hw)
> +{
> +	switch (hw->device_id) {
> +	case ICE_DEV_ID_E823L_BACKPLANE:
> +	case ICE_DEV_ID_E823L_SFP:
> +	case ICE_DEV_ID_E823L_10G_BASE_T:
> +	case ICE_DEV_ID_E823L_1GBE:
> +	case ICE_DEV_ID_E823L_QSFP:
> +	case ICE_DEV_ID_E823C_BACKPLANE:
> +	case ICE_DEV_ID_E823C_QSFP:
> +	case ICE_DEV_ID_E823C_SFP:
> +	case ICE_DEV_ID_E823C_10G_BASE_T:
> +	case ICE_DEV_ID_E823C_SGMII:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>   /**
>    * ice_clear_pf_cfg - Clear PF configuration
>    * @hw: pointer to the hardware structure
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
> index f339bdc48062..858b89a39cb6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -198,6 +198,7 @@ void
>   ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
>   		  u64 *prev_stat, u64 *cur_stat);
>   bool ice_is_e810t(struct ice_hw *hw);
> +bool ice_is_e823(struct ice_hw *hw);
>   int
>   ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
>   		     struct ice_aqc_txsched_elem_data *buf);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 011b727ab190..408beddc1210 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1788,6 +1788,38 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
>   	return err;
>   }
>   
> +/**
> + * ice_ptp_gpio_enable_e823 - Enable/disable ancillary features of PHC
> + * @info: the driver's PTP info structure
> + * @rq: The requested feature to change
> + * @on: Enable/disable flag
> + */
> +static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
> +				    struct ptp_clock_request *rq, int on)
> +{
> +	struct ice_pf *pf = ptp_info_to_pf(info);
> +	struct ice_perout_channel clk_cfg = {0};
> +	int err;
> +
> +	switch (rq->type) {
> +	case PTP_CLK_REQ_PPS:
> +		clk_cfg.gpio_pin = PPS_PIN_INDEX;
> +		clk_cfg.period = NSEC_PER_SEC;
> +		clk_cfg.ena = !!on;
> +
> +		err = ice_ptp_cfg_clkout(pf, PPS_CLK_GEN_CHAN, &clk_cfg, true);
> +		break;
> +	case PTP_CLK_REQ_EXTTS:
> +		err = ice_ptp_cfg_extts(pf, !!on, rq->extts.index,
> +					TIME_SYNC_PIN_INDEX, rq->extts.flags);
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	return err;
> +}
> +
>   /**
>    * ice_ptp_gettimex64 - Get the time of the clock
>    * @info: the driver's PTP info structure
> @@ -2239,6 +2271,19 @@ ice_ptp_setup_pins_e810(struct ice_pf *pf, struct ptp_clock_info *info)
>   	}
>   }
>   
> +/**
> + * ice_ptp_setup_pins_e823 - Setup PTP pins in sysfs
> + * @pf: pointer to the PF instance
> + * @info: PTP clock capabilities
> + */
> +static void
> +ice_ptp_setup_pins_e823(struct ice_pf *pf, struct ptp_clock_info *info)
> +{
> +	info->pps = 1;
> +	info->n_per_out = 0;
> +	info->n_ext_ts = 1;
> +}
> +
>   /**
>    * ice_ptp_set_funcs_e822 - Set specialized functions for E822 support
>    * @pf: Board private structure
> @@ -2276,6 +2321,23 @@ ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
>   	ice_ptp_setup_pins_e810(pf, info);
>   }
>   
> +/**
> + * ice_ptp_set_funcs_e823 - Set specialized functions for E823 support
> + * @pf: Board private structure
> + * @info: PTP info to fill
> + *
> + * Assign functions to the PTP capabiltiies structure for E823 devices.
> + * Functions which operate across all device families should be set directly
> + * in ice_ptp_set_caps. Only add functions here which are distinct for e823
> + * devices.
> + */
> +static void
> +ice_ptp_set_funcs_e823(struct ice_pf *pf, struct ptp_clock_info *info)
> +{
> +	info->enable = ice_ptp_gpio_enable_e823;
> +	ice_ptp_setup_pins_e823(pf, info);
> +}
> +
>   /**
>    * ice_ptp_set_caps - Set PTP capabilities
>    * @pf: Board private structure
> @@ -2296,6 +2358,8 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
>   
>   	if (ice_is_e810(&pf->hw))
>   		ice_ptp_set_funcs_e810(pf, info);
> +	else if (ice_is_e823(&pf->hw))
> +		ice_ptp_set_funcs_e823(pf, info);
>   	else
>   		ice_ptp_set_funcs_e822(pf, info);
>   }

[1] 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220914100429.261290-1-karol.kolacinski@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
