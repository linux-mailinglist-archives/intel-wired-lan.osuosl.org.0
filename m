Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D035650BD51
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Apr 2022 18:43:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52DE041BE3;
	Fri, 22 Apr 2022 16:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UfeHeNP1TsC7; Fri, 22 Apr 2022 16:43:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 055F641BB8;
	Fri, 22 Apr 2022 16:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A816F1BF842
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 16:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94FF483F44
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 16:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N2Uw_MCUxoJy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Apr 2022 16:43:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4240D83EEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 16:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650645825; x=1682181825;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=81WvpPNyZTO4CjIwHlRqhRh6R01KUQZbn4JGyjA/ejs=;
 b=m9Sl8ZxyJSbQvZOibGq1XoYpECYsEnjKsGhR74+2ALIA1qQZe0ArwRSR
 pa3U9lCIlu2ADyIL4kvEEV1HuEwhRZ7O4ZXSVEwqEV+r6+no+K/KccWaf
 /m7Kusuduxu3YE/8bY3TZ4djrf8vs89f5oW7ikc2H5TR6hteUFOXwE6FP
 1sZzfSmG1iXUT5fEhbNyY/Gfjl9jdjK2qjfAzTL+BY6glbro24Aqfg9HK
 K6iD5ZXlcuabITOUFSvUeAb7AgyG4IQaoRQFZSNokamuUrvkEwmKxZ0Wl
 cFXYKBjc2INUOSCdXbr/Jfz4H3/u8wvPUu+4WTweS2imbxdLPnqGt/JLs A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="289845471"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="289845471"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 09:43:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="530926184"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 22 Apr 2022 09:43:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 22 Apr 2022 09:43:43 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 22 Apr 2022 09:43:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 22 Apr 2022 09:43:43 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 22 Apr 2022 09:43:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDL0wQ11gm7WDDegKm3BPIpcMMyhZbEiUnqbv01z1Ul1gzQba7KOn1wfMdzOPHe4yIUZUtqrdgdD/idcahI4+gECeGDS0qQuk1jmksSBnlCZODinqytOqqo+X5jHK+zAyM1p3KPeRo3EqhENtHp5OOgPtTnh/rpHerRWWJOUQyzMZF2onbiFDdU7c7z9wCccjwksgUTqwwMRw8rMAtuhdna28RaZH+iAXDFO+NwOpPibjO3Tp5LiqLEr9+y02VzLXNMsmBh6b77MHXqXB+JHK4tLcxgDMZ0CpOtp0DOmAG0cSnOeEvBJ7cPHFZZHK2UNM3vAp2KIvHM3z1dBQFR3Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MIewwFQUeOh7tBeRrthkhet7p3srCE3pAnDqF8oDiY8=;
 b=ETlp0jQi3CD+67h4EBc8vZl3MwG8Al7H6c/KTjfjB0Z6aYkmzGZFyDZQsiCqULiq9GBLH2HlrNpIS/leVxGVtNxoNFRqPwEc/SFlq4OqdfVZVIgwmipZJw0C690GPG6lq3dag/LUjj3xbwK5YXbK3iSlB1+5AC/uK8NBi1og57dnmpGRnuo+nehQaoaRRZ/sEqo1dcG5fwNPQrIdFxVu8lIx6DF+NkS/7lXFExQLDkmqCq36QN8VeXa8GVlECLIlG0NOjcsxzI0lzACvjxmJXN9gvxALfnLiVhKWb4nutg+9BdEawOkKd3XXhsuqc1Yq/aIjKWGQqOJnV0+tsgMDhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM5PR11MB1947.namprd11.prod.outlook.com (2603:10b6:3:110::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Fri, 22 Apr
 2022 16:43:41 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5186.015; Fri, 22 Apr 2022
 16:43:41 +0000
Message-ID: <c4e1ac60-d320-869d-5c44-c48630a1f8ce@intel.com>
Date: Fri, 22 Apr 2022 09:43:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220422114257.2238368-1-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220422114257.2238368-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: SJ0PR05CA0067.namprd05.prod.outlook.com
 (2603:10b6:a03:332::12) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8184ec59-6ee4-462e-9f66-08da247f423b
X-MS-TrafficTypeDiagnostic: DM5PR11MB1947:EE_
X-Microsoft-Antispam-PRVS: <DM5PR11MB194718723128843E9AC5E064C6F79@DM5PR11MB1947.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZGBBxStrhZLnzlq+vkyYQ05iCnUs5uHeuhwcjTrcXyApYGcRKSgKd5vDlWwClibfdKW/64PY1SrAtmArT0tVIS+nW+mZ+z8fg8Nf8r0pIhXVMa4R2JxU0wQHwtM7VcL/qkP54/BuYSAg6g/92vWEOsrF8mmsfHEt1XS5fAr9Msiaw87tA5SBCAbaeMeIqsjKJHjjY0IroofDvqlYcbNpxmAgQdxEvFB84eRrDqp6e6Hkc0XUmnQ5SIM0pjhQGca15fzia3BllqnBc2reQ8Zo6XwniSq4ysjsb727YXx2ohuvtnHOZXH60KVD4zbRcv27LyDwX6Fv8vWFuXZVYxd/OralT67dYmbHFFF0V5VBBET0k3EgjqKbah+0OBVUkgJrINmsthyvixxxAdZm6wQDRw8AicdeMVgNBUkZQ0t2PLJ7AfktwznCu+I9KYbF9n9Rz+JZRhxMELvvZQLYARzsi4ri6pzD84rvovCHLy+lhc+Tlqeki9447z2MxVPZuYGLdEea2Rgj0MuJdPRSzXGGZZZKENpQQ7krP6OL1jRlbQtHAjjbDt8A+S/HS3FcM2YQmc4VWqUUZWSv5MIILaqDv28Gjb7N9le/O/vGAxXRchCaAMssulLywAxF+VPKLYzxKCNJVBaVZ5JcSRSA/q0GsAvqaS6+9hKal1ABnFR+Y93mrxOk4R/T22M50WINC3pCc1SRooqGkBb0J1a4Mw0HE2SRkBOIgPXjkA2Gm1lIzcIkXqqI7MimTXjKqZ+wlbDP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66556008)(83380400001)(2906002)(66476007)(36756003)(26005)(316002)(186003)(6512007)(31686004)(38100700002)(8936002)(53546011)(2616005)(6666004)(8676002)(6506007)(86362001)(5660300002)(508600001)(31696002)(66946007)(82960400001)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1BDcXdGUVV2Nk1vNXVZdWEvd2ZnRHMwWUJPS0ZvRGQxOGQ5M00vWUNBazE4?=
 =?utf-8?B?anVqdDUrVDIrUzBKVGRmTjA4cmkxMGdaRlNlZGVRTHJsOW9Qc3Z1dmczVjdG?=
 =?utf-8?B?eE9XbE1BN2x0S09qK3dndE4rSkJOc2gwSVhZVTgvUTVka1VkL1lqYU4zNTJL?=
 =?utf-8?B?UHhJYm5TRXM2WGdUci9sOWpGTlk4OTVlR3grWFNyQzdpSXIvdzFOUmtKRWQr?=
 =?utf-8?B?aTFYT2NzbzA3VW5MZmIzazZKUVlmM1I1TnpORHo0dWxoSGlsWXdtUG11bUo0?=
 =?utf-8?B?YlhmNStEcEYrVlpReGRaa2gvZEhGcWRYNTFGTTZlQVpZcFkzMktzYm5DK0pl?=
 =?utf-8?B?bDhwdmJrdDJwemExZnFLVHFIZ0U3VkQwaTNIdDV0ZDMwc2NnZkxkMXIwTFU3?=
 =?utf-8?B?ZFhxdlFRRnlRTnRIekhlSDFBcG15OEp4OU05WHFSNmJRald6RmRMamtwcjdt?=
 =?utf-8?B?UWRXdE8wUTBqdE1zYkZGK3RHc29VVU9hVHg2eWQxUUJZcUEvSDYzcFNVdURL?=
 =?utf-8?B?dXVHY0pDLzNFYU5TSFRxWXhGNHNmdXRhUExEalM3VUlQYnVlUDV0bGxCNkFw?=
 =?utf-8?B?Rks0Y3Z6c25lLzVzN0xNZEQ3ZTQvUnBzWndWWURmbWJNZnc2Tmx6bEFxVEVh?=
 =?utf-8?B?OGtuUVJCUUNBa05pTGNXK1J6RTFTL1h1c1FiT2RUazh3S0UxaEE3U0hhWjFq?=
 =?utf-8?B?UUxzQVNpQnhqSnVvSGEzcnMvT2RCQmxncWNZT2pTUDNxSkJsdTNlQ29GbExB?=
 =?utf-8?B?L3VMaVcrZndJU1NpaGVOZHVsMDFhb0ljQ3lrOXNVaWp2eXpoQ1g4N1F1SUFR?=
 =?utf-8?B?SWVabk5LdFRzRHhLbXhUOUVxbVphRFBESDZpanlCYnpDcU1pcHo4U2RWVWR3?=
 =?utf-8?B?WVFxRndScG5YV1orVUZIQlloVFVPeWVWNENoK2d0aHF1VHNLY0lhdEpPNVZ5?=
 =?utf-8?B?YmU5V3k3amIrMmsxeElqMXZKMEtqUTFKQlB6S0p2eUVIWm5NT0x0ckVmRFdN?=
 =?utf-8?B?L09yT2pBYzRXS0c0WEhjUFRPVmtFNStzN1pRSDdINTZ3N1JQWGp6UzE3aHp0?=
 =?utf-8?B?ZXVFM2UyK21jOEx3dHVtbW1tVkYzMHhmMmx4b3c2ZDU5ZFkxLzB4aWpSN1VV?=
 =?utf-8?B?U0Q1QkdOTkF6V3VZVlNiZnFOd1JadHRVTWRpZ3lwYzdmZndNRTBSSTRQdkpU?=
 =?utf-8?B?SVlueW9ZbFpSaGFCNXNXcGVwTWE5QzdHd3BlUUtrejdXRWlwMnlUdE1CTnpi?=
 =?utf-8?B?bXZnWG5tYmpDSVVZNGZzKzg5cjljYWxoMmo2N2IxMml0aEIrbGZxUlJuRXZH?=
 =?utf-8?B?UHpJbUlhN3Job2FYbEY0aHBLaGhTT09qZzc1bzI2RVBaTGlDNVEzM2F3M3Vw?=
 =?utf-8?B?c0hXOUZMY2lZZEd1LzZxQmFLaE15d1RMY2owZndSVUlQR3ZFMW9BaWtVVEZK?=
 =?utf-8?B?SWpFNXJGVmJJa2JtbGZUZTJuVGhoMERITkVBNWR5eDZVU3hSOC9IRkIweVp6?=
 =?utf-8?B?L0lkNVBHY2ZBY3FEbFFmWTRVdWRKcEFjdGFmcXdkMzZIVkEvR2tPKy9BTGdh?=
 =?utf-8?B?NHZUaWhSOGVSbkc0ekpoWXFPNXVkWVNrODkvQm5Wa0lXV3BjOUVlaUtaYmph?=
 =?utf-8?B?K3NxMkpaeDR4SndVSVlxQlh4RkVMRWw1Y3Nhd3kvVEczd2ZOSXBINndlMUlC?=
 =?utf-8?B?ZWFnaVVlc2IwSnpUWFVFYkp1SFJmVGk5YlN1Ym1McVJsdWVtcFYwQ3JwTVVv?=
 =?utf-8?B?R2tDeGx6MUlkN3BDd0RNc1lJQWdXOXgycHVnTXB3S00vOTU1NkJzUWFGbDVo?=
 =?utf-8?B?MkZGT2RnbnpERlVvaVNYbk9YdmpQOHV4b1NvWUJOOFJZWEhvVUV6N3ZvYnVL?=
 =?utf-8?B?Wi95Ukc0c1ZzS2xLQmZSZXpRTGlQSGRLVzZOa0tFMEdtb1Q0YTBMY2ZXN3JS?=
 =?utf-8?B?cjVnZFpNNjA1ZFB1Qjl6eGMvQ3p1dTRtZ25RM1Jad1BHbGhwTlkzT2lHYnZy?=
 =?utf-8?B?ZGlOY1dGQ0paODkrOHE5bGNDMEs0SmhRTHdaNWNPdWRGVnlQYStHaXhOZ0w1?=
 =?utf-8?B?SGpZZWorOTNjbnpyZFgrc05pVmVPUmlKdXduKzZuNWhpL2JZNVFVNEFBbWlu?=
 =?utf-8?B?cWlwekVjSm5DZFdKV0trcVIwR0wrZDJmR3pDQ1RSUUgyU04wb0dtdWRIZlA0?=
 =?utf-8?B?VkdsZ1VyWWJTdktsK0ZGajFGMUpBQ0dxRUdMSEwrc1hJR2ZvYjVQa25zTzBF?=
 =?utf-8?B?d3BXdktmMklJTExMZG1nalVsZ2hqNlY0SEZZVlQvZFNBKzRPUDkvSmN3UjZM?=
 =?utf-8?B?LzBHTmNTUE1qTS85U3pmQVRWanBSdFREUnpBSEYvMTVabVA2dlJoeFhjZXcz?=
 =?utf-8?Q?rNwiKbxbJzbiVsbM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8184ec59-6ee4-462e-9f66-08da247f423b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2022 16:43:41.8402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XqRPuBcssNhDC7GbS1YRzJsF3zPykOZeCeLcZ4ofrKerAtXiThO/LvCjTIisyx7VRunYcetn+j/75buXnGyLX2pCWQ92tM9fCm3Rl2x0kE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1947
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-next 1/3] ice: remove u16
 arithmetic in ice_gnss
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDQvMjIvMjAyMiA0OjQyIEFNLCBLYXJvbCBLb2xhY2luc2tpIHdyb3RlOgo+IENoYW5nZSB1
MTYgdG8gdTMyIHdoZXJlIGFyaXRobWV0aWMgb2NjdXJyZXMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBL
YXJvbCBLb2xhY2luc2tpIDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZ25zcy5jIHwgMTEgKysrKysrLS0tLS0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9nbnNzLmMgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2duc3MuYwo+IGluZGV4IDU3NTg2YTJl
NmRlYy4uOGE3ZDY3YzEyZmY3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfZ25zcy5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9nbnNzLmMKPiBAQCAtMjMsOCArMjMsOCBAQCBzdGF0aWMgdm9pZCBpY2VfZ25zc19yZWFk
KHN0cnVjdCBrdGhyZWFkX3dvcmsgKndvcmspCj4gICAJc3RydWN0IGljZV9odyAqaHc7Cj4gICAJ
X19iZTE2IGRhdGFfbGVuX2I7Cj4gICAJY2hhciAqYnVmID0gTlVMTDsKPiAtCXUxNiBpLCBkYXRh
X2xlbjsKPiAtCWludCBlcnIgPSAwOwouLi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2duc3MuYzogSW4gZnVuY3Rpb24g4oCYaWNlX2duc3NfcmVhZOKAmToKLi4vZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9nbnNzLmM6MzE6MzogZXJyb3I6IOKAmGVycuKAmSAK
dW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pCiDCoMKgIGVyciA9IC1FRkFV
TFQ7CiDCoMKgIF5+fgoKPiArCXVuc2lnbmVkIGludCBpOwo+ICsJdTMyIGRhdGFfbGVuOwo+ICAg
Cj4gICAJcGYgPSBnbnNzLT5iYWNrOwo+ICAgCWlmICghcGYgfHwgIWduc3MtPnR0eSB8fCAhZ25z
cy0+dHR5LT5wb3J0KSB7Cj4gQEAgLTY1LDcgKzY1LDcgQEAgc3RhdGljIHZvaWQgaWNlX2duc3Nf
cmVhZChzdHJ1Y3Qga3RocmVhZF93b3JrICp3b3JrKQo+ICAgCQltZGVsYXkoMTApOwo+ICAgCX0K
PiAgIAo+IC0JZGF0YV9sZW4gPSBtaW4oZGF0YV9sZW4sICh1MTYpUEFHRV9TSVpFKTsKPiArCWRh
dGFfbGVuID0gbWluX3QodHlwZW9mKGRhdGFfbGVuKSwgZGF0YV9sZW4sIFBBR0VfU0laRSk7Cj4g
ICAJZGF0YV9sZW4gPSB0dHlfYnVmZmVyX3JlcXVlc3Rfcm9vbShwb3J0LCBkYXRhX2xlbik7Cj4g
ICAJaWYgKCFkYXRhX2xlbikgewo+ICAgCQllcnIgPSAtRU5PTUVNOwo+IEBAIC03NCw5ICs3NCwx
MCBAQCBzdGF0aWMgdm9pZCBpY2VfZ25zc19yZWFkKHN0cnVjdCBrdGhyZWFkX3dvcmsgKndvcmsp
Cj4gICAKPiAgIAkvKiBSZWFkIHJlY2VpdmVkIGRhdGEgKi8KPiAgIAlmb3IgKGkgPSAwOyBpIDwg
ZGF0YV9sZW47IGkgKz0gYnl0ZXNfcmVhZCkgewo+IC0JCXUxNiBieXRlc19sZWZ0ID0gZGF0YV9s
ZW4gLSBpOwo+ICsJCXUzMiBieXRlc19sZWZ0ID0gZGF0YV9sZW4gLSBpOwo+ICAgCj4gLQkJYnl0
ZXNfcmVhZCA9IG1pbl90KHR5cGVvZihieXRlc19sZWZ0KSwgYnl0ZXNfbGVmdCwgSUNFX01BWF9J
MkNfREFUQV9TSVpFKTsKPiArCQlieXRlc19yZWFkID0gbWluX3QodHlwZW9mKGJ5dGVzX2xlZnQp
LCBieXRlc19sZWZ0LAo+ICsJCQkJICAgSUNFX01BWF9JMkNfREFUQV9TSVpFKTsKPiAgIAo+ICAg
CQllcnIgPSBpY2VfYXFfcmVhZF9pMmMoaHcsIGxpbmtfdG9wbywgSUNFX0dOU1NfVUJYX0kyQ19C
VVNfQUREUiwKPiAgIAkJCQkgICAgICBjcHVfdG9fbGUxNihJQ0VfR05TU19VQlhfRU1QVFlfREFU
QSksCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
