Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E50A753F55
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 17:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71BD160B6C;
	Fri, 14 Jul 2023 15:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71BD160B6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689349874;
	bh=b1+EsOBQT3gN1g/Uv0XjMMg08lqTfpKCsxiPHiRlIkM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ACvAFpL6vsJJk3Ant25iCD+4keVKAp3w36lrXmf/fU3kQ+7eeyzIjnkWULJEQnd58
	 I/zBR1sEtGIui6JTOjbK+lkav085x6gDy84RQZLIGTBGGbEwux5R/SnSx/KiwFixJq
	 64HSC4DsNxekVo0zu3L4l9M2r7/eXl5hSD/pyqSwK9/o+vs+5U5EeY6qv/jHKnRo3S
	 Kjkj0RsLu7/1MaS85kLvNTbetisIW98i4/WRx0g65QfGFnR0LVX9f0vzVAqGmm7vJp
	 CIjyChutis8tSmSLR54i1F4a07Nxtt+a4iV3gwVRm51juxWmqkM++pB79ydMbxgyT+
	 B+TxP4lcQcbkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HQnbt1Yt7jW5; Fri, 14 Jul 2023 15:51:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30C7560ACA;
	Fri, 14 Jul 2023 15:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30C7560ACA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 72C971BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 15:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4610281E34
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 15:51:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4610281E34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DW27o80h5lZC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jul 2023 15:51:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80E3481E77
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80E3481E77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 15:51:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="431677073"
X-IronPort-AV: E=Sophos;i="6.01,205,1684825200"; d="scan'208";a="431677073"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 08:50:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="812483133"
X-IronPort-AV: E=Sophos;i="6.01,205,1684825200"; d="scan'208";a="812483133"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jul 2023 08:50:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 14 Jul 2023 08:50:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 14 Jul 2023 08:50:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 14 Jul 2023 08:50:50 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 14 Jul 2023 08:50:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxhLwsvlijxxaus/vk0dqukK8gLykYS2xaNwEi5bpPLbiKDwCHPTP9Sd39KLFxiLRZha0whHQAg9QfeuQy36C6DcfB/nkBoEwX83cgnILYQ8J3NcpujD/oOUEqHXcabwXkLDEaA91Q2KqDicbTspfBQjWOSsHBacxL9JrQibHkfhnAZeh/Mq0yRKeqIo0pBzXqcj0AYAd7Th5R61i+6DFJUflWXYUCrnzM8JPcDpJcUXPPBRBdYj+lajfc7Ova49E5edvZLaHkEb2XfHacGlR6uWtixWMjh2TtXthmuhwKrW9TOFGQP4mO+2inkhKyi8l+MrjSXiZiCNmIU1i/cvNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3mszM5BxtSeYaA5ufJmSsmWjKQvUYtAtiyarT2mP+RE=;
 b=gqnUTwX0b9T+i+KZEOGzGO9wyQJPMHCnBtU6NluugZCdi4+bYdtGztXlXu23Zywqz7ZrjY/2/xLG09wyOddEgxSLKjiMT0+8wUt4IL71/T4M2Swl+PelJ6NR9hMT1c8n10hTLr5XMPFBVR8syUPrefOk6GxYRAN4Vu5dAGHThaUdLP+U8sNir8+gEylWOkCP4c8r381MCOO1uLPc3qm22qoF+oJy9wa6ftY1CnJQ2vrDPL0eCId4PwNzkchCF+KVGQYVKByopXptefvB8tGiuSq18rxiZfuUhUbwfVjQz9U+5KPj6ZzGbZ8fB5zPsUHWajxILOsI4R8MP18H+/jzdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3528.namprd11.prod.outlook.com (2603:10b6:a03:87::26)
 by SJ0PR11MB4830.namprd11.prod.outlook.com (2603:10b6:a03:2d7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.27; Fri, 14 Jul
 2023 15:50:48 +0000
Received: from BYAPR11MB3528.namprd11.prod.outlook.com
 ([fe80::fa1d:762:3d0d:bb9e]) by BYAPR11MB3528.namprd11.prod.outlook.com
 ([fe80::fa1d:762:3d0d:bb9e%6]) with mapi id 15.20.6588.027; Fri, 14 Jul 2023
 15:50:48 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Fix VF reset
 recognition
Thread-Index: AQHZs8q0YLkNxuWEGUmxLyjIE6VERq+5bkAQ
Date: Fri, 14 Jul 2023 15:50:47 +0000
Message-ID: <BYAPR11MB3528D7606C2B0E57408286418F34A@BYAPR11MB3528.namprd11.prod.outlook.com>
References: <20230711073737.98761-1-kamil.maziarz@intel.com>
In-Reply-To: <20230711073737.98761-1-kamil.maziarz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3528:EE_|SJ0PR11MB4830:EE_
x-ms-office365-filtering-correlation-id: 151b8749-a846-47de-a54a-08db848217a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RkCseLd7wfGLWBCjvVFUVWU8CjVrwcZuKYLTEGDQpp7lT84aZasOfx0NqmSpPMiLgaL+C++J1X9swT3IqgOT7lk1kE9V07IQyacifyoEDHekpzL9KwXn/IhaLJg5ghSYOjqihTa04QUT1AtgO+JoHrkI6JBJXeskRjyWDmEdIOsCAM4s1shzmZ6Xr/nxIH5FUrguaeIBzRl46A1mjZW/RggbJ2b4im3VbbAq5UQu/tc5hbK8Ltq0Xc1F8xZddgNtTZmQ8O6FO7c7krAMynVRFqYTcs0ARVbgBzhK/dVbQoGpHRRINqCaO6U/NeS1sqdPx+dgDNkgY9rdDL93+VC0PYq1w8EewjtguYleop6RGUplKlfHtBfoBK7kLFt0+dF/dUqwC3i+RzlVmtwgofophiX8IiXtr0bKKfHEw7b9uA4MRu0hixBdyEgvxobBzS3PfSsiiI12buMEqMwF7MXx54Hm8o7EYiSamyCyfvYGd8hy/JAmz4hcGBu5qvwJH8mYfklVKeTJUxz6SavBcrtEFhqT0Cn5mzbCRTzrMC5etgPP8nrcR8CBaQx+yXJKUXZXzAWGlMbo5nbgs8VTH/boGHwIL60zOeDYrSnhYiWGgxw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3528.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(136003)(366004)(346002)(396003)(451199021)(7696005)(478600001)(186003)(33656002)(83380400001)(966005)(26005)(6506007)(9686003)(53546011)(71200400001)(107886003)(64756008)(66446008)(66476007)(66556008)(4326008)(76116006)(66946007)(54906003)(110136005)(41300700001)(122000001)(38070700005)(8936002)(8676002)(316002)(38100700002)(52536014)(5660300002)(82960400001)(86362001)(2906002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KznhHUnDevq6L9BK5Q1iYHoR5tN7w8MkbID25eczYZn5ueIkW15JtT0MRv/N?=
 =?us-ascii?Q?Zf3Bu9vpdBMkASwCMZinO919O/Gb7n2je/VQLcHicqn8e/dupPjdo4iCvQae?=
 =?us-ascii?Q?dU7OLpizWDyIiO9UHjZ24jWKfQARNjswAlJLYjsUd8Fn6XSqPSe5xLj8+feQ?=
 =?us-ascii?Q?FItFRvRbtBnjtlyDKkHNgcmon4iMUkG98FhwndfoZ7Ck7CJoVhKH8a87oiBp?=
 =?us-ascii?Q?OAkIj6TbgeBlnyv8uHe0GmSrYUs84CPaheyYLLM14YMBt/kqsxxhODnGvbpe?=
 =?us-ascii?Q?0kv/k9sMvWZG4RWzKrc6I7+nExJh6kXETaWxE36nKllWLRcdF2HqHdFwdvwS?=
 =?us-ascii?Q?5gqJCyb6qnOwZ8yuR+vKi2+ebz3l7D8MQ3KZM9yW1A9zIaZINNVlqNkJT5Rc?=
 =?us-ascii?Q?xD+QLr8m2GSn8ctnU6E3GurH7YW1fvmuxldKiNai1SgzwcSkVJdbYtgao4e8?=
 =?us-ascii?Q?+HkFpLdojKkATIHrOO2mPjapTWfA2xnKkxbfof9sYV70hX1+azGfbj5/nRVE?=
 =?us-ascii?Q?C3N0AGdEA5wdYQe0m3emZTEGsh2Mal9/E6enkuApJPbDtJPP2NE7/erqwj21?=
 =?us-ascii?Q?KSpcrxcJMP+QjhYTr2MBw0d1nETOPzplLcaIlwrHmXsJ5Depm+VtkuqeVaBx?=
 =?us-ascii?Q?YxSetygWyaf+G/+0VxS0uQhT2K2G3ZhUua+lVpRPdnQsn7l6zdxQklKCjZDz?=
 =?us-ascii?Q?y2iLMTbTUfb9snIVR9GClgnZnFGeCfZiEYiDvkdzMB8fvi7UYTU5zalndJcF?=
 =?us-ascii?Q?6fX9j/+6WuJ/PLZ11dYXwcKKVZ157+iA0+Y1pIA07+1/eg8HxGhi+wE5dRVv?=
 =?us-ascii?Q?GPiy6rUpKtUy1PR/oUuMM3JYhvuDhvDtPyKN/gzBBe6IPfX74Lhacj5LiCNS?=
 =?us-ascii?Q?RNfMm8FXrhS+DTVZyhEW/P5VOqma7caneWIUWTUYy8TDiVBj4/akov8geMDE?=
 =?us-ascii?Q?CdLZhKfCJz+kDMCUYVyiotOvbumcUGGic+0XaROQgA3XoVb0gCapy9IAd2RU?=
 =?us-ascii?Q?aJebt7fBN0sxfA/XaRTQsGr1hBX18jftRfUuxD2meQ2g5UsIt+HT7iqD1WSp?=
 =?us-ascii?Q?1mbuqM0/FZT29wapTPDiNGQnSNK17m+XNN616Dx1mZnDfdQ26sgy4r8dIbzV?=
 =?us-ascii?Q?8wNsF2qWp7Q47r7oMV9X2uHmmw8hzuyvQLwOvUgOZIGSE7Yk24Ksv/ZDUNEu?=
 =?us-ascii?Q?minFp1CEN+Zw1MxUKgzmJRxiM8EeLXZtz3svtkdCHCRIN6WBqkyUsn82izZ+?=
 =?us-ascii?Q?7etBDcaZiTl5/dgZ+nlzsIhHEyKhmbNfW89Gt+P++uFas0w4J11w2HE18pnS?=
 =?us-ascii?Q?wKk/ZlEy/LcRnaSi6WZrtqPpWMRn1z272qxwQjc86mwdyIu8seaC3VpdFtig?=
 =?us-ascii?Q?KizFs1Aag4iNzJQED8lWnKsMKbUIJfV7q9K75PFS+ZiXUcvSuJ+/dVPO0P5E?=
 =?us-ascii?Q?5W6RmSJABS656LUnOAm2Y3RwYqR/12seIUYol904++Keyt0uoYTV32hVuB3l?=
 =?us-ascii?Q?xz2tAvQ5/PF/jjBRVeP4/BfeaBdGSaMyQgIxo0DJQGLdyIgJKwc0iNicXjOx?=
 =?us-ascii?Q?+PAZjTBS7WX+ek3AuB1+OLB05FnWo06eogHGgSwwMg9kpqrhV2IbHaDNbIcr?=
 =?us-ascii?Q?/g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3528.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 151b8749-a846-47de-a54a-08db848217a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2023 15:50:47.9665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o67dYYZuxnOcFWtcdbxPq9cU2z3CotNjVAPICCSVmSBsaA4lBE85KySUgz+/li8nA067afKbLWBz32TE03x+CA6jpe+01eGOYb6WxW4op3Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689349865; x=1720885865;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=92rz1IhNRTcblkPUR43Kr3oi/U0KSHi/xjixUF+Ju/M=;
 b=ZZ+TYF4KzXA6835WpSdHsATYnovAecEhTd6Ju+HYTwrbvOVw8sEaJg9Q
 TKqBa3EvdP5SL62aaWfaKulsS+xBN6R/mWm/xsendCES2wzbLEFHwOjVh
 Qa/PwDV4EMNeQo90ZelsjL9ieNBTql3OeSDgzpZH6yG/t65Nasj1Koj+n
 tKFNIpnEQUbAspSsA+OQi4q8FndlBsJEdBx6FW5BORx5k95R2bbzQ7KAM
 KXQQBSOC5cnPUmimeBXO/WmQEYPm6KwlW4wsTIzA8czs+rEw4jCvM+n6N
 r8wBb/2v2UYcEaoTY6Bd5fOEWNlPyNIVIeOacqjrkhevON1tnwqvt1aGP
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZZ+TYF4K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Fix VF reset
 recognition
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kamil Maziarz
> Sent: wtorek, 11 lipca 2023 09:38
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dawid Wesierski <dawidx.wesierski@intel.com>; Maziarz, Kamil
> <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Fix VF reset recognition
> 
> From: Dawid Wesierski <dawidx.wesierski@intel.com>
> 
> Fix the issue with i40e_trigger_vf_reset() by preventing it from resetting the
> VF while it is still resetting itself and initializing adminq's. This will avoid a
> series of -53 errors (failed to init adminq) from the IAVF.
> 
> Change the state of the vf_state field to not be active when the IAVF
> requests a reset. This will prevent any potential issues caused by resetting
> the VF too early, as we cannot know the exact state of the IAVF driver until
> we receive the message on the message box.
> 
> Fixes: 2d166c304065 ("i40e: change log messages and error returns")
> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c   | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 8a4587585acd..3fb550cf4e17 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1502,7 +1502,6 @@ static void i40e_cleanup_reset_vf(struct i40e_vf
> *vf)
>  	if (!i40e_alloc_vf_res(vf)) {
>  		int abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
>  		i40e_enable_vf_mappings(vf);
> -		set_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states);
>  		clear_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
>  		/* Do not notify the client during VF init */
>  		if (!test_and_clear_bit(I40E_VF_STATE_PRE_ENABLE,
> @@ -4079,6 +4078,7 @@ int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16
> vf_id, u32 v_opcode,
>  		i40e_vc_notify_vf_link_state(vf);
>  		break;
>  	case VIRTCHNL_OP_RESET_VF:
> +		clear_bit(I40E_VF_STATE_ACTIVE, &pf->vf->vf_states);
>  		i40e_vc_reset_vf(vf, false);
>  		ret = 0;
>  		break;
> @@ -4281,12 +4281,14 @@ int i40e_ndo_set_vf_mac(struct net_device
> *netdev, int vf_id, u8 *mac)
>  			break;
>  		msleep(20);
>  	}
> -	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
> +	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states) ||
> +	    !test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
>  		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
>  			vf_id);
>  		ret = -EAGAIN;
>  		goto error_param;
>  	}
> +
>  	vsi = pf->vsi[vf->lan_vsi_idx];
> 
>  	if (is_multicast_ether_addr(mac)) {
> @@ -4386,7 +4388,8 @@ int i40e_ndo_set_vf_port_vlan(struct net_device
> *netdev, int vf_id,
> 
>  	vf = &pf->vf[vf_id];
>  	vsi = pf->vsi[vf->lan_vsi_idx];
> -	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
> +	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states) ||
> +	    !test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
>  		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
>  			vf_id);
>  		ret = -EAGAIN;
> @@ -4775,6 +4778,13 @@ int i40e_ndo_set_vf_trust(struct net_device
> *netdev, int vf_id, bool setting)
>  	if (setting == vf->trusted)
>  		goto out;
> 
> +	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
> +		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
> +			vf_id);
> +		ret = -EAGAIN;
> +		goto out;
> +	}
> +
>  	vf->trusted = setting;
> 
>  	/* request PF to sync mac/vlan filters for the VF */
> --
> 2.31.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>




_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
