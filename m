Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B097E67B3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:19:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF3F2612EB;
	Thu,  9 Nov 2023 10:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF3F2612EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525156;
	bh=8Ew1//bmCvzaAWoXWPrqsHz832XB0UyA9wIYNWOvQ9s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=273SEldPWtGvfzudBVCUJBeJrkU485CFjMrASB8hI/QDYVS8rk2c5MILvZuYoA+DG
	 TtJDp3HsR9oT99+4tf7anHrd4UwsVp6arTuRA11brciG0SrfULr4bCNeGQo6DYI5YH
	 FQ46zhQiz7OI7ryQ8T0BRxpFQIWS3Cyc8ZE8ya+L9TyehwTUovzk6Z1J4nOyQCKdSJ
	 vWsq0I8pR8+hqLGBiEd1Y3kr9NMJwI0zsQ72YjXpUO5i8lJLRblCdx9hSmflrSszNG
	 Z3P76mR1L3ph/8/+TYiwQ34DVhoN59EO0kgQNIiAbZr9YPiD1SsYbTUjvPl1U7CehZ
	 fnBLKGf5jnuhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m2ODCkBB0n5A; Thu,  9 Nov 2023 10:19:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94B7F60F1E;
	Thu,  9 Nov 2023 10:19:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94B7F60F1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BB9F1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2382940136
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:19:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2382940136
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Etqssso_QfuD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:19:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E6DBB400EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:19:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6DBB400EA
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="389760755"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="389760755"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:19:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="763360867"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="763360867"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:19:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:19:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:19:07 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:19:07 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:19:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=af97INKZvlqKNZhWcnGRKzZOsaK4PCb7L+zw0L/knC02CaI2ro+N78oN2w15F1wul2ASlKOJfULm/vJP/FSo2JIT0rwzyaRUB48FizEpb/moFfYxf8asPxTVYM+ALqgLd/FBM77a5DKD3vxdlBvTl7rzNj5mOqWQCHm9LvMB9BNHR5EwBNFetu4QUqMr2Y79+jahIEDAN/mBffBhP3ULrmKTOR+QX6IK91RV+Wqe5Uk25CJ3EUP+3hudDVhWj7n7R3/cZsZ4WcaonQzJV+m8vtOu6C4uy1SkT2mNRtOnxpsLoLO3qs+MZqKuvcwO/KnKtlnAmyiF8tt5/28rqIcBKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FawoO/iMTmKGYLezzhYmhrX899Yfj0RNamWefcrCweU=;
 b=fiBRTACIcd5L7+obYbwNmtQ9r47QN6m5yXuJFmz9SpyZ9kVsXe8WBIFReHcmCPn0FNtR2e4gcHB0M3+5T/+oH7J5HrzhNgXbLJ5/HqMpbbu3jYWo+3/yit6R4e/qBiAQEBdmB4ESEaMr7TEH1jjT1CAUofsuPNWXPpDpjx24ofJM185hLkoD/6mswBXoAE5qNV43UmSeKVvCRfKC9YMP+JTyVJOJ89ziOteEUrcAI3P7gPwzCkpKT5b0cAHZpUgEmzvx5G1IeitkHlK8wTpG7yRuC6HmX3HkxfZoXN7gP77dY9MbJS7JDO8oTMt7+t68+d1WhGY2qcDfxlA8P+5sgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA0PR11MB4527.namprd11.prod.outlook.com (2603:10b6:806:72::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:19:04 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:19:04 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 04/15] ice: track q_id in
 representor
Thread-Index: AQHaBm40xb4nvQdGtEyKaH4yOO87crBx31UQ
Date: Thu, 9 Nov 2023 10:19:04 +0000
Message-ID: <PH0PR11MB5013FC37EBF6B8D42964F3F196AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-5-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-5-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA0PR11MB4527:EE_
x-ms-office365-filtering-correlation-id: 18c7431c-da6c-4b0f-3762-08dbe10d4d28
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KpsLlMLEfLAqzGvpr/6Zc8DGkiGUnVBHJoe2SWzHweRYDdyv5z6U7plSBtLjWrlb8OSLC09DQOi90ABlI5pAVVrZockghzP6whutEoqwhRtEThrMyW65rlD3TYKA2YyUBuE1jjgtZTMCQ5Ziac/5t/+0bLwdlunAFX5geExaGdjGnWO/yntN8e2CtBih1IxdueCS8+Jm6ySxlol7fa4YhZTqgkfwjI+iqDQxS/z7visiAEF4cekcd6c5bjvi1tkF5g84xOHJjOeZPFRZYP0Y8kTPBpWc1YhoYPIMXmdXb+W1+kMN3/y7uDA2DaoQEP3XR2dajYw2m03jN9zWCBZXHJCiOis/d7MpbBkpWSbAZG4S6PM6V69Y5xuDQUkewbYzxkPYglbfv8MUlOXmG9+iQ+k/m1+uzPQ7dTA1cKmX7c+qWCfMSnMp/CAskapoK8J1wZ5nEvtzuZzDG16p1a8O16Z9W9q1Mx34s7jwvcg7+2JcpnQ6k1CGITLcko3aDPtqpelFZp/JY4WndbqDOtTxBx1xoK132HwFiDGNzspSJjMtXiikKJzF6SHXhEwlOJtoYyxi//2mzQr/xsRMtcfEC20Z5M+vb2x7xGPCBf/obUo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(366004)(136003)(396003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(122000001)(41300700001)(9686003)(8676002)(82960400001)(66476007)(26005)(478600001)(38070700009)(33656002)(8936002)(66446008)(4326008)(52536014)(66946007)(5660300002)(86362001)(316002)(76116006)(2906002)(64756008)(110136005)(54906003)(66556008)(53546011)(7696005)(71200400001)(38100700002)(55016003)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7GNJEWw9tPPyA/Imn9cI7X4E02RbKUxKL3upINUhiWBWCrh1d30QUwvfKgpv?=
 =?us-ascii?Q?cll/uVU3eNWpDq34L4U5w6UjRkLyPDI8yJtFf2JP1h/I4Rf1j/ujN+1re+H0?=
 =?us-ascii?Q?VarKgNcvqniHkmdqFDbpIbFRiw62y/KYUH2G5p/y1578l7s27/8WJb4xuZt/?=
 =?us-ascii?Q?GYcOFlwpWYtx8MG6CghXvdanJtzRByHX4Cu8apmZjHMaZA61YJ6vQLg/Sjkz?=
 =?us-ascii?Q?n6/3RVEBSLUg9/9zGwXhgsLeIAIlNAFRE5EKLcO4n0g6AzqEFwRKvWokvQPK?=
 =?us-ascii?Q?+LSeFJw79lMg1dEC5RlbN4D6LhfyjEjkMV7dgVgQwUolRrqEPswmpFAAqBh0?=
 =?us-ascii?Q?BZQMleb63hhejlZ8IpMcW1OdlDEu1SYq7xgxEuijckJ1XhtZ0F9qt0H4Rquv?=
 =?us-ascii?Q?j2kioHcN2xk9BgdoL0kSLNbqNRLZRSc0k6qb0uH58KD9ZvALvM+V1fAcoCpe?=
 =?us-ascii?Q?phcTyaWTDenHZJxRCLDOQR7n2qp0zUq3VY5XcniAI6GwRUZpUpuOWTZs0pfv?=
 =?us-ascii?Q?SPITowajNGXF0biC5slkLrwHzDfdW86uI6n2SvO914iQsrnjnxqWpX3AWs4n?=
 =?us-ascii?Q?HL1RUD4trTF0fPu8o8apZqZPIQ5yaN2EEiRg0gXPyIwzetZVyyN3u+buylDd?=
 =?us-ascii?Q?xp+81u5EZxajV7GUrZx6eMB/VNC42occ9JIMOuLWfzZxlHDXKkQe2/rSdEpJ?=
 =?us-ascii?Q?OXDA8SrBczY120CeeeIXqD4wYsvuA9JJO780/LQTepazj20iotAPAKNk9zYe?=
 =?us-ascii?Q?YVyPaGPldDPgUZGtLlBTGq5bA0sucDXgex6P8E0daBgszS5YW+LbFTmyAxjg?=
 =?us-ascii?Q?58PowzjOY/LNiBDH5Z3/XvE5abr302jGleHEUxp13lts9rJvVFCMA/9KcQQ+?=
 =?us-ascii?Q?Mi/VcimAhxa7WVOybNjEdTx1B9ZzeKW0EBCB9FisdspzptFNSzEvTZcAuy/i?=
 =?us-ascii?Q?4khrK+PoGitHpQIwlGujYyecusZhDfXcH1GoOYMKgNJi24cSyoF8htN2lScb?=
 =?us-ascii?Q?aowHp1732NMs/4KXElhpQPy351PyLgcN6SypWsLcOMdMrdhH8w0/QlhwKkJS?=
 =?us-ascii?Q?3JgF5Yb+2yohAYDSTZHbgfrir4IPeCalkCyDvLYe7u5Mo6RI9IN0zwgjJAPk?=
 =?us-ascii?Q?X4bBI1wkuULFksCDClcVCBEHyZ9Sp9fC5wHjTtO8meQCRxJ30iT+PKw8nS7H?=
 =?us-ascii?Q?YxIdYwwNHzjO/ckrArFNZ+kC9x/EEdv79fr0K5hDfWCCZWfsos8nz6d8VeO+?=
 =?us-ascii?Q?C8WrB2idkm7PiyRDVAMa+q8MG4TmwnRfytF9j0Rw8GIQg0OdUS7QZ/bxq2Oi?=
 =?us-ascii?Q?35GNI1ihSVt0X3hjupE7H2jTy6Dgg8zZP6ltUKJwvAUo2ue+xSKSwdkrdidT?=
 =?us-ascii?Q?8Q9f7j+gvQ2NIIuwIw5qeAEX3KQrtQoEXDUUxKSsjBmNZymEEXTWQUGSvdmA?=
 =?us-ascii?Q?UxC7MB/CNkYuIDhxEiiqTZCc9v2mR1ZnRgsqqGseI8LnUOzts2CseqxS/L0S?=
 =?us-ascii?Q?lc7tJwKi4xtJQPbTl9QjaFI1NFZZl9u4B2OonNtO/sWwiw9zekmMvwcVwrld?=
 =?us-ascii?Q?Q1pEZar52tZmOdEtDRv+RsXqLuHTjkBBaMQQs/v/U1ABvWsEuBvcwZRS6b7+?=
 =?us-ascii?Q?ew=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18c7431c-da6c-4b0f-3762-08dbe10d4d28
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:19:04.8279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wqiFCnIwc1rxLQJVP9IDht3wGgPE3nBDer9JCs0pD1tQvrBJFutQI1T3Dpp67jps3MwwgXYwFi2FCnjvIt39HQ+igaRsGMg1esuThHr08F0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525148; x=1731061148;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c7nBXVEyvngNlhCpEZo+RV3PoT07Ewz4Vw1c7DK8zZs=;
 b=BfkpRdNLqk5awkaHHw2B/aZiVUSk42J8c3gCSNFAtu7H7Ydnr4vLO9aI
 oPB4dVn05v6qJOUvBKAFJzqVdgj43ijHq9LXn5Z322i6h3KWah5eKlEwF
 LvMP17goKhy0GBqX9Liu+ZCmaPjqdGKfgYo364sQaMGmg/SWGOCduNauM
 19Q2NbZ7NeWMYRqki43fIuqHyQEx6VAFVUzxbM570lIB0UygOTzJ329Md
 qXApgZnwWBYW4eIquzMhJRouyd7yihZLgtZqbAu1KgAylLaWORMmLOCCz
 yNdW7uy8cfU9bInQKhwBpInyuX+kRDBnOvKOgdky6HiFrdXkGxTJCF7aS
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BfkpRdNL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 04/15] ice: track q_id in
 representor
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 04/15] ice: track q_id in
> representor
> 
> Previously queue index of control plane VSI used by port representor was
> always id of VF. If we want to allow adding port representors for different
> devices we have to track queue index in the port representor structure.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 2 +-
>  drivers/net/ethernet/intel/ice/ice_repr.c    | 1 +
>  drivers/net/ethernet/intel/ice/ice_repr.h    | 1 +
>  3 files changed, 3 insertions(+), 1 deletion(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
