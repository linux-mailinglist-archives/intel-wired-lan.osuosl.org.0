Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1959DB577E3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 13:17:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9ED906179C;
	Mon, 15 Sep 2025 11:17:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b_PAMLfuiRCv; Mon, 15 Sep 2025 11:17:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBF9E6E336
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757935060;
	bh=H9t0h79iA5VjAXfGVNC8cTv7smlXGSFdn9BTxW3Cb80=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3SbUFNAeW+n17gfwPyw0fVHwXnG+6T3VHWktsrr44tOehcwQGxgy28o+fTHObymLM
	 C2LaE4c1SFzphSBjGe3VWdWqTUJsQgRvLcQcQmWJG06ljjT7fQVQVHDKq7HR6pJMuF
	 8khmZxjtyrPp78OWuff+N28YgenuTM33N7PmC1LzYhYqJKCwBJdsTKw4bp33N/3eir
	 iy7u6g3rgm1hU1vmmI53pE6tS9nh12Z3gFrIoBf79GUMwjE97wZm8MJdpVeIVhZKUo
	 FOWlNNh0D0eieP3/Nn2D7VODtSULC7hzqVUBwaFMnPdX7zGcPsXJvXSfA82YijKeE1
	 76GuObCs+/dlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBF9E6E336;
	Mon, 15 Sep 2025 11:17:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 862521F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 11:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5967540F9E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 11:17:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Yqxrwg1xGAB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 11:17:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 835C8405A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 835C8405A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 835C8405A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 11:17:36 +0000 (UTC)
X-CSE-ConnectionGUID: v+M+4GzBT3izQ2MYkncoEg==
X-CSE-MsgGUID: eizI29kwTsiTchTZAemCqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11553"; a="59881292"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="59881292"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 04:17:36 -0700
X-CSE-ConnectionGUID: 3pT//upqQZaYpnyEI26jKA==
X-CSE-MsgGUID: slioRwVbTfanRgV8Rbwtqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="174150950"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 04:17:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 04:17:35 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 04:17:35 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 04:17:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bj8ux9RiPVTU7YhaGZE2bPK6qverh5Ytww6ikWrekNB0OLDpUq4vArGVT3LutB+bCb/klGFPkAFYtbmKWKPjpYjw17ifCB2mnxg8F9jfPMBIKYIBAlBZVPaIVVI3An6nSc3l0Y0llwmwIipzBTMBTqA84mYxu5neW148sVMceriiL8/dgiKsjqk/DqFHdUKfPmBsiWDKpSNTBrfou74qmnJkNqWaYe1J4UmZTAseG1wkYV9LehDXOqmXxpm8yKybCqRdUjzaZ69VTOw0xtKXofLCBKEeYdC4tLjzy1xVOEB4msYBXyvsA2PkeW2xK2vp9RdoqIGyk80kPoqirD/Ntg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H9t0h79iA5VjAXfGVNC8cTv7smlXGSFdn9BTxW3Cb80=;
 b=jNt4pfxHPSs8oGqmGW077x/PkgDa1zLgKo+e8tB4j2gfDxmdc5gtA5rNHgl67uSq1/xiuAvfwBqSQy54yXHPamuGvbnsuNeQUxWJfUxWdQJ2z2lkD89nEd7YlaAeFIPNk++/OYTE6BqOtAGIonfELq/loUDzGL31mLExTjZ6yUrfMeM41fH5hdBMDvqOt/mnA5XZ92ZmPlJDJDB46F7Gx24u1uN4z8DG9eZaY8GyrA0yR0CzZ+NKW4/5AfNtcPVgs4hwk7cIRajZZ3S/v84QuxMsZ36GM6g+fRJ76O8rH8nDuWqCcqzhaYA2hodYn2eamRDia9QKD4jg5SS8T11Dvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW3PR11MB4697.namprd11.prod.outlook.com (2603:10b6:303:2c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Mon, 15 Sep
 2025 11:17:31 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 11:17:31 +0000
Message-ID: <e489a453-62c6-46bf-967b-418de7071c7e@intel.com>
Date: Mon, 15 Sep 2025 13:17:27 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <netdev@vger.kernel.org>
References: <20250912080208.1048019-1-aleksandr.loktionov@intel.com>
 <8c3d7bc5-7269-4c8c-922d-7d6013ac51cb@molgen.mpg.de>
 <679b3ad8-91fd-4570-9e63-c6c5e22a8820@intel.com>
 <015b02e3-a9b7-4f4f-99da-fdf9bd1f8202@molgen.mpg.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <015b02e3-a9b7-4f4f-99da-fdf9bd1f8202@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0236.eurprd04.prod.outlook.com
 (2603:10a6:10:2b1::31) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW3PR11MB4697:EE_
X-MS-Office365-Filtering-Correlation-Id: 31c782f1-7a1a-4846-86e9-08ddf449768f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dGIrSkUyNGQ3OWRPRDFGNFBUOUozT01uNWVPLzRrZDM5SzdrSGUxWWtxdWMy?=
 =?utf-8?B?NUlacHdRZUZtZ3hkZjJVak1oNUxkSWJTcXhNd3VPS3RqVVlId1NxZkV5UjNl?=
 =?utf-8?B?RWZQb0lTOU5rVzRoei9nRERCRWdqaG5tL3lCZW1XWTVwQk5oYldwd1hVNlcw?=
 =?utf-8?B?d0ZFdzhJWElLRVBRNVNzTE0xZnpBL1F0NGtySmM5allwVXFOcUQxN3BXcXN0?=
 =?utf-8?B?TFBscWt5cHhwUFRLVVErVEFnYTBlc3d0a2tqd01OTGNkTWhkRXgwTUkxME1X?=
 =?utf-8?B?em5SWithRzJaTGJsL1Z0Y2N2ck9tbTVpUVlZWCttYTZFMGNIaktsajB6Yk5m?=
 =?utf-8?B?YitUYzVpa2tLUXEyeXVLaHRVRUJwT3MrdHZyQjZ1SjNXcVVUSFZ1cUMvZHZh?=
 =?utf-8?B?Sm1pcHpZd2FUbXZ6WXR5ZTh1MU8vd3N2d09seTlySGxXY0MwOEhicnJ2T0lL?=
 =?utf-8?B?bzJueWhpSHhQZDcvRTBrT0FMdVF2UzFmNEFLSHhBYkRVU2hOSGRsM0lISG1K?=
 =?utf-8?B?UUY0cXBzdHRKa1B3cWd4TmdVT0dlL3UvNU9BanZpeDUrd0hCR2hrSUloRXpn?=
 =?utf-8?B?MTUwYzFtaUJtUnJrOHZWeHFCWm9CL29oblJ3NlFMd0lGOTdUTExzandHQmQv?=
 =?utf-8?B?MUlrRUdUYm5lN3NqUEtzVE5aWWpaLzJkd1k2cmFOWi9XZklxcC9NeS9GTXFJ?=
 =?utf-8?B?SEhlSnRRYTdsdzNFSnI0akVVYUs0dk1mNDZDeFZURmc0VTQwKytTU2hzeVVw?=
 =?utf-8?B?K2NQdXN1bHM4MG5EcVU0d0RxbTVLV1UxbUhuQ1pFbnc5ZHdrWElYOVRZOHZE?=
 =?utf-8?B?WUkzVWM3UE5VQ0FadEhCSHh0b2JhVUd3SHlNYXFROHNuSEluZGxqQWpQa1VH?=
 =?utf-8?B?VHlESTA3UnkyTFBjYnJSRnpQdTZnOWJhZEZCK010dnIzVkFGWFBHMVlqQzVz?=
 =?utf-8?B?aG1nWGpKdWtIY2VkakE2c1AvMjA4MlMvSWVnRWp2Z3JNYmMrMHh5WXEzNitI?=
 =?utf-8?B?MUh6dHFZWk9CRVJBWTM3ZS85b0Z3ZGEzd3dGbnl2Z2hlRm9JWDFEVTNialRB?=
 =?utf-8?B?bW1zNWVyV3J4Mm8wazBaZkNJbDFnbEdoZWJyWlB5TXZTRXNma2dvVUhPcU83?=
 =?utf-8?B?MmVIakU0dW10d2s5ZmNydzBmQm5NNmg5NXc4NHFvdXVjNmc3QmhjaFkxR3JY?=
 =?utf-8?B?RGNVVDBGYXJ1UUQ4WlVYZm5YamdkOXNoaTh1S1IxQzNKbG9GSlNpUkRoWWNQ?=
 =?utf-8?B?dnI2aWR6R2E4S0RjZUlDUHhFQXNYeEkzZEFoYUpsdXU0b0RBY2x0U2JKclQ0?=
 =?utf-8?B?SWp6ZVk0bDI3VUY5TWl1aVZ2K05XemFJQ3NWdEY4R28wODlOMXVTb1o2dDNJ?=
 =?utf-8?B?elR3Q3ZZZXBlOWtieFBxZGh4WGxHWUMxVkV3MGllWVQ1ZHhNQ2JWSTA1WXFR?=
 =?utf-8?B?QUE3a25zQzRMeUk0RnhNSzVucThQTzRHQVc3eXhuYXFWUE56THBnWnZVNUxt?=
 =?utf-8?B?dDhxTkVTY1l1bmdzTlduRjVPdFVOTWtyeCtYVk9YSFBYa0Exa0pRUitnWWZT?=
 =?utf-8?B?SkFXSUhJUktVUXBYdFlhTmtGaXh5MGpiQVNlYUJxUjloanNlelBWVzAxRGhp?=
 =?utf-8?B?bjBGNXR2WGtYWXY2czFzbm0xa1pMenFwZksyejc1c3hLRG9seXJMV3BHczRU?=
 =?utf-8?B?OUdpU2VqY3RPd2JwekFiak9ZWUVQTVNWR1JNNWJOVklxUGwvdVhMZWtDNkJF?=
 =?utf-8?B?SDJ3OVpnTTBVSk9DMU1QcGhlNWNKb3llZXlET3pSOHFvcU5QYTZUYXAxZGhG?=
 =?utf-8?B?YTFlamwvRmxSTkYvb0JJQlhnQyt3UWJzMEZHRCsxZGQ5N214VEpBbUszOUhP?=
 =?utf-8?B?YXpoSWxWZ1M5Q2o2R1VnbFlZRm1FRVAxamVWeFBzWmgyRm1pR29QdHprL05l?=
 =?utf-8?Q?96gwDvcZixs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y25zMjNHUWV2K0hzU0lJK3ZiVk82TjRFdHNRUmFwTG1wUlBaSHA2RlZrY1Jh?=
 =?utf-8?B?S2xQRWF6QzNoTGsxNkV6K0pJeGdqcFEzSC9BTFVuL3ZTNE0zc29INUM3RjF1?=
 =?utf-8?B?LytlcnlnbE5rY2tCWGsvSVBVU3JMRVRCOEpMYzNTS0oyMzBnMGUwWDlSaU5F?=
 =?utf-8?B?MDIvMDdISVh5V2xKd09UYi82TG80bVAyclVHYjBBZjk5ZnpFemdaUEVpYzJa?=
 =?utf-8?B?VGFQY1MzQStTZDFIRm1BT2p4Nk1JbFdWNHpZQzdFRDZHZHhvaHNEaUZvZ05q?=
 =?utf-8?B?aFhHNmU5OUpBejJ2NDNwQkZCUm5zbXl2K25aSXpiaFNxVk5weEUyU0FBMXY4?=
 =?utf-8?B?N1dEeUxna0J6TmRtaXduSE1pRFU0OTB5YTJZRHI1ZUVWYy9tRUhEWnZUckcx?=
 =?utf-8?B?SnRlZk91UjhCZ01LcVhZMC9qdDAwNEdtcjR6UG5VUjRhaU10T1VjZGhpL3BY?=
 =?utf-8?B?OTN6VUIzNnlldklRRzFHK0M5SzRXSWpiQXNvTDlKTlJVOVZTSS9TbkMvbnl1?=
 =?utf-8?B?d3grNGFiOStGaXVQcFBaM20rQWtHY1BKNzAzYUhYMFA3U2xzenZraWk1aUFv?=
 =?utf-8?B?bmpKQUdMUERtek5KeFEzczNDNVBtZmI0NE5qdThKK1htQ3B1MXVQcDBMN3dR?=
 =?utf-8?B?SzQvNTgwVXJOUUVHdDB2S3M1dmxZQ2xrcjJtUXRrVm5IZExyeFd1YmhJN2ZI?=
 =?utf-8?B?MCt1T1hrZlJ1RUl0MWQyMSswdjNmS1dDRXNWOEZHKy8xTnpuY1VteVgvU01B?=
 =?utf-8?B?T20wK0JpcVpia000ZVNoNTZ0LzFLVnFySHpSWGc3RS9WYjFnT0IwTk9jQVRG?=
 =?utf-8?B?TU9ocE1neGxTbDdLK21GcmNuSkVMZ0VZTXlGSmhMTy9BdEZIMHV2TzZDbXdZ?=
 =?utf-8?B?S3JvalFrckhTRFdOdDVoa3NaWlIvS2JDTnErazE2MVFPR1Y0cWUzRlptbGtK?=
 =?utf-8?B?a1I0T29kRHRoT3dyMWNaNVY1bGFxZUt0d00rUFIvQ1h2cG1tWmNIM2pVUm1E?=
 =?utf-8?B?MGp4dHpFZENvUTlObEJZT3BwQWV5SmcyMWpLQTh1Q2J3MDdlb25IUlNQUkx5?=
 =?utf-8?B?ZUQxZmJUU1BOZWthVGdVVWZKNzBQWjRkbkM5c0wwR1crN0RmNHdZd09ZUE9s?=
 =?utf-8?B?bTltSzZtczh3UkNKNTNDcVRqQW1FUi91VEtFUlExRjBwMFR4WC9CVGVrYjNF?=
 =?utf-8?B?NStBdGh6WFZ3a1ZQTHhCa1YzU1JmTHgvNURlZWRzekQ0MVV0M1ROMEJ0dDMz?=
 =?utf-8?B?NUgxbzI5eHcxSTFEd3BkV3h6ZUwzZFRKR2ZBODZ3Slk3eWZkTmV1T1hXNW5J?=
 =?utf-8?B?ck1QZ1lsWE5KZ2NFQm14ZGVMQ1EyME9tTnN3SDB1TEtUcDhtOGRhMHBXMTdB?=
 =?utf-8?B?RkVsVlU2ZVJ6clJLR3kzTWpjZFFXSUZoa3owWGkxc3p3bXc5WVFTRXF0Mzgw?=
 =?utf-8?B?d1hCaUZqbStqM1N0TUhMTGVwT2JNZkZ5b3FHMUNXaWlKQXVoM0s4bTc3YTVH?=
 =?utf-8?B?QzVqaUR0dFZhOG5vSG9ReUx3VnRybjlkQnBrYm15V3ZOSUlUNTN5RXo4WWZR?=
 =?utf-8?B?KzRKY0lWaFNUVzJJQjhkMERzUDZGbkloME11Y1JzMmU0a0prYzB5d3QyNHVY?=
 =?utf-8?B?SHdlUisrN1VvSnF4SE5BTkZSRkQwdXFDSG5zSGgyU0ROMUlvYkwzcXpHU0FE?=
 =?utf-8?B?MHBSTVY1VXFYVzlZTWhmMlZZUm5QZXVIazh2SUwxcHhoaDhLcjJjMXZydVNS?=
 =?utf-8?B?OU0rbHB3Mnk2eHlrZy9Sa2JDS0NpY0QwNm9hZzdaQW1acXN4VWNWSkZ6TEdY?=
 =?utf-8?B?VVI0VUdaL0VTbkxRUXU1NHMxTGxzU1hJTFpvUFJ6NktJTFoxbUExRHp0TWNr?=
 =?utf-8?B?U0R3UlVoYVZDOUhHUzkyWVRiR2NUZ1ROK2lVVndtVmxGR3pRbWlVS2FPbERp?=
 =?utf-8?B?OCsySUtOaVVxUDQzS2VESUZoRnNNR0pGOXNQcVduNUFiR0dJT2ZFanlRWVdS?=
 =?utf-8?B?aWp3VDhUbEt5UTcwaHBmaS8vS0twU1lIdzRrS2x2djVqU1FMZmZWYnpsZzhJ?=
 =?utf-8?B?ZjFKc2hIbkE2Y1orQ1NWVC85S0Z0NW9yNGRDbEZtTUNIY29VTXljbnVBcVNr?=
 =?utf-8?B?dWlDOGdKNHYwVTN2ODJyNzJORjdZaFVjSnNPaXNxaHQwaG5qZmwxclZSRXhj?=
 =?utf-8?Q?al1YbEnI9nxdoVQCRisWgZA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31c782f1-7a1a-4846-86e9-08ddf449768f
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 11:17:31.7382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dTov9rFidekB6dEBop4Vr6U0tkfWHYDVtbJ/Nkvwanuk3UIYm48/SJmEgURsl5PFp5/KgCdDpVxN0rKaK2/9w4m/cA7QUeeoR/9bufKWgqU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757935058; x=1789471058;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CGd8EW9DuNw13syVbtdfZ4JYlU2tJSe1AybqxTsLvAs=;
 b=oIhFvdhi70tQ/00/Yi3DAopfmXwo8j9jJ6uTY2iVa7RHBJiLerKNlJSp
 SNGfRYuh/qfq/6EEgKA/+JKCCEfFLLLZU68A3ZMeVeRYugp4q1J6dKaVg
 XpGrZNfQVoaatVC8nvZX5KbwK5CSZlYJQPBlcxMl51KCS9OP1WMA0V3+p
 1YhPHNhNOAVaRhyef9IdJouVG72r8HQpF5WxiYUy9/gL07Ozsoq6F7jVj
 Hn3sdtZ+bpkbeWc2hRNyyykE/FuvGCe39S4gH+tu/jJkC5b1QWsJxDf4f
 egqrSj9LoHetAu28a/qXJbBGP4TxMNfuIxgSnRT1CbNV+V8DpZ4B46ZpO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oIhFvdhi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] iavf: fix proper type for
 error code in iavf_resume()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/15/25 12:12, Paul Menzel wrote:
> Dear Przemek,
> 
> 
> Thank you for your quick reply.
> 
> Am 15.09.25 um 11:58 schrieb Przemek Kitszel:
>> On 9/15/25 11:12, Paul Menzel wrote:
> 
>>> Am 12.09.25 um 10:02 schrieb Aleksandr Loktionov:
>>>> The variable 'err' in iavf_resume() is used to store the return value
>>>> of different functions, which return an int. Currently, 'err' is
>>>> declared as u32, which is semantically incorrect and misleading.

here we say "why"

>>>>
>>>> In the Linux kernel, u32 is typically reserved for fixed-width data
>>>> used in hardware interfaces or protocol structures. Using it for a
>>>> generic error code may confuse reviewers or developers into thinking
>>>> the value is hardware-related or size-constrained.
>>>>
>>>> Replace u32 with int to reflect the actual usage and improve code
>>>> clarity and semantic correctness.

here (and in the subject) we say what is the change

>>>
>>> Why not use `unsigned int`?
>>
>> I don't think we need to provide rationale for "kernel has adopted
>> a long standing practice of encoding errors as negative integer codes"
>> each time we change a type, IOW it's too basic thing to mention.
> 
> Well, if it was unsigned before, than apparently no negative values were 
> ever returned.
> 
>>>> No functional change.
>>>>
>>>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>>> ---
>>>>   drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/ 
>>>> net/ethernet/intel/iavf/iavf_main.c
>>>> index 69054af..c2fbe44 100644
>>>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>>>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>>>> @@ -5491,7 +5491,7 @@ static int iavf_resume(struct device *dev_d)

from "int" here compiler was forced to interpret returned 32bit value
as signed

>>>>   {
>>>>       struct pci_dev *pdev = to_pci_dev(dev_d);
>>>>       struct iavf_adapter *adapter;
>>>> -    u32 err;

and here it was just poorly typed storage for 32bit value

>>>> +    int err;
>>>>       adapter = iavf_pdev_to_adapter(pdev);
>>>
>>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>>
>> Thank you
> 
> Actually looking at the involved functions
> 
>      err = iavf_set_interrupt_capability(adapter);
>      […]
>      err = iavf_request_misc_irq(adapter);
> 
> they return (signed) integer, so in my opinion, this is the actual 
> motivation for the change, and it’d be great, if the commit message 
> could be amended accordingly.

I could argue that current commit message expresses this rather ok.
An actual motivation was "coverity report"... :|

> 
> 
> Kind regards,
> 
> Paul

