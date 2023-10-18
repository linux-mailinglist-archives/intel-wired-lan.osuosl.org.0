Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED057CE63D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 20:21:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C46554194F;
	Wed, 18 Oct 2023 18:21:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C46554194F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697653310;
	bh=V92Wf4ct28GLDVerDVzWrcdQdzDnuNSuAvcO4Vuu+J4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HuTtXd7NaLQ1+iK+vZAZFgFhIDENwWoOmWt2ifWN3ZYgVRPm65ZYq3cbvzusKOmvo
	 ZewCEKDf5EYCnA8zxh0VzvFnE4ZxlljOCWRJmJIenNPj1NnnCpn89WkGSiZ41UayKf
	 I04LeTxqbu0cf5GQdpoxAZj9aqPWQUOHZRfR6ToQ2N9mlFB0GymCjmFJV/wvUwPxhN
	 hXZ3Hlc95pJmqULxhM8evwU2USZszdNK1iUGjvINPhy1uJiG91EuyHJ6RMM1RV4Jsj
	 DHDj+VuMHyz2eaeO7R7G1vrSfaHIaq/oPV4ENZsqncUHnZiT+nflJBtb7BsPF3hgMr
	 MYwjRdBTQR7cQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YNywgjFf9iRe; Wed, 18 Oct 2023 18:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2397140124;
	Wed, 18 Oct 2023 18:21:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2397140124
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 228381BF27A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC8FD6F5C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:21:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC8FD6F5C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DCqHhUAWjYjc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 18:21:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3DA66F5BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:21:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3DA66F5BE
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="7627224"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; 
   d="scan'208";a="7627224"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 11:21:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="750187371"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="750187371"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 11:21:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 11:21:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 11:21:40 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 11:21:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n2UFsqRRa2rPa7lBeN6cogNEJVl85irZDCc2mykAhax3adbZktqP0Fs35kVKryIJfrfXe/MgEhF2S5wLWI4djfIbcWUJUkCxlkfwaUI8/oHG6IDD3praleURsFhVoIZiJLzvWas3gZbN0KcRuTU3a6Zs8SeH9U1+y8dp7bMeKYwx8qx0MpEAA/xpAQMvfkbcGmW4ne3NDiqz1P7nj8Sa3ImUR7bILF7OhS1ZrhjAquaDhoitx5smUvRYkP4x85aId/5rkTjqIZwI6mkt9po31hDCQGvhnE2H4eENmSwEBnxzTkF1eW5nCSILXCxbsYspnoWSfFce/05gvtL+Fptc5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M/EAMPqblzSGPgTC4uz6fxqphJIOx7gZrrruOOS5f2w=;
 b=f0UXmUlPBYjbgK1lwme1M/1rEAm7DNxIphxn74GwiZW756YV0/mDFodrr+xLoS0jodE/15ug9J6jHc9OrfsvaPKIDSSM2n0fFsqOMCTuNOUkDxaq3hVOZyXF7jFPxJGvHEIrw0/rWibBwOtmF3iGnj8ZcjOxVpirn2IAL5DQnVfBJxdubcDywE5/I9sWsnD77BPGA6mE/DUBonm367Crm6/M+8DJCKUmNJXhQmTzKhXC+BzbkxTCu2Gloz5nTJWv+dS1OmyBn0J2nrNTQvV/VMSY4K9Z5KnHb6b3torZkzno7Ki/mRWamGD/izGLp02Oe5FYiXdcHmGeCq0NEkoI4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Wed, 18 Oct
 2023 18:21:34 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6886.034; Wed, 18 Oct 2023
 18:21:34 +0000
Message-ID: <392d1c1a-8210-4aee-9fea-dcd1b5510b17@intel.com>
Date: Wed, 18 Oct 2023 12:21:23 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231018170635.65409-1-ahmed.zaki@intel.com>
 <20231018105705.556a6cc9@kernel.org>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20231018105705.556a6cc9@kernel.org>
X-ClientProxiedBy: FR4P281CA0405.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cf::11) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: 607d3c21-c365-441b-7a5a-08dbd0070f05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HmdqbWWL7qJXiuOqXzgHyS3QgvasMcRtsD0PS7ny2CqdZiNjqdJ/slvdwVjM9UuYvBkgWx3UbJ9nedYcYzWaYz0P21/y+tEQLug/IQ1zj8j+U/6VvpNM8a8G5nQooNxnTodHw3dvksAvWhXAvSZhSEI2liF8ql9l3Oorn1N3ytvBji0yEAW81JuLYyKrNn4Puygko8p6cm7rIB8UoVa/Rnxe9xgvXrrmTQpZ160jK6WF+PYR1tEtUGD8caONgqpQ11653Zy8V6jtvR7uMGNaA6cSPQBQGSUeA/YtiOrSOYKHRASlYxGLH+oCxo+6i6xGD4pYl8Zc7Bg71ti/h26umVw21SoeZet9CoiIJX7dWHwa/e1ArQ1VdQnlYRlTs7VlkK/3bDuBYSKba5UhAYt8LnblxrFbdOWVRw3PSzp/3ofxVrKwgz3Bp/TFJYx2fSoDsuKl75ylP1oTtAhVruSYd2GjM/+VtqGeYd4nWSre/Ost+WdfPXG+W+o0rFKOEs4iYyWR8GKiF38TZ1zSZz07zwE6sFaQhz9/LIoUKOh2yf0NkMiPWNutyLzJBwjLFP3RgBwQzs53pd6o0YvMuAd5UgEyOd8XS5U7+fXTevEqvlFMyLAj1He3d4e9u8afvaTKhk6CbY50c91nJKtBjcI9UA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(136003)(39860400002)(366004)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(26005)(82960400001)(2616005)(31686004)(38100700002)(66946007)(66476007)(66556008)(53546011)(6666004)(6512007)(6506007)(6486002)(478600001)(6916009)(4326008)(316002)(8936002)(31696002)(44832011)(41300700001)(5660300002)(86362001)(8676002)(2906002)(4001150100001)(7416002)(4744005)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlA3Qk95a1NjNGtqMzFVeVZseEpaOHlIeXFQUmRsYjA0bW1uTm9ta1FORjIw?=
 =?utf-8?B?VnZyTzFyWmlBZVBnMllnYVZ6VUN0TmNKWjBTTTdFZFlUWk9rOVpaWUx0c1hL?=
 =?utf-8?B?dm52YTVHSkJ2RldoUTh5YWIrVzNub1NKYWJUNkVOSmZMQ2xwMWdVdjN0RC9x?=
 =?utf-8?B?QVhvMCt6K0F3MWN4V0dnU3BMTkVNYk9sakxSazFwM2Y1OWdvbkNtR3FacWx6?=
 =?utf-8?B?MFFWV1hmRjJQd0JVRm9nN2k2cXEydTB6bFF2RVUzdGJJcHpodFc1SXZDQzcz?=
 =?utf-8?B?Q2tFUDZmMjJWQ3J5Ujc2bWpLVXpDbnRwS0J3eE0zTVlCd3MwcHk3Q3NoLzdr?=
 =?utf-8?B?K2NpWHpQTEYxOEVjbmM2YTZmMEFCckx2N3hjeHJFNTY1Yms5RzVmODlaN3ZZ?=
 =?utf-8?B?dFdaSWdvSzhrSURhME9tS2krZ2d1TXdDN2oyV2F6cGY1U0Z0RTVvMXoyd0N0?=
 =?utf-8?B?SGg0OGttZXhUd2Iyekp6ZGRmMjBHd2hCSmV6Y2tQd3dMcFlReHhWZFpKSzBT?=
 =?utf-8?B?eEcxVGpvRUpiZnhXY3NRaktJengwMllqdkxpa0VIVnp5MHlrb0thS3Z0QUpE?=
 =?utf-8?B?ZTgyaDd3NEtSQVN3aEF3ZzRzZS80ek5kOG8rWHRFcU02M0MvbzVZQzgyNlU4?=
 =?utf-8?B?eG5WQmprTG81N1hQdjBiMXkxaEtWVUFXSk54V2luVVQ4TVI5RjlxbUVUWXBT?=
 =?utf-8?B?cXhPOHpacWpnR2RnSzgvQXNBNGpuczdwQjhoeHVTN1dkL0hTWkZ6NmNWclYx?=
 =?utf-8?B?cFZ2clRwLzdia2x1V0piU2hnbzNVblRjcS9lWldZK0tWWUpQK1poN2dTLzRo?=
 =?utf-8?B?dm9nbTlIVHplV3BjV1lyL2hIN2FGWGt4YW1NVnV2UkdXTmc1RnowVTJyQXJj?=
 =?utf-8?B?SS81SktJOHNoMFZYRHlDNFNSOE5NcC9kdS90bkloQUVBbVEwcXdDRVdkd2pu?=
 =?utf-8?B?UjJpOWNOS2k1SGZMSW85SlJ0OGl5dVY0TldlZmwrNmYyd28yYjlVc2hhc253?=
 =?utf-8?B?T3FLcGM1aHBZWmN1NzYyL0dBY0VaRjltQ3l1RHAwLzY2ZDgzdGdKSDRIbjVw?=
 =?utf-8?B?bnFzdlh5cFhzMUhEemc4QlBZcWlyRUw3RXI5eCtlZG9JaFJqN0VlK2pxZXdn?=
 =?utf-8?B?c2lBNGVYYTJ4YXFFWURsNlFwSTBraFoxbmZreXBZVDViUExuekc0dFlyNHk5?=
 =?utf-8?B?WC9GTzBnK0NsNE5FWWZHdGVvejJZVTJXUnNIWDVuMTRXemtiYU16dzl1WVJS?=
 =?utf-8?B?MW9zbzVPakdnRzBST0xSRHlUWGZ1UUphWWpBZFFxdW5nQWlYaTcwcHdJMDg2?=
 =?utf-8?B?d1FvWDlGWkJZZlFQU0hKeGs0Q0MxMHZYZithLytlMzVrUkxpczhkOWpRRFhT?=
 =?utf-8?B?a3NLT3pZLzYwVWs0NkQrMUI5OCs5ZExpQWVaRjJGNzkwRURtWndONWFJYmFk?=
 =?utf-8?B?VE1qbEYzZEhiT3VxVHN0SVdFam53dEVMazlhaGZGRzdNWFlRUmh1MkVBckM0?=
 =?utf-8?B?cmp6UGRsTFJJRThPQ0FUdFFRdktUVjFEbFVOT0JpRkZ3Q3VNVEpaSEN3WURn?=
 =?utf-8?B?TjI3MmhJYXZ6ZXBudFkzSXVFTEU0a2g4VTB4V2drT0JFT0VYd1NTWGNFSWFu?=
 =?utf-8?B?elB4c002Q3BXVTNLUnhicFphVG56bTFDZzJJSmlKZDlPMkN2OEgxaStXZkNS?=
 =?utf-8?B?OXc3THVFdjAwYU9STU1VMjNYMTg2NURvL0FlTzRaeGpXcnNLZmRmQkNCYVVt?=
 =?utf-8?B?OWk5RC9ieXVSb2NhQVN1eFYwSjlVWXcrYnlVSjF0Uk5mY21jZDVjcnRyVyti?=
 =?utf-8?B?OTZ0ZWpKdHBEZElueTNQcGI0Y2t3alVlU0RBZ2xvakZCMldBRTIxUHFZTjFx?=
 =?utf-8?B?bUZGWXc0bXVsb1hpSnFESldKZXNpRHMxT0IrMDZ5d09oMVp2c09EaVVIZ0pj?=
 =?utf-8?B?K3U4elFMd0hpV0ZyNGpEL2lnYmtZaHpITVZDTU1SNUVqTzV3a2NZaFExemZK?=
 =?utf-8?B?STkwVVFHd0ErQmcvZU9IbGR4SVAyT3gvNFZrNms5M2d4RkM2VEgybE0vSG9N?=
 =?utf-8?B?NUJTc0U2eXd3UTZZL2NXT09HQnlXd2pCTnFySUJXVUoySjd6RVVrZ3cvWkVI?=
 =?utf-8?Q?G/Qwidwhf5vns5YPPV78+UsV6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 607d3c21-c365-441b-7a5a-08dbd0070f05
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2023 18:21:34.1073 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DO6Ps+PrEg2/nI17DHo1P6iOyrdBdI1zsOvs/CHSUN9c/zPjqNvyGdP0pM2o8j+Uof6ztheDC+OPqgezlOd0Ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8404
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697653303; x=1729189303;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Esm9PFinHNTdIeaoJho2ICuLvCoDp6pjzq5IiZE1vxM=;
 b=Q8M83d72tmCUV+3sBzlLLO2mal38vYVjveb7kyWhyNRUJxer2IqvodEF
 uu0vDUwqp355ozqQ2u+9sXJMcRA9knf5vRTz+RZuI/r+e/R96TyzbPGaH
 4aVTkplV6OKK3DiDDpMcFhL27ISOS1aGN3hQVhWs36HbyJN7Dw9d4a4w/
 nORo/LOMiKI3xZZp5GDjtsNtQ++Jae5xOczsmjiaVW41Oh3QcdbS/zyOO
 V4ABoVU/Gzk2ybSgjeHDBxiqOPyGM3vNJalP5BG35uKbXDyuKBA7TqCbm
 Fpes7D3JCqpXnzWeCvGIsQsXr4wCjMkqdBs0UJDz3qvS4stIe7oRHJlPl
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q8M83d72
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/6] Support symmetric RSS
 (Toeplitz) hash
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
 corbet@lwn.net, netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-10-18 11:57, Jakub Kicinski wrote:
> On Wed, 18 Oct 2023 11:06:29 -0600 Ahmed Zaki wrote:
>> v5: move sanity checks from ethtool/ioctl.c to ice's and iavf's rxfnc
>>      drivers entries (patches 5 and 6).
> 
> What about the discussion with Alex?
> I thought you'd move the flag out of RXH_ into a separate field,
> key-preproc, sub-algo, whatever..

I did not mean the discussions are over, these are just the latest 
agreed-upon changes. Please mark it accordingly until we reach an 
agreement on the user interface.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
