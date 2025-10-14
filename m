Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D97D5BD801A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 09:51:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65EAA402AC;
	Tue, 14 Oct 2025 07:51:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z9C-M7ZUGEO6; Tue, 14 Oct 2025 07:51:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D57AB402A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760428266;
	bh=QGjr8/PXS8DtxTR7ZHxwP/2lIL/0MtMYkxvjP8pSwy4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xG9hxYlaGHBQO7NxIT0wzVi7Q6OZLMCW5yAfUG/2zCdrJTN2pV0oPBCLLSDTLfW1C
	 FzBOJS6B0xTIsfXqJX0B78E/tc8g1X8PUIEsSABHuh9HoDIB7SccBI01NwcVugVV9Y
	 5tUcuPXO9oMVQmE3/lHJWzT8ru2LP1rSX8iURfpz/CHh8B5+lMnnMq9GRv+uxmn+NB
	 91vFLkFhNfuiyJVgeb2rPZv7DnhmkuMSaVFSCCyOuJKlkcnVBi7WMlgt4yUb0fCj+b
	 Lj2wpYNWdYlUVUKMicw0nM/ztFz2HEoGknbxVja0CvgGKqMjoIyCH61h/rY3L/jRnT
	 eslMpBw1mWVrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D57AB402A1;
	Tue, 14 Oct 2025 07:51:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A8BCBC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 07:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 60EA96153F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 07:51:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yz5-88UQ2vAi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 07:51:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A578C6153D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A578C6153D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A578C6153D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 07:51:04 +0000 (UTC)
X-CSE-ConnectionGUID: zVeMiPj5QqWxvtncKgmJdg==
X-CSE-MsgGUID: gA+2Uz4+SQWJ6lJyGCOsdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="80019297"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="80019297"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 00:51:04 -0700
X-CSE-ConnectionGUID: NBOJ00I2SWOGKq/4EbmIyg==
X-CSE-MsgGUID: gOE8qt1dT9a4XAvGFbehnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="218955840"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 00:51:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 00:51:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 14 Oct 2025 00:51:03 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.0) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 00:51:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XWsTy28Lnp9vLe7th7TYddFtw+plH972rqB84JWj1sqYwKSIWk3OE5ThmmULfk99kYVrlnWv8SkFo0FNvvAdGQSd7AMu+UNSsIRi3/3Vu+3PaRCztCibT+t3IqYAu09cDY/vRFjxTVwFAjMZoKXaYUBb90RRfFpTwykD9cSQ6I84OCIpjIDEaZV5IybXXXdf1pA9OL+2KNQvCwYuXOwzOrCJIweDNOocxRFoyRR0RIygwg0WpBZNePAonxintCykg2vVRdXirZT8UtzrPPI6La06H5EDwPx1o9j3uxmqwTt9NyCWo/PIvTzLVhTnPVNAuAnTBZrGevUKL1EM9i52FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QGjr8/PXS8DtxTR7ZHxwP/2lIL/0MtMYkxvjP8pSwy4=;
 b=N6nCSEEOg5CVVqSvrCIofMam8dFRtat95Ux/BYs0LnrHkATDh5ogcDjV/jrkSKGopWJE6/rSh/9y/J7furYP3i+gHuzPA4k8TzQDZcxnGSHT1qwM70Q6Atmn3D8svmBrHjMfDvRUktXMK1RTL1fNH7DCLMCmMLRE2Po0R7PO9J8yNSvi2cR5ICX6+GXybzIqTpJLO/LqM0VqwSrLYYxa1CNokYNxyYn7MWbHv1pqljUltNu+VR4ICMSGn360DAoInxH+0yxQEassrsGnvTu/TgfsVYzNoJp4YnibQJ9ofjrAA3BOIr/PS8pGVLG2Yodnn7EMJ0kYaN2e0byNxseghw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Tue, 14 Oct
 2025 07:51:00 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 07:51:00 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v8 8/9] idpf: avoid calling
 get_rx_ptypes for each vport
Thread-Index: AQHcPJaVB4WmYfyAGkSmyb2G2UMZwLTBRUYg
Date: Tue, 14 Oct 2025 07:50:59 +0000
Message-ID: <IA3PR11MB89863A24935B6C2B6425ECFAE5EBA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251013231341.1139603-1-joshua.a.hay@intel.com>
 <20251013231341.1139603-9-joshua.a.hay@intel.com>
In-Reply-To: <20251013231341.1139603-9-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8253:EE_
x-ms-office365-filtering-correlation-id: 4c20e497-87a7-48dc-d21a-08de0af66aa3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?dyJ5ai+S6u3k+8XKTiTk4O90oUyMg96vMGyTiZ2n9Ki0amQPHeLTS7bkvypc?=
 =?us-ascii?Q?mxTk7hyXQhWX0aCh0HFKG0cidZhMoepkzfXDea2IyjQeVJqwbf03+ONvMQlj?=
 =?us-ascii?Q?MWDnLtvfjyoAh1Xf+/d1LC/6Qt+Qoidyrb2HYq5a0WWm1S44cMZvDzNj/Jds?=
 =?us-ascii?Q?SL65ohtjTJFOi4+v2bYvDA3PA4FpIR3bnQCFk4FiHRtYubQfzJXyaB437cc7?=
 =?us-ascii?Q?OoRVku49s8j+Y24+6TC9TnuciHMVc8WWHzZtRXzZWDk54SjWyNWcEmBIHw4s?=
 =?us-ascii?Q?AqNACbiVF8knu8DLgkD7tX8lwkl+Gf/adwwqPgifc2oLs4jDw9xdelodSdXg?=
 =?us-ascii?Q?egHw0+L9FWn7CnqtPme6Yy4jLc9eW141jNMPwWvJcbaf4+HKiwSSM+xg0XPh?=
 =?us-ascii?Q?5n+j7Sw+q2JyHZpn8uVA/2q0HEz1lAuGP6KchG4dDAk+DzDpS8LEKVyIGOB8?=
 =?us-ascii?Q?8w9mimIdxgoAbdwMHGWzWaJKq0vlsoFXij0d1E5JnHwDM/FaRIYRRuhNr6fB?=
 =?us-ascii?Q?XLqe3RFCMKckCe/4hZzB+wIdKSbITrSwgAHE/VLUHOggErmzNcC/jnYWbAxL?=
 =?us-ascii?Q?0YbtCIGsnxUaTuIoovN73Px0zSyLA14JdZsNPU8ucblnaHwxdTLIzfDtYk7O?=
 =?us-ascii?Q?99qkDyacXbuz+Sva5uZoKFoo95HSPRlIJGH4232ku3CSjZ9pEts5jVbYcaBi?=
 =?us-ascii?Q?J9B7XaxeM3IAI75G4p/MuoyjVS2R1sbC64jHSJqEAGoOlL8XUQLcZi5SULd7?=
 =?us-ascii?Q?S+KjfaV1qmj7rxQS00jqMknzmE6gXbQHlQGIB3oiGALJNZse/cq5JhDLgtGL?=
 =?us-ascii?Q?z4Pm3hnxFljQuErKtokH5kBtmPhNr9SUz+pxcRtD35Z4Hxx7KnMc2FiwaOUL?=
 =?us-ascii?Q?uMZtDGWfbf7NHYl1bY9O0vf/sCR71N1sikgKusxvyvXtwVGxf0edRtHbti5h?=
 =?us-ascii?Q?vxxeOXRZgGRko/VFJGTcf0QtHzz3BUlizNVzYZeM/cooHifrb1ZiJ0sGTDLF?=
 =?us-ascii?Q?DfpdPMQXVFqE/rBa5QFJzVlawuJSA1114eg7cRvWHgxnbqDS2jlx6T3XG0jF?=
 =?us-ascii?Q?XF3RzvIZSPilLPKPqHAciPtIzJdEUeUBvS44iUniSquBOf+O8TG+mZv7gKiu?=
 =?us-ascii?Q?ZNMyL+haPCujUc59vlEKuvrdroccKPMG/VEvLGtt0wgfeuaKAu2k4RKP+9PA?=
 =?us-ascii?Q?rY3lb5Aoxs6etl/CWeZFQnomGq8bVVTgfhrcVPHzxrMDvfiFtF58bCnBnXzk?=
 =?us-ascii?Q?bjx2vpWwq3Xy8oNPlRTMaCmBwdSJPeMFT+bAC4kPNrH0TOpiFx5ECZ0X1qem?=
 =?us-ascii?Q?pGmoNmgt8E+bxIg9tKz9GbfaDVxIv5vwl8+3cRgUIg4olDtei2FRBODTRO6e?=
 =?us-ascii?Q?RkwJRmnkD3VrW5RTd2zGsqNzOGXJDhY6nd9lB6gssgfXUOCbofpktpQ4j9D1?=
 =?us-ascii?Q?oTI6xyl/zHNcvCNCZFK5BUXJNFi24ebo9lHXBo+7h7ZyZE9Q1YPn5z99A0pl?=
 =?us-ascii?Q?HBEez3AaRy34qW0HiU03kbowOVry20Zm1Vg0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u1Z0FKR9xQQf0yFzbRnz7bz+6uRvVml4H3LVjik0vYLz0UiMgB8pkAqLcQVd?=
 =?us-ascii?Q?tMZTdlTuxfx8vEqvgagmWLRIjzUkH66ivuipqsze9AwoNyf/GUPMLqShKpHy?=
 =?us-ascii?Q?Gzt8UbJSleM/XBTbdgK0G9vTKniNIUQreVUMhi4caiNyIeGkVYY4gP6v83C4?=
 =?us-ascii?Q?LfefyE+qu6YjoPkrUWAUisjCtgeglY3O0x45TXkLAZIA72jN+CAL/7NMKhix?=
 =?us-ascii?Q?JeE/q7Ng+RyqOtqvfb9XRfyV0WItweisRZnhj4AV1uPITWR6bPEudUIDMHyR?=
 =?us-ascii?Q?2kC5o7oEdcOwK1H7kFsjIt17CppHy6ieuQJCxSG3Mi9/IrlBZIsDlWeXlOax?=
 =?us-ascii?Q?+CokoBSzpzWdN5nF4B6tDW9l2X+jeS9n+MVcf3M/IGZ9CE/YaUqk8/twJwdo?=
 =?us-ascii?Q?fcaUGZTVp41FVVdWF5pj/iRvNDlCNlFmStqekfDTczfRX8U25n5KUIjJZNFi?=
 =?us-ascii?Q?GPKQuGy5Nq/IKqal1Ol3J//bLkbpnOT9/oq16iybNljk5RD3IZq2Zol5Ywui?=
 =?us-ascii?Q?BZAvnRgxngsvnrgnNaNhd1IpXGQBkH7qdVorcwSGKqiGMds5y2KHf+OA9iYS?=
 =?us-ascii?Q?uO35eQIJYbFM3a4l3a4BX04etejqYaD2jY0uw0nzvkZBVYRNANjN183FTohX?=
 =?us-ascii?Q?5zRwya7yeqaf0IgoUVHpSErRjp3ftDa7nd38YTR9NYPfa61fgjk/WviaaKNy?=
 =?us-ascii?Q?zgLTD1+QD+mI5Z3a+69fbEpKPRNrFK5rY9g6ayZa8LRgOWNzM+0eZinhC9MD?=
 =?us-ascii?Q?TDLeqnUCNUTamvilj2Oj1518Y4bWN1HH7qb4/xaMTrIDpghe0neOjSNy+8Jw?=
 =?us-ascii?Q?upK07CYHHJZpI47AT6um/Rncxu3i9QZmpnf5lmKqIgLq/GYkVBh4nFIh6HQy?=
 =?us-ascii?Q?HqToXih2UyxzIL0iPkEBACXamkuEliisCXjk+nz9bfrV/8wXKp9Ss0kkVJzH?=
 =?us-ascii?Q?nEeJR2yc4IpDb2YeIQIrFk/aNfdP6QILU0MVacjKKWvVhaesS8YLdD0Fl9FE?=
 =?us-ascii?Q?XCOPH4giuNs7YxU53vm0uY5vhNRwJNq5hQ23XJ2Kbw9mJ6p4lQPfnLmBHFoq?=
 =?us-ascii?Q?KHqKK8X0VQuPet1d924auZyO6qUM/YQEDm3FJRVjdjHDIbHPKA6Xil0E3utW?=
 =?us-ascii?Q?kehVvwi4Th+RmmPL9sD80GOgpc4iaE9TXCX/fKnL689C9iNQERro5r9MJpF7?=
 =?us-ascii?Q?9QZ7d4HvIXYH0ntnjnQTtghzs1qjedXLJw/azKoG03Rc76jNhTj/z9R3W+lr?=
 =?us-ascii?Q?yXOFhY1PQ08qB3VeVXk0IfnKnS9/HZ+Pc/YVRmk4ZCNhAxsc1hymPeYtR/6n?=
 =?us-ascii?Q?Jfbr2YPJvgXY724nnirbIi2TgvA1YZolknTsCxltggSfhYdwS+8DpV5xDKta?=
 =?us-ascii?Q?eF9xShX3riuDRCtZMQZ/qiypobK/bTblpVqCwFgwAodWnNR9d3gscu6oE5tZ?=
 =?us-ascii?Q?ZX5TtVQIwRQ8RwamXVaR2aqrk2La1MnyylZl9oFWrCsnJfq6Aty7kINKSMJ9?=
 =?us-ascii?Q?d1kDgdgLzdnJnAxLeNLewg02o8aSfGMqbcmE5ouinwSe80qaq5yINM65xAuY?=
 =?us-ascii?Q?JD/xahoXOzHUso3T/7W5/NLVbs4Xle6KNYBxqRBEtFi5MQSch6+DRLBb30S9?=
 =?us-ascii?Q?ew=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c20e497-87a7-48dc-d21a-08de0af66aa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2025 07:51:00.0195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AFRb5nA+TiibINlrvXrestPoJtrrMcdA6kd//CI1HGAJj3gCp+WsDoQsjsEybDkc1ZwpypNI7pIPq6SojLn3qVkfPphnn0PUgoWLK6Z4Ww8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760428265; x=1791964265;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QGjr8/PXS8DtxTR7ZHxwP/2lIL/0MtMYkxvjP8pSwy4=;
 b=fYCZ2CY48PfodJNN8LWk6bdzDcMqtEaGz1c4heZSRsS+lSdLmnvNQdNe
 wTW42poGcaaNCKnNGgtffsS0mlAhTd2BORqiCcF3IKng+djorjDFsQH6+
 p9tUEApAphviabcRT+CEnPZwWpE8aqtFGa5ATNcQwmDHShGwYnLmppUzm
 cCvFHoRXxLSEfJegZwP2sfaYsPvolJ2/y3vhbsh6MLSimHCGfAqaBbNkm
 hhxxq4fJ2mTl/DCsa1u5u6nAOrQKOeik6Dj72o8upnUj4flJuk3s9TifL
 89DRJjHvOLFyL/OOnTRtQR0f6Yy/xcWSNVUPwrIgzQmQjSgWEoRNTaK98
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fYCZ2CY4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 8/9] idpf: avoid calling
 get_rx_ptypes for each vport
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Joshua Hay
> Sent: Tuesday, October 14, 2025 1:14 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v8 8/9] idpf: avoid calling
> get_rx_ptypes for each vport
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> RX ptypes received from device control plane doesn't depend on vport
> info, but might vary based on the queue model. When the driver
> requests for ptypes, control plane fills both ptype_id_10 (used for
> splitq) and
> ptype_id_8 (used for singleq) fields of the virtchnl2_ptype response
> structure. This allows to call get_rx_ptypes once at the adapter level
> instead of each vport.
>=20
> Parse and store the received ptypes of both splitq and singleq in a
> separate lookup table. Respective lookup table is used based on the
> queue model info. As part of the changes, pull the ptype protocol
> parsing code into a separate function.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> v8: rebase on AF_XDP series
> ---
...
> --
> 2.39.2

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

