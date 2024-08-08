Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5681A94B4E7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 04:14:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19C738169A;
	Thu,  8 Aug 2024 02:14:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TpGKfqNCn0_o; Thu,  8 Aug 2024 02:14:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11CCE81747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723083256;
	bh=tWsg2iJl2sG0ilJHQ01wlwr8g1XQdcVHzVYxyx9IMZk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7puLZsqJjAGEhen5gScaPu8kwelh2Maiq3pFYdgSJKMLCyvg3efnJQAK9kIKHxxwm
	 wIGXK8WDdXEy2rvn8i2z4qRYYSPAZQqaeT3FhyvKi0tPQb5/hwhycILTiZsAVXo7d8
	 32Jd8Jdxjd4mAGrVCRIRCK0DPkcYkYVk3W2TAjAAdnuav9nIqUGm9bHznN9lLPuQvd
	 Wmr0O8mx39M4o6/tGe7E+fYkdPEeiU2/gYsnVI3D4n6P3fI/0dhQnjlu6cC491cXxc
	 iN6UCRCOjrvb/2BJlRZdPPJdJVYyffh1C5sUMxov2KRhKhJbq0xhSVIx9IuXsZjeJp
	 Bn3USfFYlf8VA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11CCE81747;
	Thu,  8 Aug 2024 02:14:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D84121BF32D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 02:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0CB6406EE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 02:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2jL2n4juma1K for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 02:14:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 80C9040513
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80C9040513
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80C9040513
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 02:14:13 +0000 (UTC)
X-CSE-ConnectionGUID: jHKyc4H5RUmvITjCGk8lJA==
X-CSE-MsgGUID: UhtV/1ydRiOGUejeivR9+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="24978491"
X-IronPort-AV: E=Sophos;i="6.09,271,1716274800"; d="scan'208";a="24978491"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 19:14:11 -0700
X-CSE-ConnectionGUID: ZuHCsJoUSPyhYLDgaBCM+A==
X-CSE-MsgGUID: 6qp3lmscQ1me3xh224icPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,271,1716274800"; d="scan'208";a="94625034"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 19:14:12 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 19:14:11 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 19:14:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 19:14:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 19:14:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=queaHv09lYMhlKBq5qlyzTi4C//WqeHq/AXn/25jsPu44uxMH2abGHQapv2QOtws5ZAouHesE9EWgZpAEZIxP79RQQzpu9B4TIIR2PkFWLiU/xyzWr717V7I12mnkTCh4m3W0T6GcSrvHcRJDfWVUZ3HHV8+o5KKsaRNCeZ6Ga9N3wC0hBl6f5j0PxdrjhQE7C51gXP1k7uhsY1g7oUXVmMjHZF68nL8lKIafuqFyUlypdadCkMiYvHhMfz8mM2MRFbhIP11qBRGKAlRpUrB7JCPItP+dnF9nzzuoF0KKZDVR34nkEiES1KJ80aEyPb3YVlW2qZ8ULfK3e9924aThQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tWsg2iJl2sG0ilJHQ01wlwr8g1XQdcVHzVYxyx9IMZk=;
 b=HkE3nXFTVxAFpthggkzSHaTcBjhCxOm8E5BSGTlsSeMsaGtVC8LM1ST83LzU5Imkr+QZ87502z7zCss81b+4sdB23ynG9x/B0CLg51hIdmPWkDUOP8g6kE0yfok7YVPPAHKNYcBYAFr8s3M6nuVX2bKiRBg6FsujeW1ogOVeJwBk0TZPJT6BojHxTIz/y+3wnNIRvuJBzrqiLIClpfrkyQpKlE3Q9mWvGyduZmXAuU6yznotETlhqxN2E8O0Q+JxWGPhYpfotOwVVKchgxyW/PksRMHgQpgRCzKXEHvZxwoPLt4jHFjqpJaXDTI4gUzlt8k+lRf6WMITI32266CGCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Thu, 8 Aug
 2024 02:14:02 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%5]) with mapi id 15.20.7828.024; Thu, 8 Aug 2024
 02:14:02 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 6/6] ice: do not bring the
 VSI up, if it was down before the XDP setup
Thread-Index: AQHa3erbFMpgfknqSEyeNxa3/ErTeLIctSpw
Date: Thu, 8 Aug 2024 02:14:02 +0000
Message-ID: <CH3PR11MB8313CAD99C23CF09806417BEEAB92@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
 <20240724164840.2536605-7-larysa.zaremba@intel.com>
In-Reply-To: <20240724164840.2536605-7-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|SA1PR11MB8253:EE_
x-ms-office365-filtering-correlation-id: a35cc37e-8a5b-44b3-1afb-08dcb74fc575
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9tUK+Kw7NBxsczSsUtf1DaIuDbLoAVSRV2ohFJsqm+Ztm3+hIvCpB6LKdzcd?=
 =?us-ascii?Q?ds0uZlpw9YWMwYDOp6HUA0cSzRuZ54qFZj0la3TyUMYzSM12AcoACiSxhSV4?=
 =?us-ascii?Q?jlfWeKDCNUJzIXbMgLXqvtJqhPFytV60tshuJ0i2HdvxaFCHdTGY3xY3aUCK?=
 =?us-ascii?Q?2j7Cr682Qi5i77aLgYbWT4/kEsoD4ixb4D9UjZ6Yfw+c3iqJYEq7o+0oMDEh?=
 =?us-ascii?Q?5wYJxb55Tff3vpLihX4CvGDIRabM4FSXR45uVyLMUlKbhy+PTtWGFF6ZMqBJ?=
 =?us-ascii?Q?hrb/a941lfS0ZG5+Ce8NU9bC9d9uABUxx1fUxn4mM7CPTah43QwZPnO18Afz?=
 =?us-ascii?Q?+sqZnTVOVtWx3jbrGAEP+kbbezuYmKvIEXEmI0Owc++wQLH9TyzamBFioYim?=
 =?us-ascii?Q?Eg1KmeGdUdQM163TfbsD/jc6VMi0/NlV4ZVTGyfeXGRUHwraqDFNBqDb9dKi?=
 =?us-ascii?Q?0SeHHL3FiyO+EOBIcvAphjOyEJxfLjWAKu2Mg03IY4CLt8xD9F/epnMrRinm?=
 =?us-ascii?Q?u1Rh7HdktYcHKvGpRF6hJfvF4L4T+Y4+aNVJav8XjDjuU4MV6ZrHyjCrX7HP?=
 =?us-ascii?Q?FAoxmCd+yXXRWTNY1NXwF/am7fjMNo/1M9x+Cs6laA1EUf9hE95hgGchhnaE?=
 =?us-ascii?Q?mkg8FWEVrWcrylZik3Hk+Daj55EyMWGgaioi+E5t5k2wzqJZR4NJ2h6wFtg+?=
 =?us-ascii?Q?WXd8+al5DsIcRVBSyYk6mupw0+rUwTKsUnN9Uodr9tIFfjJGz9M0QrEO808Y?=
 =?us-ascii?Q?zcPBjUvB/AjEy/2lKgNIWApvgy2anob41p7QbKSzfA0bNAiAVC8VTuqsfVE8?=
 =?us-ascii?Q?F/HEleiv3hpirkXQ81JZtcAMCkmd9xNtDP7hmqyWYuMF3v6LWprXTNeNTc/e?=
 =?us-ascii?Q?3Vd0MGcHFoaUmkYM5QdTcZn6nKvKn5d0JuYbUNWKm9Pl6UHFKO1MDgwh47xj?=
 =?us-ascii?Q?qx+fU5HV9adbDAebRX/CaiKDaxuZkvw9UHG3Ii8PIuxXBhn3+UevEDJb6Y0B?=
 =?us-ascii?Q?C07zpMGbsZvEvrSDo1OAZjObIz8CZkmftxW4EwLcx0dwKC13FCYvk0KMEQq/?=
 =?us-ascii?Q?5j2G52v7qqTCAc4D7FVQFRj1uAJvbDgh8nbowbwUr9n4tQySkr34dblilKye?=
 =?us-ascii?Q?yUat72F/SFWBVa5W1JhKe3i66glMtmIuZAbJ461bJ9oAvEuOzXvh9ZfbldF5?=
 =?us-ascii?Q?TD8zlsoPsbz+YHwPefgXY0vpfMitG/wicMiIKKgUkPl8dBZiU7H0hvZWs6yQ?=
 =?us-ascii?Q?RApNwCbl9/cOpdHIYPU+eQegUpQG7AuGRnnF0/71UTPekVFZvEHIpYx2HakE?=
 =?us-ascii?Q?Tlc4FG3PVQuDlnEeUEHFTs4vaPSwWMNEz7euMPQMENAxzYHgS0LRE7/cTAl3?=
 =?us-ascii?Q?pd1mMxPzNejsSTPc8x2dmhKJupEOJOidEQhOfZL5pWjsMvIE0A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kFXnB8qyv6kGrMKG2BdEKq63NfDM8qVrrIIJ3Pa4MNcgZOJgkHkSSdLk/IsZ?=
 =?us-ascii?Q?z1ffLiZLV7Mqfn/tu9F2MhK+gAQaGRcj8Exc5+25MVwSKySfISKBFT6pUh1y?=
 =?us-ascii?Q?rUyOl4+GAGTgtOu0xLOrffInfvQ7ooE7B97i1hwN9UzIX2siQleMoNsAwNjA?=
 =?us-ascii?Q?mtGGnp66ROFYPgGRQ79MztAvvrpoeheCFLOwnesR7T/ntXT6M56yMvMtf7st?=
 =?us-ascii?Q?H766O9JZo1xJjD00NJKp5YAFyiUMQldmSZichxoVSycqrj1PKmJJ8C77UOH6?=
 =?us-ascii?Q?298AZKfoNP09KYfmLdkT6qxZMAZBkbpZjEQSjpxHo7ioX7njaCQ8PuFglkpz?=
 =?us-ascii?Q?ENDs3xbztECmBMWMTQt1LAu+XI0znCA1etajDSn8iBpoUxsidK/v7l48Rs1Q?=
 =?us-ascii?Q?A19w2utT2HwRRtpFITEfF58FSRXj2txK1/XVdy/RGI5y1M3NEdhXLXxphoJm?=
 =?us-ascii?Q?Tevl1fGls5pSAwmG638H4RXVANXnNIAV7LvVKEidfOVzPfzQM6bm+Od0x20v?=
 =?us-ascii?Q?jvFZNC10T7eMAuhj4wUWKrml1HR6feXw5HQ/sw26jUaa/j5xm5y2zcmGAWlP?=
 =?us-ascii?Q?ofiwomOl225fXvWe/QsrBpTL2ovR0HRI0gLU56NQVMW0jDO6PXn7Ce2aYh0G?=
 =?us-ascii?Q?asv1SGlQMlwDxrn7os//1n4Z4rtA5bKK9L+geS2CkoitO6zGy/idzRCDwNvM?=
 =?us-ascii?Q?o0/wIBHrY+3nlAHnpz5gbX30g87HGlESeDQtyUIJfdkBS2sQ3UyTJw1Dy2KJ?=
 =?us-ascii?Q?7FNlKhAWAxvNtTgVo3sQQKTk4cf+a1+xGZrCpgGTnz4MXRHWigOwq+obai8Q?=
 =?us-ascii?Q?4JMcBzLy8p++pJ7Y+6tU75aVxyLPYD76X+Q8dZHQdpK3+b/pry5w7EKb80rv?=
 =?us-ascii?Q?QzvhK2NhMdNwHBphL+iC8DrZ3AZ8ISfZo+nCPqGs5B7O+enJBCphsCo1ObHV?=
 =?us-ascii?Q?2vtCX+heMtoBA1C+VM/C1b0Z4H22x9GIRcJI5O1sW1FKjvTxHc06i2S8turG?=
 =?us-ascii?Q?ksPTrN8A2pRRZP7Nu3lijk28SJ/VHaSDF0tB+ZnQL4DDsQU65S+0wh3BJX6L?=
 =?us-ascii?Q?s2kNx5oMk1VQBvvpPwoVz3h4uWu5YmwVEkacI2isLZqtujtKe0vIZQaF1jfU?=
 =?us-ascii?Q?M8oF6yzdz20etvLP6T19xkbeqEEUiusUSsVaO9tlFfYdxuBipVO4GWZrmSVe?=
 =?us-ascii?Q?/sic5LYSF27LrDqp/CpNFoAXne+ImzgLkLes8w6qhxgno/lbbxd5s7L2C3K8?=
 =?us-ascii?Q?Y1rMKzjOFrGgw/O9ysmcT0Z5Viy/dG4sI0E2y6frjABfOkYbCj5J7nbZ4yNf?=
 =?us-ascii?Q?Quhg+CfNM+haLlpVlt/bYliE9MqZQSVfhSz4wdpeOj+eI1hNyM5eLnbEB5+G?=
 =?us-ascii?Q?LhTVfxFewlb/0foO6tfUn/weVkMsxG6GiTJM1KQ4VPQG1l59jdJhJU8eV4u5?=
 =?us-ascii?Q?bxrpRmTNieODQF+VDioZP2ltTEEh2ygGqj3Qt748OsLirskXeVN8xTazhpJK?=
 =?us-ascii?Q?Rciqa8EjJWzvyQ9CViH1jV7U+nM4f8FhHsZcQDdmTsxLyr7xNBJlopumyu0P?=
 =?us-ascii?Q?hfskuXCFpzDxryQmyAu6/yU2K1I3iWLNt3BpmNuf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a35cc37e-8a5b-44b3-1afb-08dcb74fc575
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2024 02:14:02.2612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QhVpQf87mHZ9y74zbH8l7PXVAdP0ayCXNpx8ci56RMHaERIrB6a9eZinCpLiT9nbkt8xUpPSaomxmOFlKS8bcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723083253; x=1754619253;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tWsg2iJl2sG0ilJHQ01wlwr8g1XQdcVHzVYxyx9IMZk=;
 b=giXvH72Izqh+lE4zeM3DCbmUpbfqkLmo7iYpQyKikseaJ6ljpb8N9lxj
 gOSZSkP+Tdqs9TsBkaeOn39i8Prr+3kZwztAIaUUME+QtIu5CMYgSCPZb
 XcddOANYWELuD7yNk9qwSBuQ5ZGwHtPTuBZYku2biqtiF6fWmTwjoLgkP
 cVZRXzIM3sDEmMFT2e0jMWWdwHzO9HoA57/RhK4+caWpK1XR5AFkaJU83
 evPnF78XmW9kV3GNRS+cvZUXBFnoKVOLjvAm18pGn2CKW78d4ZxEqx/Uc
 9v0lynXhXaOmMr4yXy3j69+zheF3Ob1ZSrFkCgnRcwFU1pnC0WSpMcVFO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=giXvH72I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 6/6] ice: do not bring the
 VSI up, if it was down before the XDP setup
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Kubiak, 
 Michal" <michal.kubiak@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "Nambiar, Amritha" <amritha.nambiar@intel.com>, "Karlsson, 
 Magnus" <magnus.karlsson@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Zaremba, Larysa
>Sent: Wednesday, July 24, 2024 10:19 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; Jesper Dangaard Brouer <hawk@kernel.org>;
>Daniel Borkmann <daniel@iogearbox.net>; Zaremba, Larysa
><larysa.zaremba@intel.com>; netdev@vger.kernel.org; John Fastabend
><john.fastabend@gmail.com>; Alexei Starovoitov <ast@kernel.org>; linux-
>kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Kubiak,
>Michal <michal.kubiak@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Nambiar, Amritha
><amritha.nambiar@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
>Jakub Kicinski <kuba@kernel.org>; bpf@vger.kernel.org; Paolo Abeni
><pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; Karlsson,
>Magnus <magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-net v2 6/6] ice: do not bring the VS=
I up, if
>it was down before the XDP setup
>
>After XDP configuration is completed, we bring the interface up unconditio=
nally,
>regardless of its state before the call to .ndo_bpf().
>
>Preserve the information whether the interface had to be brought down and
>later bring it up only in such case.
>
>Fixes: efc2214b6047 ("ice: Add support for XDP")
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_main.c | 7 +++++--
> 1 file changed, 5 insertions(+), 2 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

