Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69242741772
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 19:48:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC4DF408C0;
	Wed, 28 Jun 2023 17:48:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC4DF408C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687974485;
	bh=tAKZ/21PBri5J5AI9j0HWoqYN7FSGdXj/6jl9/obDxw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1Fp6cgf80ghxdNOuFjXHgNC/bCittCuVXKJJQl+TQSexiaXMClrSLKrkmvUHwlBAk
	 1YUgbKkXfX3B91IfJX4sxx0MY89xcSyZgPP56ufM6DgeJEwJe8QWY4baT5gMXu5WME
	 wNlQRc+LGdNhM2S9zNwYUSia/FMXw7SrwX9VaaRhsQY+SK0/ESmTR7Us4qI3Czu7tb
	 4Wd5d4qPt6uPtkE8n4QgCjJJJ+4JxSNplwAE2OZMA7u15nILEgbk9DetdhJi5dGyRW
	 LEMmrbo12/3jIuk7uti1z9sezrgkIpsLzDuLd1Q2vpBZGs+76CXx6ldkWRcTv9jgyB
	 n8H3onHAlx3cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZqkLu82QD0kT; Wed, 28 Jun 2023 17:48:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8A1E405F1;
	Wed, 28 Jun 2023 17:48:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8A1E405F1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF7001BF2F5
 for <intel-wired-lan@osuosl.org>; Wed, 28 Jun 2023 17:47:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A28F1408B1
 for <intel-wired-lan@osuosl.org>; Wed, 28 Jun 2023 17:47:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A28F1408B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXTs4JYcea8c for <intel-wired-lan@osuosl.org>;
 Wed, 28 Jun 2023 17:47:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40FEA408AF
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40FEA408AF
 for <intel-wired-lan@osuosl.org>; Wed, 28 Jun 2023 17:47:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="346682174"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="346682174"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 10:46:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="717046290"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="717046290"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 28 Jun 2023 10:46:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 28 Jun 2023 10:46:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 28 Jun 2023 10:46:37 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 28 Jun 2023 10:46:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fTPSao5W5O6YQFN2jM7WWzNBrjUsnhwcdRx/9OPCyWU76gT3vbl4TGFOrGpRSMF8yonralJCbaeptAYAFTfgZey+A6HvZayI1jdlphXgX6QBkvO/XTxXJoZmp6dsYMrxA4q6AUtdyNYhSlIeqoNsjL7dKUmZ95RZavkgxDFvzVNxzhGlcSS3IP/CqZhY9W0kg/EbmZd+kQYwZDvdy0Ej2I/1MNSRJGZ5tT1BRsapk8N3AZQzTtVPz2LwXG79alVwW//8aC1spJ9SXAIiGD48/9vyP9WjSfWQlEaDtDKkZ774klIkCjR0ddojytKFZx6tkU9Y6oVV3kXa++PV4eqtQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=weLo3oT4qCnXRuOL9BNu0btvlrPXzszIBgb+ux+cbsg=;
 b=FA0ZKIttMpTfYvsu/wTwKv+Ph+KlnXmsp6S/lW4nI/cN7covhtctUHF09pEbhwQWjmM3eAPK1Z2jdVd3JVchWoCvQKzqo5DKFS9gEz91W4KedG0+W/l7WZGk8m6AWVWNTRq291f0foneQ7i2QcLMS85d09BsrVu0FgDpf13jpuL57eqpfgXHTomlukUMTZeps+keF5zpEwsFl986+RL8m8OwRJjmgdG7sSbAbzb8HjuJn+j1fnPJDd3zIC6M2Q+Wsjf2lVG3p6W/KSOJ503KYdbVC9x9RJeb/dQOehmiCAtN30k0kqcCaaQ+kZ4D8kridNhpdKJINgKzyha43+IP6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.15; Wed, 28 Jun
 2023 17:46:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6521.024; Wed, 28 Jun 2023
 17:46:34 +0000
Message-ID: <a49f657f-88c1-08e3-5e53-771778be63ad@intel.com>
Date: Wed, 28 Jun 2023 10:46:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20230627031217.1476-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230627031217.1476-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: MW4PR04CA0292.namprd04.prod.outlook.com
 (2603:10b6:303:89::27) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DS0PR11MB7382:EE_
X-MS-Office365-Filtering-Correlation-Id: edc48c6c-c8e0-4876-3e99-08db77ff9d14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KmJ5bFT+zkQciEeBOxFcgfRgOuQDlOMTAiC27IySc71qVwiGepooNzVo3CnunrXAi2intNCwhHnswf4hy+ZPOuMn+WgIBTKxrnmBBTqj6flk6er+lFDwZSo4FpQ2QF4yl+lYlZDCpZaw706ZkfbytE5vnI9iBP7yLpCwitwx8+/tYLJpuof1UbMG2AcGG8vq9iujTZRjWfm1Pm7UMcLQKr5p5touvam6yqaI3U8oLbHvFGPLL3ke2g6LoN7IecNWCJNcqbugL+6JhgQHYdVqHXatzxv+IR28ebhNDGV1f264BBZOW859GX+2zvExShWVmwP1l3x0AxZCdVB3pTDi8JdFmCbje1+kP9I/dYkYB+0CtrMWGpvYNC97hm3FWf38dI0L3QWUdODm1lu8l6V6zEXpkyPYOf5OQb6x5gSIpZgxl2cTSymBaDuaGuf4+m8o9kUt7Ead4Iru86+IgBTYIAgrhNyICkoLlS9WF5G3oqk92SSVInh4I+2VZ0FG6R8Z899wwWpLac765YLp93HWOqBH+4d03lou4rP1GyHNBqLWjFdws9LK9f+FCBdhI1PqroJSjv5yAbprwstYMp813Ui7mP9nY4O3jSEaQulf9HT0tDWYIARST97ksmk4KNOt0JfoV0Us4fD6ZyP1xmZC122Xsft2G5wfSDssd5y4QmLK+GupQ/qWi6mugxCvgmhS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(39860400002)(376002)(136003)(451199021)(31686004)(966005)(6666004)(6486002)(478600001)(2616005)(82960400001)(31696002)(86362001)(83380400001)(66556008)(6512007)(66476007)(53546011)(2906002)(186003)(6506007)(26005)(36756003)(4326008)(316002)(66946007)(38100700002)(5660300002)(41300700001)(8676002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RStGZGo0VEtncVNna0RGZTA4WW1VT3BWcnlCTFFqTVJ4M1J3bWt0NkNXVXFW?=
 =?utf-8?B?ZDcrMGZGQW4xWjlPZ1R5YUh6akJFSmN5K0NCSi8wMFpsZmJVblNndXZOUmRW?=
 =?utf-8?B?M2oveHlqR1E2R3J0K1l6NXJrTGduS3pydkZ4amFxTitlS3YvMVA5Wm16TTMx?=
 =?utf-8?B?U08zalcvNnJUdzlneTdXN2JzYnE1aDdVZGNha01RTWRCaW1ieVFQQnRvQ1NJ?=
 =?utf-8?B?L2JyVTN6cWZpYWpGbVljMjZHS1N6V0tQRGFlUjhWQUQ4eDg3QXBlUUpMc3Qr?=
 =?utf-8?B?Y1NuSzRrekQ1dTB6VnNBaTFza1J3REx2Z1BYem5zdVdYQzJpMzZteXAzUlln?=
 =?utf-8?B?RGVmYit6M0tRTWJKSHllUFN5YkFzNjdZZkZtMENJajQ0bXdMUkhpV3NXdzdF?=
 =?utf-8?B?TmJzalJmMU1jQXl3V1EvRElsSndSVGZuN1RadGtTWFF4TlNIdytNSW5mUGtv?=
 =?utf-8?B?RHdGTnlCME5Kb3RmeWtJeWsrRFRReld6Q0VNUyt5QTFkblc3bk1yRXRZNEZl?=
 =?utf-8?B?em5QSGhWRkZERmdkM2NDdFhLazNSNFFyaGNxdiswVWdRT2tIU29iZ1p1ODg1?=
 =?utf-8?B?aVJPVW5ZSlNMQmtNRnE3UlRaRmtXOVhFd1JUNWd1ZjVUSzZzLy9TZVlJWTdj?=
 =?utf-8?B?Z1lDeS9jMlNQTWozV3B5UldtUmR4Q0JRY2lCTzdhN1BKTk5ZS0VJQXhzZWFK?=
 =?utf-8?B?blU0TTdaRmw4ajZxZzhjNzkvY2JiS3Frd1dwNUpaeHMvcGJ2RC9MVXJqd3Q1?=
 =?utf-8?B?MzllVTErbGkvNVIrcXQyMGpSNnFldkxBSXpWYTFJS1Zreml2TVdmWjRabmpl?=
 =?utf-8?B?SkQyVUo0MUZBR0VUOEtYSGZJNXduTml2bkRPc0Y4UlNscUh0ZHZxdmVES0lv?=
 =?utf-8?B?eUI2OS90NkxRbXJvdVF1T1pVd25nT0lPU3Q4OUkvU2RCMm9PbmZHU3U3MHRz?=
 =?utf-8?B?aTExaEMzMjE4N2FNVFZhMC8rM09ObXVCRXkrWmY1V05YTWUrbDhQWU5OcVpZ?=
 =?utf-8?B?QmJ1a2g4aXpBLzczWFFWVzQ0d3kvQVg0YzJ0cktZTUNZYmFsNk40VUxJVWhH?=
 =?utf-8?B?OFp2ekMrelQ1UTN0SGY2WDJpd1ovbUc1YzNXbU0zM1pib1UzZitVYlN5OUow?=
 =?utf-8?B?dFdPR29nc0lEa0xaVllnV0txcmYyajZwUG8zbm1ZZ1MzWVZzdUZOM1U5UE53?=
 =?utf-8?B?M09OeUx0c3JKdGNKazVJMnhrWjZZTFhvRFcvK0w3dFNmRHBqTHFKQ05YUnBM?=
 =?utf-8?B?b1RrZHRQdGRZSGV3Mjg1ME5DMjdZVnFSa09BWFFmNWJkalJaYTJKT3hPaDJw?=
 =?utf-8?B?aExZY1hMZUg2UEdxM1V2ajVzR2pxRDQ4UUxJSW1Ga0FDVTQ4bHRqWTNsa2ZZ?=
 =?utf-8?B?b0tHRkVIUlpyanBwa3NvZUk1VkV4UUtCMnBKb2xFbU9JK3pnZC9lV0lJWFlT?=
 =?utf-8?B?QTkwWWNBRmFCRHJ2dlRacXg0YUJlT1pTNStoclVPSUpXZzlJM3lRVEg4K0Nu?=
 =?utf-8?B?MHBsUUJ6aHMraGNkLys2QSt2QzJpOGlHbHljTy9xN3VhL1RZeGlqM3B5eU1y?=
 =?utf-8?B?eHpvZE5hU21rWk5mSmpjUVRCcXlXWVUrMnpWTmpSRWxTV1FmM3R1amtjREVi?=
 =?utf-8?B?U0RQL3JYUzBVMktQZzRTYk9Fb1dvdWFzWVZoYXNBeUtBbkF0ZWJMWm1tQ0Jm?=
 =?utf-8?B?TGdvTFc1V21WOElxR1JuUnpzbU1DcW12K01Zb1dUeHNhN3RjaCtscStacjRQ?=
 =?utf-8?B?djVCTEwvYlNoOTl1OVRFYnV5dEoxVzdCY2ozZ2FrTUxGa25wWFlHTytjT3pX?=
 =?utf-8?B?QUsrMUtkL1YxeHpiSGZaVk55UlF5N3h6TGVnUTNkL3NhRCt4VnhTUzdZTmFj?=
 =?utf-8?B?ME5LTzZManBqck1uaU5CVXlNRmtKMEtmTTJ1eEhkYWdiSmw1MkhQOVBEd0l4?=
 =?utf-8?B?ajdzLzhPWlIrRnVxaXZsaEtacG9RNndaaWROWlVic2JtRUowVUxOSkpyNzdq?=
 =?utf-8?B?a0Zvdmd0bHdhZ0hWelVzRWc0OExuY2ZVTnk2MUpuczhxY1phMFZiVm05a040?=
 =?utf-8?B?SGIwdlRhejBGQUsxQW9rTWowV2Irbzc0YzNDYVZpb3ZhRjA3RVRhbnQ4ZlJP?=
 =?utf-8?B?bW5uSHZMUVZkTHp0Mzl6aEFGbVN4dG9tc2NMUWJaVHZRRXlhT0pVVW1KSFQ2?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edc48c6c-c8e0-4876-3e99-08db77ff9d14
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2023 17:46:34.0627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VEWYV7W6tYnUbH8ng25CaXViheeiv1ZUuJdwYmfWTKckSNcl5zTHYJw+mPfu3Y8ktjQ4vg7Px+WLSf+jluxgijnZYB8VMllKl54CZniQimU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7382
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687974477; x=1719510477;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yJtQF6k6H+MJcgcgne6rJmUiiAfxtyykfnLfAAQ4glA=;
 b=PvfD7BUkYa4cAIMvL2EANjERglfZiyCjz6tdVI63iNrrRQIa2IlMPiGG
 hUo0iVzIs+C81qSWA1oTJyloZtqMUM4cenaAFqE7U2FGBInNEjzS+SJ3r
 N/orBhfc8cBiRBfFlJGTCqvF/UKMoRgj8r6zmPuH2jgdQfpXakPBBuaN8
 kEPCwxJ2b506PMad82sOlv8DPWwDVfutjXCCEUeOzxv/8Qgv1STxUzIOm
 2KBjXxotw7PWbJBX190EiOEwzWQWBxL5792fHakT05RF9POsAy90ibwvt
 4AkoOeHGZeq31mMEjmi5hczsWyf2pTheBbX3Zdmfc5M2RoG4noqZTRC9p
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PvfD7BUk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Fix Kernel Panic
 during ndo_tx_timeout callback
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



On 6/26/2023 8:12 PM, Muhammad Husaini Zulkifli wrote:
> The Xeon validation group has been carrying out some loaded tests
> with various HW configurations, and they have seen some transmit
> queue time out happening during the test. This will cause the
> reset adapter function to be called by igc_tx_timeout().
> Similar race conditions may arise when the interface is being brought
> down and up in igc_reinit_locked(), an interrupt being generated, and
> igc_clean_tx_irq() being called to complete the TX.
> 
> When the igc_tx_timeout() function is invoked, this patch will turn
> off all TX ring HW queues during igc_down() process. TX ring HW queues
> will be activated again during the igc_configure_tx_ring() process
> when performing the igc_up() procedure later.
> 
> This patch also moved existing igc_disable_tx_ring_hw() to avoid using
> forward declaration.

...

> Fixes: 9b275176270e ("igc: Add ndo_tx_timeout support")
> Tested-by: Alejandra Victoria Alcaraz <alejandra.victoria.alcaraz@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202306230056.OGrsvyKV-lkp@intel.com/

Applied... with last two tags removed. Please note that this isn't to be 
included unless you are making a patch only to fix a reported issue.

'If you fix the issue in a separate patch/commit (i.e. not just a new 
version of the same patch/commit), kindly add following tags...'

https://lore.kernel.org/intel-wired-lan/202306230056.OGrsvyKV-lkp@intel.com/

> ---
> V2 -> V3 : Fixed kernel test robot warning about missing prototype of "igc_disable_tx_ring_hw"
> V1 -> V2 : Removed forward declaration function suggested by Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
