Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Nz2DBwSDGoZVQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 09:32:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7321B579230
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 09:32:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E7DC811C9;
	Tue, 19 May 2026 07:32:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C5tHMAFywUYf; Tue, 19 May 2026 07:32:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF504811BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779175960;
	bh=iRSu1qljzV/6kOAau2DbSRguapCjEl2zqaa5efvxD1Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aEu0ko/mPnKpx61wvnt8/MGDCvvUu+/ebjoH/ru/IP4nfzc07Cja0D4scxByWI/QF
	 Cci5lE+xdLqc4O92MfroeDK9mPG8MvcZGd8NZyRP0g0VtvrwkrbK5X65YitnYaekqA
	 9wv8X3pZZTlYwKOVuktpUkC+eXqaoOWBp2rgF/Q+k2/poD8C/KVxaOYkqj7xzjaOXo
	 27kd3UdKeDInwaBizhU9yPrg64BMbGzTsPy4fTlahLYH48TizNt6DXpB2KRn61Vmok
	 SvOIybBqeKbDWCso+yTjQVdDTUk+N8m7pbJsyKc/LSn8iyIG6OQ1et28UDCsP4ANlm
	 hnyt/fnB0UHRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF504811BC;
	Tue, 19 May 2026 07:32:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 19A5B282
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D511E80DB9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:32:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nyCvTL65a-Ku for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 07:32:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5E83680DCC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E83680DCC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E83680DCC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:32:37 +0000 (UTC)
X-CSE-ConnectionGUID: rVbXZl4ORyGe8O+ucR3OXQ==
X-CSE-MsgGUID: 1uSjkkDzSW6XUddDOstakQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="79188354"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="79188354"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 00:32:36 -0700
X-CSE-ConnectionGUID: x8cRrx3CRNq796NEEDmlug==
X-CSE-MsgGUID: rLe024C+TIqEWC+wyvU7fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="244683365"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 00:32:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 00:32:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 00:32:36 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 00:32:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AOL0EtgxYU1aFqZHTkabYme3slWLuv90l3qDJaM+5hkrIPF4JzJ6dOstKkLTEOeEC4WksBXfwii9quPdv6LMijO8Xk6/AUOM2GMGHOT0dBd3p2JDPz+6jxLBFo3PDz5fy1qYXOfj0F0cnURy6Ho0uT06xY1rabnjqVa+Jsc/l/e/oMSoKMsNKa21zhWb6k8ly+ztsV+CONrXmOVc+gpxWHvA+rkUdYrh+krnEuxofvt61iAt8DY7eVKuTIBYgRRFRkeiC9hYONmPDnd0WbfYbndwFTLmtOxPsMzMrBM2vV8UpC6eKlqELwjNFClNWuXA9D9FtewxpdHNZf0/0DEEYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iRSu1qljzV/6kOAau2DbSRguapCjEl2zqaa5efvxD1Q=;
 b=oCm1X82m9jD393F5DuyXIDyCW9hUt8ph9WliCpYTh3I+O4KhiIDA/NF6ax66VCJXUutJga3BaZvPd5toSiiybFHBKK3crIx2X2u9MFHNMfj6axW9hQgxDAJ+B8V24F7oEn6G9ylAUHUvsZbjihUj4qVq9VPXVbMgkif6Bc5GUN7pyth4irWa3vME+cCIm0hwYibZ4wlMM12XUsJt1vxZs1AEZ3aeGV9yoWlLEBKvYAbp7MDqz2CC9s48fJNlBMBWWKpLYDrPO/AenEvwoDgT0wO4SCDppk7+2B5aU/sjRLfxxIGn3KIa+wXsU6X0aogsbJ4kqOWBolvcFzsP6ZkSXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by IA0PR11MB7840.namprd11.prod.outlook.com (2603:10b6:208:403::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Tue, 19 May
 2026 07:32:32 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.21.0048.013; Tue, 19 May 2026
 07:32:32 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/3] virtchnl, iavf, ice,
 i40e: store VIRTCHNL_VF_* flags in bitmaps
Thread-Index: AQHc1yUV4ivy+Hq530mJ68GxP6Mq1LYVFNgQ
Date: Tue, 19 May 2026 07:32:32 +0000
Message-ID: <IA3PR11MB898571264E4BFCA5CCB031F98F002@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
 <20260428143716.9653-3-marcin.szycik@linux.intel.com>
In-Reply-To: <20260428143716.9653-3-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|IA0PR11MB7840:EE_
x-ms-office365-filtering-correlation-id: c00d06ca-3a0f-4456-d251-08deb578c9fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003|4143699003|11063799003;
x-microsoft-antispam-message-info: Yz/eHYGvN6ps45VyJF6XxbL/BhZmE+o9Xu4xJkzv2Ue5nYv4w5wVVjooK/4Gw0q83giHVJP9LGyy1zKouSQ23naXsI5VcSLS6+gZpMoZ5C7YS/6KcZ9R/dhjBlpK5TbWn6PXUA0T6H9+FBAcWKKaDl6Gf8zMmqYYjLVY5VQRROHIaZ/ZGVl01A7hQ+5YDe0/Xno6zHa1WWOGml7F0AtamLj4HeBA5rYyCXT04uFWsXfam4/e3aSqqNDTLusl4OOMr2E+aycfU2LJlG6moOUNegDLdxPYEP6n7f70W5VMHoBcOPYewLl0NQVlVt42olfcwysqGKoxdI2Rlf+xKDe8P1gUmPOrhWdbIBsExz6TSOrHz4RCubEpDyO1HIEbvbl/G2kLxwIALHmH4zcPwLMTyl5kCPVGAvJMNVD9a0ZCdg6VAxird964NDyCZFb/uhwgzkeZO5wlovQtfD8tWkaHDOAGhYkwsle0O8Wk/2sILXnFY98GoArjUvfmcSFbdhnB6Nth2+hdwWFdR1+Ann92YJeIXC9zf8gKEsySmTnfBNiHhn2P7Hk3vLEFF9L9jyb1KgJvQ3550iSKxQ//ccmNX2OqjMIfpoeDxIWNWeQcXmxncWqD/AnU9U3XwUlVGTax5tee0oaDEaaXKrR3/uw0X/XkFMvjkCc7tZsM5Lh+/MfJPEHjwBWsujJFJ+8iWXIknbYM/b1SmnYQFfD3IBK8wed627xDJ/5ztJO45i3nfEuVql40KhOy32strM8TYf/o
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003)(4143699003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vDuH2EJkqnyzJYJcUQ6sfr/7gceMB8QJhU8TVw06c8doEuuDRWKYJ3q7Dz20?=
 =?us-ascii?Q?wr7w79+ukkW5BeOZHqE/PsaR/frOalZguS86ks/NBw5AAn31TMjT6vWSVG3S?=
 =?us-ascii?Q?8Cp+nAnYXmGjPJCnB4nIHfTha365Dk8gbBoGbzfo0PRIRAsJA7R9EKXAyZw4?=
 =?us-ascii?Q?2j+z4Bdqxmta2jK7wRYnzzYGtr2cPy8qkhxOK2cZUoTxyy7nFHl2hBSmjXxS?=
 =?us-ascii?Q?a9kppKBh8BXJZf8KQ7RFrrRYpAMaXV+u6ZREYVcP0MdUDvSGcC2ZzHmTFvpy?=
 =?us-ascii?Q?J6HIgL9EjaxHHGoHy+P8QShUuuoWDmh0Gzj1x84cQJX1360dgZr6NAjXazl2?=
 =?us-ascii?Q?7Y22xgoZ2l1I9yP8+oy7svrENYdxWkttRZTrkW6czLvX8f3QrlSx0Y0YjkeW?=
 =?us-ascii?Q?7/Cx7+aBZ8k8uQLxtFcRlMFqBUqZM+rtDVWGT1NuT4DvpeB6QcQQepbUV6Kf?=
 =?us-ascii?Q?6Khs19Ss/sewic9+m/A/DnXAUF356YS+S4/zy89RiUewT3+TbqILjSSQ+M2T?=
 =?us-ascii?Q?5shHzrgKaKr3X9HdX8B7/gC5l7G7DTlxKPpOYBmrjwSgzm9l7SIiXpmnfzOQ?=
 =?us-ascii?Q?JUUv2duZcYr+1iurC/V/OCcE1LAwWJvPMLV59rZ06d0JvJp1I/irVfHvwplA?=
 =?us-ascii?Q?MOUjSP6cQhGC2dKVzXc+qVPnLjvRdgrKYgI3l6sCMFZMCoS2k7ivqaO+qlnJ?=
 =?us-ascii?Q?XHT4IP9oiaiaSePHsk9wpJQt2giQANXCYNybBbONbrRnz07HLMdrXU8HGdJ5?=
 =?us-ascii?Q?+XBQFhHxg11CvEruZ6fUGSlNuDGJjB99r2OlH0Om4iUwrybu+W5Vt5qDtTQU?=
 =?us-ascii?Q?DuavJoSwpvZa9+QtC8xLhsCRU+J1DJFbPqEDumHNny168w6xjf/bMDBvsW6B?=
 =?us-ascii?Q?dsH9aJOP+lz4aKzGKJfLfK8TYxu5wlzK7//cu7nSC2F6rKF6zOmKLA+XgbQo?=
 =?us-ascii?Q?l3hNXQZj1AK3BkH/u/b9DsCxMIhnRWiCkuXTR01fUFohJkDegTCs8ds5djbm?=
 =?us-ascii?Q?woijKT1Ha3+UZTv5I20xciN/h0cyP3BK2Rh+RqPKci6C2o5H7prUJCFb99od?=
 =?us-ascii?Q?ElbNX5w2dDc/yR/5nZb7EA9oJMdYw0uyuJ2pw2Ucz6OfVfav3f8jvX7Ljoua?=
 =?us-ascii?Q?ImMSuFhzsFCzlWigA33u6Yxce4yj58iNDJ03jY5TyrQu5mstqHBm8ObflXMY?=
 =?us-ascii?Q?yTZfDwXfa5s5D3mZc1QHyc397+VbWLIwKV+MvLSLiLJTu8Bd7esWvpjgi9aB?=
 =?us-ascii?Q?8G11tnj/xGK40X1zvk5Ylix88enL9RRSLSLfYqFeA+VQw3kEBPmNFQdUeyfl?=
 =?us-ascii?Q?T8c4kXA+IJ6D/jnaJq2msWwx8Zn3YvzsDHaDIEBBI+8wZNZj7o4MaUJfPgLc?=
 =?us-ascii?Q?H/stYH/+J06TbUnTPKUEfTCe9LDjqVy6uqlHNEPhd7PqjmuK5FVN3djrcZQb?=
 =?us-ascii?Q?+Om2Lu/awi2micvFEqTzsG0SJjufLmvdASLHadyQXiTAmCVBLh/jMALUYG6E?=
 =?us-ascii?Q?nNeEmL+FZYbnxCay1YUgYPDAWLVtpvnMsWkfSZl94wj7D+WgCH6Lt2vQhKRa?=
 =?us-ascii?Q?1Z4H+2gM/YVQ8T4BHeW65AbmqoidehBeo7ZRw2cIc3iE7y5ozM2JHDKlJqaU?=
 =?us-ascii?Q?kk+JY86cd875/51jtDTnljH3g5T0Gh6/aRZDaXFcatOaLuE17m+4e8dchX5h?=
 =?us-ascii?Q?L1s9lklr+09fhTXnqL1+A+AeMYtzhD/azouwDSO2sfz24H4L7F/6CiY0i5tx?=
 =?us-ascii?Q?IoCEE9XALw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VNP5rMJJeXJfrsEakUsQjzD+LtyFTgGXJZQXxCVZaorhReGZI8dzo8/+iCm/DEefphuIJKj/UrqfFD3+KG+Lg0LzUlfX37hK1pkwDpg83Pz8V7JAHVOb3mCyEGHk9SwM9PJEdgJUH8Tt48oL2JYizdLq/cpacJYtmRgpERfLJjCaL5XKcj6knUMt28DvUQSGvthjX1QB9hK6Z0/jyZ8AG+ZOIE5cLj3XnhVWDOkCOaBhc6XcPOQXabhZXhcwcP86FjdqUCDGl7st40gkoX5UUDvvYqVLt1oxE3bg/kmw8zC5gxUGBwMSCwY/pfqEZ4TrZ340Zm7YzsmUhazkyp+C7Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c00d06ca-3a0f-4456-d251-08deb578c9fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 07:32:32.2203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lOSugL0xwUkYFi5cMQJf5i7pa+z3DN0brM7/LDxcWmmiqj22urcuOD5bc2gcaruMjjwjQGGJN+sihVmc/oveQC8AOMmHtwuZITUv9UT65vE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7840
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779175957; x=1810711957;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cscacLNWvsEmrPAKcVvjgNKv/RpdX7KECkri5PdB0fE=;
 b=Y5/G6804NxigHy9pkgXyk2OdCSX1LH57WLN3WZsH/CQpGdDZtZoXW6S/
 NOyGaBW03qPborRiAiEoQMp8BlzxK46T843Ab2PuVEmyQEFmxNTQqHyGW
 FWHMa01PtAQXlg5U2UJv6IMxmN+U0CguqRbB68PEHnp3gWjPOAQSc5Ubu
 HtoJJ7nHFkyb4572yCFggJ6R4k5NIhRJDYM0/IrwAo6M/j8/twsHHM763
 mp8OboYsi5Yt67SHWE6yE4BPbC3NHgqZsKOjvcSF1/tNk+vf7OX4kDvEW
 AN88Qo/xX6CWskNnvZuhxJCRsa92gqFi2HcC1o/d34BJTBNv4mDKDTB8P
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y5/G6804
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] virtchnl, iavf, ice,
 i40e: store VIRTCHNL_VF_* flags in bitmaps
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,m:jacob.e.keller@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,IA3PR11MB8985.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 7321B579230
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Tuesday, April 28, 2026 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Greenwalt, Paul <paul.greenwalt@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/3] virtchnl, iavf, ice, i40e=
: store
> VIRTCHNL_VF_* flags in bitmaps
>=20
> As part of preparation to add extended (32nd and more) capability flags, =
change
> all flags from bitmasks to bit numbers and store them in bitmaps instead =
of u32.
> Change all bitops to test_bit()/set_bit()/etc.
>=20
> Functionally nothing is changed, except that iavf now stores capability f=
lags in
> struct iavf_adapter::vf_cap_flags instead of iavf_adapter::vf_res::vf_cap=
_flags to
> allow it to grow in the future.
>=20
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   4 +-
>  drivers/net/ethernet/intel/iavf/iavf.h        |  51 ++++----
>  .../net/ethernet/intel/iavf/iavf_prototype.h  |   3 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   5 +-
>  include/linux/intel/virtchnl.h                |  62 +++++-----
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  76 ++++++------
>  drivers/net/ethernet/intel/iavf/iavf_common.c |   7 +-
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |   2 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  36 +++---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  51 ++++----
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
>  .../net/ethernet/intel/ice/virt/allowlist.c   |   5 +-
>  drivers/net/ethernet/intel/ice/virt/fdir.c    |   2 +-
>  drivers/net/ethernet/intel/ice/virt/queues.c  |  13 ++-
>  drivers/net/ethernet/intel/ice/virt/rss.c     |   4 +-
>  .../net/ethernet/intel/ice/virt/virtchnl.c    | 109 +++++++++---------
>  16 files changed, 227 insertions(+), 207 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index a03ecddfb956..b2b50c1fccf1 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -80,7 +80,9 @@ struct i40e_vf {


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

