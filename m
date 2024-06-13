Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52075906AB7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 13:06:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACC6040958;
	Thu, 13 Jun 2024 11:06:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x5pTbADHUu2e; Thu, 13 Jun 2024 11:06:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30CD440952
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718276794;
	bh=k78aAs6CoRm1fXzSHH0d56d/EV0siz6FGT9vt46nhhU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1AwAcYy6cs5vozjax7P6Ic+TZ9RYPyI2pZ5a4f1RlkNrybFHJgykSXVlMM77cAYQs
	 KJWDK4PRMru9UmjS7SdKEjSyKVxv/5R7aghmpCRmt2AuvgYRljRROJxz+NSersGauH
	 25Ga/UxN4V6dBR0twf2OJCFVeHV9NLwBVtvUJyOGGFJNH41kaUCsNRDOQj0gm18W5o
	 PCzmq7HLsSbLcOVrekypUkU/uuuxvJY6Dqwi9JZ2Nia4V9oIgc80tzKKBUmR+Imkj8
	 LnhELyEu9pdLm6Lzlpb4Grtg3yzFVeNFZk8vgduLxVqjlrxmonAdQCQ/4xMCZX2Uql
	 4kFUoon4BmmLA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30CD440952;
	Thu, 13 Jun 2024 11:06:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4DD41BF34F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 11:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0F1A402CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 11:06:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2J7ZsBQReYeN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 11:06:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 663F340148
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 663F340148
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 663F340148
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 11:06:30 +0000 (UTC)
X-CSE-ConnectionGUID: xw3TXG9nRrG1j1SFMorB5g==
X-CSE-MsgGUID: EucL0B7IQ5WFSZ/3LDcW9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14926293"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14926293"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 04:06:30 -0700
X-CSE-ConnectionGUID: 8VYmvPf5R96NyvoPUPH7Wg==
X-CSE-MsgGUID: eeJq11G8QMSFUdcxPQBFlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="40809914"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 04:06:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 04:06:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 04:06:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 04:06:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oVNIWQx/+6aGjPJw2dYeTOHma7FaToP9BRiZE4cJDtV954tlNiQwXimOqPZCYXQGG1I5msR8NuyKaf5i/do3HVk+miH8+n2gA97fts5Ya/E5E9H8ss+lPRHWc+VuI1s7k2B3rxEbZireKPXIYEUCgFjtJ14+7s9uJYOoDS/3B+Gw8jwazun2fGegxkmgstjbPWsDDZ9mFAJEz/xFJpT4Z3uRCC+baEBEfTb93IsEXH0AmQadGCU1FPgMNNtvlALlFZvomYtBTx7ZaaRCMsSHHhhrm7aB4ivPOLsiAYXSVJ4/CBXaAlOCpyecCadVr+qvpDnFQnllzYVLK0tz+5kLMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k78aAs6CoRm1fXzSHH0d56d/EV0siz6FGT9vt46nhhU=;
 b=Y/Jeg5RHjn3iZhk3/4NFGg7buwhjW8B9HK8NHiqwkLWQWHqyLH+qrGfq9ulkQYZt6JuILflcy1bgdKo2J6RSQ6BQwQON9/f3RpkKO9Ch2FdzhlowfLDXWBa2KOS3t3QFhB3ODRBOM6NeTInSzltNsfmZvljNiZRyDTEoLpXZYZ4XEny8ikU84ep90ERCkiL8y5qjah6DwMFccGglASqwAF5x/hmaibhYZmfZ9igKpPxhUsudX7sFx60QSj6c3B8yxE8mYDj8UoOnyxRShKhihmGGmhgONL2YObDYy+BHEeCUSMznbet555cv9hBjaG1pjdlSekAmbMWMvaM6x+wx5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH8PR11MB6997.namprd11.prod.outlook.com (2603:10b6:510:223::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Thu, 13 Jun
 2024 11:06:26 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Thu, 13 Jun 2024
 11:06:25 +0000
Message-ID: <2c22ba85-2338-4f16-b3c2-70c4270cd96b@intel.com>
Date: Thu, 13 Jun 2024 13:05:58 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-13-aleksander.lobakin@intel.com>
 <20240601090842.GZ491852@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240601090842.GZ491852@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0288.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::21) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH8PR11MB6997:EE_
X-MS-Office365-Filtering-Correlation-Id: bd2deb8b-d288-46e6-1b25-08dc8b98de16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|376008|1800799018|366010|7416008;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dGFHU1dWQlB6cE1yaU9tTmNKcXZzR2RiV0FHK25PTHZOdnBWMEFqcDR5Um5u?=
 =?utf-8?B?K1VsWmgvRWUwNnpFM1g1cXR6VEJXUFR4eUxmNnVGZHFzYVpRaDFyT2pRUjlr?=
 =?utf-8?B?eWE3SWw5d244YzJDN0l5WHMxNWhHaFJyVEovQXdIcG5HaVM1bUFiZDBWamRJ?=
 =?utf-8?B?Vm1NVG0rQnVnMFV6MmZyYjFxZ3NxakVBTWRiclNJM1NCY3JocnIzeXNSZWZt?=
 =?utf-8?B?QUJkYTBzOTNYS0dKdE1IYmw0UEVjb3RoYWlxYmQ2RExFZTFnQ1p0ckZpL2Zm?=
 =?utf-8?B?MU5NbUJldGVDNE44WHJOQ09WZU9BMS9CbU1Manp1Tms0VkxnSlJScDM3ZmFI?=
 =?utf-8?B?Z1RzSzZtamlwZDQ5eTlXRzZMYnR5bWJjOUhNY3VKQnlMQzUyY3p2SEt4dmZh?=
 =?utf-8?B?OHYrNU5GSGE5K2ZkeE83M3R2blRlNzFDaXQvODBSeGVkdTdJMGtaREFveG5t?=
 =?utf-8?B?WFV4cUZuZ1hZWnQ3NEUxNE0zcWRUV1dJWnJTdFd4Z2RUc2lvWkxVQzQ2SE9G?=
 =?utf-8?B?b3paQUdQQllFRjF6MVFkdUZLUitlU09ZVXRyUEFTdi9wWXFrNVpEb09Xdjdm?=
 =?utf-8?B?anp0d3RQcFdNaGJab2tlZHJVUTZSUXpCam5aUU5kTlowMzAwTVpYNEhDOWxK?=
 =?utf-8?B?ckJTUEFJMWZIREdKNjdJbnBOZUpRSFhwaThEay94VG00U0dXb3hUN0N2cFdn?=
 =?utf-8?B?S0ZMdW4yS1FwQXE1MGswQU5rSHA1cWQvRHM5bVYzYlRxWmRLQklZRE40Y2JC?=
 =?utf-8?B?NWhqV3ZQRW5hbEs0TGw2cUtiOHVrL3NHWlB0WXBwQ0RXWU4rbDZ3Y2cvSDNa?=
 =?utf-8?B?WVo0Q3pHdTBqL0RKZDNOSGpBR1h5Z1ZUUmNydklHNU0wUGxmQU0wTzZIWnE4?=
 =?utf-8?B?MUx1ZTVONTRlaWlNZ0RmRDdJUUs3eUJPVmlScTJqZm00Q0FtZlkyNWI5MWNa?=
 =?utf-8?B?eG5QRkVEeEpDcTJWMm5leTRBeExqUituWFRPVUdXajhPallka0h4Q25OV1p3?=
 =?utf-8?B?dGxwUGM4RWhjNi9jZ0dTVDBKZHRnbzFVQVA5TElDT20rZUt6ZmkrUFlDMXRY?=
 =?utf-8?B?L0Urd1QyVjZTWnphZlhVMzJBUE1MYWlyeEdKOURNc0xmWVFJbjBGNkhYcytw?=
 =?utf-8?B?RWc1cEhwUGpObTdZWnNteWpyY1V3MWJhVEs4TUlBSjdNcUhWOFBJZVk5aWJz?=
 =?utf-8?B?YlpvU0c3UW5HajFSOTBvYW1wcGZ4VVBXOWpWS0pUUEpkUmszWTh0WEtWVWFy?=
 =?utf-8?B?eXNpWnZWem1zSjBPZlVvL1lKbUM2MkYzTnBCZFJiM3pwYzNsUjdsYU5lNmVo?=
 =?utf-8?B?RzY2eFMzeEhrSzFFOXRpMyt2Yk9UcU5aU3RmRG9pWnp0QnRnbitGU1B6NitW?=
 =?utf-8?B?LzYzaHd5YzZNWk5KWDFud1Z1YWtiSGtmYmdLUzZjOGhkSzQ3dG9LODVUdS9u?=
 =?utf-8?B?bnVtbG5BWWZiUzNWL1RWYndTSjIrcDcwcER4VmcvelVERUZLMlZBYTlRbEdo?=
 =?utf-8?B?Q2Fwd2ZCeVZlbGNIajZvRENqbXE1d2M5Rm5pNHlWV0xRcS9LcThQTVFpUklY?=
 =?utf-8?B?M3dtVktFRHYyTXBEWFMzMU8zRHFZRjVpcFduVXlwbW0yQzJNZTQ3djdUWnFD?=
 =?utf-8?B?QXVkSmMzT05oNVZhT3RkbTlLeE1STVJLQU5QNGVMMHhNRGpqckpjTmtZbU5k?=
 =?utf-8?B?MXlpYXhuS1ZhSHBZVW1TaTBBME1wK1lwU3dhcWRLNGU2WFAyb1p5UlhvSSth?=
 =?utf-8?Q?K8Bsi6Ubg/vMdAM2V8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(376008)(1800799018)(366010)(7416008); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Yjl6WWRqdnVMSWxuMUlLS3RMNXNtUHdCM2ZZUjNzTHROb3c2cDBIenpCVHlF?=
 =?utf-8?B?ZE9VNzhCUVBoOEtlWnUxaGhobW1UQjREUktNWU8rN3l4L0hEcGJseGQzVXhW?=
 =?utf-8?B?eGhSMnVYNXRHZmhLbElsd21zdjM5MEZIVjgzem1NbXI3cDBPSGluaTQrR25z?=
 =?utf-8?B?eUo3Wkp6dVY3dFNOMHl0SW1KVGVjWlB0VURVZWlOQUhZTUtXRDZQSFpKZHgr?=
 =?utf-8?B?UVJtT0ZIcUlqRmZMMXRNOXREakozaVlubnFzZXpOM2lENUt3eWdNUEhIR2hB?=
 =?utf-8?B?N1M5VFBEcUtHVGN4dExhN1JKNTJmMFZRNHZTbWVBMXVid2NpRFFqc0sydklX?=
 =?utf-8?B?ZFkyb2dJU0psTUs5ZFMxd01SM2UxOElWY2IvZ3pvWU54bk52dnhKcGxyYmQ5?=
 =?utf-8?B?Z25GQ0lLaTJjVWRkdnkyR3RGblVhZzlVUi9Db2RXeWV0Z2VUb0Fja29kU09s?=
 =?utf-8?B?UTJoM1d4WGlJcHNHMUlTWnFYL1dlbHdsU3MvZGw2elcrVERyRWRrUFo5Y0Nn?=
 =?utf-8?B?T3dXUjk0RlkvT2xWUGpxTEkwOTg4c0xmNERXdmppaWMvSGlaY1J1bDJ6OWRB?=
 =?utf-8?B?akxTL3Jma0VZZEhQalNDQ2Y5SHZNRTBUTGVHSzBBN203V0RzalJneUdOdW5J?=
 =?utf-8?B?NmtGemEzbU5BRmlVTnduY0srUUluZlNVbnFyN3p4aGNzVnk3K2xaQ0YvQXNi?=
 =?utf-8?B?cmF5a2hHaHY2QXk4WWVmVC9kcVJmQU1pelB1Y04vNG1tNnI2L2JwU0ROeFNE?=
 =?utf-8?B?YUtibFJCdlRSdURkazRQSnp1SzM1WHkrMUJ5Wll4WWd0dGxjd01FdURyMTdU?=
 =?utf-8?B?aDBZYkh6QjlQYVU0YkgwOXNBaXhCRDJhYURsTXNRWUxMQ1k5UHFIMHdybGJp?=
 =?utf-8?B?Q1NzRHFjcXI2NzZSQ29xMk8vWjFmUkx5Q0FXRm1aNXJWUytXc2kxeG5DK1Zs?=
 =?utf-8?B?OHE1UFIvdXJzcXlJdlhSUjF5L2xOd0h1WTlDelBUdU9oSEE0MzFEanZSMFp5?=
 =?utf-8?B?OXhvWnRHd1hKYURCRTFib2hGYkU5UE1VTm9lRjc3RXQrK3BpVm81dHgvVjBV?=
 =?utf-8?B?THVEZHZ4SGEzWEZBeHd1ZlF5QzZJbzFnWS9yM2xmNm11cmJYRnFjOVlJQ2p1?=
 =?utf-8?B?NWtJOThuUVZlV3VKaU50K21rUDJ2S2wwK040ZWNtVWI3SDRnc05SMHM4QTlh?=
 =?utf-8?B?UTlDUGRkdm56a0lBcGkvSGtWOFJmY3hiMkI4aTVMWlhWc2VOc0hxS3pGN0gz?=
 =?utf-8?B?aDZsWEtzNUJBMTdZTGVHb0diVXlOc0hGaTdMUGhNa1poUGhkY1VzSEN1b2tl?=
 =?utf-8?B?a3NOMnd2MDlnUFJUVlpBY2RUa0dFY0hTOGJ4bDZXa0diSjdSbWNJbUd0T3Y4?=
 =?utf-8?B?Q25PRm8zTjdBa2FVcWJaV1AxQU1Zckg4VlgwSm92Qm9obGU5T2l1alJLeDFI?=
 =?utf-8?B?SW5ZZmFvY2FZcWtqUXZQRU1kYXVsTWlXK0xuNVNETW1QSmd4RjRKWEQwZ2h5?=
 =?utf-8?B?Q2s2ZnpETnhyUEd5bXNjendjeGRGTDQ2eGdzOTJQSEl3NzhyejFkZzJSODJD?=
 =?utf-8?B?NGtGanNRTldLK3B4T09MVkJKdWN4ckcwU1BObll0Tkc0T3V3empUd3pUcjRS?=
 =?utf-8?B?Mm00OWVsb1lyNDdEYjNXRk84YWtzZjR0RWJPeDFybk9tak00ajNwTnI0Zkpx?=
 =?utf-8?B?ZWExZFRBd2RHS2xYRXVjanA0NkgzS1VXQitWd2FrajBzRkFoS2Evdk1rTnB4?=
 =?utf-8?B?dUhCQWpqY25PbnhGOGtLdXR2UndMdXpuZStDM05Ya2hFWWNFb3FTRTY0T2hF?=
 =?utf-8?B?alV2MElKM094OENLTllNdkJYb3Vvc01SSkpaZlhzZjhETndmV3oyMkFIM2Ra?=
 =?utf-8?B?U3QzZ1NFN3Rtb1VnRVNnUk4zMzRyM0dFQ3Y1OUFRZDc5SDVhZGlabjQ3RUk5?=
 =?utf-8?B?UHBXOGdiSXBlMHN5bnNrNFhWeDhManIzQ2dIRDBCN3dvT3d3SnBMelNtbVpP?=
 =?utf-8?B?TG9Mc3ZUbUV3MkF0Ym9Ed3BiWGQrQnVuL1Z1M25YbmNUSFRLdHpCNGpodnF0?=
 =?utf-8?B?aFZJMmJXU1lsYmMxdjJuUDBQN05jN2Y4VWpDUG1QY0poQUV2S2FmbkVTWVZD?=
 =?utf-8?B?SlVFM2ZuUXJlTnJGcmZyYmVIZktkek85dmoxNXNJZ2R4Z0MzcjFLdFFQZ2Z4?=
 =?utf-8?Q?T3CjP0shGQCPIuNoFgR1SEA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd2deb8b-d288-46e6-1b25-08dc8b98de16
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 11:06:25.7886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9fHf7B4XplKKrp8CurovZ7HNN4w/3QJAT66EMvri4aYfMOsX26rGXeTV6Aq9k3gc2nlsMQYu4IK3oE4J3XHp23tO+Z15oYdXk/YRPGyVSOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6997
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718276791; x=1749812791;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tcOgmfQdQ7ySzXz37xq4UWbkM7lydpC8mGXYlI/y91c=;
 b=cUT9CufwvbfH9rTcxBvYvRZxz1KcVxGMJPgGlW83Pwm4UKiYKtQjJiTd
 F6xrQ/Exa8r1/CKcbOsQcyNBUhwrLf1X/zmT433Pl1xSGOSHGxJqvGFIM
 MSjlixSM+MlUtk82JYqccm/0x84+8P3kpzJ2jByVE/pKCwPr+n7bi+lei
 o1OY+QPUIrW7Lox0RLvJCxcZK+0PnRDZRbM50UdYnH2RVKUkXK6BSMAy7
 h9zH0I0L9xlm+j8jN+i30vmm/4yI5OF5lwq3YiXQBDy/9kDmLbWiS8BP3
 93PtY9/S+SV6BykKWb7tn8xjC1kmESR897J7lANpBviHw4UWWx0XweG+C
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cUT9Cufw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 12/12] idpf: use libeth Rx
 buffer management for payload buffer
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
Cc: Mina Almasry <almasrymina@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Simon Horman <horms@kernel.org>
Date: Sat, 1 Jun 2024 10:08:42 +0100

> + Dan Carpenter
> 
> On Tue, May 28, 2024 at 03:48:46PM +0200, Alexander Lobakin wrote:
>> idpf uses Page Pool for data buffers with hardcoded buffer lengths of
>> 4k for "classic" buffers and 2k for "short" ones. This is not flexible
>> and does not ensure optimal memory usage. Why would you need 4k buffers
>> when the MTU is 1500?
>> Use libeth for the data buffers and don't hardcode any buffer sizes. Let
>> them be calculated from the MTU for "classics" and then divide the
>> truesize by 2 for "short" ones. The memory usage is now greatly reduced
>> and 2 buffer queues starts make sense: on frames <= 1024, you'll recycle
>> (and resync) a page only after 4 HW writes rather than two.
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> 
> ...
> 
> Hi Alexander,
> 
> The code above the hunk below, starting at line 3321, is:
> 
> 		if (unlikely(!hdr_len && !skb)) {
> 			hdr_len = idpf_rx_hsplit_wa(hdr, rx_buf, pkt_len);
> 			pkt_len -= hdr_len;
> 			u64_stats_update_begin(&rxq->stats_sync);
> 			u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
> 			u64_stats_update_end(&rxq->stats_sync);
> 		}
> 		if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
> 			skb = idpf_rx_build_skb(hdr, hdr_len);
> 			if (!skb)
> 				break;
> 			u64_stats_update_begin(&rxq->stats_sync);
> 			u64_stats_inc(&rxq->q_stats.hsplit_pkts);
> 			u64_stats_update_end(&rxq->stats_sync);
> 		}
> 
>> @@ -3413,24 +3340,24 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
>>  		hdr->page = NULL;
>>  
>>  payload:
>> -		if (pkt_len) {
>> -			idpf_rx_sync_for_cpu(rx_buf, pkt_len);
>> -			if (skb)
>> -				idpf_rx_add_frag(rx_buf, skb, pkt_len);
>> -			else
>> -				skb = idpf_rx_construct_skb(rxq, rx_buf,
>> -							    pkt_len);
>> -		} else {
>> -			idpf_rx_put_page(rx_buf);
>> -		}
>> +		if (!libeth_rx_sync_for_cpu(rx_buf, pkt_len))
>> +			goto skip_data;
>> +
>> +		if (skb)
>> +			idpf_rx_add_frag(rx_buf, skb, pkt_len);
>> +		else
>> +			skb = idpf_rx_build_skb(rx_buf, pkt_len);
>>  
>>  		/* exit if we failed to retrieve a buffer */
>>  		if (!skb)
>>  			break;
>>  
>> -		idpf_rx_post_buf_refill(refillq, buf_id);
>> +skip_data:
>> +		rx_buf->page = NULL;
>>  
>> +		idpf_rx_post_buf_refill(refillq, buf_id);
>>  		IDPF_RX_BUMP_NTC(rxq, ntc);
>> +
>>  		/* skip if it is non EOP desc */
>>  		if (!idpf_rx_splitq_is_eop(rx_desc))
>>  			continue;
> 
> The code following this hunk, ending at line 3372, looks like this:
> 
> 		/* pad skb if needed (to make valid ethernet frame) */
> 		if (eth_skb_pad(skb)) {
> 			skb = NULL;
> 			continue;
> 		}
> 		/* probably a little skewed due to removing CRC */
> 		total_rx_bytes += skb->len;
> 
> Smatch warns that:
> .../idpf_txrx.c:3372 idpf_rx_splitq_clean() error: we previously assumed 'skb' could be null (see line 3321)
> 
> I think, but am not sure, this is because it thinks skb might
> be NULL at the point where "goto skip_data;" is now called above.
> 
> Could you look into this?

This is actually a good catch. skb indeed could be NULL and we needed to
check that in the same condition where !eop is checked.
Fixed already in my tree, so it will be fixed in v2. Thanks for catching!

(BTW I fixed that in iavf when submitting the libeth series, but forgot
 to fix that here lol >_<)
(Also, it was implicitly fixed in the later commits where I convert skb
 to xdp_buff here, so I didn't catch this one)

Thanks,
Olek
