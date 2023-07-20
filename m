Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A973F75A554
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 07:05:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F149C41774;
	Thu, 20 Jul 2023 05:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F149C41774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689829524;
	bh=qd3EJFcIFMWL5pW0HmKyP2DDXELuYORGhgD1BRMT6es=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O3s+RkRCFRMXxUWw31WdezyoDjvPBlED910MlWtMHvXHzrpUllragnrkaK3SqtzMw
	 G6Ipr3KcbVH1FFyYZyVE30sIOYah4onNCXfzxuTeqUcMWZoPcVOzba+G6NF1Te//bg
	 RKwFibppl8gupJQzLLKDjI9i2ZuayNkYf+DQvEQhiyJ9Yf524fhT115uRQLaXZDzJb
	 /BQGnbIXCX08ZODWmPjPN71zRTIFcCcNtiNN6c7DAdjqtWQVKVBRAHGNgeNcTL0QQD
	 rz9mgJIxEnYzmULFgpKJ7GayZM+s5peQ+jEoLJ2JeAr7uYqt+3RhcOlTEbf2+ySQz+
	 lphgyf6QUC8UA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jZ5Vc1lvzmxD; Thu, 20 Jul 2023 05:05:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99F07416AD;
	Thu, 20 Jul 2023 05:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99F07416AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D59161BF293
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 05:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE85E8206D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 05:05:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE85E8206D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50V1At4HMX9Y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 05:05:15 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 20 Jul 2023 05:05:15 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B72F82055
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B72F82055
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 05:05:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="369285404"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="369285404"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 21:58:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="848292728"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="848292728"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2023 21:58:06 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 21:58:06 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 21:58:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 21:58:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 21:57:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aACsKp5wlFYBNk73hmqqxppujg+oucuWYfI5vFKUwsT4C6dc9h0nMA6XN0/Zd310sT+0mE7UtUDkRfkxfpiMJwMlQdIyhjeel8UPaaEjKVKvgNyRzz72AUfCgEfyWiJDPnKn5OAQNmUL6DefV+XwXvUoKjS666Wkus8mt9UaEGjDe824BjZeviKHEu24Q1KeUfvYtIArMLFRa+xaFVuSRT0fdsEly/vetsbnuyi2+9URYeJAEDq/HHDaIs0N0Bkfdhne0cfINuLKvtddGyriVeNRVKfNjDvF4kB0DYqdhp6xknnWJPselNs7+dwDxSAQF7BTNmmsJCj3CZjXN+71bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T/S6fM13SH2AXLPT+XkR+9G3WtBW1lBmmsyg4BfDsR4=;
 b=Lt3SN9Jpdue3C4fh5S9oOVjZEdsW824ZqNIz4jqInXZoJZh9NEK3h3iP1Rvf2Q/cEHEFpPrygMtau1HU+UMBg3L1STu/T9LpuwbthOuapPk/cDaqv9kuVT1MJjAxWyiwTnXBsv3eQxsfWe3wYQnqxSmqtYyZAsiJHVo9oOC/IMxqT5pRxWRND3fhm4Z5GBcS5aEPBg0h+pd4uaSTI7H63dtQIrZyf/0lTOv/hlUxJ67EUixcPLOLml7Y1b43VtPVaFeqrnOJexK1EAqZVmlwEcM5ylLS1U14yr5mYXkV6l0+rT8MzQaOoOM4DAjufEG5W3wBMP//mU8EXkR92vJhMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by MW5PR11MB5906.namprd11.prod.outlook.com (2603:10b6:303:1a0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Thu, 20 Jul
 2023 04:57:40 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::a8f9:3589:7af0:bebe]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::a8f9:3589:7af0:bebe%7]) with mapi id 15.20.6588.031; Thu, 20 Jul 2023
 04:57:40 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/1] igc: Decrease PTM
 short interval from 10 us to 1 us
Thread-Index: AQHZur4E3SgR0lRfhkegr3/hjxBpYK/CFzzg
Date: Thu, 20 Jul 2023 04:57:39 +0000
Message-ID: <SJ1PR11MB6180123A3CF9044D63DD796CB83EA@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230720034835.88372-1-sasha.neftin@intel.com>
In-Reply-To: <20230720034835.88372-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|MW5PR11MB5906:EE_
x-ms-office365-filtering-correlation-id: 5e6e5668-aabb-4a1b-587d-08db88ddd82b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7q9aaD2K0eMCQY91ciKnQjyype90+W9hAm2xGVaCkoQo5uWeEEoI4Axez5aGKBxhth2nv2vfZKvSx98brD/JTExfjZWB48F18MSqa/fRJyBaadvdDjqfgHVUsJ0DPY/TlMjLJ220Sg8w2u4zUhcgO2pA80HlXATY1+3iWYBtLyxOLJ1AtQelTSBzq0Wc7pPheWx08Eo0gP0DjcjzVAyBfLDpqQAytdUSl9CFhIOqkbzXD71ooHaL+9LBZ+1tmc+1QOeT8aQkVbjvUxJgGv2Rwimafe88edPQ5TjyJgh02UyHdXD3augXWMypMuMHSCc6oq3T1/gqt5pJXTzb0ITbRfcUhPudbwyOJyjLJLOHmT+1EkS2HQP8unepyjmlKE+W2zWgVL4U5S5MlDqLKvsUmKhkzPkpx/8AN3y9GHS+80ZY6rmdtUPeTpoXs/36cZZ4PDWZgxMoj9/m1vW8+RNU+GiQu1GBsBFow6IiAr/EVVkBhjatXwx27ZGyVByJZi1G3cLyYWUudBejCIm2Sb73e6o/fJbG2mPjbcNGqzow4kR+AyOU0X34dnVG29fIly12URg8CavSfLkjQHSl9dz/b8VhVjPorJXsu2vCLJKZFmg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(376002)(136003)(396003)(366004)(451199021)(7696005)(966005)(9686003)(478600001)(110136005)(71200400001)(26005)(53546011)(186003)(6506007)(2906002)(66946007)(66556008)(66476007)(66446008)(64756008)(316002)(76116006)(52536014)(8936002)(8676002)(41300700001)(5660300002)(38100700002)(82960400001)(122000001)(33656002)(38070700005)(86362001)(55016003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gxXStFqgYXbFxNWv1d7sje0mrvDzBsQlyG1+L/sp9hTY3oS8hWRAwmQePvYH?=
 =?us-ascii?Q?A65FuABHTnony/htovokXktnbQGdezgZaPHpwaVHSkBfJ4SpXTYCVUDeO+Bs?=
 =?us-ascii?Q?R99tfkztFa5WfV9NBlUzoU9pKD0CFUeTH4ktqaprkxryLyG57rHzlM7uWFIS?=
 =?us-ascii?Q?tDENPNVF8nXForTeOuaYnxsu8hLVLlmOF5Ry72UakMLotjpIS+k2i+QTLWEH?=
 =?us-ascii?Q?DhaKAw/mkcMHu2wBBlBVeZKnLlS4rrz/MZGLrMmIXMN8nCDhIBEd5wZ03VA5?=
 =?us-ascii?Q?gB0Sp9B6GLXyPU8MrsNShI88m7yJVNqzNUk26GdWtL03MLPzb1hMJk9+rT0w?=
 =?us-ascii?Q?136jBJfqciqKo/fVZauKmCrzybMTVeUezP+/6w6n/yIcGkq7d2nX+82jP/6O?=
 =?us-ascii?Q?tBQe91O0vTZ9zksAiCCP0x7Oyqmb7LbHbuc936FqPXEoo28JwnsZBnphFv0j?=
 =?us-ascii?Q?DVh64U6y1s0t8xgCW+OH2bgfJLMQblF/LGtxlvaPTtA8vBPmtmpumIhWde5l?=
 =?us-ascii?Q?lomRRglizvhtZG/XYxLux+ZMOpikTOTiq+bvnSFi+9ujfIF0Opd5pqDpbQxx?=
 =?us-ascii?Q?eeBF8xOasC1Zud8ImepKBonvi4jU/STT23k0kHF/Mlk/KWYJ3Z1LGiiTqp5y?=
 =?us-ascii?Q?PTONvLxZElPHrg5kZCF8P0itjRpvjVfZtBHJnBoAB9zJq09Cn+w5c0tIXhA6?=
 =?us-ascii?Q?wLsbr+cQqYi0On7bcXjNq7Z/0WZ2Dx8L9vEuTDHnnlBMu2nbRS24tK/iJzha?=
 =?us-ascii?Q?FR3/KtGCSVbUE23H2SqOjZlu1ujqFZz/Jme/q1NAvqAqyDsnm0DQUswB0qar?=
 =?us-ascii?Q?nwKthFnSWaEy4qfyQbQwk7mjLOx4JHsnoDlfDBdn9pWhlelyXjLT1REEQroJ?=
 =?us-ascii?Q?xZi03VUWBm7w3h962MVHBoPzxGwtTNZDVsp318S76kN6bZhRYilIQPkXrkZ7?=
 =?us-ascii?Q?r0l5natqMmzcKo+pXWv5gijb8wQDA4bMi6Rqik6BZwnhztcuyrbs9r5GVmnk?=
 =?us-ascii?Q?IK9GVHzNM6XtdK4ScMebENmWZDr17DIzkgxFPZintPoAdpEkYOmm7CRWk9H0?=
 =?us-ascii?Q?jJw/lc0Wtz3+Aer76Vg75CkiwTBNaZ/hNeyi/vFgl6Lmu1Vs02IrtbeNejFa?=
 =?us-ascii?Q?CTlshNHBcdK7mZ5FmrAJSbHbNR9X7nzHzf+QnOn/mdqid6pJBMXmBUNbTDmr?=
 =?us-ascii?Q?xQQGI5DuZJbPFfKpIRhj0poSyS7vF/tlwT4h58B1Xmh2GyrkK+6lb6aMHD6w?=
 =?us-ascii?Q?7B9del745tUo/kaLvhVgGQYhq94wgbLuwv/lRgp+GjfTkyvnlaLztd0rQGCB?=
 =?us-ascii?Q?A26ialX2IIvaJXHW+pgKDKJvYwsDOMFzCy6jqr1sZqUCrqxFy3Sq99nOSNBB?=
 =?us-ascii?Q?JO31PgMuBk0xf1TCRgAXxqRGaxAzJ9ptKYKl4/EHtPoX0u267WNNv7Of92Sy?=
 =?us-ascii?Q?XZTqVks4d6Q3PzdrwPGXAxC205W0VRbjg6UHMQrokkSsSG+1qAJpiumTfynV?=
 =?us-ascii?Q?fYw5MK6Lnq2d2BmUeZ9MMdoBmyygaSCW6oq1V/687R1VzZAC1xR7jhDmSw/D?=
 =?us-ascii?Q?y7Cj3ZPunnBsGKrw+7GyB3uuFPpDzEaKeTfu01Wy5DRxox6waFvivTQT8aUT?=
 =?us-ascii?Q?SLgESIXghOunnnCIDspTaRs=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e6e5668-aabb-4a1b-587d-08db88ddd82b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 04:57:39.8516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KG5++vPoiFmahMqqs9KUAw5GyrYCrtvr+GnToZw/TjojDpflMTG01MsAwdZwNefl042n5jMFPhAXX4G80RURaLb6iGWLL9wjnYgXPUjBS/F47PmFHUAwSa+Ksnioc6OB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5906
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689829515; x=1721365515;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6eUpviMuq79ftUV1rwVmE3qrcVyyRxnpHQmpgP6EdUg=;
 b=YD4oC1XXRmNifKimb0CzUVQ+JRk4SNaRvUQcoigX0ni3cBAkIVmuI0CB
 k4i2oA191b9ZZ0ud+8fKIpUiOML7DzPbPSvWscP8QcjstM4XsU9KPRm2U
 pqvZK5qePHMZtG2qutB2RNv3C9uL6UVHxlkhqyEt3iQTImUZazP1RIGYg
 tmnvVirElVMc8x2kBb4jCV5TNXx6cxDUhKcc2VQpLFdE2WLdU6hqB7YDS
 rcEMDa8NWjNXMNTghRSAirK4IBmKB/iCbTezYuaC8GD0aE80uoGuX6w/C
 COfK/UTYMhMHX9JoH1rGMEGOW71qsYucvND4u+YoAGwbYfqUCiP7XylVs
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YD4oC1XX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/1] igc: Decrease PTM
 short interval from 10 us to 1 us
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

Hi Sasha,

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sasha Neftin
> Sent: Thursday, 20 July, 2023 11:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/1] igc: Decrease PTM short
> interval from 10 us to 1 us
> 
> With the 10us interval, we were seeing PTM transactions take around 12us.
> Hardware team suggested this interval could be lowered to 1us which was
> confirmed with PCIe sniffer. With the 1us interval, PTM dialogs took around
> 2us.
> 
> Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
> v1->v2: Fixed commit message
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h
> b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 44a507029946..c3722f524ea7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -549,7 +549,7 @@
>  #define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x2f) << 2)
>  #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
> 
> -#define IGC_PTM_SHORT_CYC_DEFAULT	10  /* Default
> Short/interrupted cycle interval */
> +#define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle
> interval */
>  #define IGC_PTM_CYC_TIME_DEFAULT	5   /* Default PTM cycle time
> */
>  #define IGC_PTM_TIMEOUT_DEFAULT		255 /* Default
> timeout for PTM errors */

I tested this setting with my TGL-U board(back-2-back). As of now, I see no problem.

Tested-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

LGTM.

Reviewed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

> 
> --
> 2.34.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
