Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8D64FAD0F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Apr 2022 11:26:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D16C60D4C;
	Sun, 10 Apr 2022 09:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L7IRBI7V-0M9; Sun, 10 Apr 2022 09:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1299360C25;
	Sun, 10 Apr 2022 09:26:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0D801BF870
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Apr 2022 09:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4DD2842D1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Apr 2022 09:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NO41NCipDbZr for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Apr 2022 09:26:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58D0B842B8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Apr 2022 09:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649582808; x=1681118808;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qQg0a0NODuW6CVMkUnC7O2q80L5D2NhbDL9dgb6ySkw=;
 b=Yt4co179X5iDoA4CXWUyPk9d31gHTqLMWjzr5rAvUyUws9cygeHSgm9d
 2ft1S5zANbtrkMnEcpuh+5TdO0a3zhdHvSzv7ItmrRn4ufDz7MVhwZ6el
 Kb749nJi5YhmNRCwPV9vxK/1dKA1zuUyi5FDBofkDBmi4Nh9fN4AlHRN2
 4Felz5nysqQRGxN9YKgyoRmXc+UJZoUgKiqXzUk+xrf5otN+gorCdwthI
 AtpK99XSktzHwVnpXeaYUYziw8m2TGU/24ufw+FvFwBfuDtnQHRGYZ2sp
 jSJsaNJnJ8/yviT0Vq5FNzTPfkH6XVX8TJanwyW2kuWafrOJeryZp7oZv A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10312"; a="241891955"
X-IronPort-AV: E=Sophos;i="5.90,249,1643702400"; d="scan'208";a="241891955"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2022 02:26:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,249,1643702400"; d="scan'208";a="589427983"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 10 Apr 2022 02:26:47 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 10 Apr 2022 02:26:46 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 10 Apr 2022 02:26:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sun, 10 Apr 2022 02:26:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 10 Apr 2022 02:26:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cWwl+5J09ywgeqhp+YQ5gwGw+yfqz9w8B9ZLQQyBwWaNPwwg9AS8DqZzdK6e2DeQVxPOSNih8bSrO9x88WuF05LZmer0NAjKVI98Pp4sMA00KCvFr7kdv3k+1OnGz9KNfiO2KDB6zdX4s5qdP+y8QisgRF5zC7QFc3SUOjMBoev8T5GT47glqtwHFpY73ouMqET58V283m6adZ3o9Iv+IBan0s4dypcgZqO380COG/XqXfMY5zrQWSm8bxsWcRCojtQqsmCn123AECLH8BLUivZCaHwByvtV8sXDMZOsYR9MPl7u+zixavNU+cbRPBP0U63CDpZTlGIQ7L0WNy11Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oR3kw+4V/C83yKVrqjjOgDQyfe7sjaE+Qvtwh15Mdqw=;
 b=ku4Y1QRL0TUT1nER6UqbeJdsIA3DYmJr4SiAdebY6s+EYwLeQXbfrZJ3nhLbdbkSqIuMgvtFtq39iMzz8soUNcCoIjpu8Uu8AConh8IhkzHLrJ1bFQuo5pJY76f27lVG+zj9eOKoKCvzLziF3zjrawyzQ9D9R8kyR9T4zDkli585ATOy70Io11MOU0nAsaOeLupoPZhDjB2KI2UaWaoacmMA2Z8dwEXGMxKQJAGF82hH0+YMbo0Q12ltOCGZK2Ga/Wja9H7wrEOTLDID9ovMjXVKdgdYntjySYOBy11dCIezPF52RLxso58F2XVAoE/HEPopY9lW1kCJCiZSIeU+yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 by BY5PR11MB4150.namprd11.prod.outlook.com (2603:10b6:a03:190::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Sun, 10 Apr
 2022 09:26:43 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::758d:b6d0:2a6d:54e1]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::758d:b6d0:2a6d:54e1%6]) with mapi id 15.20.5144.029; Sun, 10 Apr 2022
 09:26:42 +0000
Message-ID: <b63584c0-aa7c-9252-f3ef-7ddc857ad5ae@intel.com>
Date: Sun, 10 Apr 2022 12:26:32 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-US
To: Thorsten Leemhuis <regressions@leemhuis.info>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>, naamax.meir <naamax.meir@linux.intel.com>
References: <6801d0ef-9620-0f61-c107-c2c5524952ef@leemhuis.info>
 <1e0558eb-b1f1-edb5-e554-a41f2c160401@intel.com>
 <d25169dd-02e5-73ad-3873-eec374697233@intel.com>
 <46696877-3dc9-0600-9a8f-eda42d029cd7@leemhuis.info>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <46696877-3dc9-0600-9a8f-eda42d029cd7@leemhuis.info>
X-ClientProxiedBy: LO2P265CA0260.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::32) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:95::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1c8a277a-9597-4336-de38-08da1ad438cb
X-MS-TrafficTypeDiagnostic: BY5PR11MB4150:EE_
X-Microsoft-Antispam-PRVS: <BY5PR11MB41508BDEABD5D049F064EBAC97EB9@BY5PR11MB4150.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /ETWoZBF+fDGoMcjIrHsDr8PEnbK9Rzm/sn69jroJjolSwxO7xJ4LC7oKhSImqpOass3SRBkCJKCkxFhY3a2s0mCOUE9b+yqKmNAkEafWZ561OZ+88couObI7P0ZLml16dhYxxR3ZFSPaRkPROY0WhW2PVFgh6HTLp4qmXP1+jwdeEMTRFcafDAhEUhR3QlarQkrdzij19IXBqYGiDwChqhNHAfzIN2i9HKi/eVve2HQi69nAuFs41P0tdHhDMYtgFGta0yYyO4CglZcMopBIT5PMDjd+udX69KZM46i/NYolOqr4eyZlJKZhfon9vRxANazGgP1X4+CnUvkbWS5x8n+cL0exU/697d2ca2HEPgcxQu1YqKXZr+/O7ShQXmZeji6CYiWj6UdbmB6k+fEtIuun6d2xo69i0P6pFkKMaPgDuiLY+PD+3D6aYAzKojR7VIbc52uLA+nl4HTj0q1k8mFnttGAhZqkxUEdmjUz03r4ZWbgbMWFrYfpZYl+gfCkGeauTzQ4bqtYxmZ2HQSSeJw+m8kW7Tfy1hwaht8E/mNGglm10zPYdbVxXOnZOS8yzixqNEHfF+2w23EVN4mjOv/arAD7kP1kw4sMr2Fqaw/zpww+Jtuf5cl22sOsb9eMAkQqSAnM9GioByoHPOVyJ/OB0QNkSjE42VzYHqCHIyTQh/ItGoeRhTSMEMSX6Y9eQYCtnxrsXZnRT20bapXfdzMe1aEBQrwnWVK7fyI6zStbbSUkKAhBW2L0VqldtA/8PUoSIHtFyuFcwiDe8cFpyqB8ecRFMkSgaWF811l29RJABGL2Ry26X9q5tYgrlxFCSZTDf7uMAprwZS83ehUMtgF69Tk/H+2Ec+LOYa/KCI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(508600001)(8936002)(6486002)(966005)(26005)(186003)(5660300002)(2906002)(36756003)(31686004)(316002)(31696002)(86362001)(66946007)(2616005)(4326008)(8676002)(54906003)(66476007)(66556008)(110136005)(6506007)(53546011)(82960400001)(6512007)(6666004)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkgzZ3hKSDdxVjYvbzhPTEJvZjVjcWR1bXcvRGMzRE5IaDllOGUvaEs4eUtj?=
 =?utf-8?B?ZmMvbVl4d0JZMjd4cUt6MVY0elFQcGJVUmtwMkJTbjFHUWFCQWMvS1pIS1I5?=
 =?utf-8?B?YXpvOEFMWlZJbk8wbWJCOWFORjNieGgrQmpxeXhJMmcvdFhuUCs0RXVFSGl2?=
 =?utf-8?B?MU5HVVFIdHVoNjJ2Rzk2alk1b254NmhiZkY2QU9PUFI4TytTWGlGTlJXNHlZ?=
 =?utf-8?B?cnpTOC9VVXdod1cxdEJscDNpNDh2YkVQVFRSWXkwWFBkeDRMSHc1OVNHdlZk?=
 =?utf-8?B?YXBEbFFZTWlSTXFna2d3b1VVeFBtVUkxSWM0UDNSdW0yTXJhckZiaWZZRkZE?=
 =?utf-8?B?YzFPVlRZazIvZkNOTnpybHM4UGpJT2ZwRVZMWHdkYXhkbWxaTStWSmhjRG9y?=
 =?utf-8?B?enRPZ2Jvd1FNRnREdk9Mc1RzK0duVW91NzMxQVN5Mk02aVIvRWtoNDkzUFFu?=
 =?utf-8?B?MlBPbDVKQnhWd3B5aXZXWHRBTnlyUHNDTzZIbGpNMmpodnBTMERDcUlWNWo2?=
 =?utf-8?B?MVA2ZzNWc3FjSjNacS9jcVlhaUhsNUlReS9OQmZZRG9NRlFyWURxKzVvMFFV?=
 =?utf-8?B?OEJidGtRU1FadkJFeXc1SS82WFlCS2FvSENRZStoaThDaUJnaEJUZ0VZRGxZ?=
 =?utf-8?B?Uk9TVmdGUjgwWER4eDhZQzV0eXpneTJwSHI4U3VnVVorMGlEM01IbVRZVnF3?=
 =?utf-8?B?Y3MzWEdhK2ZlOFVRTUZxV1JOZ0RzUmdUL3o3ZU9USk9VWGY4V3lYMEphRksv?=
 =?utf-8?B?bCtzSUVraGRMeEhqeUVUQzZYeE1ra3NHUENEVWRmeEpqOHRVaWMxV1QvdWFV?=
 =?utf-8?B?QlNvaVhXM3VYSUc1eTFNWFZOUW1kRWNTK2pyczVOQzR3NWNEcmtLdSsyYmx6?=
 =?utf-8?B?cSttbjBCWk5KNFVFdUtCRDZhTjhRK0JBbi9qSVFvNGJFaGltMTFoMWNFZG5T?=
 =?utf-8?B?dU1xR1Nnb1dRTEFnOTZLclozdm51ZTZydXZoSXgwalhIdytHaXd1YUd0a1g5?=
 =?utf-8?B?KzJscDVvcWZENjNONStHcVdwL1c5a1hKdG95WUkzZ25UZTh3RStOZjNKaHFx?=
 =?utf-8?B?RVlnQUcyQk5VbGVsRmw5bVpJYUlnQmx2bUw1OG1TQVpvNnNxdXFNSWpGcEZt?=
 =?utf-8?B?WlhabEFzSWtIWGh6MU5FT0lOeXpCU1M2T0NwbzArRG1zcjBNbG00QVVPTVBi?=
 =?utf-8?B?UmhNTSsySTlDL0ZKc1RwM3B1MFBqVEVveG1Fb0dJZWViYzVQYkhXM1lzV1Ex?=
 =?utf-8?B?UW8wbk9Qa2tFOEwwbzFlS3pXVFh4aWhqYi9wMlYwMWlkYjN3TUNVSjdKK1U3?=
 =?utf-8?B?NHFTZlRsS28wYlo1VWQxNUUwMjNJREtvYXZuVjJzeDVXQlRnK0VkaHNvcjJ0?=
 =?utf-8?B?WDM5NzJPSE54cnVqZTBPOGFsRzdVbFRWQzlBekpMOGNyTGs4YWRldEJUQmVh?=
 =?utf-8?B?MmIyTG50RFY2YU1PeUZ1MjI4NWQxRHF1NFBEMEJDYmV5aERsa3RNUDJDOEpB?=
 =?utf-8?B?RlJEWDR4ZFZNV0I4aXB6RkFlK3hVRkRMUkQ3Qzg0RXRYRWs5djByelZjNWJF?=
 =?utf-8?B?MWdVSGxzRWxldVk5UTVmVlFCSUsvVmFqTWJvN0c4TUlrbHQ3TDZOMjNvNTFo?=
 =?utf-8?B?b28rd2IwR0U1OHlIVnRwb3NhQ1R3Y0d4MlVMRnpiYXpZSUNRUFcwUFB5dEtS?=
 =?utf-8?B?UzhWNElrOUE0U04vd2NNbzMxVUNFU1BwWjlpODJjcXQvS1kzMUdabC9OVEZk?=
 =?utf-8?B?WVRkUmNOS3hGRkQxdU8raFg2dUhSNzN0TnRLeUw2eDJRZkpuRTlPWWQ4NHNN?=
 =?utf-8?B?RVNIZ01ob05JT0t2SENCRlBPQWg1bjh1d3lMNVdqQjBOY09mUzNGS2kyQUd2?=
 =?utf-8?B?eXREaGZHeU9YR1cxTUc3R1B1a0xFUkhtTVlFb1hvaExmU2tlck9oNVoyQmh0?=
 =?utf-8?B?SFF5b0RRdlpjNG01WHRzSUpPeDE0L1YwNjl4NEl5TUhGaWdqWko2YUlNYXRH?=
 =?utf-8?B?NUIwYTN3VisxdVVkelQ1eE1QNExGUCtCVmlQaGpUYTUxdG16eWluamE2Mmkv?=
 =?utf-8?B?U29LWWVXdWNEcEZUSVYrcTNKRmJ1VFAxaFpFRE44NklyQkorN2VYemZpLzFK?=
 =?utf-8?B?UzBNQ2xHRHVFQlY1UzJlVGxqNFlyM2h1dDU0RkN1RG5iTk9JVzJlT0lOcnVX?=
 =?utf-8?B?UWU1VFRUV242Q3dMU0czVklhVi91bjN0Ny9SMHpDSHo1aG5wdnNrTW1NWnZo?=
 =?utf-8?B?MGRBN24zMC8vd3FhRS9lWHlIN2s3MjdwTkVmN2JDaXpaaU0zL2xCRGdQcVQy?=
 =?utf-8?B?TUNxbjkzYVp2VGhqY1RESDdZYnh6cUlDcGJjMG82VXFYVGdCZG5VNWxsWWM3?=
 =?utf-8?Q?HXN+x0R70Bp6e2PE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c8a277a-9597-4336-de38-08da1ad438cb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2022 09:26:41.8838 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RvRtrChBr9VMRztHAIsESsuGcC5EN1utydVUBpXrLfcv4IoOAtGzaPz0On+0OgVHyvjXb83nxJkxTjTAK7CUkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4150
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Bug 215689 - e1000e: regression for I219-V
 for kernel 5.14 onwards
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
Cc: James <jahutchinson99@googlemail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC8xMC8yMDIyIDExOjIxLCBUaG9yc3RlbiBMZWVtaHVpcyB3cm90ZToKPiBIaSwgdGhpcyBp
cyB5b3VyIExpbnV4IGtlcm5lbCByZWdyZXNzaW9uIHRyYWNrZXIuIFRvcC1wb3N0aW5nIGZvciBv
bmNlLAo+IHRvIG1ha2UgdGhpcyBlYXNpbHkgYWNjZXNzaWJsZSB0byBldmVyeW9uZS4KPiAKPiBI
ZXkgU2FzaGEgYW5kIGUxMDAwZSBkZXZlbG9wZXJzLCB3aGF0J3MgdXAgdGhlcmU/IFR3byBhbmQg
YSBoYWxmIHdlZWtzCj4gYWdvIGl0IHNlZW1lZCB0aGUgcm9vdCBjYXVzZSBmb3IgdGhpcyByZWdy
ZXNzaW9uIHdhcyBmb3VuZCBhbmQgYQo+IHByb3Bvc2VkIHBhdGNoIHRvIGZpeCBpdCB3YXMgYWRk
ZWQgdG8gdGhlIGJ1Z3ppbGxhIHRpY2tldCBhbmQgZXZlbgo+IHRlc3RlZCBieSB0aGUgcmVwb3J0
ZXIuIEJ1dCBzaW5jZSB0aGVuIG5vdGhpbmcgaGFwcGVuZWQgYWZhaWNzLiBXaGF0J3MKPiB1cCBo
ZXJlPyBPciBkaWQgSSBtaXNzIHNvbWV0aGluZz8KSGVsbG8gVGhvcnN0ZW4sClBhdGNoIHN1Ym1p
dHRlZCB0byB0aGUgSVdMOgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC90bmd1eS9uZXh0LXF1ZXVlLmdpdC9jb21taXQvP2g9ZGV2LXF1ZXVlJmlkPTdkZDEy
MWI4ZDU3MzU3ODBiNmE3MGRiNzM1ZDQ0YjNlNWI4NTYxMzAKPiAKPiBDaWFvLCBUaG9yc3RlbiAo
d2VhcmluZyBoaXMgJ3RoZSBMaW51eCBrZXJuZWwncyByZWdyZXNzaW9uIHRyYWNrZXInIGhhdCkK
PiAKPiBQLlMuOiBBcyB0aGUgTGludXgga2VybmVsJ3MgcmVncmVzc2lvbiB0cmFja2VyIEknbSBn
ZXR0aW5nIGEgbG90IG9mCj4gcmVwb3J0cyBvbiBteSB0YWJsZS4gSSBjYW4gb25seSBsb29rIGJy
aWVmbHkgaW50byBtb3N0IG9mIHRoZW0gYW5kIGxhY2sKPiBrbm93bGVkZ2UgYWJvdXQgbW9zdCBv
ZiB0aGUgYXJlYXMgdGhleSBjb25jZXJuLiBJIHRodXMgdW5mb3J0dW5hdGVseQo+IHdpbGwgc29t
ZXRpbWVzIGdldCB0aGluZ3Mgd3Jvbmcgb3IgbWlzcyBzb21ldGhpbmcgaW1wb3J0YW50LiBJIGhv
cGUKPiB0aGF0J3Mgbm90IHRoZSBjYXNlIGhlcmU7IGlmIHlvdSB0aGluayBpdCBpcywgZG9uJ3Qg
aGVzaXRhdGUgdG8gdGVsbCBtZQo+IGluIGEgcHVibGljIHJlcGx5LCBpdCdzIGluIGV2ZXJ5b25l
J3MgaW50ZXJlc3QgdG8gc2V0IHRoZSBwdWJsaWMgcmVjb3JkCj4gc3RyYWlnaHQuCj4gCj4gI3Jl
Z3pib3QgcG9rZQo+IAo+IE9uIDI0LjAzLjIyIDIwOjM2LCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+
PiBPbiAzLzI0LzIwMjIgMTc6MDksIE5lZnRpbiwgU2FzaGEgd3JvdGU6Cj4+PiBPbiAzLzI0LzIw
MjIgMTI6MzcsIFRob3JzdGVuIExlZW1odWlzIHdyb3RlOgo+Pj4+IEhpLCB0aGlzIGlzIHlvdXIg
TGludXgga2VybmVsIHJlZ3Jlc3Npb24gdHJhY2tlci4KPj4+Pgo+Pj4+IEkgbm90aWNlZCBhIHJl
Z3Jlc3Npb24gcmVwb3J0IGluIGJ1Z3ppbGxhLmtlcm5lbC5vcmcgdGhhdCBhZmFpY3Mgbm9ib2R5
Cj4+Pj4gYWN0ZWQgdXBvbiBzaW5jZSBpdCB3YXMgcmVwb3J0ZWQgYWJvdXQgYSB3ZWVrIGFnbywg
dGhhdCdzIHdoeSBJIGRlY2lkZWQKPj4+PiB0byBmb3J3YXJkIGl0IHRvIHRoZSBsaXN0cyBhbmQg
YSBmZXcgcmVsZXZhbnQgcGVvcGxlIHRvIHRoZSBDQy4gVG8gcXVvdGUKPj4+PiBmcm9tIGh0dHBz
Oi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjE1Njg5IDoKPj4+Pgo+Pj4+
PiBbcmVwbHldIFviiJJdIERlc2NyaXB0aW9uIEphbWVzIDIwMjItMDMtMTUgMTM6NDU6MzggVVRD
Cj4+Pj4+Cj4+Pj4+IEkgcnVuIEFyY2ggbGludXggb24gYW4gSW50ZWwgTlVDIDhpM0JFSCB3aGlj
aCBoYXMgdGhlIGZvbGxvd2luZwo+Pj4+PiBuZXR3b3JrIGNhcmQ6Cj4+Pj4+Cj4+Pj4+IDAwOjFm
LjYgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgQ29ubmVj
dGlvbgo+Pj4+PiAoNikgSTIxOS1WIChyZXYgMzApCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgIERl
dmljZU5hbWU6wqAgTEFOCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgIFN1YnN5c3RlbTogSW50ZWwg
Q29ycG9yYXRpb24gRGV2aWNlIDIwNzQKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgQ29udHJvbDog
SS9PLSBNZW0rIEJ1c01hc3RlcisgU3BlY0N5Y2xlLSBNZW1XSU5WLSBWR0FTbm9vcC0KPj4+Pj4g
UGFyRXJyLSBTdGVwcGluZy0gU0VSUi0gRmFzdEIyQi0gRGlzSU5UeCsKPj4+Pj4gIMKgwqDCoMKg
wqDCoMKgwqAgU3RhdHVzOiBDYXArIDY2TUh6LSBVREYtIEZhc3RCMkItIFBhckVyci0gREVWU0VM
PWZhc3QKPj4+Pj4+IFRBYm9ydC0gPFRBYm9ydC0gPE1BYm9ydC0gPlNFUlItIDxQRVJSLSBJTlR4
LQo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBMYXRlbmN5OiAwCj4+Pj4+ICDCoMKgwqDCoMKgwqDC
oMKgIEludGVycnVwdDogcGluIEEgcm91dGVkIHRvIElSUSAxMzUKPj4+Pj4gIMKgwqDCoMKgwqDC
oMKgwqAgUmVnaW9uIDA6IE1lbW9yeSBhdCBjMGIwMDAwMCAoMzItYml0LCBub24tcHJlZmV0Y2hh
YmxlKQo+Pj4+PiBbc2l6ZT0xMjhLXQo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBDYXBhYmlsaXRp
ZXM6IFtjOF0gUG93ZXIgTWFuYWdlbWVudCB2ZXJzaW9uIDMKPj4+Pj4gIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIEZsYWdzOiBQTUVDbGstIERTSSsgRDEtIEQyLSBBdXhDdXJyZW50
PTBtQQo+Pj4+PiBQTUUoRDArLEQxLSxEMi0sRDNob3QrLEQzY29sZCspCj4+Pj4+ICDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTdGF0dXM6IEQwIE5vU29mdFJzdCsgUE1FLUVuYWJs
ZS0gRFNlbD0wIERTY2FsZT0xIFBNRS0KPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgQ2FwYWJpbGl0
aWVzOiBbZDBdIE1TSTogRW5hYmxlKyBDb3VudD0xLzEgTWFza2FibGUtIDY0Yml0Kwo+Pj4+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQWRkcmVzczogMDAwMDAwMDBmZWUwMDNk
OMKgIERhdGE6IDAwMDAKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgS2VybmVsIGRyaXZlciBpbiB1
c2U6IGUxMDAwZQo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBLZXJuZWwgbW9kdWxlczogZTEwMDBl
Cj4+Pj4+Cj4+Pj4+IEkgZm91bmQgYSBtYWpvciByZWdyZXNzaW9uIHNpbmNlIHRoZSBwcmV2aW91
cyBmZXcga2VybmVsIHZlcnNpb25zCj4+Pj4+IHdoaWNoIGNhdXNlcyBzZXZlcmFsIG9kZCBpc3N1
ZXMsIG1vc3Qgbm90ZWFibHkgSSB1c2UgdGhlIG1hY2hpbmUgdG8KPj4+Pj4gc3RyZWFtIGxpdmUg
dHYgdmlhIFRWaGVhZGVuZCBhbmQgd2FzIGZpbmRpbmcgdGhpcyB0byBiZSB1bnVzYWJsZQo+Pj4+
PiAocGljdHVyZSBmcmVlemVzIGFuZCBzb3VuZCBicmVha3MgdXAgdmVyeSBiYWRseSB3aXRoIGNv
bnRpbnVpdHkKPj4+Pj4gZXJyb3JzIGluIHRoZSBUVmhlYWRlbmQgbG9nZmlsZSkuCj4+Pj4+Cj4+
Pj4+IEkgZm91bmQgdGhlIGlzc3VlIHdhcyBpbnRyb2R1Y2VkIHNpbmNlIHRoZSA1LjE0IGtlcm5l
bCwgYW5kIGhhdmUKPj4+Pj4gZXZlbnR1YWxseSBnb3Qgcm91bmQgdG8gcGVyZm9ybWluZyBhIGdp
dCBiaXNlY3QsIHdoaWNoIGxhbmRlZCB1cG9uCj4+Pj4+IHRoZSBmb2xsb3dpbmcgY29tbWl0Ogo+
Pj4+Pgo+Pj4+PiA0NGExM2E1OiBlMTAwMGU6IEZpeCB0aGUgbWF4IHNub29wL25vLXNub29wIGxh
dGVuY3kgZm9yIDEwTQo+Pj4+Pgo+Pj4+PiBJbmRlZWQsIGlmIEkgcmV2ZXJ0IHRoaXMgc2luZ2xl
IGNvbW1pdCB0aGVuIHRoZSBwcm9ibGVtIGlzIHJlc29sdmVkLgo+Pj4+Pgo+Pj4+PiBUbyBoZWxw
IGRpYWdub3NlIHRoZSBpc3N1ZSBJIGFwcGxpZWQgdGhlIGZvbGxvd2luZyBwYXRjaCB0byBjYXB0
dXJlCj4+Pj4+IHRoZSB2YWx1ZXMgb2YgdGhlIGxhdF9lbmMsIG1heF9sdHJfZW5jIHZzIGxhdF9l
bmNfZCwgbWF4X2x0cl9lbmNfZAo+Pj4+PiB2YXJpYWJsZXM6Cj4+Pj4+Cj4+Pj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+Pj4+IGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+Pj4+PiBpbmRleCBk
NjBlMjAxNmQuLmY0ZTVmZmJjZCAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+Pj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+Pj4+IEBAIC0xMDEyLDYgKzEwMTIsNyBAQCBzdGF0
aWMgczMyIGUxMDAwX3BsYXRmb3JtX3BtX3BjaF9scHQoc3RydWN0Cj4+Pj4+IGUxMDAwX2h3ICpo
dywgYm9vbCBsaW5rKQo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoCB1MTYgbWF4X2x0cl9lbmNfZCA9
IDA7wqAgLyogbWF4aW11bSBMVFIgZGVjb2RlZCBieSBwbGF0Zm9ybSAqLwo+Pj4+PiAgwqDCoMKg
wqDCoMKgwqDCoCB1MTYgbGF0X2VuY19kID0gMDvCoMKgwqDCoMKgIC8qIGxhdGVuY3kgZGVjb2Rl
ZCAqLwo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoCB1MTYgbGF0X2VuYyA9IDA7wqDCoMKgwqDCoMKg
wqAgLyogbGF0ZW5jeSBlbmNvZGVkICovCj4+Pj4+ICvCoMKgwqDCoMKgwqAgc3RydWN0IGUxMDAw
X2FkYXB0ZXIgKmFkYXB0ZXIgPSBody0+YWRhcHRlcjsKPj4+Pj4KPj4+Pj4gIMKgwqDCoMKgwqDC
oMKgwqAgaWYgKGxpbmspIHsKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHUxNiBzcGVlZCwgZHVwbGV4LCBzY2FsZSA9IDA7Cj4+Pj4+IEBAIC0xMDc0LDYgKzEwNzUsOSBA
QCBzdGF0aWMgczMyIGUxMDAwX3BsYXRmb3JtX3BtX3BjaF9scHQoc3RydWN0Cj4+Pj4+IGUxMDAw
X2h3ICpodywgYm9vbCBsaW5rKQo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICgobWF4X2x0cl9lbmMgJgo+Pj4+
PiBFMTAwMF9MVFJWX1NDQUxFX01BU0spCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPj4gRTEwMDBfTFRSVl9T
Q0FMRV9TSElGVCkpKTsKPj4+Pj4KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZV9pbmZvKCJlMTAwMGU6IGxhdF9lbmM9JWQgbWF4X2x0cl9lbmM9JWQiLCBsYXRfZW5jLAo+Pj4+
PiBtYXhfbHRyX2VuYyk7Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVfaW5m
bygiZTEwMDBlOiBsYXRfZW5jX2Q9JXUgbWF4X2x0cl9lbmNfZD0ldSIsCj4+Pj4+IGxhdF9lbmNf
ZCwgbWF4X2x0cl9lbmNfZCk7Cj4+Pj4+ICsKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGlmIChsYXRfZW5jX2QgPiBtYXhfbHRyX2VuY19kKQo+Pj4+PiAgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxhdF9lbmMgPSBtYXhfbHRy
X2VuYzsKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+Pgo+Pj4+PiBXaXRoIHRoaXMgaW4g
cGxhY2UgSSBzZWUgdGhlIGZvbGxvd2luZyBpbiBkbWVzZzoKPj4+Pj4KPj4+Pj4gW8KgwqDCoCAz
LjI0MTIxNV0gZTEwMDBlOiBJbnRlbChSKSBQUk8vMTAwMCBOZXR3b3JrIERyaXZlcgo+Pj4+PiBb
wqDCoMKgIDMuMjQxMjE3XSBlMTAwMGU6IENvcHlyaWdodChjKSAxOTk5IC0gMjAxNSBJbnRlbCBD
b3Jwb3JhdGlvbi4KPj4+Pj4gW8KgwqDCoCAzLjI0MzM4Ml0gZTEwMDBlIDAwMDA6MDA6MWYuNjog
SW50ZXJydXB0IFRocm90dGxpbmcgUmF0ZQo+Pj4+PiAoaW50cy9zZWMpIHNldCB0byBkeW5hbWlj
IGNvbnNlcnZhdGl2ZSBtb2RlCj4+Pj4+IFvCoMKgwqAgMy43NDkwMDldIGUxMDAwZSAwMDAwOjAw
OjFmLjYgMDAwMDowMDoxZi42ICh1bmluaXRpYWxpemVkKToKPj4+Pj4gcmVnaXN0ZXJlZCBQSEMg
Y2xvY2sKPj4+Pj4gW8KgwqDCoCAzLjgyNDc1MV0gZTEwMDBlIDAwMDA6MDA6MWYuNiBldGgwOiAo
UENJIEV4cHJlc3M6Mi41R1QvczpXaWR0aAo+Pj4+PiB4MSkgOTQ6YzY6OTE6YWU6YjM6N2IKPj4+
Pj4gW8KgwqDCoCAzLjgyNDc2NV0gZTEwMDBlIDAwMDA6MDA6MWYuNiBldGgwOiBJbnRlbChSKSBQ
Uk8vMTAwMCBOZXR3b3JrCj4+Pj4+IENvbm5lY3Rpb24KPj4+Pj4gW8KgwqDCoCAzLjgyNDg0OV0g
ZTEwMDBlIDAwMDA6MDA6MWYuNiBldGgwOiBNQUM6IDEzLCBQSFk6IDEyLCBQQkEgTm86Cj4+Pj4+
IEZGRkZGRi0wRkYKPj4+Pj4gW8KgwqDCoCA2Ljk0OTMyN10gZTEwMDBlIDAwMDA6MDA6MWYuNiBl
dGgwOiBlMTAwMGU6IGxhdF9lbmM9MjIzMwo+Pj4+PiBtYXhfbHRyX2VuYz00MDk5Cj4+Pj4+IFvC
oMKgwqAgNi45NDkzMzFdIGUxMDAwZSAwMDAwOjAwOjFmLjYgZXRoMDogZTEwMDBlOiBsYXRfZW5j
X2Q9NTgzNjgKPj4+Pj4gbWF4X2x0cl9lbmNfZD0wCj4+Pj4+IFvCoMKgwqAgNi45NTExNjVdIGUx
MDAwZSAwMDAwOjAwOjFmLjYgZXRoMDogTklDIExpbmsgaXMgVXAgMTAwMCBNYnBzCj4+Pj4+IEZ1
bGwgRHVwbGV4LCBGbG93IENvbnRyb2w6IFJ4L1R4Cj4+Pj4+Cj4+Pj4+IE5vdGljZSB0aGF0IGxh
dF9lbmNfZD01ODM2OCBhbmQgbWF4X2x0cl9lbmNfZD0wICEKPj4+Pj4KPj4+Pj4gbGF0X2VuY19k
IGlzIGdyZWF0ZXIgdGhhbiBtYXhfbHRyX2VuY19kIHNvIGl0J3Mgc2V0dGluZyBzbm9vcAo+Pj4+
PiBsYXRlbmN5IHRvIG1heF9sdHJfZW5jIChpLmUuIDQwOTkpIHdoZXJlIGl0IHdvdWxkIGhhdmUg
cHJldmlvdXNseQo+Pj4+PiBiZWVuIHNldCB0byAyMjMzIGluIHRoaXMgcGFydGljdWxhciBleGFt
cGxlLiBUaGlzIHNlZW1zIHRvIGJlIHdoZXJlCj4+Pj4+IHRoZSBwcm9ibGVtIGxpZXMuCj4+Pj4+
Cj4+Pj4+IFByaW9yIHRvIGNvbW1pdCA0NGExM2E1Ogo+Pj4+Pgo+Pj4+PiBpZiAobGF0X2VuYyA+
IG1heF9sdHJfZW5jKQo+Pj4+PiAgwqDCoCBsYXRfZW5jID0gbWF4X2x0cl9lbmM7Cj4+Pj4+Cj4+
Pj4+IEFmdGVyIGNvbW1pdCA0NGExM2E1Ogo+Pj4+Pgo+Pj4+PiBpZiAobGF0X2VuY19kID4gbWF4
X2x0cl9lbmNfZCkKPj4+Pj4gIMKgwqAgbGF0X2VuYyA9IG1heF9sdHJfZW5jOwo+Pj4+Pgo+Pj4+
Pgo+Pj4+PiBJJ20gbm90IHN1cmUgd2hldGhlciBpdCB3YXMgaW50ZW5kZWQgZm9yIHRoaXMgbmV3
IGNvZGUgdG8gdGFrZQo+Pj4+PiBlZmZlY3QgZm9yIGFuIEkyMTkgc2luY2UgdGhlIGNvbW1pdCBt
ZXNzYWdlIG9uIDQ0YTEzYTUgaW5kaWNhdGVzIGl0Cj4+Pj4+IHdhcyBhaW1lZCBhdCBJMjE3L0ky
MTguIFNlZW1zIHN0cmFuZ2UgdGhhdCBtYXhfbHRyX2VuY19kIGlzIGdldHRpbmcKPj4+Pj4gc2V0
IHRvIDA/Cj4+Pj4+Cj4+Pj4KPj4+PiBCVFcsIHRoYXQgY29tbWl0IGlzIGZyb20gU2FzaGEgTmVm
dGluLgo+Pj4gSGVsbG8gVGhvcnN0ZW4sCj4+PiBJJ3ZlIGV4cGVjdGVkIGZvbGxvdyBkZWNvZGVk
IHZhbHVlcyAobGluayAxRykKPj4+IGxhdF9lbmM6IDB4MDAwMDA4YjkgPT4gbGF0X2VuY19kOiAx
ODk0NDAgKDEwMjQqMTg1KQo+Pj4gbWF4X2x0cl9lbmM6IDB4MDAwMDEwMDMgPT4gbWF4X2x0cl9l
bmNfZDogMzE0NTcyOCAoMTA0ODU3NiozKQo+Pj4KPj4+IHNjYWxlIDAgLSAxCj4+PiBzY2FsZSAx
IC0gMzIKPj4+IHNjYWxlIDIgLSAxMDI0Cj4+PiBzY2FsZSAzIC0gMzI3NjgKPj4+IHNjYWxlIDQg
LSAxMDQ4NTc2IChuYW5vIHMpCj4+Pgo+Pj4gSSd2ZSBzZXBhcmF0ZWQgY2FsY3VsYXRlOgo+Pj4g
ZV9pbmZvKCJlMTAwMGU6IDEqIG1heF9sdHJfZW5jX2Q6ICVkXG4iLAo+Pj4gIMKgwqDCoMKgwqDC
oMKgIG1heF9sdHJfZW5jICYgRTEwMDBfTFRSVl9WQUxVRV9NQVNLKTsKPj4+IGVfaW5mbygiZTEw
MDBlOiAyKiBtYXhfbHRyX2VuY19kOiAlZFxuIiwKPj4+ICDCoMKgwqDCoMKgwqDCoCAoMVUgPDwg
KEUxMDAwX0xUUlZfU0NBTEVfRkFDVE9SICoKPj4+ICDCoMKgwqDCoMKgwqDCoCAoKG1heF9sdHJf
ZW5jICYgRTEwMDBfTFRSVl9TQ0FMRV9NQVNLKQo+Pj4gIMKgwqDCoMKgwqDCoMKgID4+IEUxMDAw
X0xUUlZfU0NBTEVfU0hJRlQpKSkpOwo+Pj4gSSB3b3VsZCBleHBlY3Q6Cj4+PiAxKiBtYXhfbHRy
X2VuY19kICh2YWx1ZSk6IDMKPj4+IDIqIG1heF9sdHJfZW5jX2QgKHNjYWxlKTogMTA0ODU3Ngo+
Pj4gYW5kIHNvOiB2YWx1ZSAqIHNjYWxlCj4+PiAxMDQ4NTc2KjMgPSAzMTQ1NzI4bnMKPj4+Cj4+
PiBQbGVhc2UsIGxldCdzIGNoZWNrIGl0LiAoSSBhbSB3b25kZXJpbmcgaWYgb3Zlci1jYWxjdWxh
dGUgaXQpCj4+PiBUaGFua3MsCj4+PiBTYXNoYQo+PiBvay4gT3ZlcmZsb3cuLi4gSW5zdGVhZCBv
Zgo+PiArwqDCoMKgwqDCoMKgIHUxNiBtYXhfbHRyX2VuY19kID0gMDvCoCAvKiBtYXhpbXVtIExU
UiBkZWNvZGVkIGJ5IHBsYXRmb3JtICovCj4+ICvCoMKgwqDCoMKgwqAgdTE2IGxhdF9lbmNfZCA9
IDA7wqDCoMKgwqDCoCAvKiBsYXRlbmN5IGRlY29kZWQgKi8KPj4KPj4gU2hvdWxkIGJlOgo+PiAr
wqDCoMKgwqDCoMKgIHUzMiBtYXhfbHRyX2VuY19kID0gMDvCoCAvKiBtYXhpbXVtIExUUiBkZWNv
ZGVkIGJ5IHBsYXRmb3JtICovCj4+ICvCoMKgwqDCoMKgwqAgdTMyIGxhdF9lbmNfZCA9IDA7wqDC
oMKgwqDCoCAvKiBsYXRlbmN5IGRlY29kZWQgKi8KPj4gSSB3aWxsIHByb2Nlc3MgdGhlIHBhdGNo
IGFkZHJlc3MgdGhpcyBvdmVyZmxvdyBhbmQgc29tZSBlX2RiZyB0bwo+PiBlbGltaW5hdGUgY2Fs
Y3VsYXRpb24uCj4+Cj4+IHN1ZG8gY2F0IC9zeXMva2VybmVsL2RlYnVnL3BtY19jb3JlL2x0cl9z
aG93Cj4+IFNPVVRIUE9SVF9BwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIExUUjogUkFXOiAweDAgTm9uLVNub29wKG5zKToKPj4gMMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTbm9vcChucyk6IDAKPj4gU09VVEhQT1JUX0LCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTFRSOiBSQVc6IDB4MCBO
b24tU25vb3AobnMpOgo+PiAwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFNu
b29wKG5zKTogMAo+PiBTQVRBwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTFRSOiBSQVc6IDB4OTAwZiBOb24tU25vb3AobnMpOgo+
PiAwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFNub29wKG5zKTogMTU3Mjg2
NDAKPj4gR0lHQUJJVF9FVEhFUk5FVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIExUUjogUkFXOiAweDg4Yjk4OGI5IE5vbi1Tbm9vcChucyk6Cj4+IDE4OTQ0MMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIFNub29wKG5zKTogMTg5NDQwCj4+IFhIQ0nCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBMVFI6IFJB
VzogMHg4OTFhIE5vbi1Tbm9vcChucyk6Cj4+IDDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgU25vb3AobnMpOiAyODg3NjgKPj4KPj4+Pgo+Pj4+IENvdWxkIHNvbWVib2R5IHRh
a2UgYSBsb29rIGludG8gdGhpcz8gT3Igd2FzIHRoaXMgZGlzY3Vzc2VkIHNvbWV3aGVyZQo+Pj4+
IGVsc2UgYWxyZWFkeT8gT3IgZXZlbiBmaXhlZD8KPj4+Pgo+Pj4+IEFueXdheSwgdG8gZ2V0IHRo
aXMgdHJhY2tlZDoKPj4+Pgo+Pj4+ICNyZWd6Ym90IGludHJvZHVjZWQ6IDQ0YTEzYTVkOTljNzFi
ZjllMTY3NmQ5ZTUxNjc5ZGFmNGQ3YjNkNzMKPj4+PiAjcmVnemJvdCBmcm9tOiBKYW1lcyA8amFo
dXRjaGluc29uOTlAZ29vZ2xlbWFpbC5jb20+Cj4+Pj4gI3JlZ3pib3QgdGl0bGU6IG5ldDogZTEw
MDBlOiBpbnN0YWJpbGl0aWVzIG9uIEkyMTktViBmb3Iga2VybmVsIDUuMTQKPj4+PiBvbndhcmRz
Cj4+Pj4gI3JlZ3pib3QgbGluazogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVn
LmNnaT9pZD0yMTU2ODkKPj4+Pgo+Pj4+IENpYW8sIFRob3JzdGVuICh3ZWFyaW5nIGhpcyAndGhl
IExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Npb24gdHJhY2tlcicgaGF0KQo+Pj4+Cj4+Pj4gUC5TLjog
QXMgdGhlIExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Npb24gdHJhY2tlciBJJ20gZ2V0dGluZyBhIGxv
dCBvZgo+Pj4+IHJlcG9ydHMgb24gbXkgdGFibGUuIEkgY2FuIG9ubHkgbG9vayBicmllZmx5IGlu
dG8gbW9zdCBvZiB0aGVtIGFuZCBsYWNrCj4+Pj4ga25vd2xlZGdlIGFib3V0IG1vc3Qgb2YgdGhl
IGFyZWFzIHRoZXkgY29uY2Vybi4gSSB0aHVzIHVuZm9ydHVuYXRlbHkKPj4+PiB3aWxsIHNvbWV0
aW1lcyBnZXQgdGhpbmdzIHdyb25nIG9yIG1pc3Mgc29tZXRoaW5nIGltcG9ydGFudC4gSSBob3Bl
Cj4+Pj4gdGhhdCdzIG5vdCB0aGUgY2FzZSBoZXJlOyBpZiB5b3UgdGhpbmsgaXQgaXMsIGRvbid0
IGhlc2l0YXRlIHRvIHRlbGwgbWUKPj4+PiBpbiBhIHB1YmxpYyByZXBseSwgaXQncyBpbiBldmVy
eW9uZSdzIGludGVyZXN0IHRvIHNldCB0aGUgcHVibGljIHJlY29yZAo+Pj4+IHN0cmFpZ2h0Lgo+
Pj4+Cj4+Pgo+Pgo+Pgo+PgpTYXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
