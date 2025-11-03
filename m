Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14873C2CB5E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 16:28:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1B3D60596;
	Mon,  3 Nov 2025 15:27:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HYf45r1g1YM5; Mon,  3 Nov 2025 15:27:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F582605A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762183678;
	bh=csqSg8qa1aT7trUNL+cfXs0pjm9GUBOCohqNyhePoss=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rQbxQw00j/CzR1p1OAEBEl18aa21rIHXSY/SBkC5Yz8x6A5tTcpdh0Pao7cOc3I5u
	 W6fHgC7oimjS9OuvKjOx71mreW9cavPch23+tBmyYoOKQPLgUcoyQqZ26G1hUcoRMj
	 RbPhTi3Gu63x82GpbtJBf2ieKbHT/OjD2I0uYlT8Kmb1Yv6zN8O67dUMDn4Ic/y4lh
	 HrD987kPmtHgjNjgvrsodnfQvwndiVqaXbduB0tBDqpuabBnFWeTNj6+cYIZig//9J
	 ekrclYSRXwkSxmgbdro7qmYqoXOmujkHpEU+IzHumw5zQEUZjxXJDuqNRQbNsUv+uJ
	 2dtlfeNRzifDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F582605A6;
	Mon,  3 Nov 2025 15:27:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 939DC1A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 859FC806C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:27:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nBa5j1yF-U60 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 15:27:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D7BD1806C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7BD1806C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7BD1806C3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:27:55 +0000 (UTC)
X-CSE-ConnectionGUID: WriFkLOoSkqWoc0ekpcfHQ==
X-CSE-MsgGUID: omTwroxEQg6PQCtsaOU94g==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="51831342"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="51831342"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:27:55 -0800
X-CSE-ConnectionGUID: RXvt4caBS52Emx3c/0wiSw==
X-CSE-MsgGUID: yviUIf97T7qFeATn7XoIQA==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:27:55 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:27:55 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 07:27:55 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.26) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:27:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JtDzpMvofoBtrdGxfz0g3NPap1SOAgmjkBlGdTZ0cUox4T+SuxAfbtEhEVF0IQMAB7AgVBCGnN18IPHet1aoDQH/yoOh8Lysc2GM7kxyFCwFEYO3k0sUmAbmUb6k4e8QRYDiASUndbp3fWzw4CNghPMK2Gnc8iRxAEg3gQ2fZeudxLWw6iFbjFoEBgNfXpVasZPpUJY2ZEu3OEAE+XWdgKNUgKGD4i1gQeBu1Sc8GHSuas6TMBoP0DJhWsyHAhDIGq7/LrWFr0KKxFoJBOLwZI9FQokRu4dxdrYhWfAY15uDQH/W59oDrKrWw0V0olK5/DdCBgra1oMmJcAbjJ710Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=csqSg8qa1aT7trUNL+cfXs0pjm9GUBOCohqNyhePoss=;
 b=W5VIt0dPLFjTbWaGR3/usLdmvbpcsn9qpTREWq6RqxG98sQagk1pTmcJJ14XVhelbmJ/um0xZ7LnDc2yMGBuRlNkRnyNUwXFmeDOm90kldmhNUf+3eDbaJu2J8y4k7FmwysP5ZV6n3I4EtdCth6dk/DSo+tzD0s/q/Zp3HPvfVzISnj3K5wt2FlA+EBZIX3tSmaRUcUHmByrRle+a0q8Q59JIclDxuk6RZ/BzCTIcIMFgyCRZJAR23wPrRjS+iaafh2ohFAfb1TqVGoPhgaESAwpX+3BQcpXdmtBYvaILYstrtW8MsO8UH1xpLxo8PnFy+JNKGT6FZtICBKUQi9CpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 15:27:52 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 15:27:52 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v9 04/10] idpf: move some
 iterator declarations inside for loops
Thread-Index: AQHcQuFa4jE6g6ai+0GsyBiUboZdPbThJfAA
Date: Mon, 3 Nov 2025 15:27:51 +0000
Message-ID: <SJ1PR11MB62974B5469EAE35C5C31D0239BC7A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-5-joshua.a.hay@intel.com>
In-Reply-To: <20251021233056.1320108-5-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY5PR11MB6211:EE_
x-ms-office365-filtering-correlation-id: ee195489-17b8-45a7-9336-08de1aed8dad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?njmO6k5dh1sBcLv3HQKUh5v2d6FGXL1ydTZUByWml2gx3U8sjdA2sTFfPiOX?=
 =?us-ascii?Q?6PkyAFgCSRJSKnrZNRZ69m2BGYg+r+01Xj+iosdN1Z08m+KlSKUcvjkzuDPK?=
 =?us-ascii?Q?yM0KmpgbGkLkEBWAFfkafUECmzgl+oi6Uq+fk04JAKio9qq17Rmje7QiMJ0Z?=
 =?us-ascii?Q?ir3I7vball1lSYepJUZqL8svRwYfJgf81NxmpyOC78d/a+4Zh22616vb1Q2z?=
 =?us-ascii?Q?llM5ift8PkADOjv1zmVMq/XFzXEsOJluqR+TBEUzFjD+6bwO/4GZprQGsTxW?=
 =?us-ascii?Q?ymm5Vv/r/byNwq5V9vDJQtfGu+hvDoPjitX+vNhViWGKYifaiJxZ1We93rEO?=
 =?us-ascii?Q?EvfNUmmgKbH0nK/CCrw5if0avNYg7lVqN0sE6RNR86K9c6XaEuWM/1z06F6M?=
 =?us-ascii?Q?wvmRUp+fh2TQKaTrXwlrMbXnnoq8oxDJ5aO/mqbngn/71ffLl2WZsmATYLNZ?=
 =?us-ascii?Q?eaptKQnwd8XBfori11EuUrn2HSccYqiWlLDL4Ir2XSCJBA+WbQgzOegQeTY7?=
 =?us-ascii?Q?L0+kHPLwdIN+Hu1Kod83QRw3K70xNauGzpPUi+Mt7hmECgmUwznacHJLX6G9?=
 =?us-ascii?Q?XGIUq0rO39rFg1ctlG5Q92Tll7JARHxWMNXnZLRJYLlSkyxFjEGIGLjGl3zK?=
 =?us-ascii?Q?UD/3CR25cn8tYq3tZQoJJd0Y1/qgYZo/PQsYrYVpyzKXUfmlCrhbejSfWy4G?=
 =?us-ascii?Q?RXnsayKSUnX0lvY0yRFrJpLHR8AWbO7BN7ImILJOFbEqzVGXf6Mo+JpwmdmF?=
 =?us-ascii?Q?PNS6SpWJWHDgnc286UU+kXBltOxAaeRNEXi/Lk74M5TZL7YLB0jdYmdw1kXJ?=
 =?us-ascii?Q?8yfa027qgxhofnmaR+dTX76RX6abNU+HvS5sA91+Fn1/3JcFXpM5KWSpt6hp?=
 =?us-ascii?Q?9GWQjblcSumcyjcdXn+vIua5wcfm5NhYuaFkiqDd2ygzbhem3czVBYDej6Fh?=
 =?us-ascii?Q?l/TNpL/XtR31VZA9xdkyIdSm+VDntKKS7aMDzlT9JDwyi0Z7nvxSu3KacF1b?=
 =?us-ascii?Q?uhc16A25SiuTUxiqX4XoWKyxH8/N+Qddwwdd2GVRhRvkAB2LrBu/zItFCWXU?=
 =?us-ascii?Q?BbwCYdNrhTc0aHdTbJEkt50Iadd60K0lpIw3yF5q2XkYHTQTQGSA/nDUuO9f?=
 =?us-ascii?Q?tU3tcpzsEUnafLTKuYKS5s7Ai/1WtLnr3bguxehJGvH2t2S0wB+povrJ49b2?=
 =?us-ascii?Q?aACvOHK+VJOwXLlAVlhw9AzXf/Fl+ccU5PuXHy4t+S1OWsV11cCjY5+YoNM1?=
 =?us-ascii?Q?rXCTCRK4fPcCFuD0IvxAzmFDySpQy/eSlRESl1dROV9JDB1rjd1UseoOPMEo?=
 =?us-ascii?Q?Yq1tanOK/VJxkpWu2YwHzRq+54Z57QPqJWF6eM+OzwB6nVzYGt7YECiNBj2P?=
 =?us-ascii?Q?lbcOQIUf0u3ftK+v2HZoJ1IStBbZMBQuzHRwdncp4cpnssh87LxfViDhXLia?=
 =?us-ascii?Q?9muBS5MVHElDPMx1oQVhkrG4a7DnRD2/U4/yndM9RYpYnF5xj6MzopJjOqYH?=
 =?us-ascii?Q?m7NwnqVV4k27upbfnlhCpCsRSO90TwEAr+H1?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IY+eDY+TQiK4MoqGFCqFaAjSizyEbuOjn7Y5e5els2zzaNY0UuU0ARlWSjs2?=
 =?us-ascii?Q?tMq9fb37HGdcMZKzAyqlHg3YNs3mZwMWKzze+CSBTUP89jp+Jw1nioR1ULqH?=
 =?us-ascii?Q?fCGzmXmTUDUs6dPa5mut9k3fHB6ocmEZ+/bk1qeHlunxi5SOwIGSa7LAQFvU?=
 =?us-ascii?Q?AsSJ40xwpn3qsXtKypYwCR6ZqejuHqR/f81BmA5WWEwQL4LfC9eiqqsyhQNY?=
 =?us-ascii?Q?ospCgUFw603o5J5FNNZLX9kmX10d2nqGdbOUj9wmzPJKLjBbvNN3++1JPcOS?=
 =?us-ascii?Q?1qSQGQTFslQCohJA1174aVMCApZHnrOGe72dAka0E599H7GtmXBCwl9t4iIR?=
 =?us-ascii?Q?vohu78CKNf0k0RbO07iTzX0dJz3F5Sl2roiSJwzQJo0228N+3928PVYU6lOG?=
 =?us-ascii?Q?OKjc/cTfWGCuLAJZ2A6u6fsG8PHSbBQcic4Ht+GCFOyspWlYASw4OhTVvkYr?=
 =?us-ascii?Q?nIFNsAVF2Cm6eP8uC9li+XD+7wFW7WLjN4XKHDGsRVIuSNQUFb+Ksz+q6Iya?=
 =?us-ascii?Q?b7iTUZEfXswXidXGQY3ayqaagxmGrezgJH6IcWudQuE398ZkF5O/SLkodKwi?=
 =?us-ascii?Q?1HPDC56feQbBxrZiZx3S0Cbx29I4FI6a1cs/sJJmTJkg1sOI4NGfHVksjM3L?=
 =?us-ascii?Q?Cuoxou/RxPPhcVpB3a56+HDFE58T2qexbU8nWHg9HUu92tL88mM3EfqtrNWC?=
 =?us-ascii?Q?tknYM0+WVVGPJO3HbDlT3U4IOo9qU5jZbP+VyuO0HTb5/kS+TW99xkcYCcUo?=
 =?us-ascii?Q?+d47LXaVjFntLMcJ2ZY1zMnj5pCCS1KF2fuvIh9Bpk1TXJxxsKXXmBewA6Nw?=
 =?us-ascii?Q?UsNv89ymJ7p/QlVoTDv94oDwKS/7qZTRKgEaqySd0eB1kj8QiBCkTxX87MWd?=
 =?us-ascii?Q?FxAyKJuYwmbii4dd/KARtF3/5FgsmW83KwFh//WAmevy0Xu4uzo1eILxGyPv?=
 =?us-ascii?Q?BUZ8XDnz1TXhRMVkYiAMOD0fxqoXacVtf37FyFzLgaP1KMpN3D2wnWWdbTNJ?=
 =?us-ascii?Q?G6ZKL4cNoplX+XOETg8+Ss4ANW6zbVY6YA7McPKsAVA78rGeLT0NlO4EsvF1?=
 =?us-ascii?Q?WlHkDH1ZRgoC5mUlcBGuFm3BDWr8kTb3xF5xnAuHws1dgUBbS2zdJBnaYVrG?=
 =?us-ascii?Q?lCbiHAN5gqvIu/fjVdWGCme+/ay1pjtf/hN/KJVHNf6Y/QsoTy6h4QKjyfT9?=
 =?us-ascii?Q?IeV8Bq7EM5qsdhEgFh1q/NcdXCn583vmGOwNUn21K9HWvx4LbCefAe/tA+24?=
 =?us-ascii?Q?Yn2Cerhrmhw1/HjpDYyvK8C0SgR5GjVbCxkIKuwJ4GHP4CPe/3ztWKsodXIF?=
 =?us-ascii?Q?i3W1Ht2cNYFf81MHRnuk8DLWXXMXXaO67Riie3RnG9eGR807xmDnu/BdNwIi?=
 =?us-ascii?Q?rv1kHRjhuzJEHho6igrfDhVMz/o2Y5uPvoTCbW/gnFGRpJ+0ckwL5Sme5jD5?=
 =?us-ascii?Q?ivTgxPDIO+4MVzc5XsLW3VFCGmLvwlW7z+Bm5ID/bsnYt2xrZrRTGuQ0J34U?=
 =?us-ascii?Q?iv0MqG8LfjUv+Fw5/bNl/pJ1pF8cSKkeF6rB6+fOf+OhNBZkEJ6I8ZsIZD6C?=
 =?us-ascii?Q?grcvjmrGn+IbV2m38wcWK0SfYVlfgWEB22//oyrt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee195489-17b8-45a7-9336-08de1aed8dad
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2025 15:27:51.9288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BY3aQjH99uAzEQPsdeN0JGhYjIprj/pHl2PL9iT0ukLmnPl262SN8ou6EiN/UCSTuF6bHuhS5UBXgYRzswLY0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6211
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762183676; x=1793719676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=csqSg8qa1aT7trUNL+cfXs0pjm9GUBOCohqNyhePoss=;
 b=eVJD1QL7XZ3GrWu3Ox1UMRnS6/kmvC+NtndwfLsSbio1g3NMgPphQx7b
 E98kng75Ff1oYfR2wCca1yTBWT8YEO0iNVzO53WbHFbnP/zpRmByV8tey
 fCWJtAgsaNVYajRHAX8blDn1aIWnl9f0/PF0xXeOE1RyEnHSW5oIsk5MP
 Rx3HQ6+Vu4WuRtBxO/J+mXYUQ3DfTnZReOk0uDMVhQVQKWmxsPazgO+1i
 QFSRmVyYCVnsY/5tqjiD4qgh9E0neziK/JCbFBrpbkgXFq97FavCJbPy6
 rb213WoQ71riinz8uDUnePfABzKVIYbT7VESX/1UvKW5L78lPFyy0CXE3
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eVJD1QL7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 04/10] idpf: move some
 iterator declarations inside for loops
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Tuesday, October 21, 2025 4:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v9 04/10] idpf: move some iter=
ator
> declarations inside for loops
>=20
> Move some iterator declarations to their respective for loops; use more
> appropriate unsigned type.
>=20
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
