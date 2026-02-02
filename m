Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eORTDhaUgGmk/gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 13:09:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10634CC363
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 13:09:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BF6C811BE;
	Mon,  2 Feb 2026 12:09:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7mhaYVoKIuK0; Mon,  2 Feb 2026 12:09:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F399811B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770034194;
	bh=aFV4a1TD1Ym03mCU8KhLZ4gsoE3ay9QhwYkqEvGYycQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H11D28GNh6UxLPG1hW94WkXtzJj6lcV1OB9/9bE/5ih2zRkGs548U7D14MDka07SA
	 GbxC3km8kagd3h8QnQBpAQ7ZRb0gl1v44QMrbvKnhcSylHF0BHd07OLo/fxkubVvNY
	 qnDmwHZLpj9jDcyADFEPeMd6YA4N+M/vF135QcqrN2ClDFsJLmNYBd3Wd3EQi59KJu
	 gXAlzF9CzBjCDLKd3YmKmbTVLte5215ZGPSqbSgkVk8YNnrdmPYVsXtVhEu6N3dIHW
	 Z/zVQ1PX/gATO8P1qYAD41aUJA8xdD44G2WU6V/dZqSJmOVuX/R5C2LGmtUyHVfLaM
	 fGNfJYd8Z3OlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F399811B4;
	Mon,  2 Feb 2026 12:09:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CA05323E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 12:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ABDD040A78
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 12:09:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LJUgAZzgIc2P for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 12:09:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 602AD40A64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 602AD40A64
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 602AD40A64
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 12:09:49 +0000 (UTC)
X-CSE-ConnectionGUID: KY+94QeLQAGnRvrPhwtCeA==
X-CSE-MsgGUID: 1w1NosKHTDSI2G7ghq/Gzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="82298047"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="82298047"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 04:09:49 -0800
X-CSE-ConnectionGUID: IMR52ZLqTySBbIhdRmvzvw==
X-CSE-MsgGUID: 1U3o7HvLTSm1IPLJJ0j20A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="214442413"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 04:09:50 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 04:09:48 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 04:09:48 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 04:09:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uHlwYK/LftTM1azXByDDbcDlOaxZMWSznGgQWS/c41UNweyY9lRuH9ZsX/ccfn9ht6uBJjd1VHWzQYVExQ899uLVWBGoVkwypTy/p5Bo6IDswhlwO8FszhAe9VAH/oCrP+Ko9XbRFW4LpcrXDOrnV4Fm3TPBpCo2efgWobyUeU6DJvYlZzgoq4VJo0hqomYS1D107gEDQSF8DjTwc3euuB+VLTFL5uSUm5/tIgTuVlu/58sXkgUbIJqUbGM6bCTCXJLWCIvb2SwPalc2sRMVRNdbD/Lbc48HzCxMLpLH00YsTxRkdWYSD5uJr+ak7gIgx/LhNZSkxydgbx8RUXr/bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aFV4a1TD1Ym03mCU8KhLZ4gsoE3ay9QhwYkqEvGYycQ=;
 b=GG5jmncspvOcafyHdT4ZNzXPbR0XoJDkjml3ezw9PijAaE5wTDZthDNLcgYMsA+Dp31Bcm8OKIns1eeIn7rPtfLCzKD4JVx0/+nfIHNqlwCQuPjnc0OvwPA4+hr/LA+RgkzcOxEr/LYqFCZ0qC5qTsCsaw6ZGdnWRqAMDox7YZTPbmfwuzZFYMwGYLO4w1cB7YDHw2iXJuIAf75yhYhJ2towomnBQQPW801zcPKdKwSOQLeBxfQ3Ly2+iTZ7IO7CSzRqV6I0ER4dPRHvVyyn8TBZEVeoVE/qDsbfwU3lgI4CvgYtbFP4854QLlV/35lJbC3vWOAVKYAejEiF3kXDog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5879.namprd11.prod.outlook.com (2603:10b6:510:142::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Mon, 2 Feb
 2026 12:09:45 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9564.014; Mon, 2 Feb 2026
 12:09:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "marmarek@invisiblethingslab.com" <marmarek@invisiblethingslab.com>,
 "timo.teras@iki.fi" <timo.teras@iki.fi>, "jeremie.wenger@edu.ge.ch"
 <jeremie.wenger@edu.ge.ch>, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure PLL
 clock gate value and re-enable K1 on Meteor Lake
Thread-Index: AQHclC9ZJiIsNTlTqEexAINgpPiQK7VvUTZA
Date: Mon, 2 Feb 2026 12:09:44 +0000
Message-ID: <IA3PR11MB8986B86684C55A7AA16B9171E59AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
In-Reply-To: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5879:EE_
x-ms-office365-filtering-correlation-id: f10a757b-3787-4080-483f-08de6253f408
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?jzqW8M7nSm1+GdZL89RWCa2miGFKkVTNFYvJeMiRuDxz3KGG5/OvJt6vNQgp?=
 =?us-ascii?Q?HkcS8Aqfe5OpUipXzo9PxIlcQtx0zWcRSwAzt5YVDvrs9oWFOBpGuHVi6h5C?=
 =?us-ascii?Q?EZkEf7XLoHIGay/bu/mOKxluGW4Qdz3H7W28e+Q8zPvVfVqocg8PXIM9e1za?=
 =?us-ascii?Q?AjR1xijziwifONDIpoRpYniG7U9pmpXPqg2eUMia4bOeXjxSNw0Rg9A7Vpc4?=
 =?us-ascii?Q?5K6nRjmu6RkJ0SP5BeEtvT806ahM7/iomLZhwnoiXNtpe5ZjjWQUeWRkxIE+?=
 =?us-ascii?Q?y0XKGeYLRzl6lpwXs8YN/0VsxdDRZCfjt7GfAH3QOpOTRgSnsnnyPRDNlZmg?=
 =?us-ascii?Q?fd0Xsf0rck9AJLTRoA5UU/gbh/qSLBf2rw/NZaeUX7LcopX646V/ok3CBY9p?=
 =?us-ascii?Q?eRK/vWGvvE/J9mDXZgOl3AikcJLSpfOvNpOoz0xPUIgrRTv1KkAI4xeU0krZ?=
 =?us-ascii?Q?haGUT6p6mO9KNF+znbg2wloIiy9JNyLzkxfUTFEwM5sTze0+gaNoZHTRCw5T?=
 =?us-ascii?Q?jY9GjCiLqYk3B/GuxISiIatrrZRN5OI/TJzJxVm5p3lGKzfP1pcPmPdDAr0A?=
 =?us-ascii?Q?LnqiEJbE4tTli9GzMqf2wNC+DV6bXEz5T/nzqp5ykA5I/ZvuqqUXwCqkkKTz?=
 =?us-ascii?Q?bXIWxTXmnM99XXDOJG25JuwShSFWnoVV88O6ZSLq4a5ZEwvSuTcOPvezoOoG?=
 =?us-ascii?Q?DBEiZvbvnzizmtWrYIb61S2Vf2nCoiZiM5pzoOxBI3v+JwKPbM4UZ9c8l2cz?=
 =?us-ascii?Q?uCVRd1O0qBfvtKcM89/+Ida4rFIP7MPVADoL25K1zMtklL0bHFEL0w07CYF6?=
 =?us-ascii?Q?Sg+MXPgnLSftiJ9Ddmqw8J/KCELdkawUybT283/Z1wJbWGH51xv9XSl2ZIed?=
 =?us-ascii?Q?isZYsyTjsT/A/XXeIhXnxeGnEAaHE7QIuKxIO8UspuKTJnph+ccaF/rQctHE?=
 =?us-ascii?Q?2VlR0CnnxH0wBA792mpfx0mxE+NIMR1XWe8sYEEBM9cVY2aW/sZoeGZykMc2?=
 =?us-ascii?Q?x0v68l0SOqPRvcYcGixkIL2s57T9Lrn3DZkqGsNqgWNnwE93wNmZo6CzqT71?=
 =?us-ascii?Q?hyEJgpVTCb/+Oo1HwxvGQuwReGWq7ODMXcX0lLVqEnvH48PCs1y4d3NLTUl+?=
 =?us-ascii?Q?SQebQ8xWK77/kppH8N6ye6+dXH9yRFrXZUHBMfnsd0okzfqNstaO5i5i4f59?=
 =?us-ascii?Q?uvZmkP+u4281Gv8SKqFjGPakykTsvL2wGTcDQb/qW0SckA12p0jAx03f+YXz?=
 =?us-ascii?Q?qqMuJ2v9xvwqYSHJtqAOMChuqQuHVeD4wo0KJ0Fw1IUFDSVmmevircCfD7B6?=
 =?us-ascii?Q?tEJcjVxjdEpLBErxR9vdbS22dP1zMJ7MhDN+n8C9NnwzxkXwh3HGTY0ZsYU3?=
 =?us-ascii?Q?UwGYmOimOXbqRIDbjRFAGRRRU20G77TFQb6EM7dnSEKIWc3ySwS4qg5mmy8q?=
 =?us-ascii?Q?/Z6Y+yPFIosOpY/If7wTxctD0KzvSyCMF3QEMGwPG6IvVa4N5ORMHTYA/KaC?=
 =?us-ascii?Q?eoFp7Y3V6lAmcfaxvYOZdjbYtYheGZlg93LaK7esD7eA0gU/TNOmw3iDzzJZ?=
 =?us-ascii?Q?7aBoVMMEbiQfFs2CQzOf24cd+JpelE6Sm3n4KhZ467SAJ7fS/9nlNs/LboQf?=
 =?us-ascii?Q?8990NDj1WcjRoootZlPQaOo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uV3l6UW0owsL6McMdGxPxnpZKeOXwyEQmQWlVs33UoxrCEQdAQqdravJy5M2?=
 =?us-ascii?Q?8pk8WSaED5RaDbHz4ZPHvptK3rWJn0zNF2JqdPGXFemVIHusyBERTNySglGE?=
 =?us-ascii?Q?bN6FFFEVBbFgQNciDeYis4Fq7p5jYfPOehi6C+z/bo3n/ykjzCk8LxfvomIw?=
 =?us-ascii?Q?FXN4c8vYdDDRLdGmReS4FP3Q7RooT5hUR/XugBvmrNL4ErZ0/I/BsrXBTSnG?=
 =?us-ascii?Q?dRz474vTodO+FR4gyjFHM+sHZNEIQYKmFSrUxeilOSB2JwS5CKolrNK5IvcI?=
 =?us-ascii?Q?5JA0Hn+F6C8Gx7rIe14DfX3DnE7Jz53ncMuiXD8g9aELh+83f9huMSapoGRq?=
 =?us-ascii?Q?c+x/mLDXAmjWmO8hAbA/GQG0Jkt0T51vdRslepo6UuLpMTkHhU34olrQkR4o?=
 =?us-ascii?Q?Ka+RahBmFXOtuHaTyiuEpoYWF76mrj33+h7gypuvOgYMOnN55Le+CwqhRMl1?=
 =?us-ascii?Q?JpNKkqo+GdBazF5Ij0JTKuvv+GpTToRbgDj7TTJ3iCvLQZQT+pje9JX76Emh?=
 =?us-ascii?Q?kCwUzqgdg/+Ey7MaC7LLMzpxu7Qz+l8XVChlskUqQXZ/5auYP3Dk5A1hsS5k?=
 =?us-ascii?Q?JcLDfjQlTxUP8Vds24pk9fmySHNzZ0/Tfc14BYHc1Adn+b68qQ9qurnVP/s0?=
 =?us-ascii?Q?jxx6OtNbxjQH6p7p24VFDjp+DHYH9EaCU0DdRgZ65m8jSJLm8y6S1g//6MWj?=
 =?us-ascii?Q?pPzBqz5sJisAkedalg1Zvo2NLAwKbUny4zxHF36OVcHesgNH9uiNJj0VbRNP?=
 =?us-ascii?Q?1FhJMk7aAvzsEsj5jUxyLTS6UHzC1BZIM9KT2g/HXNG+pOZ4ByLxh9sVJejB?=
 =?us-ascii?Q?bUSjfdE+3o6qqgiMTj/rCj9sJvdNTwzgoVM+1qBsuVNZzZV9XkO9+YJg6P9S?=
 =?us-ascii?Q?JdYuBSVlmtf/iWrpJSXKLfXxDccwp14dWF8zMstWPlUyTe0YyrPbqSGnrX48?=
 =?us-ascii?Q?Bo3H2ds79pobZN9f0ranokarnJ9mXYeej2MZqtRDyJRD8XGCD54kimjHCgg2?=
 =?us-ascii?Q?qN+Io7h8vPREckSvQ/WPQbGCwUCxdRRNTYvIxaiGPczPrGHSNfZYEAsoPPJy?=
 =?us-ascii?Q?rsAR9acNP2r9xQteSZrA+Vq6LDAZn+3YkyEDI/n0dMz/9GdycREs/g2MaTwy?=
 =?us-ascii?Q?O1kxPH7xdhgFdCJ4qJAYir7T7ub591C5hmcTYunFVOxnhQzmXbLrdbOx/cWV?=
 =?us-ascii?Q?HFwlmMvdKb6BCGyP6e0TqN7lrxXz9kx5d45E3R9BXMmTNtt4fpvJA2L6atJ3?=
 =?us-ascii?Q?T0P8Qja+Dptn1yWvVsCoEKLQo3XF9RMGpS+FHltB5BsS9B4SlAQkbOA2RNj5?=
 =?us-ascii?Q?Q4VILBLwFn8+ft0pn5qSf6NejGRaB08Oq0zXGmcxtQCOEm+kifGgtB8PzfPm?=
 =?us-ascii?Q?nj8uy4wCjE4thj4vfoihLl231VIZJ4UkNmUFAXSG9fEvkT7nPeIfmn5HSv4X?=
 =?us-ascii?Q?rpPD9FM1v8J/cz0Jo6ASrEXdcLRdO2gWB+y8m0F3lvbRoWO1LoDLM1LfsepZ?=
 =?us-ascii?Q?y0KOUdVxZp8EDLVL5UTUDbkXHzmHKbkbYda+EYtuHWwrF/yWgnLSuickoUd8?=
 =?us-ascii?Q?bMea3iNBjvg9KFZi+dPPGoFlyWsz3aoG2a7D1A5jZj/3T+z04eT5HQOXvSFP?=
 =?us-ascii?Q?i6nZ5bMedRBkzThKfZfzq+2SeZz8Le7y6pl0qK2SAsu6MlNem8dYP2IGCVbs?=
 =?us-ascii?Q?1XL1WbwrfECUDpqM19NL+lwyBOgiUVhXzkC3i2XbGQc9oF/1wykOJKHvkuHN?=
 =?us-ascii?Q?yfY4xmjgwA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f10a757b-3787-4080-483f-08de6253f408
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 12:09:44.8688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nen6oMiKqSU71u9RsRrIsmklEfHHrxkKGticDYsZBYUMnDUDOXGNW+rq/QXL0Q9GsGjHJGlKMJCb+7PnfmPrDkDBzlrRRQyr66GHLkYUsJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5879
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770034190; x=1801570190;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CTWe6DxkF8q6D2MS8YDuBMEBNFbQ5RjL0AjhSx0I4pM=;
 b=NU6qrW2aiqbaFuW/ErnkeudhYYymybZDcgYndLWu7OReYyZFjPbw5f/m
 NXgHLvH49zxQ+vcl+ygT9qTh+vg/khow0OEPsFNCyYcP71q+5XcAXmXeI
 5Nvy6ZbcOBkP5f4VvrqZF1hIQhOd4BbNanu9nSMABaNMBTGvt9PdgQGNH
 kOPtqxW3DRn+P46X3XUgiEIoUgIaQXPeS3M9Uq2rG8EYlpJrZD1RTXeYe
 enVehPw4lHenqOY56ZX/UgE2DJg5v9u+38NSy6+A8f/0D5iCUASMZ/tR2
 dLaq3xPenlmNPPFCltfLRW+8XWgcT+MFee7gcNKOpHDKiQ/qJjTwiZM5m
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NU6qrW2a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,m:marmarek@invisiblethingslab.com,m:timo.teras@iki.fi,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 10634CC363
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Vitaly Lifshits
> Sent: Monday, February 2, 2026 11:33 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: marmarek@invisiblethingslab.com; timo.teras@iki.fi;
> jeremie.wenger@edu.ge.ch; Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
> PLL clock gate value and re-enable K1 on Meteor Lake
>=20
> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> disabled K1 by default on Meteor Lake and newer systems due to packet
> loss observed on various platforms. However, disabling K1 caused an
> increase in power consumption due to blocking PC10 state.
>=20
> To mitigate this, reconfigure the PLL clock gate value so that K1 can
> remain enabled without incurring the additional power consumption.
>=20
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=3D220954
> Fixes: 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: add comment for the PLL timeout value and revisit the commit
> message
> v1: initial version
> ---
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 6 ++++++
> drivers/net/ethernet/intel/e1000e/netdev.c  | 3 ---
>  2 files changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 13841daba399..8e88aa9048da 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1594,6 +1594,12 @@ static s32
> e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
>  			phy_reg &=3D ~I217_PLL_CLOCK_GATE_MASK;
>  			if (speed =3D=3D SPEED_100 || speed =3D=3D SPEED_10)
>  				phy_reg |=3D 0x3E8;
> +			else if (hw->mac.type =3D=3D e1000_pch_mtp ||
> +				 hw->mac.type =3D=3D e1000_pch_ptp)
> +				/* Increase PLL clock gate timeout to avoid
> +				 * packet loss
> +				 */
> +				phy_reg |=3D 0x1D5;
>  			else
>  				phy_reg |=3D 0xFA;
>  			e1e_wphy_locked(hw, I217_PLL_CLOCK_GATE_REG,
> phy_reg); diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 82d1d5fe51d5..8f0eb822610b 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7755,9 +7755,6 @@ static int e1000_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  	/* init PTP hardware clock */
>  	e1000e_ptp_init(adapter);
>=20
> -	if (hw->mac.type >=3D e1000_pch_mtp)
> -		adapter->flags2 |=3D FLAG2_DISABLE_K1;
> -
>  	/* reset the hardware with the new settings */
>  	e1000e_reset(adapter);
>=20
> --
> 2.34.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
