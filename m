Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 301B773D11C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Jun 2023 15:07:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62E4E60E0D;
	Sun, 25 Jun 2023 13:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62E4E60E0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687698459;
	bh=xyYklsgEza5d1eElt0+zOiyaj9RYl8q0Hb7LgM8t7E0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Cp6foApNsUqVyT+uSHtlH+LTVXSUYN6Jmn3LfbgCeLULzVsUUbp1FtCScH7uw9St
	 gBsTLx6Or4NcIWlL+xVt84alDhSr0Ka386O9UQL1rvlba7vQkCk1q8x59ozZtItpea
	 k8TceMP1WZwIXJDMJNO+Yci1c34XA051F6gHCbtSx5NZanh4edxE/tzkIBzEbFT0hG
	 12H+BZRNvy59MbszNqBe6BAHNqU8MucLyjz+t/Ku4uKncyL9OYhsA6y7Bkw0ekubZM
	 ayQdpuecCKXScHo5S0eZl4O7wpmR+qx8IDFNoDWLZEsR3c1T8+aSzD6uWc+6THI8rt
	 8a9AeXU7XivfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wu2R1pwWfOFn; Sun, 25 Jun 2023 13:07:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26CBD60BD3;
	Sun, 25 Jun 2023 13:07:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26CBD60BD3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC0F91BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jun 2023 13:07:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 942FA401B7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jun 2023 13:07:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 942FA401B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1w1yMIM8y7XP for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Jun 2023 13:07:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 782FC400BA
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 782FC400BA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jun 2023 13:07:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10751"; a="427054021"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="427054021"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2023 06:07:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10751"; a="745499932"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="745499932"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 25 Jun 2023 06:07:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 25 Jun 2023 06:07:27 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 25 Jun 2023 06:07:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 25 Jun 2023 06:07:27 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 25 Jun 2023 06:07:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=diFz2aH7NlbPB5KZ4n7U4XlNgYTOlVQn7XnB1gkeB+XO9zTtbEWsZEBV+4TRjgJivI3oT7uUCngRbwRHH4GEBk9I3zO8eEp5jiILSHwDB6EHfiqOcyQkNjSlToIQ8zZjX+f8X9pMdO/g0MhD4RyceeGYRms3QyTNuCYMdxmxDJnkf8Bn4SRn4ZC4JOAAsOqntIzzU4zed7XuRVWOoyx9PAidwysLGOA5r9E4vXQL9/szvKztUT1wbP0Fb1R+qehE6J+yf1KE22HoEk+FTtIQGdi/6OOPKRnxL4tmyqfuj+LmP4jalvvLfNhQwhp39D+ytuueidBoB85JM3CIf3+LAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KaR0gkG2lZw+tm3PIkCd/tNrLbslv9pJKsSa9rzvdgg=;
 b=Q9ZQcRqDiN3lBaOS18yGck6zfjpXiXhC9eBkCrj76WXpT4lDJwh0+WwhuxchaO16rs939e4fIWeylq5EihGanSqiLfSHUMOo6d8IgQDlby72/6JPubiS0pnISq7vVv9q2lG0vP9KYUDoTd7DX/KMuoozesMJQDWD+ng/1U5mktFjEryNrYEcVzDjR54Jp2wXotfvxR3LJ+fgcDA4mxqypCyUn7MhiBfKr9ex82VFaitosaiGul+xfhazr2gXtN9Nav2kjQy+sYLFLmUPDhTcaFRzlBfGkl4c9evUz6P0G+zmBX7990mrZkMCbxr6dMPDeGgv6C8+OrmlpkL+Ky0S0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DS0PR11MB7287.namprd11.prod.outlook.com (2603:10b6:8:13f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Sun, 25 Jun
 2023 13:07:19 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026%5]) with mapi id 15.20.6521.024; Sun, 25 Jun 2023
 13:07:19 +0000
Message-ID: <543723b9-6087-75ed-187c-729e987090c8@intel.com>
Date: Sun, 25 Jun 2023 16:07:11 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
Content-Language: en-US
To: naamax.meir <naamax.meir@linux.intel.com>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>
References: <20230601162537.1163270-1-kai.heng.feng@canonical.com>
 <546387b5-9e18-a0df-2aa9-159b19435a51@linux.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <546387b5-9e18-a0df-2aa9-159b19435a51@linux.intel.com>
X-ClientProxiedBy: LO2P265CA0475.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a2::31) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DS0PR11MB7287:EE_
X-MS-Office365-Filtering-Correlation-Id: 081f7d39-ce4d-4a7a-d7ef-08db757d1b5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MTVhXIWYndlL9trvNQbjNK4Qf89ZZKVI5Jm00z8YdStElgJZ+yVtGhLEtuGhPD7H7J8yg/JrHwaaK6GIOBv53K4oAub9uqQ5ggIzFzKd+10vdxYJnPV/78rCFZUbWC5iXXL0pFXmqYpLhCeg3wiD8jSKmluAKBJKvr3gUhmj8Tuta9GJ6d9ypcvVk/K6uTxDjeWPCpES3eG5n4wP7B5lC+dJkuTobvUmIkQI26wDPut6Syj1qWDxUNr4Nh6MVAbslUkDssDFoFT4EAA4lT5sbt1o6EtZrXH0jOFD1ua6CrBL848BmBCdq50NGtE/XYVysABCKdrgC7BrI57dglf2PCKqMaoGYiRf9r5vAVUXrd/FWg9eTrPOOhL3flv9uFQWm/8t1pZtCB/L9QHlOCG9T+hYAxzvc3v5j5QiTM7uH13lUiW6xq81eN9z4HBKq3aImH2CPMVpmtTT/MX/WViLnHFDf1zclnQPRscR88wCaBH2f9z2bpFSnsSP6ZXqdTYwKoJIJeyoKYpA4iEWRUKzrIbg1+GMJqcJfUzDrfQesQk43dvckfFC5eS5rRrhNBrOfgEWbCLAijHkgaTN9E1fH6K+OFQ3XMTeuJ+17to26FKQTQINO/lz0IePwY6HEGTr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(346002)(396003)(39860400002)(451199021)(31686004)(6666004)(6486002)(966005)(110136005)(54906003)(478600001)(83380400001)(2616005)(82960400001)(86362001)(31696002)(66476007)(2906002)(53546011)(186003)(26005)(6506007)(6512007)(36756003)(6636002)(4326008)(316002)(66556008)(66946007)(5660300002)(38100700002)(8936002)(8676002)(7416002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFRsQW5aYVFzYzY3bUtacDAvQ0ZJV240ZVRpNGJJTjZGQ2YxTEdZbUF0SS9W?=
 =?utf-8?B?ZWlweTJOVmN3bThHM01obUlkYzJZWm5odkxuWnZHM3B2YmZDNExlTEFyeUZz?=
 =?utf-8?B?dlR1aFk4RURGd004bHRVK2R5eU03bDN4N1BJdTd3MFU0dUZjQTRVZGZOd01q?=
 =?utf-8?B?SmNiS1RPWDFhQnFWbVR6c2d4MVVZRS9IS1AyR25RSnFIakYxT2VRdTF6NzFk?=
 =?utf-8?B?bW5OWFNEQnNhYm0xUFMrUGZVWGJZVGlRSTFmU3Z1am9hbDBTSlFOeGc0anha?=
 =?utf-8?B?bE1xMklFcW5kdzQvWTVCRUhtT0w2WDVyeThBYlJodjVuam5qN093TTZLZXRL?=
 =?utf-8?B?Qm9EQVlXZStsem1PaGtscWxuV2o3a0lDb3VPT3U3SlNBMjVZY2RUYmlUbTZF?=
 =?utf-8?B?amQ1OVhLQ0Z1QzJrVVJwV2pNWFZ5NHdFZWhiZUV2b244ZmFOallyN2xENGRh?=
 =?utf-8?B?Y0NPQWhCMW1TSzhGUHBjYnF2NWdtVWhzYUg1UFpkWlNEZ0hSQU1iM0RnYlZ4?=
 =?utf-8?B?VUdjZjZpVktyL2JDUWhmZC9nTXdoM2V0ajAzVTdPeHhvUjJJT3QwdjNDeVNv?=
 =?utf-8?B?ZXc3WCtxNHllZU01R3NIQ1N6cU5DZFhBN243U3RYTHE5VnF5UytqSlBrRkd0?=
 =?utf-8?B?ZUptb1BPbjhqT2FveVYrL2hoa3czclRkRzIzR21aZ0d5eG1EQWVtZXo2bTZX?=
 =?utf-8?B?MFVDdGpVZ2RrbXUralhRV0p2cGlYK0w4UlE1Q0NmcDdlSUxrUFpyWVNSQktq?=
 =?utf-8?B?a21UdEVMOEEzWHB5NkRtVEJwSlRTcEM3aWNKYUZDRS95RSs3VzhoQnNhOW5z?=
 =?utf-8?B?c3dYRDRPTUxkQ2t1dVVqYXRURUl6WXVFU2k2ZHNRaDJtR1ZYOFJMblQ4SkRR?=
 =?utf-8?B?Ry94L0dJZHBmSUhqQUhFTUVuOTFvSXpQNFgySHl0UDBlS1dGa2hCZ01XVlEy?=
 =?utf-8?B?b3diRURzckZxT3dhaUNWeEN4UDZVM2RsUEY3Qk5JZXc2a0RJUXEzQjRFOURU?=
 =?utf-8?B?K2FsRWJUYm15QjNjZEErbFdKbEpxTVcxZ1pCN2RYZFhpNnNhOVlnTGc2Z3N4?=
 =?utf-8?B?cmhRZHY2a2NiQTY3aDI2YTlUdzF3cG9QaSs3ZUZobEFHZGxyUi9iclRJY2tW?=
 =?utf-8?B?RmJ4aFhvZ3dDdzlmRWd4SFUzMTAybWdmbUVKamZpTHdrM20zcmNGVTlDS1dT?=
 =?utf-8?B?cmRET2Z3UGwyT0lqRVNJcnc1OC9UOTg1WmRPcEluQmJreFplZ2hFaDFJRnVN?=
 =?utf-8?B?ZjUzczhwYkJVa05FMjBaaUNYY1dlN2lZbkF6VVptWnlDQ1M2MzZvaHFwajcv?=
 =?utf-8?B?WVlIdm52UlJwM3VOUGlFMk1nNlFncVhuN2VUVXhPamJUTzg4azNHN1RkVENp?=
 =?utf-8?B?aGxsUE5WOE0xd1VoelkrMDZqZ0ZvRFNkQkc1WDJ5TEFnRmsxUlJNZ3UyYXlr?=
 =?utf-8?B?bmF2ZEphOXNpOTkyOHF6TXJVNnZZMGxGUTREcmhiSzRVQVhGVjZDZFZkcE5s?=
 =?utf-8?B?T3hMc1JrZTJKUS9zZVkzYjBHb1ZjT3NSN0k5bVNjVlJlYnFwazlUY1NsaDAx?=
 =?utf-8?B?RFJJTWk4VTdmVDBxZnRwZkdMeGcyYU9kNk5EZFVxbnZUZHM5b3AxSlE5Q2M0?=
 =?utf-8?B?d3cxZ2k3V1NmVVAyTmhWTlBsWTdkemZrbFRWSmxJWWJ5cDE4QklhaGl5VU9W?=
 =?utf-8?B?WW1SK3kxd3pYdTJ3NHIyQkF5OWd4Sm9NWXBCZXFNem1MOUxEYTdncTBWQXpl?=
 =?utf-8?B?ODVQbHg4cWo0czMwU3ZUcDByU3V3emxtdEU5REVIZFcvRFNjbXFPQk1NSW9T?=
 =?utf-8?B?TkpsYnYrQVUycGlHbHhuY3hxRFNyZWUyK2plc2JpUEJUbjEveGJmU1ZyczBD?=
 =?utf-8?B?YmE1NjIxZFd3aHR5THpTbUMydTU2Y3JwcitZRjdiTEJsRGFZeVBmQ05URHUy?=
 =?utf-8?B?eFdBbEwxdGIzRGw0K3liM3dZSVMyMnhDRmxidS9EU0FuendLMjkzNWR3ajBF?=
 =?utf-8?B?RGs4dG5TcWU5Wjl4cWM5ZGVtVUF4aTNuMWU4TjBJOHQzYk9rTVNmcjd1OWI1?=
 =?utf-8?B?bVUvNVR5NWg5M1hsQkt3Y09HVloxcU1QNlhuTWJLVXJaK2R4aTloMVRGbFVu?=
 =?utf-8?Q?INrYzlKN3/vui2Xd2sYxBbm2c?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 081f7d39-ce4d-4a7a-d7ef-08db757d1b5a
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2023 13:07:19.6157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QW6UrxLaVLYOTnZOwj0ELIFnT0tpKGZh/Sd/Oq58MfwGjZ5js12pSImatPgVyJtMRWacfIRR+H2/I0XLFwx8pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7287
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687698449; x=1719234449;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wCL/X7uPam0LxXngpKubW9ZKYgJCTvCbGquUJLzm6Es=;
 b=TA7FdS2IbhKjFMw1fPNDIScYobfwaxptf64C7aT55lSiTAE+1y0oNXtR
 RJ0sott1evLLQsj2YE8VTZoii0t91+lbnpjgstSBBbd2U8h288RpBVNKp
 vk3mQc5yeHhw8xNX8NX4eF3XFO843Bb+1Ma3sAGDGRLVrJTowXInDeCIk
 7w2u3+x00Yz7494C7onyUmJo+Qll1TkLxyjUZ6qly2Xha4YLn4YlXXecC
 VwvaT9OSsTzuvXd4bO+5uQLvoR+GWppxmpzsk2hecr1jTDM0VAVEGdOLR
 VMr1bpIsal8JKFkPz3MywWejMYsV2njbDPssmfoZAs4zDwFl2vSIH0AyQ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TA7FdS2I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Use PME poll to circumvent
 unreliable ACPI wake
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8yNS8yMDIzIDA5OjI4LCBuYWFtYXgubWVpciB3cm90ZToKPiBPbiA2LzEvMjAyMyAxOToy
NSwgS2FpLUhlbmcgRmVuZyB3cm90ZToKPj4gT24gc29tZSBJMjE5IGRldmljZXMsIGV0aGVybmV0
IGNhYmxlIHBsdWdnaW5nIGRldGVjdGlvbiBvbmx5IHdvcmtzIG9uY2UKPj4gZnJvbSBQQ0kgRDMg
c3RhdGUuIFN1YnNlcXVlbnQgY2FibGUgcGx1Z2dpbmcgZG9lcyBzZXQgUE1FIGJpdCBjb3JyZWN0
bHksCj4+IGJ1dCBkZXZpY2Ugc3RpbGwgZG9lc24ndCBnZXQgd29rZW4gdXAuCj4+Cj4+IFNpbmNl
IEkyMTkgY29ubmVjdHMgdG8gdGhlIHJvb3QgY29tcGxleCBkaXJlY3RseSwgaXQgcmVsaWVzIG9u
IHBsYXRmb3JtCj4+IGZpcm13YXJlIChBQ1BJKSB0byB3YWtlIGl0IHVwLiBJbiB0aGlzIGNhc2Us
IHRoZSBHUEUgZnJvbSBfUFJXIG9ubHkKPj4gd29ya3MgZm9yIGZpcnN0IGNhYmxlIHBsdWdnaW5n
IGJ1dCBmYWlscyB0byBub3RpZnkgdGhlIGRyaXZlciBmb3IKPj4gc3Vic2VxdWVudCBwbHVnZ2lu
ZyBldmVudHMuCj4+Cj4+IFRoZSBpc3N1ZSB3YXMgb3JpZ2luYWxseSBmb3VuZCBvbiBDTlAsIGJ1
dCB0aGUgc2FtZSBpc3N1ZSBjYW4gYmUgZm91bmQKPj4gb24gQURMIHRvby4gU28gd29ya2Fyb3Vu
ZCB0aGUgaXNzdWUgYnkgY29udGludWluZyB1c2UgUE1FIHBvbGwgYWZ0ZXIKPj4gZmlyc3QgQUNQ
SSB3YWtlLiBBcyBQTUUgcG9sbCBpcyBhbHdheXMgdXNlZCwgdGhlIHJ1bnRpbWUgc3VzcGVuZAo+
PiByZXN0cmljdGlvbiBmb3IgQ05QIGNhbiBhbHNvIGJlIHJlbW92ZWQuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4KPj4gLS0t
Cj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyB8IDQgKysr
LQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4g
Cj4gVGVzdGVkLWJ5OiBOYWFtYSBNZWlyIDxuYWFtYXgubWVpckBsaW51eC5pbnRlbC5jb20+CkFj
a2VkLWJ5OiBTYXNoYSBOZWZ0aW4gPHNhc2hhLm5lZnRpbkBpbnRlbC5jb20+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
