Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E847906A93
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 12:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEF074091C;
	Thu, 13 Jun 2024 10:59:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tK77DwWXlCNl; Thu, 13 Jun 2024 10:59:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4FB8408F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718276364;
	bh=CyVLPHX6juifFE5EU3sg1Hw+hOwuj/eNLtQq8HIilbU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6pqW9s9CjzHAv52SgfqpeSUWjfT/z5KjmfTdkV5xbtuDKU71pWaJ6BSziTnTsc9Lh
	 YxdnbfD4U7fATFJ3uY4/PGyUsbkZvoDJLUTqqlpep6oxVFrE4qXSJB4Z2mh2pYjauC
	 nv6fk1ObFwXm4nij9sgtVxBWmP2ATxrda9l+QWxpDNzvxagnzUfPXv9Di7bVlRcH2Y
	 Lv9hJyT5V3PfWVsuiKviWgN6b1Cn5lnVcnLP4WXeZ3VPcQCy6uB2V012Sk7dCh5/IB
	 G5Dk/0F2tyeTJj1GEEfXBnX6l8JWRY+XgFamLv0nN/wJQxCCv25LRvzB8nJ+Ayr7O0
	 byfDDjcjd1GaQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4FB8408F6;
	Thu, 13 Jun 2024 10:59:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42FEC1BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 10:59:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB556402CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 10:59:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SMjpkHT17flW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 10:59:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BCFE540148
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCFE540148
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCFE540148
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 10:59:20 +0000 (UTC)
X-CSE-ConnectionGUID: p7SyDyAhQj+50nmycI4b1w==
X-CSE-MsgGUID: 85UrD2hbSqebZJbAJ1F7fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="15241785"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="15241785"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 03:59:20 -0700
X-CSE-ConnectionGUID: Av8X2qg/TjeJxfBtnaC4Cg==
X-CSE-MsgGUID: WC/7iUcQR76Jn3YcxQTxkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="40171956"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 03:59:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 03:59:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 03:59:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 03:59:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 03:59:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jSb8uDl0vPlRdFZutk/iQTJ6nmYgeQPrfRL5Wvl1z6q0T0/mBzQCxDPqtTD8rgNxUgZg6Nm+R7v/nSKqx/oPN0l/nID+6ybc3XQWevdiLXUyH3XRv8m32zyvic6Q5wWOUGjvvFrc9w7X9lOpI0nDMZUIstNHyHIdOmib4ReZtboPtkKbwiRB/Km2XrueDob8aBg2lOszVty4Z0/ccFKcN13e30YNiC/iugf+mOeCf2RRBvAbvChM2WmKufmpJ2EZRCC2LVoKToWqtCi5vb0dnYM7ECR6epPsIVETzOSYO4uDfzQjwjAmAZngNjWmKSrhrMGZh95J7Hsx53FoekTQ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CyVLPHX6juifFE5EU3sg1Hw+hOwuj/eNLtQq8HIilbU=;
 b=FUczs9B/WorqpT3MeYblhDI4jLShDkfKHjXp+mLPgcdR4J2P92rW6FrLC1uZgcE1HsqScctkZHf3EAUnRx7xkceooZhXizMz4ENVh6tSOfq0qEo4SCIPlUW76kblWlLJfrGrwpfplI3HTMz25gvNEbh+eFyW1HQQ5ok0gzn6E9JmAkyRk/Mon7FNLZHSDfzsjIJD0RHClIZHvORAyjNrWl3VYDlBrpZ8yqISpD2SFhjc7+sZfGJr9fMda9izR+TtyEJUCGeZQ6Sxa/j68LeXD7P0ajWh6i8l2WKrXi7w2kMe8/SDuj/OlHVh7Wq/yu7+VkPGBOCn6s91nDZzWnEBzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB6547.namprd11.prod.outlook.com (2603:10b6:510:211::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Thu, 13 Jun
 2024 10:59:16 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Thu, 13 Jun 2024
 10:59:16 +0000
Message-ID: <bb1156fa-41eb-473b-bbdb-975765008d13@intel.com>
Date: Thu, 13 Jun 2024 12:58:48 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-12-aleksander.lobakin@intel.com>
 <20240529184012.5e999a93@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240529184012.5e999a93@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB9PR06CA0022.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::27) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB6547:EE_
X-MS-Office365-Filtering-Correlation-Id: 16b4cbeb-62dd-4f3f-3c0f-08dc8b97de00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|376008|366010|1800799018;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SWVWcDJoRndITDkyUVdnTmJnelBuQWtzbVVDbzZnRnFGS1loc1NiWDRycy9U?=
 =?utf-8?B?a0x4Q2ZCb25IS2tOd2k1V0VJTHZEaFpUQkJJbW5yYkhLT3g2cUZ5Z0U3RWw0?=
 =?utf-8?B?V1lrTUZlZkVxT2w4QWg0ZVllcklWcWRvQmlIOWN1SjFoZWxRTm9MZlFnQWNH?=
 =?utf-8?B?cFl4a3lxUThNalNISklZczhKVFNVQk8zbnpMZmFMREdVT1Y2NUpMbnJlMHRW?=
 =?utf-8?B?b0pOcmhvZWQwMVpQMzQyUUFaTWVETFZhRmovOWlJakdidVh3T3ZYenREOU1t?=
 =?utf-8?B?Qm5odTVIL2VmSkI1TXA5TVVMUHNGT21RZUwyYk9HTEkweWlLN2g1UkljR05Y?=
 =?utf-8?B?MVB2Tm5ydW1QV1ExMzNJamJ6QnBQRnJPZ1AycUE1N1AyaTVaQ3RDYjBraTVZ?=
 =?utf-8?B?RkpkLzB1TkV0YVpzdlEzNVpCV2VWT09DWnpIcDBXU0JGSW9yWFhCSUxKOW9z?=
 =?utf-8?B?MTNCQVYrLzhFTFg0eTl6TWJWbkJvZHRWaW5GQzdzSTNZSHdMRXUvVnZHK2Rx?=
 =?utf-8?B?L1JHVFNvK1RiY2FvbWo1d25LeUZuU0doaGhvSDcrT3ZReDZLK255d3Y2dlcz?=
 =?utf-8?B?NW45bjVXWFY0UTlrOWZiN3pOVXJGcTJmek9yS1JxYUlHNzIwbjUzQ0I0bFg0?=
 =?utf-8?B?R3NEMUpBSmlFK3A4OXZNNm1mS05zSVNQRGlwZGFJZ250OTVDUEh4TUhVMDhD?=
 =?utf-8?B?bGlYYW1Na1Bub3dWRDVxUFB0TVhFMjFZcG5sNU9JcVZBWFJ0eHdyWVhTYjBv?=
 =?utf-8?B?Tm9ZSGhSQnZUWGNIbG94dlcyc2xmS1BiYjFXY0hRNWhyT1hSdGpZSHVZTWFB?=
 =?utf-8?B?akVybXd2M295VjFlZmJ2emVRVXNnU2dad1lRT0toVmhhN2t1a240M3ZRZDFS?=
 =?utf-8?B?ck1SSlA5eFkxRERwZmdXdVU1NVBsdVhIeER2UVhJclZ2VVdwcTJVK3h5SmlQ?=
 =?utf-8?B?TllzaElqclluemgxRzllYjRVdTY3TFpycWVrclFicVV3eFVUUS9FR294eXpr?=
 =?utf-8?B?a1BhSkhDTi8rV3VIa2l0aXFLZlRmVVRBbkcwOFpxOVY0d3grVWFWNHpGYmFB?=
 =?utf-8?B?RlB2QWxGdDN2U0RIelN6QVRyUXUyUkVjTGRFTS83dUVHaGoyUDdYeVAzeHkw?=
 =?utf-8?B?Zzdla1RHRC9RTmJRSFc0dXRzWDl5ZElUcVVSYk40T2VBTEw5Uk11d2M4eVM0?=
 =?utf-8?B?UnhFWEhVRWhtNU5YUDU1MUl4S0J0YWZxZi9DS2JlZ0R2ell0UFQvVzV0dGRw?=
 =?utf-8?B?Ync0R2ZEWXVxeW1pK3Z2c1E4d1BXNnhJMlhORmM1QXdrQTdWUUlQMVB0ZFFl?=
 =?utf-8?B?ZTJrZUJydjhQWmZTbUlDV0RUY0NIYlY2UlRDbTdTRFk4bm1oR3pwZW5KTEpQ?=
 =?utf-8?B?ZldlVm1vMW4wVnQ4ZytvNlVjUFNOVTgrOGltVEFKREVxSzZiUktaVGZ4QWRG?=
 =?utf-8?B?cG44ZnZyQ0JKT0dNQm41WTdmVzZ0bGVpTTdMZi9KeDNhWS8vd1c2UkFoVGdt?=
 =?utf-8?B?cmErUkpwWmdsSldsZ2I4V1Y2c0hweWZEMGRVTjA1OWlYbHRZWllid2FvZGpm?=
 =?utf-8?B?Z1Z1Kyt2aUh1MXBXY1hSN29NSlAxallqMDFWRGJnTlowbHZSNi9PcjRzV0lh?=
 =?utf-8?B?TFNuSTNnekozYSs3WmRmY3o5MndOMUgwVlIxcjluMlRZYVd0eUxqUStnaUV4?=
 =?utf-8?B?eVpHYm50dGxvelNwNGVHeVlWNmFLWW9KWHJJT1N5UzAvSSt2QkJoeVpYdXNE?=
 =?utf-8?Q?6C0e/bvbrxo2UIX0nDP7whrds7ff86gZM8hJBYP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(376008)(366010)(1800799018); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anZjZXgwZlZXcnhzV1RIV2ZPd2NKaG5WS2xUTFA4RVBGNHJrWWE4aVNJYkNm?=
 =?utf-8?B?enIrV3JOcXZmbk1xZDRTL1A3eTJHYjRndmE5UGVGazk0T001cGNTeXdSOGxz?=
 =?utf-8?B?ck5DdVJJRVBLamtkWTZrMzR4QXBzcWkwMUtCNEtyTklmZkFoWDRTb3p3dWR1?=
 =?utf-8?B?MFR2MmZPQUxiN28vMUNJeFdaMElOREhvaU84SkhkL1krTXBzZytGVHJSbyty?=
 =?utf-8?B?TE5KUXRPVGxDRCt5bUM2bi83clJrRzJNd2RSVFBTS3d2QUdBaTNxY1U5M2Y2?=
 =?utf-8?B?aVpEbUNSR09HYUJCRElYZWpWcENZNXEzMldHcEhTbW9MWFJrSmxMOXk0OE5a?=
 =?utf-8?B?czFWNkNXTlowemc2dFJzc2FRMjk5ZW5wWlNUMmZNWkwrdWFYTm1kdlZRQ2xp?=
 =?utf-8?B?amQ4Q2R2N2RXZ2llcGpwN1UvMkhUWnplNSt3c0VTS2FaelVQNTM4alEvZ1B6?=
 =?utf-8?B?dWwwendJWDRGczNuRVljb1BIa1B1MEFndEZ4SHcvc3RHcGd1aDBVOUF3MzRi?=
 =?utf-8?B?QUFFV29Ha20vUXpDUzl2anZORW1XMklQRjArdjBlc1hOVVZjS0VvbDNSdEhs?=
 =?utf-8?B?aG1FT01tTk0yYjdQNXZ4N0tUVnMzdWJXRDRXZVgrc053eVJ5eEpFdUR3ZFgv?=
 =?utf-8?B?QmlrWng4ZUNBV05KN0dnZHNmN1ZDWm9CN1RoWlYwNnQ2akE5OEZTMHFsYW9K?=
 =?utf-8?B?cTZYVFRPbkRwSjJWTS9ydklSNnZVOVVyVll3UlJKSGszRW9ZRDdiZ2xQeEZL?=
 =?utf-8?B?ZjZjbW51dnFpRFlwaDh3Z1dtTUZ3N3J4KzFpelNXa1pZTU9FK1YrcC9nVXFu?=
 =?utf-8?B?UXZtcGhUSmg4eE9zcUVVMk85ZTNvK2lZdHhsd2Q2cFJWMjJnbXhtQXg0VFVl?=
 =?utf-8?B?cHVWVU9HODFPZEY4dmZLVnV1T3JrN1JrWU1aODJvWjJVZWxNbFA4UG1YZzdP?=
 =?utf-8?B?dXNyUHRXc3pJc0o5ZDZ6WHdibzJZYXdsdmNtKzdPa3BnVHJjUml3QXNyVkk3?=
 =?utf-8?B?eWx5RzBYK1R0ekxXeE8zL0lPbHVXamJacTJrdXpUNkc4Um9IdG5DTFBSYk9l?=
 =?utf-8?B?M21OZ3E4VzBtaFBOZWNyYUx2c3RBYnlJaHhiZEZJOGtRamFsczNrOUV1ZEh1?=
 =?utf-8?B?Wklnb2RBV3ZrbUpFUU9XS2UwekVheHlCNWI4ZjNYUG5kbkJwNWpkZ2VXb1dp?=
 =?utf-8?B?ZE1FUUppODZZelJoQjg3aEZ1azhxem9zSk9lSXZxUkp1Sm9xTW5vaEdrMmdC?=
 =?utf-8?B?bWM0dWJNaWVVM1MxRFE4NWtRbW9IU1Q1U0U2TS9HOElBZ2V3bmcrTDhoaXF0?=
 =?utf-8?B?bG53QWI1bXpFTjZzM3o2d1RGcFM5VFozemp1NktOV3ZCNW12SFRKMVJDRVlq?=
 =?utf-8?B?a1dYOWZ3ajc2azlDZzBvbVo0Vjl0RUgxZTRXdnNmcFhqU041ZTBIZ0hFTUxx?=
 =?utf-8?B?aGJ3Vk04M0lwQmJjTXNCbkVtd3hlVS9QNm0rdW5EbkdxYmg1LzR5MGx0eDRn?=
 =?utf-8?B?OUQyYTNkZjJqWEdZaVRYTWZsSkVCRk9YREN4WjNlbXZaeG9DbTVPOTRuUU1V?=
 =?utf-8?B?ZXBweFlVZW43TVBpMkNYN0g0MkJZK3hoR29obkYyVktSTDQ1cGJwZ1cvK0d4?=
 =?utf-8?B?ZlRwM3grRWl4MHRDUlNKa1lOeHkwM20yZEg2cEJLWlFIUUZjRjdodkI1MjFY?=
 =?utf-8?B?YzRueUliSm5leFRxVXl6dXQyNjFzaUtRQ1pnTmZQdjI5ZDlxYy9WMVRacEF5?=
 =?utf-8?B?UXJ4cmo4S2t4SWxjSDdvWmZtcXFMcy9iSS9BZk9mbWUvei9UcmxFTG5JVjY4?=
 =?utf-8?B?NU11QUhBaDB2UHJFSTJHaDNaU0gvR3hiVXR6UjU5VjMwRDhHd1FKUEhiV3hr?=
 =?utf-8?B?M3FGSDcrVkFmSVVpci9Jak5Tdi9Zb1htdDJmakFqeHJmbE9KMFlvZHZpTHZj?=
 =?utf-8?B?WFBoOSsxQkNxYUhFb1ovYmFwa09MczNBc2xmazMyT1psdlBlYzNhWVMwKzhl?=
 =?utf-8?B?UG9KektVTWw2V2kyc2M4UnlrVmFkTXpFT0VOUWxLbkRQREQxbnZQTHJtcFlR?=
 =?utf-8?B?TnVVeVF1VWpxL3FsRnFMVGZDcFlydHpWdW81UTF1NGduY0cxNmtVUWdDQTdU?=
 =?utf-8?B?ajJPWU1FaVhSRkIyLzNlNXlmZmRLTXBMVmtxcXhGYnpPaEx6T2Z6SXFSb2lk?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16b4cbeb-62dd-4f3f-3c0f-08dc8b97de00
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 10:59:16.1677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9UnZpCU+Um9tdpcPl9C36PcjKxyc1WJvtvAFqxmvPUUJqrri8HEsaAUamOUX1QKqDYsIZr6m5qkvj10XjQjRNKfneG7VTT/uQx+zTfYUQjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6547
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718276361; x=1749812361;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KmHxBUvOnAmAwelX44pOSpW45oxaFcXUNAkOr70Fhns=;
 b=htHCIpCy20uIbOzPqEaBuA5lseO7D/HR4+rzK5mcFX3ca1dQEvasNSOF
 Vw3oXX/5AHy8yZs0SJVZ1KGv+t1xe3DIUKGa8jAqCJ5DbC8CnHB8PSzUH
 Jt2dlgn4JjBGc9tN04BNqr7ZFTLh762VmMRO+4/dJel6dtlOAT5YUCvVg
 h4DGmrZxhApTJWEpMUr8CRZVM2lqSng3j7LrvgzzcAK7Ltb3jk7pLU8Bx
 28bBI4CmG1Rxiqw+3NWn2S5ICt1uhNut17m0WI4hagEZ7tPnXUGrzarOz
 UIHwYly6qExg4QIVGiAXxui0VX/939Dw8rC9IukcM/nx+0zm3ayF0N368
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=htHCIpCy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 11/12] idpf: convert header
 split mode to libeth + napi_build_skb()
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 29 May 2024 18:40:12 -0700

> On Tue, 28 May 2024 15:48:45 +0200 Alexander Lobakin wrote:
>> Currently, idpf uses the following model for the header buffers:
>>
>> * buffers are allocated via dma_alloc_coherent();
>> * when receiving, napi_alloc_skb() is called and then the header is
>>   copied to the newly allocated linear part.
>>
>> This is far from optimal as DMA coherent zone is slow on many systems
>> and memcpy() neutralizes the idea and benefits of the header split. Not
>> speaking of that XDP can't be run on DMA coherent buffers, but at the
>> same time the idea of allocating an skb to run XDP program is ill.
>> Instead, use libeth to create page_pools for the header buffers, allocate
>> them dynamically and then build an skb via napi_build_skb() around them
>> with no memory copy. With one exception...
>> When you enable header split, you except you'll always have a separate
> 
>                                     accept

"expect" :D Thanks for spotting, nice catch.

> 
>> header buffer, so that you could reserve headroom and tailroom only
>> there and then use full buffers for the data. For example, this is how
>> TCP zerocopy works -- you have to have the payload aligned to PAGE_SIZE.
>> The current hardware running idpf does *not* guarantee that you'll
>> always have headers placed separately. For example, on my setup, even
>> ICMP packets are written as one piece to the data buffers. You can't
>> build a valid skb around a data buffer in this case.
>> To not complicate things and not lose TCP zerocopy etc., when such thing
>> happens, use the empty header buffer and pull either full frame (if it's
>> short) or the Ethernet header there and build an skb around it. GRO
>> layer will pull more from the data buffer later. This W/A will hopefully
>> be removed one day.
> 
> Hopefully soon, cause it will prevent you from mapping data buffers to
> user space or using DMABUF memory :(

Correct. The HW team is informed and some work on it is happening right
now. I told them that stuff like devmem etc., i.e. when the kernel
doesn't have access to the data buffers, will just choke on this.

I mean, I don't care about unknown packet types since it's very unlikely
and it's almost always some garbage, as well as when the header doesn't
fit into 256 bytes (I can't imagine such situation with known protocols,
but if it can happen, I can bump to 512 or so), but currently, and it's
a shame, idpf does header split only for TCP/UDP/SCTP, on my setup it
didn't want to split even regular ICMP, although it parsed the type
correctly =\ I dunno why they did it this way.
There are some configuration bits which in theory allow you to enable
hsplit for other types of frames, but enabling them didn't change
anything unfortunately.

Thanks,
Olek
