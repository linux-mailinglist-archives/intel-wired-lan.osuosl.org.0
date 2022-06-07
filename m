Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB1053F5D1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jun 2022 08:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3618C60E7D;
	Tue,  7 Jun 2022 06:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LnO0x--0eM4K; Tue,  7 Jun 2022 06:02:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3559760D5A;
	Tue,  7 Jun 2022 06:02:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8536A1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 06:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 731EA841AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 06:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LZx2JBZK7nHr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jun 2022 06:02:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B652D84093
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 06:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654581724; x=1686117724;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7sQQ6lVx05hMww/gIbDVjH8GBH9OcxE8HjoeA0NmrBc=;
 b=dPLaHFTeMNrh93Y55vmJskuVddT/a8oBVhls0O44hAXtsnfPawW93zy7
 b8J7FvzEJl4fJB4q2UbDQOEaLGxjy+/tOQwvmNNOPuxOk/IeyqGBvaar2
 YIig6spX+PyHwexe1OXgdYUEUdht+pDJf0ZC65ZuR/fPP5LDPYTfappCr
 AnOg3HBS6TYLxbIXm+THwtarxq9835c5C1sYqeELflpGjQ1elzumPz3Qf
 76Z92QsTzzRSd8NFuYcBdgSqSag9xn2WIsvqgGZUhNrubwsQZUS4vwpPM
 N4T15fCOlx+RCQnDSt5rImc10Ww32Xn7/nMDFtUx7yoXGr4sQMUQ/82CK w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="363051436"
X-IronPort-AV: E=Sophos;i="5.91,282,1647327600"; d="scan'208";a="363051436"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 23:01:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,282,1647327600"; d="scan'208";a="579468418"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 06 Jun 2022 23:01:48 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 23:01:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 6 Jun 2022 23:01:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 6 Jun 2022 23:01:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lI+pI3wLkdYipSiB0Ke1DpE/4GtFl81Y4wkpifpWNBZBFgMO0ZPnRbM7Q40tQDDbJ/qv9iqVGMRQ+b4jJouXCAHmGIh/8E2Kn2nNToPRSP/2gGXNY6Cx2AHVG0RQ0VzEPP+bNcTiMnSBvGFHcNRFbfnq1dqSJ9PPiM6NBhoH5YNg1nqyFU9Gfh0gGFJU/NFPnH0O7El2drDwJEMcJlYNpsKuX1HHFlQ/9uYUcO9Iy4r2w6DqFsjcg8AZ1WbYtEGpiMaNyFfxYfRMVt2+/+kKOSuikJqfMyRzIL5VfulxOfqvjFQvJQDKwd3bCHMRZQF7ZUWaLP95pcc7+PmoTPfG+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lMHnS2+6fzNbLc9szdbHcAv5DOHMSP9u+f1N8au9pd8=;
 b=N4IdJocdzuRXW6wiBwoNPruVTrGa9jFzZFjMGTR1oPK6M/ytPEd2uP2QmY4WUA1sIuv7CewKUM9EF+WOiYa9k4OMZkhwXAokk3Pfrma3K0DNQG1ifSx1fcBboDaDC41JgHgBBrv5FHxEut5rad8W/ZL27CqWaT/0UIowmiftKtIjNbMqcoxjr83w3KfVRf3Evi8XHy91/8ceG1MlhaXqHttUas6mPYPiY5RIp3IdyGvqGDITdJZyt/91LIa/sn7HhTDuHKVmt0js+9odLzU5afmc9+UGeM6k4mbQa5G4MSElECEnvwnwrj99snKY/MLNSnDlOIy8XvSqFnL2Mp2XEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by IA1PR11MB6443.namprd11.prod.outlook.com (2603:10b6:208:3a8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.19; Tue, 7 Jun
 2022 06:01:45 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8%5]) with mapi id 15.20.5314.017; Tue, 7 Jun 2022
 06:01:45 +0000
Message-ID: <0110cf85-93c0-a1cf-bffc-76618e7743a5@intel.com>
Date: Tue, 7 Jun 2022 08:01:40 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220606070747.3088370-1-anatolii.gerasymenko@intel.com>
 <154a69e7-a17d-90be-edce-febfb41e2dc5@intel.com>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <154a69e7-a17d-90be-edce-febfb41e2dc5@intel.com>
X-ClientProxiedBy: AS9PR04CA0170.eurprd04.prod.outlook.com
 (2603:10a6:20b:530::14) To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b30326a2-8d3c-45ce-1662-08da484b33cb
X-MS-TrafficTypeDiagnostic: IA1PR11MB6443:EE_
X-Microsoft-Antispam-PRVS: <IA1PR11MB64435B6C65F76E822D2E7DD281A59@IA1PR11MB6443.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gFge+YMInIFt9foU/JSBFofsC9VaEAkY6n35WH1m4WCTmSJy6+PUdwMrzU5EJkrno8kgScb1cOAKXAw7GVkI45GOwBnJ71Bsr39iJjZ5at7nDwBtqRl8H10EMEvaxK1WIeKAjr194+Ox+hD1bPzodbSOqpyMZ1md/qky0+QFOvQ1E8awt6PMb5La34/J/wi3AdSjtHei70PRGvxADm+oxRhtImM/GQnoQHfbQxvpo9+Y4G5hdwZ5uB9HAU64LvpUJguf7TWYEmbZvsw43HPQgmemWdsXbcsV2WaQlzFpWu2lTa777aa1NB7jlkk3H36PcXNHrWTlzOjYknZ/jfIDcZS99RiDefSQZX/rpN0Fs2fxqVIcvNbutmDZL1eC3BMr8oNFlutFLNSo5eiiiZBgl48leZ9iV8bmyXVOd95rJb+nm3RG+aqHlQYNb4/Iic1jlkot5tYdc0AHXH2RvZwHrxuNrgITXrJ4oMxvFNo93yLGjdN7T5BfsY0MypRwXFvw5woh64G3Rchl0dENPcDs5eAP+SGoFp34ENHa/StQtT4NRsyDD0I6bWieT1W7HZDE+FFXcjAgcOpDQjtq+fFwRTOOY7ah6xwIOTLwnqaa3xEp6JFKKV6Cayln1qqpFeiJI+6+yZYAb4umhx0DZSWfevkZpUmmhU9BsH46SWn+mzJ14v+nMSk70HeOwh2pF+bH3uFIHlKSx/8oW2pnJ49ypkRn/5BcafEiJ7wjOjFV+/3/YnTqiYAU07bUSYo06dEC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(186003)(82960400001)(38100700002)(6506007)(6666004)(6512007)(53546011)(26005)(508600001)(6486002)(316002)(44832011)(2906002)(2616005)(66946007)(66556008)(66476007)(8676002)(4744005)(5660300002)(8936002)(86362001)(31686004)(36756003)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2dTYXJHNG12ZjRtVDFQdUtyUDQwdGxiaGlDYjlsRXdicUJuTDNTNldwczhz?=
 =?utf-8?B?VG90a1hVd1hyQVdrVDhSb3N1clZBcjdXYnNRVjNiZ3djWTM2TXZGdmM0SUJW?=
 =?utf-8?B?MUVjSUh0VWhXRE15WnN6TVhYYnpCZkhCRjg0ME5vSWRHOFUzRG9Eb0ZwU3E4?=
 =?utf-8?B?WWY5bEMwRTc5dmdaM3N0U1RjT1FDbzRKZkJ4cE9ka3g5YmRGKzNRT1J0VGxI?=
 =?utf-8?B?VUZFTjZya3U3TkxrOWpiNE0weXdOUWFMNURtU0RNWHJVdG1WTGR3aEdXby9D?=
 =?utf-8?B?aS9OYytLVnRhNWtqTFRkNnRwdGJRb3JNY1cydXlyaisvTHNTWUlVUVdWUjlM?=
 =?utf-8?B?VFZSM2ZLWU1maXowWjhTMCtqbGdOTU5EM2JFOTM0K2lyVzhtTWZjZENHSWc0?=
 =?utf-8?B?RnVBZ2lNZnp6Qk1NTi9ydU81YVVyYTg2MWdtRm9HYlVSZmR4SDZ0N0ROd1Zq?=
 =?utf-8?B?b05QaGhXYWg1M2xFTnJrenhoaThDdm9yVmk3emxidVFMajZPMysvWlJoZVVx?=
 =?utf-8?B?YVllWUNvaWNVNDMzdDVzbGk0MW0yRFppMnVrY3YzdVhJVGtqR1NFYm9uVW1j?=
 =?utf-8?B?cVZGR2t6RjUrTHBkWE8zSm0rSEYxN3FsKzlWZGtFOVd6SW1HYjVPUUpCUktU?=
 =?utf-8?B?WmdQMHg5b0xTc2FoYmUzUWpiWG1JMkJQQWxuRWVlQWw2WGduK2dsYnVHeUh2?=
 =?utf-8?B?a004NU1Dek5YclVDRU83ZWg5U0JKeDlDcTFTZi9rell6d0IvSlJHRHNNVTR6?=
 =?utf-8?B?emhiWFUwcHNnOXRYU0V5T2g1cXc5NVhOcFNCSmZ2a01VYUxuOTJUZ2lrUjd2?=
 =?utf-8?B?aVE0V3hNbGRYNzd1QzFyWW9Md2tHRHJrZkdOaEZ5UGoyZ0sxMFY2R1ZaS2lS?=
 =?utf-8?B?bDFIL1B4MnhSNHprTFMxRGZrOGc3Q3g1Ukh0aHFtTi9aRFc2TUw5elEreW5X?=
 =?utf-8?B?bXRCNDY0VDVLRm9rdzRwNExOUzNldU5DYTV6YXFIQnlDczlMa0pwYVJHTUo0?=
 =?utf-8?B?d1hhbGE1aHVFd1JZOWJzYXRXRGppV3pIZHBuV1dZaHVBNU52Q3drY09wemdW?=
 =?utf-8?B?YkpCbGxVMVYwem41Tlp1WEJ0WEdmVE1CZzZhb1l4MWsrQ1ZILy9SM1Z6Zm45?=
 =?utf-8?B?N1ZTbjlORDFTYVF0L2JOUHZqR24vQUtXMittcXE3dWlNNXk5MjFUTnlacTgx?=
 =?utf-8?B?cjFNbERjaXdJckR2Z1RUdFNidDZmdUVlbUN6UWNQUzd3QXM5VCtlL0V1NjlX?=
 =?utf-8?B?a0N5ek9CaTdDMFNjc3YxMkt0NUxPbzF1ZGJDUlFCNlgyS0Y5TmdYWC92b0Vt?=
 =?utf-8?B?b0lCNHdDYmxLOEpjWXhsdWZwNUQwRitmTUpJckUvRzNadytnQVhDbGFDbkpu?=
 =?utf-8?B?a0FyOWhQZlo3S3kyUHRLaGZpOTRxanRtMmIvSzRzOHNnZUZiMkVUaDYwY3gv?=
 =?utf-8?B?UExxa1BPRE1iTDExdG5HdmdQRlZZaCtZdThIZjVTYmRNMFF6cTk3L0JXdlE5?=
 =?utf-8?B?YTlKMm9PdVR5bDJrS09EaC82YVJvbFBQazE3NjkrdE1ybHFwWGNtSDgxVTlr?=
 =?utf-8?B?Zm4zSHhZVGNRWEFDcTBHQUsxNjBqV2hwQTFtREgvLzZzcll2K2w0VW15TnhL?=
 =?utf-8?B?SUszQkNaTTlBWTBaMWpEbElDR1ZaWHcwMkQ1TGxGK0UzTHVxdUovUlBndXBv?=
 =?utf-8?B?NS93SkNuSGFFS1VCUW1mdHk3ZHVRMHZxODltRm1lcGo4MTRzL2lwQ0xSUEN5?=
 =?utf-8?B?OFFrWC9ZOWJRWWhCT0ZHUFFzY1pVOEh3Y001Nm16S3dxMXpmVVRXKythNm1u?=
 =?utf-8?B?bmg2dUF0S1ZwRXUxRE1SNjM3cjZGRjJvdEk1dHlGUmJtanNrWU05Vno2S1o3?=
 =?utf-8?B?WVFPYktNTUJRK3JVK3oyYWM0WkM5QmdyRzkrVGdTbEI5TU9EYW51dSsyVU0r?=
 =?utf-8?B?UXBZa3FvR3N1UjRWYmNvTC94SjdRVlRRdVFLNFBRWUdrb2xYYUxSOU4yWnVk?=
 =?utf-8?B?N2cveThaa2VFN2owaVN1UVpXbS9Mb3J5Q29JUmRFdUtSbmVPdkZ3OFNlaGRZ?=
 =?utf-8?B?dFVkdXRLY0x1SVlnUStOcTQ0Y1RKTTJweTI3QTVMdjF0U3pYMVBkYVFkQXVT?=
 =?utf-8?B?TDJsZ0QvdXRzSHNIc2sycWZSeGs0OENGWExPZ0hBaUoyWkRZSlMrZGVyV0RH?=
 =?utf-8?B?UzZqbnUvRWI1dHI2U1dRTDFqUmhMdUEwdk95NXVsT3IzMHpaYldFNFpNTy93?=
 =?utf-8?B?TjRCWlNUcmZ4dFJ2UXhVNm5iVWJoUUdFUG50RFNHTUppS2FtZnZaWDgvZnEw?=
 =?utf-8?B?SytDM2x4RnhsdWtHSXV3NVM2Ky9hUjVOMnhwWURRb0ZrcEhYOUdEZENpYXUx?=
 =?utf-8?Q?XhwQAWVvqp02/1jaITdUL0U1WTCfnL41B3pBV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b30326a2-8d3c-45ce-1662-08da484b33cb
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2022 06:01:45.8165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GrmbwsYqIMZjWxg6nNuYRCTG6fObKcWqXnu9eZICa53BMCV3QJiRHtA5g3QNnuiQCSKMhU8QyBnMZjEcLCxERgAKAuivNgg/Lu153F7W300=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6443
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: ethtool: advertise
 1000M speeds properly
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06.06.2022 20:24, Tony Nguyen wrote:
> 
> 
> On 6/6/2022 12:07 AM, Anatolii Gerasymenko wrote:
>> In current implementation ice_update_phy_type enables all link modes
>> for selected speed. This approach doesn't work for 1000M speeds,
>> because both copper (1000baseT) and optical (1000baseX) standards
>> cannot be enabled at once.
>>
>> Add a special treatment for 1000M speeds.
>>
>> Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link operations")
> 
> This has a Fixes, but is targeted for "net-next", why is that?
> 

This bug doesn't have a high priority.
But if I can send it to "net", it would be better.
I'll send a new patch.

>> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> 

Thank you,
Anatolii Gerasymenko
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
