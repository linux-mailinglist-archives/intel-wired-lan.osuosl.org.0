Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C0EA654A2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 15:58:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 677D540758;
	Mon, 17 Mar 2025 14:58:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id coIgmwHKMgs6; Mon, 17 Mar 2025 14:58:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BD7E40774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742223516;
	bh=Rf7Gzt+rDfBkLrPnatgHv2pO479efeMvgKutFiWip0Q=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rz6FoOGy985pWFmEkxO/w748R7xbXzBJry8kzF0TQPnuytKT9WJ5ainSR6zMPs0Nb
	 d38x1cdKBNdf1+tguj5vT01sD+Y+exFYN93qV7uKxkw4YZASQ/4E4Rpg+1s0lZce9X
	 mAXWfjYgDacxxArQ1cj+/DPvKVWAq1vwpKDUPZP+RlifnLGmPbAZ1TV9L3R7AaXYIc
	 DjqLwsqaeOx1vNhHbvEufX5t5yqAdajEqP+DY59SoRUjYEc4uMqvqp8S6DygjZXfAk
	 rdLKRtcsxlw4Rga99h19vsF3t/sAkaqFCLbC0n8sRbU+QgSthibKmv6zjl6UkB7kME
	 7fufzz8qNFcew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BD7E40774;
	Mon, 17 Mar 2025 14:58:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3BEA012E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 14:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2ABFC40758
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 14:58:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YKc2k8i0CcnL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 14:58:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F24E240756
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F24E240756
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F24E240756
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 14:58:32 +0000 (UTC)
X-CSE-ConnectionGUID: 9G0geUFwQf+NhyIATnl0bg==
X-CSE-MsgGUID: YXxzg5TVSJOqMeEho/ubHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="53987505"
X-IronPort-AV: E=Sophos;i="6.14,254,1736841600"; d="scan'208";a="53987505"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 07:58:24 -0700
X-CSE-ConnectionGUID: hfw2pNDHRtSIBRBuQHMngg==
X-CSE-MsgGUID: GsMenZbWQWiltNPOMTxsJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,254,1736841600"; d="scan'208";a="122142636"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Mar 2025 07:58:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 17 Mar 2025 07:58:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Mar 2025 07:58:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Mar 2025 07:58:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qGWwsyAxBW5UpStAoHtiDmaVIU4b57wg9la2T7H1TxcGR/1vjC4oHiG6E2WAkUfPyyvttWJA23aTyvvIADJcK3Q8KfzOBl0IroyAH/KdFTlIw5Rk4xSHd9moBIZRQTxP75Zh26gmtjkPcAJzg1m5ViWxOmXkJq+TlVWZNC3H1TvWylclHreogwa2QkSO9YNX9VLHzC3gaFXwVmY/MTgqxqx+v80OnUq1VF33k1yLHb2aVMn+Yjfu6QCSDR5ggAA8JQkmgoCzmfSvxg2s7g6vZiMzzgN2NVi28NzSc6By0azLJS5Kls+tjkiA370Dnh2o+L+bGs2Gf0ypfdQkfvnooQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rf7Gzt+rDfBkLrPnatgHv2pO479efeMvgKutFiWip0Q=;
 b=q5GVrQMJalGBa6+il5iZc2XLDkBdFksWdcjuQDEzjcgIzGDKlc4Iekn4JpRaMKKkDNOy1DnGFIcC+H+Ywy7JrjzYJpz6eUr/Viwp/EOF2OxXrNR3rj/PGuoko1WIHPDyKqtF2CtdQoyPrht0dYPHyNcGe/dq+EvuDixTR4JiRkUDIaAwI9szthPLkoBZ//65hu7oO3CqKngJYa+yMIFdZlt17uMznWXhAkAjNMR/AjDGVG6lhw3tTdrNBZaV+qBC7PIKxeV+xHWjG+fVQXGaLYh0y0WURPAF2+srjV6xugd4ndHKnmaNuBVRnS+bzWCxHzrkeHCtRCTkVg8PoGJk4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB6395.namprd11.prod.outlook.com (2603:10b6:208:3ac::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Mon, 17 Mar
 2025 14:58:18 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8534.031; Mon, 17 Mar 2025
 14:58:18 +0000
Message-ID: <428cc7b6-fc80-4028-a9bb-ce65646005f5@intel.com>
Date: Mon, 17 Mar 2025 15:58:12 +0100
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-13-aleksander.lobakin@intel.com>
 <Z8r/0NOkovItGD1E@boxer>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <Z8r/0NOkovItGD1E@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI2P293CA0015.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::9) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB6395:EE_
X-MS-Office365-Filtering-Correlation-Id: 7041ff0f-d0a5-40f0-f4fb-08dd656426f0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YTMrTnJwbmR5dHZkbVlabHhEMVRTZ09YOVV0N2JqUlRodG1INmozeUkvb2hO?=
 =?utf-8?B?cy80T3lsNHhRVDJlaHE1NWhzR3V0YnJOQ1hjeGF6cnpLcGlrK0pDQmdPYmZ2?=
 =?utf-8?B?b3cwcEJDNmFWNm41cjFML3NaWkVuY0YvWGhUbjdTSUk2QjlXVjR4UVRybHNI?=
 =?utf-8?B?VnRMaEJvdmZ2RGUzeDFZcis4WjdTMWJnZUtPdlNaaTZ0a2JmWjhJb3NBYkFW?=
 =?utf-8?B?azlZWjZSZVhQbzlHb3NNNFRGT3VVUUhUZ0lLOWFodmlVQ2NaNVJZQzA4MWFi?=
 =?utf-8?B?RmNBSUJacVgyQVpNZ3h6aHJTZzNiOXY5cDhPS1VoMFVzUHJ4NlpXdnF1K2hV?=
 =?utf-8?B?ZEhtMEUvVDI3RGpjZndvT2Nab2RWWVorSndPYlJFYzlsSG5iT1NPWGhiamJX?=
 =?utf-8?B?bFFNcjhzS0FxUi9qM1ZHZTMxOGtPM3UwS3h1ZDA0OFZVSGxGQ2JnNlB3UG1P?=
 =?utf-8?B?TWVEQ3dFdU50Wi9JOVU0RHJVMk1YeHdiRlU5RW9qK3d6MDZxb2RCckx2akxZ?=
 =?utf-8?B?WGtUTStidmY0RVNQTnJhTUNHZW5LSitEeTU0VkNDVW8xdzNQMFBoOHhha0s5?=
 =?utf-8?B?NDJOdDNFMTlRWUlObTcyYVdSaEVlK1ppeEl4S3VKQ3FNK2M0blIyN2lwWmlN?=
 =?utf-8?B?Z29vRGRFY1RXSldkNGpoLzVucmVqYWxMc3gwVzE3SDhjVVVDeTlKK2d1dXRP?=
 =?utf-8?B?cWdEM3dRUTNpZkdlZXBsRnFiU0luNDExaUVBaDlhVUhCL3BoRmswR0RjV0pN?=
 =?utf-8?B?TGdCVUtkNmJDZ0dBRWZwc3hjMW4xZFJzVHpBZXhKN2h5ZjhBR21mdHUxZ2pE?=
 =?utf-8?B?cmRLVmFFOE96QjZpZUs1dnQ3eHV4eDJwT3VsYWxrcU5FVkhDaFFXMi83UXJr?=
 =?utf-8?B?TzVVRDVQWWlzeHVNNHdsSUh0UTNjajdSb0V6Z3B1ODcxK0h4d0pwMnRKQUR3?=
 =?utf-8?B?UGZBdzJpZ2FYQ0pFaWVMYnRDUlowRGM3SHBnZWNaZUxONUhVZjJrYXJEK29L?=
 =?utf-8?B?ZGJDNVc2UTBnT01hbDVSNEwzamRTMFpFVzNsVElxV0RMMjVVcnJwU0FIaUpl?=
 =?utf-8?B?UkQycUxBdzZtTFd3VU1kWXNhVmdlQXRkRFJTbE5oaXl6UFRvODVlQmhvN0Rr?=
 =?utf-8?B?bW1keXpIUWNjbTgrS0N1d28zekpEdXBWbWZMS1lQNmNUZXdhamRjeWI2Y0kz?=
 =?utf-8?B?MnBEeU16N3pjZ1N2ZHRtekZrWVphY1ZkN3FacGxJNDVQMEFQVnkvQkVxaThX?=
 =?utf-8?B?NWduakYwRVdIN0J6OUR1Y3BkbzRLcmcxbTE2T0gxbDFuRFJrZmViR09Ha2JB?=
 =?utf-8?B?eUtodVhjT0pCWnpHVnQ4YVcyRE5RL1hxUU9ORUpEVXdPRlZuVWtYVk1BY1dh?=
 =?utf-8?B?TFVXVHhFR05kUXpZN3U1cXA1eW9ISWY0aDlpNllOL2pOUWNZZ0lsZHRBNk93?=
 =?utf-8?B?SWlGbUpoYTFmTGwyWHRDdkpXd21hWE5RT3g2c21SR3MySFdBb0JhbU5uZGRL?=
 =?utf-8?B?dU85TGtFNFQ1Z2Y3QVQvQSsvUUZoRVk1ZjRLR3Z3SkVORC91U2xUVkZHQ3g1?=
 =?utf-8?B?cC9YVWFUTkRUb2xaM0x3cEh1L2JoMEVpWTI3ZmlQVDNtNktpYzVxZ3FIaUND?=
 =?utf-8?B?dnNhZ09xWUtrVVpiUmNFenJ4a2MxSGtTL0xBbXljS01kM2hBRzZTRmdHVDgz?=
 =?utf-8?B?OTIwQlJ3SDYweGlUUVR3ZG9SVXZ6TkMyTkZVbTIrWktqNDAyeGFCNDVrYlFY?=
 =?utf-8?B?SFZYY0JjWjVueWZjT0VyOTdMR0cvNjdJME5ydTdqcnJxSjMxWjRYR05DYnAy?=
 =?utf-8?B?ZEhuMXFPcUVHaFhpK3V1d1pUZHBIOEdFbVcyUTNleHpmTnNWWGdXcFR5T041?=
 =?utf-8?Q?+hUFeTDPPk7fC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L01HdFl1am9QOHYyUXpUM21Yc0YrT0NOS0lPU0FSVFI5NjlnTEdGS3ZsaDZY?=
 =?utf-8?B?SWlzR2JSd1Y3VlNmcENSdVlMUnhER2xNZHJ3b01DWlZ1dFMxUU5mZzN4aXA0?=
 =?utf-8?B?MVd5c1ZVQjIzNGFaa3NPN1V2VityT25vcVpYZzNFMG1UU0xWeGdzZ0ZmMlJl?=
 =?utf-8?B?NWRzUVhsTWorTkU3a0JrNUVNY0Z3MmF1SDZSWDBOUEhYUkJ6UHQ0dXFHa3V3?=
 =?utf-8?B?QzE4dUg2K01rV3lTeUFrUGdWWTVJcm9Xa20veUhxNTcyMlJjYytxb3hJaVZi?=
 =?utf-8?B?dXdWcGI4L1pGZWdJcHRYaElLK0Z5c3pFdGdaZFdSYVJCUG9VOUZHQi9nWElC?=
 =?utf-8?B?VzNnSWd6dlZ5djdWOU9iMFdZYzF5MzEwNHFKSGRBL0hEN1ZnYzNScmZDT21M?=
 =?utf-8?B?c3hsb2FmNGJ2RDB3YnYvZDl4MWVueFQ1a3dQUnhGc01DWFBsTU9Jc2pzMHFX?=
 =?utf-8?B?Qms1alVTVDRkT0lXclJzUG1EcnFEY2E4SFBXNUdCdnU1T1JRYm1zM25DMjVz?=
 =?utf-8?B?WmdOVisxbDVDY1BNMWpMSXFXQzJFSmlUWmhpY1pWN1hDZFhvR2t5NEwrWnBy?=
 =?utf-8?B?R1RCM3I2QzhKY0tiaEw5b0JFc0VESGZsVUM3R0dtSWkzK3hRS04vT045R2Rv?=
 =?utf-8?B?eEt6UkZyNXBFTkpHNThaNDJVL2xNYVh1akt0RXV1NWVQRmNOaGJpT2xUVW5n?=
 =?utf-8?B?TzRGVkJKdjVDSjVna09vMjMvUFBSRXdZMitFVFF0Mk0zWVA1ZDdWWnc4V2N4?=
 =?utf-8?B?MHhpcEdkdVpWcDk2TTUyVDYyZ1EyM20rbk1FMnBVZFdlbE9UYTVLMWltYVl2?=
 =?utf-8?B?TVZNQ2Uwb1hBYnhVbVJ6MjZibmxoOCtRcHdRVWkwSjZaYTJhZE1McTZ0UG4w?=
 =?utf-8?B?dlhyWHdSODZ0N2EveHNTdkl2U0doTTc0ckQvUGF3S2M5YXhYV1gwQlVpUnhw?=
 =?utf-8?B?SmJ1eDczV1U2YjAxdXBGei8xd3dxQ3FBQlBuNGJmRUlpSTVDSTk4RXB3L04z?=
 =?utf-8?B?SDc1czh2c05WY3pZTWp0d1VNaWRvcVpwcEc1MEVueUF0WisrWnZPU0RZZVlC?=
 =?utf-8?B?TmtnMjQ3RENDaVZkRC9rLzNhbFQ2QlVpUk1hc3hYRG9JVk5NL0E4NTRJY3ZQ?=
 =?utf-8?B?aGwyV0ZFcmFnSUh0QldyZTl3RzBuR2xrem53ekQycGdQNHVIWFBkK1o5MDFU?=
 =?utf-8?B?K0VDV2hEVmtPWTl4RjFUMnhBOWk5K0xUcVB4bG05QU0zOEhZRUZRWUUxSHl1?=
 =?utf-8?B?eGRGcENLTW1xeitBNDEzeUhVZlJYc0VMT3gzZzVMbzBOUTZWRUZxYmRNekVI?=
 =?utf-8?B?cEdhUnNHdmc1K3RMUmdXOHJjZlN6ZVN2aTNyeDZKSklhNTh6TFlXLzZmV0JH?=
 =?utf-8?B?ckVTZG5sK3VnQlFHeUs4RE8yZTVtcVBXMjFqdWlJT3dKd21zdVJsanpuZTJW?=
 =?utf-8?B?eWxwVEZMNFhXVmVYcEIrMGVRc1FsZGZ6dmdjQzhyRzY5TkRmRjIxTzhESFJT?=
 =?utf-8?B?cGR5cnlJRWJXalFwN3VScTFVeklpZitOZ3JZdFpQOU9hZ0czMVpSVFRKZUh3?=
 =?utf-8?B?bDBVWFd1V09TelVYYWlhMFhJZE5TWjNRU2pHbWN5QmlqWnZJMTV5L1lWVWkr?=
 =?utf-8?B?SWJRclczUElxSGcrWm9Qa3p0cERPL3lmOHlua2htbndMYWc4TFlFa1ZyQy9v?=
 =?utf-8?B?dW1lZEJBaFUvLy9CQStYb1VFalRGdUM1TXNmeWFXQkhtbjZGdVJmcU5EdXN6?=
 =?utf-8?B?Tnl2NkFLREhBSHBBd05wbmJkSmEycnBjMmZHcTNNMjZabXFuKzdabllzcGpn?=
 =?utf-8?B?WlFBeWlUTVVOc3k4eUU3L1cvVWRxckxZVlJPbldPMGF1RFY0NHErS2UraTZE?=
 =?utf-8?B?eFY0LzgxNmw5clltQmdQMmUxTi9uSjltQnE2TVhBcHFoTTFCbDNhd3FaNW5m?=
 =?utf-8?B?cklaNUJzeElKL1NmWXNqd1NHOVdxbVRtU3JwQ0dCVFNvWjV0S2sxL2xmZ3VU?=
 =?utf-8?B?amVUVk1PcXZQdHNlQzlFempOQmJYcDFWWVZjTGQ0VHdXNjVUcjhTalBmR2Rh?=
 =?utf-8?B?L2FSOTVRWmEvUDYwYWxNYnRTZ25vdXBlalRkcTFieFQyVVdIREN5V2FXdmd1?=
 =?utf-8?B?UW12L0RvQ2FXcnpjWnJRVytTRVNwQTMrOWZUcnpXQzk3TWNsbytTdFcvSnlN?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7041ff0f-d0a5-40f0-f4fb-08dd656426f0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2025 14:58:18.7611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nWGcGI/R0SLIaUVOPFLhtPUrjBH9rMma0vPJLt4ZjuvD8w0+tW2IURE/2PNo40BfqjgKlY2tm516qJtPiMItHt0DOI2qquiwneuP79YnZ2g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6395
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742223513; x=1773759513;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X82FiD2mphGKSJSw39bMKUd5sEp4H7VJ3NCzCPwy6m8=;
 b=l9U+CSl/zbwDAYZ7+fvluTf5LOe+OEASOxe9sKKzEFkF/mkwpiHEpWpC
 hi5yNXVjkep+EuoKqeHnz2mR5/QcIsghfVPaTC8Hlpqiuq4eNDfrnraVM
 rxy2ADiAKVDxnC+qU/fwrMbgkwDeTUkUejpc5HkJWRktDfWhUv++a44ez
 oiZVShgIgssfTPk+T96iS6Jzb9S0EpgA/VW2Sh65D9pHEijBrtKKOFe+w
 oTdatknVT5lapHD9jRm410UB9G1CM5sgzerjV9esaiE5eeK8PO+ttDyvD
 gUWL9SzeACHJ4p3TnjsefEe4UxrW22QU5i+4u5jCDxdOFZuDIvNTzvXdE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l9U+CSl/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 12/16] idpf: implement
 XDP_SETUP_PROG in ndo_bpf for splitq
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

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Fri, 7 Mar 2025 15:16:48 +0100

> On Wed, Mar 05, 2025 at 05:21:28PM +0100, Alexander Lobakin wrote:
>> From: Michal Kubiak <michal.kubiak@intel.com>
>>
>> Implement loading/removing XDP program using .ndo_bpf callback
>> in the split queue mode. Reconfigure and restart the queues if needed
>> (!!old_prog != !!new_prog), otherwise, just update the pointers.
>>
>> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>>  drivers/net/ethernet/intel/idpf/idpf_txrx.h |   4 +-
>>  drivers/net/ethernet/intel/idpf/xdp.h       |   7 ++
>>  drivers/net/ethernet/intel/idpf/idpf_lib.c  |   1 +
>>  drivers/net/ethernet/intel/idpf/idpf_txrx.c |   4 +
>>  drivers/net/ethernet/intel/idpf/xdp.c       | 114 ++++++++++++++++++++
>>  5 files changed, 129 insertions(+), 1 deletion(-)
>>
> 
> (...)
> 
>> +
>> +/**
>> + * idpf_xdp_setup_prog - handle XDP program install/remove requests
>> + * @vport: vport to configure
>> + * @xdp: request data (program, extack)
>> + *
>> + * Return: 0 on success, -errno on failure.
>> + */
>> +static int
>> +idpf_xdp_setup_prog(struct idpf_vport *vport, const struct netdev_bpf *xdp)
>> +{
>> +	const struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
>> +	struct bpf_prog *old, *prog = xdp->prog;
>> +	struct idpf_vport_config *cfg;
>> +	int ret;
>> +
>> +	cfg = vport->adapter->vport_config[vport->idx];
>> +	if (!vport->num_xdp_txq && vport->num_txq == cfg->max_q.max_txq) {
>> +		NL_SET_ERR_MSG_MOD(xdp->extack,
>> +				   "No Tx queues available for XDP, please decrease the number of regular SQs");
>> +		return -ENOSPC;
>> +	}
>> +
>> +	if (test_bit(IDPF_REMOVE_IN_PROG, vport->adapter->flags) ||
> 
> IN_PROG is a bit unfortunate here as it mixes with 'prog' :P

Authentic idpf dictionary ¯\_(ツ)_/¯

> 
>> +	    !!vport->xdp_prog == !!prog) {
>> +		if (np->state == __IDPF_VPORT_UP)
>> +			idpf_copy_xdp_prog_to_qs(vport, prog);
>> +
>> +		old = xchg(&vport->xdp_prog, prog);
>> +		if (old)
>> +			bpf_prog_put(old);
>> +
>> +		cfg->user_config.xdp_prog = prog;
>> +
>> +		return 0;
>> +	}
>> +
>> +	old = cfg->user_config.xdp_prog;
>> +	cfg->user_config.xdp_prog = prog;
>> +
>> +	ret = idpf_initiate_soft_reset(vport, IDPF_SR_Q_CHANGE);
>> +	if (ret) {
>> +		NL_SET_ERR_MSG_MOD(xdp->extack,
>> +				   "Could not reopen the vport after XDP setup");
>> +
>> +		if (prog)
>> +			bpf_prog_put(prog);
> 
> aren't you missing this for prog->NULL conversion? you have this for
> hot-swap case (prog->prog).

This path (soft_reset) handles NULL => prog and prog => NULL. This
branch in particular handles errors during the soft reset, when we need
to restore the original prog and put the new one.

What you probably meant is that I don't have bpf_prog_put(old) in case
everything went well below? Breh =\

> 
>> +
>> +		cfg->user_config.xdp_prog = old;
>> +	}
>> +
>> +	return ret;
>> +}

Thanks,
Olek
