Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C91A61C7C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 21:24:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 686EF612A9;
	Fri, 14 Mar 2025 20:24:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kmn6WOjh6qyF; Fri, 14 Mar 2025 20:24:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A947461ADF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741983886;
	bh=hGDpJz77ER0qRbNn5VdTnqlJxinSkgHb1ddIYLtDsbE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p2TYbspG6MTQPamQMcFlyW73jvYGXYEyVregzGjRhCHjZTRLuo2B0G0ZUqJsIDeq8
	 TA/DIs6pRHaSLwh4L71EXkfR0qvo1enJQuywyNK8x1HmK3HVxyWGHwUHoxUsEe9I8m
	 eejR8Od9CFK0UlwZJSXTy+sb1xeRt1CxTdIKnih2vIGrKz0S+EBRfc0RZAkO58rG/j
	 ih5BPSvrUQUskT6yKTO0rw10XbIE080VofdGvlkhvPoJrlNSEQBBjJi+fVYeQksNxv
	 17+bcEPy6U4PNY30DQL3x0haqSKyyCF7AGVOlCsCVqwD3XmIQ9XVk29NqbXh7tFtYm
	 BOUuNN2JkzYbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A947461ADF;
	Fri, 14 Mar 2025 20:24:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E4E2C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B5B061ADF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QV3oPYpd0ulE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 20:24:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9D625612A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D625612A9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D625612A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:41 +0000 (UTC)
X-CSE-ConnectionGUID: 59LEGELfTF+ZOCZTc52LSw==
X-CSE-MsgGUID: e2tHm8DvTc+Nk+37+/w8ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="54147703"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="54147703"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:41 -0700
X-CSE-ConnectionGUID: WJhxaCxXSae4hu8n3ewiZg==
X-CSE-MsgGUID: RipXEU9STYiKkJ9o3BLpVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126577733"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 13:24:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 13:24:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 13:24:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IQYCUp1iDmCay1Ee4dF2wr6EoeAvBY1yDDdigsOwRLHvGBziR8SXpQ2Kv0Ps6CRsPI13VXYAtPM8o7lAG7jB7CBVXOMgbpODus2sqQSxv8h/kZKwrvcRO4AiixBrn6JbtW6tZGoJpDaFRYzF2YcQKDXStsezkU2DbIwFJUxdLfFAXF+QwUuILnfcdK3Eu890mQGJQgpc4+IEpIdGzoz7VAxkZT14hPLq9D1Crg/4JanVpBLo21iBcvQjLDSwCLXONztVqGkqlIDcVbb43sC1GYA/1JwfehDJjWgNoYBNNNmeMyQv9fKmCLlTCzsLEpjBVv4ElWDiQmUa8xEU3ApVzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hGDpJz77ER0qRbNn5VdTnqlJxinSkgHb1ddIYLtDsbE=;
 b=hd/ieywbursyhUrWZLMi85FPKbk/iSJpNqESPMRvIznsjLXLwDCk6BPEdvPp7FW7pAYKrjDeTINys9sVJ8EWjVih7S5bar7Wmf/epxJXqQ2L/uu59aqj7P40CWnJbUBLBTk0x5ySlkdAjOppnW38NCq1+nOjx4ECOCrTVoU1+q8s1wOg7tvGqKF5JQNCd0pHy/SyxNvfmnsX8GgGYqsEV4XgrlKOH4yXIC/1yBRyInxI9h9+QGofcm77LCtZsLNjfAEoN/u+i0GFsxaIFeikmnaGr7Dq60/ngHQqy0ZXW809XBUJBKwV4k0Q24J/zdvElbO6BCPIxaWGr43lrfr2Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY8PR11MB7922.namprd11.prod.outlook.com (2603:10b6:930:7b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.28; Fri, 14 Mar
 2025 20:24:06 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%4]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 20:24:06 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Willem de Bruijn
 <willemb@google.com>, Mina Almasry <almasrymina@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH v9 iwl-next 04/10] idpf: negotiate PTP
 capabilities and get PTP clock
Thread-Index: AQHblEL4CIpskhB6BkqbV+WjaRLB7bNzCtWA
Date: Fri, 14 Mar 2025 20:24:05 +0000
Message-ID: <SJ1PR11MB629760BEA7532A2DA8876FB99BD22@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250313180417.2348593-1-milena.olech@intel.com>
 <20250313180417.2348593-5-milena.olech@intel.com>
In-Reply-To: <20250313180417.2348593-5-milena.olech@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY8PR11MB7922:EE_
x-ms-office365-filtering-correlation-id: ec202d77-178f-48b9-faf7-08dd63362b40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?DyB6vYr7KfGKAPBP+93pEP+s0ilLm9MrjdZifkQz+DixntS0jKZHj5GQuxTR?=
 =?us-ascii?Q?Mxm1DB6Wi1T+Kj8TpEUKsU0qrqF1rTTMxwRWnEggUxXgtvhLMiKgibCPofMy?=
 =?us-ascii?Q?yLk9KjPyQS6tPQSmOECtr67jnDUJb0n1NBOBiAx49YOSyvGHfRtkHIuS0vRe?=
 =?us-ascii?Q?OzNEKgfo0CwM2w5PO90mjRviR2CZlqT1wY8TYdzmv/AtQAzIe3P8IVFI3knm?=
 =?us-ascii?Q?Dl3fYU4CheIMp/qIKeF9qT9TFCHdGbcS4J4W8CNNla0QLjd73pG1HEFspxDO?=
 =?us-ascii?Q?TOh/qYZlyTG7qTRWufCjCtz4Gk6tfp6NIBPvfdLRjI5PpMq838ci0hhsBQQ/?=
 =?us-ascii?Q?JlwEjuZWO52reRa/XHbGlsQDf+u7YqtLb9pAedjNKHVTJn23lWdbSTz6K1jQ?=
 =?us-ascii?Q?RFo0Tdkv/XiZxN/AUjpSi5a9Jw2pjgkXHkZyn4BwWz9PXQPh5PV34z21Ozxc?=
 =?us-ascii?Q?koJdpQAsNE08bRe2NNyKv6zYKGl0fsiOvuuJzBVGv7Fh1gNMDTQjLf4PirZJ?=
 =?us-ascii?Q?+N0XmTl85v9LXfpdhLp6orGwd57fX/dqOrmg4zizBh9NrmQG4LLSaAFAvBel?=
 =?us-ascii?Q?L4/OuYpjhkuOrhxX9fEKiDoaQkNfgoCFKSWfQwEjXa+gg/vo0ZxExt0691S+?=
 =?us-ascii?Q?1VoLzNS3mk/o85y1krI4OjujGgsWIHpGrI4Y667+h8Tnl58PPYSOKNIHUa48?=
 =?us-ascii?Q?YpLmSja6M+63EPR49P/zP5zp5+yw+Q3FWjuAxyW68yQK+6Ax96Ku3skxbu9h?=
 =?us-ascii?Q?yTascoC4KT/K4f5cVsGFC3jHE6N87KtGu/F7Wfi6frUjoUJRkthAerJvxxLC?=
 =?us-ascii?Q?twrs5FF9ueaBTZqYNBJ3T07Lr814FMif5oC5UAJT6oa7wGJnzg1BeeIHlX8m?=
 =?us-ascii?Q?nmhm7ymAYrmRFxqYN8OwEJYqYxsfWdkWcW+k0AcWpNFuX/y7M8SGB4QtCqpb?=
 =?us-ascii?Q?//D5n3RmV47WSh1ZrsPZmy25P65URNsToH5zOAQUJpr+K7YheS8Rree3IJzL?=
 =?us-ascii?Q?NEEZAidA4ZkQsTGRzg3Z/sSrAW8ae7tvk8uy7mnuak1p5+B+pt40xWgfJ3Vz?=
 =?us-ascii?Q?9uEVo2NToQxqKZrPASqfJAx0BxAevQA3CRVOE1qGhBJICIuB8JwzYW9bR8hT?=
 =?us-ascii?Q?/r6J4MamL/u2mcNyMKt5uYE8F8dii/K4d1zz+zSQZUjjoFn5npXXZoTEBJCe?=
 =?us-ascii?Q?BExCcmap04Ah7/TNyScpADJaASYvLrX+wUD7mk1W0pBkrvHA4NXMjQ1usAf1?=
 =?us-ascii?Q?VzD15HpN2E11mgpuD8bucNNPuPvipRtYiXEs9x0EpibfJnu2llREi06wxPO8?=
 =?us-ascii?Q?3vOV8bjzArrtocGgW0WbpSjl+DphvM6qutXhIL5ioYk/7aGqcLi9KOt9S4Oy?=
 =?us-ascii?Q?BAOPKT4MfLI6L9trwsvOim5refhXq719e+rk2IX6Z5XBCqaFj5R8tVYj0XB5?=
 =?us-ascii?Q?OL226qssJHAnbRwRZLI5J43lNytjOPBp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ltSsGjkceSlxMmIkgtrPLG3oDAWbpqn3nN4AH3yixd/A/O1LudH+cTkoxz/Z?=
 =?us-ascii?Q?GQECwVdxt58dbmP9sExWq6DxYWqWdEcG08J4dGth0ONL2qVFckpm0uYXhy6L?=
 =?us-ascii?Q?QBVvopIs0Dn885Ik5dO5myvNYBme/HDcnq99e/N3/6rM5I9Dd+mdAkQnHCJZ?=
 =?us-ascii?Q?tHoRFxkqN/iyHrfeZU1lhzdGgaqJqFT5B7HhRAd/+/NVTNEx8icTJ9EMM6SF?=
 =?us-ascii?Q?bkvibNJ2evPhfPNh/giCa/C6OyiKrJFEbulElp4qdm97/5Vstj20ZUXIaSXs?=
 =?us-ascii?Q?uwoaDVEb9APVUV/Ky7qtG81DG5Mb5ap280fz9khid6AxK+tYf9lvXooSlHcf?=
 =?us-ascii?Q?AjhL1vAfRQMxdmqnWgPkVwkk7//u7KEHtlywsXdYDNDEp4xwVGvs4VYNSbn2?=
 =?us-ascii?Q?wBPk7AZxd/+X5lbo/8ySsjAipF6+xgxjX0NbLoSY1Cb7XoeK8T2dRRWFE1GX?=
 =?us-ascii?Q?+OnAS99q7uZlX3C0uTNIvVJsnXPQEsiwwb2S0NqMN9kZmHPfaCxxqFxPZRhX?=
 =?us-ascii?Q?wUMlQHLf8ZwWRwDZwF/8iZoSB5XeXHAp/ihD7H7gTZOnnMy4a8KROM54yFcA?=
 =?us-ascii?Q?DklQng/pKewZw7xtVcBC/S6ngT2G2kUijDJQL/Rd4YPTRVrKp+3aH+i05Z6u?=
 =?us-ascii?Q?G7zW8FU+p5A+Cr/oHWseHZa/KSa/QdfsyjAStzRraxydTurgz7GJQXfP7FXx?=
 =?us-ascii?Q?vXmaNkhok7VxQ2qGMD8INHSOjQUnJy7dlX/+FVVstae18nU7ZTogf/GjexAU?=
 =?us-ascii?Q?u2mqVyS3BEheEW5Kx0bKzFgTh8KJ975B+KP50vHwdBkcw5i86S9K1gwnHWZ6?=
 =?us-ascii?Q?3eS8dcnqabbfCGsSTZCEm6tFkMO1BmBZe8hbhRq19utEl8S8TldUywvx8/fQ?=
 =?us-ascii?Q?XerwmnGdgiCKTAZ5vMyU+afD4ZqoQJfHc3WxGcETnxqdZ3M8qAq8LoldCnMM?=
 =?us-ascii?Q?AQnM6bM/xa9uduKGgylvOOViHsMReK/Og4xoaf3AbSsOQbOMoE6kbJfhEIko?=
 =?us-ascii?Q?FN8EiabAUbtXDwVaxBI4yVAwi3O+DFkKbwV27YPYdq7qie5zH2kDJ8fyn9sC?=
 =?us-ascii?Q?8m0sK8o9QhdajDhnhIz7SD40p7AumphxjdgTeGcX8mlLyrPgA9neEmioP4dw?=
 =?us-ascii?Q?bU/vujJFnt1fD+jyabNmtisZBTlppwPQbd+qgx4wZt5huPBhGZ72aLbdGFfd?=
 =?us-ascii?Q?WdBujK5jrfVNY54dcPNfOyaq8XrxX+HObPNhbGlgHD8hdV3mQIQvLL1by671?=
 =?us-ascii?Q?gK3MEzd2Iv9HW8GAyENyBz/IZgV7mjqJh9LNsynPKoZRk+0EySpe5p1eJ6p6?=
 =?us-ascii?Q?qV1ojbACeqa00x3Bd6E3pFmQ1j7QAf8sTBzhAOnjv25mFEcWePScpAW3rBeM?=
 =?us-ascii?Q?iNmo0WOYvpGALUv3paApTpp2O8m/G+x3lJsPpps+XMY1Qjzv5TbZ0akbT0dp?=
 =?us-ascii?Q?3ywqiwr0+p4d/wyeZqHBxaBvJxbidCwYtW4CKLsIqfWq44vKrISbQcIJML1y?=
 =?us-ascii?Q?rLWQ/s79DscI2iWVaMzsymTD6UWjT5TZ1yUeyGXE0ZAJp5qTqrVUXIuu51Cu?=
 =?us-ascii?Q?/1I17dUJl/cxhO818Kqb2/6PcZYCrqJBgk0xMXXI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec202d77-178f-48b9-faf7-08dd63362b40
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 20:24:05.3570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4a6TCBK3agrfp4h7LzwFamJA8clLXwFq2WDCk/sLKluGNV1O8BYWKpZjT7sGf7ds6DnFIQJEK07LtrhRvoqKcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7922
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741983881; x=1773519881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hGDpJz77ER0qRbNn5VdTnqlJxinSkgHb1ddIYLtDsbE=;
 b=BiiKfO9eVofVMcbGmvJXA4nMlLmQG3tdRap1bAMMpQny3MjIDq09NRoG
 h1zelh7dqrqjbJzZIvd7Wso4CPzkfzBcjCIYjky6deqz3HCTTevpAbVvl
 CAMeKpRDQEL2R/yMAPvLmmva/N6rAME1aUL0k0uAZ3kU4qPKfJ0HAuBmQ
 iLoT94XO5x5V+ZbigYYoV6QtVX/EAsfb4K2UD/Y6EQzRtxgtPdi2/MPYm
 0HF8pA1MssbqkRVMhJDCZ5MP0xbuircBRMphHGWDWp7UO0Q6dXLCo1fhX
 793koxMj0h4GcCJa3TDdXEsC1sOLMQHlDwXdfvNez9X1Qy4KZGX7+s2kb
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BiiKfO9e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 iwl-next 04/10] idpf: negotiate PTP
 capabilities and get PTP clock
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
> Milena Olech
> Sent: Thursday, March 13, 2025 11:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Willem de Bruijn
> <willemb@google.com>; Mina Almasry <almasrymina@google.com>
> Subject: [Intel-wired-lan] [PATCH v9 iwl-next 04/10] idpf: negotiate PTP
> capabilities and get PTP clock
>=20
> PTP capabilities are negotiated using virtchnl command. Add get capabilit=
ies
> function, direct access to read the PTP clock time and direct access to r=
ead the
> cross timestamp - system time and PTP clock time. Set initial PTP capabil=
ities
> exposed to the stack.
>=20
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Tested-by: Willem de Bruijn <willemb@google.com>
> Tested-by: Mina Almasry <almasrymina@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> 2.31.1

Tested-by: Samuel Salin <Samuel.salin@intel.com>
