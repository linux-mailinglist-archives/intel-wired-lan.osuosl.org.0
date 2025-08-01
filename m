Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 362EFB17D0E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Aug 2025 08:58:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E6B04120D;
	Fri,  1 Aug 2025 06:58:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WNmhQVcLoTFk; Fri,  1 Aug 2025 06:58:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD37341206
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754031524;
	bh=3V91UZfhB/YnnPWdtuJ3qbuV5+t6Zg1NLwREgSQSHL4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=36nFcPjN/9UEy3DZaJt6/ctVCZ7bGPEXUrgRuZuSXFYmsypZfWeRN0ws6N08YG3j+
	 zyHQV0tqhPNxm9HlhcP3SqCHwj2Wyo5MUqYHIytptEkAUp3GqchVZRCzpcIaSQPAn+
	 8Oltxv76XXE2yb0jWafgrTsoV6SFRjBLdfrq4gprY5UuGvYLYPl8NNPdSqEIjg7DqH
	 5dhEV7EDjrzDHlTLWWKX18wB2MIUizVvuue9ciJEF7OheVIgRilbAbuBumPnRMULEX
	 letvVNmPe+9irCpj+wmd+hjQqjwEdJzwrpRiLZci9f8OBk03tyXF1HhycdIjNi5r65
	 cVlC1TLX/qHxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD37341206;
	Fri,  1 Aug 2025 06:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 254A1C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 06:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B3BF4049D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 06:58:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sdxEa4EMPSIH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 06:58:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DD01C4021B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD01C4021B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD01C4021B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 06:58:41 +0000 (UTC)
X-CSE-ConnectionGUID: +JNbf9aAQiimgOacgi3HQw==
X-CSE-MsgGUID: dAgEQoiTTq2RwiJdcBQa3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56515521"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="56515521"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 23:58:41 -0700
X-CSE-ConnectionGUID: 4zTLpTIRRNicTDYSz6hJpQ==
X-CSE-MsgGUID: Z6Tpbsh4TTawwE79fn8l7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="167705561"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 23:58:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 23:58:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 23:58:40 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 23:58:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OpYZBo4xCrMzeMN7y20/98CrX81QxyhqcMe7HuGTbId2pBXEmXcfxWW3apDZ1DL5uFuC9nOE9Dsarwe/2YNitrj45Dv3jk714ngUkKQFs1AmcQ/43QfbxKnHkXzQzrQjYrwvOtLSJHD5TJbSDcyZqEkDwU22RlFbKz9dvJeRlC55jofJ3N5RKZQiymr25+yJWqf5xE45bzXyLEryZi9WCapvqyxcOa6loodWjFvfm9mD0iXxlCfoep9WmhP0Fala3poNKsUl/gnZ1OG6iIRvV7/lrwdEcyJZql8MRJ9SJ7RkvQ8A1sRNOniun5r+cDqc3vBeFmJOdEYE1hHYhOJA8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3V91UZfhB/YnnPWdtuJ3qbuV5+t6Zg1NLwREgSQSHL4=;
 b=hPHdVPj9KD/z46EjY+Vdz8Jdl0NSrDCD/SOyZ8/Q3z4SfwYr/GeLeeZEGvZ+3HlRBAmRrEKtdFtEAEGycILQK7IX2mJMmK+PZINxPEvbJ/uWsqApQJ1gS3ri/qOe+boPpYtLhHHaeAV7yNHc6xqwDEeOovJHt4PqYzE3A2TEHjSO7Mhrp8/BGKRH4TQxjlZ+lEn6D6rrNbiJ/o0NsX9qnGsV6uVzwNbqU4dfGxeKkUns70t4BrKHibscYeQIfUFsSkq/p6G636aF8DJySRSV76i18R0hiWRVL6Qnx6ixoIaN0ppPQklvTM6Xr9Udj87g+V0Gun78/1RTkiVQd1Ofvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA2PR11MB4907.namprd11.prod.outlook.com (2603:10b6:806:111::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Fri, 1 Aug
 2025 06:58:05 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.8989.015; Fri, 1 Aug 2025
 06:58:05 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "dhowells@redhat.com" <dhowells@redhat.com>,
 "David.Kaplan@amd.com" <David.Kaplan@amd.com>, "jiri@resnulli.us"
 <jiri@resnulli.us>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: prevent from
 unwanted interface name changes
Thread-Index: AQHb7x+xjsr0G1rwiUe9F2UkadXjoLQ2OZFA
Date: Fri, 1 Aug 2025 06:58:05 +0000
Message-ID: <IA1PR11MB62414985E00CF996261118BE8B26A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
 <20250707085837.1461086-2-jedrzej.jagielski@intel.com>
In-Reply-To: <20250707085837.1461086-2-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA2PR11MB4907:EE_
x-ms-office365-filtering-correlation-id: d6801208-bcf3-4c13-e578-08ddd0c8c402
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9vEhOJ7l2mFik3MSJdONit41mavhT29QRrNlNd3+v2bVKpVLAAODKoZoDvfL?=
 =?us-ascii?Q?mqIRBpRf121Mp2FacA7r6idPR2IRJAaEDB3nUK3E4ob2Kv/qISLFX3S7aOse?=
 =?us-ascii?Q?UMEtCnUU0n13VhEGKCzXvdDA+hCY4u2Tjipm9YDUAXnFQ3dPwFGb0AhNBZ8F?=
 =?us-ascii?Q?2RPLs612blfeKImxbNWR4yACTmTl4b2JggyqWCpIO6mos1aM3uagI2DOWIFq?=
 =?us-ascii?Q?1XRNldXcZCzYU4T4yVx4aN9Qvh8ZJZ84qjKh48a9Nj7e6XZ5PDFQo9yBCTV4?=
 =?us-ascii?Q?3bSEOdmpanSt+1vNo786AmyOh76BLbKdMrqY8YqHi5e4CHJirWMpzVbp6RrT?=
 =?us-ascii?Q?bbCbJXcnsBkVOH6NLFyDj4yfDshW0nbX9QvwhTzaNoNXiGX+j8BLn0szCVtW?=
 =?us-ascii?Q?AtOFDAw1IruSNKK4YFwI1AzE8t69GpKJOvGH6SaavattSCF/Hxl88E/H2H1X?=
 =?us-ascii?Q?LZhLyE7ewCJQ9e/i1dS1KQiffNZV3zmwXPvWz6FgJq10fEwIdI+ZsdElh6Fg?=
 =?us-ascii?Q?f3aqvDGluykGc+NE1PdZQO6pf8ZzAAsjXAv8YFHOixNHnS0Ph91fXIw73ho1?=
 =?us-ascii?Q?RYSRG7fi/wXrmcx3IgSWEG451hJjg+8dliJzqpqdkyNAF2fp7h1kQEO+5IAn?=
 =?us-ascii?Q?Pq0GSBpBwbjq3LUcWxXm8Yngnq+LJAY5375F/Zw21ewldyCGPr53rq8ab1YJ?=
 =?us-ascii?Q?aRH7mXlukkXB6rPa3gGJxH0o1B4GKEpKIVv4+luWowOFA2/7ZMrh5HnxWi7L?=
 =?us-ascii?Q?YBbfbyw83HqoEnH/1XpK12+JjMXHXWWfRkqGODueknvZZiOF3EpT0sI4sITp?=
 =?us-ascii?Q?Rip67TMK3jtYmWWzHbSLBRVO7wi4zeljAO7MT4VAsf31vceKuLjWcheJG+jJ?=
 =?us-ascii?Q?DkZatcSk+qeNlkB4XPun6Cyrtiv6ZVqyl4nwY90o8kUt9pxBD1IVcIay1Uxe?=
 =?us-ascii?Q?wA9PLOju/+DGqslAUrdCEBkS57PGdO1tMUikMm+KI/lKTsqmtPFvi5jw85Jc?=
 =?us-ascii?Q?VKgJc3ntbbV3Ojq2zeMDpQhlVYVs2+n3fdjZAogExJI1CyT196p8QUgcMoP7?=
 =?us-ascii?Q?uPwusgNbCB4TXOewNr9Kmxbg0S/KFOUFfsLplYo9xjh0RhXfMCUrQ26QkKIN?=
 =?us-ascii?Q?K4xQUxFQpccF4xJqi9CmK14XpXvYOXG5iKFFruoA6N/FrKNLab6CLw3Volxk?=
 =?us-ascii?Q?6QdT3z0HREJs00WD3aTWqS96GFIqc4I3BznxnPsw/9EzRSx2XAwq50cfvsTI?=
 =?us-ascii?Q?mPtLzXFA34ulX+XhyZSSBQ7FyeY2IU6OCLAVJyceqjqoEjHikl/WKUtdkv1M?=
 =?us-ascii?Q?JEecbZ4lfKuSunCFYhYNWzQ+DuzJokNih8TKqoaD96JV+SUhxrUVE3vu4VoQ?=
 =?us-ascii?Q?LPXUrlGQXcZRncIO7NEQQlVD+ts4s8H1Ia4MPrxG3Gr/YwFkYaEGBrDcpwj/?=
 =?us-ascii?Q?SFxS8Fgmpkk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r9yqPVWOUtAuc3qfZVMUjsNR+e7ZlZ+0fDn42/2IeZYR0Zf78oJh4ty2OOtm?=
 =?us-ascii?Q?/6mIEWa/s0eZNfkQzIvv9o6LSYiZkeHkTlCEFEYrOPxuvKSJ0KKhNt5qoUkH?=
 =?us-ascii?Q?TcOaFQU2hhvNaPZasAWpxXIL9Ox++cE5lmWLLiHJyn25bTWXa+0MWWL7PiBe?=
 =?us-ascii?Q?Qv4Jnw7ZXj86aSfj/XeMVK2LgO20H0lOReJsFoRBBA7Fy5W0f9sppXvb7cHy?=
 =?us-ascii?Q?F/KNQ6p9+x0ZqIsMs4bVAYNKmLUAl7+bXFhxrhAZcN96B10cshe0skam5uv5?=
 =?us-ascii?Q?GRHaxFFrZWrplGFblY9gGwnWq+MwvdvFZbxyG3xHouzfNCAIFRCjHTTOGURs?=
 =?us-ascii?Q?o5OiRd1U3rDQoxLS3QpmP1LJNIjgqqvrJO7ehkc3iPAE2d4Y1Yw2VrEnm0X4?=
 =?us-ascii?Q?g+Sg4NzCD5YbXrYGaL90wJvF9EbxMnChF+oGrY5dp8JIgCSYFCBgkF4p9/kB?=
 =?us-ascii?Q?25SF4/J7TaCJMS5I3G+6aFfJv0tPB51bqJOADmlzfL14O8LDs9svFgHMAHfQ?=
 =?us-ascii?Q?i8drTpRsh3/2Q8HJm54bKYXpRNJSewQymBU0nn+L+XvrYohMX5KbzWWqI158?=
 =?us-ascii?Q?COi9hmRXWY0DV4pxkUOJu6SPkSIQhgvL0vverUCTdQT/05kzz5YwMjlV2dal?=
 =?us-ascii?Q?IFcXK1MtSnXQF4yADRcMQszwMFrihqxGhwiMoevdsqBImdGRPTbdwiFQJr96?=
 =?us-ascii?Q?wQIMS4aAeNhpIQ0Wxg9EKyavQXeCiqpAs8W5fcOqa0iq2oWMxHRVv5ZrgFlU?=
 =?us-ascii?Q?klM6/P/rYxst4wC4mSkL9lG6ZQtOXyBtPhd8mHb10IRMbOaYsvsV7frkEGtt?=
 =?us-ascii?Q?ZhN9GxBOzpK9arqxDiM591bRC1TeRwelhYXhJGDEGG+GAmEhfv6TKH0NHNaQ?=
 =?us-ascii?Q?CctXAzf9ssGHkrj36FuSPzuok58l8r3RAPWBuqB6CufQ+Pgy8YPusIxbx3dr?=
 =?us-ascii?Q?2Yo1BHxP1qoEJO312u1vT3z3EOVZCkEX6RXCOpvbYL5Nti1jDN/in/as56Cq?=
 =?us-ascii?Q?jctYqmbvoW8019rElnoXkAL5B21ikahuKa9cm6HrTENXFu4oR2Kzv1BLBn3G?=
 =?us-ascii?Q?lh1dm6K45d9JQ54eIRczuXL1KnwxPmpxJ8excYuq7DzxmCXlNSGTq6fIGuXh?=
 =?us-ascii?Q?LnhEErUqnzZ86oNriba4GGXY5SBmDiUCkH4n+h8AFwqQZL8WdJZNAJHXOHNc?=
 =?us-ascii?Q?iyd1aM/2PhkIfrfroxNBfq/cFjY+KO5ny/Cpw1DtlDAL3aim9jglVuA3avNp?=
 =?us-ascii?Q?vMINEJfmIZwTLIfhRSMTvW09dFojkMZlFKm/UEpcwtR6KTp9rOzsOjE50avP?=
 =?us-ascii?Q?7VHH9D88467Ys6P3GJpILfu4oSPHB8N+qgNMNuNgrvZ1pfBRTEN5NJOyRRcR?=
 =?us-ascii?Q?fKf7Ssu+9qPPLck7F74In5hkavu2zFloWwAFDorlecYqnRH4stZi4pHDXmlU?=
 =?us-ascii?Q?STgpZLXu7TsyYBlZoT/GCztMR6Aikx7pK4/8YHFjc9fkos/LsS+kKpGzQr/5?=
 =?us-ascii?Q?zR2Dj2lmzMGOmJuYeJnWEb8iSc/xMI0nThzn2vpCod0AmYNiPZRQHfIMaQeY?=
 =?us-ascii?Q?4cdD4yGLLlNHoA6/YkMd3acdA7rxuQs6VvoHY5Xe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6801208-bcf3-4c13-e578-08ddd0c8c402
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2025 06:58:05.6607 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5QUwF9HReE3j+JjWwwhoBLJUIW4H2oMAQlqGVvgd4x8ilTqIIUdFovI+ymsYBQTs7aFmFvnXEqOoKKcXvFwCJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4907
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754031522; x=1785567522;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PdaJvbTskqW78KxiVmDOXv0Bud15vX6I4asTPBp/UVU=;
 b=DAbrW8dKF1CNnu8AjjpTgcIAyUAaQLoV9nuZiNlhUy8knH08i4j+gqD5
 E3wwjdu24bNveCIpMTXym0T3LTMON0Wry7moxCGJE6UxlMO6L5Xi2C/7b
 UKKulLH7f2coeQfBZDDqawCAG7tzzSqlrcl4uH8FIfvmA2qarDJs5iWc6
 Oe/Xvaj/O7P5PT9V0fFI6Hx27zKZ5+RKQQYGDPnLXgbKID+Z+LzvMjkIt
 D9BDSSXaRWiaZmToEu6OwVp7dT3VzmuifnaWhe0k5um26S7PCJ/X50bY1
 /vQh5k0x4q4K3kYCbsPKGLIgF2cVj/wtw5XrzQrlBaQkFcGxp1Vi6EpzK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DAbrW8dK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: prevent from
 unwanted interface name changes
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: 07 July 2025 14:29
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.or=
g; dhowells@redhat.com; David.Kaplan@amd.com; jiri@resnulli.us; Kitszel, Pr=
zemyslaw <przemyslaw.kitszel@intel.com>; Jagielski, Jedrzej <jedrzej.jagiel=
ski@intel.com>; Jakub Kicinski <kuba@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: prevent from unw=
anted interface name changes
>
> Users of the ixgbe driver report that after adding devlink support by the=
 commit a0285236ab93 ("ixgbe: add initial devlink support") their configs g=
ot broken due to unwanted changes of interfaces names.
> It's caused by changing names by devlink port initialization flow.
>
> To prevent from that set skip_phys_port_name_get flag for ixgbe devlink p=
orts.
>
> Reported-by: David Howells <dhowells@redhat.com>
> Closes: https://lkml.org/lkml/2025/4/24/2052
> Reported-by: David Kaplan <David.Kaplan@amd.com>
> Closes: https://www.spinics.net/lists/netdev/msg1099410.html
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Fixes: a0285236ab93 ("ixgbe: add initial devlink support")
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: use new flag instead of creating blank implementation of
>    ndo_get_phys_port_name()
> ---
> drivers/net/ethernet/intel/ixgbe/devlink/devlink.c | 1 +
> 1 file changed, 1 insertion(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
