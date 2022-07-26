Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDE95817DA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 18:49:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2237660E37;
	Tue, 26 Jul 2022 16:49:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2237660E37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658854147;
	bh=FcHfCGjHMhBmlXGvag2HBh1IZYvHnqYVD3l9QWB4PL0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1WEiyxQB4ZwF1qbz6P78d0YSYf2fEOBB9Ma3wHMJO3lSUDB4CNe0YWZC2jmxiEcPj
	 smCpEWerrYfkyi0VdOwI8JRSOoAZD6hZc/r2sujMVDiwc6wKj9QekpLdGF37XmL21p
	 kcztqratruM9JuafqMUyxn2dut93XRUN+nNvq0vFkQ/0KnLabzxbo385/5UwmKfeRF
	 b88kK5khVym0BS4B+PY8OyxbS6NWQ3DKi+4x/NebVrQ+wRu/TW/5usa1RYhEuhCylG
	 uZfsozVJdArr1cDgtidioUXnKQlc64Nq7bmVZpj6D+7RDKFayOb0LbB3wBWac8SF18
	 ZFSF9enBwclhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jbZjP672e_t8; Tue, 26 Jul 2022 16:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8BB860E44;
	Tue, 26 Jul 2022 16:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8BB860E44
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86A4F1BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 16:49:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BB2840612
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 16:49:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BB2840612
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ti43pIK4vjQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 16:48:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4599340148
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4599340148
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 16:48:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="349704300"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="349704300"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 09:48:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="776369743"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 26 Jul 2022 09:48:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 09:48:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 09:48:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 09:48:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 09:48:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDmlwfZudXgTkVKWe441a/o2c659s7f8gAkaieOuR1k0p4tjv2yn9eWtuCzxoiu59V73G28WWD/MQN0LcbWtzzP8i6koooUiExbmQG5241Q0tm7YHtgiS/fpHIIBcllnKPHGFdP3qyzoriCtv4u1cjvGvBlKuTxsoyi4ECW2qOcP0LIeuWptz8tBvMox8z79HixnRa3L0utflJ1ELtjhk6/BGrXpi6eG7wf8QrR2UPTtWYmmIv1DF7Q4jril+6F1B0XfcA4b77NCQZCjjtecr2YrI7WN6NwBhBjhYXcobwW71jqMBbULVpV6HOuWH5N4V7rA3eo5WfR6GAxA0WSxhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fXD5bx2jcsGg/3DpoW1nJOTGErp0khlcypDDAGV+rcY=;
 b=fr0+vqTKTDVj+7kTXvG+4+zzD6k2BEUiD17rCXS8MT41RFPSkML/SFcRWExQ4a6munM91uTCV+ksB0FvNQZ5LXMH0XDotPqILoLDi09/gEnX+pIxia9jZaloj67chGxWDFAjl8HdkBy710Pfk+FHn3YaiOo8BV3gN/97OF3pSD8FpiCz8ZJbkVEPPYljOVDS9RckoRPa9/sjL5JzaLd2XUP1VKt/4Z58QdQ3bJjmcKPxxT0yRwDtiX3O4CwmnOrYAeG1Qv3+MtCX38roZJwxVhVPU8CKivI3GJjlHW66xsbTht7ykIN+tS3Ig7p8PnScDzChMAaow0BCDB0UKiWNYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by MWHPR1101MB2271.namprd11.prod.outlook.com (2603:10b6:301:52::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Tue, 26 Jul
 2022 16:48:54 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5458.024; Tue, 26 Jul
 2022 16:48:54 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 2/3] iavf: Fix NULL pointer
 dereference in iavf_get_link_ksettings
Thread-Index: AQHYm1Cz66Z11eZ2kkiWhj7jU0TNwq2Q4NoA
Date: Tue, 26 Jul 2022 16:48:54 +0000
Message-ID: <CY4PR11MB1624D4426D967A3677D5DC24E6949@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220719091654.329774-1-jedrzej.jagielski@intel.com>
 <20220719091654.329774-2-jedrzej.jagielski@intel.com>
In-Reply-To: <20220719091654.329774-2-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3e5007cd-a080-47f4-fe61-08da6f26b9cc
x-ms-traffictypediagnostic: MWHPR1101MB2271:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aqPNWiHaVhz0FieOmEG5UJyqAy9VUE89IPANBt76W47/FG1RcSne5P97ZAg9qX2Eq0HIGcrrhc/v0dtsuT237PpAeCMb7Za2ptgAUzUs7ohuxMvX3CQ9PKxe+YJXHWhiIUJOwEQ3y0bUkBzWSkLTvutX2iAVhqPwoGPVzg5Q1Q5XYQb15R7RDMA8lkzWLIjb1bIPkpY2oJfptnj5JplyZXOCiDT02C9sn/qu/trudohoGp8zF6TW2hoxj3RKbcCpLpP1JpUWrqDfdibm1ZZra4Cbz+EZxkuLUJ0uviwNVREassQ8oxR32hIsW0yfj5waIPKBCQG1/VvAvH0JKOAvuvHdCAv990qPXccOPfBV2H3dn/Ral11VgWzPlyiGoP/PLlZ5u4UbPtGgFWMuWVlA0v52YZXlTV02Gcu+JGonJlVYCAtboDcoc4YmP23HoPtnuJUs77OHOXql2Ljb9WukEp3PqKGgNSNE4BrHBpJNb/KBTcCr8xs71mnEvaZAfckH4b3/X1sNSny8MGvKleoQYc9nJWrp5DZY/LaLpkVoGj4PthnHMcV5XsBJVi68Gkkb/WOYTFLNi2iCE3fS68baeOSdwum1dOL7xDLugg+ftMMy+kDmgELnbZOOEmSut2N6+rZJAIjoa/0rWjwVXMYLdr9vdp6eu+4D419Ac95sMFvH1UzHeO5/7H3YGMCI5vfg9AT9IlswWU+BFrNGNntAv8k5Uil5FfoYD+MVckhq66tFwVFf0+3KaU2+KpgMhGZRwZFV9106SYGWaIXYoHxuLZlg4FMTskpb75naM+GCabTSYa4Wosmw3Hv1Nno+0tQa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(136003)(366004)(39860400002)(396003)(107886003)(55016003)(6506007)(122000001)(41300700001)(45080400002)(38100700002)(316002)(54906003)(186003)(38070700005)(110136005)(82960400001)(83380400001)(86362001)(2906002)(7696005)(4326008)(8676002)(66556008)(53546011)(66446008)(64756008)(76116006)(66476007)(66946007)(71200400001)(52536014)(5660300002)(8936002)(478600001)(33656002)(26005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BVs+7CuVElHhFMDeAyyqdlYm5XDt8E6Z/cr48Yf6fcbP5+HzvezYojFCKB/U?=
 =?us-ascii?Q?/k6/88nI266I2KYGH/I6vsX6e2My/WBvKD3vI/5fhV5kmO9jCerANXDEUA+8?=
 =?us-ascii?Q?a0FuyKicHOC3SlQSNuAodot201MEW7j6s2bif1aX1qTkALjCyQi2t7LlqrvQ?=
 =?us-ascii?Q?+r+nWQIpIjgNKK7f0ieIQ/4EmPqJlRWpLLR0IYYJ3zdxm8bJ8DJYKe9yWP3i?=
 =?us-ascii?Q?VUkBcI5kh+IAoWlF9Hp4VPmJ6MUYHA83ezpsFzK0Q1pV9OqSHOTHXs95oRkx?=
 =?us-ascii?Q?R0fxFIIpt6ZC2mt0l5HVHCJn3gRsfamXz8r7wi79492Nka8Hv9JJJj9uIi7Q?=
 =?us-ascii?Q?a/s9iTCi4YZaduUtvxAQ2YiRbz2gXW0WiAnKSFlqiyOzA6W7gbxNQ8yR6HTj?=
 =?us-ascii?Q?+1UxfzsPZzzUIdhf6Hp6/tcyKa1MjjbQeUJDz5K+NJZa04GrL4asBqNmY8fu?=
 =?us-ascii?Q?JiGBBcdMxBjxfQ6AmSTM7eojmHJ2n3XwPmcFWCsj3MjWxQ4NEuEtdWgZK7Ke?=
 =?us-ascii?Q?lmZ8ZtOOyU8Kz+kN02Pr3fl9DoElO8ak18sqaBWSurcLE+aAxcMHr22IXDLp?=
 =?us-ascii?Q?sg3OGj9f9EX1rEtWJiO4ytxJ424KGt7uHYMBfj/mErssnm6mfcmf7kW41bYU?=
 =?us-ascii?Q?MQvUeLWKXhu3T2R0XHb+ytCmq8SNpYxuRlUh/SVCj2K5GjlmoA5L4+4Kvf+n?=
 =?us-ascii?Q?VhCVvIsEXPuouFJZapwixqFKca4v+ZDrF2C4IILAvXiTFtXQfjb2ohIkm2ik?=
 =?us-ascii?Q?5eEgeSdjuplIQ6USa+RiIZ1mqWgCCjNqQ2Cyv3g7DK6OamfpiXGwIqZUA+mz?=
 =?us-ascii?Q?87xkB6TnzPH/IKLq8q+0SCEUV567YtPeUWmAm61tGagX/SLjUHBPXsDy0qhQ?=
 =?us-ascii?Q?wGFamHDpQgaDOIaXHwbipwkZpoO8HpCGG8U0So0bLEF5sJDVHlWvmvVgolGr?=
 =?us-ascii?Q?VCF/4mo3A35Ij9dtaf6nujp2f4mXTS0Qa/SL8VF7G4sf9zrdI6Kgm2ijzIt5?=
 =?us-ascii?Q?GsSrvhiv2VeGGWamNQtcrCAZoF8PebXviOWilFQ4NYvXdt0EPuR46ZJyH6Gc?=
 =?us-ascii?Q?9F33Dbejg8AYrrXpP7+klky5VvwJjsYx0WMF/3HON8CGCp4Jw9ohD0vTvsiu?=
 =?us-ascii?Q?pdQAszYqjLoXACOsx/4wicadgtqZh5pvhNH8/j//Ty/DNzFisGXtHrt+0aBb?=
 =?us-ascii?Q?mkUAF+SDjKvL86MAAZ2JWE8LL0xSDdRsACkz74uuK2BttX8Vx36fW81TjfTv?=
 =?us-ascii?Q?8QV0XIJdk4MQEm8+x3eF04+B8y76+74mwqoIOMr51EpzDI5n3huHIY3gr3XL?=
 =?us-ascii?Q?3gUhh6jGJ1fTr3UCGQ1H2MvZA/GfTNiWH37AmfEbOTYFkv4JlsAnpg2FMxBV?=
 =?us-ascii?Q?K+osbVv9UWzeea/56pLZ0un5s3qdPZ8Xzp0mI2x8gtNBeBPx0qbQPmbCv5tb?=
 =?us-ascii?Q?QXBM5Tpu5Bys3zw4igJ0cTrwq8Zg0GiWO4RqHHyFgLavFbAvzPg2JYk66TXV?=
 =?us-ascii?Q?wbVE8iX8+kNum8ksR+GCiTjz+rq/ZxvQZnESOovQkl9hIh9DUIqWDBf8ELo+?=
 =?us-ascii?Q?LvGDZ4PmV+FisemZC7NUMybRHSFlmpk//n/qeVni?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e5007cd-a080-47f4-fe61-08da6f26b9cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 16:48:54.2537 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qMK2w0e9hNMb+lFOKuU4iEt0O1mD7hMEH5W7aRVC5dz5CApqREpLNKvpDBsVRYBbMHHkXEHkvSyd98rssDz4yA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2271
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658854139; x=1690390139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j3WIEGr0eTb6zAnf0HW0SBQbUekwwf4BzcQboHXhZKM=;
 b=BEnZNEHXBkNgzXp0vxZYIxkaZKqHiUlBGPJ82+elfKwN+y80SWiu5Gy3
 xxPBezQQj9UAdHKIeXpsgnR6Pvr8v0WNA70vy9KPHZG9jWYCBuMm70WT8
 /zCR4vUTCiW6w+JA2BqOXFUFnViPtYLfjju3KdBru14zFkaTjpScyTMQP
 Bdpz0WEBdeYD3Is/0J9n411QKxr3bcwBb/QOsgy+RWUbVZustKsF3SsPL
 RF4Ns7xu1hMGVaOWNEr3HsM/1+9anDKOLd1gkzHicnKVi3quxpB+IeuQq
 zjJRR0HBsWJ3cIDq2DV35WqSHh5aJtNMkPSw7SKBrYhMrFecI5VnYikcp
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BEnZNEHX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 2/3] iavf: Fix NULL pointer
 dereference in iavf_get_link_ksettings
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Jagielski, 
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: wtorek, 19 lipca 2022 11:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 2/3] iavf: Fix NULL pointer
> dereference in iavf_get_link_ksettings
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Fix possible NULL pointer dereference, due to freeing of adapter->vf_res in
> iavf_init_get_resources. Previous commit introduced a regression, where
> receiving IAVF_ERR_ADMIN_QUEUE_NO_WORK from iavf_get_vf_config
> would free adapter->vf_res. However, netdev is still registered, so
> ethtool_ops can be called. Calling iavf_get_link_ksettings with no vf_res, will
> result with:
> [ 9385.242676] BUG: kernel NULL pointer dereference, address:
> 0000000000000008 [ 9385.242683] #PF: supervisor read access in kernel
> mode [ 9385.242686] #PF: error_code(0x0000) - not-present page [
> 9385.242690] PGD 0 P4D 0 [ 9385.242696] Oops: 0000 [#1] PREEMPT SMP
> DEBUG_PAGEALLOC PTI
> [ 9385.242701] CPU: 6 PID: 3217 Comm: pmdalinux Kdump: loaded Tainted:
> G S          E     5.18.0-04958-ga54ce3703613-dirty #1
> [ 9385.242708] Hardware name: Dell Inc. PowerEdge R730/0WCJNT, BIOS
> 2.11.0 11/02/2019 [ 9385.242710] RIP:
> 0010:iavf_get_link_ksettings+0x29/0xd0 [iavf] [ 9385.242745] Code: 00 0f 1f
> 44 00 00 b8 01 ef ff ff 48 c7 46 30 00 00 00 00 48 c7 46 38 00 00 00 00 c6 46 0b
> 00 66 89 46 08 48 8b 87 68 0e 00 00 <f6> 40 08 80 75 50 8b 87 5c 0e 00 00 83
> f8 08 74 7a 76 1d 83 f8 20 [ 9385.242749] RSP: 0018:ffffc0560ec7fbd0 EFLAGS:
> 00010246 [ 9385.242755] RAX: 0000000000000000 RBX: ffffc0560ec7fc08 RCX:
> 0000000000000000 [ 9385.242759] RDX: ffffffffc0ad4550 RSI:
> ffffc0560ec7fc08 RDI: ffffa0fc66674000 [ 9385.242762] RBP:
> 00007ffd1fb2bf50 R08: b6a2d54b892363ee R09: ffffa101dc14fb00 [
> 9385.242765] R10: 0000000000000000 R11: 0000000000000004 R12:
> ffffa0fc66674000 [ 9385.242768] R13: 0000000000000000 R14:
> ffffa0fc66674000 R15: 00000000ffffffa1 [ 9385.242771] FS:
> 00007f93711a2980(0000) GS:ffffa0fad72c0000(0000)
> knlGS:0000000000000000 [ 9385.242775] CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033 [ 9385.242778] CR2: 0000000000000008 CR3:
> 0000000a8e61c003 CR4: 00000000003706e0 [ 9385.242781] DR0:
> 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000 [
> 9385.242784] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> 0000000000000400 [ 9385.242787] Call Trace:
> [ 9385.242791]  <TASK>
> [ 9385.242793]  ethtool_get_settings+0x71/0x1a0 [ 9385.242814]
> __dev_ethtool+0x426/0x2f40 [ 9385.242823]  ?
> slab_post_alloc_hook+0x4f/0x280 [ 9385.242836]  ?
> kmem_cache_alloc_trace+0x15d/0x2f0
> [ 9385.242841]  ? dev_ethtool+0x59/0x170 [ 9385.242848]
> dev_ethtool+0xa7/0x170 [ 9385.242856]  dev_ioctl+0xc3/0x520 [
> 9385.242866]  sock_do_ioctl+0xa0/0xe0 [ 9385.242877]
> sock_ioctl+0x22f/0x320 [ 9385.242885]  __x64_sys_ioctl+0x84/0xc0 [
> 9385.242896]  do_syscall_64+0x3a/0x80 [ 9385.242904]
> entry_SYSCALL_64_after_hwframe+0x46/0xb0
> [ 9385.242918] RIP: 0033:0x7f93702396db
> [ 9385.242923] Code: 73 01 c3 48 8b 0d ad 57 38 00 f7 d8 64 89 01 48 83 c8 ff
> c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01
> f0 ff ff 73 01 c3 48 8b 0d 7d 57 38 00 f7 d8 64 89 01 48 [ 9385.242927] RSP:
> 002b:00007ffd1fb2bf18 EFLAGS: 00000246 ORIG_RAX: 0000000000000010 [
> 9385.242932] RAX: ffffffffffffffda RBX: 000055671b1d2fe0 RCX:
> 00007f93702396db [ 9385.242935] RDX: 00007ffd1fb2bf20 RSI:
> 0000000000008946 RDI: 0000000000000007 [ 9385.242937] RBP:
> 00007ffd1fb2bf20 R08: 0000000000000003 R09: 0030763066307330 [
> 9385.242940] R10: 0000000000000000 R11: 0000000000000246 R12:
> 00007ffd1fb2bf80 [ 9385.242942] R13: 0000000000000007 R14:
> 0000556719f6de90 R15: 00007ffd1fb2c1b0 [ 9385.242948]  </TASK> [
> 9385.242949] Modules linked in: iavf(E) xt_CHECKSUM xt_MASQUERADE
> xt_conntrack ipt_REJECT nft_compat nf_nat_tftp nft_objref
> nf_conntrack_tftp bridge stp llc nft_fib_inet nft_fib_ipv4 nft_fib_ipv6 nft_fib
> nft_reject_inet nf_reject_ipv4 nf_reject_ipv6 nft_reject nft_ct nft_chain_nat
> nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ip_set nf_tables rfkill
> nfnetlink vfat fat irdma ib_uverbs ib_core intel_rapl_msr intel_rapl_common
> sb_edac x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm
> iTCO_wdt iTCO_vendor_support ice irqbypass crct10dif_pclmul crc32_pclmul
> ghash_clmulni_intel rapl i40e pcspkr intel_cstate joydev mei_me intel_uncore
> mxm_wmi mei ipmi_ssif lpc_ich ipmi_si acpi_power_meter xfs libcrc32c
> mgag200 i2c_algo_bit drm_shmem_helper drm_kms_helper sd_mod t10_pi
> crc64_rocksoft crc64 syscopyarea sg sysfillrect sysimgblt fb_sys_fops drm
> ixgbe ahci libahci libata crc32c_intel mdio dca wmi dm_mirror
> dm_region_hash dm_log dm_mod ipmi_devintf ipmi_msghandler fuse [
> 9385.243065]  [last unloaded: iavf]
> 
> Dereference happens in if (ADV_LINK_SUPPORT(adapter)) statement
> 
> Fixes: 209f2f9c7181 ("iavf: Add support for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index a86e7be1e754..5f486eaf04da 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
