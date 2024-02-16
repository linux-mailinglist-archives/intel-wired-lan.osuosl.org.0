Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63DA857F75
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 15:39:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78F1B41C25;
	Fri, 16 Feb 2024 14:39:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zxaWDUNsbelf; Fri, 16 Feb 2024 14:39:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72828400BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708094385;
	bh=qICeHvxb3LeRUzrzMLLYZeoRPu3ZNFZF2rzuOUR5ryE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R9a7ZhnzQHwNnNcofn6ZwpHFpaU0zHpRcV9UujHiyyO7t6aSolcWwWzmoeEgtaqXS
	 d30MD4dvu8NRefCeXNie8hLvGvyDVyXMCtAVQZskrWMnDDOXWaagBR+U+rq9aANRqm
	 7Msvk2ttdczz8FaoHmN0Wi0d+NVq6+lG6BIMMW6rzriUmzYsXPQXBsWqUIiwVTSSB3
	 2HDLVEJjJtU0rKqEHXoP+46EVLiBPrIckc4P69sZPWv0A8VYPpVlcWdpCDAZyzgVZl
	 /+bAZj1LWh5fOSG0xMroOs8G2RoXmwLAsyt2PLwCoHNm8SbKsSJZxPNxWIiufC3n4H
	 7059vG6WsdZqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72828400BB;
	Fri, 16 Feb 2024 14:39:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E27AA1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D48CC41C13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6GzmJtsCYu7Q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 14:39:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9B500400BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B500400BB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B500400BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:39:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="5188927"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="5188927"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 06:39:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="4218892"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 06:39:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 06:39:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 06:39:40 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 06:39:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mGgxhpAJKKnHgP7nzOgE4Zrf6K7dZZFIe0TSMGJq0fxMR4K6swqEm8xSJEDAd3XARGf3L0yUSLwsEqkzL6QYy7qJilMDKMKoIwTQtQLY0oM9afGc7f+KS/56K+bV9WCOYEheccjCF8FSK72wIjCq7z6sUK/qDZe8PQfR/kqZ8Zl6cJge6FaR0zoasmLvIttTXjPJ3vRRnhl2YPJ+VWpLlQ07ZoAM4K9aJtPERLOO5FUS83Q0DRj0jqWhj0JtNTHdCYmOKq6F0owfk3T2KleOPW4sYeM7qwQR0roIR6VYJ8iexqouvQAysQWs3i+PvVvqfT5IUHhJ6+T1PRexVXhVSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qICeHvxb3LeRUzrzMLLYZeoRPu3ZNFZF2rzuOUR5ryE=;
 b=m+5IztazTnbRmx8qLmcKL3STdtgrVsadoNm3M0Sgrt1lGv/IiTHacr/Z7jWATLYntWoQmK3pDEtiVOt7VtYyjaA3cxTTfq27i78kJRaTXydN0vRvBIf9A5bgfdEaqpk9DwlmwP/8+sBVH7C3SgE8TLE+WFArKh/CQptTbxKfA6kCsa3wvK/ewS1Wg7kkuVa81zq+B1T3vLVTI4jQVi8cGKkewaJOTbI9O63U40no/KFdiRKXsAjIgwqhgPX0Pck4zAeS+8ir39exXb9AqPU6b5hurG+gXz4+fAQ2G1InDrm/v9/BsQtBK1IJhSVQWQfmHN7GmhNVqIf4hW/NGlv+KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB5185.namprd11.prod.outlook.com (2603:10b6:303:6e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 14:39:38 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7292.026; Fri, 16 Feb 2024
 14:39:38 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 1/3] ice: fix dpll and
 dpll_pin data access on PF reset
Thread-Index: AQHaW57hzbcQjq2MIki9e5vCFJ4h9rENFDDQ
Date: Fri, 16 Feb 2024 14:39:38 +0000
Message-ID: <CYYPR11MB8429205AAE82DB2F8C93F934BD4C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240209212432.750653-1-arkadiusz.kubalewski@intel.com>
 <20240209212432.750653-2-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20240209212432.750653-2-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB5185:EE_
x-ms-office365-filtering-correlation-id: 9a911383-0a96-4b7f-aaf6-08dc2efd1a78
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tHp0OdFMYjqKfa0xZVRFh0KN+BAMXM7rjVK5s2CNvYTuRbytpyyZWCu98fEaJeZMNZt7qiJlHlUBs8T+A4QXIEdGWdXJ6G3aW34dWVU+byLlVSYrGEZosK4GtRAxoxIDGaFgHY5U9390JcSmWSjHL0+Ms+4W4UXcZoYlWTQJ7KhnUjndE23VP4KSGfRUQDVHIIeo2uH+lu5qcZsbGGCzBsdnHgI0LY4lrynCxZ4Qkw/jxXNYf0ZbTdREIZz7kxLW3jIiaaGfFXSNenWLLvYot3G1uHqiJKH0XyE+HuQxPy5MwfxfBu4+sadEslOAOHMFL7RYMAxCNqTPZKIVXZW5wGxPVNNaiVJ+VPkkM0Hs2JT+Zy1/uibxmAH++XTYOVRtrp1NsBCE97ZYrVXZ5+hehZA/GUFLZddV9bosdXK/7ExduM83QHeTaQEE0SNxVReNhvHzF5kRbuCkHqEJTwGUoD4UAzlM/y9HpqZ5P0y07Pqv+JjjHKcdbg82kUT2I2JyoFIZsX/mtIpCKoBX48EoPHoL0gts2fldqiPxji0lrbFCW4pBYiOXtWiRnplEpLpIYUCdkiIn1cQUDZQx+TG9tUG4edxep7V3wssBRs6dsu/4jUUroQy4UQDMYPQ+X7/j
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(39860400002)(346002)(366004)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(2906002)(38070700009)(5660300002)(9686003)(53546011)(478600001)(55236004)(7696005)(26005)(107886003)(41300700001)(71200400001)(83380400001)(76116006)(6506007)(54906003)(66946007)(110136005)(52536014)(66476007)(66556008)(4326008)(64756008)(66446008)(8676002)(8936002)(316002)(122000001)(33656002)(86362001)(55016003)(38100700002)(82960400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?N9iKqxOIbiJ3HtjRGH5lIAxyEHNTQRsGiLeq7V2lKYHrsWW1elR9WQGm8cQr?=
 =?us-ascii?Q?MN8B6+GqYiSvZh6MlQwe7YWU7shX6xpSfysQ7UpINCmGzUXLzsNXIootW1m+?=
 =?us-ascii?Q?xEjepLUdGnwxl+3P/XssOaURioWqSSdnPgUCScIgCmra2IEBgR9xv/hD1U7o?=
 =?us-ascii?Q?+NYcTeRyNiDsFXJ+Kr7PrmH8GgObJ2+abxSAP1TNWALl0qT/Bw1PSC/7qUGd?=
 =?us-ascii?Q?6IefBwT+lgL/nMlunjv9cuJVSSdBRHgcrnoLAueNH8PEpJFFPNqHORtw2bha?=
 =?us-ascii?Q?EfBMnbZSHpLmOhRZYu+dPEMSo6sw93QxKb2pA6l88ZZWhR8jVfXKZ4Z2zYR7?=
 =?us-ascii?Q?lQUKhoiJtV6JeGxn6Y6it3KSBfgWHkZBx/k//YmemzaZtsNNqaVjlFQw1YKj?=
 =?us-ascii?Q?NUl7vV1J2oATopUtwHQH1aLA6bHOLtbS2lWYTSYiy4BTpnVCP47vaiGOVHH/?=
 =?us-ascii?Q?K6F/lb6jgIMhLAPhuuFzJThJJgukjMyYU7AJII6e0BrjihUBocLNmy3hFwo6?=
 =?us-ascii?Q?XI4wh+c94nvQthd2Ihg0Z2KJr4Vfj0srLDCoxSOr4HiW/J2686OazRwbHgOa?=
 =?us-ascii?Q?AJrmISuyDzxvTQsgCVc+VMALQ0zTX+DQr/ieWwG1XnSvOlQ9eTgqXVPaHaes?=
 =?us-ascii?Q?6W2qiHaWMiXVgZOHFVrm+UMm3JTbUjI1Gv09VuR894lJ6M4HklVjd1RcgYu/?=
 =?us-ascii?Q?YZkILm04LTS4zQ0b8V34UtgLMe9MyisLC/rrizlbLOSO/9ip+CxPWZDyEx6J?=
 =?us-ascii?Q?A/Z9qi+4ZcnsvJvttKj0q6nHA3XwwpBBxB4tin9nA4sVROWqQb1b8rCh0siF?=
 =?us-ascii?Q?iSmbqqlfNC9Xtkve4F+WZ8hbDeMlQ1FfqRMxkAYlr5Sj5jtGemtzZTGnG8y4?=
 =?us-ascii?Q?1UaL5p+ff/YVT1dHEaDq+dX3JKHuDpF66M/YmPrBIC/C73qmHoS/YI3dBjrU?=
 =?us-ascii?Q?F1mIk4lP16Q3Tt3RO34aXygXqlZUML5Wvx3oHqwYdSPGiD+X0BdWOfEeI9A5?=
 =?us-ascii?Q?4L5M8efaqeOMj87aKAzMQL4mdCiDzV1qE6ys/PpKxf3dFCuKlm5oLokAn0U5?=
 =?us-ascii?Q?0peoBPx5ltWnmSgcpmMYZsWZFcuf8gUJSSco0cxPcD0ixXlWIixtW76RT79N?=
 =?us-ascii?Q?X7pWsUosUTIKoccsKI3Yla8R8GsGCZjjhd0JNfoACwGYM20bwWqb4icy4Wmn?=
 =?us-ascii?Q?2jTlvwNCwjS9rqcUM7fBZlfcyJTKs1uQf4TD+eYZXZQtdkZdj/gT9vIlDk7P?=
 =?us-ascii?Q?CASP1cWphF7tlNOuVUXWYvivNZ6DNRCBLhKdpSOdrGTmBMIxwAUGW45BTrt5?=
 =?us-ascii?Q?/6dSEp7vvX5OZpedKMyuoTSu22d9w2c7RvPuoB1ahCBdi2B5g3yFaXxf9EhW?=
 =?us-ascii?Q?8xmJNiS0cfSIAiNctZVO0iJok4sudhxMWIfuKi02QdSheboa+caem+fY+NSp?=
 =?us-ascii?Q?L75is4UyDmkKPxI/MWcv2CUYtVDATJuxJ8Scx7GKHGKnliVxbt1ecvvHkLOq?=
 =?us-ascii?Q?iuu+9fpUck9KLAvAuIAAPRRgZNcM8gdZttZCX9QwzcqpLY23+Y6O4vTj40eO?=
 =?us-ascii?Q?LhjvYGIHHU6gqBv4w1fnpFfbrsqqg5XEiu4CivE7DuJNVnwewu6n4INAm704?=
 =?us-ascii?Q?Jw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a911383-0a96-4b7f-aaf6-08dc2efd1a78
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2024 14:39:38.5287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ReXXoIFAYNvap++FPG6qpHcnXlInRUWoVz2txLr317oAyi1Lw/f0nrQ4A0inAbO/cVtKxMKBdIbmysldk59b/xcp1tujU4E/t2TPDH2Oe1Y8+DaY+O0hr7lEhZhIqU4H
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5185
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708094381; x=1739630381;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CXrAFavVuiOrtf66nl2azCRZf/QlJ3a8LeXCsUj+XmQ=;
 b=IFpdMbKMlZMYgludbEapioMDJK+RBrO/YuM0fULPDMAVeFxOtQY2JOOv
 AMk1Zo/rQ54jEF5plcPykmLvx4Ou42i2blJ+2QZHKKabN7DfPttQS6RTQ
 G737xjZhnFMiskfC82nTXlUusZTYwTytEkQIdco9DTLMF7qk9ioOEn/s/
 MbTlIHC5OUfC8w+ROl1C6pKDi2wUE3bk80TsuVbwJuvlwtuD7bmdk1kkt
 SgM1LSDBFtll+d2nxPbDk8TfVDAY/d9qs0mIMVDvVRIxUd2GRIgRqMfUY
 WoYNFZz7QQpiWqWWD/FYPBrZdYQLWKhHy7BhJ+wNADUGx/5rsaS8XBOdK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IFpdMbKM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/3] ice: fix dpll and
 dpll_pin data access on PF reset
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: Saturday, February 10, 2024 2:55 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kitszel, Przemy=
slaw <przemyslaw.kitszel@intel.com>; Kubalewski, Arkadiusz <arkadiusz.kubal=
ewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/3] ice: fix dpll and dpll_=
pin data access on PF reset
>
> Do not allow to acquire data or alter configuration of dpll and pins
> through firmware if PF reset is in progress, this would cause confusing
> netlink extack errors as the firmware cannot respond or process the
> request properly during the reset time.
>
> Return (-EBUSY) and extack error for the user who tries access/modify
> the config of dpll/pin through firmware during the reset time.
>
> The PF reset and kernel access to dpll data are both asynchronous. It is
> not possible to guard all the possible reset paths with any determinictic
> approach. I.e., it is possible that reset starts after reset check is
> performed (or if the reset would be checked after mutex is locked), but a=
t
> the same time it is not possible to wait for dpll mutex unlock in the
> reset flow.
> This is best effort solution to at least give a clue to the user
> what is happening in most of the cases, knowing that there are possible
> race conditions where the user could see a different error received
> from firmware due to reset unexpectedly starting.
>
> Test by looping execution of below steps until netlink error appears:
> - perform PF reset
> $ echo 1 > /sys/class/net/<ice PF>/device/reset
> - i.e. try to alter/read dpll/pin config:
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
> 	--dump pin-get
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v2:
> - remove newline from extack error
> - change "pf" -> "PF" in extack error
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 38 +++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

