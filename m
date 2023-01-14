Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6652B66A773
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 01:22:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E71041A52;
	Sat, 14 Jan 2023 00:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E71041A52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673655729;
	bh=9IWae8fV+lc0zWni+KrH4w2uDTDnXapt/auNmg1i+Xc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q4KbflZMZHx33Skvm2iq/1d/XXMVaj8AL5q5WKonuBRiGAFcBeu7pWSuSgZrc8Kxt
	 NxMPEHaAjN1G8seNzv6QRq3eviXyFlWcL8Jvk6F6FdPeRxqBIeN7hZ06isXtTq+oiK
	 kP0RoJx20iux+zXVm94sTAbf9/bqY6UA2WKPz08t/4jByD+WsI5qcJVHI66CQinwLV
	 vmSVXWx3+rzA8bWEKZsH2Ki0xv4+Fa+9GdbuR5KT4UgzDeX4h5kjrLDixQtBbZQF7L
	 EYTSq+2AyBqvwsTQriZ/dJS/T3dqTugU/1dkGuN8v2quPatUO6R6chQ5CfZpJV0nyg
	 OZbMEbYS2XV+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gA8jpz8m2dLU; Sat, 14 Jan 2023 00:22:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9579F41963;
	Sat, 14 Jan 2023 00:22:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9579F41963
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 262981BF3C3
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:22:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F265C60AC9
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:22:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F265C60AC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2dbDDQGJuMb4 for <intel-wired-lan@osuosl.org>;
 Sat, 14 Jan 2023 00:22:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3ECAD60AAC
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3ECAD60AAC
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:22:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="326193022"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="326193022"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 16:22:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="903749538"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="903749538"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 13 Jan 2023 16:21:59 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 16:21:59 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 16:21:58 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 16:21:58 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 16:21:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AhYffOERVkLP0mKLQ6Y+OOnVTDXbAwSM8vQ18A+7M05Hh+9uiR6JlzmBmKoIgLFe1TpXIpWWnWVoeuYAz5sa5wIa38Q1fDq7YeUb35Bif3iU9uWP5z4j7rDRHzYHUNhzpieCVom2UrjP7eMCAK7K3Hd2ZOuAvYX71fwb5HcesEq2nSlQOKTr/QvZ6+KJlyz5BzWxv7PnE9THtExI0cAlENOBlHn+GRk5SahHzaD7+jhfVwQy75MFQ35Q2XuCH5LJH3ahQTat4eH8i3pVRN9eU3sPwydXuq2TqrG0wrFdcm5+7swh62KGaioolQ843qiI/mT9bP4WPJk7jgx+WrCUmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nmAgc9ff6k8OeOAe+9GIY79mD4rsS9f9vf/N0iB9VVY=;
 b=MjA3m8hGa9U9+D5s/wDEUTVc4x7XQzaFn3gfe2FBaws0ySJOMoLxofiNN8TT9F7MdIKerANXpL0RE0OQjIWoBiTg9epmXaz3BcjepKB3KowznMnYmjpSW69ZlruugKzSK5FraqK0dX4lRCELT5ATYzJ1vmUtgx/yeCa0mo0tkzg7kdZ4X/A32YA1UVoMZs+s1JxhORNBbKYMDifz/wcqdJfkT9O5xqyUDwazyCsqo/Yn6FvvdB/qychL7jzAPI3Tw6Lm21qrvBxXu9yw3CaIwl6uTn6QeM3WA+ydJCq7408aBaIhxVU3OKkxkueOuKFSL4qq9wQjvTE5SSW9F4GrKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB5471.namprd11.prod.outlook.com (2603:10b6:5:39d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Sat, 14 Jan
 2023 00:21:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.5986.019; Sat, 14 Jan 2023
 00:21:56 +0000
Message-ID: <3c92045e-9782-cd6c-1ad7-6e514cdff858@intel.com>
Date: Fri, 13 Jan 2023 16:21:54 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
 <20230113222319.111-3-paul.m.stillwell.jr@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230113222319.111-3-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: BYAPR11CA0098.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::39) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB5471:EE_
X-MS-Office365-Filtering-Correlation-Id: 59889441-fa62-4c2d-cc92-08daf5c5580a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gmq2Etn7K02dG25zBoRzwhysFQqQx5r3pfWrPz5P6tP20sDitTqC56A71kowryfFt0kDWF+aiYXV4xjY4ec8vq+jz84ZwMyq2wa2FfwbKb44vOAobVweAO7Vjx4lzJ5BuJN7Jn2s+cEZg2Ps541f673gq8gZzisQ81N7yZak5/qEED1nblwb5je8a2SrzKosUKtFGCxKroYEbKngVvD9f4nthVMECnwNoEWV/MKkenImOICuDYvzybiOyqWn21wMVjFo37j40T1lnjohCleuJdwLWpjWLUyE74I0ONjBhAJ9mxLzInIK8IPeexb2hVnUA33pDbNsz74mcTaftdaHc4ORDUkCHgingyB64TxGMm5FEhQpMylt0Q9K02Y7c2R1c/kb5mpIzkDKnXY++4qRA/PunKKCp9A1Y6w9OXOtmaFpVVjsq2GMOaSWqpcSgafniJxEADm8VD9S4L5AAWG66T6z3vuYco3aGA7bOBbYJ/R2rvZaOYkoRjHHVf8crCxWEfKH0m0kxk10kvnqXLPWdPeyhEH6xjM/P5ydzTGFNstQXaAcV5BZuDACswsDkFR9mMHpEX1nHLcFL+l19zapKtnHMPaRaWLkvkZf1bxNrDzCDYbuuFGGofAR8zDVRhPRVCDdcff265c79DPYbyBL9Qhh6aS649VOFI+8dqQKG1LkxOo7v6vAeS4oafUQvS5pzl4NUC02aYG8LgLBDFrYjLmR2dlQcfZynd372TfIjzI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(39860400002)(376002)(451199015)(31686004)(66556008)(2906002)(5660300002)(36756003)(66476007)(2616005)(8676002)(316002)(53546011)(41300700001)(6486002)(478600001)(8936002)(26005)(6506007)(30864003)(6512007)(186003)(6916009)(31696002)(66946007)(86362001)(83380400001)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0hNR3RUcE5pUTJ2UTllWmdEOGpVa01sOUZZL05mMUpoVkw2b3pKUXV5dk1l?=
 =?utf-8?B?RVd4T1owRkQwSmthbDE5YWEreXVNSzQ2Ly9qd0wwUnpaQTNYYmFCZW5MYUEz?=
 =?utf-8?B?cjE4alBHVC9kZGExK09GaWF3QWpPQUR6L2pkZG5Dd0lxSlJXZm5lK3NkSGI5?=
 =?utf-8?B?ZlgxWmZXWmlMNzdRQU52V1VaUHhCZTg3VXRibFI4MmxlSDQ1cjllVHhhSWZu?=
 =?utf-8?B?VHdRZFNCd3M3N2NOUTRpaFludFRGQzBDZjdPRDl2TS84aTl3K3MzQUxhVmpL?=
 =?utf-8?B?WWc1V0dQNEEzaDZqSy9lcjJrL1dBVTQ0WWdkd3JJMHVZYURwOXd2b1JhZW5u?=
 =?utf-8?B?MTYvcEFBMCtOVVNFNExtbmpkb2VORFhWOXNNSGJLWlFCc2lvL0R0SmI4SWRm?=
 =?utf-8?B?bjVOL1N6RDJieDdWTHY3UWpFU2d3aHNJNS81OXg1N1FVNXE5Um9kMjQ0VVZV?=
 =?utf-8?B?UTV5YkRrS0pVcG8vQkNRSlRCb0pGYmt3NTVwMkk1Tm5QcExDZ203OVRnR0VV?=
 =?utf-8?B?STN6TTU4cExCczNuZG93amQzcmpnNmZGdTVvSFl6SnJUcWM3RlBLVFphbUxE?=
 =?utf-8?B?ZTNXYnZFRENWODhVRGIxRThJdWNVQU1BWEc3SFB5RDJ1MCtaQ1doM3ZHOVZF?=
 =?utf-8?B?cGVjTEY4bFJwWE9adUhsUWpYcGtaNjZPU0JaTUE0NUxpODRkQ2JVaGtSWDRY?=
 =?utf-8?B?clRHTFViVHBzUENQWVA1OVVnMFdOL0p4dEJleGg2cHdLbEFWTDJ1MHY3NmNn?=
 =?utf-8?B?aXpRSE1WZjVVdkdWajliL1VFbWtGbUxQdVBZZFIxSURpSEJwQVJWY2xvT2JU?=
 =?utf-8?B?MDZVT0pRalNFMURKL1ZoUlZKR2J6NlBVM3kwVDFxZVdIR1VxUTFxblpCQ0pz?=
 =?utf-8?B?M3JXVk5SczBkTk5haXZsNkVvSkwxSjVUNHJWdTl0dUFaWkVocnZRY3o5VStW?=
 =?utf-8?B?ZDBBQS9UdDhTcU5ibG84Tjk0WU9TZ0xIMHNPRG1XWjhXVEtiZXV1cFh4N2or?=
 =?utf-8?B?OGs1aVF6bDd6bzlTbkZxTGo4Yi92Q0VaWjEzZUdSakZLTG9EZURLOU0yS0p1?=
 =?utf-8?B?ZllJWWZacENHUDRSQXhCWk01WjA4dVZJTWluMUIyRW5RNitqV2ZqSStzNU9v?=
 =?utf-8?B?amNETENjQXpQVnZ0ZDQwYm1GZTVuTjNodWZ6OHBMRXVVSEhJTHRKUys1aU12?=
 =?utf-8?B?S2hvTFVXOXZPTkxKZW9yVDZhc1BmcFhoYjhOY0dMRjIrKzh6cVBWbVQ1cVVQ?=
 =?utf-8?B?VVNiZ1VrS0pBVCt1c1EybHBNVHhYbFZTcS9zWGpZaE1ZVlZBNHFLcm1UWEhW?=
 =?utf-8?B?WlVkclByY2Z0YkNMYXdUUkZmWHhGVVlGMU5tS3hzdnZTZTgzdGpISlZvR0I2?=
 =?utf-8?B?djR6U2RKRjZnMVJ1QjFkUEw0cWRpSDBtUDRzYnFoWXN2V252QVlvMjBaWGFl?=
 =?utf-8?B?L1lEdnhZV2k2eEFpQVJzcUNyR2dmQWhyN2VTcnlSNU1xWlRoYkJnTjQ5U3pE?=
 =?utf-8?B?TFRMc0MvalVHVkpLbXprRUU5emtpNjV6SGZrN1lkaTlWa2t0Ti9kTmp3UDMz?=
 =?utf-8?B?TXhVYndNMkxMSDFTT0piY0l4VmNyVWY5YUdxeElmVjdDekhxU2xubTVCbnZu?=
 =?utf-8?B?WUxpQW1CQmNhNU85M0F3OG14VlBiK1ZkSEVvYlpwVVloak94MXhranRHOERD?=
 =?utf-8?B?cjBHNE14NktJZndsL1VzMXdoYjh2WkUvbnJTajgrVkdwa2pwTGIyR0xoRXVu?=
 =?utf-8?B?dVUrenlaMnpYckhqMkdTSjZ1RjRtN1BHQkdmdi9rU2VxODVFdGR6dW5saG5R?=
 =?utf-8?B?TkF1OGJTanJMNFpQM3VPYnhielhKUnBwUUovaldQdmJJMzZJU1M1aTErOWhZ?=
 =?utf-8?B?K1doZit3SXZwbjV6Zk4wbnRDYldPZGMxbmlPTHFqYTdjQndZQjFNYjhHM1Yw?=
 =?utf-8?B?RU83MzI1QnEwYUZWSnZESXFyWm92QmdRNWROQUNOWlM3ZmFKdCtLUGIrdGYr?=
 =?utf-8?B?d1U2QWt1Yi8zcWhiek81ZWFYSEltRUx2T3RsV3JBbnN3cTczeVdnSG9ubFA0?=
 =?utf-8?B?c08xVlBLODdKQk5xcjNSL3VrR2RKSVk0MmFHb0FPRGRwcWR6YUhZWkNNNW90?=
 =?utf-8?B?Wm9PMkwvdERRZXRFaWlGK1NLbkxQK3NKdE1SYityTklWOEQ3YmxBSlRkN05u?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59889441-fa62-4c2d-cc92-08daf5c5580a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2023 00:21:56.2530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GF74pCQfvNlkzo5KrzIe43UdsN8OkaIeFnIzCNOFOuKbWkWGjlcIrDdLYcMimxNB2QC6Pt7x3Gx8zB2ED8TEMyu3e0WvjJF6dAe7+5azhhw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673655721; x=1705191721;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UUkvnKLJPHJngCWAsJqNuCRfoljm0O4sIdhgKrMVR0w=;
 b=QOHAYpbD8uvKMjM6lwLix8vckC1CPba0i87rQ9s2b823ZzoJaYM+VnTY
 1PP881QBkcug2F+3qDpQgU3pkBLJqJQLZl7pq1avupWurFMnGIpFeRpKQ
 p5F+f5GExtfHfzoURS836RxU6nqR/z3dwju38VnOzR9V66H0UtFUvYL6x
 ORwzFI1Ytirs7gcWC0xcTUMj+Ycir7S7h813dORYm1qtxDlnTVdRSoh6X
 +A/Hj5NMHKzmPtSx3mASvkVCTByEkkB0Si1Ur0LQ+9gaonnRiFlpxfziV
 apweAjeFBk94+m71d5xiduyUQ65lmUlZaE7uNj9FDCVNqbRvH7/mXUxEx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QOHAYpbD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/5] ice: enable devlink
 to check FW logging status
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



On 1/13/2023 2:23 PM, Paul M Stillwell Jr wrote:
> Users want the ability to debug FW issues by retrieving the
> FW logs from the E8xx devices. Enable devlink to query the driver
> to see if the NVM image allows FW logging and to see if FW
> logging is currently running. The set command is not supported
> at this time.
> 
> This is the beginning of the v2 for FW logging.

This also includes a bunch of boilerplate code needed by FW logging v2,
and that's not clearly mentioned in the commit message. That is probably
clear to most revewiers though.

In theory you could split that stuff out to a separate patch and only
include the bare minimum necessary to check of NVM supports fw logging
in this patch. I wouldnt' change this unless you have a reason to make
another v7 though.

Thanks,
Jake

> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
>     pick bfdfb2dc6192 ice: add ability to query/set FW log level and resolution
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  81 ++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  73 ++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 117 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  52 ++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  7 files changed, 330 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index f269952d207d..6e4680ad097c 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -33,7 +33,8 @@ ice-y := ice_main.o	\
>  	 ice_lag.o	\
>  	 ice_ethtool.o  \
>  	 ice_repr.o	\
> -	 ice_tc_lib.o
> +	 ice_tc_lib.o	\
> +	 ice_fwlog.o
>  ice-$(CONFIG_PCI_IOV) +=	\
>  	ice_sriov.o		\
>  	ice_virtchnl.o		\
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index e1b95cc3a538..0d560287ec23 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -2038,6 +2038,83 @@ struct ice_aqc_event_lan_overflow {
>  	u8 reserved[8];
>  };
>  
> +enum ice_aqc_fw_logging_mod {
> +	ICE_AQC_FW_LOG_ID_GENERAL = 0,
> +	ICE_AQC_FW_LOG_ID_CTRL,
> +	ICE_AQC_FW_LOG_ID_LINK,
> +	ICE_AQC_FW_LOG_ID_LINK_TOPO,
> +	ICE_AQC_FW_LOG_ID_DNL,
> +	ICE_AQC_FW_LOG_ID_I2C,
> +	ICE_AQC_FW_LOG_ID_SDP,
> +	ICE_AQC_FW_LOG_ID_MDIO,
> +	ICE_AQC_FW_LOG_ID_ADMINQ,
> +	ICE_AQC_FW_LOG_ID_HDMA,
> +	ICE_AQC_FW_LOG_ID_LLDP,
> +	ICE_AQC_FW_LOG_ID_DCBX,
> +	ICE_AQC_FW_LOG_ID_DCB,
> +	ICE_AQC_FW_LOG_ID_XLR,
> +	ICE_AQC_FW_LOG_ID_NVM,
> +	ICE_AQC_FW_LOG_ID_AUTH,
> +	ICE_AQC_FW_LOG_ID_VPD,
> +	ICE_AQC_FW_LOG_ID_IOSF,
> +	ICE_AQC_FW_LOG_ID_PARSER,
> +	ICE_AQC_FW_LOG_ID_SW,
> +	ICE_AQC_FW_LOG_ID_SCHEDULER,
> +	ICE_AQC_FW_LOG_ID_TXQ,
> +	ICE_AQC_FW_LOG_ID_RSVD,
> +	ICE_AQC_FW_LOG_ID_POST,
> +	ICE_AQC_FW_LOG_ID_WATCHDOG,
> +	ICE_AQC_FW_LOG_ID_TASK_DISPATCH,
> +	ICE_AQC_FW_LOG_ID_MNG,
> +	ICE_AQC_FW_LOG_ID_SYNCE,
> +	ICE_AQC_FW_LOG_ID_HEALTH,
> +	ICE_AQC_FW_LOG_ID_TSDRV,
> +	ICE_AQC_FW_LOG_ID_PFREG,
> +	ICE_AQC_FW_LOG_ID_MDLVER,
> +	ICE_AQC_FW_LOG_ID_MAX,
> +};
> +
> +/* Set FW Logging configuration (indirect 0xFF30)
> + * Register for FW Logging (indirect 0xFF31)
> + * Query FW Logging (indirect 0xFF32)
> + */
> +struct ice_aqc_fw_log {
> +	u8 cmd_flags;
> +#define ICE_AQC_FW_LOG_CONF_UART_EN	BIT(0)
> +#define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
> +#define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
> +#define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
> +#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
> +#define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
> +
> +	u8 rsp_flag;
> +	__le16 fw_rt_msb;
> +	union {
> +		struct {
> +			__le32 fw_rt_lsb;
> +		} sync;
> +		struct {
> +			__le16 log_resolution;
> +#define ICE_AQC_FW_LOG_MIN_RESOLUTION		(1)
> +#define ICE_AQC_FW_LOG_MAX_RESOLUTION		(128)
> +
> +			__le16 mdl_cnt;
> +		} cfg;
> +	} ops;
> +	__le32 addr_high;
> +	__le32 addr_low;
> +};
> +
> +/* Response Buffer for:
> + *    Set Firmware Logging Configuration (0xFF30)
> + *    Query FW Logging (0xFF32)
> + */
> +struct ice_aqc_fw_log_cfg_resp {
> +	__le16 module_identifier;
> +	u8 log_level;
> +	u8 rsvd0;
> +};
> +
>  /**
>   * struct ice_aq_desc - Admin Queue (AQ) descriptor
>   * @flags: ICE_AQ_FLAG_* flags
> @@ -2114,6 +2191,7 @@ struct ice_aq_desc {
>  		struct ice_aqc_add_update_free_vsi_resp add_update_free_vsi_res;
>  		struct ice_aqc_download_pkg download_pkg;
>  		struct ice_aqc_driver_shared_params drv_shared_params;
> +		struct ice_aqc_fw_log fw_log;
>  		struct ice_aqc_set_mac_lb set_mac_lb;
>  		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
>  		struct ice_aqc_set_mac_cfg set_mac_cfg;
> @@ -2294,6 +2372,9 @@ enum ice_adminq_opc {
>  
>  	/* Standalone Commands/Events */
>  	ice_aqc_opc_event_lan_overflow			= 0x1001,
> +
> +	/* FW Logging Commands */
> +	ice_aqc_opc_fw_logs_query			= 0xFF32,
>  };
>  
>  #endif /* _ICE_ADMINQ_CMD_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 39ed1c6877f4..ef7e5d7c18f2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -879,6 +879,8 @@ int ice_init_hw(struct ice_hw *hw)
>  	if (status)
>  		goto err_unroll_cqinit;
>  
> +	ice_fwlog_set_supported(hw);
> +
>  	status = ice_clear_pf_cfg(hw);
>  	if (status)
>  		goto err_unroll_cqinit;
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 24023852a1d7..0e76fd19b61a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -369,6 +369,13 @@ static int ice_devlink_info_get(struct devlink *devlink,
>  	return err;
>  }
>  
> +enum ice_devlink_param_id {
> +	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> +	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +};
> +
>  /**
>   * ice_devlink_reload_empr_start - Start EMP reset to activate new firmware
>   * @pf: pointer to the pf instance
> @@ -1383,6 +1390,50 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
>  	return 0;
>  }
>  
> +static int
> +ice_devlink_fwlog_supported_get(struct devlink *devlink, u32 id,
> +				struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	ctx->val.vbool = ice_fwlog_supported(&pf->hw);
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_supported_set(struct devlink *devlink, u32 id,
> +				struct devlink_param_gset_ctx *ctx)
> +{
> +	/* set operation is unsupported */
> +	return -EOPNOTSUPP;
> +}
> +
> +static int
> +ice_devlink_fwlog_enabled_get(struct devlink *devlink, u32 id,
> +			      struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	ctx->val.vbool = pf->hw.fwlog_ena;
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_enabled_set(struct devlink *devlink, u32 id,
> +			      struct devlink_param_gset_ctx *ctx)
> +{
> +	/* set operation is unsupported at this time */
> +	return -EOPNOTSUPP;
> +}
> +
>  static const struct devlink_param ice_devlink_params[] = {
>  	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>  			      ice_devlink_enable_roce_get,
> @@ -1392,7 +1443,18 @@ static const struct devlink_param ice_devlink_params[] = {
>  			      ice_devlink_enable_iw_get,
>  			      ice_devlink_enable_iw_set,
>  			      ice_devlink_enable_iw_validate),
> -
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
> +			     "fwlog_supported", DEVLINK_PARAM_TYPE_BOOL,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_fwlog_supported_get,
> +			     ice_devlink_fwlog_supported_set,
> +			     NULL),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +			     "fwlog_enabled", DEVLINK_PARAM_TYPE_BOOL,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_fwlog_enabled_get,
> +			     ice_devlink_fwlog_enabled_set,
> +			     NULL),
>  };
>  
>  static void ice_devlink_free(void *devlink_ptr)
> @@ -1488,6 +1550,15 @@ int ice_devlink_register_params(struct ice_pf *pf)
>  					   DEVLINK_PARAM_GENERIC_ID_ENABLE_ROCE,
>  					   value);
>  
> +	value.vbool = false;
> +	devlink_param_driverinit_value_set(devlink,
> +					   ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
> +					   value);
> +
> +	devlink_param_driverinit_value_set(devlink,
> +					   ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +					   value);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> new file mode 100644
> index 000000000000..fac970f03dd0
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -0,0 +1,117 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2022, Intel Corporation. */
> +
> +#include "ice_common.h"
> +#include "ice_fwlog.h"
> +
> +/**
> + * ice_fwlog_supported - Cached for whether FW supports FW logging or not
> + * @hw: pointer to the HW structure
> + *
> + * This will always return false if called before ice_init_hw(), so it must be
> + * called after ice_init_hw().
> + */
> +bool ice_fwlog_supported(struct ice_hw *hw)
> +{
> +	return hw->fwlog_supported;
> +}
> +
> +/**
> + * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
> + * @hw: pointer to the HW structure
> + * @cfg: firmware logging configuration to populate
> + */
> +static int
> +ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	struct ice_aqc_fw_log_cfg_resp *fw_modules;
> +	struct ice_aqc_fw_log *cmd;
> +	struct ice_aq_desc desc;
> +	u16 module_id_cnt;
> +	int status;
> +	void *buf;
> +	int i;
> +
> +	memset(cfg, 0, sizeof(*cfg));
> +
> +	buf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_query);
> +	cmd = &desc.params.fw_log;
> +
> +	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
> +
> +	status = ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN, NULL);
> +	if (status) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to get FW log configuration\n");
> +		goto status_out;
> +	}
> +
> +	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
> +	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned less than the expected number of FW log module IDs\n");
> +	} else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
> +			  ICE_AQC_FW_LOG_ID_MAX);
> +		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
> +	}
> +
> +	cfg->log_resolution = le16_to_cpu(cmd->ops.cfg.log_resolution);
> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_AQ_EN)
> +		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
> +		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
> +		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
> +
> +	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
> +
> +	for (i = 0; i < module_id_cnt; i++) {
> +		struct ice_aqc_fw_log_cfg_resp *fw_module = &fw_modules[i];
> +
> +		cfg->module_entries[i].module_id =
> +			le16_to_cpu(fw_module->module_identifier);
> +		cfg->module_entries[i].log_level = fw_module->log_level;
> +	}
> +
> +status_out:
> +	kfree(buf);
> +	return status;
> +}
> +
> +/**
> + * ice_fwlog_set_supported - Set if FW logging is supported by FW
> + * @hw: pointer to the HW struct
> + *
> + * If FW returns success to the ice_aq_fwlog_get call then it supports FW
> + * logging, else it doesn't. Set the fwlog_supported flag accordingly.
> + *
> + * This function is only meant to be called during driver init to determine if
> + * the FW support FW logging.
> + */
> +void ice_fwlog_set_supported(struct ice_hw *hw)
> +{
> +	struct ice_fwlog_cfg *cfg;
> +	int status;
> +
> +	hw->fwlog_supported = false;
> +
> +	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
> +	if (!cfg)
> +		return;
> +
> +	/* don't call ice_fwlog_get() because that would overwrite the cached
> +	 * configuration from the call to ice_fwlog_init(), which is expected to
> +	 * be called prior to this function
> +	 */
> +	status = ice_aq_fwlog_get(hw, cfg);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
> +			  status);
> +	else
> +		hw->fwlog_supported = true;
> +
> +	kfree(cfg);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> new file mode 100644
> index 000000000000..3a2c83502763
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> @@ -0,0 +1,52 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2022, Intel Corporation. */
> +
> +#ifndef _ICE_FWLOG_H_
> +#define _ICE_FWLOG_H_
> +#include "ice_adminq_cmd.h"
> +
> +struct ice_hw;
> +
> +/* Only a single log level should be set and all log levels under the set value
> + * are enabled, e.g. if log level is set to ICE_FW_LOG_LEVEL_VERBOSE, then all
> + * other log levels are included (except ICE_FW_LOG_LEVEL_NONE)
> + */
> +enum ice_fwlog_level {
> +	ICE_FWLOG_LEVEL_NONE = 0,
> +	ICE_FWLOG_LEVEL_ERROR = 1,
> +	ICE_FWLOG_LEVEL_WARNING = 2,
> +	ICE_FWLOG_LEVEL_NORMAL = 3,
> +	ICE_FWLOG_LEVEL_VERBOSE = 4,
> +	ICE_FWLOG_LEVEL_INVALID, /* all values >= this entry are invalid */
> +};
> +
> +struct ice_fwlog_module_entry {
> +	/* module ID for the corresponding firmware logging event */
> +	u16 module_id;
> +	/* verbosity level for the module_id */
> +	u8 log_level;
> +};
> +
> +struct ice_fwlog_cfg {
> +	/* list of modules for configuring log level */
> +	struct ice_fwlog_module_entry module_entries[ICE_AQC_FW_LOG_ID_MAX];
> +	/* options used to configure firmware logging */
> +	u16 options;
> +#define ICE_FWLOG_OPTION_ARQ_ENA		BIT(0)
> +#define ICE_FWLOG_OPTION_UART_ENA		BIT(1)
> +	/* set before calling ice_fwlog_init() so the PF registers for firmware
> +	 * logging on initialization
> +	 */
> +#define ICE_FWLOG_OPTION_REGISTER_ON_INIT	BIT(2)
> +	/* set in the ice_fwlog_get() response if the PF is registered for FW
> +	 * logging events over ARQ
> +	 */
> +#define ICE_FWLOG_OPTION_IS_REGISTERED		BIT(3)
> +
> +	/* minimum number of log events sent per Admin Receive Queue event */
> +	u16 log_resolution;
> +};
> +
> +void ice_fwlog_set_supported(struct ice_hw *hw);
> +bool ice_fwlog_supported(struct ice_hw *hw);
> +#endif /* _ICE_FWLOG_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index 126605b7eb3b..1284fe8d78f2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -17,6 +17,7 @@
>  #include "ice_protocol_type.h"
>  #include "ice_sbq_cmd.h"
>  #include "ice_vlan_mode.h"
> +#include "ice_fwlog.h"
>  
>  static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
>  {
> @@ -859,6 +860,9 @@ struct ice_hw {
>  	u8 fw_patch;		/* firmware patch version */
>  	u32 fw_build;		/* firmware build number */
>  
> +	bool fwlog_supported; /* does hardware support FW logging? */
> +	bool fwlog_ena; /* currently logging? */
> +
>  /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
>   * register. Used for determining the ITR/INTRL granularity during
>   * initialization.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
