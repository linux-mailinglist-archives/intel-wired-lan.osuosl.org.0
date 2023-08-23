Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0FF7862AB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 23:39:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCD978204C;
	Wed, 23 Aug 2023 21:39:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCD978204C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692826789;
	bh=wyIo+/ljUavUQoUvZTQcd6MQziEcwVO19eFy453TJPQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hpSvGP9lkTWIBt2t6R+lVNZYsVK8Q8QFP6ckun3sOgq2KBDfXyk/1SEACd80bJD8a
	 MddYqW5N98rQb3p3HIyhfhKfG6hiLvBzt+ct/hMiIk3NuOUdBEbJmT6hjrNEbZydRT
	 J5g2mEVpw1kG38BMSXvbGv4i7ZfjQwraZVkul/hrAin3XFu/sPle8wYE+sAh0F5PEv
	 OroV1+IOL1K5WUmb0XAoVm1QK3Yhbx4hEgLzpRhQD2RiC6QZMNR4BhiuKaS0Lxwa4C
	 1YJ5FdHrdrwFXI2wjh7NbDAe2uwl/jiit9AI3jGToMnyW1G+dU2LO9JjoNa0q3n1BR
	 5sMQFs5MrE4UA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id epe7c4dGlvcc; Wed, 23 Aug 2023 21:39:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABE11813EA;
	Wed, 23 Aug 2023 21:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABE11813EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39D891BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 21:39:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D477813EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 21:39:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D477813EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y4ye8x0GqXg4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 21:39:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48735813E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 21:39:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48735813E7
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="373163487"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="373163487"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 14:39:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="826886673"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="826886673"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Aug 2023 14:39:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 14:39:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 14:39:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 14:39:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 14:39:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q//0iIfsmk8QnV+COuL0XktvCInu5YLNSMkUdmvmDB5DXpXLC3ezzRLXxSdKI2Rqqy7bXjN/QM7bEWbpo9lV8juVN0N7zf/IJMWdUOLQgEFxKhgPuJt9ILHIpUxpqSz7TWmT0sj5gIx35ByzO2DptNitJY7uDDY+3Fj4LRNK+h5FrUr1lrDdiCOhX0BbXx6Akg3/n7DFABfsoIlREYzMc1Hl8IQEebmjGOB6MTyvLlMO9aWD2cDowPtOxUgrghbpurEpic2cSvQJszAtqAg7Qh8qdIqbGyOKZ5ExYWwKPuWabz/Pn2G6xPqgxpuwHCH/uA/9BPfbfN8UfgifRB62WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p3/mviq5vY/Y2d7X3IUCakNRo+igbojag7Qd6G6hO/w=;
 b=YdXG1IUiiyGi/UMtQYNy5Q0JXv5a8aaPvguxHOy/yJdeF83NqrpeWkXlZh9u/56U2O5KnFSgSDYWUhc8uwn6bc4hZoZt6Yz7pWv0Li10utCfNHpzmt5T0AxJR0EvSezMzctY1Dax6AvM8wRrtfJJ5Jw7eReL8LcFCz9zGtCqRrsMks5t7mobJEmYwSMk8MYTWfVovnA6x0Cd6tHSoSKfTtXa/NheGIbsraJqPFgHU4sVtsmPQ8nWjEwPsjYO9bQKAcz8yuFSVc5po1p3AMDUjH10FZ5ldklh7n+78drXoxZT/fyA9aMrE0CNr8Fl7CRJHwIlsEmMLhwSxGT68xeuXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3175.namprd11.prod.outlook.com (2603:10b6:a03:7c::23)
 by BL1PR11MB5287.namprd11.prod.outlook.com (2603:10b6:208:31b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 21:39:26 +0000
Received: from BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::4536:8199:4bbf:131f]) by BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::4536:8199:4bbf:131f%7]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 21:39:25 +0000
Message-ID: <13fe03dd-9454-fbbb-775a-083e0bf85bad@intel.com>
Date: Wed, 23 Aug 2023 14:39:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
To: Jiri Pirko <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
Content-Language: en-US
From: "Zhang, Xuejun" <xuejun.zhang@intel.com>
In-Reply-To: <ZOTVkXWCLY88YfjV@nanopsycho>
X-ClientProxiedBy: BYAPR07CA0094.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::35) To BYAPR11MB3175.namprd11.prod.outlook.com
 (2603:10b6:a03:7c::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3175:EE_|BL1PR11MB5287:EE_
X-MS-Office365-Filtering-Correlation-Id: 416df6b1-1aba-4fce-f445-08dba4216c10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mKL+lwP9D5zChK64MXVGpIcKt1W319pEzNLoXICYEnZbq9mBHmkWTR0VgoIjCVcLNwaI6qhd9rnalWAvqCm/hJJ56m6jfypqpqkMDywq88s9G56kr+MqifH02+dBVnlOb2g+EJQJsK7JM+Un55n0P2S5JyUSspTROXW1hqNXH4dneJtsE0VjTzHggyX3hgAGX47yFGADY0mjZe9o6n8RlBZqeEPw7wO6IUSEhkQNcz+oHmNySPXluAJawS5YooafOy6xuU6sW8HkUMVZH0pVXBd3Srb+i11+0z204TtRYZSx365Pvz7+HzTPtmDTpKehFYD6UNuZvil1Zfse7qc8ljGrtqM1wZNqppyfb0ePTDuBdar98U5hn1/FZ6TpjWsl7THWW0rWozNypnL5+t9eJrmBrvrAlVQ1XTlt7hlsgkom8+oiNp/2H/8/Mts5TuHLpZMH1ZPPIiKrpTyhsLtynILBuPDwrsnoC/9j2mI2d1hzCHrC2V/y4XWNMJjUxfoBvVtZ/OaF1CmSK+52p4AbKfuKOXRssQwlzDuhvTWK5mJBwEcEWWYoTRt9VHpST5mKytRVbVvIp8hUAM6Et7lfFV/PePAHCoXwlAmoVd/9JVYfx1u7Oaix+J32deDYOdv3mGuiGctJTv2Rf4rjx1hKsg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(396003)(136003)(376002)(451199024)(186009)(1800799009)(4744005)(2906002)(6506007)(66946007)(53546011)(6486002)(478600001)(107886003)(26005)(2616005)(5660300002)(8676002)(4326008)(8936002)(38100700002)(31686004)(110136005)(66476007)(316002)(66556008)(6512007)(41300700001)(82960400001)(31696002)(86362001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDhQT0hzR056RDBQNGFBUW9pbzR0UHVGQjRzYXU0aHJKK0RqZzZPc1oycm45?=
 =?utf-8?B?b1hyaGEySE9lckZGejlEdy84MVZuUUhoZkZnZ1BPYnJMTjhEZWFnREtnOFB1?=
 =?utf-8?B?c0NLZDBNaWk0ZytHYmRyS0FtaE52OSthUjdIbnU5N0FSR0gzSURkcEdRMHo4?=
 =?utf-8?B?b1QySVR0SVRONUcwOXVzem1ZSjFiRkVLNUtVaVR4R2ZoY3RSN2hQNDYzb0ho?=
 =?utf-8?B?NVAycFkySTNVQXh6QXVSTklkSFlvTk5kMmErVGJOTVUwamZSdUNPOCs1by9j?=
 =?utf-8?B?UFFmdnFMYklwUVBiM2dLeTJ4b2FTY2p4OXV2YW9ZeUc5TlU5WkM4SHNZSy9W?=
 =?utf-8?B?bHErdUN1Sk1mT2pvUUx1WmdYNjRPdk5BZ2F6N2RnQklxQUVETmRXcFpwOUYw?=
 =?utf-8?B?dHdwbERFdVpsRVMydVhlSlFuQ2lreWJTVUNiVVl1elpid3I3dmZHa1Zsak52?=
 =?utf-8?B?akh6M1pTMnFickdnS2tmRkxvRVVhOUFoc1UxZ1VBNk12eUdFV3FZZXZ4SVJV?=
 =?utf-8?B?VE1nQXlidE9ocUZlaFlRNlNEbFhZWCtTNzFtczNHaitkejdFRS9nSXlUYmNu?=
 =?utf-8?B?VjZ5S09jMmpadVpyelExaENqWkFOeFVEaTllRHUvKzYwL1UzajAzc2V5c1Zu?=
 =?utf-8?B?b3ZQSEFHNGR2WjFHcVVualRtL3lpZEk2NmdBVFkzbjFVUTV0TGtOTmd1ZTlW?=
 =?utf-8?B?VTg0bTZrWm11MjRjN2pSZHdPQ0dJZDMwRERHUVFjV2trZkYzMUtydUpuWXBj?=
 =?utf-8?B?dWRnNXR5SXZFd2w0cWp1Rkd1OVRWaFhnWFJ2eW4rT1dWQU5CL0RIYmgzMVRF?=
 =?utf-8?B?dDhJNmlaeTdScDJSYWFJaHFlWU1zQTJWK3FVTmc2RThCQ2xQaFZaV1l0QSt6?=
 =?utf-8?B?MFFRQk9HTzFmenRjWThoNWY0T29jbVc1ejlsWFJPaGk5ZGluVVJkZzZDdkxN?=
 =?utf-8?B?TUVIa3pNTCt6N2hvblA5dVdFR1ZuVDliSUpwWkNoVmc0UTRDT0kxbDl0dVpD?=
 =?utf-8?B?SkUzcER3a2JDYkxJQm9YNlNNdUd3aGtNUDdydEp3dFg3WlM5UEptbjlLNTU3?=
 =?utf-8?B?RnNmV3F6Q3Bjd1gxRk5rZ1AvRzBoWVltd3kvaC9kaXZ6WXdHaTFGZEpZK1E4?=
 =?utf-8?B?bGhrS1N3OEN2ekN0STUrZStoZitoREdnaXJsSXg3ek1BYnY1U3JqK2NYaXhW?=
 =?utf-8?B?amVYYWdOVDlzOGZIcjBJTUM0ZjBHOERaeDgxaEpwMzRlMWdmSFdwNFFQL0pu?=
 =?utf-8?B?Rjc5Q2hwWnZsM2xrRy9PcWg3RkQ1bmZxMWtNdlZjL3pEVk9GT0VJRGFUeVRv?=
 =?utf-8?B?K2d3NXhlMERoc2J5Ulh0MmFMbWp6WGlrQTdvNm1MUGZ6Znpja0VvY1p6aElt?=
 =?utf-8?B?czFXNHZjZ1l6cHhDdVY0Vlh3K1NOMEs5VnB6RFVBVGtTdjJ6Nm9TZFAxYUdB?=
 =?utf-8?B?SVNZejFNTWRXV0Jvck4yM0RuZWtxRHM4cFJXWGN0VEx5SmhxMnFtS3gvSmhr?=
 =?utf-8?B?UFR6eWxNeitoRm0xVDdPUTdxbDhValBXYk9YaVlQano3bjNDWWdoVWpvMlhK?=
 =?utf-8?B?R3Yyd0FNOVhEejlBU2c2U1F5YTJjbTFmWGhXU0RHRmlKbG15L2ZKa3VzTGVT?=
 =?utf-8?B?b1RwMjRtZW5MN2Z6L24wNDQ1ek52Tit2ZytKdVI5dUZZNGlacTY5SW5UNkVB?=
 =?utf-8?B?M3VlMm5HNVdRZHMrbjZGZ2s2NEhiSWJKS3VnRTgrYTlEWjFCWlliRnVRSnhh?=
 =?utf-8?B?L1JmRDg1RURPeGlvbDJqVXRXb1E4aStNMWJ3VnZaUHMxY2RkR1VoWFNMTG5l?=
 =?utf-8?B?STRpbEloWnYrY0hIeDdHelBsTUNjNXpsSm9CVUhZNmlWT0xONGxBMUNQZHlw?=
 =?utf-8?B?eFVzazhEUVZOWmRhdWNnemJGOE5MczJDV3NXSGhWY2kvK1YyMjNOUW5kcXEv?=
 =?utf-8?B?b1Z6Y2hPdVA2Z2R6VWx6VnhPd0NYZXBDZ3FrZ1VJN2FWVjNPUmpKc3F1aURZ?=
 =?utf-8?B?MzdVSWFJTGtYVnAxK3NJRFFOakxscVpSbDFCNE5zRVpDOWpWaGt3OEZPU1Bj?=
 =?utf-8?B?WFRBaXVCT29HYXZPamd4TFNNWVNFdWxQdXBpelI4L1NXdW53RFg3QlM3Umlk?=
 =?utf-8?Q?bSIwZDj/DRKQQZj+2rsjISMTd?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 416df6b1-1aba-4fce-f445-08dba4216c10
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 21:39:25.8387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aRGhorUg7+ubE4dZmgMDVDxKXFgMx4+sLYm1X+boNOBtf3+oK9KhVdM1Za1evQTkcg3cQKW+FlDf5JuO8yFGWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5287
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692826782; x=1724362782;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fZ8c/Y5YttnT2gv2blBChMcfoXiq6Nsl08kGNddaGnI=;
 b=SAJWeVYEmct4PiOSS5evOkNEylKNbSUB0sDv4WVxRUeJD//RU9EarQr8
 nl4N5iTX523CZIDALsSC4fDTYtndN7uDnrPHm0MJ5hMzKogWo5RvdSJ+2
 S91psklyCvWnv+qho4WxVMGDElEpQF5LX67icfJME6CwWot8cPqGoNz5A
 tObmD3VFcPamuQYf7zN39DVtP4Ui0V5dJWIUADdBarp/rPQsA7fYrM43E
 yEq1WSgedNBHpOOX22G5LPR7DdXyg7LhuSjUDfdT35c+e7TdaG4nlJyYh
 A/r1tzZTqSH8c4s+3nh+L09K6qTZSM7Xs9isrM/QuUOMMwhl4JzCAdG3e
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SAJWeVYE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, Wenjun Wu <wenjun1.wu@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 8/22/2023 8:34 AM, Jiri Pirko wrote:
> Tue, Aug 22, 2023 at 05:12:55PM CEST, kuba@kernel.org wrote:
>> On Tue, 22 Aug 2023 08:12:28 +0200 Jiri Pirko wrote:
>>> NACK! Port function is there to configure the VF/SF from the eswitch
>>> side. Yet you use it for the configureation of the actual VF, which is
>>> clear misuse. Please don't
>> Stating where they are supposed to configure the rate would be helpful.
> TC?

Our implementation is an extension to this commit 42c2eb6b1f43 ice: 
Implement devlink-rate API).

We are setting the Tx max & share rates of individual queues in a VF 
using the devlink rate API.

Here we are using DEVLINK_PORT_FLAVOUR_VIRTUAL as the attribute for the 
port to distinguish it from being eswitch.

[resend in plain text only]

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
