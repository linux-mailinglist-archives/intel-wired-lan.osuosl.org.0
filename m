Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3A170647C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 11:46:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D5C7429DE;
	Wed, 17 May 2023 09:46:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D5C7429DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684316802;
	bh=/vmQvcBEjvWi/Bq+7p0QGpaVvDXIeVGARLxvfvQ2JVc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P8ifqZQgzrGtV4uLtDCjGyOY0SQKfUowvmKQsTusSO6Xj82cy6AZGmQzHSktrf+4V
	 5cmAll0ll7aB02T/gkA/dbW5DGnQtazkzcFQDdw4KOWeIEGFbGFcEdMXKSOcwCrFOW
	 DNqOo5KiA//Dr5C3bSEu//kksuLjuGzPItQMwNDGQsaLwzGLDDZBy0crjLi+sm9hNq
	 /qRf4YiV5i/8hDUyGO+2aAYHyyn6+2GQkvyrybY96TopFCE3MbNu2SlkS0cv4noBOa
	 SRk198eB9VRN9RLIyZFb28bPW18IRRph231Ci79R6I3IXBjVWOj70Ryi+/NVbZLDnN
	 kF62B5WJNT7XQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fwl60Bfvrfxb; Wed, 17 May 2023 09:46:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3063F4015A;
	Wed, 17 May 2023 09:46:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3063F4015A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9422D1BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A57C82045
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A57C82045
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C49t9CqQJNuc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 09:46:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9C5082044
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9C5082044
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="332076283"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="332076283"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 02:46:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="734626755"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="734626755"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2023 02:46:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 02:46:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 02:46:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 02:46:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 02:46:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dtrmuqczSq5F/2BidutGeiEWzt8Fjd35KsbO8FGVVUKg1UNj4dsjQoHAZgM/rxSD+vsM7Itu5D8HPZx5FkxMBwT6CM7lf5nMFFrbyeRzlPMSsnzOIg3UIK3iOHqUx2rqfjbT6nWO3cYfqSLk5lfM5Kbc1SyQyN/q2NBedX6Kwwp3/xsiXz+G+jtat5Z19M/2lSiyLxfA/P0zQ3WJOepBWJx0uh7BstuBD/ZfyvS91egng0KS5LQVjXIBlpvKJG6OQtn20yiagP0bkfsw0O1wiY6elwtESuFbQP/Gl6ymfh6wtJl/fEqRdmxmaprCRir15Ru47x4meFFYLo1eDdE51w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ds+xB6Neluomwoo3U1fNdDmXZfI8q8SfoDsJZLnA/0=;
 b=E3cZGf6RXr06p1u/QtNfAEXgqRFhi9s64X3nPutSOVP3i5cArndsclnPKf6pVHCyOK17gojxDcGkpWRLOEFwRXjSeMStf/bMT6Gy+oQNVF+TMlarXbxtutn1NqHaElIp2qE6xHBIDHmjIE1OAfn9C3Tg7Rx1gy2MSaKnlzBmzEVbaGM28aQTzN67yEfzjnenWCTwbdm7GFV7bcojZvMtu5Hm55MmC6FzmrAWlmCBhOoyuce4sVZjyJiipKLiUcjj79fhZPHMSuQiXmXf4jTl0ONYiBcx7wpZgxMSjNIB2SwU4yPsV1P8PdGhnPzdLuOt1e0J0ZhdGJFnZWsZ+t7Ufw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DS0PR11MB7191.namprd11.prod.outlook.com (2603:10b6:8:139::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Wed, 17 May
 2023 09:46:30 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace%4]) with mapi id 15.20.6363.033; Wed, 17 May 2023
 09:46:30 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v11 4/5] ice: Add txbalancing
 devlink param
Thread-Index: AQHZXMAmN3KxwQS8b0asvSs0T4IzJa9egLtQ
Date: Wed, 17 May 2023 09:46:30 +0000
Message-ID: <BL0PR11MB312257EA19FE08F9D1A01E03BD7E9@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230322131227.244687-1-michal.wilczynski@intel.com>
 <20230322131227.244687-5-michal.wilczynski@intel.com>
In-Reply-To: <20230322131227.244687-5-michal.wilczynski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DS0PR11MB7191:EE_
x-ms-office365-filtering-correlation-id: fc2ea9be-81ff-4378-3541-08db56bb97ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VtcFzDOwyWAgVg7KHZE1R+JcoR5cZmvwqWYrD805qSB2BEWApQVhA3GAowerl5cXGj/yrjzK7SQ2A9mAmnZ1dPKdgaV04a/klwT+4uRQ2KEUw06Hzt9CS9npm4RQ6CQ5BguFjEid8oMkeqElIaiKpp1vb/Y5tNYRr+BkGDn5FibhvgDtTlrfXskgzEX2UFUrIBjftIdKLcwlueldrK14HJN5xUPB6GJY/5/BAd7ZWQLE+TBp+uqIGGiunZZHtb+htyaLO5PWz6Pgr2HP/ZqtIwpADeYbdBJ3WoxeEqP4T38x+8EyG7EF4iyPC5r92RPZ8yCI195EBXfihvzwzg2KwRajOCE9M6AHLiUOlxsvKMdtxb28MqCh7iIDrLsqg6fLCfbfXSnphbxsnTE/rXM8iZ33p0nKNF/MywG+LseNYgLhhuEdESIWHuGl7VPDxdPBMnVyirk9wquSnynTrmVLa4aDSHxCaakYYHs+e3l8HCcD4BAGwU4m6AzAfNWuJAO0mrpyVdPlbK8KZH3rNGnDCkR6iG7VeqVPAq4xS4zA/bwvOyZhbHkhWj58jDTRvuz0TPg9XBcB9sGMO0IAui5EU5KvYgNSqRboaAcpe+LkTQZZAPXSxxpwWoSjHA40geJG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(136003)(396003)(366004)(346002)(451199021)(83380400001)(478600001)(7696005)(110136005)(71200400001)(53546011)(9686003)(6506007)(26005)(186003)(2906002)(8936002)(8676002)(5660300002)(52536014)(122000001)(33656002)(41300700001)(82960400001)(38100700002)(66446008)(66476007)(66556008)(66946007)(64756008)(76116006)(316002)(86362001)(55016003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Uj3Rxm7oigPdaI3MXyBG5cz1oSi/GkV0o8E35I/rnOUDlRo4bsrzkHIFYLgI?=
 =?us-ascii?Q?1evz/4MVt2e5ouT12qaGaYDKBBIkxtT8UjmzFNIbkD7LVd4Fkm+0aHAKqwOw?=
 =?us-ascii?Q?4UrtBv/NsHH6SSuh9NaL7nG6ot+O/Q+1PyTkXaNSVV3Dg/b5447+/VxSXHOQ?=
 =?us-ascii?Q?a8mETREfdf0tETr8RqfTcXb1ITl63oHr4qBdtc/x+K1MVEFO/3UUWVlyzZOV?=
 =?us-ascii?Q?Y89HdRhQmC8oQfUrurtVR5FjU3lX8BWonp/Hlc0IzlHRDXGF23J3l1390CSn?=
 =?us-ascii?Q?/DGrZ8NisRTyhqOz/7It/8eEZmh1kQKmZ4a2JW1e+EtaApGprtoIk/rCr6FZ?=
 =?us-ascii?Q?OGurBijDhrBg1KpMYQmuLIdExayYzraoVP7CQur98iqrZGRhO+Xu+T4dZdoD?=
 =?us-ascii?Q?e8e1xG5Q7gkZIwk3KHTXgu1f/PkXhMS6JsNCWGEtGBzwXpTfybgyJ2oio7km?=
 =?us-ascii?Q?GeCKn5Y50yuDmWQ30l2IngbQ0W3RIJvpZTKoEz13fqv5xZqEb+drMQaS0vxz?=
 =?us-ascii?Q?3FBQCVxrN5fOgMcySUfoyGrny3XwRuqk1N9zNZYBr5FVnBfxuxLirbqvdx/v?=
 =?us-ascii?Q?vJ5TWUK+3k0T1sFjLYJ342pGh0KPV0O/FQ+IALSIZAU2rgEDlSBENOfUmpRs?=
 =?us-ascii?Q?E+kDKYWlITs9grLlSpd9vciovhSmIB6DK60+BsddSvS0oR7o3TC+/CZboRFf?=
 =?us-ascii?Q?dnTSMh0okl7CZ7lbvw26ld9QyuLmrJcgqKvIi3EEb5KbQuyB2c6Jq6wj/XJ/?=
 =?us-ascii?Q?D7TmNs0kCnaJyE7O4hCD3UcDmjGRWGooWW9riCy4TlZDbDbfkkRqGyYoN7vx?=
 =?us-ascii?Q?Aed+4WclPGGt1VTrmDjVX6eOPpQqqsC+cdPrFLi5B0nAdUjSOVkfp8SOHjda?=
 =?us-ascii?Q?zWoW5snIs0jKjniNYdVQIP8cks32hueohHNj30p2LRaqMFr+gOusLrxCNdP9?=
 =?us-ascii?Q?HDZ/VKaNNLDS7Nt6XpYms6nPux6aJayoF57+8RNLD8jGcSvuA5HxV+8HjI/p?=
 =?us-ascii?Q?THmZEbeRoXSpcPSxBMVIlUq54hOg7F2GPuqyFcPPFMKFr90qCcbuP905x+uW?=
 =?us-ascii?Q?les1Zng+8qCkI3IVTxZ7OQukmMUBocVXAW7hIyk6poWlYz3s9eip+QnQhfXd?=
 =?us-ascii?Q?cLt3wFDvHXvu5j+GTVjoUx++sx0VZaePY75e5giNUTxMSsGIYXQj9LrzGA32?=
 =?us-ascii?Q?gFTe7liTJZdSVdWWx12qHk4l5gXXKHOJbLbKyt4nHkIPSlzsk3vjGrBkimz7?=
 =?us-ascii?Q?zR+LGrvHH2oAtC9gclKHCWXv2jtW0XVN9FV7M4H137J9MjhkBjksu/AvvuUA?=
 =?us-ascii?Q?Af8DwKJwed4EtsYfckXRc9hoIeF9FXR7TLsFEiZyhu2EI7zQmabTQEXHAsXO?=
 =?us-ascii?Q?gp0gAKyt7yf26cczh7yXe+ZxoovpchxozvDZ8rms7kboavTeH8bv3ao32dgH?=
 =?us-ascii?Q?LNJaZj3Bl/2+iIDtpPsR8Ep2RXDnt/5YJaRIieAmkqFhxcS5RkHPIC77j/Lj?=
 =?us-ascii?Q?eZK94vAnZuaJQIkUgIrjA+m1FUwbRyFNFlY1E6PsSMXnR7NBeoO35hMgn9tD?=
 =?us-ascii?Q?Dk7565FrcTv+8VhHHzikfx1GB4kzl+bmvlLNhjbZLhq8yL2aVSSUDaUkzbok?=
 =?us-ascii?Q?Og=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc2ea9be-81ff-4378-3541-08db56bb97ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2023 09:46:30.6250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1y0BfWaBeQD8xToa+fvhtIrhRhHm018M9ZBuUJu85HX/XaR1HtlYDhBwL77nlyc0iCnihj1om5R+Ck29TbXQqdLZR9lAwGb9owQ7SM+VPq0T9VSeT0NsM9AkdgKM9SPu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684316794; x=1715852794;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mUtgphgAeRFzwAD1z+HU/xtaw8wAadYTGJb0+34e8XU=;
 b=i9JIrirq6FxgC26jFgnO1r9CPLymS3p0T6bbafi1WMcSTOrH0Z+/tVHW
 e380MjhQbITBa5qcgvUS8Z+HMSAUFu1Egl0relOrZPNiLVqe8XLGrePxc
 bUNHERnq72t06gcszV0wvefXp0/p8FgXDNjq+/R2PbnbEx53c4ZcQz7Vu
 Kr8aRi9OnLs/L4Nd+USIrcOqkLwachPWAfZZnZvAZUYkGEK2sODcUA/Ni
 l2E/5lY03v1ZyIvh8Gt8kUK6eR/vo4TIMFlNNEwwtlzddTXxcEwkxqHV1
 zoK7JQRPV4wdE7bwPGiWrK2FZGAZowEAD5uR2IMtV4ijv8KnhQdXtDhCS
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i9JIrirq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v11 4/5] ice: Add txbalancing
 devlink param
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Wilczynski, Michal
> Sent: Wednesday, March 22, 2023 6:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v11 4/5] ice: Add txbalancing devlink param
>
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>
> It was observed that Tx performance was inconsistent across all queues and/or VSIs and that it was directly connected to existing 9-layer topology of the Tx scheduler.
>
> Introduce new private devlink param - txbalance. This parameter gives user flexibility to choose the 5-layer transmit scheduler topology which helps to smooth out the transmit performance.
>
> Allowed parameter values are true for enabled and false for disabled.
>
> Example usage:
>
> Show:
> devlink dev param show pci/0000:4b:00.0 name txbalancing
> pci/0000:4b:00.0:
>  name txbalancing type driver-specific
>    values:
>      cmode permanent value true
>
> Set:
> devlink dev param set pci/0000:4b:00.0 name txbalancing value true cmode permanent
>
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
 > .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +
 > drivers/net/ethernet/intel/ice/ice_devlink.c  | 163 +++++++++++++++++-
 > .../net/ethernet/intel/ice/ice_fw_update.c    |   2 +-
 > .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 > drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 > drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 > 6 files changed, 179 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
