Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E384E8B21F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Apr 2024 14:51:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEF634019A;
	Thu, 25 Apr 2024 12:50:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wl4RHaIn2nlL; Thu, 25 Apr 2024 12:50:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B9DC41AB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714049451;
	bh=iwsMYj8BAFToyKCGuiMXlu27V+FcV2UGFjoYiaD45RQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n8A3RcIlfMboFUZXNwVdi6DqmErLiSWArg4xK8XwgEFPX97LNeAXM30c6MA0zR54I
	 XmAcyA3iVxpE1iE0hFocW1y8AeIjaR0I4ileJjJed0QINfOsV6xAOCh9RtrF/Cnav7
	 v12gGB69odXxkQPbfv2HNsKwDh1GYfWs8idZzSA9UHvDwBLh6lBm+DUarPQBek8VnS
	 0diRsUIGLHKYVtcOn/HE7a+u8gDcQEU3LqFyL/3XPrXgnYdEep+XPYsh3UIDPhc6/9
	 sbI1VqP/tquot+gkdDhQJGvYBTHbjbFD6wo45C0vRRHgXMNGVS5u+3ddTNTbr+yfcw
	 OpLmh+wwYf8MQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B9DC41AB0;
	Thu, 25 Apr 2024 12:50:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF78E1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 12:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D80FC612A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 12:50:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2sCj6eLgSo6Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Apr 2024 12:50:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 81BF260670
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81BF260670
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81BF260670
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 12:50:46 +0000 (UTC)
X-CSE-ConnectionGUID: FaXLXTnMRvCyENk1b56dUA==
X-CSE-MsgGUID: H88Teb8CQlG807k/npWBdA==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="35125995"
X-IronPort-AV: E=Sophos;i="6.07,229,1708416000"; d="scan'208";a="35125995"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 05:50:44 -0700
X-CSE-ConnectionGUID: rhoerEX7R7Ctkhyock6zkQ==
X-CSE-MsgGUID: TNInE5l9TDqL5yeuAHYCvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,229,1708416000"; d="scan'208";a="24932508"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Apr 2024 05:50:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 05:50:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 05:50:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Apr 2024 05:50:43 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Apr 2024 05:50:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EkRXessfg8lt/0uKP/tWWdBdSuami5OK7we2y7dvixp6p6eG0PfobIdu317ORc63OxJFmaSCJEJ+X9AkmIM6oBhizoUBw0/RGhfhyYlcP5S4rfCm/RuPAr6xOnBdK3xOG30LZF/c/EnBbwwVKT3Efe/uhmu1j03149dhoY4WXMHvQL6jKfdxqj6bp1WDilgcK/99Zuu4QFEcoQWog5tQzauPiYdu+W5mvMtXKoAKneX/G0ldLpZiRuiuWotCkP1b52RZdxs1eqzKlcdv7rX5t5MTeUat73KJpdtqQxc3/r+3sAfXCVtrC1vLBYZHH0okan/QDiIlaFi6vGq1qKmxHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iwsMYj8BAFToyKCGuiMXlu27V+FcV2UGFjoYiaD45RQ=;
 b=fHYQfIjvshKI8Vh2BB9OGDjXbHQyJLButfoDlNcEy3CAsFEwqSM6PjcmgxTZ1i1bwnEWzZCgjwo7RWUXnNNl4li7Bv46tgxfuszwHL1XN4D/eKtbeWGVoHHr1J3SfUJhxxgh9AQbK3LCSx0xlt4UoTjNffbOKzXvcqlP3kLS7Yn2Za5arfM85NaIaDXUYF/UysXwNKGpp28qf58aWuxXT0Ag1cyixFrvs7jvMyU863aa/69Zhe2SRa9998cEC4BdJDYJyPmYfugAAZN5u2hr0TINi8lIkF8qkYyZAda01Mr+0z0pqSaYHvnGvDOs727ZGu8UxlzkPNz3OGTmLtBkJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ2PR11MB7427.namprd11.prod.outlook.com (2603:10b6:a03:4c1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.24; Thu, 25 Apr
 2024 12:50:40 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7519.020; Thu, 25 Apr 2024
 12:50:40 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor struct
 ice_vsi_cfg_params to be inside of struct ice_vsi
Thread-Index: AQHakjrlds/JBfAuWEaRGIHlFzCEH7F4+U/A
Date: Thu, 25 Apr 2024 12:50:40 +0000
Message-ID: <CYYPR11MB8429EBF18D0D54B405DE08FEBD172@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240419091104.13495-1-mateusz.polchlopek@intel.com>
In-Reply-To: <20240419091104.13495-1-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ2PR11MB7427:EE_
x-ms-office365-filtering-correlation-id: 890e81a5-c03c-44ad-1796-08dc65265022
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?3ctOMNt1piC6YpH+h7CKDblsISKUSGUaImO0QAIVi7qaEwWfjzCaqOF54rDk?=
 =?us-ascii?Q?seu3hX4tsB1Ou3AMIJI9kCJDCSuR006cDLJtjsTG9l4CMVCso9o3tkaUPkyN?=
 =?us-ascii?Q?TFniIruAYCdS0SlD8LrMWDn6/+1IVIEYMEZAciIOcN6jb/XcK6OowS/0MdAv?=
 =?us-ascii?Q?bObnlePVL+txfOYCI41qytLtA0qfSmOYVfhKam43oFIZ6cot/INTYaAKcWDB?=
 =?us-ascii?Q?PmlUnbYJ6+78RMS2hCLjgiYGVwQ0xRUoV9VsakSvglc7Moci5uYGUU2lVz3P?=
 =?us-ascii?Q?fCOCm8xfsJxN3TV7G2nV8cab1bYyvaKePQZLPif6pp9JL3R43T6Ex8DIf/MF?=
 =?us-ascii?Q?7I3aNbWMmXojUmkqc4Ze3s85NpzDc06nBx8WDIDywFXKmtoGCJRCx8vh5NCw?=
 =?us-ascii?Q?UrcnntjqRWT6rrT9za5D9eYTJn1XcbjyjRwDPQQ2SAGyYVEZuYR+nqSUSA5J?=
 =?us-ascii?Q?yhIw5/YdtTLkqopoN4dvXp8dIYUlKyqPwcW/xlzLjai2ukkU0F41Zw2WvvL6?=
 =?us-ascii?Q?rJGOBStB4XASEFo0bA2QMeK+4xtGlEP5kDjuhHHtM3rv+GAEqU18Vw3fo6D1?=
 =?us-ascii?Q?OAuyowFguc39Qr0qosIZ/D5KKaVXvvk3ZjypoorEAW1S7ocaHXsxzYaaBK45?=
 =?us-ascii?Q?lKA2kVu6GEtkHQl8UpsT4O/dCwMkOPlB+lsjM7Fi5F9fwCz+36VUF26yjJ6F?=
 =?us-ascii?Q?L/YqPxTYBwEUzW9nv7PW5TowkE1DOonta9x88zka/M8oiQ6yuq9AYb1GtaeV?=
 =?us-ascii?Q?fIe2kZELn8Kryi16NBckAI/+PKLIK4cd4S2Z8JveIjAOMY9odymaFE8kgANd?=
 =?us-ascii?Q?Qby6bnhbDttTLvs4RbBx5T1GkbKWFOi59oFW/87/W1U0uuxwOoJb5L4+jPa5?=
 =?us-ascii?Q?r1uRmPW0ZDb80DxbGPUXV7IOeCXpMUHh6N+gBUtS99vYV8F7cLi3YBCeTBo5?=
 =?us-ascii?Q?9VIi43h9NtG4BgpQ2t1kq+2WIdO4DkBwOrOyAhD9fIa11zRbDE8k1U1H3Ss+?=
 =?us-ascii?Q?FXQAZiSIp/lEZR60lON7EcmgBjNvZVNaGwQ2RTcpg97GwOfigLNYJgLr2sck?=
 =?us-ascii?Q?v6aYi14Y0WOpa3nRcLx5CJIXpAdG89HcJ9pVKdjsdzMnB6fGXa2qjGeM0Fel?=
 =?us-ascii?Q?IISVE/Uw5gEgvG6nHkrodoxh04mZYTkJ/yPAXLSXf9TTjFKfhrKjUZYTkVBV?=
 =?us-ascii?Q?HHRKkPJe7Fz74YfnMgM87qRsdsBMkxNjll/MxdPJwgW4urPC5MLGmva1ZExu?=
 =?us-ascii?Q?EoFWlkQ0pRNskTnCKt1o8QoPLL+4eLOP2dN5/Uf5Op5J4Zb9+ibldPA5D8Th?=
 =?us-ascii?Q?/0cYPAzBqdx0txf8Y6Ythnpu0vUvbsfXaXsAcY4dzr0M6g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mB4fN5YqR8I+3Jk09XpneNgrVWP9hrsD7gqLkKMwSiJ3moGZu6AhN9kyckdi?=
 =?us-ascii?Q?imlS8FljgM2gc/id+ToGYbxtJDm0YGElkjX0lk1k5QQzCnWRYXMm/Dj8QCeR?=
 =?us-ascii?Q?afPSlLp0eq7a+mhtUm/RKbkyzAmty3XTP0FYTkW1e2I7AnenEKidHdAP0S10?=
 =?us-ascii?Q?6Yk4paoke9BwEep7y+t/bQuXfYTueZ0sr9U/jHstaqyaukej+9Ku6JXQw9Ft?=
 =?us-ascii?Q?OHmUVZiodDKeayjmFEjpwApL/+uHLOvgYj1ym+3RyjmZq4J0lNnh+Wzqvibx?=
 =?us-ascii?Q?bl0lxTpBqqufGmH+fCAfwaxgIQ4/5wugvzzYV3055+a1Q+vvDwnOTXCYzipj?=
 =?us-ascii?Q?yHVbhbvrFbB+VEtoN25aJQMWQzBsqqDN/ZvSY+9Y6IZcSUd2UPebfYDPavDW?=
 =?us-ascii?Q?e5Dxm/4Au8CoF86q+nVkNJ5mrjcEGe/iDJWQuJcxLAJHPrpNdLchzZX+KAjc?=
 =?us-ascii?Q?N0CuhRU0/vh2Nhm7t/VGTyQ97m6cOJzg9EOC4PscX/Gs/iYAzuuaujybI/JB?=
 =?us-ascii?Q?OKqwSwEnuvHxcdTns6zMfbBF7pM6n7UL8zWL6OgxZ0ykHGWuUPxisAUDp5Ik?=
 =?us-ascii?Q?3CWQ3XQdxJne8BYJ/3hIdH7TDb6SICEGtuKqGfKZiP2BsWMq7UT1tkTXr4cS?=
 =?us-ascii?Q?696GDk1Ljb/JSWUTyj1qEdwN0KXgW0yT3imt+XQI59JNc3hmCHMK50DWHE65?=
 =?us-ascii?Q?CeYpjFhHDhuns6yfypbC7WCQL7NjmqEygd0xVcXevfQeu3Au7zIwttrC8GsL?=
 =?us-ascii?Q?dZA7pNMHSir2QZdgx7RRqbCaqgnmaDcLY7kW6RWaWRifZVSet2IWDvXu5lmT?=
 =?us-ascii?Q?mnm33A/qPlVaPairvvPi+e/63DccBJiDZirqHWw9OLk0sgmUZU1iDhLBClNY?=
 =?us-ascii?Q?OnoizhZaS7G607SYSnpT8uvfEQ219qXLTitoJwpa3yfU45chSRqez2MwWvew?=
 =?us-ascii?Q?LIIBKHwncj7PZ4RB4r5CkrZLpL/w7UVA2kauAN+6Tijr/r5D5KLduq8fq4wx?=
 =?us-ascii?Q?GmmKIJyC48CNZ22WCF7D80HqGet3ExCh94ngnZbOU6gQf6obvu927Oi4Cs/1?=
 =?us-ascii?Q?k4kk6SGXBIKx2Lq6jr+qkCJXqMuLEhNI6Doc8higAjgltM8lL4c0bwdqdzyh?=
 =?us-ascii?Q?AK3hW+sy20ZhZolKidYqzoIZp/B56FrYdkYAbxqISh4IbuQ1GkY5VnF1E15T?=
 =?us-ascii?Q?+EUV9i5AEcYQ2Cy4D5kTaJN/yFA8PKD/30DOjQN3N4P/Mu21vXEzI2y/JwF1?=
 =?us-ascii?Q?TnLfKVx84N9UuZCfiact72pTNYLJI3RG5ZfPc0tcmRFqwkk5G6HfQY4SYlR0?=
 =?us-ascii?Q?XWCAwvm9SWOT4EdSRQI2Vl11FjicW3ByZhjeoGe3cO3IA/IQq0EorvwIlphZ?=
 =?us-ascii?Q?Iltf8K54uGqCA3JOHfWqsfeWWA+pqlnSlq79If1/3eeIIW0CuVarF72kbirt?=
 =?us-ascii?Q?qhZcqU8w8908vljbAuOOf/Kov+3i14DUq3/AfP8CMpxMLvYo+oICmKd+RuiM?=
 =?us-ascii?Q?9yj8JgYrN13Yt3WCMBcX3bkQIAQlX4sQhloB8fBnF/Tlduj+kAQhje34QpN0?=
 =?us-ascii?Q?kSAw7ud2CXvWGWIoZY1UnxV3OVhy8J/Lwa2wzAFu/onjoQnD+ZsImpWMkx8n?=
 =?us-ascii?Q?OQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 890e81a5-c03c-44ad-1796-08dc65265022
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2024 12:50:40.7266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ltXDrGdV52+q1kWjORRXrxGs+7A2OkGVav70OR4tpSmTviax4iemhmlX5+OSnM9CCpd5qe86L7gezZvKMObjkkFFELW6tygsEINGPCuzgdGRVPbulyIfAMvobIKloUjp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7427
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714049447; x=1745585447;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BdMaTQWgM2+7nxRvIrAYyNkC578N+EgHwHUZ+xrIsBw=;
 b=JF8awPeTlw3GUVjU06MiXPFozPsb+xrMvYE5gH3jClfqElj9ryMV8pTK
 AyBisthskyjtO6kbjYIwadNxiNvz+5uZI3sK+j91c671A8CzUXCaH+cRr
 +gm+iPl1XoXyr1Hh3x71QU1o/146gXDKD3S6HjyRKHxhmeTaBCiTSbkMm
 xa9RffhswLMvRX3g1EKKZcQlhlw92i8Lpyr2hM9FN8/HZIlggFB4NOQMw
 GZ8Ifg1C9yCQ0pxLwQ9iQworbKui7CHPghCg9zL5ZzU0aO+gcdxL9eu2s
 s4yzBiEW0ri83fP8ear8Lwz3lUNr8v7rLMMy/5rAhXlsgHKaEEmYTSAlW
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JF8awPeT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor struct
 ice_vsi_cfg_params to be inside of struct ice_vsi
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Tipireddy,
 Vaishnavi" <vaishnavi.tipireddy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ateusz Polchlopek
> Sent: Friday, April 19, 2024 2:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Tipireddy, Vaishnavi <vaishnavi.tipireddy@int=
el.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemysla=
w <przemyslaw.kitszel@intel.com>; Polchlopek, Mateusz <mateusz.polchlopek@i=
ntel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor struct ice_v=
si_cfg_params to be inside of struct ice_vsi
>
> Refactor struct ice_vsi_cfg_params to be embedded into struct ice_vsi.
> Prior to that the members of the struct were scattered around ice_vsi, an=
d were copy-pasted for purposes of reinit.
> Now we have struct handy, and it is easier to have something sticky in th=
e flags field.
>
> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Vaishnavi Tipireddy <vaishnavi.tipireddy@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  .../net/ethernet/intel/ice/devlink/devlink.c  |  6 +--
>  drivers/net/ethernet/intel/ice/ice.h          | 14 ++++---
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 33 ++++++----------
>  drivers/net/ethernet/intel/ice/ice_lib.h      | 39 +------------------
>  drivers/net/ethernet/intel/ice/ice_main.c     |  8 ++--
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  8 ++--
>  7 files changed, 30 insertions(+), 80 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

