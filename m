Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KwpO2qjrmmbHAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 11:39:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0EA2373CD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 11:39:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 025DB40A56;
	Mon,  9 Mar 2026 10:39:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S0eJ8-U1d8f4; Mon,  9 Mar 2026 10:39:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFF1240B6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773052775;
	bh=LH5Gh49vjElnF+2b+kWXDUsMr3Vxtti94UPdWM/O+Oo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5DTz8N/v1XkcrYGCkDQ+uaVanjEpdk06e6RIdmsMB9Wbj+EzkHfVCzmZzE8DrvVcC
	 hrq8fVhmsUlvTJ0pfrNZzGB6DgWw/SXyNxZLz1bP4cyMNZJiL1sldVByrlMXsmNA/f
	 G3lz1GRrRoMasbGk38GJT3W5he5N2cQouAiglIZB33VrcIV39vGJSItrgRinjlzPBO
	 4dECA5R/gJrXMhOcVs/zGRDml54PZ5iBN9lRurmdnS2GotOwWQbabZK/7GpzyR+6W3
	 uFy2fFzK9wa8PZXhm7b4QMulDJXO9DBbIkZSdYrocXV9zJtHKs4ac1jx3M0zltia/M
	 ieUzDHRJSMHtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFF1240B6E;
	Mon,  9 Mar 2026 10:39:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E1EB6358
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 10:39:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D37D1816E2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 10:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xHRmP5NIkj0N for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Mar 2026 10:39:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 10A4581445
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10A4581445
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 10A4581445
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 10:39:34 +0000 (UTC)
X-CSE-ConnectionGUID: JQxqAN4aTDahNRFp/rm20Q==
X-CSE-MsgGUID: fFIv8z10RaGF8x0xYZEx7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11723"; a="85545438"
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="85545438"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 03:39:34 -0700
X-CSE-ConnectionGUID: ojBPdNK6SfS/lRA/88P7oQ==
X-CSE-MsgGUID: VAMgXJ1QRoStmMK2CpAIMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="219657191"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 03:39:32 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 03:39:31 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 03:39:31 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 03:39:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yqvUx+O5oVHzF5zk7d+rIpVQzuBwqCJFnUHFUPBRraeoja9DJDLIhZ8Pt954IewOaQw3fcGHTqVBXsu+VswkL4ntJuGwIEUG9BnjzpYNn6oJZpKnfbdsJ0WDDpUJil50iM80Cnncj1NyCJ3+PWJq5AhRGNIFT3bItr5ViMtI6uerx4c5PEEc3IDBW+/Log1xi+aqjP2dwKBepdHYEG5uyHxxMXi9yhHT8JPVq/8hB7Ai3gno8zAPioZdSP3X1G7bsLzR7MjftWBo60RUzH1pWSEXuDcnOzujMx6GxVx/J9996CFAuJ5pemGDjG7Gg5ufxqSazHO+qNZaftCthVLePw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LH5Gh49vjElnF+2b+kWXDUsMr3Vxtti94UPdWM/O+Oo=;
 b=tkFi6Ck3PKZnG17oVZapsbB+mHomjnzcoyHqHwoqRJHmrK+67rqBVmoujajsNBr4jMjyWuaetP85bEblIC2wqJZbyYLgMA7tKEdxFe3BU12402xDK61th8FxUUgyY5aD8OxqQLCRm/Kd8D2ubqSH3XenSPi7afacL+gpMiYSwULKpAwwHpAoble5pWZSwZya3SheF7zscNdy+Rokz4oi/YIWLN8+HthQ1WPkjeaRpVHUmNpzpSCf9ReV6Nk7AHE3l52Xh7M7jtXv/TU4ztq4hcRqWeaTqnW5DMAC27Npe/UMrq8rTxiOiNulfWhD5AhaHu3AUtBVEFlccr1zeWnWEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by SA1PR11MB8445.namprd11.prod.outlook.com (2603:10b6:806:3a9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Mon, 9 Mar
 2026 10:39:29 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9700.009; Mon, 9 Mar 2026
 10:39:29 +0000
Message-ID: <d89776ee-3101-492b-bca3-5c803fd481a0@intel.com>
Date: Mon, 9 Mar 2026 12:39:13 +0200
User-Agent: Mozilla Thunderbird
To: Mika Westerberg <mika.westerberg@linux.intel.com>,
 <linux-pci@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Lukas Wunner <lukas@wunner.de>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Saeed
 Mahameed" <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq
 Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, Richard Cochran
 <richardcochran@gmail.com>, Andy Shevchenko <andriy.shevchenko@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, =?UTF-8?Q?Ilpo_J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>
References: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
 <20260224111044.3487873-4-mika.westerberg@linux.intel.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260224111044.3487873-4-mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::14) To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|SA1PR11MB8445:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d59db89-e292-4c74-0234-08de7dc82447
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: saHE9pjybNkMpv7awryFMGJymyJDrFBm3bSuXp/vgENMrL2hoIsbevvUfrlNhk6NqGXzGW78xDJL6l7WyFHf8Q0ir5lvOtmOG7NDM4+yjhw91LT+BoePsopKUKcFMpARqNOjLGRHUmYIDmGQOsYSybX0BmxiWzWJC6j+8OJcfiR+mJAfjG3Jvc9mBSSWChGRe0uwpJktZwVh3u2D7HJbvDyo340t5YzqpPTzHoEn9ESkTlaqCcJ14caACAroBoFJWlPikDZvgKnd56f39uTplo7NsB93Qo7kInwUIYPb1sA0Lj0SYutZjADeY7Ec7QCGZD38HLPpXVDrOWZ3OCEuKFzg/iinBoZ0HlnQgJXvocF4Gi/9VjcF1bNEiw0x2+g4XTt0OiP7BeXkWfryEWs11t9ck0bW6ULgVD393I0fdARuDHhjVcfQlF2iCYrAszj7K+ZqPigAeGOzmPH5IQ0NLf59T6Ebwlq1MY/y2H53/9Xh7bq7xxMExguAnw/J49PrFuPeX9gvnmSoceLM1cmgUhnnd12aGLCYsKlMeWKiEnKALUQaijmXxcetc003L7xvj01gj6Oa62K+6g23oYrWpu2NleGMSXkOGkaFLiGTnlYUewXosvcXBvOKjFS/Y7SHaO7oGXojaz8CM1WaT6Ego3lv/VgLJD2LCKH14AcGZTkxDZBPSm/1E9g48ppnP6q/Z+wzWX/+lrlCaOfyPxq/1i2bMHAQhTrKTCMZ5O/b7Sc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3NWODRScFJIVHpwUFJJZ2twajVlYm92RDhUU05BRCtOeUs2NWltanpKVHQw?=
 =?utf-8?B?dDZhbGJEczJyTUVnQlp5Tk0wSlMwU1BJTlc0bTlRNjVmRE5UTUVlQWxOdDNm?=
 =?utf-8?B?WS9mQjNIUGV2Z0ZxNE1LTmY1ZTVsbGxMaWY1STRnWHFyT1lZRnNyU0M5Q2tC?=
 =?utf-8?B?SUduc045T0VQUXlWMG5GR3YxRU5FNkMvQ0J2bFVRVVlKaExjRzR2am8wWFZz?=
 =?utf-8?B?Uk5XdCtpLzJMaTZQQ3YzTVNFWjRLY3FIQ1llM3RhV1YybzVzdkZlWnlvSUw5?=
 =?utf-8?B?U09tRUZDRGJZZVUxY01xaTNOT0JJZTl4ZEhnQWE1NnNqcC9KZGNMMlNXLzlN?=
 =?utf-8?B?cXZaQmQrMEhncDUzdTljNnlYdjVhZ3lBbkh6YWxPZFJPVHNLaTdlMzcxWUlK?=
 =?utf-8?B?N1VNNGtObERsRHVudlIza2NBa0RrWVRNY3dVTGw5QkpRNmpIQ2g5ZC85bWVP?=
 =?utf-8?B?OWQydXhsRDlkb0RLMnJ6MFkrMDg0eUZYcEpqeGhPT09nd3FMUUFSZnNobzkx?=
 =?utf-8?B?Znl6WEJzRFpKV1U0dTJvaFlPb1V5NzMyZmw4NUJMd1hhOFNGbWVyanEwd1Nt?=
 =?utf-8?B?dU5CLzZPMEkrYzBjOGcyM0FrVUQzMnJzNGpac1k2clNWbmZzcEtQQ3dZenl3?=
 =?utf-8?B?cVlnRlVqMzkrVzBOOEpnZFJ3NG5KdGZCZU1NUmRMMmZOT3RTaEZwNVF0N3Mw?=
 =?utf-8?B?VWpidnhqTTB3UVV0dUxXaUJoeThtcDdVS3lkTTBoaysvT3lEQ0gyR3pSZHlx?=
 =?utf-8?B?SDJuemtWYWxnMWREMmFVSWxqOUxQTm9ubklERld2TmVKRjkwZHcwWjB5T09y?=
 =?utf-8?B?ZHFicXVnN1ZQQVJYVzNBa1djZ1p2dFhGS2VpQm9kSGtrekxBTUhyNkpJV2pk?=
 =?utf-8?B?WFUva0dXZ3VpNE9PWVNrcmpWZk1zWHRIN1prVlFaZTVqU3ZoQklCVC9PVENl?=
 =?utf-8?B?V3NlTUp6TU5INDVseUtFQi8xM2xrcXl5NkMrQXZ3T1ZSZFh1Tms4Vjl2WVFz?=
 =?utf-8?B?SnZJWFVNdytzcGxiWTVKNlhIUmJjeVRzZXIrSldIbzRzTkF4VEJiVlh6Z21P?=
 =?utf-8?B?aFg2RHIzdzhOeDN6ZEorNEQwVUh2WUJ2dmR6L0hocTZqNlJvZ28weHA1cHNq?=
 =?utf-8?B?Nm1FSW1LM1psUUUzTkROd1VZWlZrT1dWNkpnZGN4VzZ2bzZNZThLNTNCRUdI?=
 =?utf-8?B?MDhzRFduUDJKblRyL3UyS3RsNTAvQkYzNk9JNWZFVUdXK3BUZWdBcnU3dytt?=
 =?utf-8?B?ZlIwWVNjNCtxaFJCK2JiYWZ0NVg3bWpmOFFya1V6ajlaZGprSGtmWWhTT3Fi?=
 =?utf-8?B?Q1NOdVFkVk9TUEVMN0FOemtEWTczTWttZUVVNEJwcmVOdlRrNTN1a2RLSDU2?=
 =?utf-8?B?aC8wTFllTXl3NVFVYlRtR3o5cE5zeHJHZkFhY1NVSVJ0ZGhPaGoxTXdNbkdp?=
 =?utf-8?B?ekZmMmlLZDJNSllzWnBScERkOGRsV2JTeTEvTkhQYUdQdVY5aFY0MTNrVVRz?=
 =?utf-8?B?bkt1TzVVb0RKbC9KQllaZU1QbGwzUTFCVlhwdGN4Y29hQVpWNTIyVFcrMGpt?=
 =?utf-8?B?djFMWXBzcXZ2OTV3MmRPbVR2cTZoNG13K1p2NzUwcS9vRms5L0FIWjQ0ZHdh?=
 =?utf-8?B?N1RvUlRyNitnd3VBS24yUlVEMkd0QkNzODRlNW4rRU44ZG9qbVRUdGc5Ynoz?=
 =?utf-8?B?RUFucEhaTFZJOUZCc1FlZGpUOXBpMXBkR20rdmg5TFlBa29wRFdxWkF6dklQ?=
 =?utf-8?B?d1hlYTQ2dktsTVIvZHo5T1M1d1ZPWGgzd2lDMVF2RVFjc3YvckpoZUlIeU9j?=
 =?utf-8?B?dzhya29OOUQ1YkhFV1B0OENYdlBSOVBrcjhsZFV3NDI3Nzc2dmlDNlprdnN2?=
 =?utf-8?B?QTRMZVNTNEdrdC9uQkFqTTgrL3dscTlqc01tMTBRNC94RFk5dGdaY05tTWFN?=
 =?utf-8?B?SmtPUm1SQlEvSEREVmxMTVF5anlPc3pOKzkzQnZzaU81Z2lHSXo0eG1EeHM4?=
 =?utf-8?B?b3E0L1B0ZTc2aE5rZ1I5YkhqVnQ0aDZiY2x4cXVyRmo1eDVibGNyclpMdVNn?=
 =?utf-8?B?U0E4OUpOZmVTbC9GdVlRVTlSWUhTNmVpTFZMTEsxWldZUWUyT1FBaUo5L2Vt?=
 =?utf-8?B?aG16a2ZxQnpPVExtTEs3ckhCV2ZDbWRmZGZSdW8rUWlFSzRURTNaREZGazNW?=
 =?utf-8?B?RDVHZWZlZDVEKzVQL1lvR3k4OUplR3JEdE8za0ZaTHZIblRRWS9jMFRHa0dz?=
 =?utf-8?B?OG1rQzl2YXNWOUdFb0EzK0dDRW90RWN6QWwwZUVOWnFVOW9MZWpTN253UE5P?=
 =?utf-8?B?Yk9ESjl0WW9ZWUlLd3lUMnFVdXhlTVgraGV1TzRSSHlxbDZpbmdValcwRlpM?=
 =?utf-8?Q?Xa1Ye3zcsY7J6m5U=3D?=
X-Exchange-RoutingPolicyChecked: q2BPDZRcoQsHTeYp56KjijhJEiqZWAvYT6N9VhPKXnPVPH5boX98icHCjUIgvyG3lLWAZNnkZS8fOt5kvbUEPiSXbjCZY2kxmkNkrjsauEC3ahxwXr1h4i4CMs3So9r1P3P/xGmS1J+lhLWPn63V4NrQLziT+yk54hTMPKtJR2ny0YuLjd2hxXNGQhQBlbtYLM0O8iXhrE1l0Ad7I7sMv9p7rNgGNkdTWqfGIGMZSkyqfUyZkXKRLKNYAqTZOkE8sgMHE0dTg/dBL/pD7TENng5KLqjfwlqE9V9ZkhGFulETDCE73RjLFTj1jWKVqjJ0KizgX36v4nAJ9tBcuU8v8g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d59db89-e292-4c74-0234-08de7dc82447
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 10:39:29.1575 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Y00DbdQjI+/46S30lB3KeT/K0xzSR76Es6mLuU38JZ99Gm2eniJmjmGLtoYzgLNJNIJXQO8U5ucBPaC3JtOPSspXR0TOX5tHUn7F3wubEE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8445
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773052775; x=1804588775;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nLaWz/0CGobm5blodsL4MXU9NDPE2ffqtt6VgPsEE+0=;
 b=F8HPbpIU65ylXJIzAudxzYK7UbyuqfrTHLjv4SxdIoGohw2bY95LZ7cC
 opqb+ZY0u82Np0ymv/6oI5xwsEjkWbaV2KDjCiHDknujgXX3jxeKdJpXg
 x0eu72i55OsrK4Jze6nb2wSXEVsTG+TsCaoD+Ve2U8jYeLYsKQl62XZwv
 68ExFHfdv31qyLmlSt5z+LOHpUPDRGzQbJ/9rArjs18PPEshxLFbdPtMg
 tN885SAMSOgYXCa5tSuGx7MWMMAW0E+GItHOvOECOqCAktupJ/CVMzqXR
 7wJ1mLGi9so1t5xkUNKHwg0+amxu/PDW3Z7WfgXKV0F6q/5bKMzzNUVnj
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F8HPbpIU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 3/5] igc: Don't reset the hardware on
 suspend path
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
X-Rspamd-Queue-Id: 4B0EA2373CD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mika.westerberg@linux.intel.com,m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:vinicius.gomes@intel.com,m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,kernel.org,gmail.com,linux.intel.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Action: no action



On 24/02/2026 13:10, Mika Westerberg wrote:
> Commit c01163dbd1b8 ("PCI/PM: Always disable PTM for all devices during
> suspend") made the PCI core to suspend (disable) PTM before driver
> suspend hooks are called. In case of igc what happens is that on suspend
> path PCI core calls pci_suspend_ptm() then igc suspend hook that calls
> igc_down() that ends up calling igc_ptp_reset() (which according to the
> comment is actually needed for re-enabling the device). Anyways that
> function also poll IGC_PTM_STAT that will end up timing out because PTM
> is already disabled:
> 
>    [  160.716119] igc 0000:03:00.0 enp3s0: Timeout reading IGC_PTM_STAT register
> 
> There should be no reason resetting the hardware on suspend path so fix
> this by avoiding the reset.
> 
> Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  2 +-
>   drivers/net/ethernet/intel/igc/igc_ethtool.c |  6 +++---
>   drivers/net/ethernet/intel/igc/igc_main.c    | 13 +++++++------
>   3 files changed, 11 insertions(+), 10 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
