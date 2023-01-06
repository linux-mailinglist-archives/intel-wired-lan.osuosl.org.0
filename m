Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E9665FB8B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 07:37:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22D4982185;
	Fri,  6 Jan 2023 06:37:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22D4982185
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672987030;
	bh=k7z0DEhhPrlZrr0Z1znAxElEscAIHe6hAku6ln+0FWc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r6GXg8lNxKYqwU2EOXg+Aum0mJdWsxOLWKPBXFNu8IzJ1Oz1sKm+NkMeWWfuo5RkG
	 iXwCPsZSG11Db8iAk2WMQq/FrHJ3mTAu1d3NVtXgVMEGrrFZovMmmyLebIrePjRiRc
	 7hQF0yZ/hF2DAf4G7h012vGL2JncAcVmG9UkgqLj+ObbNbg/upEhgXwANdtR7kdVQ8
	 Ye/Kux7TLvungv7V+Xdu2U9VGBLJy37HnHwLbf1zLa4avq4mRN/DkPVpH/2UD56FAL
	 /HTdn9d82CaQlmlrZrISQK0qCPLeVhC8XAjrdsahgMj5CS1ApyvCRVNFQ7M1o+SLV4
	 rZab36PG7HVaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z33bx39dZXq7; Fri,  6 Jan 2023 06:37:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3330782178;
	Fri,  6 Jan 2023 06:37:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3330782178
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 413811BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19EDA60BB8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:37:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19EDA60BB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CDCN3ahvU1PF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 06:37:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52E1A60BAB
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 52E1A60BAB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:37:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="323669770"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="323669770"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 22:37:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="655867275"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="655867275"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 05 Jan 2023 22:37:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:37:02 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 22:37:02 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 22:37:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cc28u6UROA3DJ20mcvRmD1rjjZh5GRYTgDfINjDJL2lH3KSXTdfJC/P1yPBqYTPVng6nd8jgyCoCEUA7Az7VswvUn/DjxxIKlkKYn91vDjN8oqS/NOoihE0SZikIjN4+HqG8zoHC5TovpxDs/OaoEXsgqfv3vyE37T4HhmRWjMGqWQuTXjOcVo5qrDNNRtrjJg++xkCXuTaZIdWHrjV/CmjBqJ/jZyr78SEWUrrPpIlhvx63qWIlbUYMrbik5FiJyGe0hstu59smGNOcDhlc7w6WMcW3K0xUiMKy4fusx8MgbWefbTUBnYTWkT28a7ZeSDEcf2mqnapST15n+eafuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YlLpSwqQ6C8sVadATzQUGvFTl0t880vGriWFsRTiE4k=;
 b=FbMFr2qAnquWArq8d87Xqm9QTrWI+flgBmjT9KPKt8kC1BCj6O0dJRGe9NJjTN782ZZUGj94tXean0/XDO7fDnh/e8O7td9DUDx91SY3Fs9SVcfrNrfBiycJfD3Q6D6b8sUeZqUM5nKzrU3NJeVIYDjJfER6wMcz/tYYdqMoE+sX6KU1tDVAJVVhinwZtjKqYSlAktivCy0bLZLasPo3rBDqEaVjUVvRgJaRj0Tj5prJ7b54J08J7v3m5Tus0nZbt7Y6OYmiUZRM8ndZOFVGoLKoPYUHOrvERuWQikA3ajeuQZacrKgVvFNaghoT5ICm5nHgU0bglhjZerAl+Kj3ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 06:36:59 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 06:36:59 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 09/10] ice: update VSI
 instead of init in some case
Thread-Index: AQHZFTMHyBjjY8cEjkCSc64bBmG7+K6RCAhQ
Date: Fri, 6 Jan 2023 06:36:59 +0000
Message-ID: <BYAPR11MB33672BC85823CA5B36CBF7DEFCFB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
 <20221221113822.12858-10-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221221113822.12858-10-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB5294:EE_
x-ms-office365-filtering-correlation-id: c378b9f7-31e8-416a-0b36-08daefb069f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RGTKDgkrZPBBDbph66HWkQUhw3Cm1Oe70xXMD1ts/wojKWPVhZLXAeUGEX1FUFQYOTlcFIdgZcDTPfnmOXFU//kYOIbhmtFTyB9Qw6vHCDpekv0j3JhJXYTq3F1Epty4ckzh2338ezJvy8igC/Ec0IKVylH9ntWk1gso1pat4fREbuUPbZNPe4IZHkJXvyT8aorjRlzhIFnS0BtN3OnyxPVD7BScRGyPGnZWaeueHa7aCQq7UcRo4R7IT2ipqQatPzmom6LUxT7NYO5qjje1fhLO51fxQStJtioErv2RHGZXXyVJHYEaiFE/uYNu0nhoJP1MchdctreEy37ts709D9Ko7VFnHwIhzlOAyyLGetywT4iauUtRfC379iJXGjecl8LYRI1QdD7hyaPEYF+3hmGh/SpZLhqs1Y53FhhHM5WunZu21lnJUqpC53FRRn9mYr88bOmLxf6ATIK8FsYBeWiJgMmQ/AU3qvGrjZdWl572skxCbEjCfdt9m0eTsyI3lmssdWdgSiuP4iOXG9ICw82orSGO18jiJNYr0QL/gpwlTXjs8ioVKT1e6e/1UKNRkpjGA5I1B+HbFNDdY5lOq4MnhsbIlKqzx8u8DkAD8SCb2owZvRt8kURgfztm7OkzaqYA2MU2AKkg10gCH1BWYcG2kGOVUMiIAZZUyZU4lT088YDGnzU8L95MeGbKLamK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199015)(2906002)(5660300002)(52536014)(71200400001)(8936002)(41300700001)(15650500001)(478600001)(4326008)(316002)(8676002)(66556008)(76116006)(66476007)(110136005)(64756008)(66946007)(66446008)(54906003)(9686003)(55236004)(26005)(33656002)(6506007)(55016003)(83380400001)(7696005)(186003)(122000001)(53546011)(38100700002)(82960400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YByRS+tCAoO6dNH0WZl9GUhaa8ITyXscz9RF9A7JaoVRFe6nH5ws/As0cJxj?=
 =?us-ascii?Q?F1yoxK9Vqndc5BzDuRqGLJokqXPLWFchsKX5N1TD/Iiy1M+hilqJkzSDVQiv?=
 =?us-ascii?Q?M6eTLs7/M5KYmWPRpN3fMRi6PWlV4+el4PjL1NPYR21GsWZrJhM1p/ECxCdK?=
 =?us-ascii?Q?iNJFmI1B4yzRPtIYhj6smaPox75BBOXdTA2tcTi1UVSEgfg6+e+K2F95Ak/Y?=
 =?us-ascii?Q?MBDn33agB0da0Mk0nARDVGg679JxsVj1z+L0mgue2NeApKOAk5Ujoi7hYmTc?=
 =?us-ascii?Q?TMuTCUrjeXpojby5Oof3rEhG+BRF6fUjrO/ER/uhvD9/eaoRBjNsGzFsDTp6?=
 =?us-ascii?Q?KkcQpfN+vYWQFdCkvVZDBU2rWUKSdik1/19jpOIqwqtBy36HTSDABsY7rfgh?=
 =?us-ascii?Q?CuUzBzxwQqrZTmqSIc9dd8VY+BqQgtvrGq+amfmAT+uGsf+tfIc3T5aWXfKT?=
 =?us-ascii?Q?kpkzJfruu7b8eME070cVWXsRD6GBVb2DrKt7Gh1DYx7Ad9OLMp/oQEb5j2na?=
 =?us-ascii?Q?4PP9PEWS/DMzgei8ADQal8wjs7OnKJ7mhKPbmxFP0ecb+bz6T2KOlNhnUQ+j?=
 =?us-ascii?Q?K0eN4wXMbPc7ane5P55tel+5vQsEiwD0MRZg7hc+sKZaDbs7bxLOWQzZtRzw?=
 =?us-ascii?Q?zY0m4QLiRYnomrAtD/phB1G+B5mqlY+dyDkrOuJjgBP3UkfAZjPlzp61Jp8x?=
 =?us-ascii?Q?XPLq2ldajxenMiE6uM2M6YONEhQNTyIm/4YfR0Vl9FzopKqOJCL2qFV6cfvv?=
 =?us-ascii?Q?bEV1Q1sqXFG0Jj39TDXa+He5DKEyNzMiF2hZPvcsfc4nu0N0GfRzIKQSRcJM?=
 =?us-ascii?Q?qW7x2y/xydHXc4ssuxOTvvUpNInV8RlhpprcBeMosvId/EBhSsvjhL4s8z6X?=
 =?us-ascii?Q?f4AUuVgxwE+Ca+4WGIt1UsTBDhOKzZWhtGzCM+mC8pGVwGAz99hPaRLe4zPw?=
 =?us-ascii?Q?H91B+F7+kvbATH+l/dJtJc4oQ33vXqQkrwUgH28ANGZoH8xbzp5iHQTtbeUt?=
 =?us-ascii?Q?Twi4w0xti9Ovx0UbyOZ2oHb7fKo5bK8+0Pe8+rakt2hA/WHu+WZ41VXlMgyh?=
 =?us-ascii?Q?XMBaycatekVxkCQEZolmWqR9od7UjHRv1CjM9seZV2KQ3EtqLt8XbEb/u14Y?=
 =?us-ascii?Q?is5WbWSDS2lfcdw3n77N+Im4J3D/Y6BrHvFth0PAaeJywaTdvTh1RtR+du/u?=
 =?us-ascii?Q?qX0gLuUu4A8F2K326JwQrZ8dpafkBkGWiTiEDOEf1GlPgsgkonUH7w9oK3MH?=
 =?us-ascii?Q?Q7kyOjn2RqtXwrwJEokjEwFa59vHbBYOu3ViXpOxzNHyKAyHtpTHysxC4UoA?=
 =?us-ascii?Q?0LapCdLvRM2DHAq1Bob46ZYJL09kZ70VfPO9F5tG/+hSbxD/Rn4sMfEMroQ0?=
 =?us-ascii?Q?dn6iMjJ9BxnhM2wQrUyCi78oypTcsltswf1g2NsiUigb97+Z3hl9iKFRhlu1?=
 =?us-ascii?Q?cAfESrw9A5zmzb6S3wmsLrZCm1nMmRBxJxideCLC8gulWfWnc5tgyJ1Gx0qA?=
 =?us-ascii?Q?FBHbxJKUhRVas3Xr9xC8aavsFFKn+vFpZrLavgUDUtn6cDUBnhw9zOnF8b7g?=
 =?us-ascii?Q?jbvBRjXDMW+4pNgVtoBwvJr6aHAdm7uMi+PMGXNO?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c378b9f7-31e8-416a-0b36-08daefb069f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 06:36:59.7089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RJNwbcHTB+WaAasDV8G3Lgl5nYNQ76nMLB8jEjdEgjErFc31D6XHDhq4A1Nk3GiIJ192LcUbU1oELzGjtAX5OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672987023; x=1704523023;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FluYrtO0sCyikvnFZY9N/w5VkHWsw8iQdZ0D2zq4oc4=;
 b=dCM67Uo6apipYL9lWtZnpqb2GjEAmkFoFEQF4Z4fhedOH7UHk5x+S4gh
 bsHlJCHdB9QYchTjwJzlxXXZ6zlwUeNC1UN/WS+zYJsVig8tv1t0rXBXW
 1xRQwsauo+BdFlSnneU6FeB30pzCoeqrze2CA19/y9i7KnkejsI9YnBsz
 5aqQ90OVYnzHPM0s7HNoCnugn7NZgUj/1Cq0ebuBfCTqgSrwZNSJ8x5/a
 DpU5aY/qj9pMOjbw+hmjq3HKmRxDeRmyX8ThcHNmmbkibkgN8fobm5Xri
 hRzGFqY5JR6eFj2+T3D5VQF06tMc/A3FhlJePEigNWYRHaMKpAethnUGF
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dCM67Uo6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 09/10] ice: update VSI
 instead of init in some case
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Mikailenko,
 Benjamin" <benjamin.mikailenko@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, December 21, 2022 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Mikailenko, Benjamin
> <benjamin.mikailenko@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kaliszczuk, Leszek
> <leszek.kaliszczuk@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 09/10] ice: update VSI instead
> of init in some case
> 
> ice_vsi_cfg() is called from different contexts:
> 1) VSI exsist in HW, but it is reconfigured, because of changing queues
>    for example -> update instead of init should be used
> 2) VSI doesn't exsist, because rest has happened -> init command should
>    be sent
> 
> To support both cases pass boolean value which will store information what
> type of command has to be sent to HW.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 16 ++++++++++------
> drivers/net/ethernet/intel/ice/ice_lib.h  |  4 ++--
> drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
>  3 files changed, 13 insertions(+), 9 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
