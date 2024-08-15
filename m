Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9606A953D9B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 00:55:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E984340253;
	Thu, 15 Aug 2024 22:55:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tL1xR8JSOOKI; Thu, 15 Aug 2024 22:55:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72BB240290
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723762548;
	bh=doROlFed51lPOlNs5Vb7jQc9YCN9UwU3jkNztFniQ7Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eCyV6+Suqe7Spkogax5FwOudPRyFQ6REJM1EhG3hK3DkuFCTQKKuJzzgrw0GKalDG
	 4sX1mKnaJgIzns0Sf8QM8NFOrvF78tqXQQTb2J1olOLPrpYayreC0NoNU6C5AjTXsW
	 /S1zWI44M0Y46XiS77Ezll+1MjS/FelNu9Y50FuByb6EzsmaEI2B7qZxXjUtFD/QWR
	 3GQ18/91n488GAuAN32R7QJzXogoikHCratuuzKvH6dRMHS0Ia13wA6f6B8ct7IHux
	 vlyh2Xrl94/W6KxaB7dMZPemBzLmexdkHQ+U2JvOD9q9GD5ExtXe+bjvaUf9bkGmDv
	 UlrjEMDdypOrg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72BB240290;
	Thu, 15 Aug 2024 22:55:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CC251BF325
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 592BA400E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:55:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5mjvgeU5_f6q for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 22:55:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EE869400B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE869400B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE869400B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:55:43 +0000 (UTC)
X-CSE-ConnectionGUID: zAP8BSYdSKyLSx1WigTpSw==
X-CSE-MsgGUID: wQGCgnlxRZ2w/zJI4lx2Ng==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="21864118"
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="21864118"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 15:55:43 -0700
X-CSE-ConnectionGUID: 8JTTlWGoSjuXjjeLNCnCSQ==
X-CSE-MsgGUID: gfLHFNOPSYSklIHMUeBewg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="59130384"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 15:55:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 15:55:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 15:55:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 15:55:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 15:55:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R+PRWEA+3AMY46pmn3+JOFgvFFPuBaGrnNOlnNF8UtGg7wVcX+uBIFC9idZ0P5yo1ojb9ROLkIr1MQVvI1t5a9aDzK/7pFDT0cy8sI/8hP/odNMp1CRhoMLDkgjrraCE5rhnNCFkZCUuQL42l2KVfa9BSHe2uJsZ40ejIdnjumJCzDubuKVKGIL9q/7X3uYJZxXVInk38YplTx70eG7aG90EIKMJJS9CfVwWrmx1D5e1dMQH7nGo+uPYx8b7o4YFq8EiJw4ziiF44FsCyq6ShPGDtzFoodVlzjATwf1nULy6zdSMkOM2GRM6O1RCBfDqujc5I8lMXCnKVhH3G6F9ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=doROlFed51lPOlNs5Vb7jQc9YCN9UwU3jkNztFniQ7Y=;
 b=rzygSNudVM/6yaMG2kn09QBQDVnJWVpetSeAuRtXH51DCVtF/gcFyL/5elHEUycEVoDb9eP+2EdRKGZ8ZwQ+hSkyXXy/vrbRr9y0VWh5ETwWlQj6mXLjoKH15pmgfAGAQ0F6RYLtkK/2g+p6MWhGVKGVT9fxL6l4s1MDiTaLiYjnZE9paskrffHYdUtzLaJXo4WwcUUI3uwip8qO1y/tPqaPJCIuEy0/RYgHmmhRCLNVvnxyJFB+L5Gd4APwfJm4ORuznFVCdQOZuSKNnbjx4nGhCORs1Pyz5ekRSbfWbW9pDbgfZa5h9JhoTHQnvHpA3qAC7JqgTHgojKH/YYse8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.33; Thu, 15 Aug
 2024 22:55:34 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7875.016; Thu, 15 Aug 2024
 22:55:34 +0000
Message-ID: <48a33292-7fae-74ba-e213-2fce437cdd4a@intel.com>
Date: Thu, 15 Aug 2024 15:55:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Manoj Vishwanathan <manojvishy@google.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240813182747.1770032-1-manojvishy@google.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240813182747.1770032-1-manojvishy@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0249.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::14) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY8PR11MB7898:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d0f2215-7b73-4ffc-ff80-08dcbd7d5f1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFNtWW1rRXVBaFdmNndDUmppQURoZUpUTHpMT2FEWkFCdjlBUFBSa0x2QTJK?=
 =?utf-8?B?MWJnOUtYVWhTU0g0NGxXVWdkQzBnOWw0UEZGYWM1V3NMTG05ajkwUWxEWm9U?=
 =?utf-8?B?Vk12THpRTER1WDhtU3VOQzRCMHNjdEUvOFhCTElJVXZVWG95ZXBSODZLVkJl?=
 =?utf-8?B?VkVoVVpwYUdZTjVsM0I0cGhaSlJWWWlpNk9zc095eEJLeHpGV0dVYXVmZ0Rz?=
 =?utf-8?B?VHJiRWg3djRjUjlubVBJS1NUNzBwQythWHVyQnRwcFVGWDAxcnFjWHhLbG0r?=
 =?utf-8?B?RWEvakRYNzROMkl0aVhoODNYaUZqVVpIeTB2aVN6SGJzNytGV3VJYlN2Y0t6?=
 =?utf-8?B?TFlEcXJ4L0c0SjBoUXNhclc4Tk9hWUtkaFFrOHREUVAwYjExVkR6bU5PNmho?=
 =?utf-8?B?VFljNm9Xa2lIcFhxK3FuZ0tzQzdjZWtxVVFjRGhXM3plUkxKa0ZtOWozTUFW?=
 =?utf-8?B?cHNwUHVjKzI4YlR4T3BINXRwL0picnFuUTNIUTBEMkNBYWZsTHNpTThNeEcx?=
 =?utf-8?B?WGVZSWJ4dTJHNlgyUTlkNHNIMDN1ZThJeGZwRUtlRU5ZTnErc3BRNlpNRGUz?=
 =?utf-8?B?SXBaUW9keTRiVUNWMGdkTmk4bnhDbVFkbnhLcmtxSzJqSDg3NnpaUGFhVzE2?=
 =?utf-8?B?RmEyWjZ2Rk94Z1ZWZmNVQ1ErbkpmSUdmVndqbi9Rb1ZYVXZBaHNFb0VoaGxS?=
 =?utf-8?B?cDZrQjdPR3RnbUV0eFFkTzhDRkZBMlNQTVVYQnVvZFNhSndDeW5wYkJaK0Nh?=
 =?utf-8?B?ZVBsMVM2N0VBdldjY3VzSjcrZ3A0ZU5Mb1ovR2dIYmloZXBvRGNFSzIwdm5O?=
 =?utf-8?B?RFZMdTgwNUU2MUpFNlNjVi93TGVFOXk3bTllZWVmOUxyOTg5SEZMSUhnTWk3?=
 =?utf-8?B?OVJLdDNPWlNRMXAzV2ErUkVzci93OFcvRXh0NXdjTXFITXNuZTZoS1pzK1Uy?=
 =?utf-8?B?VmkzOGVDRUU1blhobGFIS0N5UzZUenkyOERoWVBIRmFOYWcyZ3FocExtckxm?=
 =?utf-8?B?cUhDR2hiZUlEaE0yQXY5b2YxZGRjOW5pM3M4VDVhaGU2bU9qRkNIcmdwQUdx?=
 =?utf-8?B?dkRwYVRlRlRIZ1h6Zy9yU0RuZUVHbHAyNGRQWEhJUXZxTjFyUElacWVFaFpv?=
 =?utf-8?B?UEdUUEhvMjlvdjZyQXQyRmMxeS8zdmliOFE2Zk1kTk5UbnVqbEg5TzNER3lW?=
 =?utf-8?B?K1l0YWJqbGFTZGNrVDZuaU4rY3F2blRaa1prY1k4elQvUXN6M1k0V0s1WDUr?=
 =?utf-8?B?T0VSRFZuWWtkem1WSHRpVXFOSUNXeWw1K2ZvVEdNeVNQd1FrZExQaGhNTC9F?=
 =?utf-8?B?QkI0K1IzSzhnL1RoUGJBVG5McStJeXNXV1c0enVvRXJGS2cybjZ3ait5akhy?=
 =?utf-8?B?dGpqUzNwNmlIclQyYkFIK2RQNFBlOEZvM1pveHZCSVI1ZS9kYUJ5dmp2NFZG?=
 =?utf-8?B?cUhaWlFrTlRMWUJVVXF3cCt4bzk3RHhaUDFGaFh3WGhjMnRzZFQvZU04SzRY?=
 =?utf-8?B?VjZYbmtUaEhrNGZPbXkwRmlGUXpDbTRCS2NQVnlYOGxRR3pGd2Fka3RtNFVG?=
 =?utf-8?B?MytoUCszUnFhRGZnUDBnT09rYk5nZ1pjZEx4dTU2S1BlUUVtZHkrdFRkL2JX?=
 =?utf-8?B?U0RsdUh3eFFJUExxak1GNlUwajJUN2ozcE5HOU5yY0E3VE1wS01paTk2cjBo?=
 =?utf-8?B?Nll4QVcyN0d5RFVjS2JqV3ZiYW9DS0dWU0xaOEN4YnBzaStWVXVmNStXQjZ0?=
 =?utf-8?Q?J+Y16/nAtLjovdGm2w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlBsN2NGSmNpYmYrZGFOS29ndVg0Sm15aWJFcXFteU9GYW5zYVBhZ3lJaFho?=
 =?utf-8?B?ak1PSkRGTjFaeHJkbWNyNFc4TUhqSHhkQi9zMlUxQmV2Njg2anhOMnZFMDZa?=
 =?utf-8?B?L2E5UDE1YlFxR1NtWXplL3E2dmVMQXlJRmdCczBrWEMrcFY4S0FGZDdqSHJ5?=
 =?utf-8?B?a2htZG1WUzlJZ0RpZU95ZjdqMldtYkNLbjJOY0RmdjIwbXhKbFBKQTRJMjNp?=
 =?utf-8?B?b01rQ01WRHRCQkZqRlZJSXJ0SXM3azE2ZVkxbGhWNnpkU1RJd2s2Qkw1YmlJ?=
 =?utf-8?B?K2tRV0s0ditMRkI5dDRYdnFDRzBHNVY3a1ljb2M4RW1NVXJUWnJWNDZIRmhJ?=
 =?utf-8?B?SWJHcm52dnhNblhTMmljTVlpckdnK3lHY05HWkRyeGt4OHR0MFRyclRpU1BB?=
 =?utf-8?B?aSs4MWZOU0JMa2d2bVUzcVVITCtkVzlEZ2ZEZzgrSmdFMTZ2R2tUZU94MDQr?=
 =?utf-8?B?d0NNU05FV1FEVnVQT3haMm1Hem96Y09uQkt3Y2VpZDhZNmpFVTNIZHBRckVr?=
 =?utf-8?B?T1Y0dm1aWVlNRTl3NjFSK0xDQU0xVVVOZS9zdVF2U3FMRG1ESmN4a1AzNlBk?=
 =?utf-8?B?Y2RGd3JtVHpiS3dpQzI4T1ZQZDV4cnFDanhmQ004V2hhK3RwbEUxcUlJd1RX?=
 =?utf-8?B?YlYycXpVeWFzMUswaGMraXMzd2R0QldmMGZ5aVY3UWZWZEJpRCsxRlFxSXZj?=
 =?utf-8?B?aTN6MVlpVmF4aU9JNXBXZ0g4NG5ZVVcra1h2QlA3MHg4RmM5NFNFaldzcXZU?=
 =?utf-8?B?cmdjc2o0UHBIQkUySGNkazk4ek5MLzZ0V21idWdaZWplY1hRVUxVYmxteU10?=
 =?utf-8?B?VXJ6TThkK0xoSlc1VVgzMWdJaHFwT3pJaklZY00ycy9lRFQ3d2NRTzMwaUI3?=
 =?utf-8?B?Q1ZTK3VUYTYycHhxY3dNK1hac094UnB2eURMN3VkeDlQMFFmRVBxSkJ2YjNO?=
 =?utf-8?B?dFR0Z0ZsaFhlNVp6WHBqS0Y3UGM0RTUvaWhWNWw4Smg4UUZHVkJTVXMyUHEw?=
 =?utf-8?B?ajdXMENlY05OTFdlSW84ZDNNaUhtTkRSRFdLM3RGcXduUWt1VTJGb3d1OEp3?=
 =?utf-8?B?ZXF2aXdmNVREc1M4aWVlNHdMSlMrNEE3QXFpWGNEN2k4dDlzQ3d5aTdkazhU?=
 =?utf-8?B?VDJad0orU0ZoR3NvaUNzOFFKQ3o3eUZ2aklNWGxMKzBCSS80V2t4bU5rbFRs?=
 =?utf-8?B?S2VtNldqbGxOMllOQzRFMlEralNhc21oLzNHNWdGdEM0TUtwdW5vZG9KWWFC?=
 =?utf-8?B?SmJBWkFzVHdhczRXbjFMWkVuYVpYRFRKdmxNaGswcWdaTkpOcTZISVlheVow?=
 =?utf-8?B?cGJRMEtsWUVwN3ZtUkxaZmcrMFBVSnZ6ejJkak9YMHRTd0dnL2l3YmJZeThl?=
 =?utf-8?B?cExrWU0vVjhPckVjNzk2UUt3dmpmbHRNblp3S05XeTNrWGo4alZQSGY1Y1dR?=
 =?utf-8?B?WDJkQVdZV2FNN3A2THBpTDIrcGRUUGVrRHloZ2JvTjVTV25JVHY1OU1oTTBH?=
 =?utf-8?B?enhmczhCU0lLZjlnbzlQeDlHeGhoeGxsMWNwQmdGMEEvY2dSMGVwbFdPRUpB?=
 =?utf-8?B?Tnk2N1ZEYmNkMjlxM1JFTXVCNzZhVWhQdExXOER2QnlMOGpvNUx2MERkZndo?=
 =?utf-8?B?c1RjcWN1dWVHaHQzdmp3SU5FRVo4WEFjUEErRVFkQzJtaTQ0ZTMwUDJzN0ll?=
 =?utf-8?B?QUt0K0g2SGl6MjJZaTVYa2RVbWhNcllDTGNmajQrOVJ5VlIzQmlXd2JQMSsx?=
 =?utf-8?B?SmNjRlpuN3dxUWZIK25zWVpDeVNMei9QczVmQk44b0d2RjkxaFZtVmVyUlp5?=
 =?utf-8?B?ZkpvdUhZRXhhMjZ2cjJqWDdOTEUyN3BFb3ZKSkJMdDI2Z1p2MEVvRjU3ZmlZ?=
 =?utf-8?B?TDJwL1QwQmhvMzFnQUFIS3lkUnJQbG1RQWdCOTN5WXVCQU45RENMbGZJUExU?=
 =?utf-8?B?K0JOSTJXTU1CNXFIeHA2cm93cmpZNXVjNDhHeDZOeTRaSGt2UVFXQ2dwRnhV?=
 =?utf-8?B?OXZiVDRJdzFtVFAraDZmNG5NenFpRmZiOEVsUjdMQWFwOXIyUTlIa0JId2pL?=
 =?utf-8?B?R2xYMGpUUmhkS2tqczBkbmFndTlWNXo5M2JhTFE4S3Q5MVhkMG8yUmhBVWJj?=
 =?utf-8?B?dWQ2MTg0Rms3UVJZVlM1M3dPcWhWQkhKZFg5bXNiUnBJNThsNVpkTkxaYlZ5?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d0f2215-7b73-4ffc-ff80-08dcbd7d5f1a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 22:55:34.5776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /H69S+WKb8KBolO2OorxIOoLEHAvJZwmSKhrct9PLeALLEhZ6wMEEfKx3gnFFTI6ba8iI3LrtunNVwvRURKNcvhpIBmJconi+ntTUkWNvPc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723762544; x=1755298544;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G9+8FXye5C3lOWIdSYg9R4ge9UO/D9FwElYTaERUDoI=;
 b=GpnZj6XuRVVAgA7OVxvJXLaFjGzC6jHmLS9EYGXX8VBDX7kwUM/r+4Sb
 GBc70c39jZbF497VpiYk9Hef0Q3mndKoO4gv34bTd8/GPvsoTaHh6X2eK
 Y+q2U+iNqlSQapTFluLXRM+WV8UJPd6kiNw2VfLO2C2SvZAecfn+SbZcj
 7HCA9js5O5hSiDkWXfI2KiFiSQgfC01W3BT8+QdG2NpFt5KhMkKXDOda2
 wHdRWY7ow0fL89ut/AXOTkRFeASZEehf0bUCPCZ3yKtAI0h05J2Yw1gCf
 t2ODzYIoBEG0oJqKkBGbOuklXXXyBx5D1QezRyO0v7lcg/Zb8vaxHAxX5
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GpnZj6Xu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 0/5] IDPF Virtchnl fixes
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/13/2024 11:27 AM, Manoj Vishwanathan wrote:

Hi Manoj,

It would be great if you could familiarize yourself with the netdev process:

https://docs.kernel.org/process/maintainer-netdev.html#netdev-faq

For the Intel drivers, we follow the same guidelines other than we use 
iwl-net|iwl-next rather than net|net-next respectively.


> This patch series is to enhance IDPF virtchnl error reporting and some
> minor fixes to the locking sequence in virtchnl message handling
> we encountered while testing.
> Also includes a minor clean up with regards to warning we encountered
> in controlq section of IDPF.

The bug fixes should be broken out and designated for iwl-net and the 
others to iwl-next. Fix patches should include a Fixes: tag.

Also, please use RCT for networking patches (patch 1).

Thanks,
Tony

> The issue we had here was a virtchnl processing delay leading to the
> "xn->salt" mismatch, transaction timeout and connection not recovering.
> This was due to default CPU bounded kworker workqueue for virtchnl message
> processing being starved by aggressive userspace load causing the
> virtchnl processing to be delayed and causing a transaction timeout.
> The reason the virtchnl process kworker was stalled as it
> was bound to CPU0 by default and there was immense IRQ traffic to CPU0.
> All of the above with an aggressive user space process on the same core
> lead to the change from Marco Leogrande to convert the idpf workqueues
> to unbound.
> 
> Manoj Vishwanathan (3):
>    idpf: address an rtnl lock splat in tx timeout recovery path
>    idpf: Acquire the lock before accessing the xn->salt
>    idpf: more info during virtchnl transaction time out
> 
> Marco Leogrande (1):
>    idpf: convert workqueues to unbound
> 
> Willem de Bruijn (1):
>    idpf: warn on possible ctlq overflow
> 
>   drivers/net/ethernet/intel/idpf/idpf_main.c   | 15 ++++++++-----
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 14 ++++++++++++-
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 21 ++++++++++++++-----
>   3 files changed, 39 insertions(+), 11 deletions(-)
> 
