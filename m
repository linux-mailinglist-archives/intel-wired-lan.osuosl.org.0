Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB2F6776F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 10:03:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F8A4416B5;
	Mon, 23 Jan 2023 09:03:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F8A4416B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674464582;
	bh=hyjHL7+0E0XAnn07Nx4Tc2q2l8kirfMF7Xwf1eXtv6w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SX4dU0+ifsHzDjkizWgmt0A6wTFf36kr7WP8AluYTOTR2gLM0dxBj/ohe9aFHEx+i
	 mJmF/j8wSOeeI/XgAA97vs2csGLS0U+Sx3j0bwnBF8FMRcOINpwcCxZF2aKDjlcCa2
	 fVCACKaAqvgUd51hpLTPd0pMFVB/KT4nvPU+FhjwmtraEnNsd9vXBhj1UYfH0qSuC7
	 nv6EMbfOfN5+6+2M3SEjOPQnPbLVi/xPrWw3xC2nip+IaFZBQS1jQzJ5+WVfWxqijO
	 fgb6iASCah1Eh6CakbG9SCL+vzM9vw3SNDYCZ7Q2ExaCGxL5PIt3FjGotiSuVUAEL+
	 DA99ZdenACI0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id joN62we-bbmc; Mon, 23 Jan 2023 09:03:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2541141677;
	Mon, 23 Jan 2023 09:03:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2541141677
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7336B1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 542CC60BDB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:02:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 542CC60BDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wSNBfKTP8sSL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 09:02:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C22F60BD5
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C22F60BD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:02:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="390501314"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="390501314"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:02:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="750253531"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="750253531"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jan 2023 01:02:53 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 01:02:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 01:02:52 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 01:02:52 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 01:02:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ggXepZ0BOFWAHghJy+UTnaASIzzG9KIPTDxoRt6g5Ykj5Pu5u7jCOlS2jMyyvGC77Gdom4/ShomSdfkP5VgGVbY3QTODQEjUoh0iuU1x9vhDzwemJVyuAT0RR+xnGYqBGtDXb9rjZxVEqE8/cBDq1m9mdDdVSjbydZ6NMy0QZjl6yEKQfSR/r2Rg7fGIGh/7rWYzP4KkHJoFOz+93s0S+3cRdmHP20SlJ4ad+Y/1ShpTtKwHCzBjcq2zRohHP8RptHE1457Ls0NRq/eYOo7US9gzGhtg8CpWZv2ILfTLJU2zt1BH4p/vtncMzKDRCFtm9CfkGY8GJ8fQFNvG67pZBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4oPCrH0tIWuxVR/D3WoN/E4aoPOPlrH7nBpgjXf4f1Y=;
 b=LzRnAeIjxIPwJ9PfRVfNd/SJpoo9sTNpeMljU+VbU/vZyXOFC50V8X3wO9J4kgvRNGJuc8txGomaF00bvZSqRfYrvRTGJoFLDQ1yILz3tWdCd2Mi8zrl1DDtPez+3L33fLFMPeMgq847/K2Sorj/6kwmPfeFEzeFuGcG+hJvwtaOabQI+YzuWe8B6qsFhbya4KWr4NoJ5q2tM9dK5MBlBR2Z3qMwh+rC6s18dbMAj8fTPHU8XI9p8Qmsuhh4GWHxih0RR1JNnDqG0BP+cNa6Yb8GrpeW5aFaew+KQo1LS4l9C+XPQVyNCC9P4ztzYlS9Dlw6GIdExLxvLFBfHdSNgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by MN0PR11MB5961.namprd11.prod.outlook.com (2603:10b6:208:370::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Mon, 23 Jan
 2023 09:02:49 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%9]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 09:02:49 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 1/4] virtchnl: remove
 unused structure declaration
Thread-Index: AQHZEYoIY1mkxGyOAECq8yrBdh37Xa6r76Og
Date: Mon, 23 Jan 2023 09:02:49 +0000
Message-ID: <CY8PR11MB736424A772DBF5A3ED543F3CE6C89@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20221216200658.59833-1-jesse.brandeburg@intel.com>
 <20221216200658.59833-2-jesse.brandeburg@intel.com>
In-Reply-To: <20221216200658.59833-2-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|MN0PR11MB5961:EE_
x-ms-office365-filtering-correlation-id: c8dc91af-56a9-4886-5f06-08dafd209a1a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HlPbkyArGY27sZRSVHRtmk3E8ZxPJDNzlAOJ3WWyoUHZ8N7slqcsPTuL43nRJcDgbCjWXu1SSI0aaAiDatEYuzFSSt4cQt7H5H6yaOxt19ukqPD12XNzEZeVpKWDiIITsQc1TsDXzltgE2I0YsG/gWuxXMSa4yQ4+Lih5B4Nl8C+jZAHq8Ta4k1eAx0lGE/tJ4V9GzIkVMhIhCZu28s2+v6OLvEcIsJ1guSSz8ZPJyoLYOyJDVwguBPyI4p8txBKWUOZSCe3wzRRu1z+E4OCleTxuyHWmg1OL9FJ+aSjOoX4uVUaZFai66q+jmZGfPG1OkIHYTeqz3yAUvsncP8kUnCFESSDiZrO5NhVyw+s8x6/mJnH1Uc/SVIojux/zB8HVjKk4cKdEyeRWbxYxRVV5/wcE+wZPBGQ4Scy8iSu3n+B2iZ69lfZqtqshiqgNswfsuqayMfFIARbH8Hjn3+MDSTi6tV0RThkAr40LYvgDaQtSZLttTSnIbB7XQnRT5QfofDs7UHuM6mS6HiQoHS5B28u9L1BIYvr5N9tG96USbh3aFX6d5LBGhorjC9yX6pYITw0TKDckxwlndnLmrLJS3khHGf5D65MGJCWol3wpRe/3QPQcAVJ8HOh3BTG2F9LTUKCWrLs9yz1bb4thnrW2RDpeYbaRwOV/70Xxlw4ZuCNc4ZjjCxSjTUGJsW2rKRA3Pd07TrjiesP+6Ha4TReaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(136003)(376002)(39860400002)(396003)(451199015)(71200400001)(7696005)(478600001)(122000001)(33656002)(83380400001)(82960400001)(38070700005)(41300700001)(38100700002)(316002)(6506007)(8936002)(66446008)(66476007)(5660300002)(64756008)(8676002)(4744005)(86362001)(6916009)(55016003)(2906002)(9686003)(53546011)(186003)(26005)(76116006)(66946007)(66556008)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?OlTtzCeDAYLZkuygSoDgslLM12aY1pVAmQ3YcjnMsfiQIZtq1ri4Py4fll?=
 =?iso-8859-2?Q?IZgYJ6SQBR7U6q9iNaJ14YksjIgh7jsRrqHzW8VQzypKeGEpnSVQNVkIwF?=
 =?iso-8859-2?Q?PMFVQj81dyNDgwIAGarg/2yJl0OBZEXowKSf2XhHAx1XKAKzWBu6KWGJYm?=
 =?iso-8859-2?Q?pHt3ecCajepR1BWJMnMlZqJXRw1syOarYVPMJnOUrutN5VWdelZ8lhRFaH?=
 =?iso-8859-2?Q?MdvfIeBJy6h4y2uRyBY9yieqiNEYRdWcjKPIWrNPnJVdjhmeDyT4Xkudy7?=
 =?iso-8859-2?Q?CDmXCoy98LKx6p3mCAz4wBia0Q5yKrlc0ehyxZcCfOvqlHGFoFPnz5g8+D?=
 =?iso-8859-2?Q?OET8jrTU/MhfTBsWCBNmiqN4zWWu6Xo2F9h+37gUIyQFGrLSvbIF9/ZIwx?=
 =?iso-8859-2?Q?3BZhv1sqdsf16+dJWBfcjSlrMGNYucYo3pGML9Uv0YN9r0jMxc6GFGLD4P?=
 =?iso-8859-2?Q?h5ZaY3VKd3GYljVG+AJZgq5haaBqY8JH6zcToTYeU0UFpccfcXujZjcpjd?=
 =?iso-8859-2?Q?RlEJqmyIzjufAFz1sYZaJ35LlQh6XvvXkVz5d0saGJFrsTDFL87VVKdj5K?=
 =?iso-8859-2?Q?/tMpHdtDEfYmDnBlis1QN98P5nphYyZrBi98we1hTjs+mMqgUq1dFliKM4?=
 =?iso-8859-2?Q?fRwa3Wk/nsCRBEKyVqu0c63MEWavQBJaW6pNzozT/It3/zQ/OdZl6DPudC?=
 =?iso-8859-2?Q?ZRMxVVkzmFNP+jvTbHt6VDV/rs2/P/DkmFbNyMca242T3QOI0FU+UN8Hhq?=
 =?iso-8859-2?Q?BooKZz9jJSNQIMvDj2aC5gKbqutq/vWWEwabV4JAEPltQ1aEjwfRR+MQ4h?=
 =?iso-8859-2?Q?HhS2tCtH1n5m1aSv6+QGrrTZjuwIzCPO0om2vrltBLFSSGpowDYcWzjWVa?=
 =?iso-8859-2?Q?XsCoUIzOfqHizpfHt2ndJ4zbv54AtCKW/h0oyey0eBcqglNjBaVaf+0O98?=
 =?iso-8859-2?Q?N3VvIP1RcpjNilYRGbug6pc6mgaKilWf3/N2WmqgfgJ7Cexj8zzGmIzmRl?=
 =?iso-8859-2?Q?NN4h37UoQeKBXo1+jvR/2ZHYyx7OsPTvOVU6RC3jM5j3muhWWWsbYK2gUl?=
 =?iso-8859-2?Q?9mACJj3ZrVioT4xk6bdCtcd/uLXsvlFjK+TMrOww/wdnkKH7lhQV3uf7KN?=
 =?iso-8859-2?Q?fe0uXWNrRbwwVneDsr3+mpTI9/6qXOTBha382T94nKp8s9E3JZvMeHkRSm?=
 =?iso-8859-2?Q?8YP8TymNcl6GcKZrD1VtKBvZT1NsIBa7L/4sPkIbnGWraldwoAp+Vn7eRm?=
 =?iso-8859-2?Q?0NHAIHt7LwWNO1bWJV+lKNar8Ayvos680z+xsXMMvXJR43PaZWlF0aHeiI?=
 =?iso-8859-2?Q?zSbXNc+UQ/xr52xgsVEj+sVHSpPo+ZKl+0kQFGgIqQbitkcd3TlKot/CLW?=
 =?iso-8859-2?Q?zASWApiY32a8ii5hoqKn/y/nJxW+RO5peKNDQozSvE4PiaS21UpC5T9ay9?=
 =?iso-8859-2?Q?Csr2Bsv4mrK5uAIIEoqgobiAuHqdhjXzyTv58KcTRXdTybbEdFo+z9+/8t?=
 =?iso-8859-2?Q?lrGWCTYGKYXEwXLTsIsTrupGSZs1CuKh/1ATZfFVBSoEkm6juMemazxuLY?=
 =?iso-8859-2?Q?UlIuADdmo/ymtAyf+0L2vFQmr40ELQORkCT4eut4xVbwbJLVMcjbWJlrsH?=
 =?iso-8859-2?Q?BiKJW5JN/qZ7Obtce4qFfAu4DeVgCL/bo8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8dc91af-56a9-4886-5f06-08dafd209a1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 09:02:49.1920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DsCKcbbEemGVreLznXQHiqKV74TkzI69SEZgJ7dCeO3VBlWriXeJCn5nGKFZiEc2Bof/7OYI509j3VgRT7IQSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5961
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674464574; x=1706000574;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Maixcsk5pAkjOmG1DlIAhXS2aKzUFosBWmmhHeq32Lo=;
 b=j2ATqAWKYbp6RQFY5FXZruTbGtOK7xOfcU1R3w7qspMuhzqXZKbm7JhY
 7kCV1gcXm4jI6Yf+aNtqb+clQytQt4YDMfI1skLeQ6p/Xhp7gMvgK8Dwg
 wok9Thgo4aNBEHdtFEIl1XleRkcqCXZOn7Aum4vyW4kxxGnIsknDYIy/R
 w7KLsa1nzgqepGunuu9+my5a920Rh0j3JwD8e+bPUaWLRFma12S0Ivvtj
 Yn1kbfWjZxaXmr47ynUiXXi2O6EVAZ/PUMS8czN53DGIChEMfaoz6o8jk
 kyWFijzP1NntQfA068hsdSMcrpaJtDzc1hhXfW8K4mYDbAO7Du5mVYbvy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j2ATqAWK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/4] virtchnl: remove
 unused structure declaration
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: pi=B1tek, 16 grudnia 2022 21:07
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1 1/4] virtchnl: remove unused
> structure declaration
> =

> Nothing uses virtchnl_msg, just remove it.
> =

> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  include/linux/avf/virtchnl.h | 13 -------------
>  1 file changed, 13 deletions(-)
> =

> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h =
index
> d91af50ac58d..b1cfa84904b1 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
