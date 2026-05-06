Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKZ6OO6u+2lYfgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 23:13:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CA04E0841
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 23:13:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFF6860F48;
	Wed,  6 May 2026 21:13:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ERTXSm4b5bxS; Wed,  6 May 2026 21:13:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23A5D60F4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778101996;
	bh=/mtHfbCS5+SiVfL9rfEAq3ot75xGH8hiSiWePayLMrw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XnSqgDBqp2+WbK131W+rFB63BFVxd+VGyoL7GMWfsOVmgR2IsaqFbx2HDwtoM9mzi
	 DHQFwKZn0X5sxKopULT4otNiU/DKXVIICh9dyq9IJ3lgyWQk/Z5h6zMoTgluEwAH/L
	 Foz7FqhK4dxx6Pl9nD86BY9vTdEpV2AQ5QPcEGa8y+nrQRkzFA9tRnvDEigvPDtOFK
	 RsIUWN+EzH2VgN31WLdnd8Bdh8ByYBo0vWJ7L6K14N2AkPfovhSJwIHdnO2cImcJHM
	 B1pzC+r82+yJ3r/TxHkit71CI7cI3KB/pon/dgGNbJj1MjYHxf4poRsHHYotmWt1GU
	 xhPXp6Uugi81g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23A5D60F4B;
	Wed,  6 May 2026 21:13:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BD8311B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99A4E60F46
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gp_--4XfxFiA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 21:13:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C1BB7606BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1BB7606BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C1BB7606BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 21:13:13 +0000 (UTC)
X-CSE-ConnectionGUID: ifk8w6KkTMqXglRtiVzjFw==
X-CSE-MsgGUID: hpCRAypaTvGPWgyMHZCjZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="89353371"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="89353371"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 14:13:13 -0700
X-CSE-ConnectionGUID: sbviZ1yTQUGBPx/xYS5DKA==
X-CSE-MsgGUID: dZAaSUaFQQ6Cq21NARd5Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="240590918"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 14:13:13 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 14:13:12 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 14:13:12 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 14:13:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F5wwa9Prg4ux52tBgb+2PVl2CAZ0d0eVS3gsFei9NyYr2nJJf//3lLjdnqpzhE8Glmq1SeEt+n6FcAYCwXIooky2Dl1ckEVy8ADb+s8rvGdGd9noB8I9tSXxHl5734czLjhcw+i2qWMR+OvYNBinnvtQa1PlScoMaZ+ZJClOVWPzx6bjungvaffD2AcaE/r6LYtNXTHOLWQisVPvy18RzrdSEV0FOwCgjjIB9sonKrliR73JVQ06Nc8ZuzY5lwIpw3UtPDnMKlYnOd1pcrLKDw4qmHk4L97LO3aew2/Fb3Tem2iOsf9d8D7irckBJTNvVkS6UsrzOPYp3MeAiHp/ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/mtHfbCS5+SiVfL9rfEAq3ot75xGH8hiSiWePayLMrw=;
 b=SQIg8GXB/2XW6sEQkPW2MzB30882Rm9cKG3E4VWjo384B9XY/2bTvoFszmZ0RBvjJFprBj7BKBzZrKaZrK6ROWwIhU9TSHacinDZUmIKSI96XQ2+ImSNkZKYLABoxtfmEody52t9HCk3LKE9PGVYJ6mL5xw5p2iLA49uSChVAqGL2HmOB2xwhouE99xK5VKIFIO8yFGA91wzoVScF+GE8FyG8d38JLiHF8+Pqg/2nBUFupKtRBe2Ub2AsXivAA4cOLfCKHwePV0aMA9felKC4UNqXOdCNHon3y7ZJxmsarZo1goiglsgovpZdKe/Wt/71+LLP0TOIcYLDDVyAz3qTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by PH8PR11MB6780.namprd11.prod.outlook.com (2603:10b6:510:1cb::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 6 May
 2026 21:13:07 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 21:13:06 +0000
Message-ID: <7343677e-a652-4770-8cb4-2a938eddaf74@intel.com>
Date: Wed, 6 May 2026 14:13:03 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Arkadiusz Kubalewski
 <arkadiusz.kubalewski@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Madhu Chittim <madhu.chittim@intel.com>, 
 Willem de Bruijn <willemb@google.com>, Dave Ertman
 <david.m.ertman@intel.com>, Ivan Vecera <ivecera@redhat.com>, Grzegorz Nitka
 <grzegorz.nitka@intel.com>
CC: <netdev@vger.kernel.org>, <stable@vger.kernel.org>, Bart Van Assche
 <bvanassche@acm.org>, <intel-wired-lan@lists.osuosl.org>, Arpana Arland
 <arpanax.arland@intel.com>
References: <20260504-jk-iwl-net-2026-05-04-v1-0-a222a88bd962@intel.com>
 <20260504-jk-iwl-net-2026-05-04-v1-10-a222a88bd962@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260504-jk-iwl-net-2026-05-04-v1-10-a222a88bd962@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0295.namprd04.prod.outlook.com
 (2603:10b6:303:89::30) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|PH8PR11MB6780:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c2a7be2-c027-43a2-355e-08deabb44482
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|921020|3023799003|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: ACpXnWP5aiOJwFXDEtfXxS4UIL4YjJyFZkqlmmdKesTW/lRl91qIhSlOoN48OicKsY4alTGNPpjQ4w8wS/AGAfQsYJvEhU+cXx1M3932AXgSPO7N4EfzkxyMW/7JWR24SmE8fjCOmSBoisqTJQWE/UY9l7lLKAEhfYSXRG0aP6XRgXzO9ng03UNYW/2rdE51Y3aKy30FlYlgMWFATA1LG7Qp2NRYuA1mYmiaijUojeGonRbU4l25TrbQj5DLB5YqkORbZcP0n5zVDdLlFJ1OtL4E0QQ9vwcJm2iSfGoUwIlMBsbhTQ4XomvL/sNFFNrR7qxZj9E1HHWxZZKjzYru92ovZvCMNBP4F7BITGUS4jzDBoyC5M7p9Twg5Zu7qRNFveIbyod/Pb1IA47uwFuB/7Q8Pqk4Iq6SrlIOSal+6VHPv2JAOoiNzoRL56aOvh2w2WOlTV+pWeXIscPcGDIOgn0YfQMG44vv5G0x6gSmDiywMGh/izn61Uwn8sG3gNfxxO3SuH4TBFIJtS0yLGuJ0kf+cKGiWmwE9kwSXBrXEbnOylNv6cDniF3JigBDV+qkuQ6HIESXQsaULo6vR/7CxWntC3i2Qj39U9VlHjdLl1gV8d5jR/9XJNK+Bikmj0i/Hyk/Z786P8VJC+ebOKhkklRapC4ptUurXWicO/8d+C7JubBtzG1RbTFNKNTI9aSFtTh5pYaZWrHNakSTBZgExYom0jdWrEAa5Twlnu9rL/s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020)(3023799003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHowSnYrY3l4RUlnbytJL3pNbll2Y2RtTTZGYmtGajVNWDBMSnJnb1F0dDh1?=
 =?utf-8?B?TFBVQ282dHBXT0F2VTd3ckxBVk9sRHp3c0N2V1psdGQ5RkZWaEdRSGFCRFFX?=
 =?utf-8?B?dis5Q0wwRWNwZ0t5ZkZPMm1FS3dkZnlCQlZXWVpjaUV5dzZLS3ZIK044bnVr?=
 =?utf-8?B?RTBGQ1FTQ0pWa1g4RzhHSElDZXVxblQ3RFQzN2w5SENKZytrNG9hSTQrSFhk?=
 =?utf-8?B?K0hyVDRoaC9tT3FZZEtkdWNxeVRzcW5LSlluTHErb3M0dVF0cU5SN01qcHAy?=
 =?utf-8?B?djQxNFpLYXYwNU5OT3NGSGJTZHFRUTlZTFlKdm9DRW4wL0N5a3pvL3BMLytE?=
 =?utf-8?B?Q3NkQXY1T25JQy8rRS94eXA1d0JmMWdiMXBaMXZlbG90N0dkTFJzY0g1UlRz?=
 =?utf-8?B?dlNtSitMcWg3Q2hVLy9HQVNoK2cwSUNzQXJSZ1Nyd1huY2MxSDJKN2Ryb3RL?=
 =?utf-8?B?VlJHV3Q0VWlJeVlJTUl5bnFVNkRYcFJDY1greWduMDVVZmlqdmlxRkcxbDl0?=
 =?utf-8?B?OXQxRDBxNTNzcWdUaWN1cHhZRjhZcE1DS3dFenFvb2NtZDRaS2FvUTdRdHNT?=
 =?utf-8?B?WTdCRzZuQkhaTDJlVDllaThzRFVZbGhMUTNyaTVXU1lmaTlBRnRnandTVDVu?=
 =?utf-8?B?WlVQMm1mVDJNWjhFQmZ4VThxUVZ1WlIrMFNOeFRXaHM0K1ZNMjFyU2NPZy8r?=
 =?utf-8?B?R3ZIUE1CR2tpYlFHZ3o4aHc4RFRudXpKQXdHR3pzR3Q4ejBoWUl6ajNiYjhq?=
 =?utf-8?B?cVo0R0hGeFdqaDdmK3ZQVk4xMml1TDB3dDVjZU10SXF5SklpbWFjWU9jUXp5?=
 =?utf-8?B?N3JBOXAxekZ5VVkzUmFGTllPSkJVeW1MUE5yY1hBVkwrbGsxY1AxcEdNdkFT?=
 =?utf-8?B?dWdINERldGdMSFdvUjUyQXNCU09qT0pxbGRnS2NYQVpPRkJyQzcrUzVVL1NM?=
 =?utf-8?B?OEJpNnQzeGRpa21yR0oyNDA3QU5uSnB3MXhCT05NeEsrUUxpaks4UDBFaWY3?=
 =?utf-8?B?a012bi9Wa28xSGYyc2tZSGRkWTFWTFJwdURiMFQwWnpIWk9odWJyZTVSeU54?=
 =?utf-8?B?MEhoNHZCcFNEVkdoRTc2dGIrL1RXT1NVTFZYU3N2OWhmNkFNajljbTcxb1h1?=
 =?utf-8?B?bVUrY2xVUTdFellxbkhWUklYNWlvRzBkYThoNVRiYXBBeXpIOUp0eDkxbWFj?=
 =?utf-8?B?RWthM3hXNjF3aHBlYVNiNkFCN2lGbkpsUHBndUpUQ0xlb3VMUDhHZ2JxSTY3?=
 =?utf-8?B?UDVMYkErQUJ0RXBVZmREcGdvek1YVVhXM2pzakpzVGFvTEpycnBjZTAwVHNi?=
 =?utf-8?B?dUJKSW9yS1dUbjNESlIyeGczbWJVaXRzSnNXeHdydWhWeWxLQW5IME9ONW14?=
 =?utf-8?B?eHQrczlrVkNUbXgvclA0eHM2UTJaeEFUcitJcS9LZ2VxeWhubFlubVZtZHNO?=
 =?utf-8?B?NDhqeG5PNHZvQmdML2ZHQ3FTRlp0eWVET3g0ME5VNDdjY2o2MWNHVDJaTW9J?=
 =?utf-8?B?aGpxMDRQZWMyc3NyODA3cC9GbS9pZmhxa3JhcjdkTnY3dFloWnRzVksva1I4?=
 =?utf-8?B?L09Ub1I0YUYyekY2RXdpcUJFNHdSaWxFWDE1WXJCUHFjcis5L1BVN3JxVWl1?=
 =?utf-8?B?QnRYVG1uenNIekVGQU9ibUx3T2hYSFlDa28rRUpjazlRWnV4QThtWmtMOE9v?=
 =?utf-8?B?c3ZPc1lIQ0tmZlpET3JZSzV3dGVtSFprSmg1dWY0aWtWWGJ3ZThSNVpzalVj?=
 =?utf-8?B?S3h0bTdLQlFaZjc0RkYvYUVuZmlYaTFOS1Vja1ppOUxNUzgzZ0x0T3N5ck96?=
 =?utf-8?B?NjNOSEhWSTc4WjRqNmxYcGtTNzcvcWtvb3JyeU5taG5WTjNSN0pudnJLcG1Z?=
 =?utf-8?B?SHFpZ3ExSW1Wbm9qN044M3ZpNjJlRjZ3azZ1aFY0M3VDZ29sTE9uTTNoUzZm?=
 =?utf-8?B?eWUxWjVGWEV6ZHJrd2w2S1FDRkc1VGlhb3IvcFEvbzRoRGNvbmdZNm5PV3kv?=
 =?utf-8?B?WUxwcUJ5dysrNDViOTRKWkVRQnJGT1RRV09FWVNoZmp1aFJ6WUI0TEN5bG9q?=
 =?utf-8?B?U3h2OUN2RkVrak05bFJQcGU1T2Y1Q0FRYXdRUzhwY1pQZm9yVzZTYUxacUJz?=
 =?utf-8?B?b1FWSExpYmJSdW1ua0I2R1JXbURLalFZN21aVGs3QzdSUXprWkdYb3lRT3Y4?=
 =?utf-8?B?YWdUaUpXV28wOGVlbi85OXhEaExiOTFzOGVHSTN3aGNJZGJHdnY3K3ZrZWpK?=
 =?utf-8?B?MzVWMlFaOWdNYUp1Y3VjbHVla1hWNFF3enlsM3R0T0tZeGlybnMrdzdHbmxi?=
 =?utf-8?B?TGlWa2NkTGU2c1YweFlkSGd3Ujhib3lPa3BHZUZwSmRDU3BlVzRRVEpiZGR3?=
 =?utf-8?Q?/7Xx9IxLR54PGlbA=3D?=
X-Exchange-RoutingPolicyChecked: hzqHTmMD2q83SOA/kjNoBkcCoTNwdTdSALinssIKI5Py6Y9t15fuLE80GSrSPdX56d7gKNEnFfuVYb9m6PsHKpPmZFioUuuJirfiKxT1tuy3WEX7JIW5dSgK0OsSS9uDBNu6X/fUYCM57oalIKO+ylh00SLw8i7NCH93t0Rd5ZndoALQd4wRFrIXIoo/kNELvJQpzIuZIG79WiTGlOxECFStRliOyJApz0mRos/I2O3KkScJFZlBEQ1+7o71LZUUI4bKTy81ch3Hxvc/ftORxgbML8LAN+j26cggLEBojmxa04gQ/eiez2cVlbMgU0sVdI9o6txq733vfPq+USvf4w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c2a7be2-c027-43a2-355e-08deabb44482
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2026 21:13:06.7778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gP7USDlx8MRhytV3xZIreLWoE0n4CdO+VWPlzQRHKKvLWYmyfEtjG9DKwhzV/NFrdmZhSyxl2129zPPQMt98u8OcD105zuCF1wzbstr594k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6780
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778101993; x=1809637993;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nX9hh2t6oLriq6pYXy6rKoRTXL/WB3EQsv8BR1aanLw=;
 b=aaYs3t3OBru/HVdxmsntvlM7ES2nJ9mpmJf6DiEJLq5pmd6jndiRVLSQ
 LHehKDsXzQc64R/4BlPugbLgFcvf+WQNvEX9os/YJBoA3+YkxizIyZ36/
 8KdjiTSWPeo9Wh7tLwgDJZUcoK7NB4V3RShhMUu0r6FAtmr+gZyMzsmnw
 iDklXkvXajtrY4rdYOhAMZXDmi3E9hB8A+Nwi3co2q48m9y1xIp85wQ0f
 m7+IybAuJhu5vbKyLomKFEeDG2WMx7VIjuiRPRTC5oOZPssD5mSM5qol1
 thhHrA4j4fkrP5NAc/2kIdPEX5HLxI0N7mj2HYJwl2yScouF4vFXwlr2W
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aaYs3t3O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 10/13] ice: fix locking in
 ice_dcb_rebuild()
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
X-Rspamd-Queue-Id: 33CA04E0841
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.79 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim,osuosl.org:email];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,m:maciej.fijalkowski@intel.com,m:michal.kubiak@intel.com,m:joshua.a.hay@intel.com,m:madhu.chittim@intel.com,m:willemb@google.com,m:david.m.ertman@intel.com,m:ivecera@redhat.com,m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:bvanassche@acm.org,m:arpanax.arland@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	GREYLIST(0.00)[pass,meta];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.191];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	R_SPF_ALLOW(0.00)[+mx:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:mid,intel.com:email,acm.org:email]
X-Spam: Yes

On 5/4/2026 10:14 PM, Jacob Keller wrote:
> From: Bart Van Assche <bvanassche@acm.org>
> 
> Move the mutex_lock() call up to prevent that DCB settings change after
> the first ice_query_port_ets() call. The second ice_query_port_ets()
> call in ice_dcb_rebuild() is already protected by pf->tc_mutex.
> 
> This also fixes a bug in an error path, as before taking the first
> "goto dcb_error" in the function jumped over mutex_lock() to
> mutex_unlock().
> 
> This bug has been detected by the clang thread-safety analyzer.
> 
> Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Tested-by: Arpana Arland <arpanax.arland@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index 16aa25535152..0bc6dd375687 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -537,14 +537,14 @@ void ice_dcb_rebuild(struct ice_pf *pf)
>  	struct ice_dcbx_cfg *err_cfg;
>  	int ret;
>  
> +	mutex_lock(&pf->tc_mutex);
> +
>  	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
>  	if (ret) {
>  		dev_err(dev, "Query Port ETS failed\n");
>  		goto dcb_error;
>  	}
>  
> -	mutex_lock(&pf->tc_mutex);
> -
>  	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
>  		ice_cfg_etsrec_defaults(pf->hw.port_info);
>  
> 

Sashiko thinks there is a problem here:

> Does moving mutex_lock(&pf->tc_mutex) to the top of ice_dcb_rebuild()
> introduce an AB-BA deadlock with rtnl_lock?
> In standard DCB netlink operations, the netlink layer calls into the driver
> with rtnl_lock already held, and the driver subsequently acquires
> pf->tc_mutex. This establishes a required lock ordering of rtnl_lock
> followed by pf->tc_mutex.
> With this change, if the first ice_query_port_ets() fails, we take the goto
> dcb_error path while already holding pf->tc_mutex.
> Looking at the error cleanup path lower down in ice_dcb_rebuild():
> dcb_error:
>     dev_err(dev, "Disabling DCB until new settings occur\n");
>     [ ... ]
>     ice_pf_dcb_cfg(pf, err_cfg, false);
> Because the locked parameter is passed as false, ice_pf_dcb_cfg() will
> unconditionally acquire rtnl_lock().
> Does this create a lock inversion (pf->tc_mutex followed by rtnl_lock)
> against concurrent DCB netlink operations?
This seems like a fully pre-existing error. We already jump to dcb_error
else where in the function.

I don't know if this locking order really is an ABBA violation (I did
not review any of the other flows that take tc_mutex to confirm), but I
don't think it should hold this fix.

Someone from the ice team will need to investigate and see what the best
solution is. I suspect we'll have to take RTNL lock then the tc_mutex
and pass true to the ice_pf_dcb_cfg function. Or, better yet, see if
this converts to the netdev per-instance lock and we could drop the
tc_mutex entirely, relying on netdev_lock?

Thanks,
Jake
