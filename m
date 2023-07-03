Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCDB7459CC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 12:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 543AA409FE;
	Mon,  3 Jul 2023 10:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 543AA409FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688379122;
	bh=Bc4cr9naIaEG7Rh5r0R8lXXdcbsg6kCQHxfWhx7VRvk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EFpIcXkZD+jWNfMpk1D0Ha0TBYScLMPbkZVda4RAGO1QAAST1YAkP6y7tHNxFycZu
	 HeZPazHH5pBHWyrqnxw5g2olOaDopmmK9y6R+oeZSywvcX6q6TG+sZ90N48JvTtTEA
	 xbXbJYwfJNIaP8pXj2Qz2bDInTtABSThPXYNcHhlFr4LX/QMrvurSiOwOakbGQOzQv
	 R/QnfeJPRjpurPIbRWEtfKgEGvnWaJE1K311EVFuJ18CxlXKa0DNcLL79QDsRzpyC0
	 UnaOIIwOsyk8NJVvA2focBOMc+oocvUPheUy7G4sKIQ1lmq90JfKSekrfH2OXC4bdm
	 xyHSrn5bkr3aA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UpGskbaj2Fzs; Mon,  3 Jul 2023 10:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B748140491;
	Mon,  3 Jul 2023 10:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B748140491
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68E461BF30C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 10:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3ED6381F90
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 10:11:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3ED6381F90
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SfMEjtMjPHq8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 10:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C4DB81F81
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C4DB81F81
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 10:11:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="362881915"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="362881915"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 03:11:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="668707616"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="668707616"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 03 Jul 2023 03:11:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 03:11:51 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 03:11:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 3 Jul 2023 03:11:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 3 Jul 2023 03:11:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WPSaBXIdRl3yRpU8vTDSDrL0tXJRvyg/F+Gdy7DocgyHU/A/xObaVPXRu2zvDMYJ0vkPzlripyuRbh8/Ajd3tWGPM2SRMa4MvYyIDuc6KSoTNU7ayfKKUfr0mMcPNJ8b9/oAh2lEY4GC3/2ka7wNF41h3oWkfWO/hq4aEIFXlLkKcDsjuCQyZBOc/nOX9joPq1y8kcREjvr72IXTuyEUtv02F7gn3SRZc7BNn2nttxDNCSuTQ7jb5Ut01aBkbY9NPa1HAl8f4poRh02vSkXc6x0aDb62d9QWKV2AXahveKok78qzDB8+/PLHNL7xdDE1Iw03aF2YM5Ap82LqeyKpbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pk7ebWkcc9C0erdJgegbnGAS9tnndv/0BOu9ate7IG0=;
 b=LXYQrtgn9I9RLr52wDBSFPbSAnBBFCNCVKXUNOLWv0jNy7AWBj/OsIgvv9GWa3+mXEswRGQQoQeVwCNRfP019P+7DuViOrzrm+snaG8JuWXJ/Ywcd3EYA85BS6Jj+0BYF5osefHKASs9ijsO51mePUeDI6PoL7Lv5mXwX8H+eKZ0/aFM603ctFcT07NcyXMHBAv572G9f+QVZC+gaH0/sICdyIWYVmRQFDhTQeMzNbilb+/OiWabaTbBAGSf5uIL/vSVEhXp7oK54RcBX3yG2CuV6McszrijrEzNtQX8wDROEUUdQd2hiMgfolOEqhURBSOgDSl3ELbKnSaKzLR8Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CY5PR11MB6306.namprd11.prod.outlook.com (2603:10b6:930:22::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 10:11:48 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%5]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 10:11:48 +0000
Message-ID: <98ad3857-790b-1b91-a898-ba385c651de8@intel.com>
Date: Mon, 3 Jul 2023 12:11:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20230703074409.102367-1-jedrzej.jagielski@intel.com>
 <52b83a4f-9f65-fedd-54ae-c19df700d79b@intel.com>
 <DM6PR11MB27310C3EFFA0FAE8070FC700F029A@DM6PR11MB2731.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <DM6PR11MB27310C3EFFA0FAE8070FC700F029A@DM6PR11MB2731.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR3P281CA0199.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::16) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CY5PR11MB6306:EE_
X-MS-Office365-Filtering-Correlation-Id: 110b2a61-d566-4faf-6092-08db7bade96b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gRaC39FK6j3/Sai15xq6dc07zRSNlQAd6sJqI+v6XMTj9kSuUUkRCEJ8iyCYGdF/akYEk8AXMtUKfVlvzvXFX+br8nXnQTfD6/MzgL4fd4nV7yAUHBofeyQrl1QJJVVq9gR/RHxXwuTT4q7MNUI31zoKDUArtryk43JxZf1gso71lQT1QMOInZdmUZOcOJBhBV5X5xr4Wlf1Zl2M7pN3j03veKQJhuogiKTLPqQ6omj/G4Nk/JkhMJbjYNgdJw4P8RQFNwmjwk3tHW7R04gfnnl3XoDFVVZq5rB1MJysGbOzSvIbMoj+4Myz0cbBV5e+1nxx/J2kUt6P6xru/B4LDU+yP/cazMBPtZIw29aHiYB/vy2Gerl2+ArM1BApAQSq+4tS1LfAL8tfx6v0VWZ9GK8BiWRZ1omgVepogS28/HzaIKWxoeAKTWS7e2DrRD4QNbRlncyOGK7nwFGjAlhxcbf+Ap9rzHqVZlHpteiP7URQ/+JYZu6WpMhFCryKdIY6k0t70bMqCRRSvD4GPMcQy8BGen93pzR2SsLwMCsSUq/X1yrQMIraw6Xzi0RjXrEWqO64XQKzZCd0LWvCejg5Y/s8er6fkxIy1fj+z5EPGngPCSTSnM0Z2fQxoE4E8xnDWBOTRDU/1rjgcskLb0KC7g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(376002)(346002)(366004)(451199021)(316002)(8936002)(41300700001)(8676002)(110136005)(38100700002)(83380400001)(66946007)(66556008)(86362001)(66476007)(4326008)(82960400001)(36756003)(966005)(186003)(6512007)(6486002)(31696002)(26005)(478600001)(5660300002)(6506007)(53546011)(2906002)(31686004)(2616005)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1NtSld3VVpOTGFJZkl0Ymtzby94aFJBRnNaNitocTdDc3U3a3crall4WEdZ?=
 =?utf-8?B?Rmt2WmNwcFRVSGszTE9UR1kxTDBuYUhubTA3MWF2eGpLZ3hYVjNUR3JMU0lN?=
 =?utf-8?B?OTB1ZytkRlpaNjBpMmpQNTB4emVLVGNNMXlEYzNzMFE1OFRaMjF1Y0puMEtO?=
 =?utf-8?B?cktLRjVFWm9pZVNQMWNLZE81YThPd2RydHVENG5FUnF1dUJwVTd1Zm1OeDhL?=
 =?utf-8?B?dnAxdlNvUWdoME95b2F2U2hSa1orNTQyUXdpWGYwSTJtZTh0NG5KbE01elEr?=
 =?utf-8?B?N0orRnB2bUl0eGdIOStvaGFVYzFjTlIzdmdzOHN1ZndnRFB2Z0dNeXFtUDdI?=
 =?utf-8?B?M1dCdkZKNUt5ZUk3Mmt1dlY4UzVGOHFBYitOL3ZtWHU2UUxFdDZuVmFCaU5h?=
 =?utf-8?B?Vmx5Mm5Vd0pSQ3pMWllhVEJqekdqUEZJZUwzcjdzMWhNSFd2ZnJqYktyQnFi?=
 =?utf-8?B?U252ckpHQ2svT0UveEhBbURYVWNQSkRnMWNLRmMzNDF3Vk0zMERnNU85L1F4?=
 =?utf-8?B?YnJBUU5aVU9Oa3h3TTlCbDZZN2dKOFFLcnFSSVUwdUFkYWhhdFNZV0wrZCs0?=
 =?utf-8?B?SVJxdnhlczcveWxFdmVtSXIzWFA3eVh5ZGs0NCs2eGU5TjQ2V3k1QzJQVmhk?=
 =?utf-8?B?RDhwZERyWDJ1L0ZObXhYNTAvdFNPY0dWVFUwcDdzaStDcmZSSUUwOGNVSW1U?=
 =?utf-8?B?UTA4QUxCWk1GeFBJK2MwSnJ6YXNSUG9GZHl4RDNlMXMyRDFMSWh2N3Nxc2xj?=
 =?utf-8?B?eFJ2czZOdlVzc1RrakdNUTAvSW1mQ0VOeTNDY0FJekgzdkZESm9kTEhEV29R?=
 =?utf-8?B?eC95MTlNUDNWbFVNYnJncXo5NGtaNEhGOWNSL3Z1ZHo3NWhKWUllaGp3YTN5?=
 =?utf-8?B?SDBGOWpNbFJ4dXFrZ0FKQ3p2dTkxRHFremxRZ1lVN0oxb2gvMHBweUZyNEFx?=
 =?utf-8?B?aUIwWFQ5UnRuY0FKYTRYaDltdTRqY1dBZlNzRTh4Vld3SnJ3ZlFidlpYUTVQ?=
 =?utf-8?B?Nno4ekJUVXpCbUxiNXF0ZC9QT3ZCM2ZZUkhzZlFhTlNQZmp6V3g4SkdDS2w0?=
 =?utf-8?B?SlQ4OVgwOVQxcWNpblM3MFVNSzB2ZVZaUDk0NVhUbHJVL3ZVOHJva2Mwcmlo?=
 =?utf-8?B?OTJXN0FYbWNhSFFGUDJRa1VMNWtrankvcmV0cDJkUWVLM2tDZno5M1BkdlhL?=
 =?utf-8?B?YlhwcUNnbWZFbWhRYnNFZktFQnY5MUdKNDhjV3ZySkhzcWRWTVVJSStpaS9Z?=
 =?utf-8?B?dzhuVUxyazFUOCs4VFdrdGRkeGtjc081MzhjbmcvMTRIcmZ2OXRmZnJZcG9h?=
 =?utf-8?B?eHFaZDZQaGxZNmMyVTlmY29PQkRJNVM3VUhJb3cwQWpnWlViV1dPajN2Nk5P?=
 =?utf-8?B?VVFsNkdoek9FUnZzeDVRazFGQnZ5TGpldjB1UmlZNldlK2FOcUNyWDFQZTV4?=
 =?utf-8?B?N0lBc2pkUkZMNE5IYUF2NnJhd0w2N01MbStyYzZnYnQ2WEk2aDhienUxSUNN?=
 =?utf-8?B?ZjEyYlEzRnJ6UlVHWFc2Qit6c3pyWTIwdzFMVVB4dy9UTlZmS1Izd2hZL1dF?=
 =?utf-8?B?ZWs0VE9vdEpVbTZCdmNwT1lSR2kvSVEvOGw4UzBmcWxjQnJibE9XaGw3WU5Q?=
 =?utf-8?B?aWVEZGpESHIzaVZjbkRoZ0NrSDRuTm41aUFsUmJWMWlTRHE2bm5YR3pRUEFq?=
 =?utf-8?B?cHNPaWNLbjJ4eVcyT2UyL1ZabXFNVEM3R3prblJiZGhJTS81ZmhuUlpVblpZ?=
 =?utf-8?B?V1VpR0V5MURYZlNmUUc3UFlqMTVFTGYzOTNPcDFvNWN5NzUxYUI0VXBZLysv?=
 =?utf-8?B?YnBtUUZVTzA4enlCaVJrdXBwY3FwUVJSZFBuNDMrRE5TSEIvTG11aUpLdFJE?=
 =?utf-8?B?bE11d0E5Q2tDZjN3dzVPVVRXMFJFMmNROXlQWStiUUc3RXlKMWZnZHBlQVlX?=
 =?utf-8?B?NjM0aHhGc1haTUNVeHcycWdRQ0dtUXpNRVpQc1Q4a3NnZTJTZTJ5RDhMQVlu?=
 =?utf-8?B?MjdLTEJHZTdBc1F1ZC9UUC85OU1BZlRHMHlheituSHNtcFFhbXJ1YzgzZERR?=
 =?utf-8?B?Vm05OWFwbVhaZVVkb3hxb1R3dnBxZGpRS0I3MWdKUEVmUlFvcFpwVFJQbDRa?=
 =?utf-8?B?N0k3bS8zWTgyMW9ZbEUrcHlVb0RzREJTa3ZhM2JrM0lOWjVkYlhsMFllbXhw?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 110b2a61-d566-4faf-6092-08db7bade96b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2023 10:11:48.1490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WfGPbjqInkG3ZVdzaAeLal75y/dl0qiegLGColjtCPJoSt/MQuJsG6+MJp4WRjwH3bbtcfuIIkI1E0z3RNBuF+oZz3J7ODm9SX6KI2ohzT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6306
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688379113; x=1719915113;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CC13vOQqUtJ+lDYZkHc0AAaLLPU3OKFW1a/lG6DqJ9E=;
 b=CBftbTH4cGhCGddnTfkZwU3de6/IsUFsyYYfqZQl3GRevNH5FNK1jYjK
 ST7Ur2QicU1N3HuFXL7NdaCNZiFn72ptVN0LwrGVhI5bjp0He2Oi/ma9R
 I3FfoabamYHl96vj3GY41W3Y8Seh4bQpGV4o40Q9J4xvpjnDWeu2X0IoQ
 WxZLPEsXz8nZWUtz/g5a2lkrHBikUr1YVZomXnRfOlw+xPb2OO4gapvEK
 upfhN3w7K8ZnrdzGfrvkuHA0SYA8laiERV/NcHzVbFzAzVvKpLqYuHS/+
 woUoGCOebGWiRchQBkd9pn1v2hhb1dHKk0pI1q0oqyjURln5dPRfp2NAh
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CBftbTH4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix memory management
 in ice_ethtool_fdir.c
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

On 7/3/23 11:59, Jagielski, Jedrzej wrote:
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Mon, 3 July 2023 10:34
>> On 7/3/23 09:44, Jedrzej Jagielski wrote:
>>> Fix ethtool FDIR logic to not use momory after its release.
>>> In the ice_ethtool_fdir.c file there are 2 spots where code can
>>> refer to pointers which may be missing.
>>>
>>> In the ice_cfg_fdir_xtrct_seq() function seg may be freed but
>>> even then may be still used by memcpy(&tun_seg[1], seg, sizeof(*seg)).
>>>
>>> In the ice_add_fdir_ethtool() function struct ice_fdir_fltr *input
>>> may firstly fail to be added via ice_fdir_update_list_entry() but then
>>> may be tried to being deleted by ice_fdir_update_list_entry.
>>>
>>> Terminate in both cases when the returned value of the previous
>>> operation is other than 0, free memory and don't use it anymore.
>>>
>>> Replace managed memory alloc with kzalloc/kfree in
>>> ice_cfg_fdir_xtrct_seq() since seg/tun_seg are used only by
>>> ice_fdir_set_hw_fltr_rule().
>>>
>>> Reported-by: Michal Schmidt <mschmidt@redhat.com>
>>> Link: https://bugzilla.redhat.com/show_bug.cgi?id=2208423
>>> Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>> ---
>>>    .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 55 ++++++++++---------
>>>    1 file changed, 28 insertions(+), 27 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>>> index ead6d50fc0ad..89d6a1d2e7e3 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>>> @@ -1204,21 +1204,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>>>    		       struct ice_rx_flow_userdef *user)
>>>    {
>>>    	struct ice_flow_seg_info *seg, *tun_seg;
>>> -	struct device *dev = ice_pf_to_dev(pf);
>>>    	enum ice_fltr_ptype fltr_idx;
>>>    	struct ice_hw *hw = &pf->hw;
>>>    	bool perfect_filter;
>>>    	int ret;
>>>    
>>> -	seg = devm_kzalloc(dev, sizeof(*seg), GFP_KERNEL);
>>> -	if (!seg)
>>> -		return -ENOMEM;
>>> -
>>> -	tun_seg = devm_kcalloc(dev, ICE_FD_HW_SEG_MAX, sizeof(*tun_seg),
>>> -			       GFP_KERNEL);
>>> -	if (!tun_seg) {
>>> -		devm_kfree(dev, seg);
>>> -		return -ENOMEM;
>>> +	seg = kzalloc(sizeof(*seg), GFP_KERNEL);
>>> +	tun_seg = kcalloc(ICE_FD_HW_SEG_MAX, sizeof(*tun_seg), GFP_KERNEL);
>>> +	if (!tun_seg || !seg) {
>>> +		ret = -ENOMEM;
>>> +		goto err_exit;
>>>    	}
>>>    
>>>    	switch (fsp->flow_type & ~FLOW_EXT) {
>>> @@ -1281,16 +1276,25 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>>>    				     ICE_FLOW_FLD_OFF_INVAL);
>>>    	}
>>>    
>>> -	/* add filter for outer headers */
>>>    	fltr_idx = ice_ethtool_flow_to_fltr(fsp->flow_type & ~FLOW_EXT);
>>> +
>>> +	if (perfect_filter)
>>> +		set_bit(fltr_idx, hw->fdir_perfect_fltr);
>>> +	else
>>> +		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
>>> +
>>> +	/* add filter for outer headers */
>>>    	ret = ice_fdir_set_hw_fltr_rule(pf, seg, fltr_idx,
>>>    					ICE_FD_HW_SEG_NON_TUN);
>>> -	if (ret == -EEXIST)
>>> -		/* Rule already exists, free memory and continue */
>>> -		devm_kfree(dev, seg);
>>> -	else if (ret)
>>> +	if (ret == -EEXIST) {
>>> +		/* Rule already exists, free memory and count as success */
>>> +		ret = 0;
>>> +		goto err_exit;
>>> +	} else if (ret) {
>>>    		/* could not write filter, free memory */
>>> +		ret = -EOPNOTSUPP;
>>>    		goto err_exit;
>>> +	}
>>>    
>>>    	/* make tunneled filter HW entries if possible */
>>>    	memcpy(&tun_seg[1], seg, sizeof(*seg));
>>> @@ -1298,25 +1302,20 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>>>    					ICE_FD_HW_SEG_TUN);
>>>    	if (ret == -EEXIST) {
>>>    		/* Rule already exists, free memory and count as success */
>>> -		devm_kfree(dev, tun_seg);
>>> +		kfree(tun_seg);
>>>    		ret = 0;
>>>    	} else if (ret) {
>>>    		/* could not write tunnel filter, but outer filter exists */
>>> -		devm_kfree(dev, tun_seg);
>>> +		kfree(tun_seg);
>>>    	}
>>>    
>>> -	if (perfect_filter)
>>> -		set_bit(fltr_idx, hw->fdir_perfect_fltr);
>>> -	else
>>> -		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
>>> -
>>> -	return ret;
>>> +		return ret;
>>
>> Sorry for late report, but now you leak `seg`.
> 
> Actually i haven't changed the flow of freeing seg when
> firstly it is applied and then applying tun_seg returns error.

But, per my suggestion, you have switched from managed devm to 
kzalloc(), and now you have to kfree() explicitly here (devm would free 
it on unload).

> There is wrong indentation at the final return line,
> it will be fixed.
> 
>>
>> I would rename 'err_exit' to just 'exit', and keep all memory freeing
>> there. (That would simplify the if (ret ...) above even more.
>>
>> Remember to cc netdev and our intel Maintainer for v2.
> 
> Sure
> 
>>
>>>    
>>>    err_exit:
>>> -	devm_kfree(dev, tun_seg);
>>> -	devm_kfree(dev, seg);
>>> +	kfree(tun_seg);
>>> +	kfree(seg);
>>>    
>>> -	return -EOPNOTSUPP;
>>> +	return ret;
>>>    }
>>>    
>>>    /**
>>> @@ -1914,7 +1913,9 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
>>>    	input->comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL;
>>>    
>>>    	/* input struct is added to the HW filter list */
>>> -	ice_fdir_update_list_entry(pf, input, fsp->location);
>>> +	ret = ice_fdir_update_list_entry(pf, input, fsp->location);
>>> +	if (ret)
>>> +		goto release_lock;
>>>    
>>>    	ret = ice_fdir_write_all_fltr(pf, input, true);
>>>    	if (ret)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
