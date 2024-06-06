Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C268FDDBB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 06:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F07374240E;
	Thu,  6 Jun 2024 04:30:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k8d9BEkRPhiH; Thu,  6 Jun 2024 04:30:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E01A3423A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717648212;
	bh=s2NXaGiK5/2rgntYvLehD3NJGQ1+WCqoerU8FCl48nw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KVYcDC45ykRP5MqRhamQEZ61Cd2dJSsy1a4agntGbopOxmG/pFofqn+zoJ7Q914EC
	 quYWo8mX4HHh2pfvZ5yVA957YsuFvvE+t9v9jtMOsIR5JH7MIfztujzzN8Oc60Aaz7
	 bTZkU3y6evWpCFiejjohhJV6GYXchr6d494S6KuVJsNqLnOPMwicXfQyI3/eRjnge4
	 3ReTxpNSWrEhWZMB7t5Tgif96DUmf5HUnnTDBYJ33/TvPogTHLNG9tl4FnXLsNkuaH
	 3ADoSVZfCt1xhIhDZ17Jc6Ac0IaF3VQbC+TpKs7axf3/x5frVlyEbIrcIbWrHuhhp3
	 v4V15aLF5WC5Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E01A3423A4;
	Thu,  6 Jun 2024 04:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C5DF1BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 04:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23A5281EAB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 04:30:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V-JiNVCjWPR5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 04:30:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 190FB81EA8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 190FB81EA8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 190FB81EA8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 04:30:07 +0000 (UTC)
X-CSE-ConnectionGUID: rsNk1+FbRGuexSnuGOr5nw==
X-CSE-MsgGUID: jQBt65wxQL+VY7QD5c6ytQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14132506"
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="14132506"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 21:30:07 -0700
X-CSE-ConnectionGUID: J1hx2sK6TTaKAMTpYc3/9w==
X-CSE-MsgGUID: LUyZsWARQMSPgYIcQeum6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="37742299"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jun 2024 21:30:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 21:30:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 21:30:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 5 Jun 2024 21:30:05 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 5 Jun 2024 21:30:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JWwQFQtVFkn7qoVlLx08TpgzSz/PmqUFaTcPNQzgW7qhzVxi8b+gZMGtq25uMrg8OsAgEQ8loMa5S8ozDy7h7CmyfhrjqJEHsCeIYrevIKYsVbIUAIUV+a7JLmK8GQaikObR3ZTM3Ei4JnnAuQwB7PMkz+LKQLYfU7RiIEc+dPashPIv+p/ziFcdy0wOnLUvbpDxGFs97dmfmAxQn34jEcU6fyskbji0KmYENZ2CQRjRM0Luh6fs/S+2LpNrdGWX10AOIh1kVvI7+U8aE295w1jtW/r8+x2eFyRG7QK3xi7HCQESvu8G3ODvsfSLqI/HWjTJyS94TG2gynfXwW6RYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s2NXaGiK5/2rgntYvLehD3NJGQ1+WCqoerU8FCl48nw=;
 b=m4br90SXr9tuBr/bQl+wnnTeBkGCcG+GjzCDh5J0Y618MuO7fimwwu2OymeA8fdTSySuDZO3Dqweiu6k90YA4+hnrxA0Jb0rnlUtL6EbOdr99LIn2z8nqhjLw7SebJfUpgQGQaIOjfGF9JhjFKqpEWlgMIPrV3MuWAlEsh3JAnT0E4cpyHOjWHDk5ca7jgHy0WtYcVj1JBJoeim5SQkZLmN1BdkDPhI3yxPkJhgz+Fs1RUygmfzT0s72m1gUnCwaEAyOTD0NLhwVcxNHmZTVWGiK1WJipY6bWUk1l3z2t1VzGcPeahRJEUypm4XlRrfDUY2a2wfUjYsH3bhrLhAKZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH0PR11MB7446.namprd11.prod.outlook.com (2603:10b6:510:26d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Thu, 6 Jun
 2024 04:30:02 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.7633.021; Thu, 6 Jun 2024
 04:30:02 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Chris Packham
 <Chris.Packham@alliedtelesis.co.nz>, Jackie Jone
 <Jackie.Jone@alliedtelesis.co.nz>, "davem@davemloft.net"
 <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH] igb: Add MII write support
Thread-Index: AQHatsOBsuo1F0hfnUCCzIb8MdTLobG5proAgAAHWZmAAHh6cA==
Date: Thu, 6 Jun 2024 04:30:02 +0000
Message-ID: <SJ0PR11MB586615CA771BCE96D9DE84B8E5FA2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
 <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
 <dce11b71-724c-4c5f-bc95-1b59e7cc7844@alliedtelesis.co.nz>
 <4f9af0e9-5ce0-4b76-a2cd-cbd37331d869@intel.com>
In-Reply-To: <4f9af0e9-5ce0-4b76-a2cd-cbd37331d869@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH0PR11MB7446:EE_
x-ms-office365-filtering-correlation-id: 646d6d22-fd07-488a-67b2-08dc85e15568
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?NXZNTnZrTDY3NnVGS3hIREF4Y1BCVEZXTnZ5V0VGQ0NsOEhoTVdMWDRYMDFI?=
 =?utf-8?B?YVRPRm1ad3FBcDc0ckV5R2RqUTFER1NKaWZYUmE1YXl4eHE5M3ZsWUdXelZS?=
 =?utf-8?B?bDJPekdldit2djdpYXR3MFVqeU1XbE5tVko0QytWWElUQ3lBUmprVnIvQzNP?=
 =?utf-8?B?VWk1cW9WWFhxclR6d25ZM095VjNscUpPUUhUV2ZTM0t3anQ1eExjdWR6M3VF?=
 =?utf-8?B?cnRmM2w2OTlOTWowUm9vSkl5NHVucGRtcFBmM1R4OElZTy9DRWhjSkFNNGZs?=
 =?utf-8?B?L0tVcE5FRWcyRVo4Mkw5b3ZTUkNYeWx2eXV3cUVVNitRMCs2WW5TbUI1SXpL?=
 =?utf-8?B?QlM3UGRhb1VGTDA2citDVGFIQlBUVFZITi9OWVBvVnpCaWY0NnF1N1NPRXpi?=
 =?utf-8?B?OFFsalp1U1pOTllHT0crVzhqSzVQMEROVVNobStQS2FJeVFETmVYeVIwMWN2?=
 =?utf-8?B?K0VNTTRHUE9CUlNHR0JlVnR2OE1mY3VvMjJWRytnVVhDeTZ0NzFtR3VSVVdx?=
 =?utf-8?B?L1REcEZrVTA0ajZ5WlBINXNPZGZsSU9DN3JiaTA1UnVyVG5ybTRCTy96cTcy?=
 =?utf-8?B?bE1PN1M2TTRBcnJtSFBpUVNneTlLS1REaUgyazZEdldhVG9CYUd3NDFSMVpy?=
 =?utf-8?B?R0t6cmlyRDg2Z2ZuZHRhQXhDcnowVk9sU1NDNW8zZWd4SkRvUlBSSUhmY3pZ?=
 =?utf-8?B?NDMvTVp1RGlYQ1cyYVpBTDNYU1h6aWMzN29YeHhMLzI5UE94Y2RVMUJkWDBC?=
 =?utf-8?B?Z3hCdXg2R0pnOU1WME5tb2tOT3JpWGlhQVFVYXVreGp0MDlHYnZoRzlpMjRs?=
 =?utf-8?B?Q3hwZUVLRWhpNmVHaEhMM04rL1d6VGM2bWRMbDR5S2dEZ2JPNTRFaHFsWDBI?=
 =?utf-8?B?SUdlamY4Mm41TFFtUmFBQkNmWTFseityQTFnMnVEMjhtNEpHV0d2RGk3MERF?=
 =?utf-8?B?YXkwdnNNVVRxMFFyQnp2Rm04M0lRVkRFd3dMbnVmOEkwVll3QkJKMkQxcjUw?=
 =?utf-8?B?SDNHKzB0UEtEQnc1MnBUSDdFRm9aR0Fjdkh3OFBISWwxcTg2MVJLRHRGRTR5?=
 =?utf-8?B?Zkc3bjVkSnAyTXdLYUxwK1NGemx1QXZxeGNzb1NkbDRxcmc1VDJXeWplRmdu?=
 =?utf-8?B?SEErakNwS2VOT09RbUVNYWovcHZ4NTZ4T2FCRExDNHJwQXdwdFJ1eTd5eHV4?=
 =?utf-8?B?VTQ0b3R2WmRxQmo2SkZKd3hFZWxvYzZ0RTdseGEyQ1RRUklxckw4MXFnYVVl?=
 =?utf-8?B?THJxY1JYbWhmWWl5QzNoY1owK0JvV0RkSlpua3NwZERIVnZrRFhwbUJwTklq?=
 =?utf-8?B?UWZmM1MwSktldmpXVlVLYmMrR0JaMGdZVjd4VktVa2NzUElscHNiQ2tFRnJT?=
 =?utf-8?B?dVRNRVpUSVNFWWZqZkJnVC9TY0RKV0xTZjd4cGx0ZFpGUFgzWTQ0Nmp4aVRu?=
 =?utf-8?B?WXc0L0YwdkZBeFFQYm14Y0Noai9Kb2hsOUQ4OVlSYk11QWRpNEkvczE3MEw4?=
 =?utf-8?B?SzVuc21EUHU4eWw4OGpJNnMrbHhJb1BocFBreFdhMUVUNmN1ZUhoUWpkTW02?=
 =?utf-8?B?QlBJM2hxNDBLa0xPa0pKT25tNVlKVnRacGExNzNrY0NMU1JXQnVESE02KzE1?=
 =?utf-8?B?SmZyelc1dUYvRWVNWW5vVENkdkFsRnRYWmZuTHRKSkZwTFNyV0hnRlRtcVVT?=
 =?utf-8?B?QVZQRWJHb3FhdUxaYW5oYmxJem9mYXArY2Z2MllaT1NkMncwNW8rREdRRVBB?=
 =?utf-8?B?Q3BDaThhczFnemdiaExOUy9kOC9FRTZBTkdIdkNMRDg5Z0lDZnJsaE5EbTFF?=
 =?utf-8?Q?cXBnRCbpKkH3jdqGNOn4EH3aFTr9fHhQXfKCg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VWRBejN3UDgyK3hRS2psSTVKaGM2TTI2T29nWDFpQk9CZFhZVWV6eXZLSHl1?=
 =?utf-8?B?eVJrdEhiQVRQWk1zL0hKSWlmWTdEYklXY053MHZwUzJzZmMzUWMyYk9HKzZa?=
 =?utf-8?B?SU16RGZNN05QelBRYWdZMmovcjJJOU95eCtpWmhnT0pnWlBXSmxnRk90V1Ny?=
 =?utf-8?B?cTlQVzhySy8reXYzSmljd3c1NkNxaVExRHZOTHBubVVTZHNZTUZjOFFBR2Z3?=
 =?utf-8?B?b3VuTDVBZmlwRVl1cW9kQ0tNcmlxcVBrWER4RDViQTB0NmYwbTF0ajVXVmRM?=
 =?utf-8?B?dUdFNGZkeEJRV2Nodjh2RWJGdytSOTg2L1hCZDZwYmlyWHBkSi85a1Z0Sjhh?=
 =?utf-8?B?UGhoRnphNmlYSW1NUjlsTk1zQjV3djZrRFQ0NWtXMzVmM1gyaTBmc0dPUkh5?=
 =?utf-8?B?V3hDclZrQ0RDTGJlQmg4R2VZMVREampuQmRMdnZkVklOTURIL3pJNGRxVkRE?=
 =?utf-8?B?ellYeXZqcWZ6bDMxdEpPV1RpRzJ5SWFwczBtSWk1R0VOYk14ekRQeU9GUlRZ?=
 =?utf-8?B?RFlWb2EyT2gyR1dNY3liNDBGSURMcTBFWGUxQjQ1SzVEeEFUcEFWMzlWOTFr?=
 =?utf-8?B?YS9PckdFV2lKQmsyUnFvSlFkbCswSEE3ak5ISENlZU45TmhudThHZkZrRlFC?=
 =?utf-8?B?K0tqK2dsbDErbHBheFNsakQwVHI4OEZ2anpQa20rZXpFVXM5UUE0VDkyVlRT?=
 =?utf-8?B?M0JjT0hTRUVtQUdHWCt1ZkgzbGpuWkx3bnJwTytWekVvSC9hM1NmTzRnSS9Y?=
 =?utf-8?B?STIvNUhuRDg1V3FwQ3BGUjFXZmlPbjJuQUxTRmppaXV0UDNLMXNTMVFUUXEy?=
 =?utf-8?B?SVYyTTUvVlJLM05hN2NaZDJQM04yNGtWVk1BR3B0cElYSFZseGo1L2p0ZUZS?=
 =?utf-8?B?clMxQzFQN1NyNzN0UDVza2o4bmlXK1pERENXdGdXU1pybERRN1FzRXpxN1dP?=
 =?utf-8?B?bzNmTXZxVWowbkVNeWlVY3duL3B1c0NlL3psSGVWZGJQckYvWWtIWmZOSVdV?=
 =?utf-8?B?eEZ5OEJQaldZN2Q1QXRYb1R1WndGclhoRW9uV2xQdUlEZGNaU2hHOFgzWmFK?=
 =?utf-8?B?L1BiZ1MxQnovcm90WTdQSnlWQlpjcm1UY3VDTGhJMVpwTENRQksrTWxINDdB?=
 =?utf-8?B?cTAvL0g3eUR5RzQzUzA5ZlJEK1Azb05jM3lLdk0yNjNvZlI2U0JYNkRDN01Y?=
 =?utf-8?B?THQ0VVZEY2JWd1dtTU1wTmcwRzBwWmNmUlFLcE9qaW5Vc1cwaGZxWkc1Rmt6?=
 =?utf-8?B?WmpWSTMraEJWVDNRVUtXRmtvZGxhSkFoMC9Rc0U1eDg4RkoxNUk2RzIwOGdy?=
 =?utf-8?B?MG15R3RPaFF5eG40bzFFSXBVWmFMR1V0S2sxMVFNem1QbHRWMjJreXp4Z0wz?=
 =?utf-8?B?QU9UbzJ0d3NQazZrR1gyL2M3RUJQUWthN0pORzhQekhHbjBPK1Z6WEVFWnE4?=
 =?utf-8?B?RW41bllvNEhjTmVna1dOSzZrVm95RFdqUk9vOW5vdURGSVVya1E0NG9jRlpv?=
 =?utf-8?B?VXpIQkZ2UlJSdW56QThzZi9YQWMraEYvRVJKb3UyUFhuN0hxTzRST1hqOTd2?=
 =?utf-8?B?ZlVVZXlLVUpIdU1La1NNbjlHS04rNmxNdUpCUk1rRDN3M3NEeVZ1QXFKVFh0?=
 =?utf-8?B?QVhIQ1BOODhvM284VDVnSVh1NzBQR3ZjR2xYSkV6bldVZHFqWG1heWhoWElQ?=
 =?utf-8?B?VnFobEZ6RUszKy8wK2s3Wm1zOVZNUG92dEcycTc3d2NZYUtmMjBhRklPWmdM?=
 =?utf-8?B?ZGR2VlR5QUFJVVpzMGxWanVZR2FuMEo1WVNpSEpkZXljSEFMZzRMNzFrRFhn?=
 =?utf-8?B?bTF2UFRxU2FzTUtOTDUyTFRKd3ZZYUI2N25OMTFzQ1lHOXJCZi9MNGozSFIr?=
 =?utf-8?B?cnRyL3d3L2YxQ3hyZHllOVVzZkJGV0F6bVVRckZjK0tON0gvNVhCbTUxZ3JL?=
 =?utf-8?B?MWJmNkM0M3liNTBlQy9vTHdrN0lSZVo4K1RRZElCNm5Pc0hhOXE5NlRyZkRQ?=
 =?utf-8?B?WUtUSk45ZlkxeDE5Y3NhM0M1NkptYkx4aC9YTUxNeS9DcDV6dGU2WFhzNHNQ?=
 =?utf-8?B?Nm16ZmxPZjR4cVRJTTRadlpLV3IyTG9DZ1ZQM0loNEEyeDhtSkV0ZGN4cmk5?=
 =?utf-8?B?dU5XM2ZqdnQ3OWFCbFhZeVMrRzJqUFAzQ3RhdzVrV0p1M1dTMmZlemZ2bDBH?=
 =?utf-8?B?MXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 646d6d22-fd07-488a-67b2-08dc85e15568
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 04:30:02.6364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TELPDhrV2/6mp0ZU4XIrhKcqcRf5gaNOy1pYDe2MrwY5l3ixCCx/ebxEJgZ16gqPvJm21vhq3bynYLQvfER4zRt3tODFUmrxuJ1icmbi0W8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7446
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717648208; x=1749184208;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s2NXaGiK5/2rgntYvLehD3NJGQ1+WCqoerU8FCl48nw=;
 b=RwDyn2hZMQdX4OJDms1w/wFslOK0IB7ZrvEcQs6CfUsW8YiO68cRJwTQ
 4zNpCjjKGKg0o1J1WPdR+MkbHMWmwf0UUol/o5vB12Lvgwo0VWB18UyPj
 zS4jUGd62PjTs76ORsaNQXjP9LjKn+Z+3XSX61ESMuHTfWjo7HxOVNJEM
 GRarNtvwSI6ejO7fO9W4m4+g9jLU85ZPzcLItOW2OK7grUzaFL5k9xHkH
 omj8EiQnc+G7SVuNue4i511Jp4Ys1QlBz83PjSXX/Es0Be6rNtwHNm0mB
 fggaTu2Ru+IVYKlnC8mKKi71I4PTdkI5gE6npzRHBGu1QN6rSUem2ppk5
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RwDyn2hZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add MII write support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbg0KPiBCZWhhbGYgT2YgSmFj
b2IgS2VsbGVyDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAyMDI0IDExOjE3IFBNDQo+IFRv
OiBDaHJpcyBQYWNraGFtIDxDaHJpcy5QYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubno+OyBKYWNr
aWUgSm9uZQ0KPiA8SmFja2llLkpvbmVAYWxsaWVkdGVsZXNpcy5jby5uej47IGRhdmVtQGRhdmVt
bG9mdC5uZXQNCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmc7IE5ndXllbiwNCj4gQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVs
LmNvbT47IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZzsga3ViYUBrZXJuZWwu
b3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0hdIGlnYjogQWRkIE1J
SSB3cml0ZSBzdXBwb3J0DQo+IA0KPiANCj4gDQo+IE9uIDYvNS8yMDI0IDI6MTAgUE0sIENocmlz
IFBhY2toYW0gd3JvdGU6DQo+ID4NCj4gPiBPbiA2LzA2LzI0IDA4OjUxLCBKYWNvYiBLZWxsZXIg
d3JvdGU6DQo+ID4+DQo+ID4+IE9uIDYvMy8yMDI0IDg6MTAgUE0sIGphY2tpZS5qb25lQGFsbGll
ZHRlbGVzaXMuY28ubnogd3JvdGU6DQo+ID4+PiBGcm9tOiBKYWNraWUgSm9uZSA8amFja2llLmpv
bmVAYWxsaWVkdGVsZXNpcy5jby5uej4NCj4gPj4+DQo+ID4+PiBUbyBmYWNpbGl0YXRlIHJ1bm5p
bmcgUEhZIHBhcmFtZXRyaWMgdGVzdHMsIGFkZCBzdXBwb3J0IGZvciB0aGUNCj4gPj4+IFNJT0NT
TUlJUkVHIGlvY3RsLiBUaGlzIGFsbG93cyBhIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiB0byB3cml0
ZQ0KPiB0bw0KPiA+Pj4gdGhlIFBIWSByZWdpc3RlcnMgdG8gZW5hYmxlIHRoZSB0ZXN0IG1vZGVz
Lg0KPiA+Pj4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IEphY2tpZSBKb25lIDxqYWNraWUuam9uZUBh
bGxpZWR0ZWxlc2lzLmNvLm56Pg0KPiA+Pj4gLS0tDQo+ID4+PiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jIHwgNCArKysrDQo+ID4+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKykNCj4gPj4+DQo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMNCj4gPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMNCj4gPj4+IGluZGV4IDAzYTRkYTZhMTQ0Ny4uN2ZiZmNm
MDFmYmY5IDEwMDY0NA0KPiA+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdi
L2lnYl9tYWluLmMNCj4gPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9p
Z2JfbWFpbi5jDQo+ID4+PiBAQCAtODk3Nyw2ICs4OTc3LDEwIEBAIHN0YXRpYyBpbnQgaWdiX21p
aV9pb2N0bChzdHJ1Y3QNCj4gbmV0X2RldmljZSAqbmV0ZGV2LCBzdHJ1Y3QgaWZyZXEgKmlmciwg
aW50IGNtZCkNCj4gPj4+ICAgCQkJcmV0dXJuIC1FSU87DQo+ID4+PiAgIAkJYnJlYWs7DQo+ID4+
PiAgIAljYXNlIFNJT0NTTUlJUkVHOg0KPiA+Pj4gKwkJaWYgKGlnYl93cml0ZV9waHlfcmVnKCZh
ZGFwdGVyLT5odywgZGF0YS0+cmVnX251bSAmDQo+IDB4MUYsDQo+ID4+PiArCQkJCSAgICAgZGF0
YS0+dmFsX2luKSkNCj4gPj4+ICsJCQlyZXR1cm4gLUVJTzsNCj4gPj4+ICsJCWJyZWFrOw0KPiA+
PiBBIGhhbmRmdWwgb2YgZHJpdmVycyBzZWVtIHRvIGV4cG9zZSB0aGlzLiBXaGF0IGFyZSB0aGUN
Cj4gY29uc2VxdWVuY2VzDQo+ID4+IG9mIGV4cG9zaW5nIHRoaXMgaW9jdGw/IFdoYXQgY2FuIHVz
ZXIgc3BhY2UgZG8gd2l0aCBpdD8NCj4gPj4NCj4gPj4gSXQgbG9va3MgbGlrZSBhIGZldyBkcml2
ZXJzIGFsc28gY2hlY2sgc29tZXRoaW5nIGxpa2UNCj4gQ0FQX05FVF9BRE1JTg0KPiA+PiB0byBh
dm9pZCBhbGxvd2luZyB3cml0ZSBhY2Nlc3MgdG8gYWxsIHVzZXJzLiBJcyB0aGF0IGVuZm9yY2Vk
DQo+IHNvbWV3aGVyZSBlbHNlPw0KPiA+DQo+ID4gQ0FQX05FVF9BRE1JTiBpcyBlbmZvcmNlZCB2
aWEgZGV2X2lvY3RsKCkgc28gaXQgc2hvdWxkIGFscmVhZHkgYmUNCj4gPiByZXN0cmljdGVkIHRv
IHVzZXJzIHdpdGggdGhhdCBjYXBhYmlsaXR5Lg0KPiANCj4gT2sgZ29vZC4gVGhhdCBhdCBsZWFz
dCBsaW1pdHMgdGhpcyBzbyB0aGF0IHJhbmRvbSB1c2VycyBjYW4ndCBjYXVzZQ0KPiBhbnkgc2lk
ZSBlZmZlY3RzLg0KPiANCkknbSBwcmV0dHkgc3VyZSBmcm9tIGV4cGVyaWVuY2UgdGhhdCBldmVu
IHJvb3QgYXBwbGljYXRpb25zIHdpbGwgc3RhcnQgY2F1c2UgbnZtdXBkYXRlIGlzc3Vlcy4NCg0K
PiBJJ20gbm90IHN1cGVyIGZhbWlsaWFyIHdpdGggd2hhdCBjYW4gYmUgYWZmZWN0ZWQgYnkgd3Jp
dGluZyB0aGUgTUlJDQo+IHJlZ2lzdGVycy4gSSdtIGFsc28gbm90IHN1cmUgd2hhdCB0aGUgY29t
bXVuaXR5IHRoaW5rcyBvZiBleHBvc2luZw0KPiBzdWNoIGFjY2VzcyBkaXJlY3RseS4NCj4gDQo+
IEZyb20gdGhlIGRlc2NyaXB0aW9uIHRoaXMgaXMgaW50ZW5kZWQgdG8gdXNlIGZvciBkZWJ1Z2dp
bmcgYW5kDQo+IHRlc3RpbmcgcHVycG9zZXM/DQo=
