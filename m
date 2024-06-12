Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB76904EEF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 11:16:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E207C40BA7;
	Wed, 12 Jun 2024 09:16:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xqd6U5ZrwjOF; Wed, 12 Jun 2024 09:16:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B301B405EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718183771;
	bh=uuRSVUZfzLhNRHrkFEAUvXSkOPsJqJPaKtqIzxuEDhQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uKp2uXBlhpru2LNdVCWXhD/5vCjely8d9qZ8IaWbprzMV3rrsXXxnsz5dT8p2Q+dL
	 vQRwkiB3ffvJQxS/1o1L/JRqjk3Za114zBhrmkNQiGn/2MW7qkiMbNYkeKrMMqZU3y
	 q8YDSZdSL2FABqlppKHvC80j257HTlIWsUsAsTBSws/wY5Dx8RqFiHmL1tnd2Sk5J3
	 K0PzXkkdssP/f/SSTZYwwh28bOFdzzMmuOrWXcRaJdSd5k4Ts1RwS9Ysy8ka2g+v0m
	 l3+DcY3IyUe5jhMrCwNatHlWtHm6xYSpavp/mUb7DNKz8XEs1uVrVk+CNgitQgO4vS
	 EeIxtjGpCZuZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B301B405EB;
	Wed, 12 Jun 2024 09:16:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 043521BF377
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 09:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E33F640469
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 09:16:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VBfnYupgSPte for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 09:16:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 913A1401DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 913A1401DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 913A1401DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 09:16:07 +0000 (UTC)
X-CSE-ConnectionGUID: SnAMKaycRhmVWmISnCnvRQ==
X-CSE-MsgGUID: PVFrQ1nlTA6EpE+EkHoQCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="18794585"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="18794585"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 02:15:54 -0700
X-CSE-ConnectionGUID: 0f5kW/+xTOyIt4CNQmJL3g==
X-CSE-MsgGUID: Kb/+hQTWQJCvC37JnxgKFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="39586753"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 02:15:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 02:15:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 02:15:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 02:15:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oDaq18BAOLsDRYvbiDSgfMa6cNxP+wnJRMlqIPnNC1jcLHzeWMyH32wc7WxmAObdBlUl6avAzqb+UWAOrJDpDnSZSdvmrFWptconiOPY2yWFzuzrmlM4TkuSTKzRRgyXVYKABXoMrFf/bV69rs3ZeTpOiJ34nGoSehXV5EwnKQPzNUv7OsPm4SLbAx/hwy5a4sMn7WBAMgZtbAEu/pARDKWew0d2wzCJZvMREImCuR5+Gs0XNy9Z4vwWZ73oxsiX5kc4bX/cSOmjN0IrdGLecv6CeKibgyK7KSmW5FGvQI0rMi+43Xzx/VJmLRGmPoSJecODZXBISRmDxbNp2R9w7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uuRSVUZfzLhNRHrkFEAUvXSkOPsJqJPaKtqIzxuEDhQ=;
 b=m33u16KEM4/CcDtgr/PrYN1zVC/h6Qos9ugnpMk5ipq6/kfAXZZfmcVWXwo8Ol/JSVmyrQVpCzQA/sZ3p5jsiwlAZXRHoVTmZihnD/6PruYptIgX8DFE4ezet+6MRgEYXaacbrK6PrgxW8I0HtyHfxgsUO2sofF2W+WBPDbXplyVfPSyg7oi7v+LpjcymsXrwlIgSvTXY0YO6VWkA3OglHmqu+K6KUz6YNoKqt+VYYEMVZ1DD57lqYfB85ccKKPiiO388cj6Xbkf0gNKooGOiDYqLCwVypgVEEgS62DB5pdE8gdZnDKcoOmD589UeH6BhIP6lSiTgnhPBF5dENhqpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MN6PR11MB8243.namprd11.prod.outlook.com (2603:10b6:208:46e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 09:15:50 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 09:15:50 +0000
Message-ID: <f453bcc8-8528-432d-b90e-35db9d4b0fe9@intel.com>
Date: Wed, 12 Jun 2024 11:15:31 +0200
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
 <20240604132155.3573752-2-maciej.fijalkowski@intel.com>
 <6f616608-7a56-43d6-9dc9-ea67c2b47030@intel.com> <ZmhdZwzIStFpghZK@boxer>
 <8a835d02-d65f-42be-b4dd-309e9e04d7f0@intel.com>
Content-Language: en-US
In-Reply-To: <8a835d02-d65f-42be-b4dd-309e9e04d7f0@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB9PR06CA0028.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::33) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MN6PR11MB8243:EE_
X-MS-Office365-Filtering-Correlation-Id: 28b7b725-f7e8-40eb-4314-08dc8ac04055
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|1800799016|366008|376006;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MHg3TnJtaDFkL2ZwSU1HNEJTMFduZHoweU8ra0V3Qi9Wd3pJV1EzTUFSeHRm?=
 =?utf-8?B?SU9JWWF5akNFWm5jeWNDekQvMzd0YjI4Q3RPbzg5Z21qL3NZZUJDL2xQSVc0?=
 =?utf-8?B?YkFKdkdwWlFHTVdkOWcwZUJCZ01meEJZWlFHblZkWjF5VWhrY2VTVG9UWGlq?=
 =?utf-8?B?MVVWbllpc3c0Z1A5L1ZJeWxVazhMZnF6UXFoeFhPdjNTUjFqR3h0RHpFU3Va?=
 =?utf-8?B?a3dzU1hYREQxVW0wRWR0b29XKzRXbTEwL2MyUURsa216UlMwaGpON21DYlBN?=
 =?utf-8?B?N1VoR1ZLVW4wa2NSUTM1SkRTS29qRitFOUhpaTFhRDJDWFczYUVTZG03aEx4?=
 =?utf-8?B?alRIWDdwaFU1Ym5BNHFqcGs5Ni83bkFxTXZUcEZGWGRDVzVoKy9NdnNlNWp2?=
 =?utf-8?B?L1BEcTRUcUI3S09rVVZvc3Qrb3NUSGpUSCtvNHoxN29ranEvREJGZkhEdUdS?=
 =?utf-8?B?Y3A1VHRpb2xtbUxHUmlhRUVxdUEwNUtVUDA2aFNiQ1RWMVhVcWxWRmVLMHJu?=
 =?utf-8?B?MVVIbXRLaXUrbFNHN2VvZ2kvemNmamRlN1VaQzJ2UksvYWxIZnh4MitWdmRa?=
 =?utf-8?B?VXhYTzVNaWVQM0h2NlNxVzE1RTRUd0t6dHZSQ1o3cWtjenNGUUErQVNrNmtN?=
 =?utf-8?B?VkMwd2FXbk1PRU1EcmRvZzdnL3lEWDE5aU9RWE9kYys3M0FsVUlZM1ZPV0Qz?=
 =?utf-8?B?Qzd1Mi90ZXZmeldldXk3QXYzVE5jUG1qMzZsTGhhUkV3elRFZkRrRU80djZI?=
 =?utf-8?B?Q2NiVnVxcWZCSDRRUlUxSDYwNGVHbEp1ZXN5RGU1VXl1eGY4Zndib2E4ak0w?=
 =?utf-8?B?VFNnak8raThPcjBjTGNOQ3F3V01pVU82aWgxWHI2RjE2dnZuSXQ3QXNYOVlI?=
 =?utf-8?B?aDZWUm1XRFVEY3BTZHp5VnNOSWdialFveEljMy84TWhPczZERVNGTE9ybUlB?=
 =?utf-8?B?TUNyekg3VUxaUm1TVThxa1YrOEQ2OFdwMEVlUnpWT1dWZEErZERySHREQWlF?=
 =?utf-8?B?bllPaTFoRy9lTzRaSUhOTkc2WWhIY3JrcmtvOW1NU3J6bWVzYWZKQVR6N2xL?=
 =?utf-8?B?R016OEhQTXpwbEZSVXpsWUs5bUR2YldyU2pkSC9qcDl2cmZaWWhYWXFSNEJO?=
 =?utf-8?B?c3lybW5xZFVHRStxNFZiNXVoazZKWHJadkRRL2E0bUgwRk9GRDJyc214ak1q?=
 =?utf-8?B?MG5vQW0yVlJRNHA3ODBIVWVaVFFmYU1LalZCTzc0cjRpcm10YVFib3RYT3J1?=
 =?utf-8?B?VEJLTnlHWEVlY3RWcytqVGVjS1BnVkNTc3Y3bHBaUURWRHh0OGUyM0FBWGRh?=
 =?utf-8?B?T3hsVElVRGQzOFRIcEo2cmI4d0ZoaGZiSnNtRkQ4S1VTOW5OZXJJeS9Pa21y?=
 =?utf-8?B?cWlVL3NUVGdKUjdyRStMVS8rbFJvaHdlRGsxR2xCT0pRNHYvZEJVZlJyVFR5?=
 =?utf-8?B?NlhpOXJsUzlGMnR6eHJoaTlnYXM4V1JKRVpUNEt2YlQvRDhSSkxmenZ1Uy8w?=
 =?utf-8?B?T1pNNGZGaFlsSlJaUURZR0xwbDFrYzcvMFlIcDBpOXczb2RvUzJwWkFsTFFG?=
 =?utf-8?B?eDFCanlGSExmeWFYU0RUeXBPS0xtL1NEVTgvR0tMZ1c3Uk1seVdPaGNmMCtM?=
 =?utf-8?B?RVhCNlExMXI0YzQxZWk3NVhUR0k2MUtiSVA3R0xtbUFLREQ0cjdQL0NOdHpn?=
 =?utf-8?Q?v68plLNBZzDYDSs6RWuf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(1800799016)(366008)(376006); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0RNeHZhcnZ5d3NJOEU0Qnh0Mlpyb1VTVEtvU0dNQ09ML1pEWXJpNE02THJP?=
 =?utf-8?B?K0tHQkM5YWRtcWdrai92aE5CR0M0OE5Hay8zNlB5dDhTOVNqWTZrK1E5b3J3?=
 =?utf-8?B?emtvNSsrSDA5Y3pNbjhkRExpaWF1UE5XNmtZUk03SXFhN0tDbGFYeXdDNDJF?=
 =?utf-8?B?WDEzaTZxdDRBL0o4cmVtaUYySnhWaWorL2IvMkdhMWxWR1ZwQmZtKzcwTVhl?=
 =?utf-8?B?eEQ2VWg1TTJSZm0raVJKay9sTVQrUXhUT2ttYVhTTURpRW5zdERBTy9GZGdn?=
 =?utf-8?B?aWNJa1BWSElQMWdkSWpicU02UWNtMG5ZMDZRVnZWRVlJVDFvSVBvb2Rua1JC?=
 =?utf-8?B?cVNNNFNHQkhyUDU3VHREK3Z2NWpGckcwK2VtdGVvT2hab1VBTjJjVTFvUkdM?=
 =?utf-8?B?UXNXbllEMUpvcTlnUXBTYWUrcnpYYU85UHFiQW9ReDAvYThPNy9PMTNjMEhK?=
 =?utf-8?B?djJUaVVzb3lhMTBZaXZLd1VCRUR1bUtiVHNiRGNnaUltTFk4RXlnSndDV3RN?=
 =?utf-8?B?b0lxaS9FNnMwc2JyUlpjUnZyMDZMcjg4MGl5S3JTU2laTkFxdWpFaXR6WDAr?=
 =?utf-8?B?Smt5Y3hMdWZLcitjSnlMQWlzR0RlaFUwQWk2SWVNWCtBUlhpQm4zUnRxV0M3?=
 =?utf-8?B?N1NoMkg2U1BDbVFPcENpOGlEQ2ZndXJqYTJaYUh6ZXlNblNEWERCLzk4ZEZy?=
 =?utf-8?B?QjJYRzM4M0k1bVNHVEp6MllwbXZMT2VzVFJZdDBaemp3UkVuOGFneTJNbG9i?=
 =?utf-8?B?ZWhxaWhVcEYxbHZoSlJOdFZEMjAwSzJQMlNSd3FmbzF0L0R5d3Jld3ZsYjRP?=
 =?utf-8?B?YlFxL3FDNW9xbU5ONm44di9VR2lZV3YyUmx5UnIrQnhRbDV1bTFVWnRSU29t?=
 =?utf-8?B?WFhJWEJlRm9sK053NkN2RERjV20xT3R6UUhXNlQ3eGFtTlhCTFp2VVE4akJx?=
 =?utf-8?B?LzRTN240Zk40cGJmS2VEOEpHV1NFZVRDVk54SEtLSGRNV2tLbUxKY1FvemhP?=
 =?utf-8?B?c2VvMVN6UjZKbzEvc2ZEWHlxUGpiNWg5dU56ZlJaQjlOaFViMzBobVFuZXo2?=
 =?utf-8?B?UUZNekYrRUdrZFdjTVJPWTFGdkhhdVZPbXNVZW01L2dsSmxicC8wbUpzV1hT?=
 =?utf-8?B?U0RMR1VqWkxhVEdGM2h6d2lOV1FZT2g4MUJJR1NlUW5PYkF6NUxlMkxQMTU5?=
 =?utf-8?B?a2dKN3NhNDBDT2lFQnovNE9xQWVBS0FpZTlHT09qSTBFcTArRlJ2SVhNM1k4?=
 =?utf-8?B?bXdDalNVMWhWUzdYYnJ6STVRbnNIRGtmSk1LRHdDOVNIRjNXUFdkaFhlR1Bj?=
 =?utf-8?B?bk9Vb0tSTDlzTDRnR2libnQzcE93TnJsR1NlNDR3V3FqWldDOXZZU3BmKzU4?=
 =?utf-8?B?TU5MTENFVEZPdktYVkhnSVMyeldZNyswalljeVRPaldtbnBlN3ZFb3NnVDVW?=
 =?utf-8?B?cjkxT2xZTG5yNjduQ1R6VTR5R2dOYVdVVVVSTmFidEc3Z2M4QjVmaWwzMGs0?=
 =?utf-8?B?dmI5dEphOFlZNmdob0pZL25zSmZCQzArNkM0QXZ0cVdHSWQxQmNOWW5JZ2Y0?=
 =?utf-8?B?Z3pCMnEwY3grYmwrOHNrdHo0U3lGOENuMy9LMllEQ1lGNTU1R1lBdFdUZ1c0?=
 =?utf-8?B?SFBkUGpHK1AxWWZ1UUpsODM0YXhtVHNIQzJYZlFLY0xtNjlzNTYyN1RUaGQy?=
 =?utf-8?B?UWFKVzRLby8xbmk4VGxrTmhiejVlVjBES2FENFNsZ1ZnM0J3QktGRGRXcHVF?=
 =?utf-8?B?V3B1d2ovZlZBS1UyQjl6ZG1qY25LZFlZZ01oR1JEcXFpMXdYTm5aYXkvYnFm?=
 =?utf-8?B?b1ArZ0lrZHd6Z0I3UVZjc2liZ21lRjQrRWxPYkNTWGVQNWNjb3liZkhwK2tk?=
 =?utf-8?B?Nkt4c01kTThjMEFMRUxSdVBmT0dCMUVnQVpKVXJyL211WWRLekUrbXJhZHpB?=
 =?utf-8?B?aWVpdXlaTmcrR3RKN1V0cFZnODRMcno3NmdkMm42Z0hxR2doVmV2aFo0UkF5?=
 =?utf-8?B?enhXWE0wSURSYlhLUGtyeGhxaFJZMkV3M1RjdlhhL3FVVTVyd2F5RGE2ckpr?=
 =?utf-8?B?WGhvNTlOWmxaQzNrK1hNZ1IvRVBxS0hFRHNXaGR2aWp3ZSt0RGhoWG9lUnpN?=
 =?utf-8?B?VUNxUXR1Z0NOL2NIQVFUTTYweGJxZXVaYzZXcjB0N2p4ak5ZSklTeGErWXN4?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28b7b725-f7e8-40eb-4314-08dc8ac04055
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 09:15:49.9682 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4MEoFGZbZ4ysEsdeP2EjMqSR6iEXC7CVG4BfCJBg0nEX4pAaLAXM5Cl/E8GknR9kDnhF0I5gSXRFlRcCVz3mbzUE5g4uEI8+a3EkZb2cJg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8243
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718183767; x=1749719767;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lbUfapHX1jcn4kAmUTYdLqHS4JOHO5smEN0oZ8D8pg4=;
 b=bI3kSCMDJm6zTbLeE/tBZFpnh4RXTXCtSR7Ovgb5q/q3HLVKdomUqbXe
 1jPkfGNb7GuUXPhhZ0Dj5ka2t3cHfzDYs2UdCOEG0gfFWfwIniXUC47y0
 tNmmFHlhHRYb5aYeKUnuqOeINrAfCs0Nh5n/etzkP4NlVyCu+StI/+yub
 USIIDKdw6t2sYmIKqt6SsiGrb2RMgRj57lG21Jd6GaMgtDlPcFS2CkI7n
 Wdf8GrAuDBtvtKjgiNy08bNwhSMCJmx4E9RKDJ+t68iR7F9ZdRQTlq6Pt
 qZdu00FGH//K/EhsaFhrnulMMPKk5HmaRhTuWz3j1uuAu6bDir605z2y+
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bI3kSCMD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 1/8] ice: respect netif
 readiness in AF_XDP ZC related ndo's
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, Shannon Nelson <shannon.nelson@amd.com>,
 magnus.karlsson@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 12 Jun 2024 11:09:10 +0200

> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Date: Tue, 11 Jun 2024 16:21:27 +0200

[...]

>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
>>>> index 2015f66b0cf9..1bd4b054dd80 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
>>>> @@ -1048,6 +1048,10 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
>>>>  
>>>>  	ice_clean_xdp_irq_zc(xdp_ring);
>>>>  
>>>> +	if (!netif_carrier_ok(xdp_ring->vsi->netdev) ||
>>>> +	    !netif_running(xdp_ring->vsi->netdev))

Oh BTW, I noticed some time ago that netif_running() is less precise
than checking for %IFF_UP.
For example, in this piece (main netdev ifup function)[0],
netif_running() will start returning true *before* driver's .ndo_open()
is called, but %IFF_UP will be set only after .ndo_open() is done (with
no issues).
That means, I'd check for %IFF_UP honestly (maybe even before checking
the carrier).

[0] https://elixir.bootlin.com/linux/v6.10-rc3/source/net/core/dev.c#L1466

Thanks,
Olek
