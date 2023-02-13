Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F56B694DA8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 18:05:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED711410DF;
	Mon, 13 Feb 2023 17:05:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED711410DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676307935;
	bh=7tmDXlErObNS8QH1ThRDBwzQbH2SW1ce4ENc9ONJegU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W99pz7IIsNzdCI5tono3D7Dl9jB/hv48grGQGrNpyVZOeU0dy0DblAA+QX4qBIxDB
	 jdtwc6lGs+V193qfgMJdgFrLDsoRXv95e09+MCnHX1D2dBUqh2JQ6elVcjTpELe5pK
	 SHkaHUvnDitlupbU0eZtdnb6Mjc0fr7pxGqG7LY1uQr0QKDUXfGiltpn7YRB4gNydp
	 5CF+4QfXxM4+YAezTlTJoDR1gzOeqbmbmAmoqoOKRqJ5mVAASI9rF74BnogOYui8WX
	 PEg2jk2iAugiBxeHglzgeHS/if5MY0R5uFvo/yAeTgS62mgDo38zOSWmMB62dKf1s4
	 svUoVBTzMn8Sg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4v8mqPA4FBLI; Mon, 13 Feb 2023 17:05:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98961410B5;
	Mon, 13 Feb 2023 17:05:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98961410B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DA2F1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 17:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53CB16103F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 17:05:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53CB16103F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YIUpF1_ofSE7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Feb 2023 17:05:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F01560FC9
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F01560FC9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 17:05:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="314580353"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="314580353"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 09:05:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="737576474"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="737576474"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 13 Feb 2023 09:05:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 13 Feb 2023 09:05:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 13 Feb 2023 09:05:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 13 Feb 2023 09:05:23 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 13 Feb 2023 09:05:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LQywLWcwi11HurkzP9RKjbDfO4EEu3MNF374rGt9c8mv12E0sHqlbAbb4apH5vF0jJF+M0R/fzWbYVhVjAUu3wy/0nMo6ZR4yx57oS8BteSl3pPGlTvxw9az7QsQRfTayVT3V7cmq7KSFvG3ivg/e4SKN3RhkAO8N6bu8J38E3Dlb6dzD89Jim3XF9YhT+8dlqPC5DgTQo+RxfYpZf8FVWFm778YOFKDn2VGj7WAGV0XUNraF0b4Mj+YnW7iT7dGtkyMlaR1y35/yHDQLFXQLp/1w4En2VlbmgOFjWAIQiOAv1MUhlb6IGppJH5z7y8bTT1KjfojJOa0eYGh3OUSWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dzSIashim5biM3D6z5p1RsQ5nPb4WeJSGyTWmAqvBVk=;
 b=AWonyBEa1Iftl+n5PMmxirmJN4qV/hpUxr62QsQFJhBh8eQ+w05I5567gD+T5UfCYwOfQ5pAZ0PhunowjV7SFzlKMthbkAjHFXhoPdWBdL4/mN4Ftt7bLAbkIqM1Sne0wYnJr0oh1OjizUBMXhZ2U8dLlJ8GhLqjcjbKmCllpnodskzCeyHsS6QXMq0+Vmkjj+DtjzPRs+f9eFbja2dd9htP0Huux0+jhDP1g4wPae+nEfycQL9m9DTDDNUmfCcu+sdk5k/7ZDKC0FeCrfaLnPjSoOv1Au8iNNs7XgH4oRJ2/xMs2M2HISeW9eq93kzj6/V5dfxmhozOWjh5QQwP4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DS7PR11MB7689.namprd11.prod.outlook.com (2603:10b6:8:e6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Mon, 13 Feb
 2023 17:05:21 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6086.024; Mon, 13 Feb 2023
 17:05:21 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Add GPIO pin support for
 E823 products
Thread-Index: AQHYyCGAj2XR9E0uGU2fSm3mC9bsvK7OClRA
Date: Mon, 13 Feb 2023 17:05:20 +0000
Message-ID: <BYAPR11MB33671F9CC6CD665CACF466FAFCDD9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220914100429.261290-1-karol.kolacinski@intel.com>
In-Reply-To: <20220914100429.261290-1-karol.kolacinski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DS7PR11MB7689:EE_
x-ms-office365-filtering-correlation-id: 27efb35b-aa2f-4d71-b50f-08db0de47d54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +8K06VVcNkscJj/01WWpXL9HOznu+rLKyx8IZToHWfl0d62pqB1dZHnbvdVUF9HAGnQZNFGp0N1IdNOYDvsYpgZPizeUPOp77UTJONRPRPIFMeAkEM4sWe8uRSTFyPBmffV/wTYdYaaVlsKa8Ir4B0NfhM/l+LAdDSvM7h1gR9dN99KyVG2EsG31WH9S9PsHgUDmzCzAj5ISCLlFQE4ORCBIRW5MAdBeVsH1SssQ0kiw8nTnAt3N0m9mkWThFfBz05/cbhLzXuZl4bIVaHddjVpSWz1xwbEKtPH6vpJCNfUFO5gcygReRpckpL8SLHALkh5sfwYj6/7taOuaFiFYvvDAHUjv+cJq83ZqLfk0DJwczrSsu9/gA0CARaDphdAnvd30pQLDxcTn1pquBHAxtapvbmIcYQMaec3DHDC1WN1dVEGYG6AMqHDagaXpXqU6hwMEvxR58jH1/7ii7F4iZkS9EpB6SObcDQJzLff3P3wPkkJG2TNQsp/7Mq1s/NpyCS2Hs8Pbcdnfz5JccVB5LMiDJSvHM2DINXDa0TEtnUtgpFKeEZDnz5vHK0J5ETKapd4ofSMN+CE7lbCckCeB/attC5H60J9eHTcLtPmzZF8elLD9I1ea6lk+byCk3gLSQTSK8sXp+ccIaI3D2brSXcLt38kpNZSAkDJnA4HcT7AfOmm1v0IOw1MPeMViqANk0y35+wEMcMuf7pPcM3hHIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(136003)(396003)(376002)(366004)(451199018)(83380400001)(122000001)(38100700002)(82960400001)(52536014)(5660300002)(110136005)(86362001)(33656002)(55016003)(38070700005)(4744005)(7696005)(71200400001)(2906002)(186003)(478600001)(107886003)(66946007)(76116006)(66476007)(66556008)(64756008)(66446008)(4326008)(316002)(8676002)(6506007)(26005)(9686003)(41300700001)(8936002)(55236004)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GhhAjjdCOBYvZM48hoEEeXxUqaBpNxWomnyPw6TSqYSIOtxNZeytaYk3vG2v?=
 =?us-ascii?Q?yiouQJOiap8nUxvRoILHjZjohiLmEVJEbzfeFfcoYiSseq3Qi3X3d8YMP/Gv?=
 =?us-ascii?Q?UKW5Zrum8hTrWL+FC4x4B3JFpddjjge8eJDSYWy4tirwpMsYI1cK97f2NHe2?=
 =?us-ascii?Q?UDTizx8NGPbO7ry54QUJGaoF7uBzq4tVpAlkhDn2Ch0ZIe2b9nvFIL/VPacl?=
 =?us-ascii?Q?h91v32icINtwS515ypypXVfmSlm2frz7RGzuuhLICT+0Im2Yjpb5wHi4VrFF?=
 =?us-ascii?Q?nYxaKRKGqW85lvZd7FvfhjrfMWRmQrrlXn86k8eQq4hluO+bVrPdI6rU8BW3?=
 =?us-ascii?Q?WXLe+ez3+scKhlWVFE4V4A5hc2UHzXoFza7bfH/JCXkh79y3p8N27erACPHJ?=
 =?us-ascii?Q?pbrNS1g6YlmyeKkznFhGC6r20S6jTB4Xs8PFzdVMpYxcn0PdWNLCQHthxqJ4?=
 =?us-ascii?Q?DIzHBgVmJp5SYKo5fmS3KtBS29X48GM2+zyLzqZNoiunYBG0q6PrCd6Xy8VL?=
 =?us-ascii?Q?r7Fb74T1RMOVljqr5oPVdSNm+qASNSFN++pQh8F5xyy1BiqdafL09i3lJgIC?=
 =?us-ascii?Q?+Oh/Pmb0xpf+kyG/VEO6jYPfDBzMRpBUoucCc7Jo4kSUAwz3BRl/sp7+eGsD?=
 =?us-ascii?Q?Q4P4EKrYun1tG/gfHZvg/oNmMXTETmLz8FeBQTlIL+3F1sVwJ+g/wlkn+JWl?=
 =?us-ascii?Q?9qn9crqvN8QsvjaIUGncRF4ZDg6V8DjA+2oQT+8ZryB8AmEQ5wHvtrYcW0eL?=
 =?us-ascii?Q?4GWMfM6YhfLqy6fpgq7RdBtZIGtSv38Po6xypIPVpczNL0wwa5vWWCkAbY7U?=
 =?us-ascii?Q?38cqD8v5Bd/kv4gwto2hVJJRoYhaK8mhtsEl1HF0av0tCd5+0KWKsOa11Jk3?=
 =?us-ascii?Q?HhKgXb+dr5TCx/4OoCPejdOnsRkBWH0wy226EGoefPM1NwbrjxosZwncIry6?=
 =?us-ascii?Q?oqtG37kjXWMsVdGmlsDU58Z0ksOkIEUTt5c1wCMuCNJRd1v88jDgIpiZBoYt?=
 =?us-ascii?Q?Obq0W7pw0Zhwp6EIondUQIDUuR+KoqKTaWzg6LBjVKMyhP3+Zl7rnlTQBS8N?=
 =?us-ascii?Q?nEVF0Nwq7CYMSpkO2yiy2sWPMD3wEbT8JTpzMdUsnQfSpugBB82VzXDT0CVO?=
 =?us-ascii?Q?3KNAgEImNCRZ7HlEZ5222Ru8eyp3eDu7xrvcOnTgNgEPdqGx4BACwU/u46Ao?=
 =?us-ascii?Q?kbZxFiqizO2xxUNJenbzIWYpBdxG/Ns9wjV2K41ItziRXaS8U04hEcLhIKxG?=
 =?us-ascii?Q?siNnc40BAvIf/gTZgKCwmCG2WL5NCEqpnbeZESEi0yRbRFnIhS+iAMy0Kh8q?=
 =?us-ascii?Q?mfla1Jrjh6NVXlIMITH+Ms40CgJ63rA4ZLIOuV2Z2jpXvvTn9aC1uSct4dpf?=
 =?us-ascii?Q?r31FAw4bcWPAnMXg/q1NlJbYuWfXa5vGjOlJ4SMkymagc+h3nWiSkaovCq9/?=
 =?us-ascii?Q?2ukkTqwQClrVlrqpjxdBO1EwWij7Tby7EugC4vF/ITw2Epvdm5AGpdaAd8wc?=
 =?us-ascii?Q?qQCybyQYfGSjqwEhqk/yH+Nkc3ciOJkvbPvSJoPL9QvH1ejg3+l4Mh2Fx633?=
 =?us-ascii?Q?1ms4jGarBAuQaL/eRr4REYJMJRDkXqu8FWQbI+oD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27efb35b-aa2f-4d71-b50f-08db0de47d54
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2023 17:05:20.9308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jWmEgEl7AJBtqNMvN0iMcInhMmpJXSJv0Y33ApcliCF8q0ItQ+b1ipWyZUmTB7HPUWkcMrjbW2T0NEvCblDQJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7689
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676307927; x=1707843927;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sLlYs7fT8oT3O000tTkDaXQ/KNAeyvcqurYZ/B7Su7I=;
 b=FoPh7IZhhwDDKqA25ebiFKLdyfNqJSyHnltXMNMRA2djh2j0aplyWU5M
 XavFxv/WRFnuPqZevjeBfvP5jFRtJ7Jv+LuxL/OUnNbBPRdcgBHYJ4Pj4
 E7KMDSfYbfS2Wz5XLS8UKMbnymXpwqmE0ZSD7Wictfv0EKyYHQD+psHwa
 tjZ6WNHAWuU3fLRqoqD81+iMgy5tsebqE/mLWsYg8fn1B/2rOUkV4HzXj
 QFSxuuwySx44G9tYu+zE1lCR+CiobT6yBnAT70rb/nkQhTUTH4CMIfe5y
 q5/WSroLj9Frbc2aIAjTg+RxyeKBnY3OoTmTXOzBOEe/2yHyeoyeafCpi
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FoPh7IZh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add GPIO pin support
 for E823 products
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karol Kolacinski
> Sent: Wednesday, September 14, 2022 3:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Add GPIO pin support for
> E823 products
> 
> Add GPIO pin setup for E823, which is only 1PPS input and output.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 25 ++++++++
> drivers/net/ethernet/intel/ice/ice_common.h |  1 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 64 +++++++++++++++++++++
>  3 files changed, 90 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
