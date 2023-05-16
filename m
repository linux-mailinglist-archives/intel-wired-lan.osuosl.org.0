Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41561705B75
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 01:45:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A758240CB6;
	Tue, 16 May 2023 23:45:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A758240CB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684280713;
	bh=KSG0G7TcrDXprlMF3+ws8EI+eAs4fU4o319IuXzuuYg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ONjZG2MhU7EPglaBlmSVyH/6Imm3zmYKwf3XNcM4Cutr1+bpBjj2HlXaqaa/JScPL
	 Yq64yLiyzR1ZzZ29b/aLfGLICL30LsF+bx32z0aCOky1ZcM9n+9Yl6CQyYG7plGZS1
	 xI1yqHqjtYKJf/Pqk7pKdQL01wpoURb9g0gcGXl63g4d75dcByBLDkCpnrO0q4I23P
	 dgM0VTwLHIkV+Sv2bsR2zG5p7fl4eixJfm64fJTL4i5V+jKp1E8Pnfq2enb6j2htSG
	 a6tQEX2E9us9EMN0Kil/di85HN9nl3lmP2IZA/gLgHklCwQGX2WREDSNP5p0XQB94o
	 jX5amx+yhjJeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 70kyxcFlsgtt; Tue, 16 May 2023 23:45:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BDE540BDC;
	Tue, 16 May 2023 23:45:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BDE540BDC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 266161BF417
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 23:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1FFB83B82
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 23:45:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1FFB83B82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bCzNg2O6yNtt for <intel-wired-lan@osuosl.org>;
 Tue, 16 May 2023 23:45:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE48C83B80
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE48C83B80
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 23:45:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="349118199"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="349118199"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:45:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="791261550"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="791261550"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 16 May 2023 16:45:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 16:45:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 16:45:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 16:45:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 16:45:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gxUmSG2pzgsSnTnuAHPmR1qV+NQhpNfNar50H1YUxrlojxK4q6exSxmqelJkS84MbG1I96EVyJd17TurktZuIMxTEwLdla6PL4k/qqNtcUYorsrEZoUEhKbNnNX4gDJUsJE9yOlu/wVavGdHbUsu8vKsWOcgruO7syIwgkyaqwVfbpIkuFEc+Fl7XC0fG16ARMaHcW2hT8Bv112CRnqVYN7q7TwdkNvLDudJ9CMrLHpeA3GPxf7ekIgp7OfZrIWtbMl4AuO2MXC/MANGKKI/wd8psKqE4auONf5gjsjXsBYwETchZAfwDT1sF6YIpFjqSTo4fM0Kgg0rKQMybcIb1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=auApPwpKWMxZmeS71krjteqZhn/xVVwIUZqRLbtCRUw=;
 b=FsD3ZH2Ky1GCIQat6HnEv2yvnhZGyEPu90U1ylspZs7UEv3ALJ1/+vAQbZKdqQ7wMuSmVUnmbl5v8JN8Qjr8b4rN/OT6iRtzIMlBLYVwz4Ne5xT0bgA29m9pdzN8tYYJVSlvZV+mMhMkChmfitK0ZmYYMK5UzrnlT3ZyeQ1yYySoN9v/QAoPZiKhYJc/3JUyV/fFxvEMD9fkc8r3N3WZSsNCjeRULlsu6LrW92Z9PWCLCD0XJHDysiLno/QZzU3oAROlHsaCYyt+qaDT9UhHgllKQTsBPIG6xMpRIU2E0NDhrI31d8zOsDBNZhGRi9PeECCNwqXk7JoyEx1+S+QiPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Tue, 16 May
 2023 23:45:01 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%6]) with mapi id 15.20.6387.030; Tue, 16 May 2023
 23:45:01 +0000
Message-ID: <b798411b-1977-e9a9-0a2a-93a7337823f1@intel.com>
Date: Tue, 16 May 2023 16:44:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <20230516035113.4147-1-muhammad.husaini.zulkifli@intel.com>
 <c952fd10-990f-6d7d-3832-6849bb0b610b@intel.com>
 <SJ1PR11MB6180A106B53FEE33E826A8C5B8799@SJ1PR11MB6180.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <SJ1PR11MB6180A106B53FEE33E826A8C5B8799@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR21CA0025.namprd21.prod.outlook.com
 (2603:10b6:a03:114::35) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b2ee5f6-2cc0-4dac-f87f-08db56679036
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hJDsfT45B5Htf1OtRsyXMtDIWMHJBNvgst9nzZklAvXWOjJaDd/3y/TG+gLQE4nYFLlPdpHyMHI4C3Sz2IEEilXuOS5h5ss99k96+QO0DgSTNYYAraiGLwdmUP4jBcWD+aC3/joJNewZm5jSb/geahHXn78rmSCLS2/KyNjgNfFk2tBBgWmq2IOOGDIaZNjj0yxlFjvXrWyNR5T0F5LNH1JZohGv9ivgRjntJrxFTv8JYFXqmoN5dWtdT9jnEbjotmcoXiYiNeHZjiZbYqvRCAjSjlIzs79mgPrvYoEp5SrrPhO1hegPNThGNZsNu+gd8o6NjwuWNviWFMHBT8GIsk/yuXxnwJLoDfHwH+zDYvevcY3maA/hYP7j2StA3TwI0hp62DBWRdMmmLNTjE0cOLNLcqsMXOC+kJ6NmJXLz4sTc6KZCMFMqvn/pRk0RO1bML+1ovse0SrvTtJe9zngaJEgKjNLdWhGmTjeleC+EjTPExm/+HGUvpd76inx80w3m9+WBn0h7IPUzKqGEBxR5xM/2MJwW75KweV1DaRwUaC+W1yjA62VcJ+Op3XUhkt6tOhfQj4lDTJOmxUnz2oRpJdNTbO/Ve/fDHZ9sBiDAJiPMTCTGTbheXqDbzb6yIQNGBF8FzHfv9p47AnTNuplIQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(39860400002)(376002)(136003)(451199021)(86362001)(41300700001)(54906003)(38100700002)(316002)(110136005)(31686004)(31696002)(5660300002)(82960400001)(66476007)(2906002)(478600001)(4326008)(8676002)(66556008)(66946007)(8936002)(6666004)(6486002)(966005)(36756003)(6506007)(6512007)(26005)(2616005)(53546011)(186003)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDU2Nnd1QmxyeHpNZXJ1WmxEbFpmWGJmb0k1bmczSC8wSGNlR3NlR1ViVzd6?=
 =?utf-8?B?SEcxQk1sSkpLekU2eFJ1Z3BEZ1NYSm15czBCZTZEUWFkMWRIRjBhY2dHOVR5?=
 =?utf-8?B?VDRNTFJ1bTdINkd4eHI1TDRWUnpPZkZQa3Vtd3BndGUrYjZXc1RnY1Z5MmVP?=
 =?utf-8?B?WkkrZmU3Vys0UE1oOU1DRlBHOGt4VWlZVWtyUUJORjlwZmtSSUtjV3Vtd1Jp?=
 =?utf-8?B?YjhCZmlIT2MydlZha3NqK0x6NkRIK3l6d3NqaWZWcWl5eHlFcXQ1WERicWg2?=
 =?utf-8?B?RGEwUGYvN2owOVc4RG1aK21IeitnWWZaK1UrdjEwWTI1NUZ5VTdGY3JtT3FH?=
 =?utf-8?B?emVjRmVObTZuWXFodlhvVmlzYTFWWUQ0cTJmVXVQelErVFVBcVZwYXdDNDdm?=
 =?utf-8?B?OEJZZy9rOG02cnBhNXhvUEVWS0trRm5tWlJ3dFJlZ3UvN0htWDU2NGlnSUZJ?=
 =?utf-8?B?Y3VVUzFnZERYMHFrelFKQkZ6dDBBY1BQYmlWZ2VLV2UrOFc1Sk5pWlNpMXpK?=
 =?utf-8?B?L0NZMkJLcUxWWlFlVHRuUDhMU2l1ekE0cEdRRXhtaDVWditXNEdnUEF3ZUFQ?=
 =?utf-8?B?dnRQMWplaWpGdlEyalJuaU1EQTREVWJiNlNleWwrdHdsbDUvVk1tTEFXRVBm?=
 =?utf-8?B?T3lXbDV3YzBod0ovTmFoUzQzSFl3VERESTBzbE02ckgyZ3JJR21veFdRbWRJ?=
 =?utf-8?B?TXUzaUU3ek0rZDhKUWEwcFFHT2lST0RNR0RYd0xoeXlkSVlkL254ajlEMlRK?=
 =?utf-8?B?aUtEbmlrbHI1dW1xYjIxKy9EZG5iQlh5MkxpSWFBYWVVRHdGRlFhQ3c2Zitt?=
 =?utf-8?B?TENaY0pwUnlIeWdtSkIwdWpQRTAxTktyQVNVa3NOSHRsVHpHb0ZvU2U0Zk43?=
 =?utf-8?B?SFl3bjczVVVmU2lEdUFTdm5uU2F2QnpsOTRyc3hCbzdybmw2clQzemRXRXlK?=
 =?utf-8?B?QXpBMXVLaEtoNllUZjdSbCtERW43cmFLNDJHbE51bEN1VWlrUnI4eDFROTFR?=
 =?utf-8?B?YUVWVTBmb1BqSlR3Zm1wMThOT1JKdWE3dVFSd0ppYjZOVGRpOHVSbHMxcUlD?=
 =?utf-8?B?MDk2bW1PTkEyYUhlejd1VDFqV1hCVlVBSkZvb3FmbU1nazJ1cUQrWHRHSUk4?=
 =?utf-8?B?Nm9SOUJZbzRxbUpWL0lKUmpoL2IrRDJXazBnaUJQRG0vZEdWQlVWSDM5dTJt?=
 =?utf-8?B?VUtva0NyTjdrek95S3VUNm5rUkgxT1dFaVhNREREaEh6UzR0VkNqS2FjcWhs?=
 =?utf-8?B?NzFCb2wzRHBzL3dzdEtzNCtpdVBqSS9vaGxJem4vcUpVemUyNURDaG8rampW?=
 =?utf-8?B?ekVaNnhSeEwvaDdZNnh3MzlqUWhjWnJkZk4wUzNVblJrdVV6TjVOVXpkY3BV?=
 =?utf-8?B?V3F5RHRlaG9LY2J6NGxpNWd5OURnSU9WVll1RGhhRHdhUDArcXBZUjk5UU0w?=
 =?utf-8?B?a3gyNTBkWXVGb212TGRIZUI2SkZCNk03NldPY3RPSXlBV202dGVUVDB0S0Rm?=
 =?utf-8?B?SGJEbkNZQnFMNGphbG9aL0o0dGxmRkpxOVg4MDRodkQyakNPTDJWb3lHdFFO?=
 =?utf-8?B?dEtIRXU3a2dRWHc0WWZwVURZZ3Q1TlRwS0R2eEdjWDJvbmMxT0JTZ2wrSG9y?=
 =?utf-8?B?TWVFYzN5VHErM084T2thSjAvd0JpOWRZQW5sTzQ4T1N3L1dFZWVPaGsyc2k2?=
 =?utf-8?B?YkNvZmtaNlMrR0kvQXQ1NmY5VGNiWHNNYXFjQVg4U0svc0Z2YmttS2tjNEF0?=
 =?utf-8?B?c1dCYkZ1RktxRXVTS3p6WGJaQ2dNN2d5S2tRS2Jvd1FBWWVlYThYUXRoMll2?=
 =?utf-8?B?OFpGK2lCRkxWSDVTbE54NHlqUjAyLzhkaXlpeG5na3NGUGJxc25hYnJ6bjVr?=
 =?utf-8?B?VWJHaFlhUnBZZXRPaDB1emhGaGV2b3lTbFQyL0xrZHhxWnMwMHJtTFVldW5n?=
 =?utf-8?B?bkNwRjU0YTE0ay8vQVBWRVZ3U1kyUEdzNEdNZDVOc0ErUW10czVORFduVmFO?=
 =?utf-8?B?QlA4MUxKU3RCTmJiUk1XaGwrMHRERmtpcGVSNm9PVjR5Q3V5Z1Q3bVpyaG9R?=
 =?utf-8?B?MStVME5iK1dqUkVQL1NyTkNueXEwd3Nqd1pZQmkxYkVza0RHK1lKK3lyTkth?=
 =?utf-8?B?WjM4djZnU2FFMXRGYWxhMTBHS3NWTGdrdWZSOU1MUmlsYktGN0YwMUxtTk5D?=
 =?utf-8?B?M1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b2ee5f6-2cc0-4dac-f87f-08db56679036
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 23:45:00.7047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m/VDIWau7gs2mpASolxiNmGZfVeTrizBFL3hMh961/J30l70aaxU7cSKJjzU6zoX5Q7EXj7x3cBHua/Ao9sLDaZWwHWh+wibRCe9oexCgX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684280704; x=1715816704;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A/hefJy76z4hxWtTVZYr7NRRMKsLU/6ocG/glAbil/U=;
 b=XzL1nien0kxXf3920zTpzT/Im8QQW04nYXmNS4ovrv0JAboBTe/fcZhV
 k1uLUE4DfgjIS4ByG1eX/UtLcvFxb0Hr2pzATtBgkTF5pGxYTIi6uSJ7G
 11EfKTUYqUojQz+X7pA1t9+q6FpJCgzriQN+IXCEP8RfDs0c4utYbtuU/
 TTmoaUZxTcVQMKkCrRu4EMSzSqksEwmwImORyZKH3JjeJ4meUZysL8tfP
 BKrDHi3U88xvzB3OgM/PUiJ53EmQrWiCGdILgcfM1QdzLvYvDzQLOn2nv
 l5kA9+tARJXEgDdUUuRgKQOD95KBxGJl6cfL7g6dm1UZrVt5QyLKk0Gzn
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XzL1nien
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Remove delay during
 TX ring configuration
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



On 5/16/2023 3:47 PM, Zulkifli, Muhammad Husaini wrote:
> Hi Tony,
> 
>> On 5/15/2023 8:51 PM, Muhammad Husaini Zulkifli wrote:
>>> Remove unnecessary delay during the TX ring configuration.
>>> It doesn't mentioned about this delay in the Software User Manual.
>>> It might have been ported from legacy code I210 in the past.
>>
>> Can you please provide more info. What's the problem you're fixing? How is
>> this fixing it? If there's a splat, that would be helpful.
> 
> There is no splat for this. This will cause more delay ex. link up activity
> especially during reset adapter task. I do not see any need for this as it does not
> mentioned in software manual. Plus, during TSN mode GCL scheduling configuration,
> we want to remove the delay of this 10ms for real time activity as well.
> I got pinged Sasha previously and we agreed to remove this delay.

Can you please update the commit message with applicable information 
that you mentioned here. This commit message doesn't give enough 
information about the problem or the solution. Description tips[1].

>>
>>> Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
>>> Signed-off-by: Muhammad Husaini Zulkifli
>>> <muhammad.husaini.zulkifli@intel.com>

[1] 
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
