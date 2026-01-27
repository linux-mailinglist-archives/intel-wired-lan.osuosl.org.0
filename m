Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLeBGwuUeGmxrAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 11:31:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8212F92D27
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 11:31:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36C1140769;
	Tue, 27 Jan 2026 10:31:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V6cxf-tP6wQx; Tue, 27 Jan 2026 10:31:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BCD340794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769509896;
	bh=fTqhfE/uH6T1AQXFfqw/r79y+oUokqcW1BxReV6SoHY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V75QDc/cnNeRN7EQoz/SfH+uIajO+B8PZVfwDWIdzsGs0s3i90SjviLpVsK9Q139t
	 jJwwEKjQZF+YQFF9WYZg6BopZGPFueGztRgO6Yu3+a4zoRKbggKxmmbfz5um2MfImZ
	 35iSTJ41OJOY2iY6AYC2Y7OMp42SmsSTKbH/a6ii1nx3fyTJ3dsDMoMzJihPjTjP2m
	 J09PVDWx2TjRbbtCuI9oS4Vte9OVR5Q45xL+KnPj8kokrFs/3GSDHbI+NyE/96/D1y
	 dR/QBrFTwi6TgIQ+guhskXvPCgtvCUHVIg6O1cpEWbUZsT3WroBcYDJE+EkNxH23qo
	 ksQ0e5QweT63w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BCD340794;
	Tue, 27 Jan 2026 10:31:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CD6DF23E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 10:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD40360F57
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 10:31:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DcEB61nY0B2o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 10:31:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 97ADF60EFC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97ADF60EFC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97ADF60EFC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 10:31:33 +0000 (UTC)
X-CSE-ConnectionGUID: TiLaBIRET1CUCwPmRll4qA==
X-CSE-MsgGUID: x+Ttc0seRr27ICqtqc/GPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="93359805"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="93359805"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 02:31:33 -0800
X-CSE-ConnectionGUID: JZ1nI6WcRsmHd6QWXmF23w==
X-CSE-MsgGUID: LdnEFwOHTa+bkEQl7rE6SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="212801123"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 02:31:32 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 02:31:31 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 02:31:31 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.67) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 02:31:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I20E1ZItXcKKGyu0Kv2nXzDrAG17jh3Z0yT3kVSGLrmJWqe7yaNeukxzko4DFT6B4OwApVSAagc59WTpxwiuuBUb2V1bUD8ATnmVl70SeZB1olJBO3IKRtA9N7Ys/h/wJ//WqfkY30YQZyXBop94ryxi0ADp83YO944PQbdvRC29cYHeXGl3iLx1FF0Nm+ynEFPSCe1Zk0JZtTXmett81zkwxAEOEiMENUHCkIX7mBWe9RyqM3H+69ViG22Qc5cxtj4hiBNXxVx4NIm3cDhehGjYr+by4SffOJkdFZaIATIKOO0SeQiqpBtIcHIIN2pIj8dJy7NVyugsvf4fCB58oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fTqhfE/uH6T1AQXFfqw/r79y+oUokqcW1BxReV6SoHY=;
 b=Y4J4RQu7PMUdPBdnvgStUnDRKBMfkdh+n/5o4hGWJnPiQ1CqVdTS89opzeUh+p/9xN/uPDSfoTRfN2WjGFjMhIdFTP0PBzAWKnecgS8ea/1rSqmW8PSXRN+IN2mUB4ZUWNphs8ByR58Keo0Zik3g5YPyjq+gvtdLeK21iTPhkuYp4OlL4EWSTtXu2nbOioyBUt7yiMJPQPC2iAIqK/5b08MOcQg6Xq+BLCsVHiRHgUQuvkNsBwXcCUYMe1CXc/PgFchSfivhHsNBwUeIP7J3GLROFPEMxg+ppe3rZoOvaLrg6C4LzwogkZj3wulDVIOro+6+d8SxQqH6onzoB3Fk7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8308.namprd11.prod.outlook.com (2603:10b6:930:b9::19)
 by PH7PR11MB8571.namprd11.prod.outlook.com (2603:10b6:510:2fd::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 10:31:27 +0000
Received: from CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::3ee3:beda:5704:d7a4]) by CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::3ee3:beda:5704:d7a4%6]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 10:31:27 +0000
Message-ID: <f41330d8-f686-4e04-844e-86c37351ad74@intel.com>
Date: Tue, 27 Jan 2026 11:31:19 +0100
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>, 
 <aleksandr.loktionov@intel.com>
CC: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <michal.swiatkowski@linux.intel.com>
References: <20260120103440.892326-1-jakub.slepecki@intel.com>
 <20260120103440.892326-4-jakub.slepecki@intel.com>
 <73cfe48b-cb57-4698-8166-c3cc587a45d2@intel.com>
Content-Language: en-US
From: Jakub Slepecki <jakub.slepecki@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <73cfe48b-cb57-4698-8166-c3cc587a45d2@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1P190CA0001.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::14) To CYYPR11MB8308.namprd11.prod.outlook.com
 (2603:10b6:930:b9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8308:EE_|PH7PR11MB8571:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f7e5d98-59ff-4bae-0963-08de5d8f3a50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?REFjVWhzTVRpblpTWmNrWHgvSmZXRWZ5aHdoTS9PNys0QmgzeDRWdGhBZXRB?=
 =?utf-8?B?MEFKT1lCMjJCOG5QMVg3TXY5ZnJEbWxIQTZRVzBRdm1Td2RNekxJY3lDeEQ4?=
 =?utf-8?B?aStURVlNa01ib05tb3VYT3AwRHNxbG10QnA3b0NPRWkrTG95T3hKZ05lNy9l?=
 =?utf-8?B?SGJaUm1OYWcwYVluOVNWVjRabGVMTnpSUWpnY0phT2RqS3QwVXZGSytZTldo?=
 =?utf-8?B?NDdtdUQzc1JLYWU3REJvQktiaVdBT0duc1l6RU9ZMFpoLzJIOWZlUm5QNmhN?=
 =?utf-8?B?bVlESHp0MlB4VSt4K1gyTm15WHpoNDFOZy83ckhVR2VrOS9jNEFjMjA1Ym9s?=
 =?utf-8?B?NkQ3STRHWEU3NlcrakYyV3NQMFVsNkNRcktCYzVNTGswaklIOXIrWkovVlds?=
 =?utf-8?B?bXlQanFUeFF1WXJUc0ZaejZtcHNOVXppWElrQ1luTGRyUFpNK2pQRndyaG9C?=
 =?utf-8?B?TXp6R3o4K0U4Y01kWFpEQnNMd3kvY0psb0ZPRzB4eDJLd1RPUFo1QzE0ck9L?=
 =?utf-8?B?RnhPTmp3YWhLaktRK3lhZmZPb2pXM3hBOFZGTUtsNmJiSXk2bGFpalJGVzUw?=
 =?utf-8?B?eVFYT1MwZ0NHcStDSTF5QjV0OXNscHZaZzhUb3VYWG93dW9jLzNhdVV1dDJO?=
 =?utf-8?B?U3lhdEtNcTRWamZiQUczNUNzaUVoc1VyR2pNZ2FDcCtmQUNkS2xMMUxGaUtQ?=
 =?utf-8?B?dHZsdDlLTEhmVVBlY2o3d0NRamYwR0phS3phVUU2SUpXNE4zanp1WkdscnZT?=
 =?utf-8?B?SjMwTm5tZWNvSmlsWC9VV0t1ZFVCRVhKbk4xcXRSZllzdXpibllldVVIOTNR?=
 =?utf-8?B?ekcxV2M4RlhQL1RNMWc0VzhpTVJLNkxwVDZBdzFobXFWZnpLS2x6d01iRVpV?=
 =?utf-8?B?ZituQ0lENHR0cTIzWWNwdnJ3YXlGNnZpdmlxNFBMdFFBQUFKNlYreFE3VnRN?=
 =?utf-8?B?MkRRMkFtQko0dXpIbjBxYTdGaGZ2NTBsMytZWnNmMkI1M0JkMHdEeEZlZmVu?=
 =?utf-8?B?MVkxd3oxbDllOFMzU0tqRFN5b1k4L1J0eGtuRWpLTTFpb3JqVWdPTzA5RlVD?=
 =?utf-8?B?WXczUm84QUIvdWxXUTYrWjh2OXNlT3RESVF1ZXBscjVwYjh0YjBsaDQwUlZs?=
 =?utf-8?B?RDlQUDhudEZBNi8xa2lCZ1hhT04zQTRvRm5nekpOME9kemFtTjlucVMyMkZh?=
 =?utf-8?B?U25zZzczQWhsaGJQVy9DUElFTVVKYi8vSkFVdldKc3M3UW1MRlIwQmltQUJF?=
 =?utf-8?B?Rm9YcVphT2NUaXNMQ3h4QUZ4T1ZXOG8xWXdzd3BBY3J2b1kvc05pYTQxbytw?=
 =?utf-8?B?MDRNMnBaRnEzVWhRYmFhZEdwUlJRTDVvOTU5WlpCTTlPN0plZmV0VTdUTlhR?=
 =?utf-8?B?S1FMemgwaWpwblEvK1NFVjdiM09YTEtTWFlQWG5oSWhOODZtY1BVSmVnSm82?=
 =?utf-8?B?Nng0cGN2U29yOXROL215LzNjeWtFK0c2eDlweG1qVnY2cGM3ZHNmWUFTK0RJ?=
 =?utf-8?B?Nnh2SWRPY1JxUEpIeWd0Q1d3MStEZGlqTlRMeFhsSm5ycVUyYmlxeWVKWWth?=
 =?utf-8?B?V2VTMnR3dnFROUJsTTlHa2hHNmdtRlpZMTNNWkRGd3JQeGVPc3lrSE1qUjd2?=
 =?utf-8?B?SlY5WXFkZW1rWEZEQ3NhWHZjdXIyaVYyUDdmemtjWnRNLzgyZlpSWnpyU25u?=
 =?utf-8?B?OHpiTFFFcHQ1YnRac2RBQ0dOQXpKck5JRHZ5d2x1a3lOK0dYc2dNb3JwNFpr?=
 =?utf-8?B?NUlZbzY4SEdoakFLUWlRbjQ5aktlQUtvWHhFZTgxcmtGTnZldWtscHd2OFVE?=
 =?utf-8?B?QWQrcE0yYXB3eHNWY1dWazZlQ2RUeUJpOUZNanI4WHViYVpUSGQ1Sjc3WmlM?=
 =?utf-8?B?anhEM2puTTl1amt6N1h2cHdWR1ZEemh3UnU3aG41cEMxUUNoMWg0TnhETWxK?=
 =?utf-8?B?dUZaVGNiNWp0akl6TldYb3Z0dHNaOG95d1l1NGNJL08ra1JKbUZ2UWVUeE5l?=
 =?utf-8?B?cm5VK0E1MXoxdVNIb3REaHB0Nzk4UW1pbmUxTER5TCtPSDdKN1NrNllHVjNQ?=
 =?utf-8?B?TzFxUHFsMGVBU3pxY2dFa3JvaDUwdUI2d3ZKWVZNMGlOMDZjMnRFOGFhVGdN?=
 =?utf-8?Q?Izh8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8308.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTVlcGZnbTNRREVub084Qit4bU9oVytEQkZhNTlmTWxVM1A0YTlDdXZyaWlB?=
 =?utf-8?B?amRYQWgvMk1lZnpzNlBjNnp5UU5jMFUyeG5ZTmd5U3VGVUFoRXBqOWc5YkhY?=
 =?utf-8?B?VmI2WkR4dE9Sd0pWb0NEQ0ovWVlYVFJ1ZThsN2ZBVTlONW8wUkoxaUw5V0VD?=
 =?utf-8?B?bHc2bTlOckc0SmJObVpOdUJjci9XL0VqQVlGR3FsQTJVYnVqSS9pejlhUE1X?=
 =?utf-8?B?Y0ppUlNhNTBYanNXOE5ZQVZQd0E2RkJrb0RRRmNxQm1VMnh6SzFNbWZRUUNM?=
 =?utf-8?B?YWpYMXgveGVjSnp5UDRCQ3MxeDQrWHZjTSt5RzIyZTQxRTdGM0ZRRTRBbVIw?=
 =?utf-8?B?Z3EzYnIyOWJteStpZ1ZLZkVQUHJqZUcrRXZDVk41ZGJGRFlBM0tHVkxqbko3?=
 =?utf-8?B?THFrRC9NUGtPSUJVSXE5aHRzTDB4SnUrRGR6OHN6QStnc1NEaVl3Q1Zacm5z?=
 =?utf-8?B?UmJkYXREa0dST29EdVJvVEo5UERCVEV2M3dXK3d4dHFta09LLzdVREFTRVdw?=
 =?utf-8?B?RzA1M09heTBJYWdkTGZZd3NVOVo2YUZWa2t0aldOQjhNR0hpKy94UmtaSnBU?=
 =?utf-8?B?UzR0WGZwOHk5VlBKUk5YVlVDU1BXelA0TGl5dm5NQnZlakpMa0x0d2phN215?=
 =?utf-8?B?dzMzV2c4NFo1OTloQ1RidTNRc3VKYzIzODczQVN1VGUyaDZJWEh5RUY3OTJm?=
 =?utf-8?B?dHhxUk5ZUHZjT09qQWtaVnZhaC9BMUVmZHBKR0pPYVJPNmdMQW9kRTJHZWJ6?=
 =?utf-8?B?ZUFEYlpSRzZjcU80TnM0QmpQT1JMbzhvb1ZFc0lIUU05SUpVU1htQWExSWho?=
 =?utf-8?B?WTRmallGVU5RT0t5bjRBWm5mS0ZWcVoxV3hhd1VPQlBFdnljLzMyblE0Uitn?=
 =?utf-8?B?U2FsTEF5ZEhKUlIyQ1ZWaWhGZnIzME5YTVI1VEQwUitSNldMZkJGSlNYcEhQ?=
 =?utf-8?B?OEZrOTFUdUdYYzE4OVJQaTZPODYyWmpNblNoNHNQTTRBQXJJNnZqSmlTZFpi?=
 =?utf-8?B?WFJyc0w4VVUwMjdaWS8vejBwS2Urb3FiLzdKTkUxbUYxZzJmL0xmbFBUb2hU?=
 =?utf-8?B?T2dqcmtTakxVLzFWUUUyZHU0QjBpVUdEN2xsVGVkU0JIL3RZUnhKbUpjeVVx?=
 =?utf-8?B?dHdQemFNclRuNDhib3dnTHdTUWtjLy9NVG4wc2JQZVdhS05BV3pNaGdrN09W?=
 =?utf-8?B?Rmp0bkkrY0poUzlKeGVMUnlxRllxdkxRRE5VSmx4djBzVHIwdzI4eGdMdHlE?=
 =?utf-8?B?V3Y3aDhBRXVEc0hiOFVObmg5WmZrajZVMWE5eUdHWEZtOUcxQVFrMHA1d2s5?=
 =?utf-8?B?S1JCdldMekp4UVI3UGM2YXZ4Q2RKYkxpcDZ4d3pudDRTS1Y1bkFxcVNwOXZK?=
 =?utf-8?B?SEllNUFCOVY5RXM3N1B4WlB2RjNibjJUcjQ3ZjJNTElGMVQ3NXQxdTdpZ1M0?=
 =?utf-8?B?dTB1ZHVXaGMrek1lYW9TdFF3d2pxSG5uYkZEOG1sVGJXS1YzTERFNVZ2WXZM?=
 =?utf-8?B?Z3BRWC9Yb2k0aXhCNms1d1FjbmZPdlBEb0ZSbU1xTlcxS2tlM1Fmckx3U2RR?=
 =?utf-8?B?eVloaHMremZYTURIQ0tjekVrUW0zVVVpOXh3UXhpZ2N1aGNYdXhwTEwvSGl1?=
 =?utf-8?B?M0dkR0UxSHBnN2tpdmpxL25lNDE4V3RGZ2V6YnBzc0EwTktXRnh4SjlBZ2Qw?=
 =?utf-8?B?ck9QZkNkdUE0VEp0NTIvUHRVSzR6ZWRtaURRay9qUXhtdldvbVNiSkd5VDlx?=
 =?utf-8?B?MWk1WUpNQkdXeEUvUUpBVlNTd0U2ZjhaMXkrbndwL2pEeDdOWUJuRDdxSTJV?=
 =?utf-8?B?TEZ5VlpRRE5XcjNldVUrUFZFQWJORVhvS0lhZE1tRTlVb1Z0Tzl3a2x4UXVh?=
 =?utf-8?B?cWsyTkRpT0Jnb0o3RytjSXJaaDJ3ODZhVzNGWlZOYzIzTXp4VTFHR1B3Z1J1?=
 =?utf-8?B?QUNZTGcrbk5Ec2syZ245UFdpQWUxaFdrWnBwc1VyQzI4aDhlcFgxWGtHUk0y?=
 =?utf-8?B?REZPRnRLbmg0bmRlcytGRnREMk5DSU1lSE5BUk5BRTV6Nlc1QjcrQk9kRmtG?=
 =?utf-8?B?Z3dlb3NYMjU3Q0VPZzM2T0RQNDh2NmFMaC9kdEZYbEpYY3VrMG9jeGt2ZmR0?=
 =?utf-8?B?M3NwNWxIQ2hSYmlIbWd2a0NiQUllUW5Kb2FnaUhKcEFJVkNVcDZneFhJUmM5?=
 =?utf-8?B?Q0srWElQYzFhaitSaWdueVFGVlJjNXQ5OGJYM0p0VFl2MlFsZDc2b2V5cXVx?=
 =?utf-8?B?bUJiT2pzSjIzbHllTVJMaWZ2a2Uzdm1iZWwxby9nNDdFcXdWSGEyZWJlbisy?=
 =?utf-8?B?K2hnTDdaUEkwQzk1a04yLytkaUJkdlpLR2pOS21UbVVlUkljSjU2QT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f7e5d98-59ff-4bae-0963-08de5d8f3a50
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8308.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 10:31:27.4278 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rCeEYNiQOFqNXXRDGJOYNsMG9ibBLrm8/yFiG73UFrW86x0KJXYQK7/BAETcNqIXW7x96hlM/jA8U4sY8KA60v+ucQRi7Wn5loZHs6B208A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8571
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769509894; x=1801045894;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+FAJw7tTcIlHDE4zmxslYJUBnzzk+oixj1LacD17wpo=;
 b=cFSQYRVXlCrxyXf42jEFB5BBrx9NxYjnTqLlvJ3MvU8oYr8b6M0fA2G0
 Xin+3UhhCLLjc4i5NBOyadkjucwBBIXj9hsiCWC5VWrn7nwGNGhF2OmL/
 +VOUasUp/6e8hWsXRrNiOK0Xo6XIBFpumTanSZqngxZQHPvG1xZZwH5BI
 e9/Kd7C4zWqcQWIFO3rRupN/bP1g/DPIDgao9w0AQfZlE6+MqyLQB4piJ
 SmkX88NORZipxPfzlavnTCmKeg6ah0rDrHOa5M4YZYGj2yNHZGBiapfUn
 deNdCTOvDSLgEkXoCKDafCqBEZaFojYKVbUlPJCkT65glYOoD0eIRjG2f
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cFSQYRVX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/8] ice: do not check for
 zero mac when creating mac filters
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:michal.swiatkowski@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jakub.slepecki@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakub.slepecki@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 8212F92D27
X-Rspamd-Action: no action

On 2026-01-27 0:21, Tony Nguyen wrote:
>> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
>> index 0275e2910c6b..04e5d653efce 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
>> @@ -3648,7 +3648,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
>>           u16 hw_vsi_id;
>>           err = ice_fltr_mac_address(addr, &m_list_itr->fltr_info);
>> -        if (err || is_zero_ether_addr(addr))
> 
> This is introduced in the previous patch; it would be better to remove it in the original patch.

Previous patch moves it from

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 84848f0123e7..0275e2910c6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3634,17 +3660,19 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
  		if (m_list_itr->fltr_info.src_id != ICE_SRC_ID_VSI)
  			return -EINVAL;
  		m_list_itr->fltr_info.src = hw_vsi_id;
-		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
-		    is_zero_ether_addr(add))
  			return -EINVAL;
...

here, as a call to is_zero_ether_addr(), to the chunk right above, in

@@ -3614,16 +3637,19 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle)
  int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
  {
  	struct ice_fltr_list_entry *m_list_itr;
-	int status = 0;
+	int err;
  
  	if (!m_list || !hw)
  		return -EINVAL;
  
  	list_for_each_entry(m_list_itr, m_list, list_entry) {
-		u8 *add = &m_list_itr->fltr_info.l_data.mac.mac_addr[0];
+		u8 addr[ETH_ALEN];
  		u16 vsi_handle;
  		u16 hw_vsi_id;
  
+		err = ice_fltr_mac_address(addr, &m_list_itr->fltr_info);
+		if (err || is_zero_ether_addr(addr))
+			return -EINVAL;
...

here, same call.

The intention of the previous patch is to allow adding mac,vlan filters.
Check is removed separately to make it visible.  Alternative is hiding
it somewhere in two active chunks and in a long commit message.  I think
this fits well into "separate each logical change into a separate patch."

> Also, AI Review says:
> 
> The is_zero_ether_addr(addr) check was removed in line 3651, relying on the claim that ice_fltr_mac_address() performs this validation. However, the helper function only extracts the MAC address and validates the lookup type—it does NOT validate against zero addresses.

Removal is a result of internal discussion about ice_add_mac() and
ice_fltr_mac_address() using zero addresses to mark errors.  Reading
through the comments now does not make me convinced it's the best way.
As long as errors are reported via int returns, I think the zero address
check can act as a sanity check.  AFAIK, all calls that may result in
ice_add_mac() currently are guarded by is_valid_ether_addr().

As for the phrasing in the commit message.  That's my mistake and if the
patch remains, I'll correct this.  This version of this patch should
not say "previously assumed zero-address cases."

I'd prefer to remove this patch in v4.

> Thanks,
> Tony

Thank you!
