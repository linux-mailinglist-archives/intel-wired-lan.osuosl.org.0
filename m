Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC995636D4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 17:21:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3743284742;
	Fri,  1 Jul 2022 15:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3743284742
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656688879;
	bh=IiYwJLkMLOVMDWAE5KJgL+VsAvESK1RT0Aci6Y5rztw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hfUIpoqc5J3o0SJAWz3uoOrJAILctrO0H3Fy4byKbFpBQOQSlh6RyYUkxrM0/pBV+
	 WTAx7EDOCzTKHJxGl3CNOEp6HU0pEuTpKEKsqmGITddrROEC6pMB+76O+JGjl6lVaJ
	 UX3tttIcnrJG/46Za8JTzEqQMPjELqELWFYxJ2NnGuKY/UMl4Kb9zdurqUxu4tbz0U
	 S/Huht9eBrrwAIkd1y9b2zpwQ4jEWMaTV94vkyFL8Tq8Pic1XbGlzNPJB0u6VkzEth
	 5SoUE4sv8GzQXTqd8OtoR/EKyFHomBQSZjsYXvreYI9KjIWsX98/ucCB76NRbTjrlU
	 JOIjYvJOrjtNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nNBQY7XNxuy3; Fri,  1 Jul 2022 15:21:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 105AB84741;
	Fri,  1 Jul 2022 15:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 105AB84741
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31DD21BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 181F461401
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:21:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 181F461401
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Fz8avI7ij6d for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 15:21:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29A4561412
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29A4561412
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:21:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="283774873"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="283774873"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 08:21:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="659461398"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jul 2022 08:21:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 08:21:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 1 Jul 2022 08:21:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 1 Jul 2022 08:21:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V5roFVTEyQEMsbdlRw9RkUSqV4Cl3GL5Zi2aPUxCddruplrb366W9labiTFex5RbFt2bB6ZDyqPyzispfMGjR+CIfrDU3PXbMIu4uEPoWnsQlns8udt/P7nINJi4YXfuxtR3QW69txdNBO+psIEY/wJXvsEkc8WG+Cu192do0Qm3glM3SmuMV9pHZ9HJq55A8Ut6uHS0nGvZ4cLL7HAO+WA2BFvTXQxHXMYfw1YfylAgyp/hKhrntLrvsobf5zvXsYCSJo6wfitrLuDk6Fg3CaDq9TTqZYrr23YQevJgRe7+ZfRro8XuiJpkaEEFPrkYVknlnmrFalQy+xuw0V9ulw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EB1r+5KlCkGWe07w1uyIg5Rr2vJmgIUwFkEm7RLd6oU=;
 b=mlAf04ZnpkXItJs99bqiBzUPWhoH80RPafWQIWom8pip+3MxC5tlyI7hH+8KM9RnanA5R+SCnbS9W9m40fYik/cR/j+EyemqM+FXCY7VpSiOla1nALjUvanzeLEKDhBGIJ9xdW3/lQ0Ied+exchJC1TxIbgvLShfZls+6uo4VtsAUanj0LNWac9U0iNwxMNKglDDF2yJYFZbxCZduUtvqH1wBchHimE/b4wGkUhTFCKaoLPd32b9zLSo8OLkRmFus2Ak0OpiiBmgWJlo4ln8jWC/SfUwDgmbQaCRPyeILuqGTbQQZYzp+n0bIzSVkiD8g4Fa4CMK51sYRuNzteHYgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5611.namprd11.prod.outlook.com (2603:10b6:510:ed::9)
 by MWHPR1101MB2078.namprd11.prod.outlook.com (2603:10b6:301:4e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Fri, 1 Jul
 2022 15:21:08 +0000
Received: from PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::5cff:5bdf:9dcc:e393]) by PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::5cff:5bdf:9dcc:e393%7]) with mapi id 15.20.5395.014; Fri, 1 Jul 2022
 15:21:08 +0000
Message-ID: <90be71dd-77b7-866b-c847-61df16cdddd0@intel.com>
Date: Fri, 1 Jul 2022 17:21:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220624101611.1007933-1-michal.wilczynski@intel.com>
 <20220624101611.1007933-2-michal.wilczynski@intel.com>
 <a45f2a0f-9aa5-1a81-42d5-c7e89e92398a@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <a45f2a0f-9aa5-1a81-42d5-c7e89e92398a@intel.com>
X-ClientProxiedBy: FR0P281CA0004.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::9) To PH0PR11MB5611.namprd11.prod.outlook.com
 (2603:10b6:510:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f7a34432-f6fa-4beb-9aea-08da5b7552e3
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2078:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gKpklqk2m82Nymq1GrsF8zeI2UKcCfF6VRvX470KxkUL1p/pOaChZnX3eoXIlQZHoaLqUG7iWP0c2JXmKyYqRs8g+4Pztw0dZk8wUTzisdKaEcEg8diXCdXf1VpunLNquyowCAQTEkH++aaQjNwjb60F5GHkMh35rxhbdntfNdYUt7xS6maLCYDSRziJ0VGj78MVLRX2jzj5deZQ65j91vlWnVynGVRohnpqfzIIh9L/VyHxrMeNA1BysLzJ6mDM2sqlWesAQaqIyMdsLUFxglNomfHJ/JUsZBtF+TdfUktq4OZzUneDUJUMQVu/RTFi7fGu7APR7TXryZZYfnTWeokKcDoiNnms6LGPGkYYYr1XS/ZsFa1CzxN9DmG602lCcpaxPuNmm3Db4+8zICcvdeVEI/YI3qC8cSXldUXpXO/uTX2s8MLiOIMz9WlfXf3SUKaa1x+gw6riaa1u/TgLeNd6+KILmLUmnpAtzTXdzX2OVESL5urqPNNJGEFUq5h4Ks2tppo6DHux3KJsQaxn1LxkRScIx9pTZ171dkYOquyFEZy7IIJRRQ/oVsUDZ2QALDugACZl29kzRGZ6FnMxNtgi5MSJGLg4gErAEI5f42no+etekQr/B+v5VTZ90REUqVI6csjOip+HuSk92CQJACvG+jYnLCPl0maQKJsVIv3b03VdWv3LQUm92xB4Nm/RFq2kHtW9SzGqWyfmN3pAGG3NjMeSkSuB7IkykVCFVdeQWbrydaMnqpK1JnwYTps1Mp3BifMd2ifDLmwyFfI7P4XM/eElENlq+ZaVUfonQKxd5FoLuF/nvzwZgHgvzB29CCinhDnxDa3/09QOqtRc+U08zxqqLX4DGCd+3HP2ZmY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5611.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(39860400002)(366004)(346002)(396003)(478600001)(6486002)(38100700002)(186003)(66476007)(31696002)(6512007)(6666004)(53546011)(31686004)(36756003)(86362001)(66946007)(66556008)(2616005)(316002)(6506007)(8676002)(41300700001)(26005)(2906002)(8936002)(5660300002)(83380400001)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STdRK2FxWUtla3dPSVN4M05uTHRiSFJqVUQzZStwZGMxaUR0bzhBVE4vV3Zx?=
 =?utf-8?B?NFQ3dFI0ODFiNC9lVnFxYzdGM2N3TTdIZExzaXQyQkJtTnppMUF2VXUvcXp6?=
 =?utf-8?B?dVZYV1B4VTBNdDhCRmoyNjNMeE1CQnA2OWNSd1ZRdS9BWE5DRTFpUnBPQVZE?=
 =?utf-8?B?cFpvNXJoemMvMVJBTFlRTGEvMDNmNGZvSU5ibVF0REhQdXhTRmVPeWtKd0Y4?=
 =?utf-8?B?UWFibFNVK2ZTT1J1K0JITW5ZcjZpcFlKWklkaXowTm5KeGQycWtFSlg1VDVn?=
 =?utf-8?B?M2pBVVptQ1RLYkMreDJDWDNYeEtPMW0rWjNRRlhNL29aWVRFVFhYWHRQVmJH?=
 =?utf-8?B?bGRaRlVmR0N5UDN2NVdHMTBSWTQ0ZzBTNXRoclJ2QUh3NnVEekR1TC8vV3Uv?=
 =?utf-8?B?SFBQMGtJb3NRaDNSY1p1cFluNzAzdENId3dUWjBBUjU3clFvS2JacFJadm9M?=
 =?utf-8?B?LzJRUDNWZVdpUXB2bjFuNnRJVmdQNWo0VmdYeml6Ri9kcTBwMkZIWG5uS05S?=
 =?utf-8?B?OUlnWFl6am1JNjBvUkxwd2V1QndTNytXSFVRZzRSWC9KVGU4YTN3TDNndlVs?=
 =?utf-8?B?V3loVHBNVnhPbWNFamRWUFk3c2lKK2hkTXdrMGNndHRSWHZ2NkZ5Q3JOODkv?=
 =?utf-8?B?UkM3dkdHSExGYlFmc3pSRHNmZWVkUE1BUXN2VitNTXluRlNjVy8yZEVIUWNj?=
 =?utf-8?B?OWIvV0hKQzg1Wm01R2FKNFdrRTF0OUhVZEMwUVUvYXhKTUJ3dXZGSEJvS1JE?=
 =?utf-8?B?bElDdWVKclluWGJXK21mc2d3bXdjMUd5UjYrZlBXa0xsRklsM2diUGU2NTRX?=
 =?utf-8?B?OVE2ZEtrby92WjYzalY2V2QxY2JyOTc5MWp3NmJFQ2FYcnZydlRZcDhIT1FW?=
 =?utf-8?B?ZkpzbFE3ZjNwRk5JWmxIaGwxUlNnd3BnVHdxYWd4dklMYi9kb0I4K3d3QW05?=
 =?utf-8?B?aC9ub1l4c0JibmtlMEhQQTBKMjY0MDQ2VVFwTVBreUNkRlNRTUhDNTUxYUsz?=
 =?utf-8?B?bWF1VmsyTkZrRS9vc0E0MXlWSHV0ZVQzN2p2L3BPaTV0ZWdhcUplczI0bTBs?=
 =?utf-8?B?TTRkTjdLaWNQaHZ6VEVKcmgwVTNyZVptYWJyeDh4dk0wMVlhcHpqbDZrZUJ3?=
 =?utf-8?B?MGZBZ202TlJHeCt0bFduVUdmOGxyMjJnSnFIYVdjNHVMYUx5S2xBSU94eTYr?=
 =?utf-8?B?ZUh2dUtzNjFqOWNlQ0x5aXNoaE45V0VkdG11djNvNFR1OEZLTys1VGJ4S1B4?=
 =?utf-8?B?Wkh2R0h2Ly9tdG1nY1lsNHgyYUFLWW5UdUloL094ajhYU2lTMDlTbk5yWnF5?=
 =?utf-8?B?RitQcnhjU3J5Y0NseG9xdGNlWVl0cFZmdWtLcVI2ZFBUNk5yZk5hYW8zR1Qz?=
 =?utf-8?B?Uk55TzFycGJxVUw1ZE9EdXFCc2ZRRHQweEUrVi8yWFV4OHFtT1docU9UVnFm?=
 =?utf-8?B?VCtHbm5ma2wwc2NHb1hFZnZBTUUwRzk5eWo4QjQ0S0k1bGZnR3ZnWmNhNE5x?=
 =?utf-8?B?THRRcUdxYURsL1M2Y1dZTFYxVlJ4QjBSdURFVVpNSml2c3grdGtRVnhWb2M5?=
 =?utf-8?B?bHk3TGpoWDFQWGlyckZ6cUJJNW9sZUhlT1puRFZjWkVXWWk5RGdrSWd0aWR0?=
 =?utf-8?B?Z1Z5cnI0TUY3dFY1YkhPaGh2bG0ydDBsenRPTkJvd3pCRWMrenVZcGg3OGNX?=
 =?utf-8?B?cnQ1OTlJWDhUUUtONUxpbStUcWU2cDBFTEdZbjJoNXdpSUR4NGxQMkhkWlVR?=
 =?utf-8?B?bGVJUlptZm9LVERtK2MvMGFwMWdwQ3JhaWJITEV3RjZmU1VmMzNCbkVZc2hK?=
 =?utf-8?B?M1VYQnliVmx3Z0JQVkFsRm1oU2VPdTlFem10SWI3RjJ3SmpsV05FYzcwUlNQ?=
 =?utf-8?B?c2w1WGgwMnR4WVI5VzRselVZMTVIc0Z1SjNyNFFxUm5UeklTY3VUMVhBMStj?=
 =?utf-8?B?ME9hVDMrTURMOWk5dGJNa1B0c0NxL1RYeWVxUlZUU0xBNTRVQU5lMGhtM2cz?=
 =?utf-8?B?NnJGYmw1YU9TVHZXQnFwdzh3TWYxaEFTNXBpMXoybmMrYzEreFgwYWY2V20r?=
 =?utf-8?B?NjZWQkNlR013ZWhub1owaHJ5dVo2WUlHR2NQT2FPaGxWc3hrM2VINXAwQm5p?=
 =?utf-8?B?bFBLQlNNM1ZQY2RMTGtwbmR5dU5JZW9oVzNsd1Z4dGtIRWRMR0d3UHNOTVNn?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7a34432-f6fa-4beb-9aea-08da5b7552e3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5611.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2022 15:21:08.8482 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: edvFF2j3b/vd4bZXemu9eCmAY22j+DoEA8V+FouqSxFCTjfgDWB1nIPd1TfTUcrlTIztYVbQcH9mwoAfK8d73ALueu0HHiMcWO8VoE0Riuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2078
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656688872; x=1688224872;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8bqPgxx5/I5obxCdMuo9NUgX07Df4bkbMsnK8eFhal4=;
 b=c7cox/eH/U4fovy9dHu24/JSE5aTw4RDXCK6HXGAEemrfFQq1Z2dGgJn
 rR9ssaBSBGBKcQB5wHC2A57qjcMZT1DVKQC18IAl5+uPZNmxrrtRDYbCQ
 PzeSH0oklPR8j1jmb1NdDFxhrUB57nnpo19DBuvW+qCACeU8NaWdEyGgh
 K33XnFw8gEcPgudx7JqGOIzr98o9hEeTk0dRYcw0ZiXpPiaVgQtt7/VVr
 371j3oV9wuciXcP7ar5JPt4XVoRsxvcqPSkjUTr5h9dhrVaGrzKp/lW6q
 50ZNdAHAfojPa8+Amsey02WjON7ZYRgFzXuj6dqqQ8ErjVi/byhUd+BBD
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c7cox/eH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] ice: Introduce
 enabling promiscuous mode on multiple VF's
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LAoKQXBwbGllZCBmaXhlcyBmb3IgeW91ciBjb21t
ZW50cyBpbiB2Mi4KCgpPbiA2LzI5LzIwMjIgMTI6MDYgQU0sIFRvbnkgTmd1eWVuIHdyb3RlOgo+
Cj4KPiBPbiA2LzI0LzIwMjIgMzoxNiBBTSwgTWljaGFsIFdpbGN6eW5za2kgd3JvdGU6Cj4KPiAu
Li4KPgo+PiBAQCAtMzY5NSw3OSArMzY5Niw2MyBAQCBib29sIGljZV9pc192c2lfZGZsdF92c2ko
c3RydWN0IGljZV9zdyAqc3csIAo+PiBzdHJ1Y3QgaWNlX3ZzaSAqdnNpKQo+PiDCoMKgICrCoCBP
dGhlcndpc2UgdHJ5IHRvIHNldCB0aGUgVlNJIHBhc3NlZCBpbiBhcyB0aGUgc3dpdGNoJ3MgZGVm
YXVsdCAKPj4gVlNJIGFuZAo+PiDCoMKgICrCoCByZXR1cm4gdGhlIHJlc3VsdC4KPj4gwqDCoCAq
Lwo+PiAtaW50IGljZV9zZXRfZGZsdF92c2koc3RydWN0IGljZV9zdyAqc3csIHN0cnVjdCBpY2Vf
dnNpICp2c2kpCj4+ICtpbnQgaWNlX3NldF9kZmx0X3ZzaShzdHJ1Y3QgaWNlX3ZzaSAqdnNpKQo+
Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYzozNzMzOiB3YXJuaW5n
OiBFeGNlc3MgCj4gZnVuY3Rpb24gcGFyYW1ldGVyICdzdycgZGVzY3JpcHRpb24gaW4gJ2ljZV9z
ZXRfZGZsdF92c2knCj4KPgo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGRldmljZSAqZGV2
Owo+PiDCoMKgwqDCoMKgIGludCBzdGF0dXM7Cj4KPiAuLi4KPgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYyAKPj4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jCj4+IGluZGV4IDhkOGYzZWVjNzllZS4u
ZjZjZDczZTlkNDUxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3N3aXRjaC5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2Vfc3dpdGNoLmMKPj4gQEAgLTEyOTgsNiArMTI5OCw5IEBAIHN0YXRpYyAKPj4gREVDTEFSRV9C
SVRNQVAocmVjaXBlX3RvX3Byb2ZpbGVbSUNFX01BWF9OVU1fUkVDSVBFU10sCj4+IMKgIHN0YXRp
YyBERUNMQVJFX0JJVE1BUChwcm9maWxlX3RvX3JlY2lwZVtJQ0VfTUFYX05VTV9QUk9GSUxFU10s
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJQ0VfTUFYX05VTV9SRUNJUEVTKTsK
Pj4gwqAgK3N0YXRpYyBib29sCj4+ICtpY2VfdnNpX3VzZXNfZmx0cihzdHJ1Y3QgaWNlX2ZsdHJf
bWdtdF9saXN0X2VudHJ5ICpmbV9lbnRyeSwgdTE2IAo+PiB2c2lfaGFuZGxlKTsKPj4gKwo+Cj4g
SXQgbG9va3MgbGlrZSB0aGUgZnVuY3Rpb24gY2FuIGJlIG1vdmVkIHVwIHRvIGF2b2lkIHRoZSBm
b3J3YXJkIAo+IGRlY2xhcmF0aW9uLgo+Cj4+IMKgIC8qKgo+PiDCoMKgICogaWNlX2luaXRfZGVm
X3N3X3JlY3AgLSBpbml0aWFsaXplIHRoZSByZWNpcGUgYm9vayBrZWVwaW5nIHRhYmxlcwo+PiDC
oMKgICogQGh3OiBwb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3QKPgo+IC4uLgo+Cj4+IEBAIC0zODgy
LDU0ICszODc4LDY2IEBAIGludCBpY2VfY2ZnX2RmbHRfdnNpKHN0cnVjdCBpY2VfaHcgKmh3LCB1
MTYgCj4+IHZzaV9oYW5kbGUsIGJvb2wgc2V0LCB1OCBkaXJlY3Rpb24pCj4+IMKgwqDCoMKgwqAg
Zl9pbmZvLmZsYWcgPSBkaXJlY3Rpb247Cj4+IMKgwqDCoMKgwqAgZl9pbmZvLmZsdHJfYWN0ID0g
SUNFX0ZXRF9UT19WU0k7Cj4+IMKgwqDCoMKgwqAgZl9pbmZvLmZ3ZF9pZC5od192c2lfaWQgPSBo
d192c2lfaWQ7Cj4+ICvCoMKgwqAgZl9pbmZvLnZzaV9oYW5kbGUgPSB2c2lfaGFuZGxlOwo+PiDC
oCDCoMKgwqDCoMKgIGlmIChmX2luZm8uZmxhZyAmIElDRV9GTFRSX1JYKSB7Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCBmX2luZm8uc3JjID0gaHctPnBvcnRfaW5mby0+bHBvcnQ7Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCBmX2luZm8uc3JjX2lkID0gSUNFX1NSQ19JRF9MUE9SVDsKPj4gLcKgwqDCoMKg
wqDCoMKgIGlmICghc2V0KQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmX2luZm8uZmx0cl9y
dWxlX2lkID0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBody0+cG9ydF9pbmZv
LT5kZmx0X3J4X3ZzaV9ydWxlX2lkOwo+PiArCj4KPiBPZGQgcGxhY2UgZm9yIG5ld2xpbmUKPgo+
PiDCoMKgwqDCoMKgIH0gZWxzZSBpZiAoZl9pbmZvLmZsYWcgJiBJQ0VfRkxUUl9UWCkgewo+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgZl9pbmZvLnNyY19pZCA9IElDRV9TUkNfSURfVlNJOwo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgZl9pbmZvLnNyYyA9IGh3X3ZzaV9pZDsKPj4gLcKgwqDCoMKgwqDCoMKg
IGlmICghc2V0KQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmX2luZm8uZmx0cl9ydWxlX2lk
ID0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBody0+cG9ydF9pbmZvLT5kZmx0
X3R4X3ZzaV9ydWxlX2lkOwo+Cj4gLi4uCj4KPj4gKy8qKgo+PiArICogaWNlX2NoZWNrX2lmX2Rm
bHRfdnNpIC0gY2hlY2sgaWYgVlNJIGlzIGRlZmF1bHQgVlNJCj4+ICsgKiBAcGk6IHBvaW50ZXIg
dG8gdGhlIHBvcnRfaW5mbyBzdHJ1Y3R1cmUKPj4gKyAqIEB2c2lfaGFuZGxlOiB2c2kgaGFuZGxl
IHRvIGNoZWNrIGZvciBpbiBmaWx0ZXIgbGlzdAo+PiArICogQHJ1bGVfZXhpc3RzOiBpbmRpY2F0
ZXMgaWYgdGhlcmUgYXJlIGFueSBWU0kncyBpbiB0aGUgcnVsZSBsaXN0Cj4+ICsgKgo+PiArICog
Y2hlY2tzIGlmIHRoZSBWU0kgaXMgaW4gYSBkZWZhdWx0IFZTSSBsaXN0LCBhbmQgYWxzbyBpbmRp
Y2F0ZXMKPj4gKyAqIGlmIHRoZSBkZWZhdWx0IFZTSSBsaXN0IGlzIGVtcHR5Cj4+ICsgKi8KPj4g
K2Jvb2wgaWNlX2NoZWNrX2lmX2RmbHRfdnNpKHN0cnVjdCBpY2VfcG9ydF9pbmZvICpwaSwgdTE2
IHZzaV9oYW5kbGUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvb2wgKnJ1bGVf
ZXhpc3RzKQo+Cj4gaWNlIGRyaXZlciB1c2VzIEdOVSBzdHlsZSBmb3IgbXVsdGlsaW5lIGZ1bmN0
aW9uIGRlY2xhcmF0aW9ucyAoc2FtZSAKPiBjb21tZW50IGZvciBwYXRjaCAyIGFzIHdlbGwpCj4g
ZS5nLgo+Cj4gYm9vbAo+IGljZV9jaGVja19pZl9kZmx0X3ZzaShzdHJ1Y3QgaWNlX3BvcnRfaW5m
byAqcGkuLi4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
