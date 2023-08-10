Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B7C777668
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 13:03:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCD4583F02;
	Thu, 10 Aug 2023 11:03:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCD4583F02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691665400;
	bh=rvdJfuzv4pmtyuFLlmUvJGFUJWnMibgfElSuRTV14zE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hko3fjWtP7pyQrMqXOtoOfwJdfutEMNAp3C58de9HwCcR1m7ll29i6vmS+QI6XjUJ
	 Mz4h0hCtvJGWa70nBbS3mp2kyUEWdW6FkFYx3Zz4x6z7MTuKBz7vIT6Qfx09Se3Isq
	 pja/RuRuiHPah4hHDfCkRdpyPd8BT+vVz7DI1HI1IiO/Yt4Hn+U1JO9W/psnFnoJ+U
	 fgs63T5ABpYaSnRmZ1l0ACFS8BKc86sbiLDRYRbVyeEM/P8kbFreYtdq95xkA84TtO
	 2Gxe91Z/x8Wyjav+nGKN/iX8lIJGN9B+dToQ3pHS9SjjJ4u3tPDfDZ6uguAZ3Jueoq
	 ZyC6fOTf7f2TA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DHeIiL6Y8MTn; Thu, 10 Aug 2023 11:03:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6D9F83F00;
	Thu, 10 Aug 2023 11:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6D9F83F00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E40411BF34D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 11:03:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C836740396
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 11:03:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C836740396
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7KexnwXDbczX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 11:03:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DFEB7400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 11:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFEB7400D1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="374141431"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="374141431"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 04:02:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="906019786"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="906019786"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 10 Aug 2023 04:02:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 04:02:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 04:02:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 04:02:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 04:02:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a61Vh6laah+TAdKC3Srg97QVmuYBvszv7YGF04turR+c2A/JXWc7Db5OMWhncQHXuZ25A54uLVCK7+nvVnleW0uAidXedDUUVxf8ojhhrT0zJ+6top9rQ511dDZpYO62PSbBLVxOB2w1H+F3K6pmPp2r96q5atgX9rkYvq03XdCNJZ4aShEqpswrLTFFS/Ywqh1zlOIKbxr7I5O7ZafSYUkVMzi3LMC9gf6SOACcbmBtC1GhrkU19QQ0mTpXSUomMTEgjpAzDHOF2QN/xTWqZkROC9aIm4qk61n5vfMLmQaDqLv0OxZvagxzWIn80q2A4gRMF/S2pAjeavI9vX9Rjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bTW6ri5wweJs10j+JHj3nxuxd+xV/aoWjw3fNte3s1I=;
 b=FSmjbHfI+BjdIVve8ET2aComB4DyL/t1C38Rr9WtBRA3o+9hW4tvcD2MoSuUakY37/xUIA3OYKSiMv/OYT9BHcKBhGZMreUHwHP8//NzZpDKqhjZeN8JmUzq62wc/zE/qQoNJ297yd4yg3Svd7zydFo5QZ4DM8Au6RDk51SYz1blT73d1nPJcNohy6besFInvS0lvlo0wdZXFVwI0QvIl+ppaUitR6hBCNZI7Ys1wlugEf7RNoHDEcBdZqbsyYdiw8DDWyz3PBWmk3tUs+0u5qzp/h0dNkrOtc0IwiUvsU+C9M5sgO/OWh7Duyy+Q5tGlcN7qE8ylmJPKflYAH/MIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by MN0PR11MB6157.namprd11.prod.outlook.com (2603:10b6:208:3cb::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Thu, 10 Aug
 2023 11:02:46 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::aa6e:f274:83d0:a0d2]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::aa6e:f274:83d0:a0d2%3]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 11:02:45 +0000
Message-ID: <9969daf0-a16a-3785-28f8-80bd7dd0f81f@intel.com>
Date: Thu, 10 Aug 2023 13:02:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20230810002313.421684-1-jesse.brandeburg@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230810002313.421684-1-jesse.brandeburg@intel.com>
X-ClientProxiedBy: FR3P281CA0161.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::20) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|MN0PR11MB6157:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f6d5bae-205b-495f-5320-08db99915396
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G+UghBIFn35940Tog3+XOosLD2uus4xUtICmjb1DAsp/QHeEXFmjd+tKlPVYq1ysYMfh3CdHVQxHVJkjOJzrh8z87tuBm4/7iElSBLEEEagaVATLKCWTpc2C3LDzTBW5X3MHNmKp1Vu4shEr8LlBZz3Gok1l6EN7uPJDZWoySrLY7iRH4iHIKjMy7j4OTN8f2Hbc+0Ox81X4W1D2sOkFVXBDiBzKscT7HG3LfS6xmgPHLhAfJx9ebUny1TOHEAqpQPfprv2jJ9U+K/k/l89FkTCtihzB7zt4mMA6HzRBqW29+CzvEgO/oKtNDy+qNu+jVxziWw5hokqLdWIf6hh3EHvegiSFWtnYbEtO95Be0bi4GxC9DVvNvxzOwrAe4Oc3vCtaREjlWCJlaCxWjfqIvrSbD7y6OzZsNl4jxA0u20AT6ZdrccbnHvajKXwr6eWeFy0yBO50v3MCDvelaFn9czCfsktTBNr6B4V8/Cb+tGoajs5UHSZsQ6ifLF8dvsIy/5/Y0dmtEykHnx9ih1TI+ypdJyYphwLNh3D543rlzb7jScaTo+PHxoq15qjYCNKhplTlLbuOObmsmviZwYEJVaLrK34kYSgly7gPxPJs5RbmePuEN8Hrcxof1NDgOaaY6ditLCzC8wEX6K0iyVKKJQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(136003)(39860400002)(186006)(451199021)(1800799006)(86362001)(5660300002)(31686004)(38100700002)(110136005)(4326008)(66476007)(66556008)(66946007)(8676002)(31696002)(83380400001)(41300700001)(8936002)(478600001)(316002)(2906002)(82960400001)(6666004)(2616005)(6486002)(6512007)(36756003)(26005)(6506007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1NoY2U1S0ZLK1JVdllncW4vazJDcXFEbFhZRjJzd1VWR2pNWEYrc2x3d0xj?=
 =?utf-8?B?dXVESDNMVHpkTzlOZWRKbFBvYVd6NFNjU1JiYldUdnFxVWJIZEd0OGhoRzdO?=
 =?utf-8?B?WnlVUi83TlY4RUpoYTFCRUxJeUk3cm55UEEzMVRBUW5iVWloRDhGL2Qzd3lM?=
 =?utf-8?B?ak9SMTF5L0k4cGxIcG41WVNHZ21rQlM5aEoyQi83OTlHQXVrelRIVmpZSVpp?=
 =?utf-8?B?UnFQS2hPTU5GQ3pjcjNsZCtPTm9Pa3pxbDBUNXdObnJpalhIY2xJcEl6dnRo?=
 =?utf-8?B?TVZCcWxOVkxOT3JKTWNqZWFBK0tWR1o4eTZISy9xblhRRkF6SGg4aXFWdU4w?=
 =?utf-8?B?TTgyTjBQVkhTVUxmNFBpR3YwclRrT3NxOWxMSnUvbCtGK0Q4K05jMUpZSUU0?=
 =?utf-8?B?allSM0pBaHgzQTVKamtONHhRc2NycEExQ1BWM2l4endrUVJPSG9zclNjUGRM?=
 =?utf-8?B?dlpUc2s2aStrK0ZnVW5idmdQRiszWXoramtzVlVFNzZTWGFLUER6WnM0MGsz?=
 =?utf-8?B?bWZqSUF1TGlrQnR2eFF6WUJTZDIyMjJaTW5KQ3Bkb0J6b2pScUxseGNudTBV?=
 =?utf-8?B?bitqVmJINWtNU2VQdjYzRnNJTW1vemdvb3p4dFc2YU9iMDUzcVBMbmdIc0Zx?=
 =?utf-8?B?NWdUUDFmZWxEaHJUcDBYeUl2dmJNNFR2YXl5TlRCdnBSakxmRlpZOURlSDIw?=
 =?utf-8?B?WE45TlNTV0tVck5oanJTZnR6UFhPWEVZd1l2cjVVRDlzTC9pS2Q0TzJVOVFa?=
 =?utf-8?B?VzAyN0RmN05YMjZuNzd6NW03Zmw1ZU9PTGhUWlU0WUtCeS9lTkVmR3gyOEEy?=
 =?utf-8?B?Tko1bFZvSk1PeTVhWXpiSnpSd3FlZ2NwUlI4L0pKUktxQnNuN0JzVi93aThI?=
 =?utf-8?B?TjFDcWxicGxsZVU5bm9aTkRYdUIyUEo1bHBBUGdBVU1uS1c5VXU4dStYS01T?=
 =?utf-8?B?eHlwWk1BWjhSUEVMKzhPcldoV2tubTByTmNMaGhjc0pISTVSZ3lxd1RBbEZ5?=
 =?utf-8?B?MWV0TmlhYXkzR3VPbnhiYWxTVnpFN0l3MjBTY2s3SjViVjdmdjJjalloQVMz?=
 =?utf-8?B?OCtoemVtMWRpbk1CWkZIQ1dsN1lmcTFweUoxRG1KaEx2MmwrODVlVE1pdk9V?=
 =?utf-8?B?aHdHWlVwdDRQblMrWnNnR3ZXTjkzUW1sdis4TWpPRlQ5VWFQeDdzcVV3d0pI?=
 =?utf-8?B?TDJ4M2VpZVpQZEFkTWhua0NUVE94TWNPSmVWcEJkdkQ5aHRobFd4TjZYTUtN?=
 =?utf-8?B?dnowSmVQYkRmRlBtZ2YxT01oNzB3TlRCNEF1YXFXbTkvemNNb2ZQTTY5OWdQ?=
 =?utf-8?B?T2JBaVA0Y01wYnFwanFtZDRDYTZ4cUhuK2xFQXNqbzlJRG14dGxaZXJLY2FH?=
 =?utf-8?B?b0JCUmxONGp6S0dTNmo2YTV3VzRTVHNEaTVPaXQ0OUdXOGk0d2ExaTg2UW5U?=
 =?utf-8?B?WUtRV0pQclBOVmZUS05aTFRxTndnb0V4K0k4UHZKMUkrL2tKZXhwL3NFQmNn?=
 =?utf-8?B?bUs0ZEJ6NnhDODN6d2pDeFhWY0hTQU04ZHcwMXNhMWR6dHNIc1lDZkZocUc1?=
 =?utf-8?B?WmpHZThGSWVKLzUyQlNkUUF6Y1pIYzJsNmVNMk5uT3p6ZUpPcXNhVlFZcVpu?=
 =?utf-8?B?bW9pelVMYlh5OURiaVJyT1Joa3J1ZXVHcWN3Q1M1TVJTVjhjbExNUlFiWHZG?=
 =?utf-8?B?OVZrdWpvWVg4c1lwUjR5bzRsVmNrTjlmN1pIUnlSU2R6czI0UXpvcExlWnFx?=
 =?utf-8?B?TFBId2JudGNqK2JXZGE4ZnQzeUtPM0lnSFlzbGNITEpYb08rYkpISGlveHFS?=
 =?utf-8?B?RnBBV0Y5SGVUL0Y2aXhoQXFsMXZuamFnQkNpSDFxWEw3RGI0Wk82ZHIrU3Fm?=
 =?utf-8?B?UDVXbFdsVnJTNlZjOUlaMjBURjg4dXhXbGNEaVNnUEdNcFkrWlBsRkVqQW1Z?=
 =?utf-8?B?YmxzdXFuV0ViVUlUYmFpTUF0a1YrSmxNcXBDQ1dNYkdQRUpZTndzbStZT2l6?=
 =?utf-8?B?Tm9ZWCtlTkYyaG5vUnoxSWdXcEROLytrd2J3VHNaZnUyUzlhSTFQTFptQmlr?=
 =?utf-8?B?bFdRdnVDa3VmZFVEdy85cVdzNTF2NVNrTFk2UU03S21XNDZVZjRHaVVta3Ux?=
 =?utf-8?B?YnRneUVuMk9mTDIwUW9sMFhGZ01WMUJuYnhmVmFaeUtTQ3pDMjZxdUZWNTdG?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f6d5bae-205b-495f-5320-08db99915396
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 11:02:45.7503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mSgVnmSYh/02A8ZMY5HtabiT9+8CwQ4mq6aOEJLBspWoiCPAiz9npb3C3l4RwgSxOn8E94RXbxdy1wYubPrySuItwcrL1UvUZ9mq+m0+IpQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6157
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691665393; x=1723201393;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MIAKxiFKg9yWpbHVFIQ57DqrMhv4lWJn2C466BPBIC0=;
 b=ksd9V3gt/hP+e4XReTaxmCYsWSqO+MpQckCOUvDIUaUHsXJ/SV+6/Gu2
 hmlYsypDXpZ3IrodVTjY6RtQ3RnfUVAK60JcjjBo+QpXXpxsItZ9lOh23
 azxOHGGQv+StZ+yfvmcKtetu5ukhMn/sBvsCTYyPhGXPdhbjII2boSL+f
 siTKUyKREunlxhUKTxdwJq2JAeRK+JfkyPwJcS8Cg83y1jvCAvwFWx1Vn
 /mCNNV2rOxQnOZYx9z+gIChbeVvFSVEyYmtGW20jPn8s4iA/3hu72y0XU
 L5VOGGHUlbt7eh0/ToQYdvyolTZO8qNifoiQbOflL6SgnvYGaB0X5Pcre
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ksd9V3gt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix receive buffer
 size miscalculation
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/10/23 02:23, Jesse Brandeburg wrote:
> The driver is misconfiguring the hardware for some values of MTU such that
> it could use multiple descriptors to receive a packet when it could have
> simply used one.
> 
> Change the driver to use a round-up instead of the result of a shift, as
> the shift can truncate the lower bits of the size, and result in the
> problem noted above. It also aligns this driver with similar code in i40e.
> 
> The insidiousness of this problem is that everything works with the wrong
> size, it's just not working as well as it could, as some MTU sizes end up
> using two or more descriptors, and there is no way to tell that is
> happening without looking at ice_trace or a bus analyzer.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Nice catch!

> ---
>   drivers/net/ethernet/intel/ice/ice_base.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index b678bdf96f3a..074bf9403cd1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -435,7 +435,8 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
>   	/* Receive Packet Data Buffer Size.
>   	 * The Packet Data Buffer Size is defined in 128 byte units.
>   	 */
> -	rlan_ctx.dbuf = ring->rx_buf_len >> ICE_RLAN_CTX_DBUF_S;
> +	rlan_ctx.dbuf = DIV_ROUND_UP(ring->rx_buf_len,
> +				     BIT_ULL(ICE_RLAN_CTX_DBUF_S));

looks like %ICE_RLAN_CTX_DBUF_S is only used once in whole codebase, here.

Perhaps you could rename it
(even considering that it is targeted for -net),
and have it as ICE_RLAN_CTX_DBUF_DIV or similar?

Then it will be BIT(7) or just 128. Also, I would keep it as 32bit value.

>   
>   	/* use 32 byte descriptors */
>   	rlan_ctx.dsize = 1;

(BTW: you have missed my review on e1000 ML)
anyway, it's good
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
