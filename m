Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDI0Cq/KpWnEFgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 18:36:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBC01DDE54
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 18:36:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12057811CF;
	Mon,  2 Mar 2026 17:36:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eXgdK_M-p6po; Mon,  2 Mar 2026 17:36:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71FDB8113C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772473004;
	bh=804/VTzvke/OpSdA1LqxD4gk1aBUSEayov3Yl+iyueM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XrZykMXGqYRIiujHvJC08eYHutIyyhrWaT7Ms5ijzm+M1PuSBce6+CONejc9Q6Fo0
	 9bkwATHX2aStydCaJJYwnYst0J+kkJXNQ/lpV/Tfd2MjxcuvJgaw5tdLaj0NBE56ui
	 ba73+MzRYVBqu134M4mGv2N3z1HzI7n7MTIK+rC1zVNa72AAETsBOzbhRzAoM6Zyck
	 9qVsa+pd/yu0lyAlwS/S+SJUEIDyRYf7QkKpwU1+6+SEDDXmTWwjiT07HabHwRz9jh
	 F3mr4J7X+kwDQrQEy1MQ5c9OtH5PL01EpzWRxDHgO2J54BvHjZA6j+ak7dILZNgr8G
	 MnfwwJNaTNEmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71FDB8113C;
	Mon,  2 Mar 2026 17:36:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D13F231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7EA668111E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:36:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H58DZxiUNbcH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 17:36:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 91338810C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91338810C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91338810C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:36:41 +0000 (UTC)
X-CSE-ConnectionGUID: /qUNZDZNSWets/yOMOkcnA==
X-CSE-MsgGUID: hIEFv2qwRkS7I8wFlW7qPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="83825881"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="83825881"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:36:42 -0800
X-CSE-ConnectionGUID: Alz2lfgqS3uAWL3pqRL/UA==
X-CSE-MsgGUID: FjetTc4mSvW4HHLJYuznXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="216169181"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:36:41 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:36:40 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 09:36:40 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.22) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:36:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qbKIXKpgdLzRbwb0i/0QFi12DAW/+Gp5nLV26ZGJiIlQuyIbI8Ewm/4mW1363ZjFcX26AGq+/z16JGAnlDcFJUa+w9dlHupw27jCoQkPQL+qP4M4KOJyDcSibr9WZkD+UvdjBVHcFAP7L03uu8t3S7G9Yp/NQIL3mPnd2cGqKkOCuxoyYVyQg99WQr+WN2CJNFirXeshAzh2TmKSZZrBgqddfWUIXjp9SwaOErWZ8lBVxsBxtt+wgMLNcWw2lTcyC/liqWBZOAA6NuL7fBLbEpIuOogNEKrXpOwcqqlCjc6SDBMgdrlKGWs/GOEykNtcHQceijuWhUOAbOLUKQvQMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=804/VTzvke/OpSdA1LqxD4gk1aBUSEayov3Yl+iyueM=;
 b=pNjMd9wVGYeeIGtiJCWhbYajBNOFm7s6dKRA/23MXA1pkFB8NpDk27jYJB0bVBstZ/tGQAnm16m4a/gEjYrR/CWSNuXFHBfSraL89YJGRmxWYUJsYTYiVYIw58WofKNs446haKMl0VGzuo+NCgYWpew6ekWSGUNYSLWZPR/sEXFxCh14mDhGhSX3gt8L9/SEWTTbXqITW/U8YW8kgb5a8dx6UlR/Ao/0jC2QoFlkqXTvjAWTsaeQdDexSMFOzIPidMjsZROyjrAJwf29OK8Hvt5GIkYFlXn0wnms0k4xqyrF3N923dv7UZ0zj1Gd6QjFRfGYuGp6QnFu8/omcgYiOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::831) by DS4PPFE70B31BEF.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Mon, 2 Mar
 2026 17:36:37 +0000
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::16a5:1a74:21d8:8e3d]) by SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::16a5:1a74:21d8:8e3d%4]) with mapi id 15.20.9632.017; Mon, 2 Mar 2026
 17:36:37 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>, "Slepecki, Jakub"
 <jakub.slepecki@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 2/7] ice: allow creating
 mac, vlan filters along mac filters
Thread-Index: AQHcle076AuYDTK5D0+johnm1If6TLWbqklQ
Date: Mon, 2 Mar 2026 17:36:37 +0000
Message-ID: <SJ5PPF6806D69E4B895C8A117008E9AB7C08F7EA@SJ5PPF6806D69E4.namprd11.prod.outlook.com>
References: <20260204154418.1285309-1-jakub.slepecki@intel.com>
 <20260204154418.1285309-3-jakub.slepecki@intel.com>
In-Reply-To: <20260204154418.1285309-3-jakub.slepecki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF6806D69E4:EE_|DS4PPFE70B31BEF:EE_
x-ms-office365-filtering-correlation-id: a7c9d707-9e1d-42c0-9683-08de788241af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: QX0raIVHGPabTdeqaNHMq/w8IOEtDCklKTahN1u2s94TgLWgZS/gBOvPiEurgVeXwHBeDJQdxRz1stkeLyP4GUPIYBCt4UnXdwBFNWpFK+ExAYhN1VaPq5FUS1y87Kh0mzkydHwLE48S9fTJUI3VmAhOcer0TkDqr7N1QaDCBkE5glxfKBTuZM/cuB+rbepUMgSS69ojSRbe/YU9wCuHAvq4Svz7EfcOqRsak3Fz7MbLwwQvDox2G9gtwamgcCBmNd0kgRkRBqB7hPJu+sSaVJV1KDmM6vbyq8x6WHVCDtzWJ0FrTHwvTNf39Q3Q/0j3VexZi1ozscAZepHtipk64IYM5++5NdLtkaznc/rCsJCBHLe9weDvMbPSsrUL/M6fcxvflT2IZflAbDscCbwsy2b7kvCQO82G38UcfwiakgJlnhbSQsNsOUPf1DQb+WBqTR534htUi8jeft5urGu3Ol8RK3tAGAa3Kn+uBX3kiTfGyJW2y8yUEIK+qTEj9+NdXCkou07ETJNKaB+xdZlbkrDe12dDKwptGQsOQ6iqgHHBlnbO7iJOsGs3F6FBRHGgSFR81TZf8MlwzNcS7GxmZjAJXvm6eOo8nhVq4I6HAlTGygrXYqd1fnoxNFV+ELF02c4bXyCRh4C6moi15Z7VxB8gjzxzHnq8I6Fv0mBS+xzYCapxyQM9FYeSD3cUnepfMXy1wDGT6N6NH4GV9lv5cVI6rwVxDHR9hKOn+Xd2ayx98Nu1xAGLaaqXsjA30JEQTDOrxIRXh7XumRlADpc7XhHrvWYXVcXnb0pMt49AMhE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF6806D69E4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fRzJlHda5lSPjzcER8qhHQZ6EU+063XMlAhsQzTelrWkvGINNpuVKrVTQWnE?=
 =?us-ascii?Q?qCnnJaDxoocxBaA5UWcCH93qDCaHK3L62k/GAVwrOUiobDIcAI99KViXcos7?=
 =?us-ascii?Q?6hDlYlrg3n+vYzxxyNUr03BncWa63NteJ0dFT6JUdx4eWwK3VBU0In484djp?=
 =?us-ascii?Q?lUX8I5DBxTs8LgGNnoT5MMb1jSRJpq5bPdl1/k0Hn93YxIAXtCy8qprHJshO?=
 =?us-ascii?Q?3wFV593qNq64bD0xFCIliasZb1/ApwOVMZXq8iHrlxj+nSZCrDvFIbFcRpJo?=
 =?us-ascii?Q?Y/byqUjP4OtQwNF0x0OodglKLKTyfn42HqK9dUH+ch4Vt+s7DLVBThVVXar0?=
 =?us-ascii?Q?ygt7tFSHce7FZty8IinCQKEnkR5IAlmx0WaqqpQFWzZ1xF3id/FDEj38sTmj?=
 =?us-ascii?Q?jvCfGCX/KVQrfyQyctMDkMTMYgx1fB4IMEpe4+7LD1d6EiNwguCvB1AHCU6I?=
 =?us-ascii?Q?OfHdmd4y1X2mvJg+f8CQRqlOJLv3dUHE+WbUF+6QHqy3ee5jdFCjnIM/eAZR?=
 =?us-ascii?Q?Kp+CJs0+jwXJl42jVDc/abf4XFdh8SVdF+b5DGvc7R9bLqZVF3mH4V8LlbrH?=
 =?us-ascii?Q?yF8MPON9VIUWSo7ncwGeN1Tnwkm70VktHY2q7L6ctO5IKqRD2j0lrNBTw0pq?=
 =?us-ascii?Q?XFDdcjCg7yWeK0EwsLcCPYWj0pmhbi480ZlrKKOAnAEw7MJlQC8mKIVfqjIH?=
 =?us-ascii?Q?n3NLdL38dnM8Qi4gLwCDSS8EvJjXGwoijF6MkLQZjPo25u672Bw2BVeQoRx4?=
 =?us-ascii?Q?GQGrZGpL1pcH/BvcFKBtoeHwWVljLgG4tki3gAKVT1jeiHOpVe3TLkUP1l41?=
 =?us-ascii?Q?ryy5N53gO+i9BeWbyY+2DdwkJSSO1cjoVjti3+GYA4606tK4qlNpXQwZklXj?=
 =?us-ascii?Q?4/gGo+mJC3XMIYn1wx+FvuBUKZyKHjzzhaX1qhGap754aqavKxWJ25n5a1Wn?=
 =?us-ascii?Q?kOae1oPExekPB2TbNscJCbM6oRqypXE6NBMK8IVgvLY/qNrLAj0/KkWvwT6U?=
 =?us-ascii?Q?dcm55zlAHyklvhAq7yaEbso9fo7ZE8Kezv+X+RCMJSbhq9cY+R/Kc7QxvRra?=
 =?us-ascii?Q?F7MaYuf6ch95O3/qlOTTtT45GmmZrDE4+tbIWQPiTLs5PDp1sh/QpLNIVJJN?=
 =?us-ascii?Q?i5LzU8ee3oieW4jbmfik/q61IFvIzMfnn4mWPujYmi9X6CEsyqWJbPG9iotJ?=
 =?us-ascii?Q?JTQEWO7s+6BqQt85Vin4S0h3s4V5YY7PAoClJ4M3uj05UMCCdUAorowd5xjs?=
 =?us-ascii?Q?hwDKn3TpyRidblMSe06cv4P+ILR7EBtgDkr3SxgpRFX2Lju5JnMvGnjhIYeF?=
 =?us-ascii?Q?kJNfn5Vu15+cLCH/15QtBmgloWFuhpx/DXwT8WLGIQnwDcf7asSMB0MX3KGe?=
 =?us-ascii?Q?dk9gCCvg+9bFVOllQ6HH1/r+/p70BucVudABLPkuMkPR+lpy/wrH+WL/A/cW?=
 =?us-ascii?Q?PvtYz2agRdTatu2eGUE/0jfWG2GCNSz4vKUtMbpYmKfB3ycbcUAb55vr5BOL?=
 =?us-ascii?Q?miXEEBkJpBMOIDMxSQ4xaRxPoFyUOH8/RQufYVOj6ECC2ijUYwmZqWVk3YCY?=
 =?us-ascii?Q?rNg5SmuBHe0SRHtLLnKfnFgSI9U+zCiVA6/TcdvMSOxe0p5hiRnY6uG4pNXz?=
 =?us-ascii?Q?DQJUPBgZqxPiCPtAOsZMIVGWj6NxHlVtIVaaF5fcxnSW/Ag1AAtV5ysdIzdH?=
 =?us-ascii?Q?setuYIkGsbvXAdKxI+d3hu9w7OwwBbMpgGdZMB5t0r6LK6RE0QALV1qvVf0k?=
 =?us-ascii?Q?iuQXA1oB6A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF6806D69E4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7c9d707-9e1d-42c0-9683-08de788241af
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 17:36:37.6154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K7tJUDYn1H8Ks7Pp37GM6P+/Z7BvtPaGS/9YB9ORtAgQHEWbEF8CAKiXRBQKae3dOCGij/DMbFv1d5SHaheoSO2sLSBp1KNyjwUxzOTvH3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE70B31BEF
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772473002; x=1804009002;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aZtke8qxEtjG0gbSOCaR19Q3EYp89GAhhycUo0SK/uE=;
 b=EhftN4Pvfv/crRYPFIXDRS78nXiBvDrMfs7TM01V4BngZ4bTu8xnCYTD
 az4LGfZE8FaLhILyjAUOfYI3MpohKwSZReEMQ84oNmjq/ywxWXVTEl2XN
 KbrvWlAa+DBYqF9D9vyuq0gfSEPBIQo11Fsn1K4IQCOLOh799vvMjufWE
 tDdn/N1Z8DaoddxqNFmSuMlZJN5TLvdvobH09wE3QxbfY5y0hVglrBYKU
 tgjnxeZw7d0BHc1omh6Rr3TPgrb2MBSAA8MBbQ92C24THTX3GyOpKfLsq
 wOvsK99ts6wg21W7m21wZ+zLYmYPPJ6wG1AiK55nGJlPI96VYy7YEVvoE
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EhftN4Pv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/7] ice: allow creating
 mac, vlan filters along mac filters
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
X-Rspamd-Queue-Id: 7CBC01DDE54
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jakub.slepecki@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,SJ5PPF6806D69E4.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
akub
> Slepecki
> Sent: Wednesday, February 4, 2026 4:44 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: linux-kernel@vger.kernel.org; netdev@vger.kernel.org; Kitszel, Przemy=
slaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; michal.swiatkowski@linux.intel.com; Slepeck=
i,
> Jakub <jakub.slepecki@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/7] ice: allow creating ma=
c, vlan
> filters along mac filters
>=20
> Among other uses, MAC filters are currently used to forward loopback traf=
fic
> between VSIs.  However, they only match destination MAC addresses making
> them prone to mistakes when handling traffic within multiple VLANs and
> especially across the boundaries.
>=20
> Allows the driver to create MAC,VLAN filters in the same flow as MAC-only=
 filters
> completely interchangeably.  This is intended to be used to forward the l=
oopback
> traffic only within the boundaries of particular VLANs.
>=20
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
>=20
> ---
> No changes in v4.
> No changes in v3.
> No changes in v2.
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 48 ++++++++++++++++-----
>  1 file changed, 38 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c
> b/drivers/net/ethernet/intel/ice/ice_switch.c
> index 84848f0123e7..0275e2910c6b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3606,6 +3606,29 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16
> vlan_id, u16 vsi_handle)


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


