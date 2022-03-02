Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 569EE4CAF03
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:47:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1EAF40920;
	Wed,  2 Mar 2022 19:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id naCc9ifACMe6; Wed,  2 Mar 2022 19:47:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D09BF408D5;
	Wed,  2 Mar 2022 19:47:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 659021BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:47:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5307181A58
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ojynKdJn9ubt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:47:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 248578145A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250424; x=1677786424;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=01gZA2RgLD3z5q+zgG+WgkPUIMKWOm4n+4cyVfke/Zk=;
 b=SUZ0wmDQxBJPq5y8TrxWQwTZMBElK8/9qLMD6YhKMA3dAXuq3+t10IkY
 Y5xBIaTn3XAoxDrMI5Bkf8jyKQxJWuS3Fjtmh8unzcCN8QFIRboa3CXk5
 JuxaMbkfupomfgLk0bjHS89KaFfSKfPQL7usD7RMo7TXDGMfCfQjyWzNO
 22dzKDHIsDn2kN6yNJmL43zVW2F4u7cM2SFwGP8iUJ2+CdCu39+iW8rPC
 2KrcC66jtsyC5yiO88EoRrq6WoIASIhiRj0Vn6z8P+PTcC4XMSzZQ0unS
 4ZIrjm0dLsQ6r+5mh7Ikz/JaSPvOvEKbjTGzr9jQMVWnUivck+AAs0RfN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="251065418"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="251065418"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:47:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="808010612"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga005.fm.intel.com with ESMTP; 02 Mar 2022 11:47:03 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:47:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:47:03 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 11:47:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XvoyfAeSR0SKuZg5L3Hgvms2iUeptbIN2Xff4yNBuy9a44Qro3/Fp9C7DSbIeeiHcWEkNag8osjlxaK8nDQfsarG/dPzoEe9AOGT3KqukKdxUpI1UDla/UsC7SazxVEo81PMRGbW3ec+dc8YwX/QMEKhQr+TMOA2brj7vcgSKhrbhLmQkK02LZzpdleIWk7obSvuj8xbZuCPJfyM1K/5WTnM8ppHVBZk7ZQQIZs+QQm6av/GwjO1gQgu9itfb0KJZIzBPByllTLrc9fQ/kTtHxobb2JT8dzk7JopbcrKLv+e4UGciTC3GoX7OiHOT5HweWhFEZj18mQsy5K3kTCjJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TrcDPJTmgdB9qIZ8Wtnn1k8KicGm1qXBtxNItozbFWI=;
 b=hVGQUA99+FKjyfRQhiMnF1euOmI/eX9pwXY6j88nXsTE/3d8KNPK4IwnagejW7MeN/k/y63sUhXRhXv/KIvx4aVewBvireqbmdwL9mtCi1UMyLNzrnBQcIEwRAX2xR1gj00C44g8bw5BjVAI6NaHKdqBsYfhwS4jyWmFXZ4/lIqttzI45WTy27qqZffrY8rKlNAnZTWeAryAXsy0d97JgKPp/EYi71BglSGHTKjMJEnsrLDuTgZUDDefS59OOk46XhWAoP2h6rsrD47jUhs/om56FGvpUqqdaFozHa66deBJiuvE8by5H1q0+54OY6eaIoDvhVX5evteW+WHyMiY2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN6PR11MB1617.namprd11.prod.outlook.com (2603:10b6:405:f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 19:47:00 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:47:00 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 18/25] ice: make
 ice_reset_all_vfs void
Thread-Index: AQHYKExSkGruWeAdVEqVX4lp8vWfmaysi+WQ
Date: Wed, 2 Mar 2022 19:47:00 +0000
Message-ID: <SJ0PR11MB562973AB141A7542259A7CF6AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-19-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-19-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 93975346-4a26-401d-9148-08d9fc856af4
x-ms-traffictypediagnostic: BN6PR11MB1617:EE_
x-microsoft-antispam-prvs: <BN6PR11MB1617E89E6975B1BDD8379B4BAB039@BN6PR11MB1617.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: feneSRkBKMwHRNxHGX50cN0fMLsR7xQBZ6TtmmJHY0/KLl4FdV1rG3XzcyI4C+6QQD5rkpttTxP0tzHh/xqTSQQoG9OW+Bb/K0cWtDbKIsPyUhhYCoL7y5l+Z1GdGNaq7osfTj3gm+x+9W8ZjbFoT2mslrdUo6RtKZC7F4Kp48j4QdLZffddI6DUNAmf0dQSDpUtHDLjgTE2xCQM8AAmYACFWJFFt/6mCLdD7L5Yri7DumH+kXvRX9nZCgVEBoAe/l2EBb4QxmterSH+YRuVSg6lLfZF/hYVMaUQEO7EulopLQ9m6yjAD16TL1aGiz5hJl1RtGRVU6NNsibvQ+fqel2jMU4LdPz2JXs/15fCC/JncNR9Ocop6x9IaSIWR/FE+6ypKQtnylmuUTtaaQcFQu7fNak8TlcUbOeJ5DU11AYfXdk1jJqFbjHcr/d69N4FHWcV3Bv3wYWpgrkmK8Qn01xmMwoxfi/dRr+qhawvjbshCXJfKxNCp8kaKuBzf2qt1C7UKDfoCrQzgPyJOCDRy57Y/A5lT4w+Qqe7TVVyNhifxPWO2W7CmL2L2cS1X3dc7TNQ1gSJsl1SpqqjAra8jTuI96bsw9/hkWRoikBqGxhGvW4GUalkqQakzyfhapjCYT9o4m5qTQBcUrLJjDizl8hy9PLBhPDNEoyKYa4Ze6c3gn/DuzZzMR1Wc4JBcV/vQoLsIIBVJSzfzqXEZXv2xA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(86362001)(122000001)(8936002)(38070700005)(5660300002)(82960400001)(2906002)(38100700002)(4744005)(26005)(186003)(110136005)(508600001)(9686003)(6506007)(7696005)(71200400001)(53546011)(55016003)(66946007)(66476007)(66556008)(76116006)(64756008)(66446008)(33656002)(8676002)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lFZZaqGCq0iurvuzRB3+HTY6mBFmNUOOYRzCQYAogpkEfvXLlrWs2G8XEnNd?=
 =?us-ascii?Q?0J25CYFiPhLk3zLkrHItL1Gnv9jUvfhz7V/CN3KpXaUQo0ekV++bGtswwkFv?=
 =?us-ascii?Q?LX+szbyUL0nOfQPLuECqjcVpUKf4jlIQauqOWJ3cLywqnCteDRJC7cvZN7qd?=
 =?us-ascii?Q?wjBHBCafM79sozEy3IDpc/egpoCZoxBQDgaOV/HowmPbLqr26/PUjSQg6ujo?=
 =?us-ascii?Q?TviettvEvZSfH7QByPW4Rl1B9Qoyatu4M+GAB5qeqFaUDqLxBIu/8idKyHEQ?=
 =?us-ascii?Q?thQ3ZGtm1crHhOsytp+uMs13iNJ3wXXdAYaXos2Fqi2ZLy6EKV22UEI08Bxh?=
 =?us-ascii?Q?D1k1JrGJ+fdOuRZewcQyjIbvqJSmCVdiTsBqe8uAgY0RkD2M55Y/S6oezVo2?=
 =?us-ascii?Q?RE6A7f0a8VubUeMwBHBepNe3TA+SHg6d77yo2bEJwOMT4EQSVS9Wzdq752n9?=
 =?us-ascii?Q?729jLrv1wxocaGJaKh9hykW32uJoo8QG/aYjzhaW83tJvtWHM1B8nnJtyRL8?=
 =?us-ascii?Q?YNINuDLQZ/nsZ7GK9Vms9/i7szMCiqWXUAuSsGGY+aapqZnzyEKBXOvnnO1v?=
 =?us-ascii?Q?UQ9B3YJPQRQQYU3zlXKpz8q4hZQobJsB5Up+/frfK6Oqn4IiJJv5IFApITtT?=
 =?us-ascii?Q?OkKUXFihGV/Fchp76ipHqYdfllFWPfYvO50Css1Y98WIMhz/mOChkiMhNLKB?=
 =?us-ascii?Q?48E6sw9bvDQosTBj/wc1s1Jhk7qMXnGVcPozlzRvVwdnSwlb4KEYanKnTZUo?=
 =?us-ascii?Q?du64ZifKdMV8WAtQjVoZrubSo0h9iZ7cf+C/WQhyvML1xmkZHnUHkl8+Ztq7?=
 =?us-ascii?Q?tJkxGbt+KVPOnvRW/OwMGBm87Ql335rnclkxG/1Nch6J6FTtLTHm9CJ0t6Rf?=
 =?us-ascii?Q?CPPAY1TrpbEObYpK4lM9VQycbYr6+596wUz0kgwcmE3jwL2WLLI6kUyF9ZhM?=
 =?us-ascii?Q?dV6zQYQkRz++I/G4vvI+OJSB+WNuGlmrZbov+aGVo1ikX0CXS34/XEqmpSta?=
 =?us-ascii?Q?jVxczZDa5NCCwKue5n1iAuwIQBiG1WuSkhS/Z26XOZNfHr3llfZKgG9Io1BG?=
 =?us-ascii?Q?BQ7kjmyFXCGXI0WmA2xmAG1kRFnSYKKfubbz1iSuEVQWPY5dKnxn6b5ptwCZ?=
 =?us-ascii?Q?qTvVVgkwlfTdaqHflbOW/Zeb7m4/mA3n4FyoQAQpPmXWvpJjzpcOKy2ipM7u?=
 =?us-ascii?Q?b+KLmGPvLksv8uwdExvEfcuHfneOfw7A+sjPl4/Jq1vyUPD5jje9AMD/LoZm?=
 =?us-ascii?Q?g+L7Apw/R7oc/kOJCqrjvG/Dw0JHogXvC53+c7mveVOneLUk/nGX2AlfMg1a?=
 =?us-ascii?Q?8i8NSmWg9wVybxUpDy/2qmaXDXKho9yJAgtqfLfgOrXMpvbe4vSfqBqXod1I?=
 =?us-ascii?Q?+giErCIhjAa3iXkM1iJ0v84NPHfQWT5DqMr1Fv7sbNonHqx4MFuKbRPPbb0Q?=
 =?us-ascii?Q?SB+Zpqatqjzd6sWTy/Fx+pC0Qz9/FfvOMIox7b0pRfAxSNVdrcMwbc0E9RXO?=
 =?us-ascii?Q?L9dqZZMG5j3SRTCiowWW1b1SrnyxAa3YT7tiZ4PelmuOpgjhYX4nZajsfa+N?=
 =?us-ascii?Q?DNykU0AAzWb1kCLdkLNLJ/BLVeRRH9L0s3wAg3PUKbtk309kLnvmRiKqjBs/?=
 =?us-ascii?Q?FUu5X9HTBtz/htJv2K1EdLAsCO4rGbsP/pkpf2MF1Zep01EmdaDYkjBa10jR?=
 =?us-ascii?Q?HNcTiw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93975346-4a26-401d-9148-08d9fc856af4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:47:00.3805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gGRTeUcgE3iN9BL6PQUY5GmSN5hgVpr1plgcJBoHFs+OlSbW0mJcF/3Ny7gVWATBNO4d4GnIxRV7JdjHXRKkOJlJSz2WEGGoMX6MX8f0kAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1617
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 18/25] ice: make
 ice_reset_all_vfs void
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
> Jacob Keller
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 18/25] ice: make ice_reset_all_vfs
> void
> 
> The ice_reset_all_vfs function returns true if any VFs were reset, and false
> otherwise. However, no callers check the return value.
> 
> Drop this return value and make the function void since the callers do not
> care about this.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c | 8 +++-----
> drivers/net/ethernet/intel/ice/ice_vf_lib.h | 5 ++---
>  2 files changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 996d84a3303d..6f9e8383c69b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
