Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7AECA346A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 11:45:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB55B40537;
	Thu,  4 Dec 2025 10:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZvX-VUeQ12DI; Thu,  4 Dec 2025 10:45:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 352C84045D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764845148;
	bh=O/c8K9HdqWuaP3zs15caSZtvLRaHyqGAJ4uxVhwc8e0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LF/K6/COOFzQi1xyVhzGMYOXJGvFbKZEJlwjmndDvcxki4LfN+scfmqOcXkmkKoa+
	 IQGes8glChvm6tFUfG2moRbRW+nSxAu3tGOt4pu2ruexrusOwyS0HbMwXWuk2kJrx4
	 0wrxedB9WS9+Y/Ytia4yC4n7zeC0gu+RbtrSoWY5RFWtp2svoADSysPjpmCAyD52OF
	 wiLLMk/84rAcOARF3JIa24xAuSRJO9DkV/dyRiGLBjXH0nv8cG0f/J1i01GMgx3ETW
	 2O1J9be74Cec4tv6s6yd0v5z9LIph587CM70ft6eDeYq3eKps+H1rz7Yb2ovJFQvqy
	 +WDtqPcWo8mCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 352C84045D;
	Thu,  4 Dec 2025 10:45:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BCAEE4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 10:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE75D40407
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 10:45:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eRiZXJJ8bmJ2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 10:45:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 149A0402DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 149A0402DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 149A0402DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 10:45:44 +0000 (UTC)
X-CSE-ConnectionGUID: 7hzWaZy6TR2Yc7O0jm0R7g==
X-CSE-MsgGUID: 7hal5DAzTwqESE24Xfq90Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66932983"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="66932983"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:45:44 -0800
X-CSE-ConnectionGUID: kyhyJvCaQOCCfj4UzZFshA==
X-CSE-MsgGUID: T2mb53HPQluIp3ndleeUhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="194765178"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:45:44 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 02:45:43 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 4 Dec 2025 02:45:43 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.20) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 02:45:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XpftGREfuN7K2lth2+ABEvZ1FACH5xMUxREDlDLybEy9EOzje1QZaBLVIBuOs+uoeH+jfNGN/5uAEnVhbNzECXZ7D+nrtSFiuuOmAduxQvHL4iOXcbu4so2Yi1WMa7M7RQMMgH6LUr4jVizD2f5jwc+zdVlvqE3eW/Bf8lael1GZ49bCBpksJwKge9A73ETGeVT285N2czsEq1MEnqtZpAEFWhh1BlwS7ZMYWgvLA5bYphBPYzHh5zG7Xfcl0K5KPqmIAe/uNM3iDNOZn+8KX2YEkDebcVpRtyRvAGbDWSPAtZI+sShFZ1/6Q0b5+CQpLJqKpCEby0wZyNIdRS6u8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O/c8K9HdqWuaP3zs15caSZtvLRaHyqGAJ4uxVhwc8e0=;
 b=aS79/qeEbvqIVE8EQMdJS4/oCIBF+qDgGeVEUP+s+KvDPxL4y0Nr4Mb4y0P8AcNtayHsy5bzA8X5bRa4zWNtc3iXcBuyQed2Ur0Y1dSHNu2XCovAnfHPOisKdxyW+fUQNio1hu0LhUxVZU26Ay8b8GXtuRIr+KcVNmN7neEBZl8gm0kRPuKso+KACZAHjnuW/VVdKVUJCU8iboNz4Y70voKUHy/dJd6a2lWXiPv6haycPX/zlPdsUhMki/7NqN5ShQ7iSMpfTq3EG0gtW7FCk0HnLBFWjWhrVQW04tc0xtj3IZNIs9nfXeZR82nBa1wSYqgiVXz/T8j8pMIaTJME7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CO1PR11MB4819.namprd11.prod.outlook.com (2603:10b6:303:91::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.11; Thu, 4 Dec
 2025 10:45:35 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9366.012; Thu, 4 Dec 2025
 10:45:35 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: fix scheduling in
 set_rx_mode
Thread-Index: AQHcWhaI1xImEpawsU6Swtx6Ts2T0rURYH7w
Date: Thu, 4 Dec 2025 10:45:35 +0000
Message-ID: <IA1PR11MB6241405E6A2409EB1490BE2B8BA6A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251120120750.400715-2-przemyslaw.korba@intel.com>
In-Reply-To: <20251120120750.400715-2-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CO1PR11MB4819:EE_
x-ms-office365-filtering-correlation-id: 8ee8d712-06be-406b-428d-08de33224179
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Ko3P0IezE4C09ntVkI09UlDrdXB9yPD+GXo0I6Ada7iLTa9nLV/Mj5s4V1WV?=
 =?us-ascii?Q?GlYkwD1QMNC+lPHzMBdSl/d5wmlSFj5MliV2v2FG7V3CmnPnhSgcaxfazOfX?=
 =?us-ascii?Q?vtipYHQqPFyCkJQ0bXcRvREGxkzAUkMvV+w9GRekABuF/wjexWI6SCS443Tc?=
 =?us-ascii?Q?503JCY7Yn5dMvtSTrgIAPmY3XG9HWsNKEx62eVk+el+1y+KClbnpdHES9wKQ?=
 =?us-ascii?Q?nC/JJkZ/kPHMiP2D0g61Jzm8+EWCjLP5bGAqXCRenlYCh08TRyFepUGpODRR?=
 =?us-ascii?Q?SzE6t7WWXRp2xSSrq3wtVwSSy8ml27+MaTu/nTumC4UzbiJW5TcHiayWpJq8?=
 =?us-ascii?Q?kwL08PW/7gdDepNBxAxHAGc2QFXvzkx/BMYg3E6Ij9elSUUG/ikn8oAXWKKQ?=
 =?us-ascii?Q?GbyxFwfSHHRbVoNuAmUJi4NLU8/ibMwKCKAcgU0oXBNyHpldFzl1BQ+43jPH?=
 =?us-ascii?Q?PmwZ5jpr1H4lI6pt+uRpkZAF+Lxmaesvhs4AwHW2zZ5r3AqQ3tlC9ZDf/t4G?=
 =?us-ascii?Q?xt2lRnvm9lXgN6/2sCbF4YopQJyqJPdkxp5TRrgfE11NkMy32oLGfJSvrTGR?=
 =?us-ascii?Q?94O1lmaOUzF9Vg7b7hfhKeNm1v7iq86YelJS+tzs7tSKS5PMYI462a9JOEuu?=
 =?us-ascii?Q?5MgCFCKOEgubObooG68er/slsOOxEwtdWwvtGUVD56cI0ljyUFUZhAshMAXX?=
 =?us-ascii?Q?ksHjN71eWaOkzYoMMerrwQ/zs1fuTtQDOpfdoEQpPEOI1gxrSMo9RvcYJ0lE?=
 =?us-ascii?Q?OWB2URyNTctDlgziYbB+Khl2RK9lI7acfHUoJy7UA0NcZen0POgQyOpZsMOu?=
 =?us-ascii?Q?nf7PRNDNpwtTT54WbbXQLg8yb0UPeI713+eQ1uR3lCNCMbgTrMFQFyoSoR8e?=
 =?us-ascii?Q?8twABZInDOR/ygJiwIJuBzrpgOeOTRrH5YieubW6rEyOHE94QL9gmv0wzWcv?=
 =?us-ascii?Q?T9S5JLLOWKjPrcNltwvLQCHE1L91JEdIIyGAIJH8hAn3xxaTePC95EFdlz/j?=
 =?us-ascii?Q?Fu9rNVK1yPeFv+w36BFjDNQYsA8EUSwIMl+2iqWakN8IFjWe7jh2WlK38UBb?=
 =?us-ascii?Q?fNz81HpwD4QXPnoMq7kZ0xbGxlEt+zWeOGI5E+mXyKzeuzwdfXks8WOaLNPE?=
 =?us-ascii?Q?3cV5eHm0ID36LqEEuUemb4cuAy9p5+OdKpyj+Fhn+hja6iSRf0dsypJaabgT?=
 =?us-ascii?Q?+mMONl2Rk1o1RF2b8zrKcUzD4QDk+d2L96rvfGHMy8mJ0X3QiadXGhY7FgXI?=
 =?us-ascii?Q?u3WiU9/yOFPOYx0jYsnAHW49MLbRylHVpAeA8dJ0EHqDO7+QlECOm2Tf58xb?=
 =?us-ascii?Q?wXO7PK60t6N4DFIKZluPGx+EzPD3XebGszBC/2NdIJ8kBdf5mRMr2sirvzpy?=
 =?us-ascii?Q?cbmLSr1qNZQQ8ILXSVDY3dfZ4kD7MtpXdxeW5LYommecllEiIg4XWp1DO+Ks?=
 =?us-ascii?Q?DK2q4M9r2sl2+0QWoohvDhRQISC4LAhipXfBntysLiRyR6MlFcECCHdMDIAn?=
 =?us-ascii?Q?Fi86BjyNmkQJQPc/6fFp0yiUsDIC1IEiy9nq?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gte5yATnxTYe7Se0TziNO2cN03RznWRSRQJlmeLrRWClgNJQsqvrB6S+Fwyc?=
 =?us-ascii?Q?fO/GBt+ndd8oAHHyzuNGXmPtyS5b7NEXAQOJCMiQErZYH8CB9/nBiSXK00e5?=
 =?us-ascii?Q?hawUQ8ZzKgmdX3rMIQT61XWbYm6i7QNL9njc17ajNW5kERN2RN9epUZK5nLK?=
 =?us-ascii?Q?Mb9QDIS01v76YXHviwB0vfgFcM73tg54PoUz7PqEd3Ly0jsxSxwNxZKDwCJB?=
 =?us-ascii?Q?wKffoo7lBypxaPCdzgOMTmqFNg9psOaT+IQYSaOd1w4+MsrCOLMLLpGeXkJh?=
 =?us-ascii?Q?uCXTIS5O9gggJd+pdS3paMovDzgQHqn5v/4GfP2lWYe8XNcfR3Q3dev9gISe?=
 =?us-ascii?Q?J8WNOJ4M0HSFaujvA62l/95IKvq8ufNceXOFv/yhG6JWsheOB//Wk9EtWcts?=
 =?us-ascii?Q?l0DSKYwJiAJ+Mc8ECrKwdRKZVE7k0BDAt0kpwXAYxY1FRQgY4VhMG62OK19h?=
 =?us-ascii?Q?tc9cpZXu7rezxpqTuZd7a5b/mHIoRjJFUvILb2XeVEKOl2cICTxgXFwTvcQK?=
 =?us-ascii?Q?SimMX578vPjKbGnhlAI/T71m+iqhV20wNMOG6FdRpHvVW+6Nt80lbl+nDvM2?=
 =?us-ascii?Q?WJn00ZKZHVfuth+kp8heD3HHsxPrpvaQnd2JDNv3XakjBSEK8yGkG7VyMSvA?=
 =?us-ascii?Q?Cbb4IBnjaw3RO5eGdUd6lTW2TfUOz1X4SV+rlXRsyZhVOtvIHMVRWoiubGew?=
 =?us-ascii?Q?nRWsz9CkbmyRTXY9ag+hpDPozA2f6QQp1mol2sBP+rswkadMhvqLFD3GIC6Y?=
 =?us-ascii?Q?hB4f4HPNbj38Ih2eJ77bxsoLmyCHnVOQM66W+dsNOFlDOcLyPfUWTz7MqojR?=
 =?us-ascii?Q?fW/ZV8WtAT9VZJY3CrjMGGOWA6goDB2QStGEx1Bkwb8xdny89vYsIteVa1qM?=
 =?us-ascii?Q?8Xm5QP106UJIBpcuiByNBk6I+iRMrUtoLhXXF83v6QQPYdmSG7l4u2zTQKlM?=
 =?us-ascii?Q?kwPdLwT9/G3Hy+4XAygNLxHgquNc21Mrc+O6GoYNR3SQoHm2ZNEFfGlU1hLM?=
 =?us-ascii?Q?JvtDh+eqKeEnBFJUL3i7117aRz/sBkXsKLTX7GC/Ax0K57Bbf8sckK/SBLh4?=
 =?us-ascii?Q?JELI0AtggdVS1r09oLXqFgX3XtMs+QhMlVNVA+cy1RTAj/5Y0/wm6AorNm9a?=
 =?us-ascii?Q?EdtzsL8Ekm8Cij7Z0n/iGNfeZxUIlsNeKxsumUl6EO591KfOe+ukLU8Y3Xc/?=
 =?us-ascii?Q?gz6VwJBzdVf963yPvN19PFkZbxy8HY4OzodO6aKnkBwlUCx7s1iX/oSl6z9w?=
 =?us-ascii?Q?uNyEoAR1lL+KbviCapsQjPd95ppW+LgjfCR7pLvyI+ax5RIIJibeWoR/bG1R?=
 =?us-ascii?Q?POFRn146EqXL37xQZ+umrXkdlQ6O0H9auXnd4MFS6bH39XItpKkvlBxY6a/q?=
 =?us-ascii?Q?o6mItzGS5Or3vXsMUQoPROmaYBb3NSCg+ZU8rtwaLL1zBZRxn4Y9FFsv4e68?=
 =?us-ascii?Q?vRTkv6QiZwbYY111DwA31/gEuS3hyjpQnfrIUOvc83VxTt4wcRhEAsFjqrfd?=
 =?us-ascii?Q?KU25bkb5qHMfRlb4P+kgE7csgRIJClZhL5azdo6YF1xwzILKsVuUO+ciIZ3O?=
 =?us-ascii?Q?hxKFTC1E2zoDu6F5ZFHvI//VV26SKlGt9C20R/8m?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ee8d712-06be-406b-428d-08de33224179
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2025 10:45:35.2900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OE95QLbLLAVDOsWBq1aH1DcyeAlUJSkEv+6D10ZlDTU5BjhANz7W0XHxHM5y2U/sZ8Hy66vipaT95qqfnrXZGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4819
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845145; x=1796381145;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O/c8K9HdqWuaP3zs15caSZtvLRaHyqGAJ4uxVhwc8e0=;
 b=Z+3gtCwOC1rnNz8QKcNChU74mFET6464rLmyDtGpXh6veceMrPKZpAnV
 T5DE0kteoUnPWgRJAYrwoo6R7mUcrpfPGOuOoXGgzUrz2XoYWl5Vpf3NG
 J0IuFZB6XNX7OUTq3zptar0zPbo3fD0OFu2S87Tp4EleaIEf7WUOYpKf3
 hnlDBiC9ukK/bM9i+xcR6TThv8VLKe4Kfwck7gZYG9597+3agV6zI9mQf
 WkQZIH7/qiMidUr5PEyf6mPaJ3mwvAiZ0FJWrWXaIVyDY4+pGP/oDjGWI
 2NAb40dVrHjbCL/S7FCvy88U4ITXASkpm0OaEbppbz1ymuo6CVTEI9GUE
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z+3gtCwO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix scheduling in
 set_rx_mode
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
orba, Przemyslaw
> Sent: 20 November 2025 17:37
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; netdev@vger.ker=
nel.org; Korba, Przemyslaw <przemyslaw.korba@intel.com>; Nguyen, Anthony L =
<anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: fix scheduling in set_rx=
_mode
>
> Add service task schedule to set_rx_mode.
> In some cases there are error messages printed out in PTP application
> (ptp4l):
>
> ptp4l[13848.762]: port 1 (ens2f3np3): received SYNC without timestamp
> ptp4l[13848.825]: port 1 (ens2f3np3): received SYNC without timestamp
> ptp4l[13848.887]: port 1 (ens2f3np3): received SYNC without timestamp
>
> This happens when service task would not run immediately after set_rx_mod=
e, and we need it for setup tasks. This service task checks, if PTP RX pack=
ets are hung in firmware, and propagate correct settings such as multicast =
address for IEEE 1588 Precision Time Protocol.
> RX timestamping depends on some of these filters set. Bug happens only wi=
th high PTP packets frequency incoming, and not every run since sometimes s=
ervice task is being ran from a different place immediately after starting =
ptp4l.
>
> Fixes: 0e4425ed641f ("i40e: fix: do not sleep in netdev_ops")
> Reviewed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
> 1 file changed, 1 insertion(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
