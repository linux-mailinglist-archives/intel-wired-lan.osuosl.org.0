Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAC76B9F1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 19:52:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57BB14179A;
	Tue, 14 Mar 2023 18:52:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57BB14179A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678819960;
	bh=KRGT+GYDGoXEFMLxlWsRUMj5pqasqorUIRo3PcElJFk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tprb9HpmuG0kfTE/A2shcjZCJg6immBjgbvmAHo/7aRM0QQVPLV2q/ZpqLjAnOV9K
	 Ks2BbrPd+1pyNQofmjhdjdnYapfvKCgOfIww9w9oLylgfjqS9/+/YZEtkIP2W92exq
	 mpogiaQBenKv8D/xZfIVHpYpQFCggkpESLPukG1VQahvKA8wzGtMarvoHs/4iyhwP8
	 La21yQ7AaKVXJ6lHsK38pym3ith06f28XqPDtBfuHSD1XeYS0y67bItX1WlrmjP/jk
	 7l9FaL7ZDRtfjQHvzfCSbntOJGfgSf6Wr1UHAgwpF61N2ncx7X7pHCnk/WCQB/xxG+
	 2+jGMMip1EQVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id za-s009A02Ks; Tue, 14 Mar 2023 18:52:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFB7A41558;
	Tue, 14 Mar 2023 18:52:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFB7A41558
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31AD51BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 18:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1738A40919
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 18:52:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1738A40919
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fpuo-y9Ki75d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 18:52:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B7A240328
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B7A240328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 18:52:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="423786970"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="423786970"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 11:51:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="789478261"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="789478261"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2023 11:51:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 11:51:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 11:51:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 14 Mar 2023 11:51:04 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 14 Mar 2023 11:51:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lZhL/nFoc2vFOhvMsH2Bo51gn+WFq0mwh58Wcy3RhR/5Z2eV29bWq8b83vSD9WaGU0CTI8rYKt6OdGFGqlNBN3AXKOeDbosrh60RVgnIuYPBnZsnmCKs+jd5iKMAJKAPNL3eKd5YxYVPIVoW+iAFKntPDH3EgObQItOMecLxShQz5oobXiozBzwK6jRClGcOt+hfBCk7er5Or6xzyTNOxWvR3ZOg3sCoxKYGuGSob/NOBCecAkru3hm8zQ3bQRdmB0vFGAeLtkgfymqEPRPvo0FMo4h4nrP+kydt7SdiuHM1CmUgm6QNqFRWS613j1NOd/AcC5o+Nd0GtynQ/sQwOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iZjkvqf36jR9Hr3GAGinlCNU4FKxNl0jxoOJ2+iofa0=;
 b=OtOMAhi+YD46CgDNH+UPsyX6BxZlawRqS+Y2pq7kGkP7Tmo1xUTtIsnmsPI29ib2C+zDYtDKiY4Dqx/kDKE4xKNe3ZIMBNu290nuhtdikdE8kjzkjFiDWDKbrfF0hmJIPuuV5SNHOGjd+pnso46BXC3/iPmlMGZr8cQoSQGZqAO15Yk/rYyGHTCvESA7WNdmLq4syETF2xfFEkZmfilE55NtkC9daKQWLVkp4fQB333qlyYW/YMUeIs14uQ5VHRsD9GHEyJyRj8JvUYg7fe0zaolcHV88rvWgn+1+3lgtPEDCla51ZOvbksJerL32k91UCNaMvbc3oGnhACBgzcqwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM8PR11MB5704.namprd11.prod.outlook.com (2603:10b6:8:23::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.26; Tue, 14 Mar 2023 18:51:02 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 18:51:02 +0000
Message-ID: <748aed5d-c112-63c6-d99f-4c458fab6be6@intel.com>
Date: Tue, 14 Mar 2023 11:50:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jakob Koschel <jkl820.git@gmail.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
References: <20230301-ice-fix-invalid-iterator-found-check-v1-1-87c26deed999@gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230301-ice-fix-invalid-iterator-found-check-v1-1-87c26deed999@gmail.com>
X-ClientProxiedBy: BY5PR03CA0020.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::30) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM8PR11MB5704:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e2c8d7c-1ce6-4d78-7d93-08db24bd0f05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lXeNCIZhnASSYUkhNCF5eKA64dlL5YlkZopJakND8Bsl8KVxnY2MHFDKcydukHm9nyhwOsbgZKbYdUorFSDrWDJMx0mPeTToKKqWqR0znP7j9LdHGMC8PiNb/E2YmmLDH+5pE+JaytHTGkJsjl5L6NHjPJQCaNERtuFD1Wf47sLU1lN+mcvby3y5EtqSSiZcgUg5PkRhZh0ugqSzb29aJgs4APBPD2fBt+rXUP7OY+LW95HMgiWfVZxTdCextSHaGOvsrJnBVCB7iEBJxCOC9Yp7QFgl16smLeyFw6yQ2IysCMBWRPbY3ac10US/8W/TTtxZnNre4Pb6oIYx0WEBN05Qj0irKiuC3Sn4sy2I+ol0yYORpDUj3fosJoh/QNNNLHBTTCrpDFYkerlywzEPQTPG0Cm2P2h8tPOcmp0ua6uBgnnYZuXShnkyegmJ85MOd7JhIs8hsU3Z2hRf7HG46/ZszkpMQsIBXrYYMGeeyfQB31noSVhdxU6NFWObhL+79toP+LdGaaIUZPOi/mSIh11v3IUXWe9WxMNnU7F6CTfDbB5sa2PkpFghznJWyyEYA07iDsBJwVaMv0zHMXDfYAYjLOjmnheFtCuLOvv3zB/OGt/wJiEdJ3QH4UVW2QsMtSrCiew9pEcDzjGXy3LHznkGd/a2NjMlCurM/IByRY+7HjDPBP5XEddjlcTHOK5SdotWbUXSc3gbdDiiDUG/esQW8Y/puB/0XB+KshkXZyY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(396003)(366004)(136003)(39860400002)(451199018)(36756003)(316002)(110136005)(54906003)(6486002)(478600001)(966005)(2906002)(41300700001)(5660300002)(7416002)(8936002)(66556008)(66476007)(8676002)(66946007)(4326008)(86362001)(82960400001)(31696002)(2616005)(186003)(6512007)(6506007)(26005)(83380400001)(53546011)(6666004)(38100700002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXQyNHVJbWErVEloMFdvcXdaYXN3ZS9OV05WZUw4M1RJSEJYVFV3S1Z5M2Nx?=
 =?utf-8?B?Wkg4R3FMVDVzeFE3WFBpSVp5S2dLWVcvMGZiR2lHMWF1aU1wS0pseXNNOUlW?=
 =?utf-8?B?YmkvT2lWN2U0Nk11S0R5M0dIQzhEandUQVU2VjQ0OXdoMGxmTUpYR3N1dnUv?=
 =?utf-8?B?Q3huNWcrMHhwNmdGQW5pc1pXUmE4SGdmVkE4VjdpYXkvOXZ2d0FmeDZDREZI?=
 =?utf-8?B?MEpRTm9sRWZQQnRiWkVZbEpxSy9CQzh1Zy9jcTArYzJ0cWdzZE1JQ1FXVXo5?=
 =?utf-8?B?WlI2cWZacmM1VEg5QmdHVWFnVDRyYTZlWGc5Z0o2R3hvbVpLV0NnaEU5NlJj?=
 =?utf-8?B?VVNaUFNXbE1PRmE4VXUvdjVsME5yWUNKeUk2UUpBbnJOK3lIZWI1SWpTK1Rj?=
 =?utf-8?B?dWsrbW1tM2hmZjBaVWtiVWRRaFkvS0RYaEkzMk5zcHh4ekc0YWZYeFpBb3BP?=
 =?utf-8?B?NUNCSkVIRngwZ2FxT1lQQ0FTUjZjZnZQVmtWTGFqVTFaZjZTdDVFckpWVDRo?=
 =?utf-8?B?RzBPZUh4WW1IN29oQ09rYjd3YThwNm1PbWwxR05waHZsZ1Rjc1dVTHlDODRz?=
 =?utf-8?B?Z0JoWkltdkNqVWx0MXFQQjBzRmd4MFFQNjNYNVJXSDlGaFh4TWtvdlFneWpT?=
 =?utf-8?B?TS9BYnZLb2gxb1RqNEd5Q2tSeDV2bU96U0p2NmFZK1hoVlJ4dmk3ZjlXbU9B?=
 =?utf-8?B?ZER3V2RsbFFqRmpKNmJNV1o2MHUyVnl2Q1FOMzdLRWV0NWY5akdMVEU1TzU0?=
 =?utf-8?B?a1dZM0ZiSUpic25HNUpDRytxT2N0Y0QvUm1Gd3haeVRGUElDSUV0ajJlOTh5?=
 =?utf-8?B?czdyZXJ3RE1GVTlub2Z4c2hIOWVCclN3eThWQzdxT3lseHhWc3NsVVVITjgr?=
 =?utf-8?B?SlIyR1FncUxaODlBNWNzUlREYWQwaGcxdlpFZUlIc1ZXd1RCT3V0d3k0Ymc0?=
 =?utf-8?B?b1pFOTVaVHJkalhZU0dEV1VWeElzK3hDb2xPTWtjcnJKNFN3ZU0zeWh1dUxN?=
 =?utf-8?B?TllGbG1QMVdENSt3bnlmZWdiUDJFQUJuYTlRZlVFWnBvMUlXNHhJY2oyUjFZ?=
 =?utf-8?B?U3dYcWpFaXBBL1VFRHRmVG5hNmZROTdyc1FWMlZWQjI0Q1h1QWlvVVNKQ3FV?=
 =?utf-8?B?YmE3TnJTM2VCSVpIQWlKMTBjMU5rN3RqbDFUYnE0VU04ajZmWHROOXFOQnM2?=
 =?utf-8?B?Y3cwTS83QWsvZ2xJNmU5QmJaRkZXWU03amYrcWpvUlR2Qk9rWUppNXNGeEFC?=
 =?utf-8?B?UlBqMHh6NkdFQjRONWdpSFB5U1UwVlg0aUhXbmVLVHJvTHp0K05lbEdnMGwx?=
 =?utf-8?B?UmNvY2R3bDhMU1dZTFRaNjRTaGJYNjd5R1NoaWpzQW4xZzRwbkRUaWlKRE9O?=
 =?utf-8?B?SGlaY0pXNm55Q01RRUVOYTIzMTJFZFpJdDI2SklrTno5T2x6aFB0Rk5VSmZ6?=
 =?utf-8?B?TnI5K2R4YU5jYnZpQTVUMzFwMmlZZnhTQTFTck4vOVhadklSdUJZdkhEam42?=
 =?utf-8?B?QWZ6V0FDR3pCczUvUDBvNWVFWGlEM3FLcFNDR09qY1RGL1JwQm5tdDZoTGVG?=
 =?utf-8?B?dHdBTEdqZDhNUnFJcEFPNjBGeGRVd3JHamZzVWc4NDZSZG5aK3k4N3dSVWdz?=
 =?utf-8?B?UnhjdUJqMDNFUW9OYVYyRU1KZTU0M0x5eVZIaWwxUFFVR1FXZlE0TG0wNzJR?=
 =?utf-8?B?ampFMlhMbThkMlpzdE9MR3FadnRKUGJ2azRwNG5uZWJCTjFBOExzNURoM3lX?=
 =?utf-8?B?QjRTVE5TaEFEN2xka2orSHFJUm4xNDVrY1V6QWVGM2Nmd3lBYXM1RmgvRWN0?=
 =?utf-8?B?ZklmR2lKVzhkdk1yc3lha2lBRjhVc0x1b2ZzajVhV0NPSWdKNWxGSW91Q1Y5?=
 =?utf-8?B?MFFxZmp4SURPNlBlMUZJcDZURmwxRXpCQnVZaS9ZbWk4c0FjS1pmVUE1cUo0?=
 =?utf-8?B?d0VqZWZTbTlGSWo2ci8vVlh0ZXpjVkljK0dONi9lTkRsWWZnYTdaRzgyRkJw?=
 =?utf-8?B?M08rbmRoekNDeU9pMTN3WXJjWmQrNlVTaDVPWTJyRmdPdEZMajZSYXlhYnIx?=
 =?utf-8?B?Z3N2VnFKeFZlelFlYUtHRkQ1RGFHQW9NalAyNGtJbWFqWEhHdUIwcncwSURa?=
 =?utf-8?B?MDVvbHBOT1M2NzFKWklFQVdQMHk5NEd3U1ZoOCtCekRXY29JNWJWQmxocDJp?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e2c8d7c-1ce6-4d78-7d93-08db24bd0f05
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2023 18:51:02.4368 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xj6rmTMmO5lxXqzwwsEKJvnOYNMr69cT/GAvH5HTyX7l96WT51jbvUTmVG7nJ2gkgHhxpfHEWD5/4PsT9AsYRY8+EUuLmNf7pGdvydf0Osc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5704
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678819952; x=1710355952;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SRAsJGXw1erP3Kf1OUBUdnCyaANNsUh8vO+RPDcVfnQ=;
 b=h8Pafs6TvW432uQ/MUv0xu3PJiNiiN1w7o0tM5AJPosa7KUcyZTu+Di6
 xS383GoW2zhpebi+M4HOXyi7ejwaqkt1PJX1tdivPTe99qhrq7zTUwsG/
 M40/MzT8GEjlKeCdaijDmZjh2PMehz2hjJlkDIPnsK/cxfczTyG9KuqF+
 7iwws9GuMJMpjhiuXJcsIVNJj4ZFqEU96Pg+yjCh0bWyOM14EbrQnhRDO
 PEILM7XkNHWRQDyZY3EELKbnSEXq33stRFSDPkAdE72h/ojyFU5d7q0xJ
 8B7jNR6F1t7tukdd18F3+XrBe2+27CpMLx2dKbUevDEIWBLQGhlk80eaN
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h8Pafs6T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix invalid check for empty
 list in ice_sched_assoc_vsi_to_agg()
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
Cc: netdev@vger.kernel.org, Pietro Borrello <borrello@diag.uniroma1.it>,
 linux-kernel@vger.kernel.org, "Bos, H.J." <h.j.bos@vu.nl>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/13/2023 9:31 AM, Jakob Koschel wrote:
> The code implicitly assumes that the list iterator finds a correct
> handle. If 'vsi_handle' is not found the 'old_agg_vsi_info' was
> pointing to an bogus memory location. For safety a separate list
> iterator variable should be used to make the != NULL check on
> 'old_agg_vsi_info' correct under any circumstances.
> 
> Additionally Linus proposed to avoid any use of the list iterator
> variable after the loop, in the attempt to move the list iterator
> variable declaration into the macro to avoid any potential misuse after
> the loop. Using it in a pointer comparision after the loop is undefined
> behavior and should be omitted if possible [1].
> 
> Link: https://lore.kernel.org/all/CAHk-=wgRr_D8CB-D9Kg-c=EHreAsk5SqXPwr9Y7k9sA6cWXJ6w@mail.gmail.com/ [1]
> Signed-off-by: Jakob Koschel <jkl820.git@gmail.com>

The patch looks fine, however, for net patches, could you please include 
a Fixes: tag.

Thanks,
Tony

> ---
>   drivers/net/ethernet/intel/ice/ice_sched.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
> index 4eca8d195ef0..b7682de0ae05 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sched.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sched.c
> @@ -2788,7 +2788,7 @@ static int
>   ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
>   			   u16 vsi_handle, unsigned long *tc_bitmap)
>   {
> -	struct ice_sched_agg_vsi_info *agg_vsi_info, *old_agg_vsi_info = NULL;
> +	struct ice_sched_agg_vsi_info *agg_vsi_info, *iter, *old_agg_vsi_info = NULL;
>   	struct ice_sched_agg_info *agg_info, *old_agg_info;
>   	struct ice_hw *hw = pi->hw;
>   	int status = 0;
> @@ -2806,11 +2806,13 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
>   	if (old_agg_info && old_agg_info != agg_info) {
>   		struct ice_sched_agg_vsi_info *vtmp;
>   
> -		list_for_each_entry_safe(old_agg_vsi_info, vtmp,
> +		list_for_each_entry_safe(iter, vtmp,
>   					 &old_agg_info->agg_vsi_list,
>   					 list_entry)
> -			if (old_agg_vsi_info->vsi_handle == vsi_handle)
> +			if (iter->vsi_handle == vsi_handle) {
> +				old_agg_vsi_info = iter;
>   				break;
> +			}
>   	}
>   
>   	/* check if entry already exist */
> 
> ---
> base-commit: eeac8ede17557680855031c6f305ece2378af326
> change-id: 20230301-ice-fix-invalid-iterator-found-check-0a3e5b43dfb3
> 
> Best regards,
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
