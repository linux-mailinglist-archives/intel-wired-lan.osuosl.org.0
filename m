Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD684958FB6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 23:32:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6974A40B5E;
	Tue, 20 Aug 2024 21:32:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 33CCDnjGke5T; Tue, 20 Aug 2024 21:32:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CBB140B6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724189521;
	bh=WIHJp92QtgidSt53zr8s67GWEJyCv4ezw+6Z/eIB7Ds=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jRNVMKtIjjnc+poY5OCc6Q4ajdev+f//icsuwJtFfc6i7/3qixRT7kt51KLZoM4eM
	 BAlkjov4HKYQHgIJdPACAQmd2zt8AvWRtULO0iHTAuH8ozWOiQAnq7HBIZ1XXeWIrH
	 vPne2OmBYWZReBXMvAF45b2mkRopSnA9Zd6YRR4NDAAuq4sTPxevNBz2svEkYZ99Hu
	 hEroeLR1zI1x4PBFC6g0PCd3JEfegkkei3XtT0UtW/8c7+Q41CXK5aLp2lj2hvZSg7
	 QfYgQMJaW7fcALDo0d2B1adJpwfxspbBm/scUQpWjZK6zkJYxMywNK/0N0AkOdtkMq
	 PS1kRghlW8mRA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CBB140B6E;
	Tue, 20 Aug 2024 21:32:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53ED61BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 40B1A80FB7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:31:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j6LQKSYGKHWG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 21:31:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7D94680C9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D94680C9E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D94680C9E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:31:58 +0000 (UTC)
X-CSE-ConnectionGUID: BB3JkNrmQYa0dUThd4umew==
X-CSE-MsgGUID: jxQs2jPtRw+MzOyvhZWdWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="33936224"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="33936224"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 14:31:58 -0700
X-CSE-ConnectionGUID: O0inYI+jROWRc8m7UVmESQ==
X-CSE-MsgGUID: bXejb8NmQZ62aH8MuUNXBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="60505259"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 14:31:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 14:31:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 14:31:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 14:31:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 14:31:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=joI5s6BiOuMo4Tqlirbq6BkJSVZ+ajwJysECa8PpIMgq7fFf5PJeTfhzEJw6TfzJhhaiLoR7uIxwNLppOzGIhnck2QejqMGsJSU5QSwxJWI9XglNAJ1EZ8mkcM3sdxhLT9XsrGjRIHjrGavqwT1SXAkyZaljXo9wEpJWPHStJ0EulwP6vD5472XUngfWUyOBKLbH2NYqM9Q/uBlX0LEAyxCOH6EhZ/7IoBg8wXv/k7e6LxvGifqyaJ/rJHGPBUgEQSoWf7gYwq8J6wc8ndPLdzKxQo1kKlqjEp419qY5sO+oT0hq32r7oetACteTUweVfiUcTXa4kE9erAUfCMJZ2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WIHJp92QtgidSt53zr8s67GWEJyCv4ezw+6Z/eIB7Ds=;
 b=M4wRfVOaXPxgC06GDkJUxrtyA1mMAQRjTct8n5td9Tt78ygskqlHmizxsXtZYMv7jbtX1nU2c7eGXiKiHeaymhtVIAN+8um7pmfHYm58SgVcGsYwrAzbRx9r5fFBrMSyUNy+vq6xlu7vU+Gf946iYmUlZg2ziX0Vf3toCSxfvgti7TYNeeS9SQ19nh1kv7ULT9QaGN+t/3IC+NVP22KJmmu0YTkAgQZLIOsoGW6DbKAOLD5GB0erd+bAEYGWdfl+L/C9pN9Fv7neS6aw/Vrmd7fCgvpO331RdBGSLgF9pUBDHtnFbq/5NGsSS2FxfDe4/pw1ek2D8xa+2jheMxTRhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM3PR11MB8683.namprd11.prod.outlook.com (2603:10b6:8:1ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Tue, 20 Aug
 2024 21:31:54 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7875.023; Tue, 20 Aug 2024
 21:31:54 +0000
Message-ID: <0a4e32a4-371d-4962-92ec-ef31a120a663@intel.com>
Date: Tue, 20 Aug 2024 14:31:53 -0700
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240819101401.67924-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240819101401.67924-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P223CA0013.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM3PR11MB8683:EE_
X-MS-Office365-Filtering-Correlation-Id: b990a37c-3efc-4599-c42b-08dcc15f8305
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nnp5NDlvcEVVbDBTWEZBRWNKS0dtRDIwT1VrNWpWWDdkODdTUWJaYnNKeHpC?=
 =?utf-8?B?anpSNXZndnQzcWpiMWFKTVI1YTA0KzNzRXh3d3JrUW1WekFHb1NWMmVjaUtG?=
 =?utf-8?B?MC9qemR2N3MzQnlHcXpKQXowUEkrRFl5OEN3RzJuOWRJK2xWaHhZZGVLNDRB?=
 =?utf-8?B?YVJPV0JTcGM3UzhmdXRoN1o3aGpVcWE1emtPR2IyNnNnQUFHRVA2WTZnKzFT?=
 =?utf-8?B?ZVZTaDV4dW5DMm83WFJxcVpmS3RMRnQ5cDhmcVNPZWhwYmZocitpTUFNNEFC?=
 =?utf-8?B?N1dSOVhhUmZOYWFSYXNXR3ZLbTY3dzJENGxBTW9rZVdyZ2d3Yy8ra2JqZVlI?=
 =?utf-8?B?VjFsMHhBQTlmWGRwcElETmRVK2wrenZRQW5nRHN0SXRQUUxoRVd6eExyTWlt?=
 =?utf-8?B?cTVKcFpsclpTbktHNFNUaHhIbzBraFZBN240dnpLdWdoUFdhdFgwZHJCRFZi?=
 =?utf-8?B?Q1pneUtxbVp1a3ljR3NsazlQWUw4OGhMc3VJeWNTMWoyaVlOa29UZXd5NDNG?=
 =?utf-8?B?Q1IrYTBGeElDdzE5K3ZmbDhjMEt0TFl0MEwveFFkTFFncGY2YU5DSGpiOTd1?=
 =?utf-8?B?VnEyRUxVNXUyRHhDNDVPQ0JDQUIzcmQ0c2daWUNLVmNxL0dRUnlsQW5BY25B?=
 =?utf-8?B?KzlyY1YvS1djcXNab3IxVUY1UkRHKzVWV3JxZEd2ZWlLRkpUMDFnKzU3MmFV?=
 =?utf-8?B?Y0VxdTQxRzJNRzJxWW9qdksvVStuWjlYWElVbHpqbnlMQmpwNm9MRnVwVmJa?=
 =?utf-8?B?d3RheHk3Z2RIS1paYkNQRjZybmhETld4cW1JZUk3TGNrYWFiSHVMTlZTTGh2?=
 =?utf-8?B?eDkyQkptNUk1WnNnQkhmaU1MQzZMc0tjK1dNc3VuL1lQMVNESUEvVDlkVWQ3?=
 =?utf-8?B?aklHbEF1MUNKaS9YQTdveE9zSmlGNkpnRHZaZDFZekl0ZDhmR3VSaW1GYjNW?=
 =?utf-8?B?SnpBdHlJbzc5c212bWlPRnRqM2c4anNLRTZEZ2doMXNocm5zNHBqbzQ4WUJL?=
 =?utf-8?B?OGVVYXZpV3FxK3hLbDVwVHExRmJWYW1ncG1TZ1VIN1kvWFMwZDhnSjhxZVMr?=
 =?utf-8?B?ZHJpYTBJYVBWTWpCQk5sYnJ5U3BBYkNUTUptNGkxS0ZTSXBNQzd0bmN1YUIz?=
 =?utf-8?B?MHROOVdyL0gxZWtDZUhhdjRGdlF5dllKZkl4cm5ZUjJ6Q0s0OVo3YzVyL2hi?=
 =?utf-8?B?V3VYaEdNRlF0bm4zbllIK0NlWUxub1JtSjE5Q1BwYkNSbmFjbHRkeFRUVEl0?=
 =?utf-8?B?aW93SXlBT0VrcGhCaW1uemE0bVMvNytrTEl4dzJSMHJ6YzBlY2M3eDZzT1VR?=
 =?utf-8?B?MnVTZWhZV1RvVGtlSURHcmJBcnVValpmSmk5MUFGZFYyWHZKSnRaSk1vK3kw?=
 =?utf-8?B?M0xqZmN6a0JBaUFjT3Q0N2VqWmpvVzYrWGM4Z1BMbTBFRGFRZUZxZlBYTWh1?=
 =?utf-8?B?ZXNJOFU4OGpHQlBVa3B0OFVjTklzSXZkR2RGYnppNGF4V21KeWptcEh4NjhE?=
 =?utf-8?B?TVNSNUFab2dsdGtxSXcvZkw4U3h4ZU8zd0llZHdEbk1JcnpOdUkvYzg0cXk2?=
 =?utf-8?B?cHptZXgyaU84Vk1DL2tsSW5maWlybHV1UE45Qlg3QjVNOWpLaTlONGdBKzNN?=
 =?utf-8?B?dk4wcytFMEIyU2hiU08wWHlVQUhVUWE4MjdxWkt0K21naFQvWjhnbnRZVy8y?=
 =?utf-8?B?OTdiQWo0QW1aUVQyeStjQjJZSUJ5VE5RbERBcEhxdkp0bGxWa3ZsZFZlM21z?=
 =?utf-8?B?ZXRlbXVZdG9naXVUMTlnY0MzdHFWRElaVDNqNE56YWhwOGpuQUd6enBGSXdP?=
 =?utf-8?B?eTBxQzIyY29EQnlYaUxEQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnhCWnIxdVdTamFTM0w4cHpqaXpDUjcvUStJNXZIa3Z0dFRELzVpd1pFcVFM?=
 =?utf-8?B?Z2tKaS9VRFAwUEc0ZnpkdE1zdTEwRm5IYWFyV2tnWDRWcDVscFVvKzc2dTZm?=
 =?utf-8?B?Y2xmWmJscTdwbXc2MXNlVVBsRFBxbjRORWEybTlOYmdLSlZlMWNUa3J0RExB?=
 =?utf-8?B?WnNmWXNEZU5YbzFpUFVQdXZuUUw4RVhIdnAwMXhPdU5tNzBsNlMvOFhtRHky?=
 =?utf-8?B?Zm05NkNGRnlicUNkV0wwOVV2NkR2dDF0WDdlVXh2UHFJOFp4S3BGV204bjhC?=
 =?utf-8?B?Wm9pV0lZbHVKOUc4M2w2T2twRm5NVWpVZ1AwaDN4cit0cG83NzcvNEc3emhI?=
 =?utf-8?B?L01mVjdIUU9FVUVkM2JEUjBiOUdSWE5UNFk5d2MrK3oxaWpWeXRKQjZLL0kx?=
 =?utf-8?B?VElvRk9GZVBzakplUUk5eUFtdnpKV1RTYStya1pxcEEyODNsa2xneXc1eFpU?=
 =?utf-8?B?Qm9GSU1MaTJ6MFRKZVhEMmUyY1pVSUhKcWZEN2hOUVp6WVByYWV2MnVZTmRP?=
 =?utf-8?B?djdoci9neG80UnNXU1FWMUM0OU9VcHRPZEpQckRFczJyYy9uQzNFb3ArRkJH?=
 =?utf-8?B?aFhxa2E0Nmg5TUV1UlRCZk1hVk1LaldUVGlXcEg4K0g4Q3hWTkgzYW5Bcy9C?=
 =?utf-8?B?UjZzQlUzLzZJV2F0WFgrdzdsY3h6a2F2UnJSL1NEMGoyTGRRVFhRTjhPVHo1?=
 =?utf-8?B?akZIL1ZJZUJDYitHQ2pLWjMzZitqOThyK0NNTEVLUFZiZ0c3K2hpZ2thdXpa?=
 =?utf-8?B?ZDdyUHk5NklTbEhpdDd6Mk5lZWFLR3ArWERHbGJFb2J3bHNxUDM4SEZUWGJQ?=
 =?utf-8?B?UGQ4NlVyUXZLekpGTy9DQWEzMHpxZ29XNHpLam01c0lGaVBIYmJvcGlNOWxK?=
 =?utf-8?B?M0xyZmZZYldMM09wN2FvOEl6cER3b2FIc0RSRWwvVE80QnR4L2hxWUpsMmov?=
 =?utf-8?B?YlFWMzkvNGMzSFFNaFFGMy9Fa0lMa3lscSs4cVFHa3BXMitlM1JXRVJoL2dI?=
 =?utf-8?B?VDhwSkZnMzdwYzZOOWxHSjlwWkZORnp4MFV0dlBYRDJ6eWlLcmpINWhqWGtO?=
 =?utf-8?B?MXpjREpiTzdvSFJGOWd1bFBneGR1aFY4dnAyRndEeDhGdE0vZDVReVJLYXAw?=
 =?utf-8?B?ZS9GT0pmRzErR3pzQ1l2Q3hUUDNIMHgvOUJOVlFPalVTZmlwNEhySEl5STIv?=
 =?utf-8?B?K1pkMlk0aFRUNlVIdkFiQXBYSnhhTlRYYW16UWtYQTJvTXl0ZWVSNFpoQXJB?=
 =?utf-8?B?UUk1TXh2THppckxpeUl0RXBha1lNd3lma3QwQXlwVWtuT3Q1cERkWGVLNTdi?=
 =?utf-8?B?MHoxQ3hLdXhLOE1qTXY5YVFvdkxkdkprMnBBa2E5N2d2OFBQSTB5RW9FeXdC?=
 =?utf-8?B?Y2JscWNMbGhDZitYNTl6YktBZ0VWamxSUWJDdmd2Y2NUdEx4Vm82cTJiWU9H?=
 =?utf-8?B?VlRXQWY1UktNK3NUcDdEd2M1TXpPdk9wdmZDcTY3WkpMK250cERVOGpUWFBG?=
 =?utf-8?B?bGpJUTNVeEVXTGxQbC91ZFVKUndLNldNUS9VQW1rRURaQVN2T1JiM3VSUXRR?=
 =?utf-8?B?RHBHNlZwZHl0VVd1ditGWUhDSmwvYUhYMUZaRStycjVoQlFZRWN5UWlTY213?=
 =?utf-8?B?Z1U2Y3V4ZHB0V2hndTZiNlQ3aGp6OTNVVy92MlAva050Zzh6WVFGajNCRkxO?=
 =?utf-8?B?ZmFvYmZRTjA2ckNtSmJnQ2RFWEdCTFdhRU50Q2o2RmxqbHZyYlJ3ckpjQUdH?=
 =?utf-8?B?dTBKcWJMWVRuYzZMM0ZpS0JOaGxWRUN4UG55eXlicUh0dk5BQnBYNFNDQVM1?=
 =?utf-8?B?SDNUYkhKZFNMcmg3cGxLUmNIVTJRRFd6MlJPNExocXQzdTJLOGRMWTVzV2RO?=
 =?utf-8?B?NTdzZGxzTS9xdXJwa2cyK1cvNUxmZjBlWGRjaktyMDZoQTV3U3Q3WEEzZC9v?=
 =?utf-8?B?dldkY2tZc25ISVh3bGRIdmx2dFR5ekpCYkIzazRLUjBPUW1SNkJiWVhkUmQz?=
 =?utf-8?B?Q2FKbVc0bkJjUndXa0Z3ZmZkVlpicU5zRFhCcjczdlhoZHFxSUtrSXNRRjNS?=
 =?utf-8?B?QUtCaXNINEZDVDQ0M2doWGFVb2thN1NMcis4NDZ3VmF1WlJjKzhpTzN2NnNN?=
 =?utf-8?B?cDhqbWJoSFlQQVpCV296WUcrenlFbFd1YzdpMG95dmg2RmhHM1lYSjhZMmho?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b990a37c-3efc-4599-c42b-08dcc15f8305
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 21:31:54.5266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DAA1RcLqYoCQvV9WoQh1cDqeOOx3HMdIWw1XWOY6tOZ2tSi+SwYEMX57pXMamYDfHgQLuW/tT13aDVjo+GXK/EU3Vb/KUbI5yzSpDTzwxGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8683
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724189519; x=1755725519;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7xhdSSYCugUakLUu87P26m3BHqgNvCbY/OcdHJj8H/M=;
 b=Cb+DDTs6ktEHSGxVleRtRcIjsR6a/Nu/hIlu6WdovnMiI+jWaAHQzOvR
 3GJMONxHG/KLQ1TV2LgO1VfSSp/hxohhTvd8dfMgR/9BJDiQQkydXevXZ
 2U6/mDVxnJPGEY4vzbQ+oLc+16vKvTnEd2eqm7DgolOP+Uj5thwoC1DIx
 3zcBB+AeOqDvG59+6Hg6iK8P3T9muaJnfMlZzkb3J+CKMCH4Hd1dalHIV
 wJk7deJV2iE8tF55Qfkcyh7lBeWP72GpVJo5Sf3N8ALFQ12rsF0V2P4r5
 3GvRAODd/o6GE2gbiGketNJfVdnISfF76UWEtFFD/AyHNFHcLaANrZ/UD
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cb+DDTs6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: set correct dst VSI in
 only LAN filters
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
Cc: netdev@vger.kernel.org, wojciech.drewek@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/19/2024 3:14 AM, Michal Swiatkowski wrote:
> The filters set that will reproduce the problem:
> $ tc filter add dev $VF0_PR ingress protocol arp prio 0 flower \
> 	skip_sw dst_mac ff:ff:ff:ff:ff:ff action mirred egress \
> 	redirect dev $PF0
> $ tc filter add dev $VF0_PR ingress protocol arp prio 0 flower \
> 	skip_sw dst_mac ff:ff:ff:ff:ff:ff src_mac 52:54:00:00:00:10 \
> 	action mirred egress mirror dev $VF1_PR
> 
> Expected behaviour is to set all broadcast from VF0 to the LAN. If the
> src_mac match the value from filters, send packet to LAN and to VF1.
> 
> In this case both LAN_EN and LB_EN flags in switch is set in case of
> packet matching both filters. As dst VSI for the only LAN enable bit is
> PF VSI, the packet is being seen on PF. To fix this change dst VSI to
> the source VSI. It will block receiving any packet even when LB_EN is
> set by switch, because local loopback is clear on VF VSI during normal
> operation.
> 
> Side note: if the second filters action is redirect instead of mirror
> LAN_EN is clear, because switch is AND-ing LAN_EN from each matched
> filters and OR-ing LB_EN.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Fixes: 73b483b79029 ("ice: Manage act flags for switchdev offloads")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
