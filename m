Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715517FF44D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 17:02:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02B0443607;
	Thu, 30 Nov 2023 16:02:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02B0443607
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701360161;
	bh=OZSJ+XZEVUcCGzAWlnLu8P9amgaJNPh5aNERS8HZ3bs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AkraUxlZi8aLnU+4XzACyclPpxBvYIICpkUWz0xLo7saFnIG325dXpSu3l/JmWd+W
	 +Xz+nHmL5kMGOi3+BMb9VkZBPTGQHYZHXgh6HLQsFKtptOU/l/opY8O753ZuC4MrGt
	 9C5r9eyAP4WiBAIGjUyTnhGmJHV+YGj38YGY0qbkNDIrPdTPOuca28HKpHuIoPmHES
	 8izK5p45fde5hg1lrh00YBWJqzFpOIfvtJmV5Xyk0hNKiRs1bUjsofU4mMvgDTg4gG
	 rru6GdYhmRRSBzWh/oO1tfCzXgeebNMl3gVJxddT5GtKCF6MOKANCPHswlnVEpVOWN
	 kq1a2Z4GTGMXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RD6Dq7xUJIrG; Thu, 30 Nov 2023 16:02:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8930140133;
	Thu, 30 Nov 2023 16:02:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8930140133
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 194341BF37F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0C9741B43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:02:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0C9741B43
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2UdbNsmR8Uy7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 16:02:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE1D441B41
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 16:02:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE1D441B41
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="459836280"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="459836280"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 08:02:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="887280665"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="887280665"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 08:02:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 08:02:18 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 08:02:18 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 08:02:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YxsYMCdTBUTCBq8K/qhYKUhRYO879Mi4KL2DLiKwCfgU73vYRm7ZTLBlfH0yoeD/iLPpmhiHdeGHyLWkRAju8iZXyaGAOEnFFU6zn+ieyz8uoW3GQQN+csg9VZRJczBzYxS+po5iGyBl+xB1T3AxIv5lB7aRbhLmnHwO3vNrOLi4qADzeFmz0Jt/SFzT1C8x2SojsLD85gdT2jMkhzx2lvlWkHdjZtsQN7irAYDklpY3PDttaAnHpHK4uKqQgTehVCh0Gp96JU+m5joivMBkhHC+0Guc7yxUR/XMCEy13hG4TcPtMmTDt6L1VyLzM3UJXbEFYzTGHMAd+v1JKG5AdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pZ8x7w7kVAcusRPwvFmZueg8rP1lRiWA1tJMiWFGmPE=;
 b=DLpmngnVPOcY1k9JUM9vnXC1C292D4VL0UDJZlTSl+E68srg1rwX4ksWYMaC8+egwsf7lkUCUDu/r7DbwJr8J/RDWTmHgqYexOyq2RLhcAjpA2Qf5wYm5AuGXU2X91EbvmkxXA0NkXDs/i8dQPl4oR3GkB7XupAa2cR0E1zlj7lMGORfW2FliOQK2s6uPYH39CutjtwGBA6hKqdgiPmN88Hk6UfpSuKOV788vfYEYfdM5BQXUvdqeQnmSvhhK9eKm3vHqTZlwHHYFtaEUizxTBRJF4fJoC84I0Hb+9+YShjpN1H+SalE4jlk/chTtPeN2bG7cI87BjzO8HrTms2Eiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CH3PR11MB8363.namprd11.prod.outlook.com (2603:10b6:610:177::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Thu, 30 Nov
 2023 16:02:17 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 16:02:17 +0000
Message-ID: <f01e7e91-08f1-4548-8e73-aa931d5b4834@intel.com>
Date: Thu, 30 Nov 2023 17:01:23 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-14-aleksander.lobakin@intel.com>
 <e43fc483-3d9c-4ca0-a976-f89226266112@intel.com>
 <20231129062914.0f895d1c@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20231129062914.0f895d1c@kernel.org>
X-ClientProxiedBy: DUZPR01CA0247.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::17) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CH3PR11MB8363:EE_
X-MS-Office365-Filtering-Correlation-Id: 9402e759-85c6-49d6-3e4c-08dbf1bdb951
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 43+tiC/mabBYboMyl5ZijmAwG90AZSv+wJ1dQXsZFSO7/m3Kmk/mdvD3FvV6V0tgJc1ZMLgUkReY8bnut4VOOKE3lhDO9+MysZBwp+xwRfIR9qDUsvlFGnd4J8RhgQPJIQ5ymkAwfJ9E7y+TdmRrXwlWzy0a0IeNQ6f8zc7txVyKqNgZnf4/g4L68VcKBkm2xgyjQk8EC0M24bYJZ7M27xcgnGITOwcN3x6O4TlinJO6+gE/TgVWP7er+mw+uIK7WbrfPuy/jVu0B9K1zFi8vgA5xRIUv2WCp2k1dCVHzLLeoqEcRktkQZ455FIbPn+raJ0MkkywONw5w+js28Tc1dvWirsn9egMgchSxf/ew6dFtjXEg5x1kx0LAhDTcZ7FHwRdefP1vyr8Ohs/9WMwFXy+U/dxqrMbR1rf/TXy/6A2TGuVukGFEsVqjPjj9/rnU2UkFv69g1W1UvGzjsaxjLODr+dTeoteCEMjRXq4htCOtsuYgKtT0Yh1JAmkGcMZioY64w17HKw7vPpd2NS5EIMd1ogX99MnRU+nCycJuYap8ny4mh7nPJpknCFN32y9yOcpaJMG4ZUshTP39diR1jHJFU2GH+natLmuaWzlr15gK8VXFALDQPLOGma3Kq0Q1HGUMh20avptair55iF/Dw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(136003)(346002)(366004)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(26005)(31686004)(82960400001)(38100700002)(7416002)(2906002)(5660300002)(6666004)(6506007)(83380400001)(2616005)(6512007)(478600001)(36756003)(6486002)(41300700001)(66946007)(6916009)(54906003)(4326008)(8676002)(66556008)(86362001)(66476007)(31696002)(8936002)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEdYN0dYRGtYN3owTm9aYUZpYmlsYXhZYStWL2Ixenh0S0RFZ1JJblJ0bm9M?=
 =?utf-8?B?M3k4bU1Qc3pRdm1EakYzWnk1Wk5CVnpxSGE2YmFwb3JKbUhCcS9LU3kvZURa?=
 =?utf-8?B?VW5QbUptMjFDQUJjU09JOFBYNS9qcU9sWWVVcjRUOENuZ1lFZVA3Q1J6M2Na?=
 =?utf-8?B?RlZxTTRRbzFQSng2VG0rdG9JcUM4TWhkR0xBcWhSbmpzeHlXc01ZVWRJeTlU?=
 =?utf-8?B?K3NYVDRFdmZkSjhkQXkvS2ZMMU9MY2dJcUh0aTFOZ25ZT01nWlU2NlJMRnVu?=
 =?utf-8?B?cTUwZFZoSTRJZ2VHL2xsMWIvczlmL29iL1E2NTM3Yk1jMGE0TVdYci9KaTVX?=
 =?utf-8?B?TUFqVTlHTXN3VnBHc3VCdzBzWEY0Z3BqREJKTTYyWEhJY2JJQmtLb01DcWNq?=
 =?utf-8?B?ZW1SMjFyTDJuenJtdzhCeHJWbFprY1VqWm1pSS9BRXg1TzVtbUNGMkZPNEs2?=
 =?utf-8?B?dHlseHFWakh1L2lhNkYxdUhzazZZQ1g2Q2U4T2RNNlhVbDI2dnJYSTd3VlFE?=
 =?utf-8?B?SlZnK3hJM2YwVldjTFVCdmkrYUtJTGZZTzd0cHJQblA4NlRBQTVEWXN5SUU2?=
 =?utf-8?B?Ny8zZVFwOERMMVpwRnVpbVV4V0NOTG9Ta2xEaVo2N0RGUWdDMjVLcU9NaGJR?=
 =?utf-8?B?N0JtNEREelNPY3hZN2ZpR2Y3bitNYnpnb0xYcUEwVERkc3NzN28rb0lRdGlY?=
 =?utf-8?B?SENsM2NZN0xuZVhyRWx6ZHZEUTR2djZwVzRsVTNQTnVQUlg0bnMyNGs1SDFJ?=
 =?utf-8?B?d2dmbmNVYWZNYTc2UFB0UjdJUWVVVTlITnJuM0ZCYjJnaWg0OW96QTl0cmtX?=
 =?utf-8?B?UXFvTEFkMFdnaHFUY1hxUHFkVFFvcjU4OG50ZXJtREVMSWd6NDhTeUxFWVpY?=
 =?utf-8?B?Y3ZzTFVaQ2FxelJwaWlHbjdteTlBdHdpUFc0WGphUmtrdUVjTktWMlVoZTZ2?=
 =?utf-8?B?QnZDY3JMVnBJMDR4aEdTcVZqaG41OFF1cHd5Z1dpWDdqclduRzV6d0luY0xz?=
 =?utf-8?B?bWU1K20zUU00aDJmMnFEQisxeDNxZy9teFhHY3NvK1JRbjBlWnFzdGN2MnZy?=
 =?utf-8?B?cW8wM3oyRDYwclk0ZmdBdnlLNytXM3lKclFXVjlpZmdnZFFqL2lCeksvR3J2?=
 =?utf-8?B?OFFQSjZ2UUZvVnFITUxjSnZFQ21CZm1aWStvZ2xiQlJTUitlWnlqZU9EN0hx?=
 =?utf-8?B?VTJkTldHZ0VzS0Nna0xNcWtEM0w0MWhWVnF0Z2NpQ09kVUtDNFZiRlg3YWtF?=
 =?utf-8?B?cDFHdzk5M09aOWNsOEp0ZlZTM1FxUnlOT1ZDVDB0dGlFMWd4R3pDYnpodHZo?=
 =?utf-8?B?Wmx2NHB5MDBuVkc4VndqdVhraXBvU2FtNW1CcE5lNnhKREkvbVg1RGxhei9M?=
 =?utf-8?B?OHhRc0N6YXMyUFJGMzdHcjlmbWczNjBScjdCbVUrWVY5b2tkbGdOM1N6Vm5o?=
 =?utf-8?B?MXN6YitlbUdHOGVuMXk5bEZvUmxoajEwQjNuaWV6Um43RW05K2hlL1NnYTdq?=
 =?utf-8?B?SjBOU3AzdFlXdGdza3Z5K0ZSVVB2TEE0VnFId2Mwc3A2dTN4QVpYcDl6dWVW?=
 =?utf-8?B?dXpOaUlMY3dZdnJBemQ5TWlFcHVWTFVHRmtrU3B5c2IxN3NqUlpBYjZvTlA2?=
 =?utf-8?B?S3M0RlIyY2FlM0Q3bXVhb2daM09peG9CMkw1S3NlckxQRjNaM3JNN3ZpeVc4?=
 =?utf-8?B?K0VuLzRTbm5CaTlhNzY1OXRBaUhBT05yTTdseUJZell0N2luZU41SHN3OU9M?=
 =?utf-8?B?TGQyaHlOLzhBTEx6cm5sUmlvTU50SDljcnpGclVxV21pQ0NNWmhTL2tINGcx?=
 =?utf-8?B?aHU1VjRPaER6VjVMZVo4QXBTZ1RjYkR6Y0RMWEFwVFowTXVSMVhWNCtXWEdT?=
 =?utf-8?B?N3ZsNUZiaTZEZEFiVTJNZEozOFFxNWhYdnJsTnZTa3dYMHkzeWxqY1lkSEMz?=
 =?utf-8?B?K2g4eHpyMUI1YXNuWDhUcElsa1dFdkM0ZW83SHFQVldaM0hmNEpjNjV0djBq?=
 =?utf-8?B?MUplRCtWOC9YSmFjRCtxSzROaUVYUzhBQWhWczNGVytoRUtRa0tjV3d2Qm83?=
 =?utf-8?B?bWtsQjBoS2RaVFplNXUzSG1seEtVck16cnRibHFuMnFuWHRuSVlydTVzVkdk?=
 =?utf-8?B?d0I2a0NJZERRZlJ2UTNjWHN5OWdrNFR6WnVLM3djWWw3WFFKcHhGR2xPNjBt?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9402e759-85c6-49d6-3e4c-08dbf1bdb951
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2023 16:02:16.6160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: egH4tE00az/IF+dz4iACkrsQiwyEfMtyIa7OvbIsv2GCps5xO5wNJMD2lzMjD9DaYHpHrbEMZk88Pm4oRdAOehCRIvb+mFT+4zJ+Jh7AEdA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8363
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701360147; x=1732896147;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6frXSfxU8ie8NVKoTJ92q0K2tw5cTUPiwkn8q2XaPXw=;
 b=Uh2LJM9ER5ULbkEZ8Tno1cFqkbxdg2sJHAOq5fg8W+nxgLA1gZNAQfCh
 d329mJGB2z//iII/Bj18xjl1VfYMIdeaVhUDczgsB55tEuIpVfCfPXhyF
 9XvSXnKJKyrLxbszXXP6ZHmfpfqXZFrT6rFvXRvGKxUOjNENdRkIi2UiE
 FvPYd1yYJIVWYV4jBOCjugmXe7awYyFXguoND7DsbW3GquH7MmDrb00fV
 4RzTKGmCPCWsEX7/+SF+dAh0kYwVprDgiHwWjhdZMSAoXrsyK36ysYeSm
 NCM4LwhHHTp62CG9w0V8fAXyejzOvgBvlekxS9oMS//ESCuiLNvb1jPQm
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uh2LJM9E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 13/14] libie: add
 per-queue Page Pool stats
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Yunsheng Lin <linyunsheng@huawei.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David
 Christensen <drc@linux.vnet.ibm.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 29 Nov 2023 06:29:14 -0800

> On Wed, 29 Nov 2023 14:40:33 +0100 Alexander Lobakin wrote:
>>> Expand the libie generic per-queue stats with the generic Page Pool
>>> stats provided by the API itself, when CONFIG_PAGE_POOL_STATS is
>>> enabled. When it's not, there'll be no such fields in the stats
>>> structure, so no space wasted.  
>>
>> Do I get it correctly that after Page Pool Netlink introspection was
>> merged, this commit makes no sense and we shouln't add PP stats to the
>> drivers private ones?
> 
> Yes, 100%.

Meh, this way the stats won't survive ifdown/ifup cycles as usually
page_pools get destroyed on ifdown :z
In that patch, I backup the PP stats to a device-lifetime container when
the pool gets destroyed, maybe we could do something similar?

> 
> FWIW I am aware that better tooling would be good so non-developers
> could access to the PP Netlink :(  I'm thinking we should clean up 
> YNL lib packaging a little and try to convince iproute2 maintainers 
> to accept simple CLI built on top of it.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
