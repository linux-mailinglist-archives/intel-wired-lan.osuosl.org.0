Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EB094CFB3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 14:00:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 699F040163;
	Fri,  9 Aug 2024 12:00:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jllUpdKnRPT0; Fri,  9 Aug 2024 12:00:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE4674105C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723204841;
	bh=nbE+8O9ja40OF+JT8rcUvebk8v8dgpGpLYzVfufhV80=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zV3dFnVNt3kpZIcK1DBEbOeJjxjIicXdG/y0LlGc6pfs2PukFGE5lOCwTDPF6MjCs
	 2xPz6bZXGfXcB/MLPFJ6YHDO2vz/8iMAgedn5pfAvtz4lPnVFfJmHHz7A/p0/GnRzG
	 Amz9AXTB3f2XSIbrpQgQ9JKTmJKGZYHTzYr+7xaOwpYnZRBJL2qVd6f1XWpq5/Yq8v
	 pWLp318NlDBQ7KLg96IfDFsrGG+KRH9BwKDbYMMY6QZj0lF3I5OgRVBqXIRISJ3O1a
	 DujUCvUzpgjwOJhenfAgWBPgCbRAxLZDn1IhP6V+fFn9LkoS82EacM+UD4pORjDPo7
	 axnWTb42OPLqQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE4674105C;
	Fri,  9 Aug 2024 12:00:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12DA31BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 12:00:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F389641320
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 12:00:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ws4CybDiHopq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 12:00:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6E79341307
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E79341307
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E79341307
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 12:00:38 +0000 (UTC)
X-CSE-ConnectionGUID: JnywH0PDR82y4GHiczVuoQ==
X-CSE-MsgGUID: H9SGi0sNQYuletCx7Kbdfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="32784454"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="32784454"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 05:00:37 -0700
X-CSE-ConnectionGUID: k8gzlYu/QISkOcfdOInckw==
X-CSE-MsgGUID: I2QRIZOYQFOGzIyKv5r+OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="57633933"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Aug 2024 05:00:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 05:00:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 9 Aug 2024 05:00:37 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 9 Aug 2024 05:00:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r7+FCziZEuoJ6a9A0DkQUaVGGM6xCmCAu/VtIqrO+VSilCTklxeUUlZqNlq5Lc4r9G2zbxEP3c81TigLgsrgPwOkqrDQ/D5S415BOZylgeoHCs5uxqfEMn+yE660LUEPVERsG8zwGwTiO4sZfHZxZsdx9D7onRQDR+fTOMsiXIOxjNudvQH6JDzBon3oC8GBv3izrF/z7ipWrvMJO1PxZ1yjma6zhLRtVK0zdXxqzzKYvWKqTSj9q72l89InSAc/4vhw2QRDsopJCxM2kO4FsJBULPq4l9n+4jAwIVabVwHnHl8KUEFTuzbU0n1gVcX6owsRnbAOp+Fy7sWQhV7nZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nbE+8O9ja40OF+JT8rcUvebk8v8dgpGpLYzVfufhV80=;
 b=mEPxRVqej/4dW/Q2IzDHwJLY8TbJLjzx6tFiNxXizMkQ350bo+z150rwIbwY4IOnErJf1DG9YHhufTKxohBGlp9Es1/XNZdCDWBTRY0XleYyHu7lTh5B5JE5pFPvETIGM1Bp7p4heq1Tc1ZSf1QfL6+GP2UkIhKf/ha9NpC4J1h/AeWMmN4FiMR5NHqEq7iqiSVeG29z6kX3rH0+nIk0SSBnobRnl/2+vg133gQv1khtLJ29Lk3KaLm8WWaBe22NrUsmD62TEvbg+24Dedjk/OsF119RxhXFddlcDC7XFzFK4UdEceAzj+YhRq/7mb9RBj1SGk/GPajdbyPOI0GebQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB5765.namprd11.prod.outlook.com (2603:10b6:510:139::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Fri, 9 Aug
 2024 12:00:33 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7828.023; Fri, 9 Aug 2024
 12:00:32 +0000
Message-ID: <741830c8-7d81-4bbf-9f75-272a8f3d765a@intel.com>
Date: Fri, 9 Aug 2024 14:00:27 +0200
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20240801015829.4011051-1-paul.greenwalt@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240801015829.4011051-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0099.namprd04.prod.outlook.com
 (2603:10b6:303:83::14) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB5765:EE_
X-MS-Office365-Filtering-Correlation-Id: 27bc3b54-6a10-45a0-ddb5-08dcb86adef4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MEZnTkJSa3dZT2JZV2VGeGJjSnFndHBaTlRiM3VRVEtZL3pjZ3RLelQ1dS91?=
 =?utf-8?B?QVBrKzlEcFZPMmZqWUxOYWNndS9vSzNtZW05RTZ4R29kWCtJTGZQbXpweW9K?=
 =?utf-8?B?YUFnUUtjZjgvL1BMakdrdmx1SlJhV1Q2T25EaW5EbFJjZUxVTnlJaHcrUUhO?=
 =?utf-8?B?dlF1SU9SRGRtNHZBT0FyWHlodFNHM0FWcXhiVVlidDViSlQ2ZGl4bjhHdmc5?=
 =?utf-8?B?NndHS3pxaEVBSkcxaks0VU9paVJZc3RPcG1jaEtDVzRWNDREMm5sOXNGcmQv?=
 =?utf-8?B?dGFGc2dBRmkva21COUlFVFE5eTg0Q0toNHcrVVRsbG9UeE1MN2lRclJSb3Zv?=
 =?utf-8?B?S09TeThERjA4cGpmT2Rmd1dRc0llTDBUMjV0em5KM0VRcG44TUV1MFBxb0Fm?=
 =?utf-8?B?RlNMcHM1blliWGZvdmVBSUVOZm1laTlZaVpXSlZBc2NEQnBub3VaNTVFM2Qy?=
 =?utf-8?B?dTJtS2ZHZmhIVkZxOTNkcE9ieTZyNUd1NlNoTGxpSUpaTDVaMk1sakZiSmNu?=
 =?utf-8?B?RnVVK1lsNCs3WVNKYys4bEtSNDlvNnl4ZTRraFR0SFZxUnlVVStYQ1VBZ3Nm?=
 =?utf-8?B?V1BicUlSNG5ONnR4Njk3WG5FQXVsWSsvUU1kNGk4bEljeUYxRnJQdi92YTJD?=
 =?utf-8?B?SnprUFA1QjdOcmpWQmVrL2p4b2dQeXliT1M2eUl2U0prTkJLRnpTQzJlUE9E?=
 =?utf-8?B?aWtrQm5vQm9uRW1PSlVQN3JycGplaGwvdHZqdER6VlZsaFJDRlE5VEY1NzZC?=
 =?utf-8?B?dE5kZ3hQTUo2MVJSNUp3WHR1VE9QMWN0dkFidVFBYXdNQ1hzRzU1NVVRREY3?=
 =?utf-8?B?MTdKV2U1MHBQekhNVUpjN1YwNjJnM1R3Z091S29qNUpEZ1VHdkdSbVNZWEx4?=
 =?utf-8?B?dGdmMUdTdjJHdmE1Um5qZkI5Y1BXdHhzcXMxWHlycVA4MkRHSWJDMkhOdm9M?=
 =?utf-8?B?b0k4R0Q3WXI0dnJkY3VrZXcwU0pWTDMvUTdVQkhvRy85Z0dEcHhZL045VDl4?=
 =?utf-8?B?dWI4TFh5UzM5eWFlUGMwN3RtZUhZMFlINkpJclc3b1hnRkhSTXBWV0lJWWds?=
 =?utf-8?B?UktkWk9RRmlUU24rRFZwZ0owQWk4SDJZV3ZFazJGdlF6amRGc3d5RGw1d2ZV?=
 =?utf-8?B?RVByeDJWNnArZUV4RHhSNXF2Y2ZMZm5LblFndUdkY2xYMnBqY3grbDFkeGRG?=
 =?utf-8?B?TmV6MWpMeWZJUFgyS1hBcUhqT2Y3RkxuM1NZQ1c5SG4yeFFwaUJaY0hZS2RW?=
 =?utf-8?B?N0dNNDc2SG8vbG1tY3p2S0piajhYSFcrblJpWVJ2YWQ5R2FrSVQ5dS9VZTNI?=
 =?utf-8?B?eFB0cW5ucmM1SEY0eWVWRHhlNWxwN2M0UkU3MmFST013SVU3NTRIeHRBTzNs?=
 =?utf-8?B?T0lGcmtpRjUrekRPWitiZkt1TUtnQkY5MjdoOXRkT1QxSVNIRC9qUW1xOTJO?=
 =?utf-8?B?RTBCVHNaWnJvbHdJdHQyRTBGOGpyRnYxcmpSVnRraWdZOU0xWWhsdjdDUTF3?=
 =?utf-8?B?MlpYSmc4QWo3bmc1REdVT2RaZDcvOGo4eTNHNExmbXhDR01CdDRhK0Qxb0k1?=
 =?utf-8?B?R2k5S2R1N25FNWRaUWN6N2tSekI3ZEN5SFozZitPenQ5a3U5UTVHQWl6ZnVz?=
 =?utf-8?B?TzBFZUN5ZS9CdlhUQm4zamVMU0NNYTZ2czVGQ0xnMTRiN3J6bFZaa1lRdTFt?=
 =?utf-8?B?VVdSK2xkd082MXFDRHZpalIvSUhOeHQ2KzRmb0VVOStZTWlyM3FkclZTOHJB?=
 =?utf-8?B?RVNOSFU0dmtTakZRUDhzRjdST2ptZ3paczRxQ01vQTJRRnFrdWRUd0JIUitR?=
 =?utf-8?B?MHZ4T1BHL1lIVmkweU05QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2o5ck1NNVZjTkdiRG5LTE8zSWV1d2hBR0QvNlUwM0kwQkhLbzZFcFNIOHRW?=
 =?utf-8?B?cmFMb3hrdXVBME4rRUVxVVE3d3ZSbXFTZmtmb294L1FBS1BRaC9raGlSSUhi?=
 =?utf-8?B?RmlBZi80UjU5cE1ub3hhYTlLcGw0S0R4a21ZL2dmemtMREphZ2FaUkRpbVhh?=
 =?utf-8?B?R3o4UWpyRjFobVd0empmL0k3WDIzN2g5bmxuLzdtYWJDSU9IRFprMTdzQnBh?=
 =?utf-8?B?US9MZ0xXK1dEQTlTOEtaSTBsUDJwR285TmZyR3RWL1MrcWtZUFRXWm9laVBP?=
 =?utf-8?B?YkRCcjVIL0JnS0xoTWtRTGVqS0xSWVlpU3Z2cU1TQ2N1WFRFY21Yc3ZKbS9S?=
 =?utf-8?B?MFFTT1o0cXVWZVYzM05Za2RMUUZSNE1oQ1lzdEV4TTBadU55MG5zUEVDdk9h?=
 =?utf-8?B?N0VReWVYdFJwd1JuYmVTZkw3Tm9EY1duQjhVWnpyTHBxckhNc3U3d3pLbk9C?=
 =?utf-8?B?bzBTS2hzYThwZ2VwT29XdUY1NVNqZUhpOW9wRy9rT2szNC9oYmNiQWNvUXJD?=
 =?utf-8?B?V2JqQ2U1QWtXREp0bU9tOEVsR2owajlVUVZxT2h6Ukl5UHV3OEZvL001bnAw?=
 =?utf-8?B?ek1kcUhzaXVwVWVVM2R0MlZVZ3czUXlaVEIwOHpKZmNRNWhoU3hURkRQcGpW?=
 =?utf-8?B?N3NTVEh3dnllUjdKUlJsYk8ybE9Qa1l5elBXMi9ab2ZCKzFrbDVNdE9IV3pU?=
 =?utf-8?B?cU0zdXM3bGpHL0lJTFI1RTJGUVJFR2FWTzVISmd2TkFnVkdCOVZFTHJiUHFL?=
 =?utf-8?B?U1Z2M3Vlc3QrV1hwVFExeUJwMTFLQWRjNkx5cU5CSXZPRyt4R1R2MFdiQVFG?=
 =?utf-8?B?UXBUL1RJK1dZak5ReEZURGMyN25ZdVA3Snphb2w3eFBhcDg2SDFhQXdadWZy?=
 =?utf-8?B?ZXQrN25mcGlRV1JVMWtOL2ZhRy9HM3NncGc4elFhZmdDYk1aa0dXay9DWXZ1?=
 =?utf-8?B?Vm9oN1Z3SUhiZm9pQlBZWVBBNUFabFhsMnZTcmd3WmswUkJUQnRiVXVRMFZI?=
 =?utf-8?B?Q29ZNVdycmxUbXF2WTE1ZTJNLzI3L3lXT2wrYTB3c2JUZHMrTm55S1dTS1c0?=
 =?utf-8?B?NSt4ek5FeG9TZmNscTFvWHUwWjBRMHR6aVJjQmg1cUNtMjd0YWYxelVhakZk?=
 =?utf-8?B?OWNlc3dXQnJxYlBXRG9NT3QwTkMwR2Q4aWdFdDlTbmE0WlUwMzRCZ0ZQcUdQ?=
 =?utf-8?B?ZS9oVHY4eEZFRENSckJmT2FtNHZxeGk2Y2FNTmhOblNVTXNpdi95NzZTYzZW?=
 =?utf-8?B?VVNMd2QxSlJ2Y2lkQlhqWG5EemY1NUtscjR2RDdhdTB1WTRKR0JQRFNuMGwv?=
 =?utf-8?B?eTJIUzllNmR1UG9IemVvOG5zbDlHVTV1c1kwV1UycGJ0cDFYSnRxa1JOeXZ4?=
 =?utf-8?B?ZTlYM3JXeDRpaEdEeGdZVGMvVXV5ZnJ0dTkwZ3lhU0NkMmxwU2gvQVQ5REdU?=
 =?utf-8?B?aXFQK1IrK0wxK3FUSDZEVU5TTEVCVFk1OXpyVmdlUUVobkU1OS9PcnEzNVRF?=
 =?utf-8?B?K2UvWEJMQ25IbEsvUFM3YVZGSjgrUzdObXYrWWdLYnJjN0pCMGNvZVNHSGRR?=
 =?utf-8?B?L0NkNGgwbGZuVDRGdFN3N2VlMzR5NklPcDNCUGFTazE2VWVzTnpZRlVIVHly?=
 =?utf-8?B?c0RDdkpUWVAxU0xCRkE3NWJBWVdtY1dvK2svbTFNRlVPOEtwNkhveWE5dk41?=
 =?utf-8?B?NmUwR0pta3ZEMWwvc0JzZ3h4YXI3dEdyeElvV0drUHhDUWh5UWtqdmdnK0lx?=
 =?utf-8?B?Tm5VTzh5TzFhWHNRaXVnNTAwV0YxVC9pRVE1em9jNTYrNXRmNW9rZnVCUzVP?=
 =?utf-8?B?QU01SDVIb0QwV3VmeXZDMUVsTUh5dUVDekZDaHhZbDlwcVZsWVUvcEZjaWVN?=
 =?utf-8?B?ejhUMk1jRU5PanlPcVhvMnRGYVBQWlJBUmVXQXZWUDdSWTZvNkVoZ2ppWitJ?=
 =?utf-8?B?emNYVisyUVFHZVdja1B1V2phL1dGNGpnZ2E1OUk0eFVxa0xpZmhxbVZrdmpz?=
 =?utf-8?B?NGhNT1VybHRkSktXWmxKS0l3ZTNuVnk0SW5JV0VGM1hZaE9zOVVUekJybDhC?=
 =?utf-8?B?ZE5zbWVIRXpyaDJ1OUJvWDV6L3dKK0duWUd2TE1nWWdZMmNycmpWWmsvUU1a?=
 =?utf-8?B?anhieHpwZlRKTW9ZREs0UllqMVArN1NkWXdSQ3ZET0RVVVI5TlpMWERmVDEx?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27bc3b54-6a10-45a0-ddb5-08dcb86adef4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2024 12:00:32.8684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zWMEluKyfPwpw7oaVLI9URcDe1m3GOMVUZsY6xgH+z8ckcezt9XEaDHa/KjGFe/g5x0n6Oo37bQCAQT2C1cMiwJ5+EQyJvVDXJCBeyuvrzw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5765
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723204838; x=1754740838;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4sU0yKuwxxiJ6xaJnfW4K4sTFG4EpWMbVhvkQ7x8wHM=;
 b=YLwovGsuxq7i4RmWmrALVy3FmpC/lpQRg5d9mRvA/BzAx/KxlYugTJIk
 AP9/v4c/qM6p/mXlpxip1v1n3I5JSELP1cpBrsIe27xaKC5OcG8xeIBX/
 oMil9oIQtXLX4eYcoN0izwsGq4GVZUJwG09BNi5Z8NnRDOmnhskC9zofP
 fb2YMsks28D2cQ8HWQGXdqSDoobkx5p6QWRRZ8yzHbp59e5py2/sWGdTp
 LYEGJzHkiclUno6ONZ+ukkdUt50qNwOhOXAYERwVCHcCeP6twgf0UJSKX
 +JJQuJbUox1+SuNzXV6tBK1RD3fqV0NxWGIFs2Ah1cREmb6af5Pp6rPt1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YLwovGsu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: add E830 HW VF
 mailbox message limit support
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>
Date: Wed, 31 Jul 2024 21:58:29 -0400

> E830 adds hardware support to prevent the VF from overflowing the PF
> mailbox with VIRTCHNL messages. E830 will use the hardware feature
> (ICE_F_MBX_LIMIT) instead of the software solution ice_is_malicious_vf().
> 
> To prevent a VF from overflowing the PF, the PF sets the number of
> messages per VF that can be in the PF's mailbox queue
> (ICE_MBX_OVERFLOW_WATERMARK). When the PF process a message from a VF,
> the PF decrements the per VF message count using the E830_MBX_VF_DEC_TRIG
> register.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> v1 -> v2:
> - Update ice_mbx_vf_dec_trig_e830 and ice_mbx_vf_clear_cnt_e830 onstack
>   variables to const
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  1 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  3 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 12 +++++++
>  drivers/net/ethernet/intel/ice/ice_main.c     | 24 ++++++++++----
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |  3 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 26 +++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_vf_mbx.c   | 32 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_vf_mbx.h   |  3 ++
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  8 +++--
>  9 files changed, 99 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 4c563b0d57ac..53c8edbfaede 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -207,6 +207,7 @@ enum ice_feature {
>  	ICE_F_GNSS,
>  	ICE_F_ROCE_LAG,
>  	ICE_F_SRIOV_LAG,
> +	ICE_F_MBX_LIMIT,
>  	ICE_F_MAX
>  };
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index 91cbae1eec89..a306ea9b207c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -539,5 +539,8 @@
>  #define E830_PRTMAC_CL01_QNT_THR_CL0_M		GENMASK(15, 0)
>  #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
>  #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
> +#define E830_MBX_PF_IN_FLIGHT_VF_MSGS_THRESH    0x00234000
> +#define E830_MBX_VF_DEC_TRIG(_VF)               (0x00233800 + ((_VF) * 4))
> +#define E830_MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT(_VF) (0x00233000 + ((_VF) * 4))

Still poor indentation, there must be tabs, no spaces.
Also, parenthesis around `(_VF) * 4` are redundant.

>  
>  #endif /* _ICE_HW_AUTOGEN_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index fc5b87f51702..a6fa2ed6c4ab 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3938,6 +3938,18 @@ void ice_init_feature_support(struct ice_pf *pf)
>  		if (ice_gnss_is_gps_present(&pf->hw))
>  			ice_set_feature_support(pf, ICE_F_GNSS);
>  		break;
> +	case ICE_DEV_ID_E830CC_BACKPLANE:
> +	case ICE_DEV_ID_E830CC_QSFP56:
> +	case ICE_DEV_ID_E830CC_SFP:
> +	case ICE_DEV_ID_E830CC_SFP_DD:
> +	case ICE_DEV_ID_E830C_BACKPLANE:
> +	case ICE_DEV_ID_E830C_QSFP:
> +	case ICE_DEV_ID_E830C_SFP:
> +	case ICE_DEV_ID_E830_XXV_BACKPLANE:
> +	case ICE_DEV_ID_E830_XXV_QSFP:
> +	case ICE_DEV_ID_E830_XXV_SFP:

Can't this be somehow compressed via

	case A .. B

There are no holes between at least some of these.

> +		ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
> +		break;
>  	default:
>  		break;
>  	}

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> index 40cb4ba0789c..65d9c41bed21 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> @@ -210,6 +210,38 @@ ice_mbx_detect_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
>  	return 0;
>  }
>  
> +/**
> + * ice_mbx_vf_dec_trig_e830 - Decrements the VF mailbox queue counter
> + * @hw: pointer to the HW struct
> + * @event: pointer to the control queue receive event
> + *
> + * This function triggers to decrement the counter
> + * MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT when the driver replenishes
> + * the buffers at the PF mailbox queue.
> + */
> +void ice_mbx_vf_dec_trig_e830(const struct ice_hw *hw,
> +			      const struct ice_rq_event_info *event)
> +{
> +	const u16 vfid = le16_to_cpu(event->desc.retval);

Oops, I may've confused you. You don't need to constify scalars. Mainly
pointers and structures when possible.

> +
> +	wr32(hw, E830_MBX_VF_DEC_TRIG(vfid), 1);
> +}
> +
> +/**
> + * ice_mbx_vf_clear_cnt_e830 - Clear the VF mailbox queue count
> + * @hw: pointer to the HW struct
> + * @vf_id: VF ID in the PF space
> + *
> + * This function clears the counter MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT, and should
> + * be called when a VF is created and on VF reset.
> + */
> +void ice_mbx_vf_clear_cnt_e830(const struct ice_hw *hw, const u16 vf_id)
> +{
> +	const u32 reg = rd32(hw, E830_MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT(vf_id));

Same here for @vf_id and @reg.

> +
> +	wr32(hw, E830_MBX_VF_DEC_TRIG(vf_id), reg);
> +}

Thanks,
Olek
