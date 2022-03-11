Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E524D5AA6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Mar 2022 06:33:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DC9540916;
	Fri, 11 Mar 2022 05:33:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id omhzTAIbsKsK; Fri, 11 Mar 2022 05:33:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2187D408EE;
	Fri, 11 Mar 2022 05:33:36 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A75721BF865
 for <intel-wired-lan@osuosl.org>; Fri, 11 Mar 2022 05:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A3A581076
 for <intel-wired-lan@osuosl.org>; Fri, 11 Mar 2022 05:33:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ox8rqxh5gfqT for <intel-wired-lan@osuosl.org>;
 Fri, 11 Mar 2022 05:33:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BECAD80DC8
 for <intel-wired-lan@osuosl.org>; Fri, 11 Mar 2022 05:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646976810; x=1678512810;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/Oh0vNyjKLUANYA0OYbh8Q/oDi+bplFcJvOLQcKiRtA=;
 b=LxsECOw1Eb80eQhc921sRyOgOepTwlJZSVg8hRIkKMA07EVYmo8OOCEd
 bfYOpvs7bs3mN1peSKt8fPAxosGKVgeuMsf0TEvh9mRzT19Vj1O3drbNb
 1kQJjzjWShTcFUs7qKRsfKuq61HUGpJnr5SmbgxJW7S4yUeQalQtkHZ4o
 MCv5ytm4q79g7AuT10IoUEE4nfa+eWz7T1TUsovbD8QYAnCAnc2Mb+G/4
 AUXM4E6Z+irvxmj0OONZ3hiPfRAQ4n0x49jHNGBhQuK6BfNmGKK00F1Ek
 ngJbzMzEe0AvQDYyC8ZyI0m5AcBx29lTAJaqeC/U/R5by1Lv2JUHXLxeU Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="318727894"
X-IronPort-AV: E=Sophos;i="5.90,172,1643702400"; d="scan'208";a="318727894"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 21:33:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,172,1643702400"; d="scan'208";a="642875477"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 10 Mar 2022 21:33:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 21:33:22 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 21:33:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 10 Mar 2022 21:33:22 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 10 Mar 2022 21:33:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J8PJ6u0AZtCceE/oHI2EpFnIgCtAiD2QqtsIW4UGmbOc7WbFdbuIIjkB7jJhELJcqHJ0OU39ga1QIp62ZicHPJc4AhRiFRHxB7ywmkGKOrmWjLXlVVviAfbLzzOMI4Twwwil9VJG79wXhq1M7Hvw0wQZbUcJCCgTPA5RFIYbqPWilZvLU0W904xDxqGMlUIJwDEV0M18foIwbggvzokAEXZmF5yrE+CT4PxGo5C+LrIw+MVNY7EJMX0a39G3Nw5bbWym9ch1ivQp7iRNA7hoWPpRPj0jB9aCB7fQSkBMbeCvGxkS9oWYNUmYFD+MglsQ0oDOrMYS/sycxhLj35N9eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ek+Acx5mRpMqcJ2sNgcSeT8ywOELzx5H5xx1AU9oG6E=;
 b=YBXfNeXH8Ey0Jibzx53+seYOva1PDX3B9mOH6PQngoVIbeQzMOHRb1W6xTSfeNckp1kG8xAd7zVC4pKYxoHJE9IIJU87gtOcxWDcv4iOSZf81cUdwtqiFv5tQ+EBClvuTVwU0zDZRZCz7gMECMzK20c6mz2eZK+H4Ta22F4FbbSUsLex5AtuCKwho+50g7LZvg8/5kLjXIEf5gqVXj6RmpdLltvGFEz9MCeHlr0XvfluDIfmP3B17z+CJe1QIoCJj8AS/m0BrLwA20kKXB5fsBHyvvAu/Oh19mc4AAFBxHg81Vh+BRqFGDscp15e1KhKHCzGQeSB9C2z7EyZPsl1rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by DM5PR11MB2025.namprd11.prod.outlook.com (2603:10b6:3:8::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.14; Fri, 11 Mar 2022 05:33:20 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e480:b70d:eba1:6177]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e480:b70d:eba1:6177%5]) with mapi id 15.20.5038.027; Fri, 11 Mar 2022
 05:33:20 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: destroy flow director
 filter mutex after releasing VSIs
Thread-Index: AQHYNK+Nf3g/YyaFfE2mCRJj63ksEqy5qWNA
Date: Fri, 11 Mar 2022 05:33:20 +0000
Message-ID: <MN2PR11MB3614B8A69A58316D808100918E0C9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220310184652.1596373-1-sudheer.mogilappagari@intel.com>
In-Reply-To: <20220310184652.1596373-1-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2260901b-1bbc-4f8c-1dec-08da0320a711
x-ms-traffictypediagnostic: DM5PR11MB2025:EE_
x-microsoft-antispam-prvs: <DM5PR11MB2025BE5D8E49AFE9E38BFF778E0C9@DM5PR11MB2025.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UH58Z6XFR0AR59Qgh8s7GVo0Zjz8UsbcQKxkCX94qYeZt3pNcoiw52gOXL3D5uKOnfcr1zY79jpaCU1WTVkurgyEedmdq2us6tSIRQS9O4v7Idt5oqn7uYEMiPRRiiZpQbRSfZ+M4+d4ypVWePptlGMh4m3z7fhq323yenWWs1yCgP9BaO459I1+hfHQ30BDe5seO2ep5Zlqj3dqNs5j9yJp5mrSKdpkmX4KqKrNTKrto+bT7eZC1QO8gyJfgO75s0kN/C/yWRwdbna2jmtYvrRaUzkyTrqTixRDu/llmCjBe7Xv5UI7tk1/n6oro28+4vhtKX3DGTp7FKswXs9wgz7EflndT35TwJOhB82OAluDN4Raw608O73S+UWW2yHkw1Cf0i7lKeAfN+zijFBdVd4ELGTHQz0uBby+7F6CM38zmixeRbxgp7okLiY/m4C5yFdURkAR9OdFd/H/l2yU5aYbaNLDyeJMVH11Fo/UguM/L/Y3Z+1J/fCTvRqT8LRrDZ2Yrh7WBUrpMdWbWMPUYUwbu2hF11cETP+9jphvpbz7XJytOr7QQhKNc6sNAjhOkRSL0dim+EvDTiWhLY91B1sdqETkyGIj5pRiCJf5yPaRyGkU7R1v/fbZBv5RQ6ABiEHEQENObwqViqNeZ47RtwsyPM0LZ4daJIVjVfRd9En1d2cERyIkWVX0I2gOJwev6nlNS6xaXfi1HtSCjxwrtg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4744005)(316002)(6506007)(33656002)(508600001)(7696005)(55236004)(186003)(26005)(9686003)(83380400001)(82960400001)(66556008)(66946007)(64756008)(8676002)(38100700002)(53546011)(66476007)(2906002)(76116006)(66446008)(38070700005)(8936002)(6916009)(55016003)(5660300002)(122000001)(52536014)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YlBDt60gU3yKgZN2AMkfZcP5i9IcdXkFdFOePQU5rn8UXE+jividRe4x7KaR?=
 =?us-ascii?Q?yOMFC4IXog7SUbom+tlzUsknc1xbypf9nhtDyL1SdHyqg7VrI5EN6sKRD59B?=
 =?us-ascii?Q?4L0j4Df/Dwx4QUSRsy9aduTrOd2aFTu4IfaZ+ngd34AmIsZT37gdZVng4SRo?=
 =?us-ascii?Q?e9fSBBeaVha5sTdJHVkv8Lxfwte+QW4CjxvNvFJC6r6O+4/optnsklsxR4++?=
 =?us-ascii?Q?ArLEadc5wN9MCRuIKuTOHdvsa8e3bszybmMQGzqSBq5kEXlIs1Cz8qpJhwPl?=
 =?us-ascii?Q?oSqt5XXCH7byWjwYA6bbiXObYoMMkbrjGt9TUxxxx4EXeEz0RvN/0O4X9zeX?=
 =?us-ascii?Q?Pu/rP/2ErfSwKh0oIItRBA8Mtr6F2sHHS+3ZRlISsJPYsAVjsBXlbig+Z5T2?=
 =?us-ascii?Q?3xhjxJin9pxXnNFI6D7MFH2n+n4V3/TpqzBSVc4cqi1eAnfjuRvl5kpNsNtg?=
 =?us-ascii?Q?ZC95nInORUUQThhMMJA6O5Wu98VCT+5a3jgeShbrjSXzUFDGOi/coR/aOVDV?=
 =?us-ascii?Q?nMAQS+1xoic2ALLm3R2kwm8oKdK3w2xqityXURbuAKgvWqHSz+irEgU+ycad?=
 =?us-ascii?Q?3gtg+WeBxJ7nZ7eUEAiW/Deo4YOPds7debqV7vXFDpNy6bplWNvJlwy+ka2F?=
 =?us-ascii?Q?D56Ia/lx0OD+9kX6MRHaPEcDo4DPnCjZYEKyCIo8O4hD4d4Og/rV1sH3NcnG?=
 =?us-ascii?Q?x6c2w35Xn9TWLRC0b/xWkIfaMsVve+voWnKH4fimdjNXZmBe0b88G8j6yU5n?=
 =?us-ascii?Q?ZEtz1bJZ0TG0r/1yJOhdWaJH2AnBkeaP6cKXtcoxfpfcsNBobYzr3YFDRyLa?=
 =?us-ascii?Q?7pMVqMtpa2hD8ISog5AAIjL/mltUPBK6Ho0e4eir4EpE3a2sE3wGrGnX0ij4?=
 =?us-ascii?Q?f7pnkjiRPOTJx5qREsyABGWOyAlBm78PQhE49pemM+yEeytTNw4G2mE/S1J1?=
 =?us-ascii?Q?QMYwv6LQlEoHLad82i5Bk8h6wIlQC8TUmRA6bwsJwWrrgWU/ntAjyayZkz0i?=
 =?us-ascii?Q?D7/c2IKoP8HhOPnIFn1yV+M87uHQ0Z1Yde9+kaZmeI2m6ob+zfz0f39ljVMF?=
 =?us-ascii?Q?nWHETQ0p/Y6RQpPPq2QvQXCzwohseyjoEL+9p+8LEYrlPdpiQdELy0Ub1Nhp?=
 =?us-ascii?Q?fVHtb5IciQVVKoYRi5fHU6VuEgobv5KDgG3mA/4+A37XT4VwcFURmtDa4BRR?=
 =?us-ascii?Q?7eqN4K5hMGbcFmpj1jrMCPZs9vM1qRPuA6lAX+UKYxS7VgaF2eSDLSuaHglp?=
 =?us-ascii?Q?XuVwo6biYkQ3E8U0D395U3lOH+zoItHpNqfMGPuWrboOOH4YPEKFLMLlzlUR?=
 =?us-ascii?Q?qJueqQbmUhaul2QXdplw/oWm0p1XzC3NmFCNCimF5xpI1tS88EO4qiUxQ/vt?=
 =?us-ascii?Q?q4wMgarHfyCEgncnjEYUV+c5hhjw8vWu4GffhmWLSSFASJBkZ23zfgSg0MMw?=
 =?us-ascii?Q?eIWFvXJq/6QTrM15Myps7WtcUTUVS9yECfRsXZWRqZDIhMWF6ZCLLFtRrs+e?=
 =?us-ascii?Q?TImG27TiRXoX4JQiTKM8WCr/Xeaz6CJdhzHYMjEWdnyYEJjgEHhJwSKtW1ze?=
 =?us-ascii?Q?9T1rci2M0WmwA7IHpZl6lIqAcbFV/ysd51CZ5FGIuHFa9gpPGj41esPaDfLB?=
 =?us-ascii?Q?l5M+ulR69tBm6U6jmUn/7cGrDcS3lD5TPFyz18QLjWbZQ5F0Fzbfx03alyG3?=
 =?us-ascii?Q?93Za3Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2260901b-1bbc-4f8c-1dec-08da0320a711
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2022 05:33:20.2006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HJQiQ65GDORLh+3JgDH34tW+uL9rWjAgqZOV2JHmxHkXrmsT628oO/ObBC7HBPkXbOoHcBzHIYl6Xxk5wRzIsFQuEE/TkkrNNFZwyqZpnCs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2025
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: destroy flow director
 filter mutex after releasing VSIs
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sudheer Mogilappagari
> Sent: Friday, March 11, 2022 12:17 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] ice: destroy flow director filter
> mutex after releasing VSIs
> 
> Currently fdir_fltr_lock is accessed in ice_vsi_release_all() function after it is
> destroyed. Instead destroy mutex after ice_vsi_release_all.
> 
> Fixes: 40319796b732 ("ice: Add flow director support for channel mode")
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
