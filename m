Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B632878FE57
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 15:34:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0B424198A;
	Fri,  1 Sep 2023 13:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0B424198A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693575257;
	bh=xEifXbtUmnTnYOkbzOUPEsJiOa7jcOJ9LNI5z3Lb7k8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sETDZzrPam3JSQzGz4Zgm5QpsKThNvoSFatqVv3PTgOsEX1sEgU0BuijLHMlX2SYm
	 qaCAHEGwb0lTdFx5uMsB2VU4nedeUHVf8CMuo2nOjACYig0sww0EfZe1MqfjR4MCdt
	 nXploB3oMj8sgyT2heFzXrX4Yp7EgossB5DTHRm2kYSiQsYADQWhxukDO9b0zDIgm5
	 08XhvUON4V99TRr5dxl3/cKNbFUBz/r2j48/edoooosVUew6ZyhF/16+PuJx0Gi5+S
	 KvCzoRbZCLjFtA9ZIPBFY6rhJ0XP6sN5JRtZrzbVNyKMnHN+di5tyiNpQ9kE+bnOYY
	 h+gFyswYiNi+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zw9HG174hCRL; Fri,  1 Sep 2023 13:34:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F24A4197F;
	Fri,  1 Sep 2023 13:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F24A4197F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0A951BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 13:34:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 781F082D40
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 13:34:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 781F082D40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f0FhNWGXOgxz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Sep 2023 13:34:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7285682150
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 13:34:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7285682150
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361246015"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361246015"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:34:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="805435338"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="805435338"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Sep 2023 06:34:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 1 Sep 2023 06:34:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 1 Sep 2023 06:34:07 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 1 Sep 2023 06:34:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BA8557RvycjZzlioFfkI2+xnaw3mnlLyXr2WIPfj7YVjP5t0mZoOq75jzU8XLO7cK5uiT+yoA59y8L4+ZLwGiXWFgNJ0OoibtCt47iNnH+dZRb5wajOq96Aj35GMK/CBeOu+LlbE1/cmgm6iB9HgDa4465/8isDTWdRZGX8lJPZ6MxyTE/+zi/E21Hx1MneDmVZA0cI1JH5ntTcwe80WJ3D0wacTPUWxEknhWRmAQ9gs5l+Z+zumo394q1Tax3bcWJL+mnJF1mAG8d+H6hu4/phCAD0S/vbgZadsWleuS7suUdeyg5vvhMH4u4gbbXkq6R/RVMW8WrTVfl9tKXnefg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2jfeYN21Y2iYsRZr0nuy4SKYykcRtT5xGkbFhP+aKJM=;
 b=hn62fhpGSxySVZk17Yvsk4e1rXxkZZEQI1nj5fhZAYQ8S3AMDedVo3hQ6WtBeuy1Un/fPBOYvVHvQU6xqZPYWQOnCzxS1F/b0E7bJtyxOHHdPGUBkMOJGQBcdcnqmsS59+DpqNgldNdsm2p6OV2Uk3LuGY0CBreS0xx0jWnSx/+2jKqjQUW2IEmxnzARAVgPpIx2aMV3lff7eXduKFomljx+gCKj0ro6RNKZsQU2JqU/3OmbaQfhOu7Q/sjcIhUWBoWl1tqxYhBFrBzlV6PrLUnSfRdIZUb+WeOtjzNIRfuxFvqc0+jjSBSFLbQ/BgQn1bHasddSPHTbvVO9qj//jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by PH7PR11MB8549.namprd11.prod.outlook.com (2603:10b6:510:308::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Fri, 1 Sep
 2023 13:34:04 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6745.026; Fri, 1 Sep 2023
 13:34:04 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Ido Schimmel <idosch@idosch.org>
Thread-Topic: [PATCH iwl-next v2] ice: Disable Cage Max Power override
Thread-Index: AQHZ1qBBv7SVSOjez0eHlWI2L+3Nxa/6wcIAgAMXFgCAAydJcIAB/MqAgAL2T4A=
Date: Fri, 1 Sep 2023 13:34:04 +0000
Message-ID: <MW4PR11MB5776601FD7C2C577C78576A3FDE4A@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230824085459.35998-1-wojciech.drewek@intel.com>
 <20230824083201.79f79513@kernel.org>
 <MW4PR11MB57768054635E8DEF841BB2A9FDE3A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZOsNhgd3ZxXEaEA5@shredder>
 <MW4PR11MB57766C3B9C05C94F51630251FDE7A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZO9dhzhK+psufXqS@shredder>
In-Reply-To: <ZO9dhzhK+psufXqS@shredder>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|PH7PR11MB8549:EE_
x-ms-office365-filtering-correlation-id: 91a250a7-6486-4a60-62ce-08dbaaf01bfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZEMXqpMdmQiaUTls7bcGLpuIk5D/nTNj7RU1LR1ltLiDzJQJEGbqSDYvTPAhXmeJHBS6uk/O3p0YNCEryl8iK6lM45TSQngN27iMlEy2TJq07VcD0+vCRwlaSh7NuNCRKdTAFnOK0/vE9czEN2DLfIallh5N3+Xi3PEiMpXWxlf/Y4QqQUke3DKDuv9zTYq6lRRoiL13No4Gc9MbiNzm2hE0p3i2HQ5VRujTiQf2FPwwz3eZSR88xP6K9mqaVnI/QQcPzfzigirNVY0NvSpVIwlrE5xjc2KVeWEGWUctANjPIL/xtL+CH4zfUXwnljMUyZv8JT9l4IRIOxqmqV1lilRpmI7ljOQ341L2rcPbpkZSWntc4HfxeEoZK4n82xbn3M54reMq4vAHXvV8Q/7IKqH383PIXRkeIncper42hE/8aQ8xRbkO1BnptTdfsXkhdBYsWR4IUmhIGr89j9Fmf3TQXXxbnIJJQvDHXodta4qBgmloYp6JnMSVueuwGv5fhs5BkyTHUVPkPImANC/kRtkSJCiYS4sMDIPBcanOdPbje4OnJZM5hrxPIzAbGKJb9259JMXseS8sy1AjF8PDPILPWNh2OmAuH7bHqP4ReWKSd7PjC1AMbwcfPCyjLEax
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(376002)(396003)(136003)(1800799009)(451199024)(186009)(6506007)(71200400001)(53546011)(7696005)(55016003)(9686003)(52536014)(2906002)(33656002)(5660300002)(38100700002)(316002)(8676002)(41300700001)(66946007)(66446008)(76116006)(4326008)(86362001)(66556008)(8936002)(64756008)(38070700005)(6916009)(82960400001)(66476007)(54906003)(122000001)(478600001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?CoWUHVdWDb6fJJZzGXGO4czopeOcE2o8j9ry2Rt8hMdxp3vehC0PxC7152?=
 =?iso-8859-2?Q?V9WHFdziZfcqq0Bwb1xXb/i/Nv3qrPOqGjGH8ysitGHMByy1N+3+o994xt?=
 =?iso-8859-2?Q?v3nrXmEejE3P/nRSqBhj6spuMrvCRX1xF8CbKZqUmAj4tdwdlwUKSvroQ9?=
 =?iso-8859-2?Q?CXoYSTErxGQ1za+JU+z4Us6gUnlF/O6Gs0hNP7RdOBrpg0npdiD4nDfeWM?=
 =?iso-8859-2?Q?wQNU8nIDxIF/i2KvN4YjzTTgf3DojgWAMdrbZVI/g5LXaHSRAar5Z1t158?=
 =?iso-8859-2?Q?CbmOCn8jjkj3TsZeH+7CYzvcnBQPmNSbhJ8/Nn5A1QvKQDzJ4CRry10/Dk?=
 =?iso-8859-2?Q?lVdnJWbJI39dacqs4Yq6Ogltww4gVw7vyVV8yzyTuhvXFV6Jg7f6J/fPDI?=
 =?iso-8859-2?Q?qHtKNL/H68u7kqI0AQxxZxiyY9TEOUxHKC+FZqQdFguODj6V7ALJAqJw6u?=
 =?iso-8859-2?Q?2spKDWwZHRcssBtAWwphXgBAWhToRj3X81aupCX0ZpaESpYLXuM9MXGy5o?=
 =?iso-8859-2?Q?BdZpkoU0I21HHkW3EnWWXPwgpwm8MrTAUnaZFdybaHnVtiUhRaRhYUB9gD?=
 =?iso-8859-2?Q?GpqqhUviCfgAI3QmQrkp1WwJwDl6Ffz/9K2veQmHCjoKov0KiCRiyCR/YS?=
 =?iso-8859-2?Q?fyHx9C9rXPbu5WFV12M6ohFB2xMbI0HAc+4csCkLdatxcY8W9ZTLVhs2nF?=
 =?iso-8859-2?Q?ovq0SGyDpMUDX+VHpE1ZnJkmzr6B3OUiwH30tQEL0Icw12mt4aTTf+9yJe?=
 =?iso-8859-2?Q?s8fNsaqmBAcASLJWD5nMcePwwgbObHUOhKg2AB865VkFhyOILBWKcn27e5?=
 =?iso-8859-2?Q?rEz9L5V7ivCQHuBDunmoP5Vh/SIWhxQDHzz8kxo5KpWcaD2VeRHnuI/oj3?=
 =?iso-8859-2?Q?JlzYf3/JJaJHLeZ9Y4o+JWxBsRO1l7IoGwhkwZHi8RVedCFhuLqiPRxB8Z?=
 =?iso-8859-2?Q?04JvmD8A8/4brPEwBymTrJR/9yuP0jZ4rp2RcscdLtUR23lQ+BkTIi50/R?=
 =?iso-8859-2?Q?TeSM6K4ewGx+CPdKvgDBYyp+gxBIGyUD8f0L+977zOWl72JWiqE3xtwQLF?=
 =?iso-8859-2?Q?T7LljSTHj63C4jImvG6EUu4AYrHQLHluJFN+ftTYMHXPY5CAMJOAM19mvP?=
 =?iso-8859-2?Q?jgs8FcZccip/CNiCNkVN5ElsBMzXia/B6+OQSr2OXNyyTh3mN6lGpBc8K2?=
 =?iso-8859-2?Q?LUDCzCJkAgr6nnBgY5E6mlZz5OmiJ69FXh1riAnwbpf7VLju/Wq7GM4WGR?=
 =?iso-8859-2?Q?tzgAJgkCemcESjVRzB9uTit8FNKg9BB3I0i2KHb12dU/aRPUAl+thrIHpm?=
 =?iso-8859-2?Q?83zSK9QHaifxJR1Av/ehnMByuskkZ9sPSIHFD1w2zndm+NmdNGYzls1vcQ?=
 =?iso-8859-2?Q?IuMfjhoEpsy9xWR44R9LR8HxuswoJCQsL8K1UNEWWlJ78Kk/UiMVS+mrIo?=
 =?iso-8859-2?Q?MtSw8Kr4T51FNTaiSjchMCFT5G+PYrBas4S+xaXd25wB76opZ47mW04UEv?=
 =?iso-8859-2?Q?shPQp4/5eaelS77Qqovl1dxBGGca9Xjn4mSoLnI+kWs4HslSVzUT/ALspT?=
 =?iso-8859-2?Q?EQGV4uRQDnZdOarUSt/YLPuNSL2t8V8y0pI+jS7z2UDgsog6Qjr6Hze/e2?=
 =?iso-8859-2?Q?mhcfxDuHtZ9f0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91a250a7-6486-4a60-62ce-08dbaaf01bfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2023 13:34:04.1158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CrjI0ukhfAlA1HGy0rv7hBoMfh3jCAfxfshd5f2ofoiX/xrrkvMrQXqfgrmz7nFLmgglCDXCNAdliZIxTBnWuqyKOSBl9xOtp/MPs0yhf/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8549
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693575250; x=1725111250;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2jfeYN21Y2iYsRZr0nuy4SKYykcRtT5xGkbFhP+aKJM=;
 b=BY8ODCs9llJ1Ei2JFLLRj7tett+ekJgUH0r4rpZCgJj28sy2XEniRAwB
 OfN5g6IWxq7sZGRdIx101HWNut8ui7gSH5iFfc5mIcJk/5Q+x121DOYd/
 GVlx61J5+0caB6HJ9brWvRajUymiZ5HvuRlfe6b9dzUNkutZf9tXLSWK8
 IbBBy1tRxYYviKSedyiiidonHOkLcTpGE0813bf/4MZeeiUQkdrAlNZeq
 CElfuPPOAytFp8MRDmzhi6KIBU3z/fZM4xNgb1N3AnfkuiHV2sNZD1t0P
 ap6xnKKfGDbvgT+yfWaRE/WDT591FqtM/Wmb4HthFLdeD2n3cSD7HF4BH
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BY8ODCs9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
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
Cc: Jakub Kicinski <kuba@kernel.org>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ido Schimmel <idosch@idosch.org>
> Sent: =B6roda, 30 sierpnia 2023 17:17
> To: Drewek, Wojciech <wojciech.drewek@intel.com>
> Cc: Jakub Kicinski <kuba@kernel.org>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>;
> idosch@nvidia.com
> Subject: Re: [PATCH iwl-next v2] ice: Disable Cage Max Power override
> =

> On Tue, Aug 29, 2023 at 09:12:22AM +0000, Drewek, Wojciech wrote:
> > In some cases users are trying to use media with power exceeding max
> allowed value.
> > Port split require system reboot so it feels natural to me to restore d=
efault
> settings.
> =

> I don't believe it's the kernel's responsibility to undo changes done by
> external tools. Given that the tool is able to change this setting, I
> assume it can also restore it back to default.

I agree with that, but we can end up with no link if we don't restore
default settings. Let me explain how.

> =

> Moreover, it doesn't sound like port split won't work without this
> change, so placing this change there only because we assume that a
> reboot will follow seems random.

After port split, we might end up with no link in one of the ports.
In dual port card if we increase max pwr on the 1st cage the 2nd one
will have max pwr decreased automatically. This might be useful if we have =
port
option with count 1, the second cage is not used in this case. If we then s=
plit and
use two ports now, the second port will use second cage which has decreased=
 max pwr, default module
used there will not work.

So, should we leave the restoration of the default settings to the user?

> =

> I think the best way forward is to extend ethtool as was already
> suggested. It should allow you to avoid the split brain situation where
> the hardware is configured by both the kernel and an external tool.

I'll try to follow up with the ethtool extension.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
