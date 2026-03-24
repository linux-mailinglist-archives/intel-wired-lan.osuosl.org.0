Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SE4IEd/HwmmIlgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 18:20:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2032319EB9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 18:20:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 474DA4108D;
	Tue, 24 Mar 2026 17:20:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zYJpy_uPoHi3; Tue, 24 Mar 2026 17:20:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4B5A4108E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774372828;
	bh=90VUT2HmtgDPkWL5SljfA+CXtw/4JgnlPf+S4rNewao=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=POTe9CDG0a4wUE+s1tb4TZUSYQAd3vJCrvLZ7KIi1kwgWvr3XLcv8SJSv232EmPcj
	 HGAC7dudvX5XJC54qzvB6Mb3lv7UFJaYgUIkeMQ8719G4Cpu+ZdqJF76FiLCqXr8pQ
	 KRmb+JF3ic8XRDwGMQALI8WDZMDIluRVQ1lVz5a54/i1qbTaOZ5N1F2ulKSDcFVIk5
	 QPTgd3m7MGFg+3l2QLjL/nGKfye7x47bKERzMEPp13hjBEgXkIfqUHXDWahkJek8kV
	 A3n8nA5MQ5tR8vaQr58kh15N9URH23qcIwpB7pSnHBKMYs9fPfVz9tpPGIRL3v00iB
	 Bx+2bZlTNpc3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4B5A4108E;
	Tue, 24 Mar 2026 17:20:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4CBEC353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 17:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E4394108D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 17:20:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gxMwpdK0bGJp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 17:20:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 86C804108B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86C804108B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86C804108B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 17:20:26 +0000 (UTC)
X-CSE-ConnectionGUID: iZdzTzJjRNemBcgFvfsyFQ==
X-CSE-MsgGUID: K//5B1YKQIy3O4RiWZXJkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75279992"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75279992"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 10:20:26 -0700
X-CSE-ConnectionGUID: n8MtngOiTT2BdS/5Afq5vg==
X-CSE-MsgGUID: TvusPWVSTmqrL+sCqAvpSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="229187568"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 10:20:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 10:20:24 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 10:20:24 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 10:20:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TiO4L6t8fRJeXwVorJP9UF2ef3HXv3Nn/7E0AampRNw4zoBWuxPyiaYzCSobdWJ54khoQzkxOsDHIe90wsGkMLloNY9BdtNa4L4cJci+oAz1E72RUyV0Eke67VWN1JQSSKv6pBK33mYx9nRRRiu9hDdGXq3rRPA9M3VXDi/k+DyxinxS77eUWueX5zlZRA6eBAfhsk0BVN/ALPKlukaIGcXBxF8s48yvRUUKplAp3gfbv+9XqXq0w5IIqPOol1jTJ+TAJgPrzTy0CQsQhbxP4LtJUCvCJypiabB+FKzFVzN7Zc2Rt1EYxItvFHr1qdkvIW6/CX4bg6+zza0o/7xaGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=90VUT2HmtgDPkWL5SljfA+CXtw/4JgnlPf+S4rNewao=;
 b=U/rZxmUNLS0jcfjCZKlejunWOTInS/YHWfacocCOL52fx0A93qwjETtcQtI9/JoySL9BV+PmqRBT4C6KECfL8N4pJfFuJL1uLp2i1/zwYHUBJPnpGc3kNJjziB870TjrW0My/JBY/Oclof5X3vk0rQ7vhaSVXRCR3GXfnY1ArFTkojM1QcuWiPkdP50EHvKvLbSYeBeSWkusXN3Tpyk6FPRF2jAHmjSY8BBCPXAC/LoW/i0gb6+XgRtUF9nm0p1ss7jFCmtkZpA+Sk7uyn0fuen+qkUGb1AHC+8iBAUPkGSHiao5+LEC+wqcVa6nPNAIz34s2xxp2PKsYGwDuiOmoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SJ0PR11MB5168.namprd11.prod.outlook.com (2603:10b6:a03:2dc::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 17:20:22 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 17:20:21 +0000
Message-ID: <7e3c7b72-b02e-475b-964e-a4f418a6ff2a@intel.com>
Date: Tue, 24 Mar 2026 10:20:18 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Kohei Enju
 <kohei@enjuk.jp>
CC: <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>,
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20260318163505.31765-1-aleksander.lobakin@intel.com>
 <20260318163505.31765-4-aleksander.lobakin@intel.com> <abripOPt4oVu-Ksb@x1>
 <abrzq5_S7p-YjqhE@x1> <1ec79e7b-50e8-4c64-9e79-fc377a505cfa@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <1ec79e7b-50e8-4c64-9e79-fc377a505cfa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0337.namprd04.prod.outlook.com
 (2603:10b6:303:8a::12) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SJ0PR11MB5168:EE_
X-MS-Office365-Filtering-Correlation-Id: aae3c35e-f1c4-436b-7b1a-08de89c9a10e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|7053199007|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 3GruG4hQuifU94HC3+aoxgy/VfQOeAU3CwMMezsMwTwBBqSUbL1k5Mtp0t35r5Wyo49IfDH2uB8u5R9o3/wSr87boVtViz8WIxd+Khtz5q6QWXNbHtCb1J1sKMEroVMsThpf1yjIjXGuMw72p96fA/nyBwSlZj3UdGRflfyF+nb6jcaUS29X/o8X8EDeYcmcrlC5SvE/Xi6wGv+bISbNqU5fifGbHfI8NqIlENc3/DNHDpYrpllxG9lV3saDi3tUtLy4zlsHSyLcbw/mKu4C4lX/QSIBkvXwImAnZiEGkCWFFt9yTTqeryz1ZK1vke0ck1tdK+UtWQ7FCVWj7jADwyxvRAVJUyrcqPnX/ngPEgJXGldaH4CmrTcMg/vjhArdTRsTv95Vn4td1m3dcFrUp1PTbwe131qBiPzFmMkP5Zs1g2vKY0HBy8fe/pkAqQhCJ2sPV8Re4bSsaN5KHpBKZtWcHbEmhT2pxYFY9FCAxrseLMUw+ydxKfq6HJySHRpRHWu4AGNXGuEBDRV0UrRixqRhPGnzouzxwIyi+5bVG/vKf45gVvKmohHrt/U5KMk0YE4cswWuHp1cWAMYv+KBLz9QxI8X9xVhGPNoDSry0roRrMFwxmdaqQcnnISmLJEpViSuUn1Np3ZNB7H3xLrdBRvJ568cYwaLABX0VYMe67pXkJ8NHOo4SWx7u9dnd43Sp6MFDxE/bnDiWszBXA7HylqcVVG2TSC7TKTvLHrdgQA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sm5DZS9zTkR4bEkxTWJPeXNjTTRCcmxYRHlYTUsrRjR0ZW1MZDBSbjQ1M05D?=
 =?utf-8?B?dCtLYVowRWFLSmpxZXhFWWg5bFMzbU9CdHhFN0l0SEMvUDAvem5CaXVQanBY?=
 =?utf-8?B?Qy9PY2wzSGVjVFk0Ymp0R3RyNTIramZmYy9TeHoxRmxDZGlsdGJaQWFaZlVy?=
 =?utf-8?B?ZG5GdmZpMFBMV0JXVW1BdjZhRjhxeG1oTWtSaXRZUVFoNThCMEtXV1dyMWtt?=
 =?utf-8?B?aWsxS1ErQjVuU2pydEJWYW11anZZSWVWM3BmMVFwQWpZUmNzS2UxbVlZM09G?=
 =?utf-8?B?TEJzaU5GYzJRYVB6YXZ1UU1vMlQvM2hJVmVGSUtIWGVjalpMc05DRWtEdVY2?=
 =?utf-8?B?OEFxdDBPTmFqZGJXRy82aC9ROW5vYWVzRk1EaWcrUnpJTzdqT3VEUGx0N0lC?=
 =?utf-8?B?aUY5ZzZqemVKWmgxMm1oNmlRMm9hYTVLUjMySGtZVnhnYWdsVjhocjdsNVlT?=
 =?utf-8?B?ak1CM0lUVEEzc2xGSFpwV2FsaWRZR0loeW9KNGhNd2p1dFFIRHhoUUE4K0lr?=
 =?utf-8?B?eFo3bWtpNm9MSUZuZlVwWW4zam5acWhzZ3dXWHpxcGU2OXJwTDMvZERmSmU0?=
 =?utf-8?B?clBMaitpNWVFNkdYWEdUUERBSFVIYW8wQ3VFaWZiQytPNVNneVBLNjR5M1Va?=
 =?utf-8?B?UHBRdHNmQ1IrU2grZmhyd3lFblp4UkJrdVpmTEdYdDRpcjE5TXp3eXdGMG9X?=
 =?utf-8?B?NTQ2ZDlNUHR0WFRXV1J3dGtyQTNTcS93RWN1bjJqbXdiZVVZQ2ppdGFuNE9Q?=
 =?utf-8?B?OXVkWmpnYWpxTENjbkhCbUxyanpEY0NSMGZEcmFoYmQxSXNhSy9jc1o4VmpP?=
 =?utf-8?B?Z1RDcHVXNTRiSWJleEZpdXBMeTVKNUdYaFc1TlhJV0tDWHAwMEFnUUZlcTNB?=
 =?utf-8?B?dmxsVC8wb284aTg5WE92SXVJbDJRZGljSjdPTHhoc1dUWVJYSEJmazE0M25M?=
 =?utf-8?B?YVV6eTl5WUxTeEJRdjRCWDAzN3FORjlTbXJDQ0Vqd0tOa3NQaWlwMWxNUDBZ?=
 =?utf-8?B?WVhtb0N6SHVlRytOWkUxT2t0cW81NTVhZkRvUElPY09zdjhJSDRhWnVDRnFt?=
 =?utf-8?B?T0xFMVBEdkFPQ1ZHT2ExNW1nK0dnZ1JzOUk5WHBmRytzYUJiK1MrVVdHMitO?=
 =?utf-8?B?V2sxU2JDeVRYbU1VUW41NFIxT0FKRVRQY2ZVSmVhekMrUG8yWitoaExYL00y?=
 =?utf-8?B?V3ZsNTdSYUtwYnJrWUwvWWd0YUI3ellYTmpJWC9IVU9za2VqRkxHUlVhbG9Z?=
 =?utf-8?B?bTNWekxERmUvbWJwVCtIRGkrK3lFdXB2b0NzTldxUlhIaVFYdnR4b3dpeDY5?=
 =?utf-8?B?ZjNQNnRNMHAyaHFXaGM4UC82OHZEWGkrR2w5NVp4QTlTRHJ3dlVEcUR0TlNh?=
 =?utf-8?B?TkpHM3hNY2JKNUI1dzlXZWllbXRWdTQxZTY1V2Y1MkZVYzBkVUNraVZoSnM5?=
 =?utf-8?B?bjFpV2JqcFBtNXhXa1pQUjEvQmMrN0YrcTBpOWVXcnpFamxDYW9kNWZYN3BV?=
 =?utf-8?B?OUI4VnZkUnZPd2puNE00TFBMZ3paMkFxVHdLekxlQ3BjUE9rRTZmeEpxb2pS?=
 =?utf-8?B?WlhXSnBtVFdLaVdiMkhjTFpvOFN0eFpvdHUzc0k0akRhbHROazNTN1cyZWU4?=
 =?utf-8?B?akNraHhkSGxNbTIzMW5pb3Y0bHVyMGJVN1JKRkpNVjluT1lkR2pTUjlpdXB4?=
 =?utf-8?B?dngrNjRoOGxaeENKSExNaTFIY3lmdk1vK0hXU2h1UWVKdGU5Qld4a1ZJaTFT?=
 =?utf-8?B?b1orakNXS2pBOC8xejhlbFlkYXZHcVhtUWd2RVM5MmUvTWZrdE1GL3ZQT0tR?=
 =?utf-8?B?THNOYmNVYjFiZ0RHbkFBNkVxbVgvdkVvd3hFRU9ieTlqbmlkRUdPVWVXaFZO?=
 =?utf-8?B?NTFuVWlaZFErM09rSDJsUzNzNTRvWDJMUlRDdklFeWR1MzExMzcvWUJyWHdT?=
 =?utf-8?B?Qnl6NlFHc3V4SDdiU29QRHM0VkhZckpUQjE5d2FKcGgwWDlqOWllQ3JWRmF1?=
 =?utf-8?B?Y1p3QkwxWG8rYkhSSlVMSVVGSWtvTFZ1ZTJrcVI1ZllweUVTUEt1N0FjVE16?=
 =?utf-8?B?cG53VDIzSStLVklrRFB3WXZUYzI0Y3lGNHZ6VWFRUGJ4Y1lYNU5jMFlWYjFy?=
 =?utf-8?B?YlhhZ3lTa1Jhc1kvMDZabEY0QzBtUzVRbTlFbTJNUFBOQU5ncXE2MVR5cWF4?=
 =?utf-8?B?OW9hTERucGQwakEySmtkQm5SMTgvK1VnY0hUd0JQY2RKUEJQbVVnRDNDWWp6?=
 =?utf-8?B?Z0VaRFVCZkFoMmJubUdKa21tNXhyQlJlREJRWjZ2OGtxK2NEMkZoS1hqYk9H?=
 =?utf-8?B?ajcxWU5pdGJEUHl0SFVpeHBxa2J1MlNYMU1HSzVxOHFmQVdOK0FKaE8vSjVR?=
 =?utf-8?Q?NlrHZ96UwXTMmzT4=3D?=
X-Exchange-RoutingPolicyChecked: HaE/UCszZVte6LYlXCSHUuj+xKlJAUYkwaHiQXCVXFTSwBnLmOc2R4O44u9htqtXuwAbrahLG+XYANoPrFxsGAUCsuMbR0dvR3eNVQY9Wa9VZT8ImDlB5+20iBlF2axzL2DlOrz0eCxtgh4+JagL6MhVktPRcp9kqpdJx9a4ZqBeaIiSYl0agkawx0kZv1cTwJl0llZLOvHE75KrvCDB7fYbdp8qpoT7j+7O5oMHEblvx5h0RS+8E7DKv4vqu8l/4aEELUt3lVRQE3Iz1sQSGXDZNoRpBoBHVi7RKN33ymc+Q40gALENG2vri1t+CncdPCVoMaAiimlFPdVUYGMlkg==
X-MS-Exchange-CrossTenant-Network-Message-Id: aae3c35e-f1c4-436b-7b1a-08de89c9a10e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2026 17:20:21.8554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZfdAjWlyB782xZLsoPTN5T54dNH/h0DJaTNe9L2vIUvA48HsdfgxQ/XyVhOqFg4YJrfy+7YfIFQcS0UTSNVkIxrS4RwZ0dFVm8ulPjIjey4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5168
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774372827; x=1805908827;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qJY4cMJpIBWHKCuOQicQ1CYRjKWNzzgrbJSi74GaVII=;
 b=haiH3thR3fA/yWbVJGOcESfCixbeBeevJ7Xrw6aQDrWw7bk7UFStX33K
 h5n/yhy+BZN52jn56rE/zdNF6LqSaKLMFJPxagcek9PAkxeCDUi0z97Im
 hVFWgLqHuofsR4L7J6l3QT9mwLyD5wSru21Re8CcxrlybX0QxPwhxYU8+
 +ds5BwtN6QSKaJyEPyOV0EQRE6k0Va0IN6acmXuj8MsiUeGOSalNmfQmY
 +3II20ucfeGt0XZ0pGbLxSZ9RD/96wby7rwA1ghdMRchyYIj1qqS0EJrh
 262TuKEH11obz5jnf9oHuXT6MFf+PEYmUHXtJHUFAiPjZlEdYGJ5N4fop
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=haiH3thR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: migrate to
 netdev ops lock
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:kohei@enjuk.jp,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,enjuk.jp:email,intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: B2032319EB9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/24/2026 9:56 AM, Alexander Lobakin wrote:
> From: Kohei Enju <kohei@enjuk.jp>
> Date: Thu, 19 Mar 2026 03:56:19 +0900
> 
>> On 03/19 02:55, Kohei Enju wrote:
>>> On 03/18 17:35, Alexander Lobakin wrote:
>>>> Queue management ops unconditionally enable netdev locking. The same
>>>> lock is taken by default by several NAPI configuration functions,
>>>> such as napi_enable() and netif_napi_set_irq().
>>>> Request ops locking in advance and make sure we use the _locked
>>>> counterparts of those functions to avoid deadlocks, taking the lock
>>>> manually where needed (suspend/resume, queue rebuild and resets).
>>>
>>> Hi Alexander,
> 
> 
> Uff, sorry, I didn't notice this thread for some reason. Maybe it landed
> into the IWL folder in my mail client and I haven't checked it for some
> time... But I read LKML online on a daily basis and missed this reports =\
> 
>>> After applying this patch (3/5) along with the preceding ones on top of
>>> net-next, I got some WARNING splats when changing the admin state
>>> (up/down) using the ip link command. [1, 2]
>>>
>>> Since I haven't looked into this series in detail, I'm reporting the
>>> splats anyway.
>>> I'm wondering why I haven't seen anyone report this type of issue up to
>>> v3. Maybe there is something wrong with my setup or devices?
>>>
>>> Device: Intel Corporation Ethernet Controller E810-XXV for SFP (rev 02)
>>
>> Ah, I think I figured out the reason. My adapter accidentally fell into
>> safe mode. When the adapter is in the safe mode, netdev->queue_mgmt_ops
>> == NULL and netdev->request_ops_lock == false, so
>> netdev_assert_locked_or_invisible() complains about not holding the
>> netdev lock.
>>
>> Setting netdev->request_ops_lock = true in the safe mode path also
>> worked fine for me.
>>
>> ---
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 9ef258d5ab48..3477c53316ba 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -3519,6 +3519,7 @@ static void ice_set_ops(struct ice_vsi *vsi)
>>
>>          if (ice_is_safe_mode(pf)) {
>>                  netdev->netdev_ops = &ice_netdev_safe_mode_ops;
>> +               netdev->request_ops_lock = true;
> 
> This fix looks good to me, thanks!
> 
>>                  ice_set_ethtool_safe_mode_ops(netdev);
>>                  return;
>>          }
> 
> Tony, could you please pick it up to patch 3/5 when sending a new PR?

Yep, I can do that.

Thanks,
Tony
