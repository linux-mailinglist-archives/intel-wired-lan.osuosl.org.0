Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77143B18B19
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 09:37:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29532607C4;
	Sat,  2 Aug 2025 07:37:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id brc_iBItC5VI; Sat,  2 Aug 2025 07:37:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CF69607C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754120258;
	bh=k8Kbt6+3BUbfNU+kkMsVgPwPN2PpCSTf6EmlsNyP45Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=To/86dhc1dkME8Fuq9TFMmkOMgmZ31HDjrKQff8y6eLm38n7cbWDahWwqYoQ8kn3G
	 du7OQPvl/LUR19MD4INoPzyKDkj2AfSgLQoxdJoWuV5By7vMxHtKLGE8PfTEkW9JN4
	 ukv43h2BCaSVpjXHmyRFCHxZTTwWF8moShF7BY/klUNVqqRyWYjdmq0IXdv/k1Wc54
	 +L3jwwfBljuxbR2eGaxAZ0CfEPZpRXshPUKekZPLcXZ1tjKUjgQWqpcXI0LUFa4ojr
	 5VmolSYMQtjsU5S/sHXlcc9meZ638FFiQVHKe6k1bl/ctrUA3SefHpRkPO6Q0ntUS+
	 XPGxubPNl8RsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CF69607C5;
	Sat,  2 Aug 2025 07:37:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D14AF160
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE06983AA3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:37:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M_l44B037O76 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 07:37:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4024D838B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4024D838B2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4024D838B2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:37:36 +0000 (UTC)
X-CSE-ConnectionGUID: cCNgUv7JT4GfBIccNsZHug==
X-CSE-MsgGUID: UdSGmY3/R7Keo4fEt8WbEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67827088"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="67827088"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:37:26 -0700
X-CSE-ConnectionGUID: tS4EmFzTSiGRBIc79B9EiQ==
X-CSE-MsgGUID: 6ioojcMcTjyP4NjxWExibQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="167932984"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:37:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:37:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sat, 2 Aug 2025 00:37:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.50)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:37:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qm0eZuGlm0grppSfxWGmF5e0TgZm66N5GR9pwQuqqzyQ96HU2fLR8NVmUnvrrmj5+WdBqhMkyHi+SfMZG+zEzLls0CcDVUaecEpZpTHtJvV5tj04o4i4mnHa+64SdSbRHlJt45Is3BZavAd1swvxlwKGQjsY+kHaLosBRT4M2aB/aAeZm9oHOB4AT9AU32TA0P6naH1bsVEx7Vm+gVhozOotLqxRzRNF0Kec8XHXpeoXHZdVl24+tts691WQ/DZQ84DJU5jbPZUqC/YEwDLrBIcbVuX/rqxu954hzN/GQev0J2jFYldnzkavBGzpuWci5kNmG/S31ac1ODvKsei+7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k8Kbt6+3BUbfNU+kkMsVgPwPN2PpCSTf6EmlsNyP45Y=;
 b=fkVLCF+Ijcw//fWSgXOJeR+XMoR78rA19bv8hZcAQvQG41DMS5ENwwZiF0ElzTsIOb39qTBtvsadw2KkHF0Yyy9pA/yWdGZh1B4oH9MIEyVIfBVnBG1eMrmf+juVBNK/rjFR0tJheNjygmCK+wE4VzF4/+ZBWwu7mYTUANBVdjPMmH+pWhDpa9eriI7gdmXiXTlIrtFjF9MbYLqMrR23TBh7fdKhKN0CYMiJ+zsf5TSPCMldWF5JMmteXJkE1hNAMpgpNqytvYrI7wJQnSpklpI6X+SPOYPWAnYQaItuT5rNqMuOeJXH2qYuAXj9UoMtWxTvlIl35/cWSCX5xc4WxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH3PPF1AF044E07.namprd11.prod.outlook.com (2603:10b6:518:1::d0c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Sat, 2 Aug
 2025 07:36:35 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8989.015; Sat, 2 Aug 2025
 07:36:35 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 6/8] [PATCH iwl-next v3
 6/8] ice: cleanup capabilities evaluation
Thread-Index: AQHb3vFamQIF3UmcH0uXWpXcIpHGVrRPQmag
Date: Sat, 2 Aug 2025 07:36:35 +0000
Message-ID: <PH0PR11MB50133DC114B9EEE7B631ED839621A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
 <20250616110323.788970-7-david.m.ertman@intel.com>
In-Reply-To: <20250616110323.788970-7-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH3PPF1AF044E07:EE_
x-ms-office365-filtering-correlation-id: 5783c948-1ac8-4ba0-1178-08ddd1974f56
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1xWAPAT5ysqthvvyQQy9GU65oxCblPQP0LBzRKrjyA3RTK027CJ3EUZ7nQms?=
 =?us-ascii?Q?xTW98cNg6KJyI+0C7XQ02hSIRJOF0pUwZYx7kcKXGwEmQFhav/8shylfAjpT?=
 =?us-ascii?Q?+S60+ma92lKzXYRCPJNI+rE/otSZ2FUwV/Xtr7sLzoGzDTqRoM5mWbe1d0lB?=
 =?us-ascii?Q?Y+0OjxQgIzHxztI7R0dPVudp+PjgvjJbXrjf382pYrWi8VXPbGGjHawQqHik?=
 =?us-ascii?Q?aOKZn2BBQjne+TqNLFR/pKj2ufYdY0PGEMqArTtyOc2xVAYP1M6QOCoffYAm?=
 =?us-ascii?Q?PRzMPTq70uDDblol2jekCnDtKexr7Y7VrocBAzsH5LflP3ijCLNh7hysdsRh?=
 =?us-ascii?Q?cK3eAVd9iBz3GPJzK57DTmZNDK/GhLiijaG3/wHqOkAwGC4H19ar7zteMF9R?=
 =?us-ascii?Q?zqVfJ4nrOmvL4+xbQMS+cN3jPxTRTGufNSKokIsJFZ9JKaOwURBoPzZSrdNN?=
 =?us-ascii?Q?X/T187PzfOxHlR5nnPwM0uzZZHzNUO0fieFMpCL5544fm/3JgB6BPr2QYeB7?=
 =?us-ascii?Q?OHy6mPZQWAyWA9C6v4oew4xVDQgezy614pYPfZxrKkwIqRzp3DnUmSe7NcCN?=
 =?us-ascii?Q?vu/r6IZkJr3MDh8afEMh5PJiBseEGuHUedUvaTSv/3GzYk+UXBHtWn7Bu3xq?=
 =?us-ascii?Q?ckTuSYC08j9TZhgw7bKcEKBTkIdy8OuF+sO0nHpXHJ/m44XhNbLLoCQDW2AC?=
 =?us-ascii?Q?QX1/Amq5c71I3KMi0m13eaBwdjfVVrNgzndkUrsbYYzHj/q1uPk7m1es29DL?=
 =?us-ascii?Q?6OgOEy3iWGBTc9PdKJIWD5NNNPACAz5TY7U7HEJxZeRPVeTArrryI9z/ltxG?=
 =?us-ascii?Q?N1gWGGguW8awmTQn2iqyerYtYUyZM+pR6+t9QiZV6JghPBFxHjqg/YWuaS2I?=
 =?us-ascii?Q?H9FJ5nvgYSSpnAlCnBYyH4af2cdLuuS030PtvVvlR/7DQDD9OuI+f589/aT9?=
 =?us-ascii?Q?+kBdD2EH+tw9tmq/forn0W4UFxF9modDbeOfET0CIEGiTBB+UNjaGcHCdrWZ?=
 =?us-ascii?Q?j1eq6ZezFgAL1C5AhmZrQpVusPfG9mNhRVG1iz0XwBsHXpVZ/GJ2MlUWSDpG?=
 =?us-ascii?Q?pGnXLiTe6tEYqWiA8If2sgfKfqDuTlhCCutvSThL7+ZN92uknB1pc9fenNMG?=
 =?us-ascii?Q?0RKumG92DLEBfJ4ceQglk0QC2HFRWhPMI4clw7n819se8X9f6sc8HGyQdbxV?=
 =?us-ascii?Q?3z2omPrg+3lVAEVTeO4Py/el0YQfF90nRpJg8GHCndXkJT5m1enXYgvnKexz?=
 =?us-ascii?Q?HX6Cf5t+UfGgTnGxsxOEAtE6m2XvB2eLeDeK2aREx/KTunQjKn9FF+6XgtIq?=
 =?us-ascii?Q?HQwHVWq0AN1JXskFtbCqYHoMjXR0x/C7YrPzm15k98Cs0xLIv+Mz+Xl+vddR?=
 =?us-ascii?Q?aefApN8sPeXsG73YlHxMyL/S544qplmpwwCbp8LmmYFHDEQxEM338C8eckpc?=
 =?us-ascii?Q?AYAJ1hJqCC217pfdOwBkqE2LHL4kHqY4QlwXD4CqoadpRdh/S9XH0Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0IRTQZ+QxSR6CTxxIa2ucQynnWZlYVVzQZjxKCxVldrtcL9o1YlFssFyR5fl?=
 =?us-ascii?Q?yUtrT6VvKuP4k7V5jHRE5JEyxxOoMyfjIvJGDGAFnHENPEjKlBIMukYlZgqI?=
 =?us-ascii?Q?vECq82B3kF1s8Px8dGtirF/Uu8KA4UZCx6HpFWkZOrI6JdtfPNq2w+P3+BwO?=
 =?us-ascii?Q?OAC3sSAs1NXLhWRYlX+bdNr313QBQ0CeRYzTXrtzm0nm+LGL2CChTxgUBfGv?=
 =?us-ascii?Q?fEMRPVZffY/gJ2Vd2QWdyck2ijHslh2n4VeqSAnQVSVhyykTkyK9mcan41Ik?=
 =?us-ascii?Q?SYrUCKK9YBvoiNEWPyxkuEXjRbRsVnPRpN+rHKCfSLOkPDl7PGT4b8D2Oc8P?=
 =?us-ascii?Q?g7ejZtKP1bAEQujCu/lL6cusvt7vdJK1zW1X2ogWm+3dhrtjPRFbZdEWAGIU?=
 =?us-ascii?Q?J5Ia5+ZHN0e1OgfuFqq4Q6CXZHTOGF8hpq80u7ubYuU0VzwQnB+ZeRc7Vl5M?=
 =?us-ascii?Q?qhVKJ0l7YSMo9ohnppS+Z9yRHihAq0rVT75VxD2rYGYt0XBDazhUuCLtjvDl?=
 =?us-ascii?Q?hf6C7UzlfVi3nxHlOcPKmEOZGMs2nI6A3D//+er/ZNvXeNPVwik0Ek77juhk?=
 =?us-ascii?Q?KTh1ypNBpRfM9YXd5P5V/qzBb0tXkRKLEIEqyTso3IN3ksAvkV82dr3U+8aZ?=
 =?us-ascii?Q?q55Y8osPxgzmzqKGS87EWePrQ3Qs1Q7hfGLvS07CjHxfxhvmtGaCgHjAJXFM?=
 =?us-ascii?Q?MBQcWm81FfngTq30gaWo60jVYUJGE5dSzhhXIeXhooapkg+r5epnbly/7iSe?=
 =?us-ascii?Q?VgznIf++Dshm9uf/pNHStvzrKX4pAS8J3m8Kjs5trWpuMbz64ECiKlnhqu3u?=
 =?us-ascii?Q?tlrQhaoxnwvwKzsdeT5EviADUC3m3Vd0HulmiMYQGIcOx8iao/JDADP5sBNr?=
 =?us-ascii?Q?OD9IkCBOEfQwP3Q3Sx/Tn7AZm4uNcYLtYAdVto8UDFnYVRWPfJ2V9zxMSHkL?=
 =?us-ascii?Q?ZGh7a++Hj82zjWIvPNVA+bc/anLEhQooY02eUEQ038lpLUeH8RSLwh1Ddob1?=
 =?us-ascii?Q?ALztklc5r8t+QVhuGU2iYX+CDcD5RVHtQJkb9YtCk3n6ipiw2H99Lu13RDpq?=
 =?us-ascii?Q?8s15lg7+I3un3kBDoZsB762QGVK63fuND2n0ZEOO/Qx87zQTwTIylIs3u389?=
 =?us-ascii?Q?ORlnZVWDzySCkQK9LbVrhJm959vyT0s8AjL58YWl/IlCHKn9Ud3j0e3HJKQ0?=
 =?us-ascii?Q?qZg+Qmj2YZmFF3lGHUGXEp6YcJMaxkDGdThfOYo6q7uOAIdbKvgi0ld2U1Yg?=
 =?us-ascii?Q?S9IjwiuhnHGI8vdoH9w98zv9/w0HuP0FkASDK3ElouUrx+A6ZZuPeMG3LmYH?=
 =?us-ascii?Q?eYfbz6+punUrcfcyeB7HpMxT2o/2UwNlXOZfW4uw6/9joHowFCFVh3mxxpcQ?=
 =?us-ascii?Q?TUFMbegBmNGWtTBtXfvaSYTgTGNCNaNCtLCCgk10l0hNcO3KB3tslOMmoEit?=
 =?us-ascii?Q?RWeGDuWlI/9B5vIq1mGYBwBnlfskujIuBFjmoQFl7IxHTgpGFFJ/UqXIj5dL?=
 =?us-ascii?Q?ennKJnrTzQagbZWNFby4yJuWa4YPmHNzT4EsxgEeCu+IRi7d+b9GrMyaQW4X?=
 =?us-ascii?Q?wWGk5Too/uMiDbrFMkXnzxr1W9dbBOobSzbzxf6E8c/gPjUHyd97jjvZxes+?=
 =?us-ascii?Q?nA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5783c948-1ac8-4ba0-1178-08ddd1974f56
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2025 07:36:35.7737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WuR5oZdyBrTMITvVp/DTvhmeBvW1/acuxrdf3j/nTgoV6VJx0LMov7w93zjBs5lvHW1ZVEWwFqgmiKcAYsG1ZsvLwfVlFEN2DkmqvlQn6AM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF1AF044E07
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754120256; x=1785656256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YD/cx1dPuvcOanjJl65ZMK8m3Fp3/ddBWgPZiKjwhVg=;
 b=g8VZtF8F+ItagoTmD+rtCjbMhfVxOcM2mGMH2X/sXV4ON9YVkwLGX6q8
 UciyxPNgNmoHkNZT2B29rriFg2LVuREwk+peaI5Js/CNehmIvqhD7ccjq
 rPk0A3rSsBr1ctF5/gW2rnpZCNmKJ9b9wvIua0ujRsNiKZNQRWdVThlcU
 paimGCyqsyLgPdNdXxuA+RZes/zylxQz5FxLuau0oNAXRR09akh033i6T
 76AIkm22r8tkFF9Dp0g6oOlYXulEhY33elcteuwg+5ZFug70fQAlTyLU9
 zDFgD9X2AMe8Oq4zx61WwdFe0UHus7UiOHQpbhsWoXn+SjYozPw6x5oip
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g8VZtF8F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 6/8] [PATCH iwl-next v3
 6/8] ice: cleanup capabilities evaluation
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
> Dave Ertman
> Sent: Monday, June 16, 2025 4:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 6/8] [PATCH iwl-next v3 6/8=
] ice:
> cleanup capabilities evaluation
>=20
> When evaluating the capabilities field, the ICE_AQC_BIT_ROCEV2_LAG and
> ICE_AQC_BIT_SRIOV_LAG defines were both not using the BIT operator,
> instead simply setting a hex value that set the correct bits.  While not
> inaccurate, this method is misleading, and when it is expanded in the
> following implementation it becomes even more confusing.
>=20
> Switch to using the BIT() operator to clarify what is being checked.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
