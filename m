Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7803864C5AA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 10:16:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0DD941740;
	Wed, 14 Dec 2022 09:16:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0DD941740
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671009374;
	bh=2dUeGYLAN3tRZLSF+bLqUTf9iS4BBS5QawgLYti5Sxo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Mn29fa1JtfBufm+byM3DMhhjJ3TUJ0ZjB8kpm2vy/VtjHTvE9MVFXqqyYgKeQcX+S
	 +cPIVsHOtX7YLQkQcgf2mjwwoGQSxRizwKlQ7hWksXh7z4EzbD+i8INJmpRDdAdwyb
	 zQJ6H/D7QCxrWeuOAC3d1uAee74gvJFrdG99sJB6/Pw9QNDKQGqslpZA8ALM6A9esT
	 /R/mgYPbtWnc1Ey8lT01cWbBVeI2G0gkGpLocKNYlXQDhLufmX/8sK4BNHHBRZc3nl
	 i8IHLW0TW9wYrFeU/n/8+1omE5Ub62AweC9S62cXmfVvw484damhUIT3jncjZj7ofH
	 7aXytIGvNEAJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5rLyg7tDf6yT; Wed, 14 Dec 2022 09:16:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7979241712;
	Wed, 14 Dec 2022 09:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7979241712
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBA8E1BF2EF
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 09:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B1C7541712
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 09:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1C7541712
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YPMI4RVTFqgd for <intel-wired-lan@osuosl.org>;
 Wed, 14 Dec 2022 09:16:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 788BB416CD
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 788BB416CD
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 09:16:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="382654962"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="382654962"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:16:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="894217628"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="894217628"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 14 Dec 2022 01:16:06 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 01:16:05 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 01:16:05 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 14 Dec 2022 01:16:05 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 14 Dec 2022 01:16:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5ZT4LoxG+A8KNAgIt32IjZnVxwhQAJRBe394T8KWABOa2c+SCjIKdZdMiM0KP7Hfo3dVEXgkTTvzndXNT1SBDoUGFZfwEO4/EtGrI54/KoXTOuYNAokH8Lfoi233GwPSxfLwuW95rJnLbq/Uu9xPk5ztsGPIvFlkrsoO1lqOXVkseI1NJ9yTYqz3a95cjGJvf7HquOyY+o5bBFb3XwFXU+h5agdMABbDU2APSqG7F7zC4NuO9uc1IHPtjq2gjnoxwDUsV/Pcb4q4fmA3o1rkF2b0eQ5ddA7Sj6/M5968k41TtSkvaPjSI3VO/MH3/ReZl3K8RnTQPuX6tB71NSyiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lp9Ylw3zLg9dB7csL1f+yfLXrvD5zP3WO2IrOfabenE=;
 b=Nsmi1uTzA+rQ65pmmfmY3AzIjzyBVVwbFy5HoOiTkoLBNYoXrclt0JiUj9uvZu1NQ6dnMkxLOp9dhoKHlYUNWz7GfntAjAaUm+IJY40Fn5ix/zQTLniWRVJ9sGCRQ6h/PA2yroVpLH+JglbVAIT0eSn9G+OL51zik5obZPTMPgeVXE67eNh9hGd8GWWERwWnCZPw5U/3JDdli80aB1mmWagMTHSLqVPFxyc+VKJc/HNxDJZSAlw3XSQCbF6RbrE5SJbKQsi2KVD0TYlLtyxRC2J0KD/ayKGsKZ8ubw9WNIh5Vcmc9hYlXP4ULkiXLDfGrgpkG8jSHT1VeYbzQchNwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by CH0PR11MB5281.namprd11.prod.outlook.com (2603:10b6:610:bc::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Wed, 14 Dec
 2022 09:16:03 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::90f:cf74:29e0:2d34]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::90f:cf74:29e0:2d34%6]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 09:16:02 +0000
Message-ID: <75444c43-11ae-6994-8205-07f8f0d21068@intel.com>
Date: Wed, 14 Dec 2022 11:15:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>, <vinicius.gomes@intel.com>
References: <20221214081038.1720-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20221214081038.1720-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: FR2P281CA0045.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::17) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2235:EE_|CH0PR11MB5281:EE_
X-MS-Office365-Filtering-Correlation-Id: 50a8e05e-efff-43ed-a226-08daddb3d0af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X3yn2cTcOLHcK3/ESrncZ6vd5YisJ5E7TI3g7HW+M0MI3eqlgWfm326FBwM9bjYZU3Qnj49S1ERRgbMhqrm6XEn9+ePXKhTHrTheuB7QgWbh8ELNjeXzhW1DKdQQrLT6fKi+bWnNJr87IOu8b7wTrOFiKwXfIJbuAkFqQV7rh1DxFn8H8zHK7yavlsCQDxZEda0eJ3iJ1tNeZoBGJ7Qxx8a0S9bkCr9354ViB7ICFi98zFQo0QbPMYUmtNkmQRYuNPnGQHfFtTofS5Fjm/4unIqXt8g81M5gklBlt63TcwETV38tU4n1nzJaW311RcAcFHq5feAB6xFacHdQx9qCv5IAlnYuXzQ+qsXYc9KzI76CZ+2cbHe66UA/VRX+pxCWWOju6Pqf4A2bjlE/9YO+Xdg9nDTaoNtwahPrH0UumYBbjBDP5zKBeqGeodQt76GApTnag7Ozej8vI2y0IRzC9OyimJnMBPms2lCgkwSgrfkMvjKN77X+ihWAab518bKVaW3fMpftAEnKPtc6Alw5+Xw1QMwYTOOqVrpgeXiQfCx4A7tb7zvJOGiLY67PaQelj8G9aujp2rYXPwR4DTNt4AHRiNMUNcBwrblQs50YOKZI/qt+KVWk+TjPTKKQK6cTN7VOGWsNH5KGB1ZAVX/en48fkGEo7GXVXcP/07ozHEayzTOtWYLLVyqV76UEpVrKVaQCoE5qzl5IhmbEicGNVeISy3j5sU5yFxahrhGSB/I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(376002)(39860400002)(346002)(396003)(451199015)(6636002)(8936002)(2906002)(41300700001)(4326008)(8676002)(66946007)(66556008)(66476007)(2616005)(5660300002)(316002)(83380400001)(36756003)(31686004)(86362001)(31696002)(478600001)(6666004)(107886003)(186003)(6512007)(26005)(82960400001)(38100700002)(6486002)(6506007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUhjeUtTVkkzbENFNVV1VURNQ0IzQ09BZ04rUXR5QnRIek5sd21aMk9Baml4?=
 =?utf-8?B?SER4WFdlODhOaGJjTEEvVENack9BK1U4UEI1a2FiMFpGMFVGcUE2dFhZcHpD?=
 =?utf-8?B?eHVuZkpUeXI4bWVQZnU5SDJiekkwWWZNeU5scmE1a0FaTFBuTW5jSzloSmFC?=
 =?utf-8?B?VnpNM0xxUkp1cjdIQXQ3cWZranhpU2V4WWplL0kvU1BaWkZPQ0VXelhMa3JI?=
 =?utf-8?B?d28zRjJnK1VDTVZQSVpkSTAvdXAvS3hRSzdlS1owMmx2aWFmUTRpVjRrNFpv?=
 =?utf-8?B?ZDkyQ29rRGlUR3E0OU5ZTC9hTE04QktZK25xK1pJT0pqcUw0SVRraUJmQmpy?=
 =?utf-8?B?bmMrUmUvL2NPZE05eEgzNitrckNQVW5HUksxL2oveG9aeHFJYjFxNmZObVhi?=
 =?utf-8?B?dVN4US8waWQ5QjJoQ2k2OVN5ZkIzakJTQ2E2NmIrUERCcXdiaXZ6TllUcW5Q?=
 =?utf-8?B?clJlVFF1YUs0eUN2K0ZHY1YrVHB6K29JSzFGVkRLVVdXamEzZ1VJMHVFamhE?=
 =?utf-8?B?M1c3WkUxNlI1WitiQnRnUmRPeno0UEt0U0I3S3F2clFwQjdNMUx0SEZYTWYy?=
 =?utf-8?B?NTV1MytyenJLcWdQWVIvK0Q5ME8weW9ncDVoQ1NXcmdCMkFQMXRXbGs2NGdw?=
 =?utf-8?B?UzM3dGZDODBOUHpiM1lTOG5LSGRhSTd2UXYrNllWMlVpTGM4NDlKN2t3RUw0?=
 =?utf-8?B?UDNXNEgwaW0xNW8yWmJOK2p4R3VMeWxpMmdCQVpHMXNFeXRNMXBLQTAyMUIz?=
 =?utf-8?B?eXlDdVR2Nkxmc0lDSUZ2bEdoZXlSeU1IOStreDFzbEh2WGNLR3grMk1vL2NK?=
 =?utf-8?B?dVMzbXBUSWsxRndqZHRLL3FEZm9CV3BaOE1Ray9mN0E4bFRpbTJqczNxR3ow?=
 =?utf-8?B?YXFZQmlGRTFWb0Q3d1c5d1JZdy8yT1lMb044VTJXZkZ1U2l0RkhlRitkTDBk?=
 =?utf-8?B?b3Bsalh3T2trYys2NjNRRkVJRGJ2dWF6RGhXR2MwdW1iMXJtRnJUV3NHMDZx?=
 =?utf-8?B?a0QrS0xXVmtZTnJ4cWZjeHpDT3pxcElnSjZNaU1Ka1NpRXZ2dkVWcTNLSmxW?=
 =?utf-8?B?UkJxMG9adXBzMWkvQWlnSnpmVjlWRG1oMUt2dzBDZmRJSXZ2UG9IaVVKZk01?=
 =?utf-8?B?cGt0M0lUN2x3R05pdEp3WUhST3puSTltbGJrWXY2emZCQkxtUmZ4NGQrN25O?=
 =?utf-8?B?ZDlFV0NOUENoM1MxYlJOc3BEY3h5V0k1VXErakg1TVVsVUJZUkhBRWVaTWt0?=
 =?utf-8?B?VFZSQU5SZ2RVRi9iVFJVZ1ZpNnlMcWw5eXhoNHNXamJ1V1FBQUZuUGZFMFVz?=
 =?utf-8?B?ZHpRVUg4ZWlLVEprdk5xVThVMXZjSGYyMys3bXZIZXJOOWFHTFpuN3BWeUxF?=
 =?utf-8?B?VUVCTWFnOFFTL3ZsdCthbTJpWmx3RDJ0WEFIczlFbGxUTjFaZDRhbXVGbk44?=
 =?utf-8?B?QktlMHNoK1ZXNzBHUm9tL3djS1R3azJaUmVneDM1UDZoU1JaWGlBR0l3SGQ5?=
 =?utf-8?B?a2cyU1hZS1lmMjZ4enRYbFFCWWZSMENNT29nZ2ZiNVJJWEFLM0RDZ29DNTBk?=
 =?utf-8?B?ZndnWFhHYXA3V0RuVGZpYWwzc0VwRjVlZ0J4VXUvR08ranlKTzRaMU5pd0Jr?=
 =?utf-8?B?OUc4L3Vua1FhQWNDeUczUTJGUE1ZQlVoUVFBWnRnUzhZM1VOZ0NJQkNTWVFJ?=
 =?utf-8?B?dkhMMEFpWFJqMFJ3dUQ1b0hjVXgxS010MjJ4SjM2WmQrU2hvVmRLZFNYSVdY?=
 =?utf-8?B?TVlmSzNCcDFISHM0dk90eC8xY1hlV1Ztbk9Hb2pXcFZ5TDN3VFdYY1k4aDdz?=
 =?utf-8?B?TmcwTWhWRXhSN3dnWHplTSs2aVFOV0NRVm1RUDBnWWJsNHY2VHJhWUFCUTBp?=
 =?utf-8?B?YXVucjFHYlkyWTZuMEQ1WktsYVhmT1hFNG9NYVh3QlhnNmNNek5URUNNZzN3?=
 =?utf-8?B?Z1NEOUtlbzVDRUlTZk1jWVpNdTM4NDZLR2pQbXB1d3owN0ZZRkYvdHdQdTVU?=
 =?utf-8?B?V3M2L2dZM3NBdWpNd2NZVG43Z0RDMm9tNjkwMVE4TWozVGxIRHlYcGZBWmhu?=
 =?utf-8?B?ZWtHaGxSYmZSbjljaHg0YS9KTThSaGJoYlRhU2lDZWRpQVZzVm0vUWRZTWxR?=
 =?utf-8?B?RUMrZ1czNjFoYUw1ZTRYclhjcHptSzkzMnBTZUJ4RDNYM29WSUViYjg1R0pq?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50a8e05e-efff-43ed-a226-08daddb3d0af
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2022 09:16:02.1087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dJU35q50E8plFfEuCzfum/VyRM1xyd68O5m3km1dIhiofKb6zoQ+0W/Wg+6r/2HUb/73LoJFh+CUEIgkZEnAbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5281
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671009366; x=1702545366;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JLS3qmMkh0oMlzBTjedGK6NoM/+71e55JxmaYtxEX/Y=;
 b=VlIIlbXut6KYeDtqwNwzMNiebsxhTZrO7ZdHncPHtC9F6fQCmXTsG8re
 jgBJHYLNttMCO6zpz4mktqxpF0HgJ8UEvn8mfBZ/Kula/K6hhSZtc+GGc
 LV5mOf9spMP6SbuzeCtHgtV0RZtOYYBbFgKdNgulCyUf8YLK+ASsIrjAa
 pL7oQgo9pSog88Nr/bX46vobzYIz3djcBSjYBddq8NFHugvetb+mTxpeF
 YJMnJz5MwtAjI9aD5tyW+6WWN6FOZDUDEy7cTke5hCaXLLCDpQfgZZLbu
 GXBIIdS+xVzidYbYuz6Fas8aRaTp+I+r/YsIdnK3zlF2S2g4LmiozSBu0
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VlIIlbXu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] igc: Fix PPS delta between two
 synchronized end-points
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
Cc: christopher.s.hall@intel.com, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/14/2022 10:10, Muhammad Husaini Zulkifli wrote:
> From: Christopher S Hall <christopher.s.hall@intel.com>
> 
> This patch fix the pulse per second output delta between
> two synchronized end-points.
> 
> Based on Intel Discrete I225 Software User Manual Section
> 4.2.15 TimeSync Auxiliary Control Register, ST0[Bit 4] and
> ST1[Bit 7] must be set to ensure that clock output will be
> toggles based on frequency value defined. This is to ensure
> that output of the PPS is aligned with the clock.
> 
> How to test:
> 
> 1) Running time synchronization on both end points.
> Ex: ptp4l --step_threshold=1 -m -f gPTP.cfg -i <interface name>
> 
> 2) Configure PPS output using below command for both end-points
> Ex: SDP0 on I225 REV4 SKU variant
> 
> ./testptp -d /dev/ptp0 -L 0,2
> ./testptp -d /dev/ptp0 -p 1000000000
> 
> 3) Measure the output using analyzer for both end-points
> 
> Fixes: 87938851b6ef ("igc: enable auxiliary PHC functions for the i225")
> Signed-off-by: Christopher S Hall <christopher.s.hall@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  2 ++
>   drivers/net/ethernet/intel/igc/igc_ptp.c     | 10 ++++++----
>   2 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index a7b22639cfcd..e9747ec5ac0b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -475,7 +475,9 @@
>   #define IGC_TSAUXC_EN_TT0	BIT(0)  /* Enable target time 0. */
>   #define IGC_TSAUXC_EN_TT1	BIT(1)  /* Enable target time 1. */
>   #define IGC_TSAUXC_EN_CLK0	BIT(2)  /* Enable Configurable Frequency Clock 0. */
> +#define IGC_TSAUXC_ST0		BIT(4)  /* Start Clock 0 Toggle on Target Time 0. */
>   #define IGC_TSAUXC_EN_CLK1	BIT(5)  /* Enable Configurable Frequency Clock 1. */
> +#define IGC_TSAUXC_ST1		BIT(7)  /* Start Clock 1 Toggle on Target Time 1. */
>   #define IGC_TSAUXC_EN_TS0	BIT(8)  /* Enable hardware timestamp 0. */
>   #define IGC_TSAUXC_AUTT0	BIT(9)  /* Auxiliary Timestamp Taken. */
>   #define IGC_TSAUXC_EN_TS1	BIT(10) /* Enable hardware timestamp 0. */
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 8dbb9f903ca7..c34734d432e0 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -322,7 +322,7 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
>   		ts = ns_to_timespec64(ns);
>   		if (rq->perout.index == 1) {
>   			if (use_freq) {
> -				tsauxc_mask = IGC_TSAUXC_EN_CLK1;
> +				tsauxc_mask = IGC_TSAUXC_EN_CLK1 | IGC_TSAUXC_ST1;
>   				tsim_mask = 0;
>   			} else {
>   				tsauxc_mask = IGC_TSAUXC_EN_TT1;
> @@ -333,7 +333,7 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
>   			freqout = IGC_FREQOUT1;
>   		} else {
>   			if (use_freq) {
> -				tsauxc_mask = IGC_TSAUXC_EN_CLK0;
> +				tsauxc_mask = IGC_TSAUXC_EN_CLK0 | IGC_TSAUXC_ST0;
>   				tsim_mask = 0;
>   			} else {
>   				tsauxc_mask = IGC_TSAUXC_EN_TT0;
> @@ -347,10 +347,12 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
>   		tsauxc = rd32(IGC_TSAUXC);
>   		tsim = rd32(IGC_TSIM);
>   		if (rq->perout.index == 1) {
> -			tsauxc &= ~(IGC_TSAUXC_EN_TT1 | IGC_TSAUXC_EN_CLK1);
> +			tsauxc &= ~(IGC_TSAUXC_EN_TT1 | IGC_TSAUXC_EN_CLK1 |
> +				    IGC_TSAUXC_ST1);
>   			tsim &= ~IGC_TSICR_TT1;
>   		} else {
> -			tsauxc &= ~(IGC_TSAUXC_EN_TT0 | IGC_TSAUXC_EN_CLK0);
> +			tsauxc &= ~(IGC_TSAUXC_EN_TT0 | IGC_TSAUXC_EN_CLK0 |
> +				    IGC_TSAUXC_ST0);
>   			tsim &= ~IGC_TSICR_TT0;
>   		}
>   		if (on) {
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
