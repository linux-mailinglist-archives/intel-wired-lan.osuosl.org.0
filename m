Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4069807065
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 13:59:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C7CE82FBE;
	Wed,  6 Dec 2023 12:59:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C7CE82FBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701867545;
	bh=hqoPYNNsr/+JbfCcheyRv8azG08pmGl29Xx0SSnvHwk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tx2g6q9zzYOpw97YaATLAARjb3w80P+KQwBQV3nyf5db75Oe2MQnCH1WOarkQDrIL
	 vwVklJ43q3v4i32LB//ohF2OWuxB2WCRtAxFPs9nm3D2Da2jW9rxxUxEpmwXkbJiPJ
	 J/XKchEyDOZykfOH1pFAKtOa8ATrU9Omydyf7lz9K9SVdFlQhSVNTM5Cmp3DPKDrmk
	 DXp89GwA/7SquAXjovsqL+neYMiqqwIcQrDxjTrsUnCvo7aEGydmgfetPqCFMyXuRh
	 8qaZjyndQpABZuZzYbJUMIfdfqajnfP+HJ4zs8oKdIlQSDyZuA+yTCJscexzm9Wva/
	 XSfb6SjZlO3rQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Axl0W2OeoZEh; Wed,  6 Dec 2023 12:59:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A14282FAE;
	Wed,  6 Dec 2023 12:59:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A14282FAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 87E111BF34C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 12:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 59F4341D66
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 12:58:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59F4341D66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tjd6LMUZjB6V for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 12:58:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A37741D5F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 12:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A37741D5F
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="374235392"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="374235392"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 04:58:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="862102398"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="862102398"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 04:58:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 04:58:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 04:58:56 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 04:58:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g8eNliAKdODyzozH+HMFXXsVyR51OcMCJ2ExxU0Mpk6k+w8GoNzb2OTi3hJldDnmnAa2UGcKFaVzyHKAoMT8hJyHgdJr+oEpvy6uJmtFab/vsymXgQ/hmMpoE+PP7Bies3UMVqfu9f+1c+tXG38pTI6FTEiEgXCF8hF2H7nF8EVA7dMJlpw7UIlEjsWX4SAzGey9Xi7K7CFNpIzr2yZJ/oyaZCgBNFE76OfVBRo20yCtfGjIOe6136+YWX/NTYidKYN6XAdOG69e7QIgDgssmDQBDHYiGzsdN8Y/jaKdt507xvv4byXYfIT3Pu2Zvtmwmo2WyVIybpBxmalOsiDOnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNV99wQzRDCcEvelhiD7Gtl25BdeQ3Y13F46LtNp6t0=;
 b=lepLLIyqtwFtNKjMeb8xY/UFwWhcyn/oBfuUOrsne2H6Vez+8dW2lUv2haL5TLBBJ/KCvhTMGDPf0tLyKwXqyVb+f+N/eMYHL3Huc8hvIPNVA+XgJ7gI73RrByBNFXVjboyUB/tuSv+72QsYm5BW7gmOdAShqwAzEKcdbDTw3f8gSvBaVk48PwIFMwqGNRWbxU4pIHapW4lBeI8dnOfZVmg+Ao4hvSwk8qHB915vQ4RCvLPF8mBHB4VUrZei29fjsG5PxVSlXZHhrPiRVMi561H/lPC5b+sHC3Ndq9d2IusZx5COhNktSGGFpqIKM6AILSP8hCL2iY+bvi2o8V7YWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH7PR11MB6795.namprd11.prod.outlook.com (2603:10b6:510:1b9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Wed, 6 Dec
 2023 12:58:54 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7046.034; Wed, 6 Dec 2023
 12:58:54 +0000
Message-ID: <b7b4dab1-27ab-4952-95eb-c8aeb676806a@intel.com>
Date: Wed, 6 Dec 2023 13:57:13 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmed Zaki <ahmed.zaki@intel.com>
References: <20231205230049.18872-1-ahmed.zaki@intel.com>
 <20231205230049.18872-2-ahmed.zaki@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20231205230049.18872-2-ahmed.zaki@intel.com>
X-ClientProxiedBy: FR3P281CA0011.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::17) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH7PR11MB6795:EE_
X-MS-Office365-Filtering-Correlation-Id: 556652d6-9c94-4760-ae1c-08dbf65b19a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t8I5Vmx2Jm/tA0hmkrCIQyGR8OhDQWa8uRUpME9JRvkmU9aErnbQalXr1OBEgHFoNi4XJOUH4MMcNKU0Id8iOR993O+X3ijwLdc9XiJuBkmgUhooJry8MJh7DrIS/FBrXFl0+k0u+6IG0UTz/DouOXSqdFDq91QWhMqQ3ybluAMvDUFITjUZpxht1tg7E1lAvixhphRltMMZ9cpUx1vX045Q3Oaa8ZuiPJ27KlvbiokgP5dEf67uLoufxdstQxUSzlvMczDodDaYgMAGWJF2+h4snG4Uu2RXu+Q6abwHQbbhMNfUsBqIkjVmYhg5LGxjRsrd5GldmcH63ZMRq5KOc9tA1OQL0N+XMcOEo0Lbff9AhV8URPgXvTSO93Uaq8GmeeoTx7hSLt215IjWEwQnSPmECLGtAN1eUQ5eLzi4/A++Ue6ZwBXKtmocvKSCrFndZcL3/QwpBDe8xXEQcZTh8FFfsNWM1WSCiSbVTUfsFfvaP+vly3nP0EGH+s1zZXYlbwtPQMYAU1vTRXxVGF2xNG7tFWNxlYMDznSIvsKEoUsQWtGOQyw1Ejp7arvdNXUov4uRAe2Il3L1lljvhQZ5zRUM7H9hAvmo0FeksNYWow2anPa9XYHRqpdOk+IDbS6FALn13j5DRnBzYfMg68qPrw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(396003)(366004)(376002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(7416002)(31696002)(2906002)(37006003)(316002)(66556008)(6636002)(6862004)(66476007)(66946007)(4326008)(8676002)(86362001)(36756003)(8936002)(41300700001)(31686004)(5660300002)(38100700002)(82960400001)(6486002)(478600001)(26005)(6666004)(2616005)(6512007)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0NlVFBXamtlSWhZeWVGRjltT09rOHZ1aHBkYnh4dTBLTlluc3FSbXpuSVhL?=
 =?utf-8?B?akIyd1lERjBSNjhZSWxPSEFvTnZrS29FTFkrUFozR1YzREZxZTl2MlZhWi94?=
 =?utf-8?B?OUswejgyN0hWbVZIUVRpbW9FNnB6REhrdW1ORmQ4Mm5pNXZpRjZ1Y1loT2tP?=
 =?utf-8?B?eWEzcDhQeHN6RCthbWNHZU5QTDc1WHVSSEF5YUN0RUZ5R3ZDS28xSTg0RFdK?=
 =?utf-8?B?QjhMNE5YK1gxVE1IUFNKVlRqa05XbEZiRXlydTZJaW9xS3FZaXdKNElVbjZD?=
 =?utf-8?B?RDI5czJoY0JtWUg5SU1QK3l3S0YydW1aQnhFSWJWVmNhMkhBdkd0d3lvU25T?=
 =?utf-8?B?dGw4aWFlbm8wSTJzWGcwbEtTRUp4SFFLWnpodUxoblpPKyt4clJ5cUFmQXU5?=
 =?utf-8?B?MDJrcFlSUWdXVEVhNHRLWVlrUnhpZmlFemlGU3hyQ1Z5UW43Yjhua3N5dHNs?=
 =?utf-8?B?SFFacjNMTlNlbm05amJPZzZzSHBwTkkrdThlRjVURTZEWHdyYzVjV2pVdEtk?=
 =?utf-8?B?OTZhbXE2SjB2K2xJUmZ6SXpaRjl0eDU3REF0elpFc251YjJyMkMyUm4yL1A4?=
 =?utf-8?B?OGlSM0VwYlMvaG0wc3dRV3NsZkpyVXQ2a2llOE01VXZTZ0hSbGFlY09sMmg1?=
 =?utf-8?B?d0NKR2U1bldZRnRlZENmRG9tMVl0UFYxY0QwbDR3dlNITXB6WGpHbXJmZ1Uz?=
 =?utf-8?B?dVpIN1lYVCtTRFJ1cmpMTElraVhZNzVtVVV2S3psQkhKWDNKS2dKN09uV0pi?=
 =?utf-8?B?blFDa0xhSFVqZGRrMWMvWitCcC84a1JtRnRQd2UxUTY3OEtDSGVGdnp6eUI2?=
 =?utf-8?B?aE5ueCtGOVY4b01mSW5SV0toNjZPd3g2OEFlNHJFb0gyMjRaY0tocVpzdVhi?=
 =?utf-8?B?eU5IMW0vaDZtVGxSVUxjMWhIVWVWM004eWpMMWhFN0pWNVlCTlRMcEFJRFZU?=
 =?utf-8?B?eXEwYXFtTGw2YUtVam1qdklJN3RBYjc2QTlsaHFibHpGTU1HY0ZzTElEZEhN?=
 =?utf-8?B?eitOZTBVZXpkd0lTNnZNT3hGbG0xTmw1RUdvampYaUxUVUExSDBCTU9oNUJ0?=
 =?utf-8?B?WlBnWENzWjNTRjRySlFoaXE4TGh5WnVZdW1yRDB4Y2phUmw5YytDc1JoSHA2?=
 =?utf-8?B?Lzh2RU9XNzVKRDNwZTdTYnFmZTlBUU9GWmpnT01MeXVnNW1iVU1iOWRidlZy?=
 =?utf-8?B?SEhkQ3I1ZVdxUFNMaGpTRDQ2VEVBRm9pdnZETll2dElwTzJGMFMzUHlmWjVP?=
 =?utf-8?B?aGF3QmkvRkpadkMyeVpTakpya0lXMkdqbHZSSWpxVzdXLzhJRzE0UFQ5Tkl5?=
 =?utf-8?B?bXNIcENXenRQeTE0cUJ2N3FhK0pEWENOWmo5cFphSlRxcTBsVjlCVkhlaWh3?=
 =?utf-8?B?a3RsaGdwWUpuTU5laFZiSWh4VDUyZVIzc0l5OUxxZDd5T0JHb0tyNUk1RDVW?=
 =?utf-8?B?cGptSWtoZXdocDY1TFRnbE9RUHRaQkFaemlvdTdJTXYxVzNPWlo1T25sY2Ex?=
 =?utf-8?B?cDNScWczWEI1NlRHaW9pdVU0anZSWkVROGxRTjk0RnhnTVZmdFVibmNaRDlW?=
 =?utf-8?B?bDJ4MjkwMEhSemt3dlpEaXFYTG9yZDY2c0tkY0RzZHJMTW9yYjBBcURrQ1pY?=
 =?utf-8?B?OEFQc0l2TFN3aHNkZzhUWHZ2eVp5ZXdoaEx1T2xHalZzdGwxQW92L1BzeEJj?=
 =?utf-8?B?ZkUvbFlmNUtraFpBNWllQ2RaNFdDVHpDVkNGU01yREtQa0lxbHpvdXQ0MDJp?=
 =?utf-8?B?OGJ2NHdEdVoxdzI4d3ZwaWV6dDZIVFJrVlM1U0l3NjZ6RDluTnZveDVFVngr?=
 =?utf-8?B?VzdXR2lZS294a2QwQytnSU00aUdySFc2RGdYS2IzK05mT2kyVHNHNUplQ3R5?=
 =?utf-8?B?N21rZWt2cWJMcFVWWDloYWxmY2FwckIwT1VnajhzVmlwNjhwTHhiWFFJR2lZ?=
 =?utf-8?B?Z01RK2dSd05pSUhPVmZ6WWVIcTVLS0d4dXl5WitIMngvQU1DMitVR0cyN0hq?=
 =?utf-8?B?U2pudmNGWTdSRzlaTGhuelNraTBwQUxMMWpsYmxJSU5nU3o1cElwZm9aVWo0?=
 =?utf-8?B?dE96UXBLZDFTcE5hcEUwd1RQUEt2MzFIeVBpaFVjVUJKQmFObkhMZW5HaGF2?=
 =?utf-8?B?U2ZraHRQZXk4eTdpUXk1ZnFEZFhvN3lYWmIzK21jemRLdmtzeC91OFFLTVVz?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 556652d6-9c94-4760-ae1c-08dbf65b19a3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 12:58:53.8309 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wQXVWZMaUp5gLEv7eOptmMSZB7DsLOQMQ3cTWjoIdimAuIlF1TG7Yt+tphn9c5TDpyLpIUdxZhKSezzenIv1k9x12cRbJyTXx/A8ZK8wYWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6795
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701867538; x=1733403538;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0VoUreInGq12r3bGdoli9G4yoMz3vpJ5bcv1cki+INs=;
 b=TK6JJeGs8Z58rL2U8UnQjjRifXkqhYvTvH6l04rKL74OtUxF0RB8gLEZ
 9iBJUeHuG5bEGxtwgAYOCyFYUp1Uv2aF9lGUt+FMvn3ZrDrowxMpVS4Pq
 cgNo6kp1DMEtUv1TTbnETlktBXzHz4jgzt3mTmnVWmiXvUZ8k0zGy0eEB
 WyoCj/o0IEy1E+GbssVM+WmNsULwI22+Jgo05bo6SF7ZJzjNJrl2XHvB/
 sPGCcSi8Rv9ph7ecG6zLlbLa/0hSlAk2x5QJc/K60e/wm3adhuFMtlv3G
 2zA6i9w9LCx8mAY939F2j9fqjBaOSvlWaX85nRx37uenNFfZZT+mci3iF
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TK6JJeGs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/8] net: ethtool: pass a
 pointer to parameters to get/set_rxfh ethtool ops
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 pabeni@redhat.com, corbet@lwn.net, netdev@vger.kernel.org, gal@nvidia.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com, ecree.xilinx@gmail.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ahmed Zaki <ahmed.zaki@intel.com>
Date: Tue,  5 Dec 2023 16:00:42 -0700

Duplicating my comment from the internal review:

> The get/set_rxfh ethtool ops currently takes the rxfh (RSS) parameters
> as direct function arguments. This will force us to change the API (and
> all drivers' functions) every time some new parameters are added.

[...]

> diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
> index f7fba0dc87e5..f6e229e465b1 100644
> --- a/include/uapi/linux/ethtool.h
> +++ b/include/uapi/linux/ethtool.h
> @@ -1229,6 +1229,27 @@ struct ethtool_rxnfc {
>  	__u32				rule_locs[];
>  };
>  
> +/**
> + * struct ethtool_rxfh_param - RXFH (RSS) parameters
> + * @hfunc: Defines the current RSS hash function used by HW (or to be set to).
> + *	Valid values are one of the %ETH_RSS_HASH_*.
> + * @indir_size: On SET, the array size of the user buffer for the
> + *	indirection table, which may be zero, or
> + *	%ETH_RXFH_INDIR_NO_CHANGE.  On GET (read from the driver),
> + *	the array size of the hardware indirection table.
> + * @indir: The indirection table of size @indir_size entries.
> + * @key_size: On SET, the array size of the user buffer for the hash key,
> + *	which may be zero.  On GET (read from the driver), the size of the
> + *	hardware hash key.
> + * @key: The hash key of size @key_size bytes.
> + */
> +struct ethtool_rxfh_param {
> +	__u8	hfunc;
> +	__u32   indir_size;
> +	__u32	*indir;
> +	__u32   key_size;
> +	__u8	*key;
> +};
1. Why is this structure needed in UAPI? Do you plan to use it somewhere
   in userspace?
2. Kernel and userspace can't share pointers (as well as unsigned longs,
   size_ts, and so on) as you may run a 32-bit application on a 64-bit
   kernel.
3. Please never pass UAPI structures directly to the drivers, it's a bad
   idea and you may end up converting all those drivers once again when
   you'd need to to e.g. change the type of a field there. You won't be
   able to change the type in a UAPI structure.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
