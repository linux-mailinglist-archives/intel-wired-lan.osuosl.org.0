Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9C49B4D44
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 16:14:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1310810D1;
	Tue, 29 Oct 2024 15:14:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xmS1M3I973S2; Tue, 29 Oct 2024 15:14:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 076F4810CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730214853;
	bh=X2gnjJugfE9WcPsQQXIk343jwNOB7XcjC89C1rS1nHM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uextyXtdRkBloa834jyIiwnr074ZZ3stQBltWKFZvWfy7yBGDqeK6tk+zAQqOHWAa
	 y7DNbffJ4BRTNGxUMF58hFkkgYEArJFtKoSpxI3NgUkzvp7A6kNQlVXjHQXISPpDhr
	 XI+TrLkOASjPTkA99UDb8Ev5GGxb1WNVp2OUhynUZWU6vq1EmF7cbRcxJ/viqyibxp
	 O4W6/X0KGWjqQ2LnRKDhqJtHQdRdXJxx0KgIPHHYd4QwOolerHaqIV55++d0SaxlOj
	 qV7COdvy2QODKCOiZFm7LS2fhHop+UiSzXKUiA0kG0PV99BNET448460sbr2yWzopY
	 onqk7pb8BIeQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 076F4810CF;
	Tue, 29 Oct 2024 15:14:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E5285E4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 15:14:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3FC71607A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 15:14:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GhkbkyMXMLSA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 15:14:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5CE1B60728
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CE1B60728
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5CE1B60728
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 15:14:09 +0000 (UTC)
X-CSE-ConnectionGUID: nt3voA5sROCfTM0VV5RapQ==
X-CSE-MsgGUID: C5VM0U5WSYeZCZdn9agjfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="29979227"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="29979227"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 08:14:08 -0700
X-CSE-ConnectionGUID: wS2slLhkQmCsvVu9wcoslg==
X-CSE-MsgGUID: 5guzVzUxR+ad0YSJpJ1BgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81902005"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 08:14:08 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 08:14:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 08:14:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 08:14:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oGjt6lFH9157zY2q+i8wn28k3ZP4iO2mxtZdMZx4KjsG9tHNC/OJZjVLIZn8XfZDt8qgk3L1k2lVNMisgncMMHscmsxzONLWGOC9AUkEpcTrI8MjyrmaGLkoeB5M31wF1BLaoy8CJ2BBEAuvdlPjW/DIO3CN7yo9y3fRWv1pio/hZem9IjSNHTz4cdu2RxCwpb4IbD0zFtAmCaEAFpN3JBpL8TIy6G1ZTut2Ph1SzX2EiPHbZSk2itpIdP6Vxpaft88AnDJuFjvYI84A/RAXXKSAWQ1Rl8iJmHBk+8ecFxQZK7ReyYqeJe9VlxAfbJ4ne8W5euEXDfiblSTB2O57Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X2gnjJugfE9WcPsQQXIk343jwNOB7XcjC89C1rS1nHM=;
 b=lQPgfUfKb1enX7UGqxlrO6qSPzAZ8f45AAv45VtfI9TWszHJ1Xr5TBU86JC8hq3hbkai6ExKJJ07zK89RLNrnvCE6tTal5pDv/RjNJjlERomhIzSoYZ2uj6wLfV/DlC58nlmZ5+eD05HrLu9+zbUR86S+5iUMD6xm0GvbRQwB3w55VEb4AsKiFjtozaIySlFxuavmSDDZbAsfiOPmK35r9ZxEDE1xwu/9gl/yymn4V9m4EiWmEvX6lDhzjBbaafSB1z8BGL7EOT5dv2KATL03k5KVNtDuCpQ/hqh46MCUuH1vuwzhlQhH7n+Sh0pFEz+oySVtz4ix2ZVbZljNFRn3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 by DM3PR11MB8681.namprd11.prod.outlook.com (2603:10b6:0:49::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8093.32; Tue, 29 Oct 2024 15:14:04 +0000
Received: from PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::8bfb:998c:adbb:d002]) by PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::8bfb:998c:adbb:d002%7]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 15:14:02 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "brett.creeley@amd.com"
 <brett.creeley@amd.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v1] ice: only allow Tx promiscuous
 for multicast
Thread-Index: AQHbIGNmU9vMs/bcT0exwwS/HQPJw7Kd6V+T
Date: Tue, 29 Oct 2024 15:14:02 +0000
Message-ID: <PH0PR11MB5880D5E82E2C6CEB4D1083F98F4B2@PH0PR11MB5880.namprd11.prod.outlook.com>
References: <20241017070816.189630-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241017070816.189630-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5880:EE_|DM3PR11MB8681:EE_
x-ms-office365-filtering-correlation-id: a0f3ca6c-4f9a-4767-0cda-08dcf82c5294
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?OQSDeCa+Rla++4PW77SgVK4kgOLSz8dTJNwg90Ff+W8zk69q+/+HECVgQa?=
 =?iso-8859-1?Q?6v8hXJ4VYlOS1AL03UwPq9P6lqqzoZdUVLO6Mfh0ieCWiMeK9nk6mUiVlB?=
 =?iso-8859-1?Q?/1kD0IkK3s7BcFNClFpPmBURom1lCB04fwH9S176b7V9kOaZ+Cr6bqP8W7?=
 =?iso-8859-1?Q?AxX1fznRwiaURP9foU9M/oCe+gY9qy/eIxAhUrWg2/cP3I5QWlDqEPsjZV?=
 =?iso-8859-1?Q?ZHSNJRtPT1Eo15Ep53AdHOGHSDIBRyf0u7kwgmsagj7G5L4f9zrfExER1g?=
 =?iso-8859-1?Q?aijTn4Eqk1g8AcAM+KEP9jF9rFy2xX16v+JCrovoJxZo8yhjbWKYe2hnCX?=
 =?iso-8859-1?Q?n5ktQJcFeBXlv1gjnBaFHwcFMrUceW3xpGEZpRQNZzYJ1YETy6lVoi7Ua8?=
 =?iso-8859-1?Q?Ox7zlECqc5NPrAP4aOECMKSD+bAGDy8g8Yjn9+ZO9rb2qHImLQfgDqyQhD?=
 =?iso-8859-1?Q?wdVBVdqaE4WeyLZjdwhzRA7fDEQPJVQWyv0TKArhjwTw8iOHh0bgemrLZx?=
 =?iso-8859-1?Q?qaUeoZ8fldCzZikaoMSc1HFHuDMJ7Qq43M7yxhpWcxoKWsqPLZaO8FRerT?=
 =?iso-8859-1?Q?YoENwhSyk44D2dxpURh2hqRW+dUfonGmwr7g/W28Bqj0pCr5Gp1+0FBBp1?=
 =?iso-8859-1?Q?5Nyc1z2hNeoht1cX5Vo5HH2UWEEhE435vIVTbARsmBv52u7oqBZr+73/P5?=
 =?iso-8859-1?Q?W164KFNVRjx7Icek5Zsl8xxJ9lzzjit83+63IFbqKCpWfGN1iVKP+nZJ4l?=
 =?iso-8859-1?Q?+rt3ixqOtXgnXWbdMOH4VGRYPIavzsukbeNIhJJvP6DCFJXEKdrEjWJ4bV?=
 =?iso-8859-1?Q?dl1YeHSf4wBw0JMD/PFVJ1hX5xXiQ+TAjUJ89mOrypx1ktgAjZl4vKIgxv?=
 =?iso-8859-1?Q?Aknw4k8UYno4zkdiONKSdgNHPKwXFV/pYhAPWk+VgT7V18ncxKy8OqMq66?=
 =?iso-8859-1?Q?mnZh3uR87tIs+zpsNzjkbvZwAYWh6disOVqsxXdm4AueoWmcbZaLm2AnEU?=
 =?iso-8859-1?Q?oikKsI/8hI8qmOW4FhNxiP3Z+/ugUWmzGDO2R6aB2Icm+fydO61qqIy60v?=
 =?iso-8859-1?Q?EhIQ+/GhflfEbmYazD3nyjoaQC/epDc8gpRmbRAae2fzBMNGi8kp0k8L9g?=
 =?iso-8859-1?Q?J2BPoyylKaxk7hJopG7aMV1Na4ZlhEaqohQBhHfRUN+/zZhW/uFkGiLfDv?=
 =?iso-8859-1?Q?V9Sj6OQvq5lFAoP4SO40x6XA8V4EjG4sBpTSA1xBgt7bocdNsuBHPdqozk?=
 =?iso-8859-1?Q?2mKDbTfIEIjA151M/0lyQzyJZAZk6EwwgEkBsll9SLUCcJ0aMtJh9QI+fZ?=
 =?iso-8859-1?Q?2PEeFUTAK4cfan5M9l30hXMhNkbnqPOJLqJTHswkckkkVW+xd/QeGi761j?=
 =?iso-8859-1?Q?xXze4630ZorvNZrbWRswj42/Cs8be6vCAQRI1bSdIwupf6b2/TfjE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5880.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?56BmMb8lse5DCQsqT1ij4lYFPjer9uzFyAdHb9Yg9sIjb9BUFrptBwhHiN?=
 =?iso-8859-1?Q?aYpblL6BYKe4wG8NyJropm2QXkiVZddSWHhjRBa6ad+d2HVaGXdlg7Tt2+?=
 =?iso-8859-1?Q?QAur9r2y3SFR84Br/TOZ/hcsouSGq67wRQDf1PorfEZSrKDJpr4s2yRiRV?=
 =?iso-8859-1?Q?UYzk1muZPipMMIZdT6LPGs/ncGuIVUNY33fzX55l55WmTTsaqhLHT9H+5X?=
 =?iso-8859-1?Q?reOf230Mnc1HVma3G+2bh+cxkzDztgC3zPz1jKqrE4wf8w+mnmSBLfYddI?=
 =?iso-8859-1?Q?KeT9tMN9WuQF22IlIZOdKOJDKYSKNw3kIhW0KjR7/1vYbDhr6MXKvOLNzz?=
 =?iso-8859-1?Q?PbdhfCgb5AfsPY3HGhxcs7h+ohA5cOLr36vjK+0aq+hF+rRm3pZMcTwuHZ?=
 =?iso-8859-1?Q?prj5CRaSo7vHcQdnJZ0HIqQx3bqyMcZ8VQH+ynOKsljC9/JQ2yZvF+dIrq?=
 =?iso-8859-1?Q?OdriyHcVFRn0bpwDBLTGuXN6ijK4uw52tr3VXiyYbbChqg3CgQrzP0mcXP?=
 =?iso-8859-1?Q?rOSuYXNlmRh0zw7rl4YZrTOsBGuGS8LFWaMGIlY6kRzkOO6VtCTojjvXPo?=
 =?iso-8859-1?Q?2vcoHcVVUdiSZLjl3kDdP5rwMrwiT8xPYU0A+1arWgXfb2/EGxZDjtMgF0?=
 =?iso-8859-1?Q?w8O8D+cZT1xhD8X8dS9ws1tLvb8qan6nkQChLeTKIGNWhrCMWUMa/Px2Ek?=
 =?iso-8859-1?Q?ZgGrNt12f1uY6ESJv9jH0qq/sFXDG6w/agNb6xvfKlbls5J0b6H90WtgV7?=
 =?iso-8859-1?Q?u4F67e94SitAGfaKBzdrwXBlewMiwwMJiENamhr1SHgKvuoTYjpz9/bk4+?=
 =?iso-8859-1?Q?Y6Pp+9mHhkgHddLA1lkMxspeKZFdtcAzjCnE05z204tSld5z0I5tAujkS+?=
 =?iso-8859-1?Q?pnXReCzdHuiugVFT+x3HTNRanNHsS7njfTKsp/u7ILWJWO6GERkFmKYr4Q?=
 =?iso-8859-1?Q?ATiT9/cGIuR/tI+l93ce55sQWahJh4cu3GaIH1kyPs5NaFI6gSMYn/7sEe?=
 =?iso-8859-1?Q?L5852/B4rTZOVIcS3fy7eFBt6AuIMAJbjgUZdp7iXog5wJWMOlBIQHE6On?=
 =?iso-8859-1?Q?dyG5DzPqFF/CZQoEgQw2VK7Ja1QBjeWXOmqRSfwfxEBwfFvX+ccXbmSjra?=
 =?iso-8859-1?Q?ck5fzXuJegdWLx66698Q/L2K8+Y9Njd0hFnO81l+DBkEWOVtej19NCFYUd?=
 =?iso-8859-1?Q?t8vIQ2ZbvwLHTIjR6tfbkbWGpil1uHtbyDLKztdKu3DDGLL9dprU2OfLR9?=
 =?iso-8859-1?Q?DKZ43l5rz50g5PDoLtdVIKeily30j8aEuQkeS1946XAP7TDkxnno7w2vC4?=
 =?iso-8859-1?Q?4PvouuVFMiT3l29AbxpNaZFwEXuhvX2iCV+RCYX8ka2DJAKLbku3Zd5smy?=
 =?iso-8859-1?Q?UexAuiffqeyajm3k7+veKaQzrk7TVaXFJIr9Mhgr9gwJHVEBJirZcwfTrC?=
 =?iso-8859-1?Q?ikHs2h4IX1uOCOeSmYdLdl9uaqNOZxcek8cXqaGG+uZcwwdCdcKNqBNUrP?=
 =?iso-8859-1?Q?wSq1SulkKnydacncwf9e4N83WUX2hr7EQ23u8kn5Eil4wSicbqUFsgGjgf?=
 =?iso-8859-1?Q?49VPWWUwAF46fl5ZbVihZ7zF1LmYlHBq4/jQO+SAPlREpD2TgBaohr7LI5?=
 =?iso-8859-1?Q?RHFiOTMQEWdcDzY9Uxj9H4BzqbIGXLADd7JJ1wEcTC7WnEQ41HZlRdIQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5880.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0f3ca6c-4f9a-4767-0cda-08dcf82c5294
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 15:14:02.6883 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Euw0fHvPp+4YxVW8BoEgO1Ky8RqK5ftebJtgGudinoCIFwv8NedxtgnAFQDqNwDSr39Qcv/6JSFXJ4LKaWZnZWQCu3ZMRUOFrmhvX3uaZ2U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8681
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730214849; x=1761750849;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X2gnjJugfE9WcPsQQXIk343jwNOB7XcjC89C1rS1nHM=;
 b=dB6kOARVcLRUt5CVxckygaBgdrbo/uUs3mktp9iXmQqOPo0JN+n+UNG+
 yemCqqQAEkzqtT/PyHunSeSgX1w82auapd12LeEf+QFfOJcTiTutVsIJP
 rFboXELnyzzDIdReSeGY99K2yFq0RkoaPkXkidWnr0uUtXr70SnVuCu9j
 /iUQzxOYvhzNE/zYotPs2E83HG2Uzra3KVVPIWjLbJ/XXq0caak0SXmEj
 b2tmHUBUsywE841mb49sCcvI1BPA8BRwVPkPuivjzs5V/bZV+3nOAoMYi
 Sok2yZJ2PaLw0k/y51w4MqmqCRCrUkO4H7JL1/9g9Xm7EdVU4OV5tuJxi
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dB6kOARV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: only allow Tx promiscuous
 for multicast
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

From:=A0Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> on behalf of M=
ichal Swiatkowski <michal.swiatkowski@linux.intel.com>=0A=
Sent:=A0Thursday, October 17, 2024 9:08 AM=0A=
To:=A0intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>=
=0A=
Cc:=A0netdev@vger.kernel.org <netdev@vger.kernel.org>; brett.creeley@amd.co=
m <brett.creeley@amd.com>; Polchlopek, Mateusz <mateusz.polchlopek@intel.co=
m>=0A=
Subject:=A0[Intel-wired-lan] [iwl-next v1] ice: only allow Tx promiscuous f=
or multicast=0A=
=A0=0A=
From: Brett Creeley <brett.creeley@intel.com>=0A=
=0A=
Currently when any VF is trusted and true promiscuous mode is enabled on=0A=
the PF, the VF will receive all unicast traffic directed to the device's=0A=
internal switch. This includes traffic external to the NIC and also from=0A=
other VSI (i.e. VFs). This does not match the expected behavior as=0A=
unicast traffic should only be visible from external sources in this=0A=
case. Disable the Tx promiscuous mode bits for unicast promiscuous mode.=0A=
=0A=
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>=0A=
Signed-off-by: Brett Creeley <brett.creeley@intel.com>=0A=
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>=0A=
---=0A=
=A0drivers/net/ethernet/intel/ice/ice.h=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 6 +=
+---=0A=
=A0drivers/net/ethernet/intel/ice/ice_virtchnl.c | 23 ++++++++++++++-----=
=0A=
=A02 files changed, 19 insertions(+), 10 deletions(-)=0A=
=0A=
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/in=
tel/ice/ice.h=0A=
index d2235e8bfea4..cae5cac74389 100644=0A=
--- a/drivers/net/ethernet/intel/ice/ice.h=0A=
+++ b/drivers/net/ethernet/intel/ice/ice.h=0A=
@@ -182,11 +182,9 @@=0A=
=A0#define ice_for_each_chnl_tc(i) \=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 for ((i) =3D ICE_CHNL_START_TC; (i) < ICE_CHNL_MAX=
_TC; (i)++)=0A=
=A0=0A=
-#define ICE_UCAST_PROMISC_BITS (ICE_PROMISC_UCAST_TX | ICE_PROMISC_UCAST_R=
X)=0A=
+#define ICE_UCAST_PROMISC_BITS ICE_PROMISC_UCAST_RX=0A=
=A0=0A=
-#define ICE_UCAST_VLAN_PROMISC_BITS (ICE_PROMISC_UCAST_TX | \=0A=
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ICE_PROMISC_UCAST_RX | \=0A=
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ICE_PROMISC_VLAN_TX=A0 | \=0A=
+#define ICE_UCAST_VLAN_PROMISC_BITS (ICE_PROMISC_UCAST_RX | \=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ICE_PROMISC_VLAN_RX)=0A=
=A0=0A=
=A0#define ICE_MCAST_PROMISC_BITS (ICE_PROMISC_MCAST_TX | ICE_PROMISC_MCAST=
_RX)=0A=
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/et=
hernet/intel/ice/ice_virtchnl.c=0A=
index 466e44a33c43..2fda7be60fb7 100644=0A=
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c=0A=
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c=0A=
@@ -2231,17 +2231,27 @@ static bool ice_is_vlan_promisc_allowed(struct ice_=
vf *vf)=0A=
=A0=0A=
=A0/**=0A=
=A0 * ice_vf_ena_vlan_promisc - Enable Tx/Rx VLAN promiscuous for the VLAN=
=0A=
+ * @vf: VF to enable VLAN promisc on=0A=
=A0 * @vsi: VF's VSI used to enable VLAN promiscuous mode=0A=
=A0 * @vlan: VLAN used to enable VLAN promiscuous=0A=
=A0 *=0A=
=A0 * This function should only be called if VLAN promiscuous mode is allow=
ed,=0A=
=A0 * which can be determined via ice_is_vlan_promisc_allowed().=0A=
=A0 */=0A=
-static int ice_vf_ena_vlan_promisc(struct ice_vsi *vsi, struct ice_vlan *v=
lan)=0A=
+static int ice_vf_ena_vlan_promisc(struct ice_vf *vf, struct ice_vsi *vsi,=
=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct ice_vlan *vlan)=0A=
=A0{=0A=
-=A0=A0=A0=A0=A0=A0 u8 promisc_m =3D ICE_PROMISC_VLAN_TX | ICE_PROMISC_VLAN=
_RX;=0A=
+=A0=A0=A0=A0=A0=A0 u8 promisc_m =3D 0;=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 int status;=0A=
=A0=0A=
+=A0=A0=A0=A0=A0=A0 if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))=
=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 promisc_m |=3D ICE_UCAST_VLAN_P=
ROMISC_BITS;=0A=
+=A0=A0=A0=A0=A0=A0 if (test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))=
=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 promisc_m |=3D ICE_MCAST_VLAN_P=
ROMISC_BITS;=0A=
+=0A=
+=A0=A0=A0=A0=A0=A0 if (!promisc_m)=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return 0;=0A=
+=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 status =3D ice_fltr_set_vsi_promisc(&vsi->back->hw=
, vsi->idx, promisc_m,=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 vlan->vid);=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 if (status && status !=3D -EEXIST)=0A=
@@ -2260,7 +2270,7 @@ static int ice_vf_ena_vlan_promisc(struct ice_vsi *vs=
i, struct ice_vlan *vlan)=0A=
=A0 */=0A=
=A0static int ice_vf_dis_vlan_promisc(struct ice_vsi *vsi, struct ice_vlan =
*vlan)=0A=
=A0{=0A=
-=A0=A0=A0=A0=A0=A0 u8 promisc_m =3D ICE_PROMISC_VLAN_TX | ICE_PROMISC_VLAN=
_RX;=0A=
+=A0=A0=A0=A0=A0=A0 u8 promisc_m =3D ICE_UCAST_VLAN_PROMISC_BITS | ICE_MCAS=
T_VLAN_PROMISC_BITS;=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 int status;=0A=
=A0=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 status =3D ice_fltr_clear_vsi_promisc(&vsi->back->=
hw, vsi->idx, promisc_m,=0A=
@@ -2415,7 +2425,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf,=
 u8 *msg, bool add_v)=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto error_param;=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 }=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 } =
else if (vlan_promisc) {=0A=
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 status =3D ice_vf_ena_vlan_promisc(vsi, &vlan);=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 status =3D ice_vf_ena_vlan_promisc(vf, vsi, &vlan);=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 if (status) {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 v_ret =3D VIRTCHNL_STATUS_ERR=
_PARAM;=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dev_err(dev, "Enable Unicast/=
multicast promiscuous mode on VLAN ID:%d failed error-%d\n",=0A=
@@ -3224,7 +3234,7 @@ ice_vc_add_vlans(struct ice_vf *vf, struct ice_vsi *v=
si,=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 return err;=0A=
=A0=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if=
 (vlan_promisc) {=0A=
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 err =3D ice_vf_ena_vlan_promisc(vsi, &vlan);=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 err =3D ice_vf_ena_vlan_promisc(vf, vsi, &vlan);=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 if (err)=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return err;=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }=
=0A=
@@ -3252,7 +3262,8 @@ ice_vc_add_vlans(struct ice_vf *vf, struct ice_vsi *v=
si,=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 */=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if=
 (!ice_is_dvm_ena(&vsi->back->hw)) {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 if (vlan_promisc) {=0A=
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 err =3D ice_vf_ena_vlan_promisc(=
vsi, &vlan);=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 err =3D ice_vf_ena_vlan_promisc(=
vf, vsi,=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &vlan);=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (err)=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 retur=
n err;=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 }=0A=
--=0A=
2.42.0=0A=
=0A=
=0A=
=0A=
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>=0A=
