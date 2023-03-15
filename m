Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D402D6BBCE6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Mar 2023 20:04:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 400D6408B6;
	Wed, 15 Mar 2023 19:04:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 400D6408B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678907068;
	bh=hGdNtUS73BK0kM1/RNMkp4heEpfs0NHvjGNgtu3r8xY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nvC2T9N85f/rCAYpk32djIOOdj2f34RGYgyjIDqln4NEo/VjWh7sRfRX+PRJekS/E
	 94Q8FbTNIXu/FK5s5pncoyx7Ge6HpMQYw5rT1Ey0Nw4ltAeVTXdzuzPpCki0aln1eG
	 tppeH6Eke3lV9FtkQcaqrR4dwDiAO37NtCZCPzWBl0uguhgDgSoxTYWrhNzSM30rGs
	 MBh2qYIxdNJDf6DB152jX3AUA2FEL5gBYs5OeEtxublD1wHfzcSTUtsa3Z09Ow0dMp
	 JkuyZCnwuN+daql0gqsCasvsignxenlDYLoVLLq7E4l75u1a/IiVoebKKOnjzR7kXT
	 b4W1TgQYLxj5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Go7qPvE0RjiV; Wed, 15 Mar 2023 19:04:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02492404AF;
	Wed, 15 Mar 2023 19:04:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02492404AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB49C1BF361
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 19:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89969418DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 19:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89969418DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NnuXFKP6349H for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Mar 2023 19:04:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFB2D418B3
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFB2D418B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 19:04:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="326158456"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="326158456"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 12:04:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="1008940548"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="1008940548"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 15 Mar 2023 12:04:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 12:04:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 12:04:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 15 Mar 2023 12:04:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 15 Mar 2023 12:04:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PUAiYmY95BPVHep0vKL3Esemm5uFNCe7ew05ZQKH+u6lgBh84YWcQ5nSfybYfm9wBNepT87FaIj6KzY93By+P5DhbNwk6f2hRpipGuYqvdmHV7XpkSBok5+1atqdUThBXRz+KB4Ks3p5kVAmjQ/cOJScGk+YXlPAitpda98Jh3tBi/iBvcyGRgiXM8lK3CiFcuanYO6DzH02NgtMMnZrwFEZseE6mLcYuOmzlNDqlOePNQmIakTlmk5PIL/bRe4ImlD5Q2iJe+4QDFdfOo8DwAnaT1O2C04E4oDjML+oRs4fkiwmLYUJOIIxODhYMWw978RUGTZAPepFFVKCfavzsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=97dXMel3l77Rs6OWRoKTFzz0p5iLjXu6aDKvhj5qGS8=;
 b=lcCA8J43AdUWn5Tu20MMO8sKdr/wvdnXeQOO3m2aRV8hjs8ksGbXuejhN/92N3vx2caUQa5oBxPoRPOg/6J1z9IM+HX36tR7ORdMEkIEzKGILgAkULs9hc1JSVqiGc5ktjJJCtjUUoENbRvsxzGZU74RzdVCyebqLr2TgwwRajR0ZWH//WDjo3TxlucRcGm27J2Jv687YOEv31wMWXLJ4pDTEuq5Sq0NXEOQ4mq778HvfrO/YWMvBOwDLyOWE6JgbcnTP9ZWcHEM3HUaLemZUFu9URpaJFJsnTlPA4d2lbMWUFaKBaooyUCGw0IoUlBWlpiL4x6FyaT86muUy7Dm8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DM4PR11MB5373.namprd11.prod.outlook.com (2603:10b6:5:394::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Wed, 15 Mar
 2023 19:04:17 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::4995:d302:8386:13c3]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::4995:d302:8386:13c3%8]) with mapi id 15.20.6178.026; Wed, 15 Mar 2023
 19:04:17 +0000
Message-ID: <f59701c0-3cf1-8053-2790-4a543ac4f461@intel.com>
Date: Wed, 15 Mar 2023 21:04:07 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Srikar Dronamraju <srikar@linux.vnet.ibm.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>
References: <20230315072019.GG1005120@linux.vnet.ibm.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230315072019.GG1005120@linux.vnet.ibm.com>
X-ClientProxiedBy: FR3P281CA0191.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::9) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DM4PR11MB5373:EE_
X-MS-Office365-Filtering-Correlation-Id: 9cd50540-d760-4633-1adb-08db258812ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fz6m2iXNOOZE78983yWoGiSQPC1OP6DVoLIJjyekuREARryLHsyNGq6dWFIp/+hJGHSYL59TaTFsu7Sy/t6hr94dZEfvW3Cn+tWGg/oUO0xOCA/GuoDjs78M/70i2Wa17xIalQoVrnW0iiMAdCmbS3thA8/EZg5xFhvcrrl8ZuMwb20J8X3ErmdOvG/vSpojoTnQvCFHwCSK1mROWhOH9p+lVTYrdzTd0vTlIkSJvk5UldOYDyDzfKdPOdO3qhJXVrJ6kh43yQMDIy+qCrNELXE1l0YEY8XnCXVQAFs6G33jpIFUyfBCyvA9ZBPZ+Dc5wMRFiNtY/mkbbEMJFTM+Jb9OuCRsjz383L+t6nC/y2+UzDcI6ggKUXRVe1VzwxJBRn1I493qK3zQLbEkADh9i3Yz28Zr39J3ghlS6NJUhB9b5aCQ52tZTSwyKacxB7vRHSq2i9VcRy6zye3HhI0v1UBQbexm4/OwPY0o38N83lOKH/Jizo3a/Hv2kewNSeNE/ygKW9A8FdyM/roCjzNYl0F8rWGHnsF809jfLrT96uJabJdK1UHOGHaF8eHk/8um+A6KBax7R+bA15rOHxX0n469VC1gNfUQRYdq8FQ1M/gt36b2VTK41SRdg1dwSuJwh8HWw1Q9BXNg5HZUZxO0vQ7vcWibMAhPaZEII7rFAb8zL5TyWCwgNBL6H2iKGm36epETVGD1WwvsBmZOFXn8KQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(39860400002)(136003)(396003)(451199018)(6666004)(15650500001)(8936002)(66946007)(31696002)(36756003)(66476007)(478600001)(83380400001)(86362001)(66556008)(4326008)(7416002)(5660300002)(8676002)(54906003)(110136005)(316002)(41300700001)(6636002)(966005)(6486002)(2616005)(38100700002)(82960400001)(2906002)(186003)(53546011)(26005)(6506007)(6512007)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0p4cC9ONGxMTXpBcHRJSmJHNXlJOEt2WGpSWmp6WlZFWnVhRlhGWU1JVUZP?=
 =?utf-8?B?WFRVN1JCWkdYTHljMjFtMXlqelFrUngzY2xRNVhWRHBZT2czVEFMMzIzSldr?=
 =?utf-8?B?SDd5M2d4dVNUcmlDUnNHMVJxenBKOFhUUDJNcXdBS0dOOTlQNVBIS2lLSEtW?=
 =?utf-8?B?Q3Nhbkc1QUxiTGxFT09hcHdGS0RMblN4bFBpNVdJYUxIS3ZpNGgyb0IvSVFU?=
 =?utf-8?B?Yi9WMlFjb0xBRzIrTjNIdUo3cEcyRks5UDcwL1pwZlZPd3UrNlFsSW9naVpI?=
 =?utf-8?B?dmZkbFlwQ3lqcmd2Vk1qUkt4NW9HUG9QSzFBN0pBa1czTGluNFlVZW15QWpi?=
 =?utf-8?B?ZFRjUDVxdnZBVzZuMnl0ZlFWNGN6V284RGxUeEk4ZmNIK3dMNldRa2grSFFW?=
 =?utf-8?B?eTlaVE1pY05McWowSHB3M3ZvUTVQcjBaaXdwNmJ6amhwUm1VMXFVdngyY2Rl?=
 =?utf-8?B?eVoybXVrclZ4UUpLREdsa0NndGdtT05RZE9FT28xeE05RDNLdTRvbjdGcGVy?=
 =?utf-8?B?dEp5ZTcxelk2bm10a1BFVmhTYkc5SFhORjh4ZjF3WUhyRWxQYmtCaXAyMytr?=
 =?utf-8?B?aTR3WTNSRUdnbUpBNVRGRGpSVmo0UmhqZkI1YmhzbmV1NHRFUEhRK3A1dkx0?=
 =?utf-8?B?dkFMZ1lSRmhEOXhjOGg1Qnk2c2ViUHF6YlMzOE9tM0MzMTFaTVp3bENTVEcx?=
 =?utf-8?B?M1hOSjA3QWVHTFRnWElRK2FKM0R4ZktWWmtabENvL3oxNkNMcGVGaGZSaUtJ?=
 =?utf-8?B?cjJCdy9ZUzZ6VmI0K0RnSXlYWEZQL0tXKzZqcU9wK2ZtOWJHMS9uSlU1NHRJ?=
 =?utf-8?B?NkVPYWpWMi8yVWRJaWVEM00rU3ZVZzM0YlpBNlIxRWgwYmNHVWt6d1ptMUw5?=
 =?utf-8?B?akR2SDBLbEtzRjJrSDd0ZXhTUi9ZUWI3WEJtRTF5NVE1dWFvT0hzUXJVanFF?=
 =?utf-8?B?eE41VDZzcGVrM2RTaGZ2cnZseHhFdGV5amN2bDMxdXA4UTFzUWhyWStkNDlw?=
 =?utf-8?B?VExmK3BsRE9TTjN1ckNSWmIyMzIrQnVtQlhLQy9SelM1TklUQWxTVzBjQUdi?=
 =?utf-8?B?NS9kTkthRFZDdytaTmZrdVJ5NnRWeUt4bjlSeVhUVFZmcm5nNllrb01QVVFy?=
 =?utf-8?B?dWdpZFhDT2Z5bzFHZGgyeHpCRWdCWWVTUEpQTVA4ZW95OFQ3amZPcmJSL2pB?=
 =?utf-8?B?elB1bGNzdUg5RUJQdGtBS00zOTN2a0Y0YnU3bXFRZGU3R2NSZ1Bya0g4b0ww?=
 =?utf-8?B?d2Y0YXIxU2J1MGJ2QnY2eGhrbmlQd1pHa2pDb2tlWXFqRFdnQ2dXNXc5NUVs?=
 =?utf-8?B?cDNBdmRuai9XWjVtNVJ4RDNtY3NvdmxFZWpscDFmZHFoYjlsb0M4K2ZSZitl?=
 =?utf-8?B?Zmo2TklxbXFYRjB0SE0rR1ptZEV5b2Yvd0hBSFoxQmpnZHJ2Um5yMlcxL3dW?=
 =?utf-8?B?L21tOEptKy9odkV5WCswRGtscThmUExtVVFCZEcrZXEyOVRiZFpXRjJwK3BN?=
 =?utf-8?B?U3RDREhpdlFlMGRpRkJIeHYyUEdud1l2SndSa3ExaUFVS3dGd01iclNRYVds?=
 =?utf-8?B?MTZEbmZtUEFPTDZLOUI4UW9WUndMZThrTUFvL2NZSUhYV01wcTdDL0JHSEZI?=
 =?utf-8?B?bXN1blpyV1V0UGd2amltQW41WG1qbS8yZmtHc25JZFp1cGp6Vm1OTDdvVDhF?=
 =?utf-8?B?TUJTTFRja3llSkFHOWltS0Y5RCtINWticktwT3FsRHJhd1owNnA3cHl6UlBn?=
 =?utf-8?B?T1BOaE5mVnU3VHpWbWRML2pJVUs1MWhTc1FJY0hzbXBUbzZpNCs5bXUxV0JD?=
 =?utf-8?B?cDc4N1d0VmlqR1VGbW9VS21NczRIQWlNZEEreXc5b2JkdkhPaVo1dnlHVEY0?=
 =?utf-8?B?Mi94bDk5RjBFY09mVHhPZFFwaHZ3alpVdEdYRWVPYnY3ejdTVWZyYTdiTDBu?=
 =?utf-8?B?ZmNTSWNucHVwWGIvWnpZOCtlSk1vdnE3ektjTFBxa1paU0FxRm5JWWU0alFm?=
 =?utf-8?B?eDhoc0s1NVRRYWlkbjlIellQZWJodEIwMmpYQkNCdnF2VUF0blRHY3NXdEdL?=
 =?utf-8?B?cFJZWlJqWlJ0R3QxU2lraU5CM2JBY3RHYmRoa250WmpqNVFlbkVuc2EwZmpY?=
 =?utf-8?B?WEJpU3hEYTBZbVBwMVMzZnltem1Ia0Rwd1ZVNUtBTzZkaUp5Y0I5T1NGQjlz?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cd50540-d760-4633-1adb-08db258812ef
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2023 19:04:16.8996 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n1lp4pGY72hWJtN8QVxexqCmDeRv0U7pYWKQZtEs9Ny+qVMCmgequkcWET3sELnaCz/Nm+i432MijMCsNxwabw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5373
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678907060; x=1710443060;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aPWRXApf4jKmk97ouixKHW/iODjFF7klhiuYk4Auu98=;
 b=fkzik4uT+ODirUHw6stE1c75Fr1JM6P+aBFFW5Qg6rCaXZ8r22IzVoyM
 tVEphjMWmueSfV3y/yQCQCjjqnJbIoSdiOoAT6X13iUiN0MmfOjOu4ynZ
 CA6ThNmGN2mZbNoSnbc8LJpRiMzvGNltjCnrsBJXGWQ0zctYdA4vtKn+0
 QuDNFAYhaInb5pM8udAYF8Q1eWj8dkYXoIwuq5zlWCK0uxWR9nKOtvHh3
 lGynq6J6pj5bpUEDJ49c4c/95v3MIvGJQDCQMlJk4PzFDF1/+5GlzIYOP
 xdYP/NOrw6joNi9Xv0/45Bal3eqKEgnkKzcpHRD5laWdg/ALqZ4irCtDN
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fkzik4uT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igc driver causes suspend to fail if
 powersave is enabled
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Naveen Rao <naveen.n.rao@linux.vnet.ibm.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/15/2023 09:20, Srikar Dronamraju wrote:
> Hi,
> 
> On Lenovo ThinkPad P15 Gen 2i with I225-LM Ethernet card running Fedora 37
> kernel 6.1.13-200.fc37.x86_64, running powertop --auto-tune causes suspend
> and reboot to fail. Once suspend fails, networking stops working even for
> wireless. Infact as a normal user, I cant even start a sudo session after
> trying to suspend.
Hello,
Is the i225 card on board (under PCH downstream port) or connected via 
thunderbolt?
Did you see the same problem on other platforms?
I will forward this inquiry to our PAE.>
> Reboot/shutdown fails since Network-Manager cant be killed. (More below)
> The only option left is for the system to be hard-reboot.
> 
> I finally found that the problem was because enabling auto or powersave on
> ethernet card was causing this issue. i.e
> 
> echo 'auto' > '/sys/bus/pci/devices/0000:0b:00.0/power/control'
> 
> Pls do note, I was not using ethernet, I was just using wireless even before
> suspend.
> 
> lspci -v reports
> 0b:00.0 Ethernet controller: Intel Corporation Ethernet Controller I225-LM (rev 03)
> 	Subsystem: Lenovo Device 22d8
> 	Flags: fast devsel, IRQ 16, IOMMU group 17
> 	Memory at be300000 (32-bit, non-prefetchable) [size=1M]
> 	Memory at be400000 (32-bit, non-prefetchable) [size=16K]
> 	Capabilities: [40] Power Management version 3
> 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
> 	Capabilities: [70] MSI-X: Enable- Count=5 Masked-
> 	Capabilities: [a0] Express Endpoint, MSI 00
> 	Capabilities: [100] Advanced Error Reporting
> 	Capabilities: [140] Device Serial Number 88-a4-c2-ff-ff-5f-09-88
> 	Capabilities: [1c0] Latency Tolerance Reporting
> 	Capabilities: [1f0] Precision Time Measurement
> 	Capabilities: [1e0] L1 PM Substates
> 	Kernel modules: igc
> 
> When suspend fails, we see messages like this
> 
> kernel: Freezing of tasks failed after 20.001 seconds (3 tasks refusing to freeze, wq_busy=0):
> kernel: task:NetworkManager  state:D stack:0     pid:2014  ppid:1      flags:0x00004006
> kernel: Call Trace:
> kernel:  <TASK>
> kernel:  __schedule+0x35f/0x1360
> kernel:  ? asm_sysvec_reschedule_ipi+0x16/0x20
> kernel:  schedule+0x5d/0xe0
> kernel:  schedule_preempt_disabled+0x14/0x30
> kernel:  __mutex_lock.constprop.0+0x390/0x6e0
> kernel:  ? __cond_resched+0x1c/0x30
> kernel:  igc_resume+0xfc/0x1d0 [igc]
> kernel:  ? pci_pm_restore_noirq+0xc0/0xc0
> kernel:  __rpm_callback+0x41/0x170
> kernel:  rpm_callback+0x35/0x70
> kernel:  ? pci_pm_restore_noirq+0xc0/0xc0
> kernel:  rpm_resume+0x5bb/0x800
> kernel:  __pm_runtime_resume+0x47/0x80
> kernel:  dev_ethtool+0x124/0x2eb0
> kernel:  ? avc_has_extended_perms+0x22a/0x520
> kernel:  ? inet_ioctl+0xd8/0x1e0
> kernel:  dev_ioctl+0x156/0x520
> kernel:  sock_do_ioctl+0xda/0x120
> kernel:  sock_ioctl+0xed/0x330
> kernel:  ? security_file_ioctl+0x39/0x60
> kernel:  __x64_sys_ioctl+0x8d/0xd0
> kernel:  do_syscall_64+0x58/0x80
> kernel:  ? __x64_sys_ioctl+0xa8/0xd0
> kernel:  ? syscall_exit_to_user_mode+0x17/0x40
> kernel:  ? do_syscall_64+0x67/0x80
> kernel:  ? do_syscall_64+0x67/0x80
> kernel:  ? do_syscall_64+0x67/0x80
> kernel:  ? do_syscall_64+0x67/0x80
> kernel:  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> kernel: RIP: 0033:0x7ff964b93d6f
> kernel: RSP: 002b:00007ffc96c6f540 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> kernel: RAX: ffffffffffffffda RBX: 00005608c0ba8040 RCX: 00007ff964b93d6f
> kernel: RDX: 00007ffc96c6f640 RSI: 0000000000008946 RDI: 000000000000001e
> kernel: RBP: 00007ffc96c6f7c0 R08: 0000000000000000 R09: 0000000000000000
> kernel: R10: 0000000000000021 R11: 0000000000000246 R12: 0000000000000000
> kernel: R13: 00007ffc96c6f640 R14: 00007ffc96c6f620 R15: 00007ffc96c6f620
> kernel:  </TASK>
> 
> We have seen similar problems even with people running other distros like
> Arch Linux and RHEL 8 (which is 4.18 based)distros. So this is not distro
> specific or kernel specific too.
> 
> Even installing tlp package from https://linrunner.de/tlp/index.html causes
> similar issues.
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
