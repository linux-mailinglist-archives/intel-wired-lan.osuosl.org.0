Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 931BEC55FEC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 08:04:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 803CC606F0;
	Thu, 13 Nov 2025 07:04:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u0PaGiF0uEOQ; Thu, 13 Nov 2025 07:04:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C327960F3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763017466;
	bh=otLynibPIYlVusss31DLQDqhrg/oOOuDfH2NVMb/T0E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bw8smgyznVFB4V65/Atkv/D2v9FlQ83spPaPrpvIFBMpp29748TiArMqU/w20jH+O
	 hMWRpv4HtGgDq4CsxstNONp3zVArgq6HWerDGGLUCxjORYp7F982jsN4DTjWAp30mB
	 /wqLrdWEpv8IRvenwEQKIxFk5adYUPopg9+GT4tTJq7N4XAfZVG4/GZmDwQe6+vSJV
	 ZLkHu/iskzgGvtHc2GbJ8htr25VUJvnBWdfXw61TxJdcRrhvaop5Wiujtbwhwmq4Xw
	 FdLAXu+3qo1w8sHf5Gk8nxbdfbeLa+ns0dKXt0kCOaTNs9IogNNuRWlI09+ZMz6w7W
	 Qv5wgfSuVWjNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C327960F3F;
	Thu, 13 Nov 2025 07:04:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8ED81158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 07:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E17D40237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 07:04:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qy7FYrjHj4HP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 07:04:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AAADF40234
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAADF40234
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAADF40234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 07:04:24 +0000 (UTC)
X-CSE-ConnectionGUID: YalZ54CdS5CZRRdOB8MYFA==
X-CSE-MsgGUID: HjsZSGkHSMOTt4DZY16mWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64975731"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="64975731"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 23:04:24 -0800
X-CSE-ConnectionGUID: 9aRDqqfXTNqp9UKikKxw0A==
X-CSE-MsgGUID: sCp/veG0RMGUDPpUziw1uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="188712597"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 23:04:22 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 23:04:22 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 23:04:22 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.50)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 23:04:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ps+PHr46FDrMEwQV/f2yvLdC4e2ySxkyJnMYBPrcOQd5xUnKfuTgq54GaLZ6eNkl6QOXvlsP74mn7KXoUcGDmDG8hVeU7DxZLK81h3INQL/Y5gJs++egiQ2sRpumuaTLIJ5FS0KBZZaSdFiJlsUd7Akb0DchzafosGcsMdTzZtDwKdJLoru6XnH3jS8PkPiVGEoKi0HbCRlg3zuF0NRKq8TSlex3FzdvvCVvW4jaCW5r7J3uJWz528CPGzwG2RoNOx9UjaWOuvenm58TPxVSr20XtRzYNSP8wP0t2PlhVO4QR7qeWBCISCNIjecv7+tZrt55FslJmITpReux8ab7yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=otLynibPIYlVusss31DLQDqhrg/oOOuDfH2NVMb/T0E=;
 b=BnuPVYDtbDE36bngYHk7KZQ7lLj9wPUcHXgUHjlitX6xGqB2MKpJQWBH/JQNis/sLxSfPuvjDKzTywWQou0CbNnyIkPv9YdPw4qfC/gcVRO4qczGMf4X9XyYlKj0MgVU5ciC4nnQTVPab6LlF9Nt0zD+dYVEEWryqgf9jK8ZHs1sYL0vmYZzQOm44bscuJ4CQD1/jPWTxbbzmjIkQL+44HWJb/MNKegNWyb39IELYt7huzAOJnGzwiiWxufwnMkZ3HhoI8zqfJ0uN3J6eEp4Dzqd3WTsOcFELPWlgQ75TfqseNYj3RfRVL93Wlc+4Bm+7DUDUkkyVH41QpADeaeA+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8363.namprd11.prod.outlook.com (2603:10b6:610:177::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Thu, 13 Nov
 2025 07:04:19 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 07:04:19 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 05/10] idpf: reshuffle
 idpf_vport struct members to avoid holes
Thread-Index: AQHcVDTivSVghLaauUmwVYus15vGL7TwLvGA
Date: Thu, 13 Nov 2025 07:04:19 +0000
Message-ID: <IA3PR11MB89869DF357B3E046C9AE0BCCE5CDA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-6-joshua.a.hay@intel.com>
In-Reply-To: <20251113004143.2924761-6-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8363:EE_
x-ms-office365-filtering-correlation-id: 4dadf61e-2784-4a5e-f9f6-08de2282ddec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zwHyOYbCHghZMl91JmeMc4AVeWoXk79RJdcJ99QBoePUZzxepueobGkzZBDy?=
 =?us-ascii?Q?nMdnEcHX41eHtvyJx4KxwXigwTBT3KQASY6VzWuoZfcxqxmVk9mzOQc6NVza?=
 =?us-ascii?Q?Hs6U9HSpXWL58daqk7mPk2amW6jc5ctwoL1iibV0oov91Dk9S8kg6VFY9w8N?=
 =?us-ascii?Q?5UwfLGvuk3JorMW3M6m7mU4hm/zvImrcqKGr44m43MUOFOtdTOEpuywlhxKT?=
 =?us-ascii?Q?o4cogVNR/TrB8ueI0Rjo4fwIdzGESzjazQv+ABSn43mSXo05LAwVUAeIqEXg?=
 =?us-ascii?Q?EhAgq/l9R/020qhB5npOXAQhVU647Sjv0K6wDO4ZFNYQj3pQ5NF6QlYXBjEq?=
 =?us-ascii?Q?MzO/zun7te1YW2B9Wp9noQIhBBrd0MTzw1xGGwD3vsq6GYObxg1W9pDf8bAx?=
 =?us-ascii?Q?9QBVPyOyLl370uZs6S543lrUv3L8VUvo1Cmo1zgbhn3DbiqwdBu5FhYeD2bP?=
 =?us-ascii?Q?o1skbKobJHtwe9a8L7mIxRalI/9xyiOF9bMpQHwQrZdueEebHdkrhRbdSkZ9?=
 =?us-ascii?Q?GKurEfHSNorKHH+QmNWeMb52beak43lAQmdY6YR23mtDV+cXgp+Fc90adIG8?=
 =?us-ascii?Q?+VuudBfTOrMillCDMpSJyVWeKsZJd/AGetEIhoBywwZvFiHzvLO8uLI9MrEN?=
 =?us-ascii?Q?0vUMPZ14YBVcRrXtqRZuS+uYGhK5eqxRiJ0J7xQ8Ifx3K+fB+bSGeUgyiX+i?=
 =?us-ascii?Q?YldduLnHQcpDHvA7EW63NVtJsg6lpMCXtbDcfdVIFr20jvCwRMgLtgDusbT6?=
 =?us-ascii?Q?lIM/IpTeNF4pAbX8DJAWjgZ1ffDqKtsT2v/GRUlyhfKuvueKpLzg7/gDH2Q5?=
 =?us-ascii?Q?KPxeAAejLJpnsTvc718dH/bDaYhkk/rPyfs5p0OQYYbVGqONHGGsodPIm0Jn?=
 =?us-ascii?Q?JiVuR5BQXs2v5aezz7Q5rm9+1PbBfqR6dSb/P7J7uPmYI3FSfM33sFLIWrFF?=
 =?us-ascii?Q?ecA19AHNcL7lPG8Tira4ppYDhomCQ9Fa6kAEnxFbQvcSU1emMqbsYtyU9O7y?=
 =?us-ascii?Q?45WlYCl0z+AC6TRlSt4hlBEeAkle6P23EGNNpGDNo5pWCJ6a+AR1R/7qccof?=
 =?us-ascii?Q?ezE6MbQwHwWxebjsQqGyPysoRsylsN2OX/XMWO6XNQwiDXWPfd1QdTKwVStC?=
 =?us-ascii?Q?T2cGKUeA0LuJiOYpHw42vXihdyEvO/ISYRX9lYX5vjL6eeNHEIRc4WKJnYwn?=
 =?us-ascii?Q?1pG8GVtSMKr7zcXnMKDYxNlTDD7K3/UBZVzxWdz3yR+IK24PRAR06wOCYRgd?=
 =?us-ascii?Q?oCZuYdZP/WsO38srIZo0z3CpyuR4zzzWFNKVNSKcOI1GtUjmsscLdDWA1GVz?=
 =?us-ascii?Q?eE2TISLKyCXZRExCPoxw32r5oL7yOxvq9VYltMxIAeGGupj6IHx9Ql41TKdc?=
 =?us-ascii?Q?P10ojn9xN8ji8wswHNRES0c8pYo/w36yWGLnUSy9J20tCdPfy3DvyDCiYaZD?=
 =?us-ascii?Q?pyIYSrpWkzpQOrGsKa9d3aTIZ+QuYq1LvuU0XfkaWg9aPkSId0dLqSfPAGTp?=
 =?us-ascii?Q?712ok2YLhQ+WWozWPjXBH8g0M8X7x37F54wy?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ucLq22zpzOSiidKZrt6dn6kk72cZUuc8g+j/tb//vq5N5xJBtfZI2RkvY4oT?=
 =?us-ascii?Q?0BuHrX44QzvLrizXA7YQLOZRMxmZDz1FMbnPKN/U5EiMAYB31U2dbkKGkFid?=
 =?us-ascii?Q?LnNX6OtRjr8bF9rzixHe2MKkW1juzMWldWsXoRqm8qI51QFteVLjEeBqVNBg?=
 =?us-ascii?Q?QmPULDfEL56X4gfsGMoa97TKTd52yYr76DmoHh9tzHqoiw9u+o6UsCv7aFSw?=
 =?us-ascii?Q?aAGF8wzNzVlK25jSKRx7Rno4gLC8UUeRroD7Iy9JkBPlyewCU3h4+NZdK0JL?=
 =?us-ascii?Q?QSNUnuTBThAfRq6aa4XBu0wx9/sseQSrUpw85XkARuOKZzx0/kOzctTRtgpv?=
 =?us-ascii?Q?EuOuaMa2FBPTzTzz81JF+F5fCybAp8NtyynmbyYne91Z80LN6GLvxZwj6ukD?=
 =?us-ascii?Q?lihBaeo+UNcLCS9e1zK2hGcKUWAMv4+jYyI33OsvBL4vvP/rNYtgKZEG61Tk?=
 =?us-ascii?Q?/lnT9Xs+ohyQ2fKbj7tmpz6QaTbcAVq/ePNJmhVh6mm9w0ruS9eG/2wn9gbV?=
 =?us-ascii?Q?/L1DgyZzGJ2rHsFxxkzDVwhq7+6LSqjfoQMka7Ea+3LVIuIXbbDKtpR0MYCQ?=
 =?us-ascii?Q?PBa4WMhaGsL1W0NTXoHzq2/+IQ3Q8jDNg+h8TU/LbprZrjlwob333De2EAJt?=
 =?us-ascii?Q?LJBql346oTM19m2jBuyc6sNs0R1S8a1InGwb4JyQjEM232Y5MzgcGaKl4hbp?=
 =?us-ascii?Q?0GkoUJ9aO8cP6LNoSZ7iqjpshJtEBU0ZAg6S69WcoUtlOSEqD1dIMlBr8JgB?=
 =?us-ascii?Q?7cSseP2dzHeZweE9OAqyN67WR/CRiDpMmmE5VwbFAqsAFJd0ml+6vJa4OB17?=
 =?us-ascii?Q?/fKGVi/5+HOURAAY4Z23AwTR8eTeNyry5EIQpG65tAUZRMS5xBOVA3lXtLVG?=
 =?us-ascii?Q?TWBABZtTdyjdojB1IVYNZ/Z73xNPNGNfSAw001Z/2A+2RTuBHDB/2BmqBHRe?=
 =?us-ascii?Q?sGlYpC5fSsTsB5KKNC7Zs11DYJKNKl7jXtq55v3yBFOs26ouFMBCdExcYdwa?=
 =?us-ascii?Q?sRDiQoWteHAUTsfKDGqUnIaPloj1q3KWarQhwONbO4yk1qdIhOVtlXByyLIK?=
 =?us-ascii?Q?xbKj4XGtxF68ouSBFsGYBSKkFm8K42szPGlLELjQBfIJcSyqSfx3VNNqKhxQ?=
 =?us-ascii?Q?7dU3t3I8PATJnSkQR5d8fdFa/48+TwOrOYhl3qUtblM//mUk4FwxYmtoGDUE?=
 =?us-ascii?Q?WlvWBKzSpquqlDk3Ys7VBWBcUr4h74Nc6NmoDy1Enbzw0H2vXwBcXYrf2nNj?=
 =?us-ascii?Q?knkt+S5oaPmT8sQ/bU5xkzL47++l/XfI84q33m6susQl6mt0xLSKlsO5MDoE?=
 =?us-ascii?Q?/8hRB0dt8bjbfNTydaiiy3nnGfq745OzmyMD6Xl4bmI33TFknhsYLFYQ4hPv?=
 =?us-ascii?Q?tdZdc5Yexu/BkpJgG7A4xbsZ0pu0y9P8FLcwmXfuU8NSXFjLJjMq+d3IuH8c?=
 =?us-ascii?Q?OZYYedPNvbnfSpaBa8ekA2e6Ed392joPfo5N34lRtXO6CDVMNUbxWxEeFctB?=
 =?us-ascii?Q?5YvpRZfzHYVx+f3xy8UiO9fsFk/eLZwKiPsMOhOb568BZJznZg8+Tf7nnbwC?=
 =?us-ascii?Q?SBL3y5fPcPYXCAJWu2LpyKfErXk6TMSdTNakHqBbEy0wo+z1SYVX29ZX9+QE?=
 =?us-ascii?Q?aA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dadf61e-2784-4a5e-f9f6-08de2282ddec
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2025 07:04:19.6977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r4zbVYmF8d087W9bNBXWQXnRdcfm2PIf29VISirNTKzNOJaVQ5JiVSYwt4c9LxQyaQrhom1viPCYBOuBw0JHOHQmu2VqTgtUrbjlNN8AIdo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8363
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763017465; x=1794553465;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=otLynibPIYlVusss31DLQDqhrg/oOOuDfH2NVMb/T0E=;
 b=bZMOfQIIpnxBjgTQ43fro2Bu+90FaVcL77koTX5xQfLqDvG9zbEfCYmp
 ejGLK0IAcnIGUkYwUxkPaww5gVn3mDcJf1/HGlmdCjKZP9mFeJ2xt4vv+
 o2d/RtLDui68HMAQHiFszmIBgi3XurcqYT8zLCPor8vzwo4iaoGVEqXK3
 YtmBEWhFWoaIzYm2RErkWDwnPtUfO3BYReqcG+xKTYHqua1IA/Z7Ov+pd
 yPpeigIXGQCcbrbd1LTieyKEBrIJwLkxgd5CeXrtOCGsgJ5uJc2vyk/tW
 mgWBDzIX/nSYUUCDtHN3Ztk1oW3dqwHmSuxA1+QZHMfLIgCTLq+r092c3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bZMOfQII
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 05/10] idpf: reshuffle
 idpf_vport struct members to avoid holes
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
> Sent: Thursday, November 13, 2025 1:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v10 05/10] idpf: reshuffle
> idpf_vport struct members to avoid holes
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> The previous refactor of moving queue and vector resources out of the
> idpf_vport structure, created few holes. Reshuffle the existing
> members to avoid holes as much as possible.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> v8: rebase on AF_XDP series
> ---

...

> --
> 2.39.2

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
