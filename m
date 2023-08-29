Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B258E78CDD6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 22:51:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A5A760F65;
	Tue, 29 Aug 2023 20:51:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A5A760F65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693342283;
	bh=dbJMbaBsn/B4FZQ6/CC7owTlsnvzlD2g+VRYPEkp5B8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nBzxhQoAxJN3PfoHXL5F1ycflDwUcqtjCssnQi9sxG5zUuv6qLVFhsfpRk6MEcd80
	 RzGEnS73XgzCo9n95gSqBNn5vMjwGOM/QBzE7onuFx6tIp+w8a7Yf18NU5+9DFsKlD
	 YyXhh3LbK3MOTEl6coL09DVIFTdPVdm2kCzeMiryexMyxbtjeTB2FN5d+7D8l2CC+F
	 FENF9HxLOBKGp+AuHAsPo9DgLPzZ96kZkDHfrGtZgMpMifYoMgU54YrEG+te0jUw5S
	 zxLd4W9Mm+zfsriN1Ok6qeA68BSz6hd5hrin68SYCr+26WGZuwDVJtfkzJRURiXSn8
	 gi5pGZURSQDhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y7DI2qdRzd0R; Tue, 29 Aug 2023 20:51:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B352C60E17;
	Tue, 29 Aug 2023 20:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B352C60E17
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21A4F1BF59B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 20:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE12041809
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 20:51:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE12041809
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DpkEmW4pNXjx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 20:51:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57F9541800
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 20:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57F9541800
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="354987553"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="354987553"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 13:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="853447006"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="853447006"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 29 Aug 2023 13:51:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 13:51:12 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 13:51:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 13:51:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 13:51:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hMe/Sqv6ti2a99646Jr9Lu1vySQw9ECV8DIUuPi96lusBkyBhM141WP9Bbv2r1dkpg5DMmcECAPy544EY+700QgsqCWVnhvdlgND/585EMUqmPX4dZCZ5lna+KVKKVYGz3aoaBrGBnEpQYsZ0160kbilsvZ7V320qru+hS5LZS2guaa2IRKr/Qph5mFE9oaDFlItSLufIe9S6+xoZxcPC3Tz3zcBGNoxQt0Rr0qHZImFoiEmhK1UIufxLkF4ojbt30put6MHTfF5+mLtKOHFceCeCuwV5FPxfu5Z04mUcxBh9m19ccsdGwE3LK4RmWckpC8aw3aV4mmd51zvzPzFxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8JVeO+ZNhcaEi71Er2FnxIcIGTkweRiG3eczLaYBrJI=;
 b=L5+DIq23+SDBcrbp4aU3ZlkSIMFuJdn385uM0WUVDfXzHR86OvclxmCC/ONipLQUqOuyMRis89WIDgM6zt2oN+6RUpbcmlB/0HMr9R4JiDN++YZ4KvSPOsL+8ZSNWycfhSX4RseaEfgfGgq1ZN1YpsoznGPvBosdo4eME+OAUsk0OSX0k0hlg/spML+Ub54yfOTUygyfoDQtUa+nWaMb5qve3/3UF/1LHprrC9K2YumZG5wgJ9eSqdoXnsivDxCPUf6kI6drTFSY8XWYB/CzUtNrwdyr7Ga+XZcHNlR5jmt7NUXdA0F2mKT3FAn0EyXwXjCVjhh6Z9IlNtk0BrRbQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN2PR11MB4519.namprd11.prod.outlook.com (2603:10b6:208:26c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 20:51:10 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 20:51:09 +0000
Message-ID: <fb3873f7-5d9e-8220-dbe8-dccb0a7aae9d@intel.com>
Date: Tue, 29 Aug 2023 13:51:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ahmed Zaki <ahmed.zaki@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230824125023.3302949-1-ahmed.zaki@intel.com>
 <20230824125023.3302949-5-ahmed.zaki@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230824125023.3302949-5-ahmed.zaki@intel.com>
X-ClientProxiedBy: MW4PR03CA0059.namprd03.prod.outlook.com
 (2603:10b6:303:8e::34) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN2PR11MB4519:EE_
X-MS-Office365-Filtering-Correlation-Id: f97f2ed4-4334-4697-3f8d-08dba8d1ac38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EoMRxkb2nqalbKyQqdeFodDkr8oY+Ufb+MIdI59roBFMBEgkJOzl8NN/C9Ri2VSDANifsCjq4lIVGgCAg5WQI+qGPsS28odRLBbulms662Jot2kUX7kKNQghVzbQUmxb7mZ7Gb4JMg5xa2nrsUwjKITZvqcAp0H9pbXbo60pTdbhhRm+bB3DwTcrbiy+rHAaQM60qFbZ/WgiBrK8QJmknuPXtitZgImuxenrggI2uk29jOI8CdY2u0Aut0Y/gGaMEBPLq9AjiyM+W/8OdzqXtD5KrXPm8uLPQMnJPFZKZFYSOhMFTPO5J0+MnqmJ5Ok+zzYAFdOhzejq5uOpkXxRwvkfN886ya20v2ZCGdJ/fpDH22/hSWTJC6P8/Nsdo2Eqteu9zkEWDZ71cw5NZnLQ02PjoV28TIhcw+cLOboQlaiLiq+oDyQYukaXavBJdOZL7ElHCQ3zbug1/q6cM1dZwy1LH8WYhxkFC16jvqTTxsqlQkG5TNRo7Bgnj+zXBU9JuUQhcWznT+IMUruJov3mXpc86zVqutRq0j/JYFGrB3gFu/Zk1G3J+UEK2UqfhaQjzrxpQf4lQJn7VSaO0sXmReOgjp4FL9/BLQ844npmg4nHujQ75yB7JE8azYFBz09dF2erxFearklBi6zQE7Hg1Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(396003)(376002)(136003)(451199024)(1800799009)(186009)(6512007)(38100700002)(316002)(82960400001)(41300700001)(4326008)(2906002)(31696002)(83380400001)(86362001)(2616005)(107886003)(36756003)(8676002)(5660300002)(26005)(8936002)(6666004)(6506007)(6486002)(66556008)(66476007)(54906003)(53546011)(66946007)(478600001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NER3NXFPRXNCREhmdVlCYW1BMXJPcmhqVzdWMEt5aEx2TXpseXNXbWVPQ2Rq?=
 =?utf-8?B?VmFrZ2I2bElPeVp6ZE5GZlhJZ29Vc0lBazhRNTI3eFZvc3VZcVozZzJnZENh?=
 =?utf-8?B?dUltUHFVTnRPVTZ5elVURjBqWUV3ZFpUUGJONnNsRVJPYkhRK09Wb21HSWcx?=
 =?utf-8?B?aWFXY2xuNEhRYXdnbjJtRzdUUXdnMW41eWY3ZVZVZXJPYWtUc2JrQ1Y0MHdP?=
 =?utf-8?B?ZjNJdE1jdkxVSkpHTVROSkdqd0l1N0ZOUmpBTjJ6cER1REVCUEJFTU1Tendo?=
 =?utf-8?B?elBubTVkbGM2dkE1MVhTdFpzMVJvb3RKQ08rS0hvNkUzTzduWWlTMlIwRTBM?=
 =?utf-8?B?QnA3cWorb2E1VWZIcTEwcjZnV2NGZHJkNWEySXFQa3lXSDA2KzRNektZWUdP?=
 =?utf-8?B?QXBZK2d3LzdHZ05VN2YwTWU3ejFtNDltNmlTK3dWTmxaVUVzY1U4cVo3enZw?=
 =?utf-8?B?L0wyY01rcVpqd0NnZ01ac1VVRkJvbjB4SzNqWlpWKzFsSFhZRThXa3dLdTY2?=
 =?utf-8?B?Vjl4US8zN3BMQTBFTXUvRTJsQStuRlZjRUhjOFI4eDlnancrYVNtVmFaRmtL?=
 =?utf-8?B?cDR6em5RZnk0VFZibUNBQVRrQzh1ZUdYTG1rbmwwYUhlS2VGd09TT3lYUkds?=
 =?utf-8?B?VnIrZUxCdzcvRnVDd0M0S2QyUmlhd3EwOURQazU4T21HZGFhYVg5NUVnbWJJ?=
 =?utf-8?B?TGpHS28yY0wxS0lyOTdaQ3dWdHpQLzJkVDNkeHhDMUJ4cjdETkdOT3BZcW9M?=
 =?utf-8?B?VHh4bWwwenFzSlIwcjZQamY2VWpFeTJaMzNTN3VEUzEwNGpweW9iaWkvNVZk?=
 =?utf-8?B?bE5iRzREN3BlaUtaKzVLeUJOVVBmMUdnVDNnUnh3WVI0bHZzelNRNlprQXIz?=
 =?utf-8?B?M2xrM0xjUDhVSmJ5VE9XMlk0Ti9pWVVud1g3VnVmOVljZG01RGhXQmJDRy9N?=
 =?utf-8?B?YjFTaFJtV1Y5TUNUdTBqY1ZzSWhhREVUcVlMMXhVNURqY3ptT2VyVkE4aThE?=
 =?utf-8?B?aUUxNEI1UXhRWWNuQ0hBanlrU2EzdHc3anduUThWQmVieGtsSCtLMEhCNmRt?=
 =?utf-8?B?YXpyUUdpOVROM001dGo0bXFaZkVVS21aSThaZnQxL3VPWjRKRm9iMFRyN1Nx?=
 =?utf-8?B?aitzM2xHMWFlSFBrZXVlVXhTRFVMMi9SUUV1U3l3a0FtdjVjTXlnTTg4VFA5?=
 =?utf-8?B?eEVIQlBmYk9EK0F5V25iSndqb09wTGZnQzlLRytmV0tlQU96T3pKS21lQitI?=
 =?utf-8?B?K2xCY1BLUWVQWkxyR3pDZ3BQWXJRUFN4alloSEswK25Tc3pZZGZzRDR3UnE0?=
 =?utf-8?B?WkluTUs1V2ZSdUlIRDJkWkhYQmFQRnBVMUwzRHkzbUp5OGZOWi9ISjR3SHVG?=
 =?utf-8?B?YW9xOVF0b3RMdlFha2xHODN4UjBmUW9nSjhuRUJNS09lOU13QlI5em9oUjdp?=
 =?utf-8?B?OXBYdHRvUTFtcXJvVno0cGdkVXdZaTkrQTUvRUZIMFNJc2NnVmIxd1JlQXJU?=
 =?utf-8?B?ZU9rNS9DbDVUQzM2WDRnLzRnelQyQzZFSHBhNjVFbGVsKzNqODNYeWw1WW44?=
 =?utf-8?B?T1Buc0JoYUFNbHVaWEhFTUFPakFlNzBuVGs1eStGeVdpVHdsZmtWcmlaT3Vs?=
 =?utf-8?B?K1QrZGIreFhneWErdlZESm9IQmwydldSVkZacGUwTEpzelZ0MEVBbUpPcHdV?=
 =?utf-8?B?UHV6RU1BQWdtRXlLVitDNUM4cUVVWGhWemgyQ05uNnhsT3lCY08wM28xQUpt?=
 =?utf-8?B?bE80RTlDNnNhZjBvbllDK28zcFN0MlVFMmJKU1Q1UEFJd1I3Q3ZuMjZzUUor?=
 =?utf-8?B?UEFGeVlQYnRJek5wTkg1VFNIRXVwaXhYc2xKY2k2WVZ1L3h0M1Z3bElPZWlY?=
 =?utf-8?B?YUF5ZzZVNTNNcmdjTFFtbmpRZ3ZmYUpERGNxbEhua0l6a0hoTks2UUxmMGtn?=
 =?utf-8?B?alZZV3NIejNYRmpEVVErR0VmNnI3VTlXS25XRUdwaU9yTHBINUFBdC9oNVRN?=
 =?utf-8?B?RDFqMThKNTZ5MHlQaGhqdG5SZTcySEpnSFV6T0tFc05vUEtRVmo5Y0dEekJr?=
 =?utf-8?B?YjJEbWV3cy9TUW9FT3lDT2plSVhqbjdza3huOTQ2eGQySzVuTkRMT013V0xa?=
 =?utf-8?B?dHA4QUtWbkZ6SDZFc2UzUW0xNEpvVWFkVmlGZ2tqLzdCczI3aXNqOVBvaXVh?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f97f2ed4-4334-4697-3f8d-08dba8d1ac38
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 20:51:09.7090 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9PoET6igUrvtoPA2ZRGcNDXuN8gqTLPctvxHSaGByKhERl6kJusxkiws+Td0ogpJNDyBnZHYoV1tCvXEH9WVwAg/IToXQYuIPXIdwFAtg4k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4519
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693342274; x=1724878274;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7nSqVa9Rgo1gHgS/kQy/c7m2rIJMW+/TGDYHZUT+sag=;
 b=PeERGvBuAP+/OK2grVHeDfraEUl3nR7Mt9avaPPtNafsSijXscIJbv0D
 UlCL8mnJn8MPhQk/4s14KWA1QLCUrFPMttxjw1KjB7FmoMY1zzNM0Wl52
 RBERLDcCYHer0TdrbGgVMIQMm42zwtBEmupPrywXXtsunJiKYI/Rba8lf
 sB9/gE+XTIS7M2hNT0NhfbiO5xbXZaHfhhKvI/Hd2r5+3BMdH5TNmx2+N
 yzICqhfOAiLqcj+0UawpenRVdjRvzv38+Gf5E0aQGGSpbWso6KIxix1VF
 masNyufgDnFIhi8S04eh4lKMUnDxnkmtMZzfNLhQpRJDY9lQqj3NcmO78
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PeERGvBu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: Fix VLAN and CRC
 strip co-existence
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
Cc: Haiyue Wang <haiyue.wang@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/24/2023 5:50 AM, Ahmed Zaki wrote:
> From: Haiyue Wang <haiyue.wang@intel.com>
> 
> When VLAN strip is enabled, the CRC strip should not be allowed to be
> disabled. And when CRC strip is disabled, the VLAN strip should not be
> allowed to be enabled.
> 
> It needs to check CRC strip disable setting parameter firstly before
> configuring the Rx/Tx queues, otherwise, in current error handling,
> the already set Tx queue context doesn't rollback correctly, it will
> cause the Tx queue setup failure next time:
> "Failed to set LAN Tx queue context, error: ICE_ERR_PARAM"

Would this go better before the iavf patch so that we have a properly 
functioning PF before iavf tries to use it?

Also, where does this come from?

"Failed to set LAN Tx queue context, error: ICE_ERR_PARAM"

ICE_ERRs don't exist any more.

> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 64 ++++++++++++++++---
>   2 files changed, 58 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index 48fea6fa0362..31a082e8a827 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -123,6 +123,9 @@ struct ice_vf {
>   	u8 num_req_qs;			/* num of queue pairs requested by VF */
>   	u16 num_mac;
>   	u16 num_vf_qs;			/* num of queue configured per VF */
> +	u8 vlan_strip_ena;		/* Outer and Inner VLAN strip enable */
> +#define ICE_INNER_VLAN_STRIP_ENA	BIT(0)
> +#define ICE_OUTER_VLAN_STRIP_ENA	BIT(1)
>   	struct ice_mdd_vf_events mdd_rx_events;
>   	struct ice_mdd_vf_events mdd_tx_events;
>   	DECLARE_BITMAP(opcodes_allowlist, VIRTCHNL_OP_MAX);
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index c0c3e524c523..e1621aecd973 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -1623,6 +1623,15 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   		goto error_param;
>   	}
>   
> +	for (i = 0; i < qci->num_queue_pairs; i++) {
> +		if (!qci->qpair[i].rxq.crc_disable)
> +			continue;
> +
> +		if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC) ||
> +		    vf->vlan_strip_ena)
> +			goto error_param;
> +	}
> +
>   	for (i = 0; i < qci->num_queue_pairs; i++) {
>   		qpi = &qci->qpair[i];
>   		if (qpi->txq.vsi_id != qci->vsi_id ||
> @@ -1669,11 +1678,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>   			vsi->rx_rings[i]->dma = qpi->rxq.dma_ring_addr;
>   			vsi->rx_rings[i]->count = qpi->rxq.ring_len;
>   
> -			if (qpi->rxq.crc_disable &&
> -			    !(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC)) {
> -				goto error_param;
> -			}
> -
>   			if (qpi->rxq.crc_disable)
>   				vsi->rx_rings[q_idx]->flags |=
>   					ICE_RX_FLAGS_CRC_STRIP_DIS;
> @@ -2425,6 +2429,21 @@ static int ice_vc_remove_vlan_msg(struct ice_vf *vf, u8 *msg)
>   	return ice_vc_process_vlan_msg(vf, msg, false);
>   }
>   
> +/**
> + * ice_vsi_is_rxq_crc_strip_dis - check if Rx queue CRC strip is disabled or not
> + * @vsi: pointer to the VF VSI info
> + */
> +static bool ice_vsi_is_rxq_crc_strip_dis(struct ice_vsi *vsi)
> +{
> +	u16 i;

I believe preference is to put this in the for loop now.

> +	for (i = 0; i < vsi->alloc_rxq; i++)
> +		if (vsi->rx_rings[i]->flags & ICE_RX_FLAGS_CRC_STRIP_DIS)
> +			return true;
> +
> +	return false;
> +}
> +
>   /**
>    * ice_vc_ena_vlan_stripping
>    * @vf: pointer to the VF info
> @@ -2454,6 +2473,8 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
>   
>   	if (vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q))
>   		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +	else
> +		vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;
>   
>   error_param:
>   	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
> @@ -2489,6 +2510,8 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
>   
>   	if (vsi->inner_vlan_ops.dis_stripping(vsi))
>   		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +	else
> +		vf->vlan_strip_ena &= ~ICE_INNER_VLAN_STRIP_ENA;
>   
>   error_param:
>   	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
> @@ -2663,6 +2686,9 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
>   static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
>   {
>   	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
> +	int err;

Seems like scope of this can be reduced.

> +	vf->vlan_strip_ena = 0;
>   
>   	if (!vsi)
>   		return -EINVAL;
> @@ -2673,10 +2699,15 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
>   	if (ice_vf_is_port_vlan_ena(vf) && !ice_is_dvm_ena(&vsi->back->hw))
>   		return 0;
>   
> -	if (ice_vf_vlan_offload_ena(vf->driver_caps))
> -		return vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
> -	else
> -		return vsi->inner_vlan_ops.dis_stripping(vsi);
> +	if (ice_vf_vlan_offload_ena(vf->driver_caps)) {
> +		err = vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
> +
> +		if (!err)

No newline between function call and error check please.

> +			vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;
> +		return err;
> +	}
> +
> +	return vsi->inner_vlan_ops.dis_stripping(vsi);
>   }
>   
>   static u16 ice_vc_get_max_vlan_fltrs(struct ice_vf *vf)
> @@ -3450,6 +3481,11 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
>   		goto out;
>   	}
>   
> +	if (ice_vsi_is_rxq_crc_strip_dis(vsi)) {
> +		v_ret = VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
> +		goto out;
> +	}
> +
>   	ethertype_setting = strip_msg->outer_ethertype_setting;
>   	if (ethertype_setting) {
>   		if (ice_vc_ena_vlan_offload(vsi,
> @@ -3470,6 +3506,8 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
>   			 * enabled, is extracted in L2TAG1.
>   			 */
>   			ice_vsi_update_l2tsel(vsi, l2tsel);
> +
> +			vf->vlan_strip_ena |= ICE_OUTER_VLAN_STRIP_ENA;
>   		}
>   	}
>   
> @@ -3481,6 +3519,9 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
>   		goto out;
>   	}
>   
> +	if (ethertype_setting)
> +		vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;
> +
>   out:
>   	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2,
>   				     v_ret, NULL, 0);
> @@ -3542,6 +3583,8 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
>   			 * in L2TAG1.
>   			 */
>   			ice_vsi_update_l2tsel(vsi, l2tsel);
> +
> +			vf->vlan_strip_ena &= ~ICE_OUTER_VLAN_STRIP_ENA;
>   		}
>   	}
>   
> @@ -3551,6 +3594,9 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
>   		goto out;
>   	}
>   
> +	if (ethertype_setting)
> +		vf->vlan_strip_ena &= ~ICE_INNER_VLAN_STRIP_ENA;
> +
>   out:
>   	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2,
>   				     v_ret, NULL, 0);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
