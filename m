Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEjFN+x0A2rf5wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 20:43:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A71E528083
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 20:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7F8340FDD;
	Tue, 12 May 2026 18:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WP92s-xNIzjQ; Tue, 12 May 2026 18:43:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AAE040FDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778611433;
	bh=CWtS2+izbg9J1mMbfZ/trqnPlVMe4J1EKE3WaEZh8K8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CpgL/amkOqu/coZE+CFnsdkSSNf+ynzRaEbx35a/+/ovhVSKpikclc+BpV97I0KJf
	 pWbR3XFmaulnFfa2lEhB5u58pSNcNWhQlrarzBqkgFkiEs35dHmBHy7CUV8tBSvfOs
	 a72G0fej7z5PZ5B9Hsaos/+m1aavw0nOh0ZptJD4DTRohUsSUuxuuL5IRphCemBxm6
	 ekNOAow1/wbcQwbgGKkCeENIJvHmwPsjUhr4UYnpSTRg6fHk7uN73F/TRnzBl8+C22
	 fZKe/n6bhT/6+7y5efEsFgK0QWxqdUzY9b3ulsQUsx05Osf3+oefRMhS6lHuYakU+M
	 ZPGx193bPY3lA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AAE040FDB;
	Tue, 12 May 2026 18:43:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D92F615F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 18:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE67881EA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 18:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IT8NwW7HEJJS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 18:43:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8243B81E77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8243B81E77
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8243B81E77
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 18:43:49 +0000 (UTC)
X-CSE-ConnectionGUID: FKKNc7kuT8S02rRaZWFuBQ==
X-CSE-MsgGUID: UKXGb35bQX2CU0sgQbYVqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90230332"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="90230332"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 11:43:49 -0700
X-CSE-ConnectionGUID: /XWmWMV5RAO/T3O8qHT6yw==
X-CSE-MsgGUID: +WL/NVIwT5iREizx/wN/Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="261592800"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 11:43:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 11:43:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 11:43:48 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 11:43:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PpJPgAGY2B2YPzRCUSrVmBHg4sE8QYkw/53cx1A5hCEt4de5sxUx9+uMP3SzaXuDNeklNmJC4aRrkQfk5lKwPG0ij9lZEnVGVMPF3oXGTv95SRU/r0UULU75myfqOh5LGPrB0IQhLNf0SGb2ohQjcie2+6Tn4zYadOqYPCHpv0HFmHtLFFgrSb7OsNoW2fOyrCh8fwIgeQo45DAbZTMo3bnYG7P/Vok+S6Sp6/isMWWXQqLr6S/CFrfkVmN1EuXflvM4Riw4O8nOXgl8e8NPZkcVuLH/JtGn8IgYze7FGtkz+mPNk1S2YVv+5PXxyEDG0D4k/vv7zlof1Dbity2aqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CWtS2+izbg9J1mMbfZ/trqnPlVMe4J1EKE3WaEZh8K8=;
 b=Pf1q7fr86uh2r37HhNJmKdCK1VHGaABE6NCcvY9fenqtSfBHGknlO04QAOQcIyG8MYHlvddU8xc9xNzlfC79uPhg5XPWiGCRmddTWaOaFw/rOHT0YGHeeadw8BsEnkniMyGe0rBdP+eZ06WmtcVDK+C2WmKnLgq3+dLP+nORUFRCdiHWFGSy8VGlLB5au9Dm7tN7YXmKEyzAUIGAiMq2r296HrGS9ueeBH1Bxe9yZz8sGEkWYTOjrwVaJpko531d7DR9MFIkyS0ezi9kYE39fXp0eCevCwoUYwdTsI5kZnd4N1j8jefXH3bQMWZqv3xGyIaRO+8m0e3pZQrf8BvuWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by DS4PPF0442004E1.namprd11.prod.outlook.com (2603:10b6:f:fc02::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Tue, 12 May
 2026 18:43:45 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9891.021; Tue, 12 May 2026
 18:43:45 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Tantilov, Emil S" <emil.s.tantilov@intel.com>, "willemb@google.com"
 <willemb@google.com>, "decot@google.com" <decot@google.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "kuba@kernel.org" <kuba@kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] idpf: fix xdp crash in soft
 reset error path
Thread-Index: AQHc1pXzlhMTlWiflUmdNw+Nh5/vbLYK0TvA
Date: Tue, 12 May 2026 18:43:45 +0000
Message-ID: <IA3PR11MB93011F0439D72C81AFE2F9518A392@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <20260427224426.3933839-1-joshua.a.hay@intel.com>
In-Reply-To: <20260427224426.3933839-1-joshua.a.hay@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|DS4PPF0442004E1:EE_
x-ms-office365-filtering-correlation-id: ae6f3ffd-42ae-48a1-9920-08deb05665cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|38070700021|56012099003|3023799003|11063799003;
x-microsoft-antispam-message-info: D7XDKYfiiOX1/rAmV61QAH76jWW24FDw9qVF3iyk0eJmVHORxBTKiKQGxexJjGJzUq8WT8eJ5FHoO2WdFuzamGtGxusuzZuMUGNT+181V9uKyKy87yW+fJNd57VcVghPkJw7M9E4IrhiksZz+Wo0gAVlnoiLv1oNjG4szJOA2BH0sr2slY67dsOxcH6mlV5JrWG0Up6OQBluOaOZEUsYWnNIgIbCkhEMWh4KfFTHR/d3jSLBssnPs5iUyGcCFwc88WANRciri6Zf5yN8XVJo/vJ8GYsstt+YUpzQrJOzGV6yu6mO/DxpXu+ckLqUtMYzOp2+rEmdNu+ar5VMkeOSUjZwAHm6gphFsaZFysuZOyHjsUx1uF1lC1mJnmJzrUcgjl4sMAJ9IBIDZLdzCEQ3b/biU3IfYvbXbB56tZU5bJaKjC/CMuzEDwyu6tTnRoPRJRgVes5A2vTWaGD0unuQcrxkvAX096uJK3saqClA4cKEheY5eumhb9Xkg3DpXS/Ygwgd0zBPonVo5H3QAd9Hk29hVxoMxGw/oNs+UgKAljAgiOcQp6CneTCEfzo9FHANr7a1x8UPt/233gvCiIww41vM7oPDcN1gbVkZOLREW6lWSlWC6OfuXu2x7xd81ymdgp1ZuDpJADa3+CkJRqx3xGUsLoiwOdj8Uj4P9b9JnRbj+75CEaXaxXH9M8jYGXTFHTreuFhEc65/zc5Ep0y1ruwJHcg6WrnFvAUppmL3ZfmAko6B5A2tonGAHCGiCLB3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(38070700021)(56012099003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?eRU4jDRN1xYIc3yQFkPosTIAwOSP20tdh4ocOsg9yUdSXDsDREzrPgY7lx?=
 =?iso-8859-1?Q?sABYtwdNc55Z3IfeeZAa0QQPDkEYDR5v+EzjSRMIbj9Ztis6aR30Btm2at?=
 =?iso-8859-1?Q?VNAFMGu4MiOUykDlxsW+cUwYJK7fzdkTLWAS9SefuBg5NSGhj/S9QCcfZP?=
 =?iso-8859-1?Q?DsbNZuemxS2JLgaSom79x7gz5pBjLO2sGVRXndhWHQ8GUk1ELvfP6Wz9in?=
 =?iso-8859-1?Q?+q7eKbnz/bs9vmuvfDN1EKtIa50HGcCOrxhGIcvGKwerDReuB2wM5XOe2j?=
 =?iso-8859-1?Q?M8MP8qqIC+vkyhXQtcaebcR+iwJrRh8lp3adMjWZ/pkZQXMY+u5BrdsgEG?=
 =?iso-8859-1?Q?0/9riGtGNhWwH1eh/2O2m+ZO5zIMBPB1KiRXptzh5pLWy3HQHMqygxSuXw?=
 =?iso-8859-1?Q?ikfubabCvsiDM1E0e9eMq7xcJ8umaxVLVDxyJ7HZkQVJ3LKclsAFtevVY0?=
 =?iso-8859-1?Q?jyPaYbdDEGYJcbdcOQiQv6CeN31syAiJkkmZLdh5k35dzYDjrCiq0MVidw?=
 =?iso-8859-1?Q?sj+B/FVwJqW9w5RA/+q2+WzeMOTFzg7W2yzSLGk7Ww26PCgk+cY8NaW7ri?=
 =?iso-8859-1?Q?cFpWPh4jC0R8Oxx9rQjqLBZE9TNtJt+IfF2IXKarQCrfrfwqEh64C/yIO+?=
 =?iso-8859-1?Q?3g4k9ejZBwE1hEg+EsaYN5jER7Ax8x4+RVVhf10994cBlV/nzls2EahA5U?=
 =?iso-8859-1?Q?wf3NsQ1eL5WXKFzxT875nSOQNeSKQdSL6yPTSPnv+CPurYZaeITKX3fCGH?=
 =?iso-8859-1?Q?W4nEbS2exsiloAVOlFg45irf0b5C0C8W1/v0CfCgXsH8/scSVfyBxbR0p0?=
 =?iso-8859-1?Q?UmdEooALt5/xQApiMCC84AVue6MzYU/5M2uT4d2z1AqwUYW7Rq2Y2tWpYM?=
 =?iso-8859-1?Q?z3Q9B8nqgoUJqoWP/ujoq+38JC7LPkwb7tCzSStSVOrvEl/65bJzTUtEIl?=
 =?iso-8859-1?Q?HN8u7l5ZNEjcct8W6/lUroa7ChRn1kaslcU+PwMrLEgnYXob6LbjnuOe6r?=
 =?iso-8859-1?Q?j0iCwHAH6Yj3u/3LlwzA7JDk/akssPM28lkojoH2rvRv9iImTVOefe2B++?=
 =?iso-8859-1?Q?sh8qGYsc/X8eVz4F2BmJ4FkieA+aFGOM0Q+w3RWBV2e7mBrdj+RV9PVTW+?=
 =?iso-8859-1?Q?QPfdxq+ptISseWCvScFXw8y1yH175m53sFjQhXP/oCtoVahdmNyUuFJXgo?=
 =?iso-8859-1?Q?GmZ3gXPSqTbYcOtiEqdL/zD6duVOOtnK/sOK9sTNm3nbGvHwouLBpQcfEN?=
 =?iso-8859-1?Q?Gzr42db6UsJSwbDFLAs8ffDbL+nhld96fqc8A1JSlX3EDch4GYTTJ+X/GB?=
 =?iso-8859-1?Q?p+Yh406/PECXHjBj2z0LXvhJgZ4jRO+jupNht2tTOfWpGZzDp+k0ALOOiD?=
 =?iso-8859-1?Q?4wpOzXy41kima4F9/DWlwY4UmuDCrBqEAn5/1sFJ7A7eBbiSQAkqxNG7ys?=
 =?iso-8859-1?Q?LmxpFXjpgPnsYtH76Ulw0TnGyseXKONsr7pB1P3mxNZj1+4yUbbUGsPCC4?=
 =?iso-8859-1?Q?Vjq2VrqfC/kOU9ZRCpoVS7A88egmkif/6VidWDP1tEXrG8TS13/Kp972QK?=
 =?iso-8859-1?Q?dorMIyJJWeaQ53bvyNXv8f/oSr0d6MEdNi47hXFJZlS96v9LuZhfVdprp2?=
 =?iso-8859-1?Q?B88em5yucSazmGM1X0bta1Fc/oDXwhoAMn8MHePPjHeSeqSSE05QO+A4Gs?=
 =?iso-8859-1?Q?D7BnvzXkl1RfA2Wrxs2R3BfTOTNsVJkkJkPFD2VRtnyCD5is4FN33QklTd?=
 =?iso-8859-1?Q?dQBITc59dOPx/3ZxJAIh0h5nTp6XjNSsbFg3oa0ZSxDgRTyTpOU1m0igGC?=
 =?iso-8859-1?Q?RfQ2AQ532w=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FsnbrJKd2fmMDAF+NRLSdbcDZppMp1iKWBMsJ3Sq+f2Zd4xiWUQnd93/w2tiqqNLjRrjalm90td9ecIu12hJeXzvlQQGUGVKffhVGnk+cCVEBrcJNtDUD233xriXse4+lCtHzpw687fweKXfmo6PbI2jTvmhCUs2NIDPXUgwOE+DrfTcwokSn+HyxwKpJRhaMtWENhFa4oOz5tHK8wrCj+gMRtUR6spkBoF1NASkGJrn+GdidPwv6kub5Bjzh+IXJXB/dzl9WMG1LTjnN6cIhgkaFlsITbrFuqAXBX8Qpbfls6+PiLBWnWq7PtX5XJ8MaCTMM5Mi+DNPLV9NM2saJA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae6f3ffd-42ae-48a1-9920-08deb05665cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2026 18:43:45.4852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fBLAlPZqxtzp0muKcbrhRgNuY1RCQy662UDmBrKekhjZGSQnln/d3iLqecmG+5tfIjsrzuWFzB9xmVuU7XDBGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF0442004E1
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778611430; x=1810147430;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mTIFEMndN8U135O1JNqQokcGbw8W3RIXzhiNXA7Oz3Q=;
 b=JCrS7al5yXbjEEhlqQXHtVh0nnHrnN6e0Vgwh9wTI0j2kvM/mC+CBeiT
 yxGGDROMp25xkb9IEr7q9pK1mm2UYmCfqXOWYp4TKTbvt0oycEVlOklD+
 rB2KBzXMzCyhkx6ruqJux3WNXk89YBWd024lYhyans1S+5KeXdwc/nW2E
 fjzuCdAVHZrZWH0khnan9o728qrng9vBc22OpMloEWrV01luX3lb2BC2X
 Qx0lCEQmTu7XMX+GYoF9Eg0KHOYafD9cvG7aJnZOpZesevsByxAIjIw2G
 y2lA+Zad9EPD25+wIsu9wQ/n8b9DQPKcV8VbBS36lGcUraswjBYgH8pJX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JCrS7al5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] idpf: fix xdp crash in soft
 reset error path
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 9A71E528083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joshua.a.hay@intel.com,m:emil.s.tantilov@intel.com,m:willemb@google.com,m:decot@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:stable@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Tuesday, April 28, 2026 12:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tantilov, Emil S <emil.s.tantilov@intel.com>; willemb@google.com;
> decot@google.com; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; netdev@vger.kernel.org; kuba@kernel.org;
> stable@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>; Loktionov=
,
> Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3] idpf: fix xdp crash in soft res=
et error
> path
> Importance: High
>=20
> From: Emil Tantilov <emil.s.tantilov@intel.com>
>=20
> NULL pointer dereference is reported in cases where idpf_vport_open() fai=
ls
> during soft reset:
>=20
> ./xdpsock -i <inf> -q -r -N
>=20
> [ 3179.186687] idpf 0000:83:00.0: Failed to initialize queue ids for vpor=
t 0: -
> 12 [ 3179.276739] BUG: kernel NULL pointer dereference, address:
> 0000000000000010 [ 3179.277636] #PF: supervisor read access in kernel
> mode [ 3179.278470] #PF: error_code(0x0000) - not-present page [
> 3179.279285] PGD 0 [ 3179.280083] Oops: Oops: 0000 [#1] SMP NOPTI ...
> [ 3179.283997] Workqueue: events xp_release_deferred [ 3179.284770] RIP:
> 0010:idpf_find_rxq_vec+0x17/0x30 [idpf] ...
> [ 3179.291937] Call Trace:
> [ 3179.292392]  <TASK>
> [ 3179.292843]  idpf_qp_switch+0x25/0x820 [idpf] [ 3179.293325]
> idpf_xsk_pool_setup+0x7c/0x520 [idpf] [ 3179.293803]
> idpf_xdp+0x59/0x240 [idpf] [ 3179.294275]  xp_disable_drv_zc+0x62/0xb0 [
> 3179.294743]  xp_clear_dev+0x40/0xb0 [ 3179.295198]
> xp_release_deferred+0x1f/0xa0 [ 3179.295648]
> process_one_work+0x226/0x730 [ 3179.296106]
> worker_thread+0x19e/0x340 [ 3179.296557]  ?
> __pfx_worker_thread+0x10/0x10 [ 3179.297009]  kthread+0xf4/0x130 [
> 3179.297459]  ? __pfx_kthread+0x10/0x10 [ 3179.297910]
> ret_from_fork+0x32c/0x410 [ 3179.298361]  ? __pfx_kthread+0x10/0x10 [
> 3179.298702]  ret_from_fork_asm+0x1a/0x30
>=20
> Fix the error handling of the soft reset in idpf_xdp_setup_prog() by rest=
oring
> the vport->xdp_prog to the old value. This avoids referencing the orphane=
d
> prog that was copied to vport->xdp_prog in the soft reset and prevents
> subsequent false positive by idpf_xdp_enabled(). Roll back the number of
> queues as well. Also only call put on the program if the soft reset was
> successful. Returning an error will trigger the core XDP stack to handle =
the put
> otherwise.
>=20
> Update the restart check in idpf_xsk_pool_setup() to use IDPF_VPORT_UP bi=
t
> instead of netif_running(). The idpf_vport_stop/start() calls will not up=
date
> the __LINK_STATE_START bit, making this test a false positive should the =
soft
> reset fail.
>=20
> Fixes: 3d57b2c00f09 ("idpf: add XSk pool initialization")
> Cc: stable@vger.kernel.org
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v3:
> - call idpf_vport_adjust_qs in case of XDP soft reset failure to restore
>   previous queue configuration, including data queue config
> - change idpf_vport_adjust_qs and idpf_vport_calc_total_qs return types
>   to void since they cannot fail
> - only call bpf_prog_put if soft reset succeeds
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |  4 +---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 12 ++++--------
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  6 +++---
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 19 ++++---------------
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  4 ++--
>  drivers/net/ethernet/intel/idpf/xdp.c         |  8 +++++---
>  drivers/net/ethernet/intel/idpf/xsk.c         |  4 +++-
>  7 files changed, 22 insertions(+), 35 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index cf966fe6c759..56198b417c97 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -2042,9 +2042,7 @@ int idpf_initiate_soft_reset(struct idpf_vport
> *vport,
>  	/* Adjust resource parameters prior to reallocating resources */
>  	switch (reset_cause) {
>  	case IDPF_SR_Q_CHANGE:
> -		err =3D idpf_vport_adjust_qs(new_vport, new_rsrc);
> -		if (err)
> -			goto free_vport;
> +		idpf_vport_adjust_qs(new_vport, new_rsrc);
>  		break;
>  	case IDPF_SR_Q_DESC_CHANGE:
>  		/* Update queue parameters before allocating resources */
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 4fc0bb14c5b1..4e0d31023123 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -1568,12 +1568,10 @@ void idpf_vport_calc_num_q_desc(struct
> idpf_vport *vport,
>   * @vport_idx: vport idx to retrieve vport pointer
>   * @vport_msg: message to fill with data
>   * @max_q: vport max queue info
> - *
> - * Return: 0 on success, error value on failure.
>   */
> -int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx=
,
> -			     struct virtchnl2_create_vport *vport_msg,
> -			     struct idpf_vport_max_q *max_q)
> +void idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_id=
x,
> +			      struct virtchnl2_create_vport *vport_msg,
> +			      struct idpf_vport_max_q *max_q)
>  {
>  	int dflt_splitq_txq_grps =3D 0, dflt_singleq_txqs =3D 0;
>  	int dflt_splitq_rxq_grps =3D 0, dflt_singleq_rxqs =3D 0; @@ -1624,7
> +1622,7 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16
> vport_idx,
>  	}
>=20
>  	if (!vport_config)
> -		return 0;
> +		return;
>=20
>  	user =3D &vport_config->user_config;
>  	user->num_req_rx_qs =3D le16_to_cpu(vport_msg->num_rx_q); @@ -
> 1640,8 +1638,6 @@ int idpf_vport_calc_total_qs(struct idpf_adapter
> *adapter, u16 vport_idx,
>  	vport_msg->num_tx_q =3D cpu_to_le16(user->num_req_tx_qs +
> num_xdpsq);
>  	if (idpf_is_queue_model_split(le16_to_cpu(vport_msg->txq_model)))
>  		vport_msg->num_tx_complq =3D vport_msg->num_tx_q;
> -
> -	return 0;
>  }
>=20
>  /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index b6836e38f449..22c647d6dd5c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -1084,9 +1084,9 @@ void idpf_vport_init_num_qs(struct idpf_vport
> *vport,
>  			    struct idpf_q_vec_rsrc *rsrc);
>  void idpf_vport_calc_num_q_desc(struct idpf_vport *vport,
>  				struct idpf_q_vec_rsrc *rsrc);
> -int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_ind=
ex,
> -			     struct virtchnl2_create_vport *vport_msg,
> -			     struct idpf_vport_max_q *max_q);
> +void idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16
> vport_index,
> +			      struct virtchnl2_create_vport *vport_msg,
> +			      struct idpf_vport_max_q *max_q);
>  void idpf_vport_calc_num_q_groups(struct idpf_q_vec_rsrc *rsrc);  int
> idpf_vport_queues_alloc(struct idpf_vport *vport,
>  			    struct idpf_q_vec_rsrc *rsrc);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index be66f9b2e101..91af4f298475 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -1578,12 +1578,7 @@ int idpf_send_create_vport_msg(struct
> idpf_adapter *adapter,
>  	else
>  		vport_msg->rxq_model =3D
> cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
>=20
> -	err =3D idpf_vport_calc_total_qs(adapter, idx, vport_msg, max_q);
> -	if (err) {
> -		dev_err(&adapter->pdev->dev, "Enough queues are not
> available");
> -
> -		return err;
> -	}
> +	idpf_vport_calc_total_qs(adapter, idx, vport_msg, max_q);
>=20
>  	if (!adapter->vport_params_recvd[idx]) {
>  		adapter->vport_params_recvd[idx] =3D
> kzalloc(IDPF_CTLQ_MAX_BUF_LEN, @@ -4065,24 +4060,18 @@ int
> idpf_vport_queue_ids_init(struct idpf_vport *vport,
>   * @vport: virtual port data struct
>   * @rsrc: pointer to queue and vector resources
>   *
> - * Renegotiate queues.  Returns 0 on success, negative on failure.
> + * Renegotiate queues.
>   */
> -int idpf_vport_adjust_qs(struct idpf_vport *vport, struct idpf_q_vec_rsr=
c
> *rsrc)
> +void idpf_vport_adjust_qs(struct idpf_vport *vport, struct
> +idpf_q_vec_rsrc *rsrc)
>  {
>  	struct virtchnl2_create_vport vport_msg;
> -	int err;
>=20
>  	vport_msg.txq_model =3D cpu_to_le16(rsrc->txq_model);
>  	vport_msg.rxq_model =3D cpu_to_le16(rsrc->rxq_model);
> -	err =3D idpf_vport_calc_total_qs(vport->adapter, vport->idx,
> &vport_msg,
> -				       NULL);
> -	if (err)
> -		return err;
> +	idpf_vport_calc_total_qs(vport->adapter, vport->idx, &vport_msg,
> +NULL);
>=20
>  	idpf_vport_init_num_qs(vport, &vport_msg, rsrc);
>  	idpf_vport_calc_num_q_groups(rsrc);
> -
> -	return 0;
>  }
>=20
>  /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> index 6876e3ed9d1b..76d238fc660c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> @@ -169,8 +169,8 @@ int idpf_send_destroy_vport_msg(struct
> idpf_adapter *adapter, u32 vport_id);  int
> idpf_send_enable_vport_msg(struct idpf_adapter *adapter, u32 vport_id);
> int idpf_send_disable_vport_msg(struct idpf_adapter *adapter, u32
> vport_id);
>=20
> -int idpf_vport_adjust_qs(struct idpf_vport *vport,
> -			 struct idpf_q_vec_rsrc *rsrc);
> +void idpf_vport_adjust_qs(struct idpf_vport *vport,
> +			  struct idpf_q_vec_rsrc *rsrc);
>  int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
>  			    struct idpf_vport_max_q *max_q);  void
> idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter, diff --git
> a/drivers/net/ethernet/intel/idpf/xdp.c
> b/drivers/net/ethernet/intel/idpf/xdp.c
> index dcd867517a5f..f6e6b72169fd 100644
> --- a/drivers/net/ethernet/intel/idpf/xdp.c
> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
> @@ -488,11 +488,13 @@ static int idpf_xdp_setup_prog(struct idpf_vport
> *vport,
>  				   "Could not reopen the vport after XDP
> setup");
>=20
>  		cfg->user_config.xdp_prog =3D old;
> -		old =3D prog;
> -	}
> +		vport->xdp_prog =3D old;
>=20
> -	if (old)
> +		/* Restore previous queue config */
> +		idpf_vport_adjust_qs(vport, &vport->dflt_qv_rsrc);
> +	} else if (old) {
>  		bpf_prog_put(old);
> +	}
>=20
>  	libeth_xdp_set_redirect(vport->netdev, vport->xdp_prog);
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/xsk.c
> b/drivers/net/ethernet/intel/idpf/xsk.c
> index d95d3efdfd36..3d8c430efd2b 100644
> --- a/drivers/net/ethernet/intel/idpf/xsk.c
> +++ b/drivers/net/ethernet/intel/idpf/xsk.c
> @@ -553,6 +553,7 @@ int idpf_xskrq_poll(struct idpf_rx_queue *rxq, u32
> budget)
>=20
>  int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *bpf=
)  {
> +	const struct idpf_netdev_priv *np =3D netdev_priv(vport->netdev);
>  	struct xsk_buff_pool *pool =3D bpf->xsk.pool;
>  	u32 qid =3D bpf->xsk.queue_id;
>  	bool restart;
> @@ -568,7 +569,8 @@ int idpf_xsk_pool_setup(struct idpf_vport *vport,
> struct netdev_bpf *bpf)
>  		return -EINVAL;
>  	}
>=20
> -	restart =3D idpf_xdp_enabled(vport) && netif_running(vport->netdev);
> +	restart =3D idpf_xdp_enabled(vport) &&
> +		  test_bit(IDPF_VPORT_UP, np->state);
>  	if (!restart)
>  		goto pool;
>=20
> --
> 2.39.2


Tested-by: Patryk Holda <patryk.holda@intel.com>=A0


