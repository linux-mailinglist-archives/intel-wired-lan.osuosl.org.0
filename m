Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E637673E631
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jun 2023 19:16:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6477660D95;
	Mon, 26 Jun 2023 17:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6477660D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687799764;
	bh=Izgfxl+vOImGA+Cv9e0Eq7UgBlMRelvqNww2h7zYhSw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ou46+rBajqlwBlfpt30+V4mpqs1BY0tGQVG7lN4iwLEP1HSDwoptb+Oz9WpC3/P3V
	 dVlZcQRAsKYhqho/aE66tLVXvKXB3giU1c3G/cpVYP1MW7C8GuYG6D7G89ulQ0fCpV
	 2j86qS2xNqPazACCJ61NjCG6RVCgdNND6R1XpNzIKVmJ8EmQrXy258v1MEBpi5rsIG
	 jSMymvU/Jkd2PxpiaSrOajUwqdvAKJG7V3tsXLcv4GZEKjopCuU8Aca+YBWtg2K1Gw
	 VYDbZvgZ6OOnPt4mqPOFpjtTnAl6Jv4kbGac3jy+JbuB/Jb7JXKwZycc0yI61z5Sai
	 5QRmVbgZ8SheA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAmjNRinlK5k; Mon, 26 Jun 2023 17:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BD5B60D5F;
	Mon, 26 Jun 2023 17:16:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BD5B60D5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 251A51BF37B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 17:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF5308223B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 17:15:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF5308223B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GCshII5MGpff for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jun 2023 17:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C29B382237
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C29B382237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 17:15:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="447716745"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="447716745"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 10:08:10 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="751190401"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="751190401"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 26 Jun 2023 10:08:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 10:08:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 26 Jun 2023 10:08:09 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 26 Jun 2023 10:08:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n6haYjBxdqcqKeGrotW2LoJ+DdN16JRtGHTdgIm5JX9QSSeSiq0udxaWmTdkXTFROZR2+cW5c1sYblNrZ3hJgKa7sMh0R30cOITTvw7b8LKzB41MYXo8PYBcbseB+B1mVgjdaz5Ie1kQBgg0Xqejr8J93XDJq8vqhVRCkRm0DURRzLwd1Uyysz+MyuDTDbmSTUeFBifogNaiXpznyyRHbnUAcr8wy9rmka+cfMEHCh5m0px6CxEXOBiCreD5ZZlew11Kd2eH8v3nHEms4Cx2M5GSdxxmXOX3qdn7393PR/p0tk3mWuMSb7dKl4xLSoFVRU/UR3Ux+uQISG6FXjukfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PxiOIsmLEP4KlN/qELiHC0nZrikb+1nr9gQMWD8Qn8I=;
 b=fcLzAj59WL8yvPafCSXK13txgZu1KPUNWduB5EixmzG037XuvmhPP+v9CqX6Tng9vE7FGYQd0Y7KW91DZ2KDU/BRPBK84pM5vr596pcICAtAy/cy4ux1++b1o00YrbrKZoylNlT4Qz8uK6i6qhO+yRlczdBplHTyqR23ejB3kN26no9GXfHlK1kIQttNuh3MM0WfeYmsKv8i9ps1NzDqyeUPZHo+GZxj1iOYQ9it1CHmpjicpKdddx4j3lxQMsiW7447pDLrJjl8CB7W+MnRysy9kZCeaynzvdFnPiKRZxm6UEVKyEPcPk5pZiWOiFyK3WsmlBP+lVP5O8FnxouxpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MW6PR11MB8438.namprd11.prod.outlook.com (2603:10b6:303:241::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Mon, 26 Jun
 2023 17:08:07 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%7]) with mapi id 15.20.6521.024; Mon, 26 Jun 2023
 17:08:07 +0000
Message-ID: <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
Date: Mon, 26 Jun 2023 19:07:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Ian Kumlien <ian.kumlien@gmail.com>
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
X-ClientProxiedBy: FRYP281CA0008.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::18)
 To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MW6PR11MB8438:EE_
X-MS-Office365-Filtering-Correlation-Id: af176095-9cd8-441b-1e44-08db7667e91e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5w7DYXEf8Jim9VZ6pkb6ZPBWmF/HKMn+52gD+P6fhsE1gRQxuW4YjygLbWV0SqRPzPg7PQhQPQkxWca5Sv6cB7AyB+Mz2MI7CV8yt/3bRruDXmqwEoF+NFXotd05TjUNOl/uYvg8uckjQgdk3VJoouSrxRbkoPfo/Qw2nRxUX/RcrXYKI/GlEi9syZGYpFm/vsMk6YrXem/USrmVr7fALTAzLl4JfTrszY60x9T/j85VHIIPlcJgEPkKSTExBUbc/tt44TTHmOahfoGxldhOgUGTtjWkTt2Q3ugBvlYzFtu0rUi63HUUGWf/uTBjWvuFnBgKH1ZN8vYm02oiNr1c+EfGLgCY4m9lo3DB/adF2XXRHZzEp3W4RuexXeIC/+2s1bFwRF7473ajFYWC7xyJusUDC77/XUyCS656Dl2ANFdXk4/kC+jQkQrsTXw5/mzS9kmFU/Tn7F5g10xImn2DQms2kkZay9t4azLru/cfdLS6yDhpzlMgpwL0W9MWONQu4TgpCO+keGVEG0zJ4rC+EEeorFYxbMpfGchCjIAMstPxOXHns0TyxhP/LKr7d52KPWA1lLU+jTHx7joEcZTrAbG1bqjKuo2sLlQEfVwy1mZXPZXtgv+y+byvQ0tPS8wnnrGlyrh7SywPlI2RsALxTi6qtICohTq+HPoOM1Xc8Uc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(39860400002)(396003)(346002)(451199021)(82960400001)(31686004)(6486002)(6666004)(478600001)(54906003)(2616005)(66574015)(36756003)(86362001)(31696002)(2906002)(66946007)(966005)(41300700001)(186003)(53546011)(6512007)(6506007)(26005)(38100700002)(66476007)(6916009)(4326008)(316002)(66556008)(5660300002)(8676002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjR4QTBTaldCcVRpRXNtdG5jaHRjSDd2YVdBeU04UG1lM3UrZU9tbFVQSi9q?=
 =?utf-8?B?ZDBSQVdHUzZBWSs5dkYvcW1jNC9jSk4wbmV0Mm5iWi90cUtMRVZWWjNmYTQz?=
 =?utf-8?B?TkcyMEtCU3REeGlMcWFXaDNQdldCSytqTllSdS8wbkFzTmRpOE9yYmxwSUdH?=
 =?utf-8?B?a2x5SkZVdHJjbVVyRVJaYk1iSE5VVjlpTEZvSkhYclJPWDJ5eDZxSTlyTE1w?=
 =?utf-8?B?RWR6UmFHVXYwbTBSM0NVTHJQRVdmRTBJQ2VzK3p0ckZqUXRBUGRVMjVEd081?=
 =?utf-8?B?czF0dlE0NVpsQlc2ZGtuQmFNLzBycXRSakdmSEdMTlhQNDZsWjA1WFFDV01L?=
 =?utf-8?B?Y0FwSDJUZWpZd0o0NGQzVXYydWZQeUgxaWt1NTUwYUQxYkVIY2o0WmVRRzE1?=
 =?utf-8?B?RW9WSitjKzZRRzdPQkFjNmg3eHJQb0JENlRlTUtrNmEvYUxZaDZaV2pjcU41?=
 =?utf-8?B?WnB2YkZQU1pEZkgzbnp1NFEwRDF3U1NUbHlSSGVUblZ6RkNTYWxZVHNiY0hk?=
 =?utf-8?B?V013aGZyRWZOSDZ0R2xkZ21qZkRPOW84YkVjVUMwTC8xU2pXVzFnTnFjVUls?=
 =?utf-8?B?ck1VRy9iN2dPeFU1dTBvVHRJaWc5SGVjMWF0czh5S0NOTXcxK1Z4enVITHJs?=
 =?utf-8?B?MmdkcXo0QXozNmVQVGZrTXZmdXZjSjEwRGY1dVRxcEV6NWpnNTl4QStvSXQ3?=
 =?utf-8?B?Rmpvb2VFU2RnRnYvM2wwc01uUWFaNWErUGFLN09jR3EzWnk0MUNVdmdYREJP?=
 =?utf-8?B?WDRHeVFaUjAzd2hpTG91dUNRemI0WXlJeHNMMGtaUlE1TGR3SDAyMjJZenVT?=
 =?utf-8?B?ZGVuakVpZC9IOGdEb0QrUEw0Qm9objBhQkJEM1F1VFVPQWE3RjBaM2tSS1Vw?=
 =?utf-8?B?dFJCcjRMOEJrdFdUV1Rkb2s0bitpNzlFSVZGdEVoU0t6UVNNMDdsTm5EUUhX?=
 =?utf-8?B?c1NWc0ZjQ2ViK0JlMUV4aFptS1RGb0FGMWVCLzNVdXpIODZwMVB4VzM5M0F5?=
 =?utf-8?B?UmJ0YlgxdCs5ZWd1clFRdXArSXBHSVdzWnMzU0h6WWxOY0lqMFREVHlFejdF?=
 =?utf-8?B?a3VVVDdkaWM5RmFZSzBkKzVhcG1hMTBrMmtIdjdjcE5haURlL1U5MXV0c1cx?=
 =?utf-8?B?OUJZZWxleTRmRFhPOTV5Y1VSRmdPWlVWMUR1cm4vbTY1eDRrUnBqZzJmWUVl?=
 =?utf-8?B?WG5yWUNWcFc3aEVOLzBCU0s1NUdIb3JDSlhGVER2Z2JDN2pTRWp6VjVMdmgw?=
 =?utf-8?B?ZFJib29RRzZWOEI3a2pHd2lSWTMrNmVjbzRJQUc1a0loUmFlL1hOY3I3dkhn?=
 =?utf-8?B?UCtwQzRHNnVPUXlZY3BIZXFaTVZ6QTMrd0pCMFMrczhvcW9rVDYreTJ3VE91?=
 =?utf-8?B?TnU2Qm9tNW1DRVNxNUpLS3pudWRQNGo3TlNaS0p2cHMwcFlpRVRhdVpENjds?=
 =?utf-8?B?d0ZRN0JudU55R0VSZE1tRlBJcjc0MXBuZFBIMlUrSzkzTHZoVEtHQlRDeFR5?=
 =?utf-8?B?Zkd5TWJ0WXAwZTFLN1NUQ0xINERIaENoMlNOVjlFSWZzTE9QQ2tmODFIdEhi?=
 =?utf-8?B?dDVmQnQ0ZkF0OUVNMmxDcDNIejBLeXZVbVlpUTR6dmhPb2FIQ242cStHWWtW?=
 =?utf-8?B?b2ZmMlJyR1NzSGk1ckdtQzJEUHo3S29VdzVHL25sTTM1Tk1nTnhDTi9hRDJF?=
 =?utf-8?B?SDBpMTlhSzQ0b05peGFJemtMcDNmVzBFalpyT0VqUmh1S2pTaTV2dTZGNmZY?=
 =?utf-8?B?bnk0NkNaS1dTekVCdnQxWHYwSHgxc0l1SUtBck51b2NibkY3c1NNc3h6cE9P?=
 =?utf-8?B?WGtrMThwYjg2dlRhQTNOblV6R1hoN21HN2dtdjBHSzNJMDhselRTaWxZOEVp?=
 =?utf-8?B?YWZpNmRwNVZ6V1p5Mll6SjI2eE1jdEYyNTkzYXNJTTFZbCtHb0dYS1RYT3k5?=
 =?utf-8?B?bGxTUmZlV2poeVJCeVhkVkJtR2F3YWIwN1RzeWp1TGtCYUJvU3V1ZWhxbVMw?=
 =?utf-8?B?cU9yMWtNOXphZEo4QUtWNHRjbzBaZGxsNmF6OGpnQ05KZHBKem96MlUzVnds?=
 =?utf-8?B?QVFaNzlpQjJnQWR4ekxhdjJ1UGFaZU9lem01YXZINXUxbGNFSTB1cjBzMWVX?=
 =?utf-8?B?MTk1QnpPRkVxcXpYYlVWNkR3Rm9jTDUwemg3Um1aaXlGMWV1czlvMlc2Y0VM?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af176095-9cd8-441b-1e44-08db7667e91e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2023 17:08:07.0292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oT9MHVIj8JWbTSnfanUh12yhMd1m7O763haBKPn1d7+vBWOyWRotBTxGKtjLOnTUFw3ko98+VIUdsTci3ye6jk/SEj6a9AIpkKlsP7gIxc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8438
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687799756; x=1719335756;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=URgBwSz4SCx6Df1kIRMu0IALeQa/EfoPXYH2tl3MC6U=;
 b=kD+/FeRnKZm7y56FOdKzukGGDgC3/Ic/vBllABIHwREE5lqWNrwIW4nU
 a8huhQVQl5ygdEST0ijRsuxhnZeEpHMw3AZU9+7WyEYJBGxnf4nr59uOi
 HD5AxcDg2p4p7CQRT7Lqu1Ls3rNgOe6T78SIK+7EE2vb7k2W7HbpELVH3
 Ax1cinHAdZb3RrBoIkVWdUS0M0WJW3VL+Z8ljkzBzqhbejoT70vIOMuSc
 VPv0qAJvH77x3E7dazaDfsuKIOykN5pN0K4z3JrKIe0bmLbOJsVeMSNag
 jo0tIYMymm7Kg//5ROxU1eR35IVKrV6DRx2FvH1+czqVc6uurmLGY7B2x
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kD+/FeRn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSWFuIEt1bWxpZW4gPGlhbi5rdW1saWVuQGdtYWlsLmNvbT4KRGF0ZTogTW9uLCAyNiBK
dW4gMjAyMyAxNjoyNToyNCArMDIwMAoKPiBPbiBNb24sIEp1biAyNiwgMjAyMyBhdCA0OjE44oCv
UE0gQWxleGFuZGVyIExvYmFraW4KPiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4gd3Jv
dGU6Cj4+Cj4+IEZyb206IElhbiBLdW1saWVuIDxpYW4ua3VtbGllbkBnbWFpbC5jb20+Cj4+IERh
dGU6IFN1biwgMjUgSnVuIDIwMjMgMTI6NTk6NTQgKzAyMDAKPj4KPj4+IEl0IGNvdWxkIGFjdHVh
bGx5IGJlIHRoYXQgaXQncyByZWxhdGVkIHRvOiByeC1ncm8tbGlzdCBidXQKPj4+IHJ4LXVkcC1n
cm8tZm9yd2FyZGluZyBtYWtlcyBpdCB0cmlnZ2VyIHF1aWNrZXIuLi4gIEkgaGF2ZSB5ZXQgdG8K
Pj4+IHRyaWdnZXIgaXQgb24gaWdiCj4+Cj4+IEhpLCB0aGUgcngtdWRwLWdyby1mb3J3YXJkaW5n
IGF1dGhvciBoZXJlLgo+Pgo+PiAoZ29vZCB0aGluZyB0aGlzIGFwcGVhcmVkIG9uIElXTCwgd2hp
Y2ggSSByZWFkIHRpbWUgdG8gdGltZSwgYnV0IHBsZWFzZQo+PiAgQ2MgbmV0ZGV2IG5leHQgdGlt
ZSkKPj4gKHRodXMgK0NjIEpha3ViLCBFcmljLCBhbmQgbmV0ZGV2KQo+IAo+IFdlbGwsIHR3byB0
aGluZ3MsIGl0IHNlZW1zIGxpa2UgcngtdWRwLWdyby1mb3J3YXJkaW5nIGFjY2VsZXJhdGVzIGl0
Cj4gYnV0IHRoZSBpc3N1ZSBpcyBhY3R1YWxseSBpbjogcngtZ3JvLWxpc3QKCkRvIHlvdSBlbmFi
bGUgdGhlbSBzaW11bHRhbmVvdXNseT8gSSByZW1lbWJlciwgd2hlbiBJIHdhcyBhZGRpbmcKZ3Jv
LWZ3ZCwgaXQgd2FzIHdvcmtpbmcgKGFuZCB3b3JraW5nIGdvb2QpIGFzIGZvbGxvd3M6CgoxLiBn
cm8tZndkIG9uLCBncm8tbGlzdCBvZmY6IGdyby1md2QKMi4gZ3JvLWZ3ZCBvZmYsIGdyby1saXN0
IG9uOiBncm8tbGlzdAozLiBncm8tZndkIG9uLCBncm8tbGlzdCBvbjogZ3JvLWxpc3QKCk5vdGUg
dGhhdCB0aGVpciByZWNlaXZlIHBhdGhzIGFyZSBpbmRlcGVuZGVudFswXTogc2tiX2dyb19yZWNl
aXZlX2xpc3QoKQp2cyBza2JfZ3JvX3JlY2VpdmUoKSwgdGh1cyBJJ20gc3RpbGwgbm90IHJlYWxs
eSBzdXJlIGhvdyBncm8tZndkIGNhbgp0cmlnZ2VyIGdyby1saXN0J3MgYnVnLgoKPiAKPiBBbmQg
c2luY2UgaSd2ZSBvbmx5IGJlZW4gYWJsZSB0byB0cmlnZ2VyIGl0IGluIGl4Z2JlIGkgdGhvdWdo
dCBpdAo+IG1pZ2h0IGJlIGEgZHJpdmVyIGlzc3VlID0pCgpZb3VyIHNjcmVlbnNob3Qgc2F5cyAi
X191ZHBfZ3NvX3NlZ21lbnQiLCB3aGljaCBtZWFucyB0aGF0IHRoZQpwcm9ibGVtYXRpYyBVRFAg
R1JPIHBhY2tldCBoaXRzIHRoZSBUeCBwYXRoLiBSeCBpcyBpbiBnZW5lcmFsCmRyaXZlci1pbmRl
cGVuZGVudC4gVHggaGFzIHNlcGFyYXRlIG5ldGRldiBmZWF0dXJlICgidHgtZ3NvLWxpc3QiKSwg
YnV0Cml0J3Mgbm90IHN1cHBvcnRlZCBieSBhbnkgZHJpdmVyLCBqdXN0IHNvZnR3YXJlIHN0YWNr
LiBJdCBtaWdodCBiZSB0aGF0CnlvdXIgdHJhZmZpYyBnb2VzIHRocm91Z2ggYSBicmlkZ2Ugb3Ig
dHVubmVsIG9yIGFueXRoaW5nIGVsc2UgdGhhdAp0cmlnZ2VycyBHU08gYW5kIHNvZnR3YXJlIHNl
Z21lbnRhdGlvbiB0aGVuIGJvb21zIGZvciBzb21lIHJlYXNvbi4KQlRXLCBfX3VkcF9nc29fc2Vn
bWVudCgpIGlzIG9uZS1saW5lciB3aGVuIHRoZSBwYXNzZWQgc2tiIHdhcwpncm8tbGlzdGVkWzFd
LCBzbyBoYXZpbmcgaXQgaW4gdGhlIGJ1ZyBzcGxhdCBjb3VsZCBtZWFuIHRoZSBza2IgZGlkbid0
CnRha2UgdGhhdCByb3V0ZS4gQnV0IGhhcmQgdG8gc2F5IHdpdGggbm8gZnVsbCBzdGFja3RyYWNl
LgoKWy4uLl0KCj4+Pj4gQnV0IGNvcnJlbGF0aW5nIHRoYXQgd2l0aCB0aGUgc291cmNlIGlzIGJl
eW9uZCBtZSwgaXQgY291bGQgYmUgZ2VuZXJpYwo+Pj4+IGJ1dCBpIHRob3VnaHQgaSdkIHNlbmQg
aXQgeW91IGZpcnN0IHNpbmNlIGl0J3MgcGFydCBvZiB0aGUgcmVkaGF0Cj4+Pj4gZ3VpZGUgdG8g
c3BlZWRpbmcgdXAgdWRwIHRyYWZmaWMKPj4gWzBdCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L25ldGRldi9mODNkNzlkNi1mOGQ3LWEyMjktOTQxYS03ZDc0Mjc5NzUxNjBAbnZpZGlhLmNvbQo+
Pgo+PiBUaGFua3MsCj4+IE9sZWsKClswXQpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51
eC9sYXRlc3Qvc291cmNlL25ldC9pcHY0L3VkcF9vZmZsb2FkLmMjTDUxOApbMV0KaHR0cHM6Ly9l
bGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9uZXQvaXB2NC91ZHBfb2ZmbG9h
ZC5jI0wyNzcKClRoYW5rcywKT2xlawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
