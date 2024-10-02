Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8390598D3B7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 14:54:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 900A160E4D;
	Wed,  2 Oct 2024 12:54:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZAjUZIovODSD; Wed,  2 Oct 2024 12:54:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C23D6108E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727873652;
	bh=Xi0d2nmshPprN6/1LBijh2dRDZLERidXwgx6mUJOQ88=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h0lOuDzcS7qzXnm3fVAIhiD7EBZe7BBnFzscOCFanjTFvGAgvdiYzOzcVdBvcmArv
	 kUycQg4j8Hen3U+vphRGvSsRFH/foMKvHeVJY8t+yM916/nQshZd46Q/hrC04EJ1Fr
	 n+fXg8mEHATdOUsw5tpLKsNsvwqg4AM8b+1XDSd8qgGfeL++ZIRSPhOviGv4CXlOc3
	 HmXqkKjNSdN7fPeqdHjLmyJFruj9E5FqBmHVcxpvIyQRxSb/zQJOnLDThtTapdytwF
	 EnTcnJZrwgDHcbja5pj5CREGV6sf/IoYWStt48tBbE1DFnRcac9OyBs9SNZbI9/kHL
	 EWEGIhKPNy9Qg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C23D6108E;
	Wed,  2 Oct 2024 12:54:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A736C1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 12:54:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40CD740D6B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 12:54:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kbM9M_-sKP_H for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 12:54:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DA0DA40E52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA0DA40E52
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA0DA40E52
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 12:54:03 +0000 (UTC)
X-CSE-ConnectionGUID: PK6RRVIQRsio+D6DSn+Rlg==
X-CSE-MsgGUID: B5xsTFK4SnmSPlt9KLxhCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="38394518"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="38394518"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 05:53:53 -0700
X-CSE-ConnectionGUID: vFIwE+SAR9SE7PfmBLcgkA==
X-CSE-MsgGUID: zYCcBe9GSK+6n/bYCPZuSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="74111194"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2024 05:53:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 2 Oct 2024 05:53:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 2 Oct 2024 05:53:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 2 Oct 2024 05:53:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GTSOwO2we9N/09gJwbHeBnbY93Szhp50Bk/Y+HhM68m6icsmo8olFpDG4ZAEejUunSZJj34dYfVibk647FBTx+leToJVH2T8sx+6D7qQYpizRRpS1S6tzVET3ujV44x5EHNz76o6eEGojXGuvsu0pvytPkXaAGevK7SQLlEhhfYot2bpI4UT+ku+bvxdAnaxhJ11DN3S+GeJEqdIaKX5q65ak0oEO0pyIq30cYD6xVYqaldQbhH0LwRvy6yWewEZrI+R2vbow8MDd8zCEW6ZdUmxsexe3qlSdoe17fS9DN7cgDlM4fxg870QadIKP0mtk59tzzqMqX8vJw3/KXmtqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xi0d2nmshPprN6/1LBijh2dRDZLERidXwgx6mUJOQ88=;
 b=WvzJuTI1tSy3CAkmhVCn8268IFO8TIx8ElZZdJK13s5Nil7YS+AkKS/57++e9D3seqHkdLm//KMwT3P2CXNgfV7zxb/kA7XDVD1dLzZB6H2LpZsyWhRogJsnpadw//W7fuOmwFfYrd/rUoiBrEOcvJiCY7VChV13fdMuxzwlsQyvNBm+uMtncgvWmiA75HohK8msDotNvUh5Xaf9B3Hm78FFvvRWICswKNhANHovDzJp0tppG0JIy3rOI27BmwE3FuyhdF+C2Z2ZtS1SHbQEtuPFVxbXwBF8aY+wzM0JfTgaoNZ/Ilh9nRlCAB89b1+L7hAYNlKPNzvb6IqzfIWYDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA0PR11MB7188.namprd11.prod.outlook.com (2603:10b6:208:440::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Wed, 2 Oct
 2024 12:53:34 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8026.014; Wed, 2 Oct 2024
 12:53:34 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Mohamed Khalfella <mkhalfella@purestorage.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Auke Kok <auke-jan.h.kok@intel.com>, "Zhong,
 YuanYuan" <yzhong@purestorage.com>, Jeff Garzik <jgarzik@redhat.com>, "Ying
 Hsu" <yinghsu@chromium.org>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/1] igb: Do not bring the device up
 after non-fatal error
Thread-Index: AQHbDsW+fxXahknZmk2DkrojY1IZebJzdV2g
Date: Wed, 2 Oct 2024 12:53:33 +0000
Message-ID: <CYYPR11MB8429354381874A6EFF02025DBD702@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240924210604.123175-1-mkhalfella@purestorage.com>
 <20240924210604.123175-2-mkhalfella@purestorage.com>
In-Reply-To: <20240924210604.123175-2-mkhalfella@purestorage.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA0PR11MB7188:EE_
x-ms-office365-filtering-correlation-id: 6ba1b0cc-7636-4ba8-bfe9-08dce2e1397f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VlrVc9PFDzilkhX41daRb7JBTeOcYejulSQf/fOEujPjGKQ9Luj3QDfy14pJ?=
 =?us-ascii?Q?RE+yzEp3rYGY4PE5aQE8F82OMaD6CBxpRv/D5BALytNa5+k0R12MewStH4s0?=
 =?us-ascii?Q?nydmFVj/dDB5191Gejun0m7nQ2omXMSHfCVdSeuvJv1jnZ7+UpOpBcpi8Ct9?=
 =?us-ascii?Q?X/miZR7ZoO9JjblybR3sn7vkAXSVDDTJHZX2BqYlh12U5QkSZkEV9rG8UCAJ?=
 =?us-ascii?Q?cUhp4qO4ER9XUa2rFTbn39u9IaO6GSSm52V2px/qB3TsDRmY2ZE4xj0Agfd4?=
 =?us-ascii?Q?dAm8FWPJUyJcFuzrxPAp1aXZordRnQ4Ubs3Ybe6GlPukQRUeK7CMCEu8VKVM?=
 =?us-ascii?Q?pJUtVXiGTeVTl3vq4yKAOeTlKY+HR/EYMi3oz5YsB15zUdw2jlfekBT90CDV?=
 =?us-ascii?Q?uIXu5thZrNunBKV+Hok3XHNJMjs8AB3dINukHbyxwln8PXLZdcYxEdIGM8Q5?=
 =?us-ascii?Q?0HXf0BMcl/0oB09EZUdXq6cUsnJlSZ1xmamdii/XOFo+y7/PpmYKI/ba3Nm4?=
 =?us-ascii?Q?zjsx6gdRXILQOPazTxf9ZU39ZadwsT52t2/nqk9yDkHDBGmPlTViCuHEBXsr?=
 =?us-ascii?Q?LEU6d+vVbi5qniW39en01n5wd73HM14759e2/eY/2kQlPSG0RyU2D65ms+sV?=
 =?us-ascii?Q?cGwszhtnskiK67ne0yQjiB+0k0SSMiCYwn7boZ4oEqfns5jJckGC9sjWtfdt?=
 =?us-ascii?Q?ElZAM8h0TUGyzfxu9F92bt+ynJ10PvMAhBNpBvlZEbMU+oE9ZyuQriLNNFv1?=
 =?us-ascii?Q?MVGT1nUZ9olWIMFnmea4txaKPoB3XoDdVh5kmtcVK4ckFK871GMNp+Sqd+AC?=
 =?us-ascii?Q?0NyLBhBXOQ1ctkkOPHBoYyLwatIeVZNgbe8GXgZZ+xLXIEwXfuOrQpI23QUX?=
 =?us-ascii?Q?hJXaqKA+Ihqy5FRCwVhu7Oy0jUeddSQlOeAEXTt2E9UTpx5Aw0OF/cZiwouX?=
 =?us-ascii?Q?MW3jScKxcT2aPqxQgy2BSzQVspYfzU3LE6qTueJ1++4KEJa3dMTwqXYNgxAV?=
 =?us-ascii?Q?I6S9D8CRLgsEruGyoS05smM5byDkepSoqD36PD3O1BIXcHdkJTJcb9qEeVvF?=
 =?us-ascii?Q?uldI8OdLzS036FMU2NO2wbXkiJn3Z+Hv1lSyUhl3NlGT7dM/dae5fsBg8J9+?=
 =?us-ascii?Q?AkQ77GPdD4NBXDC5BhTctJpeJ67IgNz7I1oxX0VCF0V1MrYvuocWy/OJC9HL?=
 =?us-ascii?Q?kDuFAGh8aE9+8ZP4CHaUjZz14Xu3d1ZyUWl+SduomX4p/ehWhMjbsGEJLMLe?=
 =?us-ascii?Q?uhfVJdTOoyHUEj6sGxZJ/RJ5dDRKDpMV9UGS/neCZ6A8wL5v6/RSch3LL3mX?=
 =?us-ascii?Q?eAyznfxVTlvDzM/n2W8HEV64/+UVVY5I2DhooRvXzX5UsV/yw2LjAqktLRUS?=
 =?us-ascii?Q?F97I1Sg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cwV/9DtWNm2cgI4M6Z+a1AMNjYnK12nMCXzPFiA7YToKA9UrvbCkaKr0t6Xc?=
 =?us-ascii?Q?X7K2+kFLObYC+cHLJqxmlWvGfz6y0cYueVTpt4yJem4VHq5rv7cjrEgRomoZ?=
 =?us-ascii?Q?vNvIXXyBvy2pMOVnPrIaCuSvQlArgNGiOGUBNIY422bDiqHwmRDt8t5juu0U?=
 =?us-ascii?Q?GMdyCGWaOU7/IxSuei2az/sxdIX4n527QsaXZCfJ645bxpRTUwrHTpZq4zYi?=
 =?us-ascii?Q?G1xSF0CmcrpQ7HPayskNVB8CJHGuRV3tUrbdD+iHN1cYmZEa8oAsndbO8xLE?=
 =?us-ascii?Q?eZbISbWBWFdLFXBDzLYKqDeZYmlKakQlHcE4RsIm3Mifmuta8FRcfG1Cebs1?=
 =?us-ascii?Q?VyO1gKVCKJGUS2lvOZKCvkjdjQtELkDDoVTIRXK7Zp/GRg38Qsohw90XeHuc?=
 =?us-ascii?Q?stA5jgD27Zj3YvQRXtaEkJX9yio0gdCJfqYr+LS2WpbIZ5zgREfZxqd2JQnG?=
 =?us-ascii?Q?KMoCVucXowCDN/d1iOej71dgqE49dTtsOoNoxAkfzdb5RncU4zMSJzO+eqg8?=
 =?us-ascii?Q?g3C8+gbiU/MftFmO37lOqdB912NqAdORCbU9LDBcfnlq8MwW9p2PaWeZicKJ?=
 =?us-ascii?Q?dQs4eZqh+i3mjxJVSsHCNvzeNjdt9Cli8DJD40lfq5CvXsGZ71kyWDMN5sdq?=
 =?us-ascii?Q?nUlkwuTZ/beiinVluKFzi50miJ8/CWYdsSqmaDNMj7fb8zhyExBFkF9mcDaa?=
 =?us-ascii?Q?w+YCXS0aLSwmjUDbPxkftX9kARqlwWtRDeq5HiqW0n1rlrsUrNdaabWYqIpD?=
 =?us-ascii?Q?DjfuO3Pm884BUkrKZkKPJwMYgDHyrxi3bEcP0iowatyYxhxWET2TDAxa18vS?=
 =?us-ascii?Q?zmVDzGp4X0EvxS+7ckaK5XsetjR7ysvZ3pd3GiN0MmC4zBf9HSG8LZeBrk+w?=
 =?us-ascii?Q?7Dse3E3/f9Es/hiivaIG+Q/2hZumtqacn17cxiMriT8o6DjaVYT1g8QPUfWH?=
 =?us-ascii?Q?hJkra7HJfWUyzua/1OiM4ITjZpdOgt6pC4YnaleJMntQPsOs27QDmSTeCMDe?=
 =?us-ascii?Q?6E9q6BpjMGW8rdwn8KTYgpSuw/zxRqye89lPdrH12xsa3iUc2pjruIy5zYBj?=
 =?us-ascii?Q?u6/GL35SXJLIhVIGfkUT1bq4RLEIKuKGpu2vNiZFlmMCx7D43DSYxSWshXCo?=
 =?us-ascii?Q?knvHn3yhcutdyL96bZnayB4obu2s7xrgf9QuS8Rrw1+wYBAjI0rA1akAxWvd?=
 =?us-ascii?Q?ovE0Ee0IfpS3Gkt0ZOHwOppgKjeNU3SQmxDPW2AcIfv+zKOfKKhLymSkzXnv?=
 =?us-ascii?Q?fjXdLVONo1MyQWhhArTHKOTteAs0QymK6ithyvXcW6fxSWfjJN3cxoruB7Bl?=
 =?us-ascii?Q?8nHTJT9zdJs3J1uvvnaiDZULnFjccFS/XMbxpGmGUz2UfGBTHjwb8jkEraf5?=
 =?us-ascii?Q?CEG7VHqKUjqYTRBbpLJ8+SoU9nq83S1Y6wBiDcF6MH9klmE28htKvr2OjSta?=
 =?us-ascii?Q?wL2byxwf3O0eGN05GnoDw+YQ/9LJcrhYGKNwNpMH0wWNeyrUxMkTL8PpBARM?=
 =?us-ascii?Q?tB4hl5npDe6047oriMzuYlL9rfmVDWeNWWDB1MlpXjfVJfuBgMVCvNoTV6/G?=
 =?us-ascii?Q?+E4Z4wGJ48WeXQZj1NabSx3rAdKAnL7qhIzdFQYJuo8gltbewHeq9dpSB+9q?=
 =?us-ascii?Q?/g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ba1b0cc-7636-4ba8-bfe9-08dce2e1397f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2024 12:53:33.9600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 65Az+lylx/FHwNGdp17A5pKXGBJT6OJNhQga7CtChFJzrjRq3G30rVxf/0iIQJtPmvIqPN1qhlbEDOFXuEI4VOaIJoP6jJmqiMfEjV9tgGRxKJ1iIiXjPqBngaDebdEv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7188
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727873644; x=1759409644;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mErAts3p6oYJR/5VHucMsKbekQegDIpPCdvxqqSvv7c=;
 b=CZ71l58ngwcgfK82rHF7rUZ2VKW7Tl42zcI+B1MCs5VG3fGgZZR0pvg7
 LVw6TRDG0cAcPHfmNsSAUHHLuwPgpqjO6kWjSSIUh+ccBGH8JVvUGqjPi
 F/pXeeXMGd+ulDe6E4dzyHa1vcWUB0p+1PsrvI31E+2FWqBLk5gwii2Q4
 6WmFGPILisOFLn2Q2xf8b74lEnyiZb86zQKfRkg84zuopgBBbr2dxp/bB
 Q/lr0vDXLD2S4nYERtaj8FWY54AY3h911swrk6Mp0AApigmRq7KL0Drbu
 U0Q29XO96yvD6ajCV/1O6OeQ9j1He7WZrpthwsElzMi8sp9tx+MV7ERsl
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CZ71l58n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igb: Do not bring the device
 up after non-fatal error
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ohamed Khalfella
> Sent: Wednesday, September 25, 2024 2:36 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; David S. Miller <davem@davemloft.net>; Eric =
Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Aben=
i <pabeni@redhat.com>; Auke Kok <auke-jan.h.kok@intel.com>; Zhong, YuanYuan=
 <yzhong@purestorage.com>; Jeff Garzik <jgarzik@redhat.com>; Mohamed Khalfe=
lla <mkhalfella@purestorage.com>; Ying Hsu <yinghsu@chromium.org>; Simon Ho=
rman <horms@kernel.org>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-kerne=
l@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH v2 1/1] igb: Do not bring the device up=
 after non-fatal error
>
> Commit 004d25060c78 ("igb: Fix igb_down hung on surprise removal") change=
d igb_io_error_detected() to ignore non-fatal pcie errors in order to avoid=
 hung task that can happen when igb_down() is called multiple times. This c=
aused an issue when processing transient non-fatal errors.
> igb_io_resume(), which is called after igb_io_error_detected(), assumes t=
hat device is brought down by igb_io_error_detected() if the interface is u=
p. This resulted in panic with stacktrace below.
>
> [ T3256] igb 0000:09:00.0 haeth0: igb: haeth0 NIC Link is Down [  T292] p=
cieport 0000:00:1c.5: AER: Uncorrected (Non-Fatal) error received: 0000:09:=
00.0 [  T292] igb 0000:09:00.0: PCIe Bus Error: severity=3DUncorrected (Non=
-Fatal), type=3DTransaction Layer, (Requester ID)
> [  T292] igb 0000:09:00.0:   device [8086:1537] error status/mask=3D00004=
000/00000000
> [  T292] igb 0000:09:00.0:    [14] CmpltTO [  200.105524,009][  T292] igb=
 0000:09:00.0: AER:   TLP Header: 00000000 00000000 00000000 00000000
> [  T292] pcieport 0000:00:1c.5: AER: broadcast error_detected message [  =
T292] igb 0000:09:00.0: Non-correctable non-fatal error reported.
> [  T292] pcieport 0000:00:1c.5: AER: broadcast mmio_enabled message [  T2=
92] pcieport 0000:00:1c.5: AER: broadcast resume message [  T292] ---------=
---[ cut here ]------------ [  T292] kernel BUG at net/core/dev.c:6539!
> [  T292] invalid opcode: 0000 [#1] PREEMPT SMP [  T292] RIP: 0010:napi_en=
able+0x37/0x40 [  T292] Call Trace:
> [  T292]  <TASK>
> [  T292]  ? die+0x33/0x90
> [  T292]  ? do_trap+0xdc/0x110
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? do_error_trap+0x70/0xb0
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? exc_invalid_op+0x4e/0x70
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? asm_exc_invalid_op+0x16/0x20 [  T292]  ? napi_enable+0x37/0x4=
0 [  T292]  igb_up+0x41/0x150 [  T292]  igb_io_resume+0x25/0x70 [  T292]  r=
eport_resume+0x54/0x70 [  T292]  ? report_frozen_detected+0x20/0x20 [  T292=
]  pci_walk_bus+0x6c/0x90 [  T292]  ? aer_print_port_info+0xa0/0xa0 [  T292=
]  pcie_do_recovery+0x22f/0x380 [  T292]  aer_process_err_devices+0x110/0x1=
60
> [  T292]  aer_isr+0x1c1/0x1e0
> [  T292]  ? disable_irq_nosync+0x10/0x10 [  T292]  irq_thread_fn+0x1a/0x6=
0 [  T292]  irq_thread+0xe3/0x1a0 [  T292]  ? irq_set_affinity_notifier+0x1=
20/0x120
> [  T292]  ? irq_affinity_notify+0x100/0x100 [  T292]  kthread+0xe2/0x110 =
[  T292]  ? kthread_complete_and_exit+0x20/0x20
> [  T292]  ret_from_fork+0x2d/0x50
> [  T292]  ? kthread_complete_and_exit+0x20/0x20
> [  T292]  ret_from_fork_asm+0x11/0x20
> [  T292]  </TASK>
>
> To fix this issue igb_io_resume() checks if the interface is running and =
the device is not down this means igb_io_error_detected() did not bring the=
 device down and there is no need to bring it up.
>
> Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
> Reviewed-by: Yuanyuan Zhong<yzhong@purestorage.com>
> Fixes: 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
