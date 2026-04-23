Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJf+AB1R6mkhxgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 19:04:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A761E45546C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 19:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 314C983C9A;
	Thu, 23 Apr 2026 17:04:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eUIb2IfuZ2wX; Thu, 23 Apr 2026 17:04:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDD2983C9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776963861;
	bh=loZcNS8hWCWuPF8nvWSQwx6gvEILgdBXjMOQSa5FK/k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GGHZgqgTQ3dexlkqwua8T/WNBacPxFp0c9yl0S7YjAkP+fMYdYkQPoX4FEnFdBV5x
	 pFf3WjeX+U5uw1ripk11Bo5UpHKi/LJ/z4ObWREGzA5//IVHR91zh+MykJ5bumoMLC
	 GxhpP+0zUkap/Bm7H4tCdDWuIz19bDeUCxZ5qT/V9Ym7QiiOeb7VhC2rNnDG920q7k
	 OYtAk0rnsH9unXyrfieZ/StnNzgTCIHtvoFQfVMYJu3+oxlN515iMwycXTRK15Et+W
	 Fvsbv9SWk1xK69aHUUmTbVLsScZqAQurxU71u/g5G9KqhbNPVytfb4gtgu2kr/h+Nj
	 g1HrGeQ7yzXdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDD2983C9D;
	Thu, 23 Apr 2026 17:04:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A6ED24D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 17:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3FC2A60EFE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 17:04:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y-hBWZF1gfRk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 17:04:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B24C860EFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B24C860EFD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B24C860EFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 17:04:17 +0000 (UTC)
X-CSE-ConnectionGUID: yXOlyVVtR+qGAzdkwJKazg==
X-CSE-MsgGUID: X40KLAKISoKHfyeTPC0zew==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="78131914"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="78131914"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 10:04:16 -0700
X-CSE-ConnectionGUID: l4ZCfdwCTleQZotHXWJJAw==
X-CSE-MsgGUID: jaWFthNDRyWw3DCvsQuctQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="228142967"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 10:04:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 10:04:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 10:04:14 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.32) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 10:04:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FkhDzDoUOB1UP0E0ntUxbIe2BTc7d7zB+tsa+5YF3Olh/PQf7Im+KhSx2GVTDedF5t5fEWa5CourXNwelC6rMfWybVJlL9V+eaE47PvkDUbUgcP7sSuG/TSo6vIojqjqjhViITx+0gyl7X4gkvLQPbOqYY1Dy7Hr4qs5XvyJeajz1H7mX/S2QVd9Oo2CX10iU8zwQS147qzUHKLFnS+S9MXTAYYtc8RMvaW93pMXj7gGrF3xD3rn75ve5SwpfNzMwpgCcufCkaOUBsxSqJkTwDyiftKW9A9OHw7nu1LO4m8gqfVZ5fGz3vRnZ45QA6GGTUfTqZtC32+m8xqd71aCQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=loZcNS8hWCWuPF8nvWSQwx6gvEILgdBXjMOQSa5FK/k=;
 b=X9hG+5pTDtXjArNAb4SEk1gGyjMzJi4w0pjDy0HKK5Jw9fvAkV0U61DBNzz4Y76mR/Ritpx1Xqd+OsK8hTKnNMvRfN0fMbcbmYfMdRXFVf9a+hK8e0SC994E9kf3jGbT2t4wbLCSf/ryy7ap9KEbjPPguR0ao26MrfGmo7svmuok6zK5OaSbD3maLaObutxcEi8KNBMvANF7DpUsQQSzGRzG0XAo5mXm8o/TIgIehV9AuI5CovcXq2wXCh4SdfWMRzgB/elBmxHq9G0/KwSC5AjGnTkWsiAtwuOA8vVpp5qVHv4/M9YiUwGNgeYUFwQ1jbycZSNHDqv+Y0s4uprDQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7527.namprd11.prod.outlook.com (2603:10b6:806:314::20)
 by DS0PR11MB8717.namprd11.prod.outlook.com (2603:10b6:8:1ab::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Thu, 23 Apr
 2026 17:04:10 +0000
Received: from SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::c347:79e5:a47b:f3a2]) by SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::c347:79e5:a47b:f3a2%5]) with mapi id 15.20.9846.021; Thu, 23 Apr 2026
 17:04:10 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net] i40e: keep q_vectors array
 in sync with channel count changes
Thread-Index: AQHczZYFWBShhEqGL025p/pva2xobrXs5ycw
Date: Thu, 23 Apr 2026 17:04:10 +0000
Message-ID: <SA3PR11MB75275AB057B892F52DCC570BA02A2@SA3PR11MB7527.namprd11.prod.outlook.com>
References: <20260416114046.642171-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20260416114046.642171-1-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA3PR11MB7527:EE_|DS0PR11MB8717:EE_
x-ms-office365-filtering-correlation-id: 4dad3fcb-1149-411e-b4ee-08dea15a56ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: zRw2+VN9LJEKqzAOnEzLCiFAbAsAjDz6WuOLD+jSQtvvWfDG1i/Sok+LHlHAHo+0YvbLJQYmxDUGCqf9PBlfm9+UrXEvUsFRxDE5c5cExQ3DX2K9oxchQ+8ewrtBX+JxZNmGAwksBuExg6mosHXDIUsWaZePe6rynpVA20u4whZxyr26bTcRddNgBdtJO6z+6oByiBK39eN4z/fttzrRGJllOWABpF5E+gzBqlSCfZd2f+2TzFox8G6Wx9pkWWpWxieZGP9qI+PDXFivY6appNJj8eMDdIAbTjQHlxmwVAdNXhnCBqo7FR0GxzQcvv3OBeNDnMGQ21KnG83vd7JZ9oz2sSGk9BGMOYOArqfCmIohRRUEmJbL04XQTvBl6tzKqFIc1ab7tQ1htdk1rW4ky5xBXjQ9Sn6kD9eFxJRZgbF/Xv1fE5rr/mD964pN3l9CK7myBHgpr5iZEKKSC/YNzy0I8iJNJnhl7GQR1azNGqBrsAEF6c8CaWIpG3/TUNP6U6bC+6QgNL8FxIPShMP1cf8+TyZ3BWzQiadHwlTosVHrqKwkYZxurj5UDnjRghvwsm9/UgW9V4PR4doOXGpuQiGxia1q87gyHvVyz7tATbwO/IM1f8FxfAzIvQdsGjoXeORJhvBthnJdtgkt9i0e4In74TnFACEFbIi+lew0ZdIToY6Pq6MLBhzb4eAvHuC1TM51o9iq54k7Bmsvho+eRnQv6HpFRl+c+z2lb9iLw2dNOfNBTJjMD3iJyc7HOjRIYQPHfu6oQLnEqhLbMCewLqXK/sHVw/uMY+SdDVt2rlo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7527.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SdZZI5O/Sn7jYqf46BxJCpYQlMfJAti64Wda2F6baEa1aHZ1brKGz25u3T6V?=
 =?us-ascii?Q?19e28SC3Uf9wDrsosWTMus0J1PJaXbJTFVUWknLvxEDCqasqcCL9g//b7Mu5?=
 =?us-ascii?Q?egzI49rq0FW736vH1bJl5JeLo2fJBOThP8teqJDrxa1zJbyyrmbn8mfmBlAy?=
 =?us-ascii?Q?fUinN2YZF34XONGiV4jp3ijIGgFlCw1K3DByr+YRC7SB5z803HOu6SZCYCd5?=
 =?us-ascii?Q?TnY/l8orhwcMi7DYYkP7SvIhJDyKxBsOu3PRGBQGHdit+8MZ9oJl3ZP2DBN1?=
 =?us-ascii?Q?Y+iT578yWvvGHhk49jHDpT0ENVVbrtUqn1HLtkxBiRfsrOauWY15bU61TlOt?=
 =?us-ascii?Q?tQ+YsE4QCV8YeN4uMWaqYANvIePAMhGZpYBlr9xXIm7BfENd6VJyTi9qYI0m?=
 =?us-ascii?Q?mlFrfbXqhXsSQ2ENBRub6k5JuCcgZrc3WA97Q8zuPlHR9VxiFpuLKd1ORzwj?=
 =?us-ascii?Q?U4ecqF0FA4eZYtlVvv2zhyEQcYIux1GSr1WfKVH1cM2hy3E32EcPpTRQ8X2P?=
 =?us-ascii?Q?sJpYm+u58yjFCsEMpW/TorUEVctGffa9HmcQtLSxattThXDQffFv8Twim40Q?=
 =?us-ascii?Q?XkTmwr7gqHIiZ2Bur8DOugGtIOXRDcNJg0VWBQSV/YYz29x16g0LrpwdddJJ?=
 =?us-ascii?Q?cA0hP6/jAllMDdvswc3sqccV+B3uiU2/MGnIsVk+LjhTBee1gUUBtzA0viPH?=
 =?us-ascii?Q?7NXW4yhpjcY2BEi+4Yqr0qeZ0ZT++OkbKgxe8bfh3/F2OOY624hzf5XyRfyD?=
 =?us-ascii?Q?UPL5YNui69yoF326kAxmQGfhmCG9UZw9/l8t3iUDVoaWcqVOlRJDgdp0eBhN?=
 =?us-ascii?Q?EXF+MZU9Q49W5srp9j6+hqKKkxl2ebliRwiZSnmGgvZV0a4Qv5+sPzvcV0Oh?=
 =?us-ascii?Q?h6Ujp/w2jij2NEKMkT/gSf2WH8AY9osGkhjRRyXerA4+g4JxZcK90reaGJ9s?=
 =?us-ascii?Q?ImTNGDLEYZzkcvkNhGs1ApsQj8Ok9nN1TZGbMmkInOHm0VEfXQXFgAD7bg4q?=
 =?us-ascii?Q?QKr75oTEEyF9rvFJNZz7k4OZKnOOBH8GmrlDAd56WXhmL9jsdjckKW5lXOi0?=
 =?us-ascii?Q?nTGNitOT4punFwv5bG6jvMTlJGxnJTG5/7VkUewOfPlUu24ha/8Te1ONoHlX?=
 =?us-ascii?Q?y0IgrxQrQ1mAeIgF213hBjtSlRzoEx5yEli71hidGYGMch7QWL2mbQcBZ6bK?=
 =?us-ascii?Q?F5/UpvLLUSt1Ztp/Jk/Lx2ICST8SphNk3Oi44tRJfRNNUoV0k3er2QdflFzB?=
 =?us-ascii?Q?GnS7CYMWHY36/NV+Xd9g5DiNTi6Qfk8b70fcTA2ccarrH7LEVw3p7pjfhBD3?=
 =?us-ascii?Q?Ma4ClI0U86qIU+u+E5J1VAn81Q9jLHf/l+X4tZeS1KQlt/M9Q2UlAZ9Wj+sz?=
 =?us-ascii?Q?B3aFp1htYpAQ/O6GJg8fRnisqbLv9iQWE8fyaojO+8c3ExCExRMF8Y6DzNVs?=
 =?us-ascii?Q?obZEmC9G9cA5Bwimbr3a6DkPjjnTdxjmX3l6P4SzeZFWhtfsHZ4e5YfgdSdG?=
 =?us-ascii?Q?oIu5QPwsojWp0Xz93vhKV2emgSv13ccCDj878eVdpfc7KxxBWr5O88VG1/nN?=
 =?us-ascii?Q?dpqTZ9btAFydF6x0jl/w2LJNw+HifPH0131LR6lFgTj8TqRARqQY9v99ltK4?=
 =?us-ascii?Q?xHhhDyPtlhR9YjO9CoZzF1gz9M5c9y5gewnMrif+CFtFnuhDHmeeMUX53LyV?=
 =?us-ascii?Q?NKsbIgYCWmN/YJs6ZDBQAClhgytkkUMwBO6h6T20vDWfBoXB0ZFguCIG2W4d?=
 =?us-ascii?Q?FPB5jKtzUQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Al+m1Ayv0e+xAfb/dCGoV1FbG2s1LrWm2+VShaE4BvOS1F+JG//xJbd2lk1RfTwEhDP0rF6bSqV1/6KlhEmKlrj8zlxQ1Xo3hvC/UCLNIU+5p1KBXBWUoVJB6QPg1kQliJhry4FpGR/pMBG+BvFXGCDp/4KlDWQke7MSXRUkRiOzWj3jqNkFRaBCCScU0DrOueqLywyIqb8vY5+O794JijmsrKy/ruRgIAXT0JY4hojv2nu2Wh4G9XvasILRky/EcLVWzBzMfu2JSG4kd2gdlVxa+Ys4ARAeezJwXRWfpJMJC+0E+3rEd2Aq9Slh1L0gk9FTurUre6G2pyOFZkbxBA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7527.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dad3fcb-1149-411e-b4ee-08dea15a56ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 17:04:10.7199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k3atnm/n1IKlkQozLWOP+COXdrCKyBXDCBH8N0m8EMDNu8HyUSVXrXwcxCzjyb78GPwdVtfzKxQpX4QJOCEA7eVXqcu2AwH9umrlEwDk2LE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8717
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776963858; x=1808499858;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WmkNqASSPSa7NH1SAAXhCRs7i5ZGoKRjs45VRegRsRc=;
 b=ejKJAXFfkJQSQSysgGXWALvTfZjWqHZiNBsA3QacEeMQiFq/i27WJaAx
 lE5mGFwsCB84Y2b6roLT22oTGfMZr86SHtK8O68EkpkcUWNq3wgDW4gfN
 f5NI2VMpu1lMk5dbTyfHQN89GZITZg1evkj4lqHeGZCJ+GJQ5PoX80mJt
 VSk19PQ+i3DtFDG6wOrank0mgOxsdiGTaJdS9RHzVxMh+nKpxyPrDimbu
 OsqPQCjilyGOMv5vQCoVh5zuZiGP4arCnbruKe2KBzufmMkjyxiUqOHhU
 JqCfzwx79Q/1d5ege2ZMY6GgRPIDWMbjbYB0ZMrTPqHc4iB2zx7NMpRaA
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ejKJAXFf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] i40e: keep q_vectors array
 in sync with channel count changes
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:magnus.karlsson@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,osuosl.org:email,napi_threaded.py:url,SA3PR11MB7527.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: A761E45546C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
aciej Fijalkowski
> Sent: Thursday, April 16, 2026 4:41 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Karlsson, Magnus <magnus.karlsson@intel.com>;=
 kuba@kernel.org; pabeni@redhat.com; horms@kernel.org; Kitszel, Przemyslaw =
<przemyslaw.kitszel@intel.com>; Keller, > Jacob E <jacob.e.keller@intel.com=
>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-net] i40e: keep q_vectors array =
in sync with channel count changes
>
> For the main VSI, i40e_set_num_rings_in_vsi() always derives
> num_q_vectors from pf->num_lan_msix. At the same time, ethtool -L stores
> the user requested channel count in vsi->req_queue_pairs and the queue
> setup path uses that value for the effective number of queue pairs.
>
> This leaves queue and vector counts out of sync after shrinking channel
> count via ethtool -L. The active queue configuration is reduced, but the
> VSI still keeps the full PF-sized q_vector topology.
>
> That mismatch breaks reconfiguration flows which rely on vector/NAPI
> state matching the effective channel configuration. In particular,
> toggling /sys/class/net/<dev>/threaded after reducing the channel count
> can hang, and later channel-count changes can fail because VSI reinit
> does not rebuild q_vectors to match the new vector count.
>
> Fix this by making the main VSI num_q_vectors follow the effective
> requested channel count, capped by the available MSI-X vectors. Update
> i40e_vsi_reinit_setup() to rebuild q_vectors during VSI reinit so the
> vector topology is refreshed together with the ring arrays when channel
> count changes.
>
> Keep alloc_queue_pairs unchanged and based on pf->num_lan_qps so the VSI
> retains its full queue capacity.
>
> Selftest napi_threaded.py was originally used when Jakub reported hang
> on /sys/class/net/<dev>/threaded toggle. In order to make it pass on
> i40e, use persistent NAPI configuration for q_vector NAPIs so NAPI
> identity and threaded settings survive q_vector reallocation across
> channel-count changes. This is achieved by using netif_napi_add_config()
> when configuring q_vectors.
>
> $ export NETIF=3Dens259f1np1
> $ sudo -E env PATH=3D"$PATH" ./tools/testing/selftests/drivers/net/napi_t=
hreaded.py
> TAP version 13
> 1..3
> ok 1 napi_threaded.napi_init
> ok 2 napi_threaded.change_num_queues
> ok 3 napi_threaded.enable_dev_threaded_disable_napi_threaded
> Totals: pass:3 fail:0 xfail:0 xpass:0 skip:0 error:0
>
> Reported-by: Jakub Kicinski <kuba@kernel.org>
> Closes: https://lore.kernel.org/intel-wired-lan/20260316133100.6054a11f@k=
ernel.org/
> Fixes: d2a69fefd756 ("i40e: Fix changing previously set num_queue_pairs f=
or PFs")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
> v2:
> - NULL vsi->tx_rings in i40e_vsi_alloc_arrays() (Sashiko)
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 35 +++++++++++++++++----
>  1 file changed, 29 insertions(+), 6 deletions(-)

Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
