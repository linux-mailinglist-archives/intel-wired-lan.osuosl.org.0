Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 712CD4EDA22
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 15:02:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6A0E612E3;
	Thu, 31 Mar 2022 13:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zSg43PETJu3B; Thu, 31 Mar 2022 13:02:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D424960C00;
	Thu, 31 Mar 2022 13:02:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 896311BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 13:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D98E60C00
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 13:02:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qqRvw3-ecYy7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Mar 2022 13:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BAC760B15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 13:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648731720; x=1680267720;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D2RsheFaNDX+Amcn863QRJ4I+HaLT7d1e8ZTrD4ue2U=;
 b=UekOQLcoxnhLjPXoZ+dFHWko/LqVmT7So+eierN26MjySilCU1rxN8Px
 rS5bjPdmItZXqCZyQ312Bb3tvIb4UYdTsqzlXJHda0124MuaHC+9cx/Kh
 8YIneRrxKvAG4sWMtEWey7CYWyBeRuFP+ta+W1NLw/Vx3+hF2E6+2GKwb
 CzDJM+LgA6GsDd7/bNttk0JgE98kmarTjkifYb6nAJIsz+n5luIFHOwBh
 u/kGNVUmrNod5LmbH2qqMn/DgT+fGWDTVZxhypDSJaA6qB98ICvOvZ5jm
 sZVQ9mVUQJCWzBfAXjGeYkKkZZ/ZgFc1Wtk6T+tzlNbwK8JAnkwF7iHZn A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="239757559"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="239757559"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="522336487"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 31 Mar 2022 06:01:52 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 06:01:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 31 Mar 2022 06:01:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 31 Mar 2022 06:01:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ngQNu95K8ge2mRXcQQxBL5Q4ZQPE7+RwuMzdyrIANYNUhrGocSEtNSSJlHOo1JCFrgSOhYv8X/CQVpaPyaHQSnno9apvsNGO2uiWDhi0adxS17k69EnjVeD5+PLC70Oxn+HDwPVooiSx4O/N9nRCCp17cnXjf1DIcS5YYkEc6Fiqt1dGqxDmf3IIk5c9RXAs3ncdVXFchwZbVveeWjaJWJ2JIJMv9r6m/WOKRLPgsyNe+2WD8orq4rj8UlGYLVLN4cG+gwiK4yUhVuA6otd8RPUlD9zmVIafT8gfHwK8drDhMqz7yRjxfAiZf19u3uulSFMGLx6EXNSD33qBaMF5uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4yOh5+HSQD5I8LCJ9CFYpaRId4C8w2aS9p0zLVbIHF8=;
 b=UDhPFD3WQbPN/23v+TiJXt00icC3ZKu5Bxkt0qSOWr8st1tL1/IB4QIk74MkEtJ5XC89wB3KJRsLEOT6fxO33tjwf6eObbY4PkgL/NY9jBJSwpsWbCUDQPANK8+BNbwXBGdItm7qx7AK+wZVZXYTGmMudwR1CKPdGwH1w5BjSJtUM+pZS945e4akZQxbF/GTDdqztmqwWwDJebpEPyWFp5EOKLeFOTkfSRgct//XE7j9sBMQ4riRaQ6WniDXMVKpZsZN97JYDU+5vK0fgx17T4sks7XLoe7w2Oqxq8EOdDkqQXJelH9ShHeItRvBnHVEuqbJJib7XQCDkHjqR/E7Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5822.namprd11.prod.outlook.com (2603:10b6:303:185::9)
 by SN6PR11MB2590.namprd11.prod.outlook.com (2603:10b6:805:54::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.21; Thu, 31 Mar
 2022 13:01:49 +0000
Received: from MW4PR11MB5822.namprd11.prod.outlook.com
 ([fe80::f40d:5cd8:1ecf:4b95]) by MW4PR11MB5822.namprd11.prod.outlook.com
 ([fe80::f40d:5cd8:1ecf:4b95%7]) with mapi id 15.20.5102.022; Thu, 31 Mar 2022
 13:01:49 +0000
From: "Nagaraju, Shwetha" <shwetha.nagaraju@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net 1/3] ice: synchronize_rcu()
 when terminating rings
Thread-Index: AQHYOi4kAbJjLZJTBU+7LnIAOBopZ6zZil0A
Date: Thu, 31 Mar 2022 13:01:49 +0000
Message-ID: <MW4PR11MB58223B3518AB85AE56ABEA8E90E19@MW4PR11MB5822.namprd11.prod.outlook.com>
References: <20220317183629.340350-1-maciej.fijalkowski@intel.com>
 <20220317183629.340350-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20220317183629.340350-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1096308d-4970-479f-c922-08da13169e98
x-ms-traffictypediagnostic: SN6PR11MB2590:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SN6PR11MB259018190C7CC7B3195543EB90E19@SN6PR11MB2590.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TSJnKp5IQtfBMUUq/lNxX6zdBRO7XTFFRf7yGyEFOab5Dz1yn6mVCZlY8MLrx8f9IfhiNMjBmzhLKRm6tyTX6mxh2JuhSWWrKWNrT7EBOOdyP6mp5u+eE31lFIRFaYackcRWsUetbO7GNCmOdDiRPW66NKNJGLRLtNVTfFtlI2W+SXdHfqGjbcrf4SGc/iB/tqypBgzauRSeNsT1UJICD2RaOWj5XI4uzWmvunn5s32KfsSHvb41mHf53NEphU1iofftQgT+HPwkbHvotG/0NyETHxMpGm7Xlytr86PUlpQc04k5TJG/0gcKJ7Y/vUQyqwg6sDwuPBylX+znp7qNNsm2BtXHZFaOK7uPBE2wXTu1ZnH12IQUvh/Zjl5MYp3Wx66EWrda4ZRyJTBwuL5Fu+ZoeXtm3POhUA3ZSywC4DifKK8vPmh0Dpy6FQ58I+e2JGneYiN/TSX56euJrLiZHV3iBfng64flGTqaxcwcvDdt+f2BjJvwiBPCt2iAl3+1djWyT6jlMnFmkPKiC4KtBn6HFM/vti/e+bP6yFJxEaKfQR03dQgEb109qIFgIJX0dSvXp6BfKkRauAgtlANMO431swOvzcey5gO9j7354Z1QYq79XUvOx2rrCC78xH3FHcv3LnGeGljy9SWLA3L10H3+UjyLBhglqUU9tTLng5jgka+YOGQ4289sWoNbUxJ1lw8nviCShe5Bz2e68AQ9rA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5822.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(107886003)(186003)(71200400001)(26005)(53546011)(64756008)(508600001)(33656002)(55236004)(52536014)(54906003)(110136005)(86362001)(8936002)(9686003)(2906002)(7696005)(6506007)(316002)(66556008)(66476007)(66446008)(66946007)(76116006)(8676002)(5660300002)(55016003)(38070700005)(4326008)(38100700002)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J7hQI/2VX885soxTd6o8UMm4OEhK0Lp05Qpqwu2JZ7AgysZmWTdW145epoMD?=
 =?us-ascii?Q?mj/V7lyLuJ8xXSUGYb/3Lut/NTlyqGu3F2N1GAU91FiK4LTav35XDbIeVWO5?=
 =?us-ascii?Q?nCLlCsx+r0l5O3hsHezEi9KShnbh3Rvha1RgjOxRFq5jvWPwU6MABue4sKtP?=
 =?us-ascii?Q?yV6gIVv1nYPtxb0x/tdkVyoyU5gxzt2hq8g8ea71CUwmgq52qI0F8lI+Xxhh?=
 =?us-ascii?Q?QINKrEYL4ZJl8BcuDLMxsY5zbV5JPXwG6eSAfyBx3JgkaMCeOcHhjSoJdlBt?=
 =?us-ascii?Q?Uybmx/W1R3BIB2RtEtPcjb9MhMhTerdvPER0VkS1k6DE1Rc+hoAnLTCxGcmd?=
 =?us-ascii?Q?t6EpnFIt3W+P4p6uUdGzquAYv7ajKkzX8Alewvg4qcKZmONLmh+YEZYWlEFN?=
 =?us-ascii?Q?qjvKHVzC0rX1XUzDUnviCi9OvcCIFJRzxLQdmMBEHpnbYRu1dbHY2/90GqLq?=
 =?us-ascii?Q?RuTvCKU+s9xGjU1GousWRH4AlN4l6hMqmalLx7ddfx/3Ey8UEVWuMT/WPMca?=
 =?us-ascii?Q?hDsq0+r195EwnWzFPXx8frwrgH+nyGR+TjotYNbs+ntOywv5hPJOauqIPi+5?=
 =?us-ascii?Q?YjFAlwdQMyBCde+TNwDFNuP2DTFccSaGNYXLwHyWTqoXauPglyiygoryFguA?=
 =?us-ascii?Q?r7lSVChAHmJUIgnmgZKd7f643UNRfpqlLn4rghaVwHWJuRJhIrgmm14pzLAk?=
 =?us-ascii?Q?XY4SMWkMyENUVIpgn0XtdwzKuCgV2D0fVhHzW9gM+cj60z/zjB+sXAP73niW?=
 =?us-ascii?Q?ujAo59Wohf53I8Ty6AjUd00Ow+ECljYtYoT7BuyEuoB1JE3dn+a/R5YaicKJ?=
 =?us-ascii?Q?EzVbaZSstWACXZAQM3dPeX1fZYtvhAar1jhSKJ/J2LtiK4jD0gT+y5EEzSar?=
 =?us-ascii?Q?6/AQM/2Djoaa+nfFEN90vdijvUpkqFymyuXFNZVOF7eaQ6boASOPQaqA97r0?=
 =?us-ascii?Q?W+cX1f2Ie2T3yTvHQ6ITzVTjNryh3JgSQQ/VGcCbgBlx91booBgFeLFNlhAe?=
 =?us-ascii?Q?c1k6bODE7WBzNftuNepg5lWW+ylXAfpk7JlRDCMbiRGMiksicoD2FoMt7Q1B?=
 =?us-ascii?Q?A8ScgiwR23sX09p4FAxoCC0QAW0C60Mqbs33qCI/ny/JN8vgf6V+cfO4CZ9T?=
 =?us-ascii?Q?IngD0EztqdoPSMdT1X4DWYj0JuI2YjET+1lvBHMI407yLoBBs8s5iT4bTO5L?=
 =?us-ascii?Q?yBaIxhfq42EZL0Ws4Au/d4t5PVzbmn9gUABflj1V72rMmN0f8aEjlIgFS068?=
 =?us-ascii?Q?6nPi1PdR29RL+a3+A4QGptrwYmNRIBVDxxaforr3SFhOZ/dmOFMEtDPALrYC?=
 =?us-ascii?Q?9YCOcUjYAgXg+YFn/2+0Bio1aTGmS/iXn1ddS7N8MtZ+sK7iOLtYFm3Zqr96?=
 =?us-ascii?Q?O0Un8AGnN40KyJLYEETOgivsuM9DRYsu3qWOYK4PH0rzlcQN/fVKwgoHM1/s?=
 =?us-ascii?Q?KCvdR1BdSdMoi9TRWFfijrDvzsszOFgqZ28vI1xPx2iQK8hiiblfkuk9D+dc?=
 =?us-ascii?Q?MVxY0zx87+noMwHdmNkHnFs1+qtvFHkUfPm9Z807f/hPUD4XQ+uu5+xHlDtc?=
 =?us-ascii?Q?7ggQoO0ksXkGZsKx5DCNZoRL19CxTxjtN+WwXDD/k5F3c0I8miLX3Zmj0oaY?=
 =?us-ascii?Q?Q1L/tk6HrJ8JWX48ZKneP64jhsNczbx4jqpoN1RVDrEbDH+2P2u5Jd0RUtaj?=
 =?us-ascii?Q?8VNxkjjITWvztPO4p/J84gA66ZePIrRpA7oRzyGSMF9A4Il7vYN5VdpVCEjJ?=
 =?us-ascii?Q?DgxF3sQUEHaviFPr0Dupyn8cFhpd6aM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5822.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1096308d-4970-479f-c922-08da13169e98
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2022 13:01:49.6274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5QhePjyHmxvvU3orU60oFJfV+nFILef0Wb8CznAWX+kcapaKi4ogManohUHbtop3RmxmTax3qvV82mbhg535RVkj8YVVsrZQvyPZHweZyt0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2590
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-net 1/3] ice: synchronize_rcu()
 when terminating rings
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
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Maciej Fijalkowski
> Sent: Friday, March 18, 2022 12:06 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; kuba@kernel.org; bpf@vger.kernel.org;
> davem@davemloft.net; Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-net 1/3] ice: synchronize_rcu() when
> terminating rings
> 
> Unfortunately, the ice driver doesn't respect the RCU critical section that XSK
> wakeup is surrounded with. To fix this, add synchronize_rcu() calls to paths
> that destroy resources that might be in use.
> 
> This was addressed in other AF_XDP ZC enabled drivers, for reference see
> for example commit b3873a5be757 ("net/i40e: Fix concurrency issues
> between config flow and XSK")
> 
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      | 2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 +++-
> drivers/net/ethernet/intel/ice/ice_xsk.c  | 4 +++-
>  3 files changed, 7 insertions(+), 3 deletions(-)
> 
Tested-by: Shwetha Nagaraju <Shwetha.nagaraju@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
