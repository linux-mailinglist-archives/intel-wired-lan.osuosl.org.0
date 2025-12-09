Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E44CAF3E0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 09 Dec 2025 09:06:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F03D84912;
	Tue,  9 Dec 2025 08:06:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RHsrm4mlSXrD; Tue,  9 Dec 2025 08:06:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E87F084648
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765267617;
	bh=HILMwVpKgOz5ohyJj5PCC3BHMYbyVtU9Hu/2L+DjKic=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ki209PY+pwTXNT4THKHcohs5ASmQIOVVRRi5Oe+MXOJC9yz1EULUqJPE7wT89OV88
	 oXgstRuptuhcW0oaPQt0miybLn71yzbB2K+8kJbU3XXyjv1mabIxN1/2+QC8pFg76m
	 VYAvt+2kMkPuR9kDOJL5MrPx47YJdtZD4/ZK914tv+eJSyzlUSeH8XeTFkXcLZR1Yi
	 xdz+NxHYdOGh3AOjXfAsKoVA3eKuyPndApZI7HoO2g40Sz3fYnt5+RWJIG7b+8XATH
	 s72pDURgKXfWaRTzPxhc53wHqiSRZQkhjtICMNsRRUrazYO7P2j2jNJsEWQMeyBU3o
	 /Y/7Z0eJO2N0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E87F084648;
	Tue,  9 Dec 2025 08:06:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A143E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 08:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B4D08459B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 08:06:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h9hlk4bPMDS2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Dec 2025 08:06:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D4D0F84573
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4D0F84573
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4D0F84573
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 08:06:54 +0000 (UTC)
X-CSE-ConnectionGUID: ahOci7eXTBuN8UsbQX0T1A==
X-CSE-MsgGUID: Y67O1rvPTr+sCXuPEpFhtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="66226231"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="66226231"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:06:54 -0800
X-CSE-ConnectionGUID: t8exOXC3T5CLm+jSQJNVBw==
X-CSE-MsgGUID: itE+sSoXRTGXDXFcCPg8Hw==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:06:54 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:06:53 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 00:06:53 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:06:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iZmHuXE9SN4sOo5OWEioWXbtMzukaAICIn7O2gCNhe9pAwTsR8+Lw5DbfHEAmj0beURsiqhDq19BKPNLVl1MvpCp2bNuPYbYfbxjfKusb8sY3G/7H9jRDBXX+OwSGJWZaLuMQnFWTGdumqYisSGgHDMLEI4aUKBSJsvLVfn4tMiscqluYMvCji2CvmWyGGCrWS5n6vrAhaRHvy3rXe08dcDw6832uSDW1e0rUMf62h0Yr3z1IHcL8nCZKDbAdQXqiPsjUiFXm4eDYzCqFb3qnKx5iMSbYAiLeQ1QYUdjtuximb6V91Aac6t42YeivyeFhtWlgzDdLpu1/sIHcABs/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HILMwVpKgOz5ohyJj5PCC3BHMYbyVtU9Hu/2L+DjKic=;
 b=e3/C836F5KJ2f4IjHKmvCq1GmHTQgGmJnj60GHeIzk4z37yty7eUmvSBRmBAhutIXhpf5QWJPkpNl64ucyCwvcXfnj5IISnAyRlt0pk9A/aeQRmJlelKyCwqNz+WL5BTI5B/55vaEudtsRemY8clr47mO2hKcjECP4GzY2VZywnkC/nBu0zeghsDs84FYJPgOkE81QNbugFWeAO77OWjflWtKmMgqCYTepWhbsp3wa9ehBKnEZ9CmqswTUh5i+ckCd0+pn0R1wsz3TFo/uL1bahmBHJcpw/6mBB8a4xUZBp4RnBBuMj/U8cBQvryZc8u8GJwNDxREAGHpKoBdnPbcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6356.namprd11.prod.outlook.com (2603:10b6:510:1fc::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 08:06:51 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 08:06:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>, 
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leaks in
 ixgbe_recovery_probe()
Thread-Index: AQHcZshVBG3t+sS+VkSeYFO2Vsz87bUY9+dQ
Date: Tue, 9 Dec 2025 08:06:51 +0000
Message-ID: <IA3PR11MB8986F5B7165508987E3516EBE5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251206155146.95857-1-enjuk@amazon.com>
In-Reply-To: <20251206155146.95857-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6356:EE_
x-ms-office365-filtering-correlation-id: 62455cf5-1cef-4930-2a4c-08de36f9e8fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Qvm6+cGCyugvxQRGGAjxR2YjPo28m3OoD3iJyQqqgS8SgWOrhRhhlQ3tXC6K?=
 =?us-ascii?Q?HesTIdxhBzhjcZnrbV+xQKrW+N7zpxzVOzgYBfraNnFg7MmaT000XuAUpbe/?=
 =?us-ascii?Q?9ZikIJiBJwRutYeR/ATVC4PJQ9AAjR1LzKKFktEOzOrZme7eK775STgGBQhB?=
 =?us-ascii?Q?z9HREBlOdTxZzHJdHIE3twzAo5mQAytWD1Q1flE0ALGpe3SCwcOyqc2M/QF4?=
 =?us-ascii?Q?bgO7QKOjtIDKgsXS4hllKfH+RsvBPDfMDAiD/9pbK+1f5+qd+2AfUmniKKSJ?=
 =?us-ascii?Q?DM2vFZ10AZYbyYaB9I1dBQYVbpYFTNsKpq41AcFbE4xEX11l0+Sw9gGtSLJB?=
 =?us-ascii?Q?DSk9EsnUkEY+j3slMxJILn89gaskcR0UIqWVXNspjIclEyZXI5/KOu245bgs?=
 =?us-ascii?Q?H0dpPPJ+GG3uQ2NhrAcIPF73brLdURfOCNb04/VrcG8oSA1XmY4Ta89qIffO?=
 =?us-ascii?Q?LPTFXCXXe+Eo25hInn+/NhIIzcEolb7LTi7npxiYUgM60lNTs0EOX7Om8U9V?=
 =?us-ascii?Q?pQGXRorV6yBlMTcgCvzLxcJAc+p2sfJzfGzQ1sxAFCeEaN5I0miQqhWHtnJ3?=
 =?us-ascii?Q?06nHPAj6KXXEP/iwWasvYQD8ixezRN3u4HBhZNKg1VjvDzXqsHPNhRNmqJ6I?=
 =?us-ascii?Q?aGRzekbnKE1pUQxKn9ffe0g2HywFt4WWs9eNM0Be365UbXUQftEfdAjORil2?=
 =?us-ascii?Q?kJyZv9IID4egoFdhmt9H3bpFXBus1ZigdAo5ZNPrhRiiz1+NhIfp/7gfawsd?=
 =?us-ascii?Q?YPg8zW2Ahn3n7ubjPqUqBlZyD20wA3FuNGdqnojhBIdn7BmFp+Nn7JJvTg9Q?=
 =?us-ascii?Q?viVCJcmewLmXkYfkRxHTBpMDjN0K3g8T0lSIWn6zC5gjBEzBs0Y4fQiD2J8F?=
 =?us-ascii?Q?0MLc3R9rXo1MiEKuA2o/ObHccWYYoa+aMfVksebf7bVsBMHFbU+h1jxuXpcv?=
 =?us-ascii?Q?g+zWP7xU122FtL+Je86XIj3S/C0VehMqqHLEwYA3R89WIkA4JjehEi9MCY36?=
 =?us-ascii?Q?5XAJlRDld5TEBlDUK0HxucwXME/MnAuzOUXGn0avgF7tbxR0M3zXxV5XhE80?=
 =?us-ascii?Q?JL8+2enjhfccc8arNduykNUpC+UD5NkaH6iXLV1HkKQu16jzItYpJN6fUvar?=
 =?us-ascii?Q?5N5W4ECaOPm4GJIUVLi340/nmZIRwjqu+5ktH+1QdHBtg6qC4Vd0fkVnMiPO?=
 =?us-ascii?Q?lAyDWVpEHymYA4KPy71NyF5OAwSwlp5VekdcxO8CzQDnK77rWk7OkdADydXz?=
 =?us-ascii?Q?EJh4SvLzba/E5vnbyDXhidKU6dM+iERU32990toY7mtAZku6FxbOfaBE4c4C?=
 =?us-ascii?Q?KLqHGcFydIFcFlCbs9F0Xhc/PTwXWRZptWkr8F1xcsrBWxiY2P24DzBKGWcR?=
 =?us-ascii?Q?XTLQsyHXoDnLBMUqKxH8oQ0j7Ciixq98GSH29HadAgIGw1HB3TTeEkTnfdue?=
 =?us-ascii?Q?lmhlTxcqpA4wcCbshb4L8OE6JF69zRrIn2BVb3V+HD4YF6cPCZPKXt6VADjQ?=
 =?us-ascii?Q?bYmozG4bngjWyrAmqhXKA4sRdTciO+ZgT7RV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/yCRAluXGiP6DmCFN+Wp/3ukQFhGWOO9/PcbhXjYsPprpdkNl/bBz++Iv12S?=
 =?us-ascii?Q?4pIbJ76BpShk547Fj7O0uh3qrwpnSj2oykcZsiBEG5znq0Vl2HTMnc1dH7rF?=
 =?us-ascii?Q?qJV7ElSeal2z89ZahWgmH7So02266GfZYZNhG+EQ0kUFzVsFAoRXVBJ3w0/d?=
 =?us-ascii?Q?swlakYT3KaGnGzfbCHmcs7zCiwGJZO7ijV4e5N84lU4C9YokI4UwN0VtnmxP?=
 =?us-ascii?Q?owBfeSxj/Bppgtmc12gQ1zR/6xbGR8FYysxASmZkzWeCKAF/wNPNbQ4eRw8u?=
 =?us-ascii?Q?s1fx6zBD7KUxWJPxxF03pdcih3OlgqWAB5425gofwggf3uCBFUskjf3CsMGN?=
 =?us-ascii?Q?hw0w33CzDMaoP/IwO21CyD4GSmMsz4XIJFEGk0YquQcP7K9pUR8I+QIfPYzY?=
 =?us-ascii?Q?emFG243C0TfSYdTIlWUKYyg6lBZ8DBhH+gzJhhzvrCBI4EFdclR0XzRv2iw8?=
 =?us-ascii?Q?XGnC0QstYrBGIDFfRam/lzlpSu/PSwMEonhpCLMpLa+Wo1SVWdiVnNCmgMHA?=
 =?us-ascii?Q?bj58Eb369+ruf0eDw38TjKYzZR+KG8bVRkcNFfFNY+eLLEHl8z39aSRcm+ll?=
 =?us-ascii?Q?tzIfUrUKlT1OUKu/nLTTr64N1/o1Sb8Lx9ZKdJJJVK6KrPNlQjs/SdDs2t2S?=
 =?us-ascii?Q?Bpeupk92Or+xRfrM3WLwAdX/qlhedz9TO+npwsS35h9LMTJ+RD3lwmSxqxGC?=
 =?us-ascii?Q?KgsZCfOaCisliqH/AlfMhkWNMNXV30an40KL9oVFbqDjX8UaiYY3SwpaVFMZ?=
 =?us-ascii?Q?NjqDdzQmXPeIh3zUvIyHXYHDdTxj5Zm3vHk56wb3N5Zw2gnxliL3+moYtD5z?=
 =?us-ascii?Q?mXlBL3POb23rsU6bMsveIMazMEXpjg/7LuuipD/LVS3qLTSK/7BQY9GiuGU9?=
 =?us-ascii?Q?di1PKeB1XgeQvVfVg7FyeSV2npQOmKsIGMbk3fJJ9HhsfaT58bwfe56nciXr?=
 =?us-ascii?Q?NmhOBbh3sKCJOHKuQ5zHxU+WAY6+TuGScOF7RLUT+cwXMs6vtWnAZ85xIkCo?=
 =?us-ascii?Q?oPDNoBaYHXRUOBUsxtN6bVBzk5ngu3OLtIBr2oNztmBePHQbutwz0weXQGOd?=
 =?us-ascii?Q?VKsNfJydCu15P9GP5xhmEwoa077/7zwlMZkW4yc+n9hyUVRSVb/IgPH0q2+V?=
 =?us-ascii?Q?BgYQ5RNKkf4Y3e3CxWyNUxU5sKej6ohwbSqdNIRl1Sh+HRVmm7wtazfE1aKs?=
 =?us-ascii?Q?zJjWlsXqlNoHBNLelIe6raMFZg8rGOjYVioqHzFiD2x4Wajp9MQtRN+pwQLy?=
 =?us-ascii?Q?YFuG4GXkzasY7eiFpNv79Ja0IVOVnxgJrPL1mF7ABVGyCJRFys8c3tDFdGc4?=
 =?us-ascii?Q?QvxE4pDFvHFHcevuzwChTorWP7+kAL4MJYW5dp46WB46+H48H+egN7r/h2uS?=
 =?us-ascii?Q?/vOtd1l2HDnRPsi+HCCsyLnhYrh+x2PG4XPSHFlxmHzRqCNQQYEGAuLtwWmI?=
 =?us-ascii?Q?d1Uu1Hb3dACV7pj1vpUoEYZHVgCxes+wrWzPAbZXYcW/GMqjhZzVU3P8MTFW?=
 =?us-ascii?Q?5pE5eHCsZHR0UtEUV2edKZwvAD2My37sP6spUmaew1h6+q6fToQ6vFpn+Eo3?=
 =?us-ascii?Q?lRAJHB8wsDoxrV/zM4IXonHO8ppmWcAsHrAW9rDMHS/odPAynJdVpnSbr0BD?=
 =?us-ascii?Q?Mg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62455cf5-1cef-4930-2a4c-08de36f9e8fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 08:06:51.6628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a3f4Ysu24QMU13XdPKt7ViA8NLAGB+Es59XnGDnWqdOEp4xp6y7bieKNODQTzZTKtb7E5CdQOMCd5o8bUc5kgfcP4cq116Avg0ewlQQS0dU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6356
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765267615; x=1796803615;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PPDGGmr//5u0p40IIsBVt30/w4v1fsSSJuyX7CPJJwE=;
 b=hMra7hrmav1H0OJksZfIDf8Y0D1Mqe2Vola3pTSWJZhzDERHFv/Fu8Xb
 ZLsGSFl3fLjhb2+S8PPST7o/YKb9igiPZUGm8oQ4J6NpSx5uJoM2mn21C
 S2UKHeuG56W9weAfuKP2TsMVRmcRNNnJPPuFY/Z476cBXYMlGZ0s9yUmx
 +WOc+Lc7NX4UEA3MkO7pYyPc/W2yfbzoQxbXPbIVI8FlMeYumQrb5/ZH1
 ZEqO2/4yC+7Z8ZvQsYEslHrFd4WWzo7A54RCfbri0SkQECNyEq+Lsad4D
 T34zC4ZiMMZsu2CbxSKsMadHwhPgbRSButFo2efsSvi2b1DJPTvEFMADO
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hMra7hrm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leaks in
 ixgbe_recovery_probe()
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
> Of Kohei Enju
> Sent: Saturday, December 6, 2025 4:51 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Mateusz Polchlopek
> <mateusz.polchlopek@intel.com>; Wegrzyn, Stefan
> <stefan.wegrzyn@intel.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leaks
> in ixgbe_recovery_probe()
>=20
> ixgbe_recovery_probe() does not free the following resources in its
> error path, unlike ixgbe_probe():
> - adapter->io_addr
> - adapter->jump_tables[0]
> - adapter->mac_table
> - adapter->rss_key
> - adapter->af_xdp_zc_qps
>=20
> The leaked MMIO region can be observed in /proc/vmallocinfo, and the
> remaining leaks are reported by kmemleak.
>=20
> Free these allocations and unmap the MMIO region on failure to avoid
> the leaks.
>=20
> Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery
> mode")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 4af3b3e71ff1..1bfec3fffae0 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -11508,6 +11508,11 @@ static int ixgbe_recovery_probe(struct
> ixgbe_adapter *adapter)
>  	mutex_destroy(&adapter->hw.aci.lock);
>  	ixgbe_release_hw_control(adapter);
>  clean_up_probe:
> +	iounmap(adapter->io_addr);
> +	kfree(adapter->jump_tables[0]);
> +	kfree(adapter->mac_table);
> +	kfree(adapter->rss_key);
> +	bitmap_free(adapter->af_xdp_zc_qps);
>  	disable_dev =3D !test_and_set_bit(__IXGBE_DISABLED, &adapter-
> >state);
>  	free_netdev(netdev);
>  	devlink_free(adapter->devlink);
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
