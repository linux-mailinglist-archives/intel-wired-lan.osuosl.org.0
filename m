Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D3396593F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 09:58:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E73B40AFB;
	Fri, 30 Aug 2024 07:58:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a90-pmZvK12x; Fri, 30 Aug 2024 07:58:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7655410B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725004697;
	bh=5wK9yo/MPKJo2+ZeIueWhgKJ43l7663kRCQRh41cfoo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c4xWQ7nnxFtnEpGT7GsQDIOlIIDJYhx+Bhvxy0rvK3i+I4pPzdt7/5W83gKHEAqFQ
	 +YQBpbCwMLG/EoNtnUvGrho3+AZ4VHZRWX8U7o5L7EJb9F2cxD52nksfCMgrjmgJuD
	 tTd47bffwxLN/GbCO14pR0xbBGd+uLKcQMmMkAd+FwexrjT63R8/1vqlmEhqNIzWDy
	 jL8T/F0MTIekHUiTXdIQPtXQP/sRC/u1CDpQbxwDdy27Y0FcZk9l9tyZ3IYn7q0BDE
	 Ujl/GVY2j8k8a0A5DU4jdY1WjBFMinUvdniThSYkRWL4bbQlWPBsu52lazflfv0QKN
	 LzS4B13K63+Sg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7655410B3;
	Fri, 30 Aug 2024 07:58:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 90DA31BF846
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 07:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C3F54031E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 07:58:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jxgKokilj7m9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 07:58:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6FEDD419B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FEDD419B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6FEDD419B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 07:58:12 +0000 (UTC)
X-CSE-ConnectionGUID: UyMcZ21LSkWQlv50JjXpMQ==
X-CSE-MsgGUID: iVHHS3ZgRs6L6WMH8JZ0Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23593860"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23593860"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 00:58:09 -0700
X-CSE-ConnectionGUID: zpLI/SDFReC+1jUundAhKg==
X-CSE-MsgGUID: uDVi0Y2UQ2y9M2ar5Xh+Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="94653701"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 00:58:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 00:58:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 00:58:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 00:58:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 00:58:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JkbJ5HebQACs8kurU+kFsjfKDEJ6JE+U2/EavuiPrHX7ZRAGYVG/yXGGsqXj+1wM9am07ufCMbpU9H5Wnv0bll/p1dL6k63uRuAT4jM9GYTdHSMbO53qu2MDj/VIpipE5FSmotieoNr9y5xsBevtM4NbUDrgGN5qZ86Gwhas2MzsLzX1MU0MVHmFI67/UjA4wQNXtl12kAr2+gBROiC6Fl/IOASX9Iy2CNdGkV09WyR3eBWh6xl6zfDCuU6I7JA9yfGQO7oaU9qLzoxj11iQp5+c71W8134QTbRkDcaBbNfNEq1C0RwGPpxrfxICgGGm3V6T4zxhbifbkXpelevauQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5wK9yo/MPKJo2+ZeIueWhgKJ43l7663kRCQRh41cfoo=;
 b=EgSW5qRKQfJxaEEgbemg9LzJbRm9hQ8aUrNNScd9uJ9nBVseHnngRT216/CUvuitqLoxWtXdlaJtCYQb5FX2TGFXoNFF0bex8stbKG1gaoLSdMTLnKJot+h0pLv4M2FBTXdVvda4i0JjQqyJ+AefzMCSjxLTYR3mW4rO9Y1RjmRyMTGxbtK9C79v9x5h/q1ryaPfHQIoh5JMWG85tH8fVeLlreKWpVcU2KKZylWs81yHEcl9yQajxhPLmEmlOiC/sxwiN/aEK99eyAoifBleO+5v0qi6IliH1Y7QNLjibMUuXvWu1+AhiwffiOf7kmXFKt3/W/8K0b0UEMK7pvIidg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB5864.namprd11.prod.outlook.com (2603:10b6:510:136::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Fri, 30 Aug
 2024 07:58:00 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.7918.019; Fri, 30 Aug 2024
 07:57:59 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Flush FDB entries before
 reset
Thread-Index: AQHa5z3vc5yMAbTuqkCqdW3s+gCn27I/lc/g
Date: Fri, 30 Aug 2024 07:57:59 +0000
Message-ID: <PH0PR11MB5013DCAD2CA456A894723E5496972@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240805134350.132357-1-wojciech.drewek@intel.com>
In-Reply-To: <20240805134350.132357-1-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB5864:EE_
x-ms-office365-filtering-correlation-id: 5082beb8-4f3f-47fa-310a-08dcc8c9777d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?EPTf6NoA4xlwP14vlD18r2OZ1PEZ4S/Du1hIG5e6cxrc+LTLLoylNOc/yKq+?=
 =?us-ascii?Q?t+AKALXA4Vp865N2JalgeFNVHfzPuuTMnFp1uX7oAKONQ+DRvNR9cgbR5n9b?=
 =?us-ascii?Q?ww/wqC9wLl1Q621Lvhaf825sMQ0a+AvIW200uahgnwyyNBNclSrgwVJiVwVc?=
 =?us-ascii?Q?Oirp/YModFc5YNFUJfehEnfPDKL75lqcEkbmDOA3NhcAE7LUlymQ0JBXzEMQ?=
 =?us-ascii?Q?4jVkYuOT2dDljj2APG6auj32t3xjbUDb7E3VybEHOrh2vWKLiKjNaBTlNhcX?=
 =?us-ascii?Q?de/4oBKC2S2+V9ZWSmTvZGiIdJFYGZzYbARA97wiAVFawejX2pZerNofuJuu?=
 =?us-ascii?Q?zY1ZNoXF3FvjA9riL+V/SYKPWj92Wb3/nWV2vIFog8HIYLkwzU+yw/Wpj2d2?=
 =?us-ascii?Q?hpBQ4HOcA5o00WxmI1KreoB7GiBlPcQUt08PI44VP68f7+zRNWAAo3YfvBKA?=
 =?us-ascii?Q?xG6fcREMGDz4M+QFSttoONKgIkxxtJHKpZdZmEcUSK4nqOHdHMHkrHJOsZ2g?=
 =?us-ascii?Q?RuWjkIHWWFeCzK1hZQNh0hgWNW6lQdJSKpTatc8RfUP2Np1lwewtFLZJ8cx6?=
 =?us-ascii?Q?7swzbOq/zOt+Z/unfJJRUwDxBwnhYeNHfTpr2qIU58CxPOly0TLB1lRffqbW?=
 =?us-ascii?Q?1h6jRFsEhMb73BMllC9QiPQVwzCwoU3Flnv+nv2wfYE3sl+blDzL6JKXGxi5?=
 =?us-ascii?Q?OQVbJ8ALT0EpmV0So4SPc4MKvwuhLsrtaxDzAEFQayVhBb30jQ2uYLH/NrbK?=
 =?us-ascii?Q?2/NBM1Rnz+S0zL+tnx75AJtzQj3PuJTMDrcgI5QVzDKN5SYqMMqczxRA0NzA?=
 =?us-ascii?Q?126Lx0rc6z1jWdsmmh+5SAsXCta9+vYSEuKZg/y4eM+222fHGv0/6p4LU18G?=
 =?us-ascii?Q?9ffdJC4d3cNJ7QX9RXBUD+OQ6qVWriKah0fB9inpHBT6Zn40933EdKdIceXB?=
 =?us-ascii?Q?mXnEwTZOZ8x2YGiYAGm2L/Mv3s6SdC3fmnK90KGeNiEmH3ShF+8Qip5Zp4yE?=
 =?us-ascii?Q?9Mz4M2mqEryFcEKJM9ixLlTJfLfbRMrkcG+5cZM+hpTRo38Mb77hl9mq7Eq+?=
 =?us-ascii?Q?mU09IEEDqRwooJoomoleyOtZ3O5EFUbX4wLuohq6ZwwizrXO0NNPA8G+oX6g?=
 =?us-ascii?Q?RoePh8norkRvQ+zuFLnEV2vHzSXL8MjilNUyfHOYk06ResnafhVNRw3OSF4y?=
 =?us-ascii?Q?UJJtwqpZcuZM3ia6DSMcbeTuA+m7a3T19txT9ZrL3anlBWmwtkJ70qa1ea1z?=
 =?us-ascii?Q?FYVxjGAPyLQ6bw5JZpzF+PRm10FPB7XGATVcyjsblipS3kMzmk/0xnx+7XuP?=
 =?us-ascii?Q?4KEwlji2UkzkqzN3gNZlTdaSS+CfSAkFiZOlTpJm74Z3/AKZyIfppacEDUlG?=
 =?us-ascii?Q?KTCchOpFZLdQ8kSr6jT6l0m1MlvpFW7FI+P2VdUl7A83+Gf4mQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F+b0zwtzj3bIWL7mJrf2FGeYd1pcTJ3s6EAu/sIJS35UWECGIuoJiYjStPOj?=
 =?us-ascii?Q?ud5ybXzj3CxwxP+LkwqsU0VNlNVHUIJgu7g9HrKhkPhdwolsLP9vpbzHNP29?=
 =?us-ascii?Q?dA+D3UnBnbVYzYxNsvraSbpRmwedrKkHTF0bmIIZwbd8doKVXFdSSmW8F8H7?=
 =?us-ascii?Q?x+/iNYRisgTkMIwsien9b2RaHflu6rei83qMKfEYFD4WGZV9Vxttn35WrGmG?=
 =?us-ascii?Q?W8h39fDPc3UizCpUJ9RfTsCkZasYQdUvraDMd6rb/Kt9/epBWFkRXIAxMk+q?=
 =?us-ascii?Q?aCWWKqZ8kGy47Rvg7JzuccwIE8Ux5/zFbioWcVTrB2ORSNrJTDInqcP+lqjI?=
 =?us-ascii?Q?HzmMLwg4YxZvkcDLdRWD3RWk4Ya53e+T4P2U9alEkD7EQGR3Ct3h4on5xgWO?=
 =?us-ascii?Q?gPkbiZR7/FEQ6cSM07heNZQJBcEq92pFn/GgMx00X9N0TmB0lwG9Oi86cjnw?=
 =?us-ascii?Q?dh6Ybo2mMpLzJHAjebTOH7he3BWo7pFvqghY2XKCdG2641vHkB2ZNO73eyyr?=
 =?us-ascii?Q?22WWdGHrgYUjOxyLtbJtTNv+jUaheUUaR0BB9HaRV5RiT8eG+Eu/smlJmV4n?=
 =?us-ascii?Q?dj3TFeL7ZNSdTtun58vDHb+EIIW4LuyFq1Zx3zAIVkpvw634zSUxfSGWHfZQ?=
 =?us-ascii?Q?AWHwU1bHktNf8KbteNgETLFViR4iGoFNn4Jz0fsK8RiHyp7YLE6EC9O23+bP?=
 =?us-ascii?Q?30vHqTxRVPywNMhUeofchRB743mNqvyj+a2RYl1mNRdWjxOJyaTvPCqyo9k3?=
 =?us-ascii?Q?DcqmpSd9JExIX6D+eOMvvaBKF0aYHOova2dASurZXnbbJx4gPCUXaAOvT7EP?=
 =?us-ascii?Q?I3HoSZ0FgMCr5IjNed/BFy4wFCmSDM0LiuqnAGEpkEZLPPuy1IMAm1Fbl0bJ?=
 =?us-ascii?Q?p33pkaWn4MtalXta+f+yVH+/6ljxU/SP0TWidIA4ZzTZ1mTjgcBRmfYjygZi?=
 =?us-ascii?Q?Es4wbOL3wqYPvSu2XiVVeFa4XOoCNxXuiTp8tpOmzklx7tb3ZWql+YkSEAVd?=
 =?us-ascii?Q?rvgreJEKe6u6hSvXoMp3uI+tcxL7xdpoTl05pq1PCmZa862EUuQB5ZaNuSj0?=
 =?us-ascii?Q?8r5hi1nAp2uIngVPzsEvOkjGg+AhT67NfrG6PLZkSpVOinBvhVfSCONt5l7F?=
 =?us-ascii?Q?/TnJEEBiZUGHbKG6G63mF77UuWeM9QkybQBjn9Alx/xwzqV1EOk6eQJCxPa0?=
 =?us-ascii?Q?1P03q+vWwe50rMawBBfjfGoeP3Zot1dCfqKMGDockHauWdk+Pvw9UHLI/tjF?=
 =?us-ascii?Q?nZ5tLag6XNFLKDdA5iISzPVw6E/t+wpEngwb8kT5teea0CoszEzK/BpRsrTk?=
 =?us-ascii?Q?rWoMLKatw4GEAycfPVf/Ce2Wz/nqhgZpc/XsLbdNS5ch1O2Jw7eRCsWwJRU4?=
 =?us-ascii?Q?fuEG146hwbWTtQ1SBI8eYLUunVe1UbBAEc8F8FyyBnYl/n6EVOZOPOtA7zdf?=
 =?us-ascii?Q?ADU+qS2w3OFiaku3vxlqkcgBjkN1cVwd5gX3rj94sASUIU0GY8FWso7yx7JM?=
 =?us-ascii?Q?Wf8to2EOyyz8shjC7eARsAFTGSaQ3NXGtAvXtxqofbJIn1mPZ5K+B6uLzfey?=
 =?us-ascii?Q?gYlguIY414bm0QxLliV0/9KFBXWxMlipabuAB0kytsDbl8HNJ3+H0S66z/i9?=
 =?us-ascii?Q?6Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5082beb8-4f3f-47fa-310a-08dcc8c9777d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2024 07:57:59.7923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XiEZLHd+bvJ7FnZmb+GzDwXJa798OmB/zwQZu+hcDGk4zhrnNPijuQysTxoL9uMz34ke1b+ssh7PirKyzRuVFWjI+N0KleOfIv1EpwZ+71o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5864
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725004693; x=1756540693;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ncsz/vKgVa2RAyGGnmHR+TvB/DnfF6ddT7J+2otYqqA=;
 b=k2BRzMfGIj9fcFXPXA687kzR5g2StLSryimAL4n33XHjwXi0e94LHGlY
 3aC7N6hDiZPSVitjER6Lt27tYSMhXn6q0/G4Lg3/7hGRubn5T6qZGn2Cl
 SDAulngxqmyavK/ooryxpifY2diWenQUW3G6m9HLvRoRYCurJf5V7K7w0
 3gnkAejUDZqCNITroi85W3Im/8hvPnfz6G1IvNFIJUs60P67GXrfxs8We
 nwuRJgWnGLku92Sj8LrueEefp2IjnE3eU/52tx+S9j0sv6gGaO1qBDrox
 B1KGXfOF6OAxoBhXMOI+mRE18ednl300LWSiMhJ0XX2S+L2Y6B95WQ7qY
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k2BRzMfG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Flush FDB entries before
 reset
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Monday, August 5, 2024 7:14 PM
> To: netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Flush FDB entries before =
reset
>=20
> Triggering the reset while in switchdev mode causes errors[1]. Rules are
> already removed by this time because switch content is flushed in case of=
 the
> reset.
> We can avoid these errors by clearing the rules early in the reset flow.
> Remove unnecessary ice_clear_sw_switch_recipes.
>=20
> [1]
> ice 0000:01:00.0: Failed to delete FDB forward rule, err: -2 ice 0000:01:=
00.0:
> Failed to delete FDB guard rule, err: -2
>=20
> Fixes: 7c945a1a8e5f ("ice: Switchdev FDB events support")
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   |  2 +-
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 24 +++----------------
>  3 files changed, 5 insertions(+), 22 deletions(-)
>=20
We are observing system hang and reboot while doing GLOBR reset on the inte=
rface when traffic is running.
This hang issue is blocking the patch verification.

Thanks,
Sujai Buvaneswaran
