Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D779662F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 15:30:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F34A88424B;
	Fri, 30 Aug 2024 13:30:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YnEqQTRlp9Mo; Fri, 30 Aug 2024 13:30:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28C92842A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725024649;
	bh=cf7QAeheRAs6LxFyILRdusI+ubdLE9ZpCmQQpkt1Lsg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=00eYIh+kjlr/2TIZK2Sco9NYv55vzs7P3gMdi3Gzy/c9bfnUb1EVO0ufnD+NvNmpt
	 Iq10+oxXudbiRFPSubywTDSaSJEQWKoBafKSWRoNG9xUcA24fOO6HClXp0HfK6mYhC
	 1TbpRdnhbsXoQR39QYxIIa0U5DQ+U5ww+rOrgaRrBMGL9Hf0muLTOi3Ufv0RplYT8G
	 3byNMIWwt7Ru/OTr9locyWD2gcTnHebeKu+D/9DLCvGmT/cg8SDuGvbzsoVqURoPW3
	 ZMQSTqJNHFzfMDtIIlysHWdJGuXD92iDfxpF0YWe9+k8oaNbrjA84UcgXaLFlq3M5g
	 BY2WOFG67rFZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28C92842A1;
	Fri, 30 Aug 2024 13:30:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B29651BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:30:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F4A884161
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:30:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mPm71O_aVoy3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 13:30:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 505E18415F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 505E18415F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 505E18415F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:30:45 +0000 (UTC)
X-CSE-ConnectionGUID: bUyS9SLxQIKtmPw5DJ+4ag==
X-CSE-MsgGUID: 3Z3vghF0Tlqel3cFLRnGDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="23180869"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23180869"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 06:30:44 -0700
X-CSE-ConnectionGUID: AfPD1BN0TCiemQfNf3sGKw==
X-CSE-MsgGUID: LjGG4xbCQpewbaA0xDG7Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="64403909"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 06:30:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 06:30:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 06:30:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 06:30:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rpjcwf57h5w9Z7cV0DZhPgsb+R3Koy6vvyFEgMEbuhW6/4rRp8KF5DlFeIcR/OwWr3SX3crZPaEnDjOyFD72aYrLTa+k2qbO+eFbu5bwwlSpVmc0uMLXzXe4mMZDfZ/VqIkCw3Javg43PHrSjTupVX141cIteVOaO475rgdbIxeQMw2q5i7B7UdWtYgkud2lyco6rkN+qIU+OZvRtC2dErQnmPsfCa4JoWW0gSctXKcFcZFuimPTo5LtGGJ9QqAa/04V+QNoZkdpCkpd167UnyTDWP0NJURQ3knXg8Vp8XH7khG87zYnfgi+JE0kSeh3W/YvBAKBOuoZGV0SeJphhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cf7QAeheRAs6LxFyILRdusI+ubdLE9ZpCmQQpkt1Lsg=;
 b=URmhpvYrtBD4CvVDQdCgjU/5XNqpszLROa3i6AgYrKhS/g+FcJ62JcmeqG4UCEMeHBQA49fPQPofnrlQPS6onW7uy21vL0EZ6t3XRpbnpK/YmlHOoo/YP91oCxx0/xN5loNiNZX4HAXXlCrPFsDvM3kK9Gx6AHYAa38NRmogf4eFilDn29efp0slzFGfqTxakYmzyzcJkyQOYgVQtqog2OSvq55GlxvrX8WPoG/YQO+tbqVLTZWUDFFYeLkMTWNRasqqpPiZpGlRYZewSsx4VT5/N3GIYaS2IgXS2WlpKyJ2iCK/4HNtTcce+kAcHYO/IeDBwJlpHBS6Q1mKJqtO/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB6426.namprd11.prod.outlook.com (2603:10b6:510:1f6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Fri, 30 Aug
 2024 13:30:39 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Fri, 30 Aug 2024
 13:30:39 +0000
Message-ID: <9cde2efc-b298-4621-9935-73b6bf9c113d@intel.com>
Date: Fri, 30 Aug 2024 15:30:11 +0200
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20240826173916.1394617-1-paul.greenwalt@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240826173916.1394617-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0253.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8b::12) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB6426:EE_
X-MS-Office365-Filtering-Correlation-Id: 57d56789-ed81-4e9c-6b71-08dcc8f7f011
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UGNRNUdjOHJTcXZqZGgvL05aQzEzbE5pdzRnQlh3YkxxNzZrZkJwMFFoYVNN?=
 =?utf-8?B?Qk81OEdQVjlVTUxROWUyVTFWclVER3lINTl3c1FwVWJycGVQakkxTFAzNFBN?=
 =?utf-8?B?dlpnN000S2dCc1NZa3NnOVNYWk5CWnZEN0VKbHZwZGRkYjRDTWVFNHdZVXEy?=
 =?utf-8?B?SWN0SDF1U0x2ZDA3T1BXNU9scXhCYVg4OU1XZUY1d3gxT1JmbjJwWjB2KzBu?=
 =?utf-8?B?N1c5ekIrSTZFNCtKQ1Q0OUI3WlhoZXpQK091bGR6SDU5dXlaQkcrU2Uxek95?=
 =?utf-8?B?YVpNNUJPaUNjNWlDdnZlOWk3d0xLVmE5aFkzSmJSTy9XQXJ0MlNXZlpUR0Jw?=
 =?utf-8?B?Ymt5eTRFaC96bDhpYTF0NFN0STNGMzU4cEJ6VFZneXZJRTY1NWxMS3pJRXUz?=
 =?utf-8?B?dnlERVFXbHR2bE1EQVRpVE9xTVZISXNDM2ZWOWpMOEZvdDYwSEQ0QndiRTAy?=
 =?utf-8?B?dVpWTzd6bkRxVDVHWnMyNERSTURFNm83RkN3bjg5dk40c2dkZE01UkJxaWRU?=
 =?utf-8?B?V240RW9RdG9oTnVqVFhCTVpuQmdjdkxqZXZwK2xGajlqRWtiUHhNWGIwcEVB?=
 =?utf-8?B?VUNlMnFtM3FHblVXV0hwVEVqa3Z1N2dpNiszbkFpbGliRjJNdjlNVkVYSVNt?=
 =?utf-8?B?Z3hKcUV6dUpUaFY4T045cjU2TU9UN1VxOVRrZmxVWlFBK1VxYnhyZTJYcVdt?=
 =?utf-8?B?SmlLR1BtUUs4KzZKa0w2clZNcnNNRThMaVM0ZGtWV21DcmZja2o3VUlaZ3hP?=
 =?utf-8?B?d3ZlSlVmMDROcFZFU3BqMHgwSEhhSHY2Q1J3MVZ5b3lYMTd2Vkt6ZUFYTmNR?=
 =?utf-8?B?NC9WMS9kOGZrZm1GSklJWU14UmRIenE1ck80SEFVOFAxR1JmOUlmd0NiNXhI?=
 =?utf-8?B?SUE3empkOUhqc0tnSmdSNzZDeDRhajdEbDJSd0M3cFNGenBZWWMxakIybkJI?=
 =?utf-8?B?Y3pwcWRsYnptSGhEaEJjOStYcFY5Rk1YVDVWNUI2UktjK2RWcFc3WEJRdXc0?=
 =?utf-8?B?YTRIbmc5TnhHUlF0Nk5VcUU2eVV5ZkhzV2t3Z08vQW43Vlp6YzZqZ3Y4ZDNP?=
 =?utf-8?B?UmM3MWd5cFFtbE14bUtZclVOVEhtRHhQSFRTRVVuSXZEQWttNE0zbW54cmZu?=
 =?utf-8?B?MkZudlpYeDBLQ1JPTXViOGpZZ1RIN1FFemhtUFN6UDh4bnczaEdyQUhEaGIz?=
 =?utf-8?B?NkdKMDZmeWVDd0FTK0l2aXZkVnJNaERFSEhzcnBQNFlxc3BqWjdZYTY5WDFK?=
 =?utf-8?B?WVI2NXcxb0IwYTBJSUpOUGNZczZxNzlab1BLbGkyL0JjMHpIL0lieU5IajJE?=
 =?utf-8?B?dG9vaGFXNXFvMmhaVlNTTml3enBTNHRQeXF2bitxUXNxL3JpSUI3Sm9mU2pV?=
 =?utf-8?B?M3g0amlNbDNpN2Z0cjJXUHl2SWM5SzNLdjRqM01UaGFXMGIwbTRyUmFrZVVR?=
 =?utf-8?B?N1hjb0FmSG5TcE9qanNaRHpBVERqR2g5TkxQWGpvRjZZZW96SEJxalVnakFM?=
 =?utf-8?B?OWhlMTg1NnZqS3JZMXlFS0t3bG56VWhkODAzdElaN05kbnlsTGdSMkxLelVG?=
 =?utf-8?B?emxyajV1a25Yb3dNU2NoMnhaNktZbTRucklWK3c0WHIxZEQxSE1qNEFtTm5N?=
 =?utf-8?B?azBKeitOV24wRlAzTzJqb2MzM2ZKV0YwT3lDU3RZZUZ5eUhvbENIWFBhMFg1?=
 =?utf-8?B?dWIrZG9zYUNla0pTdUlhN2NpbTlCM1QrTVhLNWJEWEdyR3VUSVdHY2VObmc4?=
 =?utf-8?B?SzI4YjVQUnBpaU9FaE5iY2JZODFYYm9FY29PS1QvNUwwZWYyY2NWRXB5anpo?=
 =?utf-8?B?UVg0T2RDSE9WZW9xeE0zQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SElhTjNHUEg0eTFPZFFtalpOT2poR291K08xdlY0NGJLLzkrNGxQNHQzcUh2?=
 =?utf-8?B?Vkx4Rk1aYyt1SjRSdElOZWNBZDNuZmZFQldBV3FDa2xNZ1BhdFBqUGx6blk0?=
 =?utf-8?B?RzByazQ1ektNMGR6dU81WldTbitsa01BanQwRWV6Q2JrbFJqYnJpdEl4eDJ6?=
 =?utf-8?B?eFRLSStvNlpVeDRSSDRpWmRkYmsvU01LL25SNHdrMEZJQTBrcENwSE5LQ2po?=
 =?utf-8?B?bzhNWHR4YisxVHhKQXgrVHVsL2pTcEZHQnBRK2pvOWU1SVNCRnNvVHBGMjdv?=
 =?utf-8?B?akM2eWpPaXNsaWF2aElBMXZEZXNuSllPeGZpNkdoZHl6UHFBL1JvcFU2K1FD?=
 =?utf-8?B?ajk1YkRSZjdtb3ZOUGlmSGhDazBxSm5aR0xudGtjaEpUOHp1ZEtoZW9CRFd1?=
 =?utf-8?B?L1d5NzdxL2pnT2JXenNteFV6L3o3SU5vb0J4VzR1VjdLM3doVThkQThYUThY?=
 =?utf-8?B?Rk9reXJOZXh1YlBCa0lGM0Y4TEhhTW5nWEs2eS9UVUt3ZWl2WG9lY3FhMVR5?=
 =?utf-8?B?M0svMnh2UGR1Y0FKdkpxNXZqMkZ3dGhiQWZSd09iSXNZaFR1T25rNlBsSFNV?=
 =?utf-8?B?SE1LTkxMZmk0cEhGYk44aDV6UmNobTJRZGRsU0pDaEM0SjlnTFFIZ0JleklV?=
 =?utf-8?B?UTBJdlhVVGl2WnZ4V1lOTC9wSFVXN1RyUGNMaGplUjc4REEwU1JUZHpLRUtq?=
 =?utf-8?B?T2g3MzR3WGhBYm9QcVIwUGpxZlNHeGNsNXlGSE9DYTZlZFd5TWZtK2xmQVgw?=
 =?utf-8?B?NXpGQ0JHWEptL2Y3aGlHM0FDZWVHOXhyT2VqdmRFV2F0T0lmWU90RWZadWpm?=
 =?utf-8?B?a1ZObE5EVFJtTnJKYXFEdHhZNFF0R2ljWUxXOGZsMkNaTDRYNUcxUjlUbTZS?=
 =?utf-8?B?ZkE0M2o1UXNYa012THRXeGJzMVRUV0ExcmZTK2dKSUJ2WEZ5UDZMRWl1UGNN?=
 =?utf-8?B?LytQT2Z5NUhsdVJpa0ovUW83QlJPZmFLbWRKQldkTE0wUzNkUUR5a0JkMWtK?=
 =?utf-8?B?UjZrUXQ4WElKVW5GM2xoNHFsT3FYU3BoZmxNSFRhM1RKaTN1ditUUWp0NXhX?=
 =?utf-8?B?Zm1NTkUwck5TSU5TUnlSRHc1SFRKanFsMWxDdjVCcEtaL2hVZ3VhSTR2bEZp?=
 =?utf-8?B?S3kvYys3aFMzYVRIQ1UzaGdHZUUrdTY4WWw3dklXTnVKTm5NUmZSQzdERXJh?=
 =?utf-8?B?dWNFa2ZOZDNJSit2ZStObXkwd3VScHNqWjJlY0dzK1JhdlZPWDFybElVTGcy?=
 =?utf-8?B?Y3Fkdzcwd0k0ZWtvNmJ2dFJDdUtZOXhXTm1QaDZSaHB5dDNOYlhFYllEeDFL?=
 =?utf-8?B?VlcyMnpxZk1vWnAvWVd4NmVwMkEyMk8wM2I1dTI2VUlad1FMYzB3SnpnRE9s?=
 =?utf-8?B?ZU9qYzVsUXhZZXdSSHRKVnV1SGtZZW10YXh1RXdMWGJRbkxpN3l5Ry9uajds?=
 =?utf-8?B?UTUvTGtIUVdSNG5PL0VRaHAwTitPVXh1em4xb0VQeUtsZG9nYW1TdXV3cnJU?=
 =?utf-8?B?UXBWdkVlekNCTEtBUFJrWTFqNmlYUi9wNDcvbVA2VE5QbUVOSVN0a0RJWUQ5?=
 =?utf-8?B?b09Gd3Y1TnBuL1A4aWZZTjVpc2prNVBnR3FvSFR4bDVzUlIyODJ4QmJYNW1Q?=
 =?utf-8?B?eG5VTS9WVU4zOUtyblgrYlFqck9qY0dYVFhndWx2WEY5WXZwSmQrcERqdXUr?=
 =?utf-8?B?dzJvNW9QTkVkSk8wZ0FBSk1hYmlQNTZYdi90YmNkNzBmbnVZdXJ6dVIrbWdx?=
 =?utf-8?B?SHRuOVpWckRrWUEzR3EvSXcwNEdBWEZLaVdLNDBaQkJsK0hyeWVZU1h2NmhW?=
 =?utf-8?B?MEtoN2V3TkJpSm1LeHFYYlFPR3F0U1JyZ2NjTDlBNXJMdjZKTkF6TkM3ZnlO?=
 =?utf-8?B?UHl3WjNhWUFlb1Y1NzdwL0RSZ1h0dTJKSEdWR015WGx0RFJ0YUkvZEZDdDA0?=
 =?utf-8?B?cm9WOXMrZXl5V1Z2UE1QbERYT0MzUGl3ODg5TVVid3N2NUV2cTdvTDlNdUJl?=
 =?utf-8?B?aFo2SkJQazNIWk01SFRVcTRSY2hDMEtEc3JITFdHZldWbFlvZDlGL1RUNEVE?=
 =?utf-8?B?aXVueGVlTk1TM1hIbWVkTEhIeitack9hTmN1eVYvcFJTVTEyZ3BOVFE2OTNn?=
 =?utf-8?B?N3BCNU9JTk1MZmZWbDNNeDVkWTJ0d0xHY1dENVgweEMvMDg3TzdoUU4vYldj?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57d56789-ed81-4e9c-6b71-08dcc8f7f011
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2024 13:30:39.1056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jgmuylu2STvOTCz5DJ+j9XBgpLOTBMbLSelnJ/R5eXGJqAvrOszLsHT/+A19vAyB/pMljQvyk87zEjAMPjmqdidDAwwrmnATa72mT3Ybjr8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6426
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725024645; x=1756560645;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=arEtNZySSFe6mxMU5VFtwLmUAixUBgsdf53NJu0n3T8=;
 b=i835Pk82WLinx6Uc883Y4O7vVc+CKFddVHeSvUkVtgIlh7+3XfzSh38t
 Ild3CxZ5WBmNiyAt7T3rR4ziVi5miTNBnbWsIG7sdey1yG9vgMP/lNtZT
 5YPeK8OlUOWKSRNjOHzyvvuOFx+cY2VsMdSDyIoPABcsAm0iieggFwH2f
 GfklNyyp+1ahnP2tCNqveiDmoieG5oaaU4aPINBFao8zX+oJo/mMNP+7B
 XA1JTGf34/sSwCPzdvV9tqZdH5YdmhualB2jNONiXLSFI2msCRH4SXMz8
 5M29C5IhmIfe69z+3jygKDGm1/8Q0Lg6pYadFSOJjfDmBEH6fX967Yqa8
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i835Pk82
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add E830 checksum
 support
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
Cc: Eric Joyner <eric.joyner@intel.com>,
 Alice Michael <alice.michael@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>
Date: Mon, 26 Aug 2024 13:39:16 -0400

> E830 supports generic receive and HW_CSUM transmit checksumming.
> 
> Generic receive checksum support is provided by hardware calculating the
> checksum over the whole packet and providing it to the driver in the Rx
> flex descriptor. Then the driver assigns the checksum to skb-->csum and
> sets skb->ip_summed to CHECKSUM_COMPLETE.
> 
> E830 HW_CSUM transmit checksum does not support TCP Segmentation Offload

Why is it so?

> (TSO) inner packet modification, so TSO and HW_CSUM are mutually exclusive.

What is HW_CSUM in your opinion here?

> Therefore NETIF_F_HW_CSUM hardware feature support is indicated but is not
> enabled by default. Instead, IP checksum and TSO are the defaults.
> Enforcement of mutual exclusivity of TSO and HW_CSUM is done in
> ice_fix_features(). Mutual exclusivity of IP checksum and HW_CSUM is
> handled by netdev_fix_features().
> 
> When NETIF_F_HW_CSUM is requested the provide skb->csum_start and

"the provided"?

> skb->csum_offset are passed to hardware in the Tx context descriptor
> generic checksum (GCS) parameters. Hardware calculates the 1's complement
> from skb->csum_start to the end of the packet, and inserts the result in
> the packet at skb->csum_offset.
> 
> Co-developed-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Co-developed-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index f559e60992fa..118ac34f89e9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1380,6 +1380,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
>  			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
>  		else
>  			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
> +
> +		if (ice_is_feature_supported(pf, ICE_F_GCS))
> +			ring->flags |= ICE_TXRX_FLAGS_GCS_ENA;

An empty newline here, since WRITE_ONCE() is not related to this one?

>  		WRITE_ONCE(vsi->tx_rings[i], ring);
>  	}
>  
> @@ -1399,6 +1402,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
>  		ring->dev = dev;
>  		ring->count = vsi->num_rx_desc;
>  		ring->cached_phctime = pf->ptp.cached_phc_time;
> +
> +		if (ice_is_feature_supported(pf, ICE_F_GCS))
> +			ring->flags |= ICE_TXRX_FLAGS_GCS_ENA;

Same here.

>  		WRITE_ONCE(vsi->rx_rings[i], ring);
>  	}
>  
> @@ -3896,6 +3902,9 @@ void ice_init_feature_support(struct ice_pf *pf)
>  	default:
>  		break;
>  	}
> +
> +	if (pf->hw.mac_type == ICE_MAC_E830)
> +		ice_set_feature_support(pf, ICE_F_GCS);
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 6f97ed471fe9..67e32ac962df 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3678,6 +3678,12 @@ static void ice_set_netdev_features(struct net_device *netdev)
>  	 */
>  	netdev->hw_features |= NETIF_F_RXFCS;
>  
> +	/* Mutual exclusivity for TSO and GCS is enforced by the
> +	 * ice_fix_features() ndo callback.
> +	 */
> +	if (ice_is_feature_supported(pf, ICE_F_GCS))
> +		netdev->hw_features |= NETIF_F_HW_CSUM;
> +
>  	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
>  }
>  
> @@ -6237,6 +6243,7 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>  	netdev_features_t req_vlan_fltr, cur_vlan_fltr;
>  	bool cur_ctag, cur_stag, req_ctag, req_stag;
> +	netdev_features_t changed;
>  
>  	cur_vlan_fltr = netdev->features & NETIF_VLAN_FILTERING_FEATURES;
>  	cur_ctag = cur_vlan_fltr & NETIF_F_HW_VLAN_CTAG_FILTER;
> @@ -6285,6 +6292,29 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
>  		features &= ~NETIF_VLAN_STRIPPING_FEATURES;
>  	}
>  
> +	if (!ice_is_feature_supported(np->vsi->back, ICE_F_GCS) ||
> +	    !(features & NETIF_F_HW_CSUM))
> +		return features;
> +
> +	changed = netdev->features ^ features;
> +
> +	/* HW checksum feature is supported and set, so enforce mutual
> +	 * exclusivity of TSO and GCS.
> +	 */
> +	if (features & NETIF_F_ALL_TSO) {

	if (!(features & ALL_TSO))
		return features;

to reduce indent level and avoid huge `if` blocks.

> +		if (changed & NETIF_F_HW_CSUM && changed & NETIF_F_ALL_TSO) {
> +			netdev_warn(netdev, "Dropping TSO and HW checksum. TSO and HW checksum are mutually exclusive.\n");
> +			features &= ~NETIF_F_HW_CSUM;
> +			features &= ~((features & changed) & NETIF_F_ALL_TSO);
> +		} else if (changed & NETIF_F_HW_CSUM) {
> +			netdev_warn(netdev, "Dropping HW checksum. TSO and HW checksum are mutually exclusive.\n");
> +			features &= ~NETIF_F_HW_CSUM;
> +		} else {
> +			netdev_warn(netdev, "Dropping TSO. TSO and HW checksum are mutually exclusive.\n");
> +			features &= ~NETIF_F_ALL_TSO;
> +		}
> +	}
> +
>  	return features;
>  }
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 8d25b6981269..bfcce1eab243 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1792,6 +1792,7 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
>  static
>  int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>  {
> +	const struct ice_tx_ring *tx_ring = off->tx_ring;
>  	u32 l4_len = 0, l3_len = 0, l2_len = 0;
>  	struct sk_buff *skb = first->skb;
>  	union {
> @@ -1941,6 +1942,29 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>  	l3_len = l4.hdr - ip.hdr;
>  	offset |= (l3_len / 4) << ICE_TX_DESC_LEN_IPLEN_S;
>  
> +#define TX_GCS_ENABLED	1

This must be somewhere where the offload params or descriptor values are
described, i.e. next to the related definitions.

> +	if (tx_ring->netdev->features & NETIF_F_HW_CSUM &&

Please give bitops a separate set of parenthesis

	if ((features & HW_CSUM) &&

etc., below as well.

> +	    tx_ring->flags & ICE_TXRX_FLAGS_GCS_ENA &&
> +	    !(first->tx_flags & ICE_TX_FLAGS_TSO) &&
> +	    !skb_csum_is_sctp(skb)) {
> +		/* Set GCS */
> +		u16 gcs_params = ((skb->csum_start - skb->mac_header) / 2) <<
> +				 ICE_TX_GCS_DESC_START;

This must be

		gcs_params = FIELD_PREP(GCS_DESC_MASK, (skb...) / 2)

2 places below as well.

> +		gcs_params |= (skb->csum_offset / 2) << ICE_TX_GCS_DESC_OFFSET;
> +		/* Type is 1 for 16-bit TCP/UDP checksums w/ pseudo */
> +		gcs_params |= TX_GCS_ENABLED << ICE_TX_GCS_DESC_TYPE;
> +
> +		/* Unlike legacy HW checksums, GCS requires a context
> +		 * descriptor.
> +		 */
> +		off->cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX);

Redundant cast.

> +		off->cd_gcs_params = gcs_params;
> +		/* Fill out CSO info in data descriptors */
> +		off->td_offset |= offset;
> +		off->td_cmd |= cmd;
> +		return 1;
> +	}

[...]

> @@ -366,6 +367,7 @@ struct ice_rx_ring {
>  #define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
>  #define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
>  #define ICE_RX_FLAGS_MULTIDEV		BIT(3)
> +#define ICE_TXRX_FLAGS_GCS_ENA		BIT(4)

As Tony said, RX and TX features are now separated, just like Rx and Tx
ring structures. Please define them separately for Rx and Tx.

>  	u8 flags;
>  	/* CL5 - 5th cacheline starts here */
>  	struct xdp_rxq_info xdp_rxq;
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> index 2719f0e20933..a344886d2129 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> @@ -80,6 +80,24 @@ ice_rx_hash_to_skb(const struct ice_rx_ring *rx_ring,
>  		libeth_rx_pt_set_hash(skb, hash, decoded);
>  }
>  
> +/**
> + * ice_rx_gcs - Set generic checksum in skd

"skb"

> + * @skb: skb currently being received and modified
> + * @rx_desc: Receive descriptor

Lowercase for "Receive" I'd say.

> + * Returns hash, if present, 0 otherwise.

The function returns void.

> + */
> +static void ice_rx_gcs(struct sk_buff *skb, union ice_32b_rx_flex_desc *rx_desc)

const union.

> +{
> +	struct ice_32b_rx_flex_desc_nic *nic_csum;

It's a descriptor, not a csum. + also const.

> +
> +	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
> +		return;

Redundant check since you're checking this below.

> +
> +	nic_csum = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
> +	skb->ip_summed = CHECKSUM_COMPLETE;
> +	skb->csum = (__force __wsum)htons(le16_to_cpu(nic_csum->raw_csum));

htons(le16_to_cpu(x)) is the same as swab16(x), have you tried it?

> +}
> +
>  /**
>   * ice_rx_csum - Indicate in skb if checksum is good
>   * @ring: the ring we care about
> @@ -107,6 +125,21 @@ ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
>  	rx_status0 = le16_to_cpu(rx_desc->wb.status_error0);
>  	rx_status1 = le16_to_cpu(rx_desc->wb.status_error1);
>  
> +	if (rx_desc->wb.rxdid == ICE_RXDID_FLEX_NIC &&
> +	    ring->flags & ICE_TXRX_FLAGS_GCS_ENA &&

I'd reorder these. 1 flags, 2 flex.

> +	    (decoded.inner_prot == LIBETH_RX_PT_INNER_TCP ||
> +	     decoded.inner_prot == LIBETH_RX_PT_INNER_UDP ||
> +	     decoded.inner_prot == LIBETH_RX_PT_INNER_ICMP)) {
> +		/* ICE_RX_FLEX_DESC_STATUS1_L2TAG2P_S is overloaded in the
> +		 * rx_status1 layout to indicate that the extracted data from
> +		 * the packet is valid.
> +		 */
> +		if (rx_status1 & BIT(ICE_RX_FLEX_DESC_STATUS1_L2TAG2P_S))
> +			return ice_rx_gcs(skb, rx_desc);

ice_rx_csum() is void. Please separate the call and the return.

> +
> +		goto checksum_fail;

Why fail? If there's no STATUS1_L2TAG2P_S bit, can't there be a usual
checksum status?

> +	}
> +
>  	/* check if HW has decoded the packet and checksum */
>  	if (!(rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
>  		return;

Thanks,
Olek
