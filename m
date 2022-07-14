Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8234E57632F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Jul 2022 15:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 195E084672;
	Fri, 15 Jul 2022 13:55:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 195E084672
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657893340;
	bh=qP9tEYrNeRBC9v8dPhRNgaOE/8TiuLOr9a73rxwx6Fk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=huGDQqNenv6xTkqek6iv7N70Hy0BcTrVP3BLLf+kGyf00FwsGD5A4SINdWkvUQ7/n
	 mWYrHQm+1wXmXeBU8PhgCOm1mtzpVdpwscsRTeT2+6RJPVqJexyZyiIv/c1m4iKDq8
	 sqYogn69jiovDS6K7V1p3puSkLTTr0fNVHffe73q3XBTCDMHMeHEh+NFBEobkb1cC2
	 dXT+VI/TAJBjGu+/5Wz+TD8PffxJ+iprJxosuwx29vwIKAyBRIYYw+xYdnxiRO9Ysd
	 z36NLpEbqx6kMY5UkZveDmIK8MEi8de7dl80XocgRTzJ6/cnS4sCBQ8BRHp1oYAcYZ
	 FGCSgoGdKTwqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9PpfDGSctZoD; Fri, 15 Jul 2022 13:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E020830E2;
	Fri, 15 Jul 2022 13:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E020830E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A3121BF36A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 21:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30EF384AE6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 21:11:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30EF384AE6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5sQsV11Mmg1y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 21:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEFAD84ADF
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AEFAD84ADF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 21:11:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="371945781"
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="371945781"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 14:11:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="923232410"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jul 2022 14:11:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 14:11:15 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 14:11:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Jul 2022 14:11:15 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Jul 2022 14:11:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xlp+1CEPpD9Jn9CkzOohhN2oJoYOc9Y0wi4PBGMtaU4br2SXG+vZOs6uLDHqlgF5VTmdDGbKSfCfQEtA4IrRaF9RjWWNZINpvsoUKcyuthSXoAj7InBDVI0tHldCNGdHQOc9bUpR0cXP9zk1oanrZ5i1jWLHMidQ7DONfkKeD3Dh46Up+SOthhlIHnt5subZJgDHJ7/pS3cwf6DB54Mzmk0T9qO6mdi7K6s/4eXgh3qnxL1Du50PAjljDzR6SqXdY9auDD0ANF7barreExOD6at71/GQl/mahBxfc8kxtn6ASpe4Be3jE/4iM3Tcq413FmXx8X7gLXNZlHXXs5+vgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ii/m0U1/fWezMcref6xwomeWDwrzyudUWC337RiTEJ8=;
 b=jcszcUeEbCKxWerLRxJERNuc5BlOsSzRxFXFCiGwmfnwLzDTEd0LFeL78BwqC8CeMXayGbo7WuinKYGhH2hP0r3KPtUK1GHdL6fT0SRTQwJm0Dov0J9jvkL/DQZJu4hvr+qoWYjSqh/6Tx6MUrhZ2Fz306eeKZvVw0atTewJsmAFpmw0ALtuxiuLJaQiIx4O9INvCASwGjFLNBp2wToDad7Ac0EqPNAIl//HuDknFfQ/ZJoGRA3yxHm9UHGhSoj9BdNT8NFwL5CNE9xFOOnSWp7FDT5P/cikSEJb7smj8kNpcBfb9iNB7d0jdli8Wyi4sqvZxPPoeOfEzpu3pduK5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4852.namprd11.prod.outlook.com (2603:10b6:303:9f::10)
 by MWHPR11MB0080.namprd11.prod.outlook.com (2603:10b6:301:68::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.25; Thu, 14 Jul
 2022 21:11:13 +0000
Received: from CO1PR11MB4852.namprd11.prod.outlook.com
 ([fe80::2d63:e9c5:eaf7:dd1d]) by CO1PR11MB4852.namprd11.prod.outlook.com
 ([fe80::2d63:e9c5:eaf7:dd1d%9]) with mapi id 15.20.5438.012; Thu, 14 Jul 2022
 21:11:13 +0000
Message-ID: <73c9f79e-193c-b2e6-2223-5f7677673597@intel.com>
Date: Thu, 14 Jul 2022 14:11:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.0.2
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220712151422.50489-1-benjamin.mikailenko@intel.com>
 <da53acfb-b259-757f-4e4f-ff0744bfc2fc@intel.com>
Content-Language: en-US
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
In-Reply-To: <da53acfb-b259-757f-4e4f-ff0744bfc2fc@intel.com>
X-ClientProxiedBy: BYAPR21CA0011.namprd21.prod.outlook.com
 (2603:10b6:a03:114::21) To CO1PR11MB4852.namprd11.prod.outlook.com
 (2603:10b6:303:9f::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 130dabcc-1247-4b5f-6119-08da65dd6207
X-MS-TrafficTypeDiagnostic: MWHPR11MB0080:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ltd6qtE5MNKZFe9EUsu/MVyd7j3aZ7G1QUopAHretlTvkaofThH/bbhfA7pa3EtdetJg7ex2hVNfKf2sZJPuIyfZbHA56E0GK0+x37rLRPjtlWuM3qkA34w1Ifol3GmPpnTBfSZpUNs7qeQZJ5He+RRPbrADHBtZZvu2jssdottd0UXCJwSLQutyRwHCSnEdGF8Lfl+deWgsSVWZO/d/l4pHMpMhqDtN040rUv7aYwzkAUCkwTJKjCi4DCgvnnv7sQFB3TxLTWy/K8y6MoGZc+ff5kSPmlz8hq2/W0hJ8B1Ufyh86Up9mZeLthJbcNyjomBArb45MHz4WKnVR15x0e4tZkInluBrvP47iaP+SC+lohtHwWZ4QHsknZ6ebboIXXpL6/u4FXXddF4C6XYajQnplQT7GB4cffv0+QRQH3cB4nUPBmZkUax2HZuSmSjxZjfqSQ49lFPwCYaT6fKalaAiDsFYUuOR6njg99X9yl4srCMVb4fSMGcDxuB8aL8y7gYb7mEGTMojxux9UJzbBa2yC6Jq8T3npHJxeWDfH8qaYh48Q5MMjpOOlcg2Ol+aYUW0vJMMHqFjz0BxCj2BeBZBt7WXIup20Y6aR1IZPDEm7JZkVMWPrOmT23wEMcq0CrKfQYGHR3ncb1AqtfEeC5oMkgKhMI5VZL4dZiiw8lk37gQ1MRHhe5mOk2n8zpFbUcMrbik3NSQdIjcqWFEx3bJLLyG/fZhTxincTIwKyA3UeqEEv1C7isX5EHvrgRwvJ0EAlxE8j2dVSBPt8Ow2gyGbtG8+z1bLssGvIc7ruMmLn5N++/yqm/kjvd/MwmEfWq/rz0E9qD/CD9OF/rGhBm5NV5rsxz+VlLgNtJqGYJfY+6wqJ83q6BnDiGpAGx3C
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4852.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(136003)(346002)(376002)(39860400002)(41300700001)(66556008)(66476007)(66946007)(8676002)(966005)(6506007)(38100700002)(6486002)(186003)(31686004)(478600001)(316002)(2906002)(8936002)(36756003)(31696002)(44832011)(82960400001)(53546011)(4744005)(6512007)(2616005)(86362001)(26005)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bzdXVHJsbnF5RURFS1dwUmlYVFBNWXVaREVPS1hEZlZIRVRTK2JQOU9HTGQy?=
 =?utf-8?B?OEN1Qkw1aDZ6VWxUYVZJK0dqclBDdUxxQjFBVitZbERXUDJwWlduMHpZWnFu?=
 =?utf-8?B?djZjSTFON0dTRUpOcng0cmxPa2k4QitmVkJSTnVDSWd3ZkpPUWpFNHo0WnNH?=
 =?utf-8?B?RXBubUhsRXJFWXMraEIwWXpIRHZoNzZISHhBSEFWNkpIZmZzRVcwYjlvMW9i?=
 =?utf-8?B?SHRDNFZSZzVvV01sVEtXQjdWbTRPbWtwU0U4VFJyWVdoa0ZZS1VPeXRuYzNT?=
 =?utf-8?B?TFY4dm9OblJ2VVpTN0hndjducHdNZUFqU1U3QWtGQi9wWFBqYTJNRkN6Ukh1?=
 =?utf-8?B?MFFNc0NYZ2d0T0tlYW9oTHBvZHhpNkhFcEFjd2pXZ2MwbitVMTBaRlovdm1O?=
 =?utf-8?B?bGxWa1g2ekVaakN4V3kwelpTZFRYRXNqQnJGYlRXRDY5NE5YS0R0TzFhZmZE?=
 =?utf-8?B?S3QyNyttYVc1KzltL2I4Q2c2dERvc3pUNDRseGxDRmc5VFEyNDhlZDZ6QlpI?=
 =?utf-8?B?RXVpbGFMYncrTE8xcFl6UTVva3FybFNlUS90VVE1SnkwRFVNaldXd0pOZ0p1?=
 =?utf-8?B?cW1MKzVyYW9yc1RYZlNsanczTHA2clZRSnVoUzBMZmw5T2FjbE5NUXBpSUFZ?=
 =?utf-8?B?eUdwNU1qVVZvQ0doZUt1a1YzSEs5MXNHWUhyUnM4eTRjL0luOGp0Nm1LTHpM?=
 =?utf-8?B?L0ovc0VpeC9uZlgvOHJDNU5PcXBlL1c4RUJQNm95U0xSM241VGdKOElENklJ?=
 =?utf-8?B?N0piZTVCYVZwUEdqZzh4VGlJbUlOS0pJNHErSFBxQlJtZExnV2EvckZIYUo4?=
 =?utf-8?B?VXpNcjJJUVUrdXFQYk9nZlgveUVlL1VXYUQ5OTVUbGpFKzZvUjN5VmdqR2pv?=
 =?utf-8?B?a3EvYWZFZFFUTFZTMHJ6a3JrdVpUTHlCeExZK1l2YmZvVEZjb0YzZEZPdyta?=
 =?utf-8?B?NVZEVlBpL2F6cmRjcUZGK2VVdmFvQmZjaEZGbWpFMG9PNG8xNEVmNUY2dWF2?=
 =?utf-8?B?RDBXbWlBVy9XTCs1eEVaNmlZcTE5dFZOSHViMm92S2dBTGJ1dTd3UDNQb0xY?=
 =?utf-8?B?VlNBSVBTcHZtNjR3VXNRVUF6WjFkWi9oaDl5NUI2Tjh3OGFqR2pWMHhQY2Iw?=
 =?utf-8?B?RlNxVGVjQ0Y1cjY1Rnc2UHRmVWNob3YweDFabjNqcEQwOTFiR3ptWGplWFNw?=
 =?utf-8?B?OGdzSHg3WUFmd3lXRnVyazJxQlRsdnhTY3orcVdjdlNpdVozakFDdjZCQ0V1?=
 =?utf-8?B?blRjMmlaUEd2dUtHYXFVdmhFSGc2WHBKN0FsSko2enl4NEdKcjI4dXAzSjBD?=
 =?utf-8?B?aFNlNHNIT1BxN1VRMDY1bFY2L3FFWVM5cnVzN2ppcFBuS0hOTjV5TDEzZktM?=
 =?utf-8?B?VVFTWGZscTIxZ0gxTWxUQjdSVEpoYVVRYlIwLzd3WkIyUmdOVDE4VGM2YWhL?=
 =?utf-8?B?QXh4Szl5Z3JhKzhFd2dsMWwrU0ttMSs4Zi9pdnFxZTZxUE8ycnB3eWtnWThi?=
 =?utf-8?B?TzJMVlpPOHZGNmY5a1BJbWFPeFdaVXZ5YWRWMm1EU0llaFFJVllLU0tkVXNV?=
 =?utf-8?B?U29ubkU1TmNVd3lEL1k4NzVWN3dkbWFLR3B1WUxnRTNtKys1MVBUblR0dEg4?=
 =?utf-8?B?M2ZaZmJVL2xQQ1RZbmtVSHhKaXVkbkhsVk4yYm8wcnNWaXFIUE5zanpyRTM3?=
 =?utf-8?B?VUxmcGpRYyt1a1NmUVZFcnBFenV3c2hvbFFqcTJzc2NiUTZZZGFYZFlITzBn?=
 =?utf-8?B?K1BzRTZoMXlCQTlzWFRSS25IVWlGRFdsOFNiaW4wWDhzZ2JFTVRIaVlCdEFp?=
 =?utf-8?B?VHo1Y0tDN242cFNnak03Tlo0QmNCV2UxQTlrR1YrcFRnajhRNFlqZlVxTHNp?=
 =?utf-8?B?L2VSZWpnOU4wS1UzU2VSRzY2dW1lUVM3Q25xenU5ekJ6bXMraTg5Y2ZwSitI?=
 =?utf-8?B?L29xdWt5YUVUTnN2VWJiYjVRdWhBbHd0RnA5a0sza0ZxeHF6eU5jMXlTaTVN?=
 =?utf-8?B?K2NiWDJ6U2Q3SHk3YldUZlFDemVRS1VSMEVjb0o2TXAvNlZ0K0JXalBkVnNS?=
 =?utf-8?B?MDJ5OUtCNVlCajRkcjFhRERVekpzb3BiYStzdnJTNkNVYmdTZkl1Z2NKSklr?=
 =?utf-8?B?c0hSNDZoUDB1czJyYkVhZFhzZGd6MytINWZ5SXB1UG9ramJsM2JLamRuaUR6?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 130dabcc-1247-4b5f-6119-08da65dd6207
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4852.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2022 21:11:13.4580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N42S3zt5Pa0n3SNRgTapUs/WZpEEEiQyGSsoacsc9lc4IwaJHWFCY6jDgFbAls8w2yAU7Gie5appwU+edoOhaiMifzIWv49s4RC+Edrg8r0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0080
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 15 Jul 2022 13:55:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657833078; x=1689369078;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mnUvFJiZegclvcdiqwwM2xNOIcqnyUvF/iCo9l1tyfc=;
 b=kflt0k+gG/QeoY0CBn0Ys8CeRQFH3vYf/Xnw4S/2NKPUYFgljB8xxw6X
 EG4rjNkmh83Gnf/DtkArLRJfJ4j5P2GweswnexanE4kGD5ki8xtqU6kGb
 mls2oqbf/0A5kzwkAd+AfAUYKMNPldVDNwYOCYznJoRjA2RCPucQsClwA
 j7wAZ+9303wSIKFBCPMWIQEzgSYlYfiDobhe9HtXWr9bG7L2Zvo/JIARv
 HUYoTND5kH+qx0axDwek4pivEDBQMNjRLAtm01r9m6kC2ZDz26TfldRfL
 GUDR699HSQX2GAI8NcMy/yJEn8ky1xsXWBl/xwalY88KEIWD5CogrHF3z
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kflt0k+g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] ice: Fix VSI configuration for
 non-PF network devices
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/14/2022 1:50 PM, Tony Nguyen wrote:
> 
> 
> On 7/12/2022 8:14 AM, Benjamin Mikailenko wrote:
>> This fixes an issue for a failing loopback test
>> "ethtool -t offline ethx". Do not set Rx mode
>> and VSI VLAN for non-PF network devices.
> 
> This sounds very much like this patch/issue [1]. Can you test that and see if it fixes this issue.

Yes, issue is fixed. Tested on current next-queue dev-queue.

> 
>> Fixes: c7f2c42b80ed ("ice: Fix a few null pointer dereference issues")
>> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> 
> [1] https://lore.kernel.org/intel-wired-lan/20220707102044.48775-3-maciej.fijalkowski@intel.com/T/#u
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
