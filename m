Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 968EE8D836C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 15:05:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C1DC820BD;
	Mon,  3 Jun 2024 13:05:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DukPQa3OLbKk; Mon,  3 Jun 2024 13:05:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A889820C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717419920;
	bh=hCsGQCzj/gLAxIZE1M/1W22YBIYIURglyc/HHh1BT/s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nwwd1IPVeXc6cAcSa+qEGuPGbCZIdZutrTDmBrOV1h+h1y//njLpH93WjW6fz5HK3
	 wI+iiNViBdh4DEwRDGsWwErGv36Oz/468W6v4WO9PyXvyjelPyuNWTf7dpTz/xUeAS
	 OZp1CUY6yU71t3Njss9o21e3zSxG4w6RqZhCMN2GHin8uEGojvZVJrFxikmPz5avkI
	 xbxDJjWg8bV3VF1nIjjrKm1IuaajUHKkxzCyMIzgq0mm+gli78/lzQIkusf2Jqkta3
	 ix+xCchl6MDacYiORiT0BITqKaExus5/PQdLOUq9LesbgoJL9w0KEaEIzles6+QU/h
	 nKegPE3ctfY7Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A889820C1;
	Mon,  3 Jun 2024 13:05:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3EE41BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 13:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8EEA560791
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 13:05:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AJnVPaAUzdZ5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 13:05:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 46A75605D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46A75605D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46A75605D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 13:05:17 +0000 (UTC)
X-CSE-ConnectionGUID: JIFm7KAlTzigpffH0lySlw==
X-CSE-MsgGUID: ojzXA3DhRui4OBh/AT57VA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13720404"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13720404"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:05:17 -0700
X-CSE-ConnectionGUID: LT7xEgbSRxqEibtV8G1+JQ==
X-CSE-MsgGUID: CaSRnPXXRu6fcP+FskSH2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41803792"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 06:05:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 06:05:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 06:05:15 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 06:05:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A7mT+vbOpvZx9asZKVLzDW90L+TUaiHHSs+TESd90XuH5vLbi7C5+iFz6stnG+GqLDH1ILrjs2al3oW1ZJ9YXLR70pZG/Op1uRgLNBIY0MR+hsvsVpKlmLNpbDQbJYGyxwbB50hKqOia1yn6863M7nrjMbeCfFQt3ArqD3LVICS01jpz8mNXM84S+ikmTO6ueDZsipPeezYlaZIBCTVDrL03w+QDpn1QGx1kWhdbZUKNqTyjzgDli1Ylht+YDAbbAMxwTVsfGUR/OMOavHw8FP+pG7sEPRLUyH4ai4kRJUeNZpg9KX9MnwuY7c9PEm7oLovPNlaEqZ5lO/rDfwfQgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hCsGQCzj/gLAxIZE1M/1W22YBIYIURglyc/HHh1BT/s=;
 b=aJh4nnl7LvvH5WFw0N/747BK+cO8HWlCag74fdUvVQPjkpYtTksAh6c0R3fdlFsFKQlsfjDDStLCRHu26tcXnUIaisQ/DvE/Ku8JBSWpXMBXQjYsdQPXqrt9Djp1x5fm1W5g+d4DlKyhm0nVoV8HpF5IofZBMU5nlgy2XnDRB+GeCJ2Ls8cTZI7HG33KD7mgzOt8Ym6/HnQy1QyETfTZWZPX3IS2+a9omTZwfr/Sr3oo4YNOsZaSgpW237ojIDEAhx6bdRDDRjnGzH/08jiczfhT70K6Dqqdj5dr0h5iu9GNRYQnt25gLrYnPodKjsOvvChrn9UeWql6IvihF6KXQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by CH0PR11MB5265.namprd11.prod.outlook.com (2603:10b6:610:e0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Mon, 3 Jun
 2024 13:05:13 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04%4]) with mapi id 15.20.7633.021; Mon, 3 Jun 2024
 13:05:13 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v7 3/7] ixgbe: Add link management support for
 E610 device
Thread-Index: AQHasEWiFJDgUgCkp0eTQNoaS5ErbrGxdC6AgASW2SA=
Date: Mon, 3 Jun 2024 13:05:13 +0000
Message-ID: <DM6PR11MB46103DEF82B2CFAA97FB9145F3FF2@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20240527151023.3634-1-piotr.kwapulinski@intel.com>
 <20240527151023.3634-4-piotr.kwapulinski@intel.com>
 <20240531145357.GJ123401@kernel.org>
In-Reply-To: <20240531145357.GJ123401@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|CH0PR11MB5265:EE_
x-ms-office365-filtering-correlation-id: 47d22a9d-6900-4b1f-ad53-08dc83cdce4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?kXRms7MFFqtSUeJ6vskYSrRJhLIRJjmVTQoLDEARLUZNejEoNd6mdU8Ijie5?=
 =?us-ascii?Q?3JQ7AH01GKmq+WBS5u7BxxFrLz+LdUm9g7u8LhFzxRy4lMjRxi21vSL2CJS4?=
 =?us-ascii?Q?nH5j5lGQnjOL0XNhgMRFmK28QoYo0sDZvEXyobyaeDnkmGXIimUzZRLC0a2r?=
 =?us-ascii?Q?Zl4T2vzzaek6mq2OwnqQErKa0FQKm0lgz4t/QsiaNpo18qwhsEP/fCNJ2sg3?=
 =?us-ascii?Q?W46gs/UXphYsm1KunQPQBjtJ2uI0GzeXKD7CHEHlhzYLtGoiR6zoJNpOY89I?=
 =?us-ascii?Q?a/gDJiLwG2gNqeyy109KMlRUJ2vfpW9kSL6hSjWR7hyN/1sD8ti0Sefhsu1o?=
 =?us-ascii?Q?QSaIvYaNMkPbCdSgAo3IzdYe+JZl66TWIFZnFipVqLhhn0o1c4PE6Zfgzeh2?=
 =?us-ascii?Q?eqdTPMZ1rapfx49SPu5AKdXdSIaeHdgMFUhrYt+YFGxu9hf9xns9XGDvt7Dm?=
 =?us-ascii?Q?UXn0A0WD3Wr4uVtGxKAePnviWTQsjRhekbv2Lw2wmTMjPfVbTH+Ab2ZT95Sh?=
 =?us-ascii?Q?YyfK1niC27+iCVHon4Sd8V08djInaqrfuu10a6H41FbniQH0uB5ZddSeBYGp?=
 =?us-ascii?Q?lf836qX3nLqQgJtNfc7v0kEgoV3Aid9LJTVGiG5mkP7iu164b1Ns6lhgxw5M?=
 =?us-ascii?Q?IQy2Cxaipz+4J1QiqHKqj2w+j55ClQTwwnh7HxLH7bIihVCUR/V97NaiFZDK?=
 =?us-ascii?Q?QH0MDiFD4a6X1uWxpFeWMRsDhbZIr2ggzDculaHJOfNu7nn4vRYgUpuWsCH5?=
 =?us-ascii?Q?Xk/6ir4q1A9wN4+TF9VhtT+UnB7z/zd2nZaYma+003i1vD2F1og+7vRY0xDC?=
 =?us-ascii?Q?WuHQ/WJSrw++AdWscntyFSCsB9q3Ne8nnQTHSXrMfqG5Zavo7J3kl67+AZqI?=
 =?us-ascii?Q?wIHdqpqB+3Na5W9ltC7XcuR2+3Q/ewC4VpTis+ESgjLM/QNMdwgTSt+v0F/A?=
 =?us-ascii?Q?8e04NYi4MU79RpjiwkCtDtfDRsFx9tvVbTdke6m1OfqEHWxcCpTUBVrCxAUd?=
 =?us-ascii?Q?M/H39R2zbcc82a9cq6a2aZTMfEUzqynwAcCcn97yNHmKrACUGcbysqft3Vi0?=
 =?us-ascii?Q?xA0McDz0ViMg7YfuZSS2IsVSylnrQllVZ3d0MKzOxagPX61zElMERDWLYOYA?=
 =?us-ascii?Q?AqyAVwsIUpHRqAjgMeHh50huieHk4bYAJHqyf+wTuyQki03KBqCa+PZ5pyeU?=
 =?us-ascii?Q?7xkFC0SN5IIABAJMxGR9Lq/uLdhvK6oXpytwPD1lIk3bXjUE9hnPgRk/CMHh?=
 =?us-ascii?Q?3H2NIbaB6995P+NtTs4rrW9/XjJt3WLXB9VaXzB3SnlVg2p2XucQ0RFRJASN?=
 =?us-ascii?Q?OLaPHaPSLWGaTkd8FQUkCXiYJB2w4/PJ1i7CRidsWhyGuw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?93+dpGUU12FV3RJ56JBzOjr+sgMPi4Gk8FtbDISEsGPoekl1euMoa8KTEvmc?=
 =?us-ascii?Q?WGrzpfSrGfmovL3MkpZALIjltgHUc2RmcAqr8Ymmg+ORr7VbTohw4pHNWBmT?=
 =?us-ascii?Q?sKOF1fg/zCJ0BvJ9gzt2vSd9JBRdBgdI0ZKzMr7jyyl3RP1VleAYF+aFQDsI?=
 =?us-ascii?Q?b1dBF3CP3iXbbPkSyHJDCJP/bWDYT+KMItLBYmlOWG8PZOD4z9OYjpsSzxxa?=
 =?us-ascii?Q?cYSxGzYy3wN2swJN92EkyKw7jnczIErgjIvIONPuiG3Au8hwgj0BRt/QbKEc?=
 =?us-ascii?Q?jhLWsXk/83/GahWd0127BriXQ6lByiw8Zn7KNNJvWdYNl9YGlmJPZ75KAyyo?=
 =?us-ascii?Q?49VfoyE1TzmZ1dJVD5MLpvsiDVoUyBzamHlGgWaIgfqxJZk8+f45bqrl6aEF?=
 =?us-ascii?Q?JgA9UFKK7oRBQL+WjRVwtTDt6M683KrU+pDgIIwM3rQohenfg4aQoPjb2vKx?=
 =?us-ascii?Q?RIf6f5J2Fa2vz77w7fr2i4YhPQLd6E1Eea/vR4odKz8EI58o6EwBkrz5jiq2?=
 =?us-ascii?Q?JWT/YtlPl+OcLnOmGU7njX2/jotWTaX6nf5i+QmQyLQA74LuvW6DuxzgxsyB?=
 =?us-ascii?Q?dbQIU2DbuthME1N+xf7Mbkq5aoDrk9cu7BkIfhh+j3b4fNkTpTNRXfK4Wj2Z?=
 =?us-ascii?Q?07kayDVujaPZBEEh1bDiSuuWL+dqjuxoRpJ3+rMWN6IXuCxTkhRS3Mm4Fju7?=
 =?us-ascii?Q?9kTLhq1WPhi3Ck9Q5PoP9/LZP14WUiYvM07QdqZs2w5HGaTniHN7oBT6gqxs?=
 =?us-ascii?Q?zpuoFfi6oIU6HTLCV2nbxrNk+HfVTJ19TGDd5UvhzNG9y5Iy2EouKitK2NFJ?=
 =?us-ascii?Q?95DWSerAddJEyvpKIOqZilAcQ2zoW793LUeVqxnfjeHRoa8UvPpohZyfUKj5?=
 =?us-ascii?Q?/aaY1UuUKP2Ri1GVpk8rl1hK2C7HJRTi+w3RS3Da0+LBMqvVIaCPL/5ZGMQ8?=
 =?us-ascii?Q?mfZLfwtUIg1mt3ifc3Bng9EbPZ7/8X2qE3CbRAYU31ILfuKvRJtRNsCBu0Xd?=
 =?us-ascii?Q?Bqh5qQ4rxv7p+tmiCrlgjJcKFTNBMfA7SXVUjAxbbUxOwOSnwHPsCFqM9soJ?=
 =?us-ascii?Q?FTE2NhGJ0FfVNM08qsLq0yFZj2nT97113GYwWGxkUnzfINia3EzFeGol++8S?=
 =?us-ascii?Q?BI2oC2wpbI9eT7L47bvTFB0DhYGVfyF4FYgNvSkrNWLiV5AQbCkeCcHJGqYk?=
 =?us-ascii?Q?PUp1VFRMpnWNcKQhmDE153t3GmaSTkq9VpDKyWow+Od5Ywa5BKSZAvxsGG2M?=
 =?us-ascii?Q?R35F8JYEICOUyTeaBfI+sNBCeLGGxwDUtxBRyhg0cjQwJUz8qY7u7nOosfiX?=
 =?us-ascii?Q?AccnuBhHL0eDnQjQiuAmmyZpREX7g2f0U3iub/u3CRhi7GRTIiRGWsDphnEh?=
 =?us-ascii?Q?kls5/4KKDpIE0dK8elSIm/T5Vaka1KCTEc6x/aA3bQsjqWXvMskE3D70micF?=
 =?us-ascii?Q?HIivriQIi0Hmzzxccph77p6LO+zK5oor+OIgxVwcD8sQE3pwfI8koh6G/KQd?=
 =?us-ascii?Q?3KK8JWx6Ov+IaywQe5yLFmT3COXIoJ08+uqq2IgQxkmns82PT5NSbK3mvm7z?=
 =?us-ascii?Q?3SorHTuialijsCT1pmjm680TyHG9EH9aLU32s4da?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47d22a9d-6900-4b1f-ad53-08dc83cdce4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2024 13:05:13.1969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B73nhBTXMOcydxssMqW/WYrsTqzmabmTOsaRPH2fKRoQ7a0CEzu7HZ5U+ao+clld3My8a/3sD6aw/fy3i/AExFZkywcOrb6B8WY7Kpa35To=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5265
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419917; x=1748955917;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oNpeiOMRLibx9JCUJ7l7A91jJ4dK1Q+kkh33oIQXLjY=;
 b=mahYKxduML8z3cNdcbQoacnAulQn1WjCBrsUNGbgwL7nsEsz7KCqBfhU
 6se22y8g060/5TCM5KKt8UtYuAVVrwAO2PSSi92E2/QBZAjojCBf2lnCT
 2MSoObbfRIlRJRDqKhMDa/A8f/+Z4/TIyBUkBPKq8sPWJL9Wvu0CRBTGG
 2uIWcRMDkF/FT8Dy4TpYGKL5/pE5uOAMG0EXlYGm558C6RQMuWMNcfgnx
 ufJuIQVaplPBnZUKcXtnyMo8CJhMw3OS4GYXeIyUy/9hPKq+7/GzHN+RC
 BA9s5l82xylFqMpYduesRpOuGLP/5ERqwEdSYJ09PfSmdrbZfAmtGlZol
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mahYKxdu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 3/7] ixgbe: Add link
 management support for E610 device
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
Cc: "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Glaza, Jan" <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Simon Horman <horms@kernel.org>=20
>Sent: Friday, May 31, 2024 4:54 PM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Keller, Jaco=
b E <jacob.e.keller@intel.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>;=
 Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Glaza, Jan <jan.glaza@in=
tel.com>
>Subject: Re: [PATCH iwl-next v7 3/7] ixgbe: Add link management support fo=
r E610 device
>
>On Mon, May 27, 2024 at 05:10:19PM +0200, Piotr Kwapulinski wrote:
>> Add low level link management support for E610 device. Link management=20
>> operations are handled via the Admin Command Interface. Add the=20
>> following link management operations:
>> - get link capabilities
>> - set up link
>> - get media type
>> - get link status, link status events
>> - link power management
>>=20
>> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
>> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>
>Hi Pitor, all,
>
>Some more minor feedback from my side.
>
>...
>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c=20
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>
>...
>
>> +/**
>> + * ixgbe_is_media_cage_present - check if media cage is present
>> + * @hw: pointer to the HW struct
>> + *
>> + * Identify presence of media cage using the ACI command (0x06E0).
>> + *
>> + * Return: true if media cage is present, else false. If no cage,=20
>> +then
>> + * media type is backplane or BASE-T.
>> + */
>> +static bool ixgbe_is_media_cage_present(struct ixgbe_hw *hw) {
>> +	struct ixgbe_aci_cmd_get_link_topo *cmd;
>> +	struct ixgbe_aci_desc desc;
>> +
>> +	cmd =3D &desc.params.get_link_topo;
>> +
>> +	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_topo);
>> +
>> +	cmd->addr.topo_params.node_type_ctx =3D
>> +		FIELD_PREP(IXGBE_ACI_LINK_TOPO_NODE_CTX_M,
>> +			   IXGBE_ACI_LINK_TOPO_NODE_CTX_PORT);
>> +
>> +	/* Set node type. */
>> +	cmd->addr.topo_params.node_type_ctx |=3D
>> +		(IXGBE_ACI_LINK_TOPO_NODE_TYPE_M &
>> +		 IXGBE_ACI_LINK_TOPO_NODE_TYPE_CAGE);
>
>nit: Can this also use FIELD_PREP?
Hello Simon
Will try to apply

>
>> +
>> +	/* Node type cage can be used to determine if cage is present. If AQC
>> +	 * returns error (ENOENT), then no cage present. If no cage present th=
en
>> +	 * connection type is backplane or BASE-T.
>> +	 */
>> +	return ixgbe_aci_get_netlist_node(hw, cmd, NULL, NULL); }
>
>...
>
>> +/**
>> + * ixgbe_get_link_status - get status of the HW network link
>> + * @hw: pointer to the HW struct
>> + * @link_up: pointer to bool (true/false =3D linkup/linkdown)
>> + *
>> + * Variable link_up is true if link is up, false if link is down.
>> + * The variable link_up is invalid if status is non zero. As a
>> + * result of this call, link status reporting becomes enabled
>> + *
>> + * Return: the exit code of the operation.
>> + */
>> +int ixgbe_get_link_status(struct ixgbe_hw *hw, bool *link_up) {
>> +	int err =3D 0;
>> +
>> +	if (!hw || !link_up)
>> +		return -EINVAL;
>> +
>> +	if (hw->link.get_link_info) {
>> +		err =3D ixgbe_update_link_info(hw);
>> +		if (err)
>> +			return err;
>> +	}
>> +
>> +	*link_up =3D hw->link.link_info.link_info & IXGBE_ACI_LINK_UP;
>> +
>> +	return err;
>
>nit: If the function used "return 0" here,
>     then there would be no need to initialise err to 0
>     and the scope of err could be reduced to the if clause where
>     ixgbe_update_link_info() is called.
Will do

>
>> +}
>
>...
>
>> +/**
>> + * ixgbe_fc_autoneg_e610 - Configure flow control
>> + * @hw: pointer to hardware structure
>> + *
>> + * Configure Flow Control.
>> + */
>> +void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw) {
>> +	int err;
>> +
>> +	/* Get current link err.
>> +	 * Current FC mode will be stored in the hw context.
>> +	 */
>> +	err =3D ixgbe_aci_get_link_info(hw, false, NULL);
>> +	if (err)
>> +		goto out;
>> +
>> +	/* Check if the link is up */
>> +	if (!(hw->link.link_info.link_info & IXGBE_ACI_LINK_UP)) {
>> +		err =3D -EIO;
>> +		goto out;
>> +	}
>> +
>> +	/* Check if auto-negotiation has completed */
>> +	if (!(hw->link.link_info.an_info & IXGBE_ACI_AN_COMPLETED)) {
>> +		err =3D -EIO;
>> +		goto out;
>> +	}
>> +
>> +out:
>> +	if (!err) {
>> +		hw->fc.fc_was_autonegged =3D true;
>> +	} else {
>> +		hw->fc.fc_was_autonegged =3D false;
>> +		hw->fc.current_mode =3D hw->fc.requested_mode;
>> +	}
>> +}
>
>As out is only jumped to from error paths, and err is not returned, perhap=
s this is a bit nicer (completely untested!):
Will do

>
>void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw) {
>	int err;
>
>	/* Get current link err.
>	 * Current FC mode will be stored in the hw context.
>	 */
>	err =3D ixgbe_aci_get_link_info(hw, false, NULL);
>	if (err)
>		goto no_autoneg;
>
>	/* Check if the link is up */
>	if (!(hw->link.link_info.link_info & IXGBE_ACI_LINK_UP))
>		goto no_autoneg;
>
>	/* Check if auto-negotiation has completed */
>	if (!(hw->link.link_info.an_info & IXGBE_ACI_AN_COMPLETED))
>		goto no_autoneg;
>
>	hw->fc.fc_was_autonegged =3D true;
>	return;
>
>no_autoneg:
>	hw->fc.fc_was_autonegged =3D false;
>	hw->fc.current_mode =3D hw->fc.requested_mode; }
>
>> +
>> +/**
>> + * ixgbe_disable_rx_e610 - Disable RX unit
>> + * @hw: pointer to hardware structure
>> + *
>> + * Disable RX DMA unit on E610 with use of ACI command (0x000C).
>> + *
>> + * Return: the exit code of the operation.
>> + */
>> +void ixgbe_disable_rx_e610(struct ixgbe_hw *hw) {
>> +	u32 rxctrl =3D IXGBE_READ_REG(hw, IXGBE_RXCTRL);
>> +
>> +	if (rxctrl & IXGBE_RXCTRL_RXEN) {
>
>FWIIW, this could be less indented using something like:
>
>	if (!(rxctrl & IXGBE_RXCTRL_RXEN))
>		return;
Will do

>
>	...
>
>> +		u32 pfdtxgswc;
>> +		int err;
>> +
>> +		pfdtxgswc =3D IXGBE_READ_REG(hw, IXGBE_PFDTXGSWC);
>> +		if (pfdtxgswc & IXGBE_PFDTXGSWC_VT_LBEN) {
>> +			pfdtxgswc &=3D ~IXGBE_PFDTXGSWC_VT_LBEN;
>> +			IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, pfdtxgswc);
>> +			hw->mac.set_lben =3D true;
>> +		} else {
>> +			hw->mac.set_lben =3D false;
>> +		}
>> +
>> +		err =3D ixgbe_aci_disable_rxen(hw);
>> +
>> +		/* If we fail - disable RX using register write */
>> +		if (err) {
>> +			rxctrl =3D IXGBE_READ_REG(hw, IXGBE_RXCTRL);
>> +			if (rxctrl & IXGBE_RXCTRL_RXEN) {
>> +				rxctrl &=3D ~IXGBE_RXCTRL_RXEN;
>> +				IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, rxctrl);
>> +			}
>> +		}
>> +	}
>> +}
>
>...
>
>> +/**
>> + * ixgbe_setup_phy_link_e610 - Sets up firmware-controlled PHYs
>> + * @hw: pointer to hardware structure
>> + *
>> + * Set the parameters for the firmware-controlled PHYs.
>> + *
>> + * Return: the exit code of the operation.
>> + */
>> +int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw) {
>> +	struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
>> +	struct ixgbe_aci_cmd_set_phy_cfg_data pcfg;
>> +	int err;
>> +
>> +	err =3D ixgbe_aci_get_link_info(hw, false, NULL);
>> +	if (err)
>> +		goto err;
>> +
>> +	/* Set PHY Configuration only if media is available */
>> +	if (!(hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE)) {
>> +		err =3D ixgbe_aci_set_link_restart_an(hw, false);
>> +		if (err)
>> +			goto err;
>> +
>> +		return 0;
>> +	}
>> +
>> +	err =3D ixgbe_aci_get_phy_caps(hw, false, IXGBE_ACI_REPORT_DFLT_CFG,
>> +				     &pcaps);
>> +	if (err)
>> +		goto err;
>
>nit: The goto label only returns err.
>     So IMHO it' slightly nicer to just do that here.
>     And return 0 right at the end of the function.
Will do
Thank you for feedback

>
>> +
>> +	ixgbe_copy_phy_caps_to_cfg(&pcaps, &pcfg);
>> +
>> +	pcfg.caps |=3D IXGBE_ACI_PHY_ENA_LINK;
>> +	pcfg.caps |=3D IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
>> +
>> +	/* Set default PHY types for a given speed */
>> +	pcfg.phy_type_low =3D 0;
>> +	pcfg.phy_type_high =3D 0;
>> +
>> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10_FULL) {
>> +		pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_10BASE_T;
>> +		pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_10M_SGMII;
>> +	}
>> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_100_FULL) {
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_100BASE_TX;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_100M_SGMII;
>> +		pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_100M_USXGMII;
>> +	}
>> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_1GB_FULL) {
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_1000BASE_T;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_1000BASE_SX;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_1000BASE_LX;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_1000BASE_KX;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_1G_SGMII;
>> +		pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_1G_USXGMII;
>> +	}
>> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_2_5GB_FULL) {
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_2500BASE_T;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_2500BASE_X;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_2500BASE_KX;
>> +		pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_2500M_SGMII;
>> +		pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_2500M_USXGMII;
>> +	}
>> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_5GB_FULL) {
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_5GBASE_T;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_5GBASE_KR;
>> +		pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_5G_USXGMII;
>> +	}
>> +	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10GB_FULL) {
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10GBASE_T;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10G_SFI_DA;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10GBASE_SR;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10GBASE_LR;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC;
>> +		pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10G_SFI_C2C;
>> +		pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_10G_USXGMII;
>> +	}
>> +
>> +	/* Mask the set values to avoid requesting unsupported link types */
>> +	pcfg.phy_type_low &=3D pcaps.phy_type_low;
>> +	pcfg.phy_type_high &=3D pcaps.phy_type_high;
>> +
>> +	err =3D ixgbe_aci_set_phy_cfg(hw, &pcfg);
>> +	if (err)
>> +		goto err;
>> +
>> +	/* Request link restart - without putting it down */
>> +	err =3D ixgbe_aci_set_link_restart_an(hw, true);
>> +	if (err)
>> +		goto err;
>> +
>> +err:
>> +	return err;
>> +}
>
>...
>
