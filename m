Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4CE47D023
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 11:40:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF8CB4159C;
	Wed, 22 Dec 2021 10:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5GDHO2oalzxr; Wed, 22 Dec 2021 10:40:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB47A4155A;
	Wed, 22 Dec 2021 10:40:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD0681BF599
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 10:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6E6983180
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 10:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jUT6ctLEUPXj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 10:40:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 481628317B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 10:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640169617; x=1671705617;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=teZZv2+V7I9KThkEaJryQAL/D/tR2sxR+DRcDmXuXEY=;
 b=hf2AN0O4j/uC9sqpifxzVSPbnMicEt3DrRzMzr2gjHmNOriZub30dzRi
 xPKHN1Ej0sYmcFmVlHgK4+n9QTPbpcxJz/9/PjLrZW1nZodFiLGrQZvrj
 vpWFnvSztfmJQ+PbvSQSiiXj8+EQ7NE8adv59uSRY9nbl4QJlmRQkthhf
 5vaeNrYAq7ZzlYoGzDIBO7FxEyye4bgYXRzNMyEXT+Y+GeQ1jDKJ1CSKe
 x23xmHKsTbTidkWrDm1MnYJP8+WmMnk4Y+XcEDKcCG86WpFERNjojMuNX
 fyx1C/c8BciMgLnsaJtdnR+6P3695Gy5KdlpZHLSLFSH3QO3ZF+tBe7Yb A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="240818279"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="240818279"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 02:40:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="586979213"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 22 Dec 2021 02:40:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 22 Dec 2021 02:40:16 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 22 Dec 2021 02:40:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 22 Dec 2021 02:40:15 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 22 Dec 2021 02:40:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nKdMM9/3vetpqd9T4XnQh9MH+a9VpN/blcuRhzLrrWf2aOjsAb2uCDnAPU/qcyFpfXIpqyldQqgHwF9ooxDjQJnlk+xXy+TrAcj9CDS9JeZCAdBfytXZzg2sWAX+BECWsvCit08gGH+CFw0Iyqv9Mb5IQZhKXjxv3kuRHimnKZjXWbV6qKM9AyJNuz0YV0C/LJEY5cWg3qFK6gKVx4T5SfFYp+oyzvX4eydltPGWc8t/uWayU+qYsMUY1GqXyeUfHysZ06BQuAjjkOWS1qJ3LxHa1t4GhepaFMaggxCbLyTM01KCaYmzHnB/oH5PZJ9lCxrtH288yToCkC7gPphzMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sgmblRo5+dVA1FZ1r7EwstOA9nNta8WYgVi5gRN+6KE=;
 b=eOzvKA5VEvLl6tbhEASNRQhkAAL3DTZFlfFYGLOMv6l4ZZS42YkcU6FPlfsyLg5BIwxkN5iFNZoRk8weLW15BI6Z5FUrfyfk5Gp3FSM0mW1Gq7iaRv9kiZ2hadWF9I7iAt6cM3u5HSzcRFehQ8emnJRG9ikIi567n4jqbicpxKbM+rBdzJBhhxiFGbc/IvsLLe383VXBA446q/V35VmVPf59JMh+3bHxd3rCwqSlRhkp3bhnCdPJ71yBzPmE/0bsqEknfb7gUYXEkTAxF88/vPPEq9ASCzvATb+aArQ/F/EphmmM70lgVrd+oJmhRVSOnrm2tnPR5kSL4ucDFl9/bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Wed, 22 Dec
 2021 10:40:13 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4801.020; Wed, 22 Dec 2021
 10:40:13 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix incorrect netdev's
 real number of RX/TX queues
Thread-Index: AQHX81KC8/xj0ZA2SkO75LK4XAHVKaw+Wc/Q
Date: Wed, 22 Dec 2021 10:40:13 +0000
Message-ID: <BYAPR11MB3367D8978C93AFFC27A64BAFFC7D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211217142905.41053-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20211217142905.41053-1-jedrzej.jagielski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2186e86-1b0d-4741-20a2-08d9c5376fbe
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_
x-microsoft-antispam-prvs: <BYAPR11MB3207F15539F3AAF8C9B31015FC7D9@BYAPR11MB3207.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S9E+6s35kIfw9vrm7yzlv5uaPilklR+RcxVdLuKLhRQdBU+SHq7l6cU0My4gSfHTunfSuDncecIrGoGdUjOiF19y2Dy7tJLugLGth6rlT1Ce2I9ZKIJmZa047GAkpCuxQOyF84zFpL5t+mJjmg5gh1iTIL9cgKVq/L3qYJMoyYuSak6B1UbXE+hrYtAqF+mDKZX6Drh7YgirN0QeBG+NmFiXedAE5bubtWdonLQeEUunZi6JJ3k3+jylsCnb2aN0TywwUIFcJeVFmfOgIj4Zw6srMhLOS+63XUeKM7Zl0aF81iTKM9qGq7A/apWTXivzAr9VcFRjVY1JR3svoAWhR3ce8KfHdY/jQZWZYzX8cdCR6z5NWICHYCudWbbkWT3BpOfpANsTlhjjiMuUG7SRIXykky6Qz7uxRM+d5NG5OAHgVkaQP0InUqqUq5yqnVjf9tPlKYxh9HzdjY714r7AVX4A7JIX3G+gwLLyRx3+Nw6T0Bv9Yxub0DfA3bWLovotMVuM9qe6ATmDnTWpgf5+2c1fnESAHNSF9j6s1rD05NqgDg2dHc2Hmb6nUP1SkQLOV1eZ7yBegmYb/pMSHL2t7887FvQBsAO9ZBartvJnwRZJAeNZCDnJmjQvW31M5bWoJMB2eDAHrpKqqd6JTdgi5Y5xcr1BG7gYPjRh2h6bUxAIHIGPpXjJh2xWJGjD0Kt0AXa9Xq6PABictQaQGC2E5g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(8676002)(33656002)(186003)(38070700005)(8936002)(52536014)(55016003)(6506007)(64756008)(66476007)(54906003)(53546011)(71200400001)(66556008)(107886003)(82960400001)(122000001)(83380400001)(76116006)(66946007)(9686003)(316002)(2906002)(4326008)(26005)(5660300002)(508600001)(86362001)(110136005)(66446008)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nJh7UGUVgqDC363x3uErF1R5T3pmY4Sruc065Yr1hjkFCj4/Zt5MumNr6eud?=
 =?us-ascii?Q?N3cpZXfDDgPK4I0Tf3aTUkKYHmzBtodgzDMxSqj0iOJdKLMy2q/XpR+X6Kpj?=
 =?us-ascii?Q?1rfntdDEtCuQgeSGRuq8UpMmFA2xFqUSQdMpxILeqkMfUfb5khzGHiUjlSaL?=
 =?us-ascii?Q?2ZP5q4Gev0ixmmF0R39Laa3jJ+aP9cj4eClTRFHsKAzrGWOSHz1yT0JcGFds?=
 =?us-ascii?Q?0hrHg1GXiPwHvBbCdMu9eNJRY6S86FAvOSlMlb/w4cAxu0Rn/94O7wk5tXhe?=
 =?us-ascii?Q?N4EYN0kt2vtNdVLFgB0x33+414M1Mt1l3mGjGqvTPTKWaANhppEoDM1Y1FMl?=
 =?us-ascii?Q?x42NG6cRkQusYcsG2frOWWA/lfeSI/brPTylaq118WQI8f6hD/RCbNuBheLQ?=
 =?us-ascii?Q?TyD4p4z54MeSeX4V6kCqaFPF2mSEWVha9c5q4cKhkFZoro2QE1AmvA2mJKww?=
 =?us-ascii?Q?ZgCCbmKwuwy0BXM8Y357BaEoDmMFdso+WVFTK5FtvZ2LZF4Ayt1eR4Ru6tTR?=
 =?us-ascii?Q?+OFoXKbGxz+raLar1LOwdziP8rTjiP2e/S9X6hjaG5hnqcwRUW7gjZWkk/xm?=
 =?us-ascii?Q?Ne0w1VavsG1E+ulLb7YaCgrKbjx19KXq9WDAn+MEwTfQ7rTBOTswxCRHn8OR?=
 =?us-ascii?Q?LZpBxETXjttjuFJqsitu+jHCzhVby9FwWstSE11Upp7lgNvv1bzeDaM1XGq3?=
 =?us-ascii?Q?9W4lokdVx+Q5TxHADjwtsDm6abulMpxgyBNzLkAU5bm90yD95z/5Rs143aDt?=
 =?us-ascii?Q?Ozh0HkM4pQUikkBYkMoSp5fT2YUZ/idkZxQxRWufKvZFpyuyfsZ2Ro5Ib4yx?=
 =?us-ascii?Q?IWKJGe7oNGeT3YriJjpgcw+UD5Bnt7b0Shycm2IrqFs8nT370kw0KoYpnWDS?=
 =?us-ascii?Q?edsE6CRjvZcGVdN2PLvzYvZQXhGVdkpzHYiGqsjYv3ztWFeu1ycwQX7R2OQm?=
 =?us-ascii?Q?5dxZ+ti128YSpRWb3Ft1CKwSUYEUdMWY4dqvoXmFOE8RiJZ028LT7drWErcM?=
 =?us-ascii?Q?RrsaxmhRM+HaFaBJc58FIu2R5RDbTZtEkNY17wdYOZ+2VauJ1qHMPAGUSK6x?=
 =?us-ascii?Q?x4Vj3FEwwE6PbsSeFQ/MNWZXuzir+Y3zlW2Og6GBYhw3Xk6rq+OFUQndfgx4?=
 =?us-ascii?Q?totS4jH3pLMa9l06llkLD2PhSfDBhKIVHYV1m2M8heqQ/82gBt1Bp8PyUuZM?=
 =?us-ascii?Q?BcGSxsXD27Car0T85XtsWlH1JyiSqiyOUby2FJS4eDRbKLiWynt6GCOiPHZD?=
 =?us-ascii?Q?NNTbsZ0g4T9BMLzSz798COU7veqn+uq/7/DV/CO6jb69gGSnAI8tYA+3pp7a?=
 =?us-ascii?Q?hW9zR3prVkaWAKH2fwxm5H5stEHIZ3Z0ja497FDFR9lE5ipIXyLtvWmiTaTw?=
 =?us-ascii?Q?7ss/shEnT91QpeqkgtmM6FYdvrXg7Xg5nBQeCbIe99ilEC1GxZGUg+LklLtI?=
 =?us-ascii?Q?Bf5YfYAiF0+nCsB8OVtJZQ9AAOZjJnDSuIcAR6Y8rvhkCsqXq+Hh5rWJGpcH?=
 =?us-ascii?Q?974ed243k/Hr2cHE0on/aXJnZ0urnYL4LTN6bc9B3v1lgpVhskXwz+lMm1AT?=
 =?us-ascii?Q?mP52xZbW/AKPf7rJKJ7w5KqGVgc82BlmEKT+KeBuK0nx3nM7zLc9DkJcwQHj?=
 =?us-ascii?Q?zBGfpjdLAyyFfi85yjilH0w=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2186e86-1b0d-4741-20a2-08d9c5376fbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 10:40:13.7146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rTx+AMtwbkaLzUt8eRdZz/vVqSJRHENo63Qcbabv76QJ5ln7gog5l+HK+N1NssvxNxmi3A2vu8CWM3T2uKbRtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3207
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix incorrect netdev's
 real number of RX/TX queues
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
Cc: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Cieplicki,
 LukaszX" <lukaszx.cieplicki@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Friday, December 17, 2021 7:59 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Cieplicki, LukaszX <lukaszx.cieplicki@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix incorrect netdev's real
> number of RX/TX queues
> 
> There was a wrong queues representation in sysfs during driver's
> reinitialization in case of online cpus number is less than combined queues. It
> was caused by stopped NetworkManager, which is responsible for calling
> vsi_open function during driver's initialization.
> In specific situation (ex. 12 cpus online) there were 16 queues in
> /sys/class/net/<iface>/queues. In case of modifying queues with value higher,
> than number of online cpus, then it caused write errors and other errors.
> Add updating of sysfs's queues representation during driver initialization.
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2:Fix "CHECK: Lines should not end with a '('" warning v3:Add error check and
> make i40e_vsi_open() to use new function
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 35 ++++++++++++++++-----
>  1 file changed, 28 insertions(+), 7 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
