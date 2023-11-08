Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 114277E4FF9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Nov 2023 06:19:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2FFC4176A;
	Wed,  8 Nov 2023 05:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2FFC4176A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699420789;
	bh=9XSN+JbcuAG9mVkGSA5OvLdd+z3T67mhVHrF1dhYsFU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SGjpBVRUuV9KEApQx3JxGBMkQiSmqpvCMw0iGxC6Pnr6eYUiV5t66muY3if5j4ojG
	 hGAwvm/x9s5p8ws13HCfwxpV0iyXrGCHtfI28CTqSVm3ZuanwkAAWdqFyWP2+hJq41
	 edzrV4iYBuSrQDh2jCt+tpz0m2kPjv7CMzdOCAIHUCTfuVnRIddee10u++LSM1LYNn
	 mDP4yXRKNbJtJ/1Yq4w76500ptgTz/j+FLy0PVDIDsPxoR09e9wWyHWsbK5xwy+6/o
	 VCMJiIoS36aeMHmZbWy343LCFXCFVU2vFK/0cfoSXQutey8OGjggsnuPsTTmFloi/g
	 H67v+C+jnqdHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dbPzwaJMPrFI; Wed,  8 Nov 2023 05:19:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6487541754;
	Wed,  8 Nov 2023 05:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6487541754
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75E7A1BF955
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 05:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D42841758
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 05:19:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D42841758
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ojYfeZsbL8p7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Nov 2023 05:19:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CBAB41754
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 05:19:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CBAB41754
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="11246373"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; d="scan'208";a="11246373"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 21:19:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; 
   d="scan'208";a="4071604"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2023 21:19:25 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 21:19:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 7 Nov 2023 21:19:23 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 7 Nov 2023 21:19:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hO7AvVHpn3/odpd/TG2L0SXUVSPa25QRXnEmLgIy+fJMduFdz4YvAF/Fmc+TRmhY1m460N4cByzLRzb2uRWdP5h3CJcDty3hB0LmwKC8MovCIxz/XtQ21px4ec7li9m24vE3NsJR+9VZDpBlOeEf25Tov1QHqNOcpLQPWXRaJzV1dr+bMJrsjzIv7nxKdfsomlpRgwtuxycLQCwstzMGoDEjYWDlChPtVEcF+T+z1j8lsRCAvueLaUsCPLSmJpUUYfSuot7bQDCNJO2c29XTWtyV43yekPkvJekE1mbeKGgpplQWjgf37wdDFmvJfqd4QhoWojhulCdpXiGA6BpytA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wZAjiDHC9nbuZydej6QojwgWadLMg8oExuAd4dRYTuw=;
 b=kOMd95GhVU9RONAiX44vG3zVKHWz75eOFqBJJ6kTR44OZSNzTGshdPPDnIoqWxk9tAhXpMqOTmWB9+dh+OsmKbYPGbX3njKZP2C+heptWrTcJ3Hz9C/znSkqaFnWmPbAmxrTX0VmF8zHEzMnXG0QbYwSlQBNFsc1GX770nBF5kVWSHQNWXiFXaAoSo9r6ttYnUFssewR3wmhNnnNw/lpoBk9lrG3uBue7YX//7691gaINJY1Eo7iZGOEb2fRA/6LXti7t4WgjCo2nODOSCbtw3hoc0YDyuFnAswP8/m8usY0KSEVpvklktqkdR7xI/mhaCdR3y7LoMNrHA7g1dPhTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by MN2PR11MB4663.namprd11.prod.outlook.com (2603:10b6:208:26f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.29; Wed, 8 Nov
 2023 05:19:19 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6954.028; Wed, 8 Nov 2023
 05:19:19 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Su Hui <suhui@nfschina.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 RESEND] i40e: add an error code
 check in i40e_vsi_setup
Thread-Index: AQHaBU9VxYtUUVFoL0uBf9Ue5fqwdLBv+Vjg
Date: Wed, 8 Nov 2023 05:19:18 +0000
Message-ID: <BL0PR11MB31227019AD4E1CE77FF8A5CCBDA8A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231023012024.18757-1-suhui@nfschina.com>
In-Reply-To: <20231023012024.18757-1-suhui@nfschina.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|MN2PR11MB4663:EE_
x-ms-office365-filtering-correlation-id: 9a23316a-8f3a-4d7b-ae21-08dbe01a4256
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sk1M0WE0nTjmAB8YVKP0S/KZ5TUKZ9CnNJH31Qs90FvG+V1MCaO+ibevoBSeSdsNsue36f3x+7uGgRIWSb5Rm1/3W1xebNpE9PBtvMRu2YTmZGlWb1J7H05gdynlZ9uCgA0pCH9tk/uWtPU7Iks9z4p5wO76u25KdlE5twxY08fqstU3vrXEYE5J4tZJJ5E5ShWkfzAm1UhBO0RhzxD9wqs7LfalyTckclw7Iz0q5o7rifGsZ7WuKx7KFXnEKP4SqSstVUKoHbkB8SJJrBz0zhceswEC7k+STzcBXVmLc9Qly6RwvpgibKLHPM2UMLHecJiu/BqAGskI4mCKNfwICMQNbom0JYhYYDskj4HldVAqZsQzbNECXt9yWCZkUgcW1Y1j819m6XM9TSql0bs77xLaKVWLBs9GfDJkVvQRRa9ReHDgxTkW340Hp2wCtpybjVQ0ou9AGOrSqZetNekMt8uty+lIW5nxly7L7zBQq86ncrVAUg5F0/uCJjaUoTfpoK3JTlM3zIymIFGWpt/NUF4/ei+hB2pvVVUgLNa5vJLF65C+aimCLRy+36yUP1NU9GL/bJcBY9AC8FAnXvN+7pLDyc3EbOBw6bg+0W+VHmE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(376002)(39860400002)(396003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(71200400001)(33656002)(7696005)(53546011)(6506007)(478600001)(55016003)(9686003)(110136005)(64756008)(54906003)(66476007)(66446008)(76116006)(66556008)(316002)(66946007)(6636002)(38070700009)(26005)(8936002)(8676002)(4326008)(83380400001)(52536014)(86362001)(5660300002)(7416002)(2906002)(4744005)(38100700002)(41300700001)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9YWYTmCQfAsBq2VS9ZydiSW4TIHPQX6DPcWXcyOVfA4Usbrg/0gpSJurxy3d?=
 =?us-ascii?Q?YBMLEmZJv886GZLJvGCcDgt+LPVdqzkqxLtfMvtQMcO1B2i8A72UdLvZeeIt?=
 =?us-ascii?Q?PrUHqQMZBz8AyUrDfy+UdxZzaacStulxfyQ9AFtw5ZBOQX0c/vKuAQKbxRZH?=
 =?us-ascii?Q?Z7ct0d8UYV29StSpb/gkbcULmh9J8XEsq06Gu7s5k+kFm54JTtGD9PJW+laU?=
 =?us-ascii?Q?4TnLczDHeBdDJ8eLO3iQD5s7LwTRPv6iBJiQ4DZTNI34X00cygVUKNWQVpew?=
 =?us-ascii?Q?C1qgQEN2iRM/14hbooP0ThecAnVvaHET18x+RAYV4Qlq/Sop2NCpsx9G0iUT?=
 =?us-ascii?Q?waVP3LNAPJWsIh2xyrunIrJcx6U1gpe2bruX778KV5q2csCc7/PEdf/gOLVB?=
 =?us-ascii?Q?cZ2ytiYNI2l1XTxhmt/gbfJc6dUSgRYJa457qdb2ubLAWTh9rghomgsjNKCw?=
 =?us-ascii?Q?rVsnT+baxS7uOnmYH1EdgTX6LShWnjxBUbUtPnvvoyEyS6yA9sCUJQOXSyw/?=
 =?us-ascii?Q?uqc/Wyq2DUwgwECj2yB07CR0bLiMtKLx8s9swXTvt/cwQ2EDgPln6GhKdTtq?=
 =?us-ascii?Q?JExe3PGS9qg3ZUxKZ9y9KjmC5lu3nR8dzDdJaOn/WHmDmaHIEbAnezq8QtRq?=
 =?us-ascii?Q?jD3rs2jbYwzCXv1ak4hXSOlAnx03wE9E76FW8XKHyrFvwfSym+mhHaTeltsW?=
 =?us-ascii?Q?hAjKEcNgTCMIvhre1ZxRppD15VeknH7zONbA20b8uMoozmhqBt1J/b4owu66?=
 =?us-ascii?Q?LYP5TY2cAlZLgqIfvfEYTa8FDIpxxNUiFw5kvl8x+9vjNdO0MgxnnzOs+Elg?=
 =?us-ascii?Q?a/CQqsXIN1RGXzrNJMFhR2BnLCzzRPNWX2JEy2sVKg8Wbg7L1UgYGlHQAgO/?=
 =?us-ascii?Q?o9wQL7PPx5f3UO2f8fkhbeIp0Yz/5W+IVNV8+E6MlVCqDsula25+heicg4a2?=
 =?us-ascii?Q?CA4L07AjkX1bfH2Ibd4xlucYgypC2cp52Cl3zEwL3LX/agIdX9GsWRdZQ8UZ?=
 =?us-ascii?Q?xcs9DF5FVAzcMCWoUIzG59Uij5aXcEbTGx/gaguwFIkepwL0z9pU/XipdHRq?=
 =?us-ascii?Q?LhW51oF6TfHpgTs4GdaB7aJir0lgOrI71Ijy74FgAOs3vKkWbjHcYW+i2/X2?=
 =?us-ascii?Q?Xys43DUn4dRuiQboKtxYtf/0vKRMXwkQ74UlF8HdnqN/u/5Iz0wPK2QI4vL0?=
 =?us-ascii?Q?YV5HLjCX+mVwLKnh6TytdJsSoKhn/oeSR+O3o4PDQWJ63KEGiTBCKNmLr6Cg?=
 =?us-ascii?Q?ZU084mBPmeOW1lr1UAOnJS8wkBIxYm93u1h2+9ZBOvP4nRNj+oLRtP64ebrB?=
 =?us-ascii?Q?NMDPBFQfzDp7Ot3be9O6/8QZG8MBiJuL/lXQjke++8K31YaayJoo+CB1iUxc?=
 =?us-ascii?Q?FIBlTONO7rDseZNRROAOmlcU5Kwbi65ovs7KbyuHzOeqf7uHYC114guUK5fU?=
 =?us-ascii?Q?EH/zEnLuDLfPQEykkrl9bkHWxgoo9wefVq+tMH5+8Y+jfzJvU9w+o9IiemGh?=
 =?us-ascii?Q?b114JOyJbRZbHr8/u9yx//qTIl+bRgZSjdXalPuv/SEQKgAmX+g9PiBnmMxw?=
 =?us-ascii?Q?IQ88jkjXeON+CJO6q3E8Err+O5v8Xbzxputej0hV9I56bVAUf3myzS5+qNo8?=
 =?us-ascii?Q?THDqM5PY72J75a/uIqX1RnI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a23316a-8f3a-4d7b-ae21-08dbe01a4256
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2023 05:19:18.9207 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vnLALPgpHcV6zPLkq/BTYxQ4J4UenGzXqGQn90L1DRcisIOOMQtaRp2jrcgHzi6XnOF8m4oSjpoUCml+E4o5VjWqwE77sxoK+YG0xTat6/W84OY1bU3VIc7GBZHbHpuX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4663
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699420778; x=1730956778;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W/4NfTJISd9CYoVZVT+mc7NKZoBx2vXNgNrPNAo8lsw=;
 b=cQlosnGiuIkbWbB271nLCLeC+lUHHR9XmNHag7zBOeFHFSBj6hSjV8a1
 C0nYakGK9EniY+XGvAJjNfx6cahXUU/9bCZy2bRDigIy3XVB39N0lxiix
 d1fVSaTfhkGVYG+kW6vHc/4/WrSgMhpTkCRF0kkQGHP1yxIOyxf2k6Sjh
 IhVQxtt9DqTTaB72F1VSEH8qUEE85+sxt+V54Oz1QKJiOPR9liSYH9pw8
 HM104cFz93EMYlSAKHvwBHfYeaYbnQQ9f/vPChGAG/BrW1CfuOBQZItHP
 0BhD5kYWKlDvYBicN1LhWloub9fafRPJNRea0aY5Tx03MGta45Mdqq5pG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cQlosnGi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 RESEND] i40e: add an error code
 check in i40e_vsi_setup
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
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Su Hui
> Sent: Monday, October 23, 2023 6:50 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Su Hui <suhui@nfschina.com>; netdev@vger.kernel.org; kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org; edumazet@google.com; intel-wired-lan@lists.osuosl.org; kuba@kernel.org; pabeni@redhat.com; davem@davemloft.net; Dan Carpenter <dan.carpenter@linaro.org>
> Subject: [Intel-wired-lan] [PATCH v2 RESEND] i40e: add an error code check in i40e_vsi_setup
>
> check the value of 'ret' after calling 'i40e_vsi_config_rss'.
>
> Signed-off-by: Su Hui <suhui@nfschina.com>
> Reviewed-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
> Resend to hit the intel0wired-lan list.
>
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
