Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 997F555F0D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 00:06:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2B4360B97;
	Tue, 28 Jun 2022 22:06:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2B4360B97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656453996;
	bh=c+9XqP6bi8BM3DYvLmkLX365EdOGYg0dkSZqh5J2So0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RaCp7cS9v6W9j7dSlDYV8eFkHJBoCUxwNW1HwPbribKh+e17q7FCKu4pwRDYbWVHR
	 SiZxJWhrC+0A0Zee0nvMBiWuTdQSIoIqSdNH44F90os6YnIQ2VriYhFQROk2jYEp6w
	 5drkzHVz8JppHcziXb+AsBJ3FDBhwevok/FhDBNRQY3Tds4DL36648Iy1x7iBLmYlU
	 M2tLMH6g4RCKUSfbKZ4Tr6uoVSod+7tzvCYJsypI7YTB4yg3xIenIrGSI64JhjPgmx
	 JeRPt+3VSpQlMihGFpLqDCBUfoH+7vMoi535XbHn3U/11k0DUIN0daLLbY79zFe5/B
	 Oea6zw2Ex0fxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0uJ9i9oKSgsI; Tue, 28 Jun 2022 22:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C534360B2E;
	Tue, 28 Jun 2022 22:06:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C534360B2E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 233F21BF95D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFC46400F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:06:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFC46400F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ODXJP6lsduZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 22:06:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1643940443
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1643940443
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:06:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="261661691"
X-IronPort-AV: E=Sophos;i="5.92,229,1650956400"; d="scan'208";a="261661691"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 15:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,229,1650956400"; d="scan'208";a="594966307"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 28 Jun 2022 15:06:29 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 15:06:28 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 15:06:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 15:06:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 15:06:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bteqoa2zrPG8VuxRWPIl7l4Dh436GCR9hCNpi65vEUaw//aVVmwQnjJn9QLF9fWH2jtcy10lrtTcCl3cg/HK8qKJ8uXBZhyhYAVDZ3MKzkqy/Or1OPMD28fNeRksFseRMmKMNtdtgbYTsrUditNkCR2un9hOjigS+R7m+szClA0hvhlhF83ibCKekTQtquHIp5i0HrROclsEy1pF7/T/rK/tHtwx7f+0+w0olpiSe8SRp1dPO+34pGVbULGPqtmogyZiBpCbPWKVQDKzv2a+LIzZAedyNDFiVsl4aKCqkS94/B0I8RjDd53VbY97f9x/jzSqRVBRVs7W95V4ZRrXfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SIot7eOEzPmPHSq4SwOkbUDGC+Rn0/YxwePrj1GsVLs=;
 b=Vbf56XLaf7zYQo4fmBhaY5Xkdh8D+X96EtspezNblTjLb+NGEny2OUGlbvYKyHajMX3FZRV5FnSEbVwabqNAJOHynYU0Lp+t+g5/rRa8ZaP6Q9PZB0orLzp9GQEDchbKA3tIMn2fPueR6+Ftkqad2ynWGaX428f7PLYrZQKkNtJbuO9K8OOD2dEIcB68ENef4bQr+d53x5fKJj6o+NI/TO5LT666MokikRvW1JcWMkAezeSlhJIJblnldYS2aB57hgiu6sfB0XrA5bRXHAh6LvuIOT0Y+fnvFCI6chpSGzGBmumsUdikyCmUTEYCXfAJmDjuRaKxp8flsM/zWAHY0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM5PR11MB1577.namprd11.prod.outlook.com (2603:10b6:4:a::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.18; Tue, 28 Jun 2022 22:06:26 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 22:06:26 +0000
Message-ID: <a45f2a0f-9aa5-1a81-42d5-c7e89e92398a@intel.com>
Date: Tue, 28 Jun 2022 15:06:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220624101611.1007933-1-michal.wilczynski@intel.com>
 <20220624101611.1007933-2-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220624101611.1007933-2-michal.wilczynski@intel.com>
X-ClientProxiedBy: MW4PR03CA0199.namprd03.prod.outlook.com
 (2603:10b6:303:b8::24) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 81d8ec59-c3c5-45da-c40c-08da59527203
X-MS-TrafficTypeDiagnostic: DM5PR11MB1577:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9vDkkiaspBLD8qci7UGJUZfnEF/hUaackgbB41nhhmrZTjTr2rQAJFE51MhLjWslkhZiFGhJFKwY91B1lLr7fgnhF3osxpJqbNpLGviB+RH09Upoc4brfd+x4juanYWcXtwvIFkiliAhwTsK501tB0a46pFN/Gl6oPBFTIdqj4vCR9+1lFIEGGLshf+4Z28KE8TvppgJcNLONWb9Txp5fd5jfD6asBgB9TWe2jzXaz8k/Z21k7fOCMKqZqMh3ko3WNlybf+HEkBp6wo1sCvhz6QQZ7pBquk5hts/fBYFYyGL7XjqJlEk4BY9wWJSCkMSdC38PXsOFQsFW8Qyd5ZVAIO1E8zcbUh3uC07Ng+Z3z2dT4UX5Gnc5cUTUgj3XQzRrU2cj85li0e6WHZeD530lOvcUrVrx/+gQzoNrJ4bA+Twcyfcl819NfQyDtfp6LerO9gpBVtfpy/vBsHYBARAwrXMXHT9F0oveBVmXj7OByw35BWAXsdec+gnPPRXDNTP5T5x0y8kGjeUSa+o5S6B3RFzPGWBP3t2+1ccySTYjZuU+OLlq7ch6NHSZ2BgRRoEhTUEyH8b2+eAfPSk6x52KcFVCHrBWzJwm1YGcAXQgyWsS/ipCPFKG5raalZ5EF9MvE5K0BxwYPFx++egvXH+OP6scpdBxZ3Z44PHjv77zdsc0ZgchYsp70B7/LbCzgnt9nCu+txGRNs5y3X+mDPaW+OQKglkBWamRfbYhyI6lCytn7A2bJeBfR/Te43u4KlrJ9hYTxBO5QwOL31k5y8YgBrhEuOG54hiIuQxwarOJ354TVEr1auTjkT03vxOKl7aQdFclOCdSo2y12hB0cIhMw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(366004)(346002)(39860400002)(396003)(36756003)(31686004)(66946007)(38100700002)(8936002)(66476007)(66556008)(316002)(2906002)(5660300002)(86362001)(6486002)(478600001)(2616005)(83380400001)(186003)(6666004)(53546011)(6506007)(8676002)(6512007)(82960400001)(31696002)(26005)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3JRUFhhWWFOSkpQNzg0M2NuV0Y2OTByMXN3NUZpUXVVSVBodWxHN01ON0hU?=
 =?utf-8?B?T3g4eVlZVnR6NkpmeDNqbFB6ZUhpTDRoN0t4VWx5dk4xbHkwMkM2dW55UVZ6?=
 =?utf-8?B?akNUQ0ZuWDlwVTU1SzhpY20veXNxK3RWck1Od2c3ZDlkNDdWVVU0amlFVkJJ?=
 =?utf-8?B?dXlaSXVEaGF2K0FuRlhUUUd1NGlLZWVVdHV2Nkc0aVlvTDVBaW8wZTcvdDk2?=
 =?utf-8?B?S3Q4R0NMTFhxWlVDUVRrd1krSVhzUmxTbmJISzI3WG00MU0zWG9hWG4zd25q?=
 =?utf-8?B?T0pmY0FJSkRjQi9GVFd3RzkvUXZNVm12SlhEc25uaWZiVndPVlQrMHhRNGJn?=
 =?utf-8?B?MmoxU09LNHR0bWZyT0Z5Zzg4RE9jWHhOdy82RFI5a0daL2prOU9NazhZdXdL?=
 =?utf-8?B?aFVFWUJ1amlMYTk5MDdueVlqU0svcTROTHhxZUVqd2I2S3c5R24rVGx3UkJM?=
 =?utf-8?B?TkdUT0U0clljYUpnVXVYUkY5SW1ZV0k1c2lST0UwdU8yeTUwSDlSQ3NvZWtx?=
 =?utf-8?B?RGY4VWZ5dmFOaW9CTGJVQkp0MTYrbmRLVG1QRE5hRmpRa0twSGhWU0dVVE9M?=
 =?utf-8?B?bE8rMnBzMUtnaEFsakx1MVpCeHNDMk1WbkRnYklqL29nSkxhUFZKd1VvZXZQ?=
 =?utf-8?B?U0xUY2xpRmN6aWZacllaMnJ3VHJQOTYrNUhaWjMxVUxLM01uTm1SSDlvYmIw?=
 =?utf-8?B?ckhaRDNBUHJhN0hURmYxcW1FNXFleG5mdFF6TVh3YUJGTkw4S0hvTExVWU9z?=
 =?utf-8?B?dW9Da3VUZWw5YUxGZ3lBMlR2ZUhHQ0Y4TGJVUzhCenIramw5STVJZkRhNTZa?=
 =?utf-8?B?ek1ncWgwYXNpeFNFUFdzaDNIV2xPYTRrRHMxNUJQY0ZJMHFORk9NTDFtY0tj?=
 =?utf-8?B?d2V1OERWOEtFSWZwRW5UeFgyRXlsalY5NmQzVFlOaU9NUmRtKzZvOVI2OCtw?=
 =?utf-8?B?ZDZDQ2lBaE43dW1QSUtmYnRqejlkaHArQzFubUNzZGlTaDkxQlJlTGZlNmlm?=
 =?utf-8?B?UTBSRi9LeEM5OExtN1BQRFRxY0x4a1lyeXVwVXpZSnkwaWFNRE03OXZpeW9s?=
 =?utf-8?B?U2E5QkE1b1JRenRFR2xuL1hVMi8yYW1wYmo1M2ZRWnNYbU9CWFBZVGtJdC9k?=
 =?utf-8?B?VStrS3VoT3YvdWdLQUlQNzFBYVZCeVI5MkFCd01HSng0VHZvL3JGTkRPSU9F?=
 =?utf-8?B?M0VLNDEvZHN0aTFXZEE1Rlc4cHdHbHF0WHlEblZsbmdWZjNrcS95Yzgzek5S?=
 =?utf-8?B?WmJIdVBHVnlaMXZiMUErbEVpTk9lZE5lZURnZW9wNDdTZXBWUDFDRWpDQ2to?=
 =?utf-8?B?MG5KOVpxalpFNHVXM0FEaks1OFRSVDZTKzlvZ29lUG1mL3FUZU1uVXdOSmpj?=
 =?utf-8?B?aVA5WXpjK2N2YjFRZGc0YTdZbmxJNGVIdzczZzVKdS91TzBCQ0tYODFYbnNw?=
 =?utf-8?B?c3VVNEU3ZFQ5Y3pGSXo4VW5hNmxxMzBBTE9RS0tFVXgxdkVOaFV4UHBMY2pw?=
 =?utf-8?B?NmxUODk1VEJCK2o1SlRxWU1jOVpWdEMwbDhxd3JyL1kyMkxpUG1ydzdTbzJY?=
 =?utf-8?B?VFV6cWRvOGc2QmNQdkN2cG5WQlhmbmsxSzFRT2ZKODl6b0pFWnBza0FGL0JE?=
 =?utf-8?B?YzFwZXJaRzE4Y1dQNDlmY1VTZXJZZWI5em5JTlhYYjZuTS9zZ0RKWkxYMTBT?=
 =?utf-8?B?Nm5OTWJqU3ZpS1QydDV2cGpQNTJUZmxWMzV5bFFvVm1Gb0ZyOENiSFNEaGIz?=
 =?utf-8?B?RlNjRDNadDFIbUtHNXRYVW8wYlo2Wk1CSHR6VVV3R1FnTWJmcGNZbUcwUjEr?=
 =?utf-8?B?a25ES0U5NnJOSmp1cGdXbk5pOWFraVRKNmlwVGY5a1V4TC9rSmYyNlMrZi9i?=
 =?utf-8?B?bU1tVHBvWTFFY09VZ0RFaFFjQ1BKY2ZaR0RBTGwwWFVKbWJ3WEl2aExvOEhq?=
 =?utf-8?B?ZUdVZFFlc0xvSjBLNkMxY2RrZDRIczFjQVBnTjQrWFExTGg5aEJya1RIRTJM?=
 =?utf-8?B?UzdGR0MyeVNiL0dORnRKL1R4TWR4VTRQSmljMDlZcGlJaGtTM25OeFlYWm01?=
 =?utf-8?B?M1I3ZnFwREJjeFJtanJ2YThOTS9kVmZmdnNzbkxCdHlxcFFHUkxLb2ErNkRk?=
 =?utf-8?B?UVFsaDd0bStjK3VyMTAxbVdSV2psNHJQZTNTSlFXK0FMTXNqMlNNekxDVEpG?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81d8ec59-c3c5-45da-c40c-08da59527203
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2022 22:06:26.2948 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X9t2aFZf08RvRVRV8cTxH6ueo0bcAcyfeJbnPH7NxU96AoStaBADHREwgSHLSGY/k4zVYRuZbNoVdjRNv29S+xbixetL9/zeskFn3h6ZrSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1577
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656453990; x=1687989990;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5+vYjXdkbsv/XyAXvNhWBEYidH7gfvx7ZpI3/4WF3xE=;
 b=O913TELcdCvvbZomCaQI0JEfsj1jf5RZis+CqTe/QCevYbIqaLPdoX8l
 oYJH+SBntlnm/EQd1x8FgpXMO5RYLhqIBQGK8mLrZawsI+xNmIfzj7MwU
 0fICVlMAJGt1/ZJbn0rt3sFfAEozcl7XvoOq8cCa1hnsusWqktZ9FFT48
 rk/Kf4ZQ/CfLI8tBDUgkNA5GL3AHkILNuD7uSf3UTPH3iPu3DBcq6/bVV
 WssSkJKkHy8ExOTvJsEIQwTZv+2G8tzlwwLpWA5sUKVATPYqj05y8N2lf
 yZUL0VksqkiXb2qgTVdRi/ATqiF1kCwum5EWvFA/PCHTzaJ0edE9tzq1S
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O913TELc
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/24/2022 3:16 AM, Michal Wilczynski wrote:

...

> @@ -3695,79 +3696,63 @@ bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
>    *  Otherwise try to set the VSI passed in as the switch's default VSI and
>    *  return the result.
>    */
> -int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *vsi)
> +int ice_set_dflt_vsi(struct ice_vsi *vsi)

drivers/net/ethernet/intel/ice/ice_lib.c:3733: warning: Excess function 
parameter 'sw' description in 'ice_set_dflt_vsi'


>   {
>   	struct device *dev;
>   	int status;
>   

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index 8d8f3eec79ee..f6cd73e9d451 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -1298,6 +1298,9 @@ static DECLARE_BITMAP(recipe_to_profile[ICE_MAX_NUM_RECIPES],
>   static DECLARE_BITMAP(profile_to_recipe[ICE_MAX_NUM_PROFILES],
>   			  ICE_MAX_NUM_RECIPES);
>   
> +static bool
> +ice_vsi_uses_fltr(struct ice_fltr_mgmt_list_entry *fm_entry, u16 vsi_handle);
> +

It looks like the function can be moved up to avoid the forward declaration.

>   /**
>    * ice_init_def_sw_recp - initialize the recipe book keeping tables
>    * @hw: pointer to the HW struct

...

> @@ -3882,54 +3878,66 @@ int ice_cfg_dflt_vsi(struct ice_hw *hw, u16 vsi_handle, bool set, u8 direction)
>   	f_info.flag = direction;
>   	f_info.fltr_act = ICE_FWD_TO_VSI;
>   	f_info.fwd_id.hw_vsi_id = hw_vsi_id;
> +	f_info.vsi_handle = vsi_handle;
>   
>   	if (f_info.flag & ICE_FLTR_RX) {
>   		f_info.src = hw->port_info->lport;
>   		f_info.src_id = ICE_SRC_ID_LPORT;
> -		if (!set)
> -			f_info.fltr_rule_id =
> -				hw->port_info->dflt_rx_vsi_rule_id;
> +

Odd place for newline

>   	} else if (f_info.flag & ICE_FLTR_TX) {
>   		f_info.src_id = ICE_SRC_ID_VSI;
>   		f_info.src = hw_vsi_id;
> -		if (!set)
> -			f_info.fltr_rule_id =
> -				hw->port_info->dflt_tx_vsi_rule_id;

...

> +/**
> + * ice_check_if_dflt_vsi - check if VSI is default VSI
> + * @pi: pointer to the port_info structure
> + * @vsi_handle: vsi handle to check for in filter list
> + * @rule_exists: indicates if there are any VSI's in the rule list
> + *
> + * checks if the VSI is in a default VSI list, and also indicates
> + * if the default VSI list is empty
> + */
> +bool ice_check_if_dflt_vsi(struct ice_port_info *pi, u16 vsi_handle,
> +			   bool *rule_exists)

ice driver uses GNU style for multiline function declarations (same 
comment for patch 2 as well)
e.g.

bool
ice_check_if_dflt_vsi(struct ice_port_info *pi...

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
