Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 465789F6B01
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 17:23:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02C9A6148F;
	Wed, 18 Dec 2024 16:23:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bUl6LeLDL-pY; Wed, 18 Dec 2024 16:23:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3581561499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734539007;
	bh=NrCsY1s7/Ynmi88KSbhCVP/totKV+6xDX71iEm6qoiE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y7DmQlR4qoSsV2trWHBHwq8v8ehc8ZmgktWDKFtJxldTUni3L8diV3vTPmvD8WuZU
	 o1rQGeWetbCVdxwtEp+VvsPfayCPL43wwSTM92i4BjRdSV4nlLcjFBemiEqcxBBOWP
	 CuPK+C/nW4No/Lv4w8RcmqH08HgaRuV+PZtN/aSBEIvoCmOKqjsiNRuSOCJyqQZ5kT
	 p1bEaef2WIQyAM2hR6afixxWOXpKqjxOquCrdV+Nf/ZaiMo4JCHGs2jLiuMlA8Spqn
	 hORgDEkf9cWxO4w2TVNdLXmrQxpb+zdgU7Sh31yAAOUPixU3VBQOfLZ/Q9JJFjMtqz
	 8n1H7/lFrZlfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3581561499;
	Wed, 18 Dec 2024 16:23:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 63284CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43712415E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:23:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8XpINU9BYbkG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 16:23:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 39384415E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39384415E0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39384415E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:23:23 +0000 (UTC)
X-CSE-ConnectionGUID: tzGo0ZE/ST+OHWmJ5eNGNg==
X-CSE-MsgGUID: kSPkYM4vQr2WL3obWwkQfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="35239052"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="35239052"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:23:23 -0800
X-CSE-ConnectionGUID: PcLS7yZXRlu5V96kmva+QQ==
X-CSE-MsgGUID: EcRUmNdoRGe3QlvIUuUgJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128890948"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 08:23:20 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 08:23:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 08:23:14 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 08:23:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xvyHRJF9oTYrEgM68fJkilh53QBLLzBbxuxrNy9dc+6al2w+/gj3f8DGtLzwPB6b3RwK7RstYHZPZdsMH8BxdjX6ztWj3Esu0ZaZuS4yPhgqKsLfpSSW+efs4qC/i2zib7JGn9UpZkMegYDwvpA6PDWce6s4GQWezGLPTXN4mfk9jxnWXwow+o8/BSqHghQvjDHO+7+X3DQ8iVyiItzaYdxztIae5MeS0+BqMs0zdL+1bzWwdEpnaHc+Gaf8E8OJyz2ixezqTYHKflEjXqaS1qfJ/bSQt61itS/au+zsJi1bnCjvgotoBqxarbZfyNXWrTiL+g5As5YWkSmZ0K/7kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NrCsY1s7/Ynmi88KSbhCVP/totKV+6xDX71iEm6qoiE=;
 b=hghx/y7/QScQo3HhV1DhwWqRfFqL+g7kdhNz5/MO5+2IrOJHFSmkpUUNnBpr+o0dW8kkxEnLKFhcO/SR/d8Z3cHpwI8CqwH0urX4OuXbN+Ed6FF+czgRfkKKMyfl7c+2eTYnJ8X+ZDFEQaw4oliQBqpHJHkoG8FEq76ECIQ4EfB4Fa/APJ3GNphUZ8Y3rGu5ZgpKJe+b8w6rr1LKKaNLtY+221jknXfkv9CZ2kmuPdWVjvDuzTEHNtscWEu+386FJqqJqSM1/rEB6v+l+NRK3RL+uPPUq7ovN/6KI6/YExsmLfbLLG+3f+cqlBn7h6hZt6kJGQ1xH4bkQifIMWnRLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21)
 by DM4PR11MB6142.namprd11.prod.outlook.com (2603:10b6:8:b2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Wed, 18 Dec
 2024 16:23:10 +0000
Received: from IA0PR11MB8380.namprd11.prod.outlook.com
 ([fe80::8227:fa7e:8d8d:df1f]) by IA0PR11MB8380.namprd11.prod.outlook.com
 ([fe80::8227:fa7e:8d8d:df1f%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 16:23:10 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Schmidt, Michal" <mschmidt@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next 2/3] ice: lower the latency of GNSS reads
Thread-Index: AQHbTKtz1pwi9P8XREestUQC2d5HdLLsOJJr
Date: Wed, 18 Dec 2024 16:23:10 +0000
Message-ID: <IA0PR11MB838025A665D960208095BAC086052@IA0PR11MB8380.namprd11.prod.outlook.com>
References: <20241212153417.165919-1-mschmidt@redhat.com>
 <20241212153417.165919-3-mschmidt@redhat.com>
In-Reply-To: <20241212153417.165919-3-mschmidt@redhat.com>
Accept-Language: en-GB, pl-PL, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB8380:EE_|DM4PR11MB6142:EE_
x-ms-office365-filtering-correlation-id: 5ef315d3-fd0c-46be-c8dd-08dd1f804379
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?L/GKIP0Bj3DmPo7gjjqt/o9olOGipM7DqHhRRJS4w83YOxU2UDHj3WzVic?=
 =?iso-8859-1?Q?WwPlRto0nS2Br1VVUX7RUS3VP/2vTIr0uYMFKzlq3GEjj7ljGKwDE9jBI4?=
 =?iso-8859-1?Q?6b8211eEysRjA5mW//gQHebm3tUF9GMtBMZo7LWOGreozCdId5Oz46siwT?=
 =?iso-8859-1?Q?eywzq0bSP3GklOp0fyDTiYQfCVhHnhuRTx9AZtgShlgZeybLFQ6Kem0CRu?=
 =?iso-8859-1?Q?3WgbSdw35BV4p/QNGeRaRzjgsbnlNHT+wOvAt7DsAJO932GX3NSzroXRDq?=
 =?iso-8859-1?Q?Wdh+Ii+qeWwcLmO290PGR6ITuDgNsDRifz2iXVLvzCpoPGkVTP/NJnHyfR?=
 =?iso-8859-1?Q?PScacItfTYFG1zqK1yyQeOAbr3ytbcZjJCixeWsNtUFBr1BNXKIJArbkbs?=
 =?iso-8859-1?Q?o/bu2p9RpOxMQIgPYPq9pPAV/xjjp/7mkjwHYy+fYHfZY4CgXdImzjpxu8?=
 =?iso-8859-1?Q?2s7e4dy+dVtbs+8DDAR6FKNSYsuhKezcWEwYjAJnFdAD451AwF4KgQD1f0?=
 =?iso-8859-1?Q?KE2izYl72877JM+Smi+Iy9WXHFLyxW2yaOTA/9bHM2E62lwmam74JBbTvX?=
 =?iso-8859-1?Q?l98DD80R/BMuv9/kGaT7GmWkE9xdoNVFsWqIJhoK800zvOMNRJi3zNvcwP?=
 =?iso-8859-1?Q?1hmHx6ymYDjx9ytW6CnNxz221bEjHISqm1SzE+pi6FvAxQM9Iv9PcUUPla?=
 =?iso-8859-1?Q?02LT78oTAkPO7fvrseAMWt5P256E5rKG3tLHBczBd+EVOo8c8/e2uU/uxE?=
 =?iso-8859-1?Q?f7ChJIeipPdI3uCNp0JeAplzk7IC2TCwjK7Di9PJI5UAwu9tYwT7/F75VF?=
 =?iso-8859-1?Q?8ttrkVd7UHKS8h2skivLwAzTcBX6qcgH1Q7Aq1SELMGhkeJlHwkls9JNv0?=
 =?iso-8859-1?Q?8YKNYF51jyTuiAlgMh6gXosyLMcbKXwTDbZvDu678XO6AzzBCJuBSyJP/0?=
 =?iso-8859-1?Q?SFbtQfQbYLBiZP11U5HO24QG3DqwXqNmXwFY5Nb001/qCg3pLK5SAwZFYZ?=
 =?iso-8859-1?Q?hpvwkzrDkxiEP5Bik2kIsT+XAWTKddG5sEugxbMRbv2rVTv34WssO0ZxjU?=
 =?iso-8859-1?Q?PN1H1HXFAD8ekk1kr9Y8ibGb/pIQepfkV/ZYJ7A+g8OgMJL0cnT/lBts6m?=
 =?iso-8859-1?Q?aPFffgs3o8iOe40takccLcAzI+osjv8jfGdtdG0afKP8kw503dgHli3R59?=
 =?iso-8859-1?Q?2jDvqwiM5fOJfDMtH8GHnuow6VbSRGUekXDK92XN+w0YZSykv3/zVAEaSn?=
 =?iso-8859-1?Q?5bxOB4wHX+wLm48K1lA5T1anTiqNrGUD09X2yzKawCCHEK+4Gs3NgzXVpT?=
 =?iso-8859-1?Q?P266eQaNJG2clPEVeDIAIMvDXtm9aGWG98C4vyReIzHEenZEeXFisyt15g?=
 =?iso-8859-1?Q?VINqkL+CJWwrswufjwulfySi8S3VnYQrd3COf5Nv7A1790NQxwwujFajR0?=
 =?iso-8859-1?Q?wT23fcbSeCMWQFhoWFVsPaGZ0gOLoRupCIC+6tCJ1fvTfd+xKtsjsLq1Mz?=
 =?iso-8859-1?Q?v1wB4ESi7Ze+3mWkvcFOzy?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB8380.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?rPET+SmWCPYeUWX2Pm+TiWqVagNZASR7uTTu9pBfaYmQyLPbxKz+I37gNP?=
 =?iso-8859-1?Q?cyjwcsvCOQfwroOXq7GCcIAj4jFvAwJS2bQkIuEkTmvn7/dMDsxO4gGzc4?=
 =?iso-8859-1?Q?FF9Pq8WQxu4O2rdLwZG64YaQusSmZeiLfotlfmdDiry0uEV+j5wm0VGoyI?=
 =?iso-8859-1?Q?/R8z9DSIhccx7cwIuoWd25bajRc465EEBeqMIIRGX3gQOFMFdmlFOuC3pa?=
 =?iso-8859-1?Q?3rVBd9pIzWjIaZpAR5MHz0v+ZxsH8UUC+Us9UJusCjvb1Z3aQGFtk7vvFy?=
 =?iso-8859-1?Q?9FgPduc5GJfUyKru+JFXCqOEyTfwmBmm2XwERm26sweVj7SXLtOUDHYBYC?=
 =?iso-8859-1?Q?J3ZG7/3/LkZAsEWcWNIik5D9pnHf3aT1sBa4PXDlc8nRSUB+FBHR+CfWBc?=
 =?iso-8859-1?Q?k9YvYmeDj0KG9N4RT1M75+yl4EpC4YH2dKqviRpsHypMcSPodO/DWeOE5S?=
 =?iso-8859-1?Q?NsErQKNKoY9N4rnfY9Tf9dyLECCgfDWh4Of8JdGbBLLE/U7ajpEpOeiIfm?=
 =?iso-8859-1?Q?w7+9lvx4NNjSWJc9s8/Kk/iWQoZts1hVyx9kIwkftMZLwC1slTyVaJbuvr?=
 =?iso-8859-1?Q?yC3Zq1QsVsS5Ghs5Lv7sKBEMCB2Wul7Utpku/QuXldc9cIWe3nTeDIv55t?=
 =?iso-8859-1?Q?+AUIOWmrnmzuPgeB3loAzVDHVYeaVwO4DfTcxEg9610vJU1XSn5f5AA+XT?=
 =?iso-8859-1?Q?oCXWF5dakzquin/9LXJxZmQcSsbU0onMcFxU3nXbQW5j/Q0xIHNy+nsFVW?=
 =?iso-8859-1?Q?cT4gaCuW11NF3sdTWta16JO+8XoQfShW3J2dvDEsTUgBpYDzgQJzJCxqXY?=
 =?iso-8859-1?Q?vUPAUMn/kdzw468YBzDDxtd6bhEUnO24jjv1LmGyBASHpH91f4fYV6ujc/?=
 =?iso-8859-1?Q?3j2b6nJdcicIvqPDoCGkhmY53H4OTgDwysK+Z74KeTDnF4Pu29rJnnGYFy?=
 =?iso-8859-1?Q?QRzGhLQ1vgZVHDqUp1no6KoypF5t1mC6FLcWSXTjgekfoO5wsVbidQsLJL?=
 =?iso-8859-1?Q?CveTb1lp2/T++hRAHCMr4L01Y11NWfnHS/aiN/3zNI0IFJjkjeAdpDBOeq?=
 =?iso-8859-1?Q?Mequyk2KAU9IwQ5OdDrG8WtqC+UsS6Ofoik5PQjuRycpJg8rs0S0zcVw7/?=
 =?iso-8859-1?Q?qjoWHHlX5R/uPY2bmIKfp65XsuvygBNjlQKHt36ydg46Jc08w07bJ/BST0?=
 =?iso-8859-1?Q?GHVEWPPpSFQedCK8hDxizNAh2Xt23x0eQcopeqjDw1ktDzwU5WKe98OGN1?=
 =?iso-8859-1?Q?N9g1jguqSJPcGjqiTyX+fhOABEc/xBbnhHcV1RLhVEohuWf5YuR4DAMM0a?=
 =?iso-8859-1?Q?oTghbUKfAwbnC9M5DIaFlLWW5ip6Hg6i0s/r7u1HGGcm0PiPI4LdpdgchS?=
 =?iso-8859-1?Q?Xi9Zmob4BzDqKrAlASisjodK0FROMeRQg6IAHQG89gNZksxJcnzIixPCAa?=
 =?iso-8859-1?Q?W7k66+H7A6w1CTjD4S1217ozybTzcEvHJpxm/22pnVjNGU8n8nFILPqDp2?=
 =?iso-8859-1?Q?oNVTmdkPTBIlzuwLTHJ+8dtsMa7ZH1ChdOxWzZi+teZzqisNyU/WF81CQp?=
 =?iso-8859-1?Q?guqtUw9a2y4xG/92ByV6dpF4G6mLat6s4ki/b0yDPrIxPolzdmlzElgPIM?=
 =?iso-8859-1?Q?e7Oqk3hf7ji2835g9kZG4AvjSZxvlnt/Ce?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB8380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ef315d3-fd0c-46be-c8dd-08dd1f804379
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 16:23:10.4463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ibpv+Ur7CFKjgMoRodGgztCGX6mgi3e7O9aGYeItxITikVyAbhsVLl8hZ+NwGycp3G1KnGp7P2kuIDOBm5DMXMgYR5a5D5BDoFxSwD+X5WM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6142
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734539004; x=1766075004;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NrCsY1s7/Ynmi88KSbhCVP/totKV+6xDX71iEm6qoiE=;
 b=T5t8WT6Wt0qUXYVkoq9iGAvysQfGaQjuvTG6W0mNdJDGQNG0cdXTPY7K
 hLqQrKFQgxec5PbcgY7hm8/3HUEHqXSF5gMv7ID7O6Qh57u/ROKyXI5gn
 hnQ6LuIgkEaG+UF9rFZ7nA9aEZOqawk4e9dT+G+5r7m9Cgiur0NE/XIeq
 kV7P7z0A/rETsIQ3ffivECdcHQG67cH16pk+YHVIUyRPOIb29VJ8L/SuJ
 MzFP6SisW8bIIMXtq+UZ+XCk0rceoFmtkyg5Orug14/HgU34HohMwKVfp
 jaJRazIVb061whgO7iXFQfGJskQ1dbvEX0tpE4js5e9SEMprnOAKzAXkJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T5t8WT6W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: lower the latency
 of GNSS reads
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12.12.2024 16:34 CET,=A0Michal Schmidt <mschmidt@redhat.com> wrote:=0A=
> The E810 is connected to the u-blox GNSS module over I2C. The ice driver=
=0A=
> periodically (every ~20ms) sends AdminQ commands to poll the u-blox for=
=0A=
> available data. Most of the time, there's no data. When the u-blox=0A=
> finally responds that data is available, usually it's around 800 bytes.=
=0A=
> It can be more or less, depending on how many NMEA messages were=0A=
> configured using ubxtool. ice then proceeds to read all the data.=0A=
> AdminQ and I2C are slow. The reading is performed in chunks of 15 bytes.=
=0A=
> ice reads all of the data before passing it to the kernel GNSS subsystem=
=0A=
> and onwards to userspace.=0A=
>=0A=
> Improve the NMEA message receiving latency. Pass each 15-bytes chunk to=
=0A=
> userspace as soon as it's received.=0A=
>=0A=
> Tested-by: Miroslav Lichvar <mlichvar@redhat.com>=0A=
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>=0A=
> ---=0A=
> =A0drivers/net/ethernet/intel/ice/ice_gnss.c | 29 +++++++----------------=
=0A=
> =A0drivers/net/ethernet/intel/ice/ice_gnss.h |=A0 6 ++++-=0A=
> =A02 files changed, 14 insertions(+), 21 deletions(-)=0A=
=0A=
Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>=
