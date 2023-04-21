Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008286EA869
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 12:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06B87415A8;
	Fri, 21 Apr 2023 10:36:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06B87415A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682073408;
	bh=G6d3OVCmXDyWaqPWnEclodjk7pmHuVMBV2CwXs2/A00=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P4MtlJE1WlOw99TaZZ8jeMPO8A2KZA4d1j8kGcOSFshACST41HyXvI9lRQYRtGRsr
	 BLDCGc+xK0LkpGikzUbKhgdO0lAuN00SAfqxA5FDBXmfxIoA00b/FThTW7Sb5Q5aNY
	 Z9c+dtgK7TVbXmuqm8f4Jx60edyXhC9sqYfGxJzvz3AJ350l+xYvEp6NA5Wrf502Ga
	 nvrvF7nb/2jLJ0ayYDJnVbUIccqEeR8ec7TpYh7oEvwMXkOMhnTplJzQ1a1cq4Gf6b
	 d21qkw+Cf2JDNRrZBJ4+eDRLn0A3gQil2IYFTjYKhB7PXaZOuY+Bn2FLDa77jlMCzt
	 o13Uy00eAFF7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xWLmahsMq3Z3; Fri, 21 Apr 2023 10:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE74B40A1F;
	Fri, 21 Apr 2023 10:36:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE74B40A1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 55D521C2748
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 10:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CA98842A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 10:36:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CA98842A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N0a3vWo68Yd5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 10:36:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB90884263
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB90884263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 10:36:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="411233813"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="411233813"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 03:36:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="642474741"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="642474741"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 21 Apr 2023 03:36:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 03:36:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 03:36:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 03:36:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 03:36:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B0W0LG07T8HS4d0MtRLHovTlO+g+uzMa6j5J8ItB4a96ZcFxdC8Xl1f9Iq4IWvMbfkPJJYSb9ZWirr1+LjjmdmBspKl8trRY053gL7n/Cq/R9GtHw+1/WJL9JyH6ZgfU4dgYgxlmYUvruoIrCwWCBRUBKcKxhgV0zEx31rvIKzZob90EpKsyeqZ5XqAPrPur1meZl5diGshRuZRjMGFPOcjcRPe9hWPBIhUUfx28D39YO8Zj8FZDyHKEAWDk8t+nzUWqfETm9z34MorqDzMC5mCSUrAjM8oyskvRRBdZ5aCWjoFNJ4dGjKIqx1XGAeqY8eeY1aQc38IBvfpyd4hW+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mopfJJAXJ96stYVPqW0U4MmjJ3HBOVyuEmAFwtOOHFY=;
 b=DHprlZnhv2d+JB+Y5TUa53BcVaxNWe9GO62Gi98bLsWOVmCHoBUXgbIHTefb8zkbpCJYg69+0AHGWh0mMR7d06EAzAYsPcP7fG3tHEIal8bS/wGGHy+GAcO3u3Lbyr471SUu6vUYPrgMK1fr8620DtaFhkdkriYVnDCw+Omb9YJgJN1tifAYgjMaIwMyV+SZHwhwadDfdLkCrY46gbBW2h2gra9rUB5ItdjtDkKas0g6C7CK7eytFhEl3IWnEmyPws2OSPp15tZx0XeLT8jHjRR1VmtqVaD8B9fX7D+qauQBIY1IMcJ6ezjiBGwq2erDwBrJu9gjBnGJXO8pS61EYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SN7PR11MB7068.namprd11.prod.outlook.com (2603:10b6:806:29b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 10:36:36 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::8398:18:e174:6afa]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::8398:18:e174:6afa%6]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 10:36:36 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: send VLAN offloading caps
 once after VFR
Thread-Index: AQHZcVfoXxERTCEhmEmvo+zwU69Y4a81l33A
Date: Fri, 21 Apr 2023 10:36:36 +0000
Message-ID: <BL0PR11MB3521FBA9883CC1767A75B9A98F609@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230417180939.26609-1-ahmed.zaki@intel.com>
In-Reply-To: <20230417180939.26609-1-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SN7PR11MB7068:EE_
x-ms-office365-filtering-correlation-id: 2dc911fb-e0b4-441f-69ac-08db425448bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RLKjdIn6q6P1CfxGy1g/6ezk8vtpyaiE8ileS8BEOAQNYT1jLSMeRH5qqfLvizb7Jso2Vq/40WY+3e3XOvgWKFXx1BO5JibePh+QCCrJK6GNvxpEQBafqkp8nVUutNyeJjD+xSNHX79/6RhekGngJ+i/GBEchOYRHOgLNfyzctIC90fX7Dl074OMTa47z2aLJ2816czU1tKEWCe6u9l2hXhkEyMoBK1JF2YmpvR+YaIgIaMOkXtAM5C+pfR8HX1Aez6SJ+aNaebkMnFg/SFvh8nK0ZtWgoVDcyFCX+K+lZ3XkLR9Saucl1nfCu0I6IAvQcF56RrJuK4t4fJ/Cv80ltWWTZmh0MLrjY6FVaqTxCAS2mwxZc1hDs0qlBAZHxddp7wyLFoMexZXhfMdZGE5FVs+KZirwf3/GqSS9Az6JBx6IFvCihwkramQB6AJYsbDVLnu+MB+9eNokYwZBEp8Mg8EwvYyAhgwssImZODAy0MH5IJkAfKXVPJsVOLiQlnWoYixqmO7geJRXTCDUxySVTpfYApLt378AWOZdN6UagNM3ZB0Ehwz8JvneazVSToQjDoEORsU9V2RhSJw0eCAwg+epq8H1OoF9ceQQGdMjVocL5dPik5Fp9EZyBMzMy+E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(396003)(39860400002)(366004)(136003)(451199021)(478600001)(110136005)(83380400001)(66574015)(33656002)(6506007)(55016003)(53546011)(26005)(9686003)(186003)(38070700005)(122000001)(86362001)(82960400001)(38100700002)(71200400001)(7696005)(316002)(8936002)(8676002)(41300700001)(76116006)(64756008)(66556008)(66476007)(66946007)(66446008)(5660300002)(2906002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?+Dq5RdtLkzx0swC9SERf9mMGh08Lxixzz65Nzt6I8Hv9sijWx98E9F5N2i?=
 =?iso-8859-2?Q?zIMCU9yM7cqs8U1afQ02XkGbFltD16Uchc10BvSQHlL9q+mTwXDpPMILC2?=
 =?iso-8859-2?Q?K1lB/TiGwprsgn9ERKJJ/nD0/qem7sDVb4uav0o1RIsjrTrQK2A3srTpOt?=
 =?iso-8859-2?Q?OIuay6nk1KLTVGWM8GpH1iceqxJ1bwgNy6tN5wUFosjfunnEhuTE0Ren+Q?=
 =?iso-8859-2?Q?V33kQfEbAkRkTYpRGpT2KgrlApZyv7fOmlpG+ZoO9bkBbT5UmdzffjnpVK?=
 =?iso-8859-2?Q?Fjgw+nREUTjj0ry2EYMgDGf0JcOG+TbArtJ73jR5+cjwnsQ2o6KVlbak8B?=
 =?iso-8859-2?Q?ipNdQADGQ2KxbQaJtT4o5vBH9Cpp8Qs7G9cHJW89K3yW/6ZR8tLxG1J28q?=
 =?iso-8859-2?Q?5MklU9j7WdHjKYDxlLUirCEBPfAe138NyWev6Tv8hCxi53yAlgxNmslZOZ?=
 =?iso-8859-2?Q?9exQSwbhgs8ihme2SVA24w4SDtc7CkOIKaDqXkR1H97rPeVajqmOGb4zRo?=
 =?iso-8859-2?Q?aw1s+haSpV4BFlcSSYfO1A7qmmAuRj6uDnxYfqHtR6vIR7CkrH7GYHOWh4?=
 =?iso-8859-2?Q?jKN9qb8qIqwZ3oZVunFaNDA5oYkGtgE/GDEHU6SICQcJ7ujYTwtAVIJTkx?=
 =?iso-8859-2?Q?OxgmTjbtDWNNbof/fYu1Cn9mE3Iozp++1ZDGip3gzE2SOajic2h0XnRhr8?=
 =?iso-8859-2?Q?BCQB65lmUqGBSb1+pB5ZHqogoB8gCcPqb6hnCzIJlxoVNaowUF9JhP93gl?=
 =?iso-8859-2?Q?m/8ka/T7EaoK1Wcj9CvTW23akJsrVYvQnP56iND8TDN0ZniTBaQafIvxgN?=
 =?iso-8859-2?Q?uIWwER4Wkw4LECisCinYR03UNJ/dj6rhsXSQ86WEv4YgB4EU9eiN8oPFPV?=
 =?iso-8859-2?Q?Yp6pCgm5rLqusLAKu7Z13jtdX5OtW0pZ8swpNrv5RmMcy3qF3g/MjJgv6o?=
 =?iso-8859-2?Q?aSAdHtVl3TMdhd/QoG5OBFkpmq5QgQTG6QWj0mO9jjMTg60IZln2OhonK5?=
 =?iso-8859-2?Q?2axzx4t53KymGqoLIR2/QCb5tEw1HK1oe52TKj8c4QmnP5kXwo4R6nJwJt?=
 =?iso-8859-2?Q?vLazVCFyiKfLcLvUmX1rSoz06TfwscnVyFvDu6eVLTOj0UxEBHY+U96kYj?=
 =?iso-8859-2?Q?Yv3RylDDfgXishaJtw7pkTpstfbFiPfmB7PEgx3ENCFtoQ219Z8RMmmxO9?=
 =?iso-8859-2?Q?+k4gjJQWUKJ5+z2rtlZGCjX1P4PntVE6HBW2JgvLVEyaSmqvWFINDaM3Zm?=
 =?iso-8859-2?Q?PEtwTyhkPnzSBWyeNnt1Ou4Wn6xWso+hacB+SQ73pNnfJfDEqODK/TGGuw?=
 =?iso-8859-2?Q?r6+sfHuR4nFuHixZJiW+1Q/nzTLxd1as+l271IHKNitkQRaw/JdlfJAcIH?=
 =?iso-8859-2?Q?3SQwGxsbitaTxRiet02grIQtw88Zq1QYJIKwTIdzFuAQrbRadX4DzZrSZL?=
 =?iso-8859-2?Q?VfNH4YEcEYJ8TFa8sQRQ8MQwwguip69Qssxw/5hdGcczB6OYGjoTlgaIUu?=
 =?iso-8859-2?Q?uY4EBRkNrqVSJ3Z0eBsfzqbdmkPJ0jhWEoXpowrZByzslaKmBw9ABwPwNJ?=
 =?iso-8859-2?Q?r1pE3QRrLJzRuRyr+bjMC3oKiM2Eci2dOIvPfElKGnNbN9cyWqkT1CTiTW?=
 =?iso-8859-2?Q?5KSMD6cCMr6ex6sD2gZrJp62Vlu41OUGO3kdN4pt3hKrJ0g1NmhGzamg?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dc911fb-e0b4-441f-69ac-08db425448bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 10:36:36.7583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m9qvQUN+KPHxsp10Na3RKe9q32jzl8/sMjcxr7QgGzkDhvb506dClDZ9My1XfyfHNCwGZw88asF6AmIqWURBtZkz4xWyLjxg3Nm/971HqoM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7068
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682073400; x=1713609400;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CQB9S7/QnrvEBxByh6WAQw8EO8eJ8x8z+zfqIJYEsLs=;
 b=MAio8BTz0qAvHbcYRr/DwJ6jPfK+A6nAOMaNo3vaTcpj8cNaXHrM7HoD
 vWgepaTJyZf2TNgd5yMqaRMgf8Ro58rhHfgaZUaYBNT/sJIXAJTFg+yRx
 xyaOP3PK6qS/fJJWNMw+Y/f5BUOeXeQ9U16EhWBvO4cR9UpacEiAK1Ir3
 Lh30EEDNh+UAjbkuQpBT4d0k32NRNqZjW172sOdNBkm3hevIYZhGUxFZa
 oDj5emlM/M6fQhJWt/8LDKHWh9vwcMCpZOob5tfmafk0IRrhKI2YW/RAx
 y3U5hQpJv87Z4Xli0VikFKJB9NdCGtLD3yKbEC/wAl/I6JKMx9uKqn9Yu
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MAio8BTz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: send VLAN offloading
 caps once after VFR
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
> Ahmed Zaki
> Sent: poniedzia=B3ek, 17 kwietnia 2023 20:10
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v2] iavf: send VLAN offloading caps
> once after VFR
> =

> When the user disables rxvlan offloading and then changes the number of
> channels, all VLAN ports are unable to receive traffic.
> =

> Changing the number of channels triggers a VFR reset. During re-init, when
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS is received, we do:
> 1 - set the IAVF_FLAG_SETUP_NETDEV_FEATURES flag
> 2 - call
>     iavf_set_vlan_offload_features(adapter, 0, netdev->features);
> =

> The second step sends to the PF the __default__ features, in this case
> aq_required |=3D IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING
> =

> While the first step forces the watchdog task to call
> netdev_update_features() ->  iavf_set_features() ->
> iavf_set_vlan_offload_features(adapter, netdev->features, features).
> Since the user disabled the "rxvlan", this sets:
> aq_required |=3D IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING
> =

> When we start processing the AQ commands, both flags are enabled. Since
> we process DISABLE_XTAG first then ENABLE_XTAG, this results in the PF
> enabling the rxvlan offload. This breaks all communications on the VLAN n=
et
> devices.
> =

> Fix by removing the call to iavf_set_vlan_offload_features() (second step=
).
> Calling netdev_update_features() from watchdog task is enough for both in=
it
> and reset paths.
> =

> Fixes: 7598f4b40bd6 ("iavf: Move netdev_update_features() into watchdog
> task")
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
> v2: add Fixes tag
> ---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 5 -----
>  1 file changed, 5 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 9afbbdac3590..7c0578b5457b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
