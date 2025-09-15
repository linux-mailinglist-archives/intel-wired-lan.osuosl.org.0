Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C823B57069
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 08:36:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C609E6F89C;
	Mon, 15 Sep 2025 06:36:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 89ql6qMPvyN2; Mon, 15 Sep 2025 06:36:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4775E6F898
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757918210;
	bh=PpfK+Z50Y0OvYqhCpFwsM399WZw95UOO8Nl9O4Qkiqg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QW/0prWNoel/c9vpZJ2mgnqG6Y7igPmHxjoMjI06bcedTI20N4zzs/Yp+e60z3qv4
	 07rSJngLmS1KsWEulVMb6UXzJZWBhAzTsUMPTtUJ1OfRz/dJnGuOFjOASLYQ+X6Jzx
	 C9I+UMO8oOzHFv17OTPxJqp4yKZ0tWjeeNeBLMeFrFjA27JQgfu529IcaL82b3hIYM
	 yzZvTZaqAWvVLiRiZORt3+tp+nV8uAGQOwke6O0FTa/MvsSDQFzybyuLHh7sKdlPzx
	 /f+g7Dd2/H5uS81AKhYloWttwxWggT4gTC6D05PMIn6khu9sBp9jMbyGHUIWc9w/47
	 lx+2BV2E8qJCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4775E6F898;
	Mon, 15 Sep 2025 06:36:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 10FC522F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBEA2413F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:36:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cskDwxcIQ1vZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 06:36:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 11E104130D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11E104130D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11E104130D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:36:47 +0000 (UTC)
X-CSE-ConnectionGUID: sbVgNiFAQESgknZJOAH7qA==
X-CSE-MsgGUID: r0c6M9CcT6qwvJbWxjg+5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11553"; a="63983833"
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="63983833"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 23:36:47 -0700
X-CSE-ConnectionGUID: hUHtTt6hTw6QTCM6MDqpMw==
X-CSE-MsgGUID: FGyqxJ8SRn2FxbXZv09zFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="174350320"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 23:36:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 23:36:47 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 14 Sep 2025 23:36:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.89)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 23:36:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IdPxmyx932X527WWr0PD1vfwKiXTwSBiVMVA4vLmN8NomT3oo5n8RlZOsHIF+kA8nS+lmLJmvTV6AiNaLuoKqsz8QFjluSwFzp1XmEES5sGbP6hW9zSauNUBoy2E2uljHmROfYbIXrmflFHE+p9SsKmUBD9hHj0BwQlnWNhDfXcW6xlUOZJef+SQilnb7SHG0263HnFwLyWN/eFzmgJYd911ENKkpPzNtOS4goNwvqsLj3ei2wgez6D2XCCB1Fc/Tx7Qa9+YIfOMYzOn8gfiuyjMxNqZs0uEY59Z9tSK0LG2C5eG+nBHqEMGh5PutaP5Yql92zDnKMdKo7s7M12n6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PpfK+Z50Y0OvYqhCpFwsM399WZw95UOO8Nl9O4Qkiqg=;
 b=VySA0LPZCUYtzlM5Brig8KpMI0bnHTQO9f/DWsdeJuKx9Hb11S7IaqRyK3YpuUQR+D+gEU16GprW1Yax527mJJaq/dE65HUQhL3xNIxSHz8wnBazCtOlcVw3C5EzPOTHpB6y5CbUwJle8bEig77h6CmWGX6XxV1G9VlE87ZYqX8wsOMHQyvAs6dg5P/Yl+74J5ZqmXWuNvga5ZjN1axxGoqhKL0ZPo0Gn6HHzVbHFZpK9OfYRiKYzVLtlkCU/wqFDpevG0TlevUNAGw33AQusf9NxfdGKALwTceQD8HbX7oeXcZKYznzYHckfoVoE8heEwb+bxoqjl26cbhG+NEpVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Mon, 15 Sep
 2025 06:36:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 06:36:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 8/9] ice: move
 ice_deinit_dev() to the end of deinit paths
Thread-Index: AQHcI+elUgxDRG7D8k6Kr4lJYnrR8LSTzk8A
Date: Mon, 15 Sep 2025 06:36:43 +0000
Message-ID: <IA3PR11MB898625D6E0E547C0F2A14D06E515A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-9-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-9-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB5803:EE_
x-ms-office365-filtering-correlation-id: cab74213-e98b-462a-c6c1-08ddf4223c39
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?fhmJ3VXpWFG396h1cx6jGK5mmlP2hqxN1Hpiq4WcmgO6z88O8+V3yfis3DAU?=
 =?us-ascii?Q?iTwQk6jbp36mlV3yJbPeHTPlq0Z3Tg8ZQ7IOi9DHpFoNPuz2OpkKaSF1lmTd?=
 =?us-ascii?Q?QfHWT7Mtpi/CJ6U/yTMvO6rdB0hHdCLWVYpth8xGIUR/+QYf1jYHbj50zEsn?=
 =?us-ascii?Q?Q7Q+9ODZoUuspUNMhssEA1QH6zyYOiFvX07uxu0bSmK1IXY5BY6HQzC4zrH0?=
 =?us-ascii?Q?ohFWGRyVpMzSewk4XeSArBm9dVzFzxMHSVAgjxpmvuxajkgZetXK5qpgQM64?=
 =?us-ascii?Q?34QQ1N6shJDAV+qnGMPanPanQqDjvF9FeMglcVxp2gfzkldJsLQdvDbHNJNe?=
 =?us-ascii?Q?tZlwa97SOE3lUuf7SSTSmkdIw00DVLHJZ2V8D9XIfyx62hh5sZhv+d1c8LLh?=
 =?us-ascii?Q?5wLEindn96fzRfPSBYZ+q1AYjz8WcFgYhF2F24aWqzxM12E2w07ZjW5LvVUR?=
 =?us-ascii?Q?6oPGRMpJ8QLn9Ucc426BJyCSE9EsSIM+ASsdrFJKPX4X+mn5lSWpYgdabudq?=
 =?us-ascii?Q?yQ5i8QMXD5WdqmJk66NBt/2AP/kMJDr8G0a2Q2dUrI4MtLOzzmtClvYMiHgz?=
 =?us-ascii?Q?zb6e9Y2zJ4aDsQ14mKQa2v3AH6IBBOfW6UOTaVaC0GSztUJ0cQb+6p9BHEW8?=
 =?us-ascii?Q?YpZtg8LKxLT7o9baoUMaR1AMGcnvBI7dvQf5ET3rMNYKk87Y1uKsq2jrvEoq?=
 =?us-ascii?Q?GRWtk8yhm4saAMIalvEn1nz0IIATDhUlyoQABwcxDj1EX94cKNHAavxXKofz?=
 =?us-ascii?Q?G45DrVw7WlgmXlUG3OQXR+D4w+nZOBPVWgwz6tF3Ez7h5tlClw5nOtX4vMWm?=
 =?us-ascii?Q?9tb2OAuYcNaYpq+t+98vdWuOMrtgYoWqKjmlsBcy1Nkj2JVi1PJExbO9qXUR?=
 =?us-ascii?Q?7flA712HPPatbLOX0A2efG4Scp+7ui5EhHp4PbXL4cMqQbdg9+zMo1rqp5vi?=
 =?us-ascii?Q?0maBRCJFuO6reYFYj92gqvhYeU/AN/GbJDR7nlp42w/t0sUtEko6M8sWMF4K?=
 =?us-ascii?Q?ShXhTQUm5RKcjeqDwEoeUVwjlBrNjnxc93sMzhtRS1rzTs1B+2pxFBwwPeDv?=
 =?us-ascii?Q?rIRTkV4X/y3EMzlRY9jFB6drCypQUI+4fpCOMnT6fuDTEH0ZBMG8l0/jEYBU?=
 =?us-ascii?Q?Tq3ZrsYC/qRibLrLeb7p03i2tP4AsjkiwmuOBWvn3doLfUdoQmre2I0m1Uuj?=
 =?us-ascii?Q?SEziNPjKmaIVuuTaK9QyENWDDBF/6oGQISSfqu0R/w9CYnMXMS5qGzo5/JsQ?=
 =?us-ascii?Q?VZquFsygNfMi/GYzIlb7YqHHVYx+zU14ziDtumD1/nX+BYu5w1ah76nfdGpS?=
 =?us-ascii?Q?HBdw2BcHLowyKArm7UL/1n6lMdqbueCUDmHMRkY0slNi9DcJdLeKicoPhNxJ?=
 =?us-ascii?Q?donAWT1sEgWAurhKBsJ2fUIw7p/An+WfQrHNEV/No02Hzpgexssce8ziesyT?=
 =?us-ascii?Q?JSes0v2ogEbR3PomaskHv+l4pmw8R7Uy3mAgh2ShfuQ44aGC9UafGKJY1NN6?=
 =?us-ascii?Q?HH3Ff9Q9U1M+k7c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uswWGWVw1yCYt+cpLXUzDr1aLAh6kOaBNzXr3/AAAW5pUhb0sIl4oXM2K3Sg?=
 =?us-ascii?Q?i+1/MG9FQufZzF00pvwRyiBXnv9SdAolwSksoW6FdwpE5fRNSlEFYhv6dHDv?=
 =?us-ascii?Q?85VgN5lDW79jpu7/NgoGYQQp/yylLc5Aj0bQScyEkYTaBzQZRr1cJDoHUBcw?=
 =?us-ascii?Q?lb6xxN/I4AWTNNnf6f4GFxQ89EEN6iprM3U0niJfybLXrBnXU4bY2J6AKDXY?=
 =?us-ascii?Q?MmdBnyaSLb167T6sO0WyjNzF0+57pHJyiZDl1EwX75MpQ8hTLsUQF9GNrC7E?=
 =?us-ascii?Q?GAJbXDuB/sItfK0XBX8XzzLc8l5wyYKzFsiN4RDCjgcSducg87xNpnCX0rWz?=
 =?us-ascii?Q?I8LfrRc9S9Brx46Fh7z4E+U/yf8Z2flidCdVeoFHNwrxmIFlPATeo+KKJMQZ?=
 =?us-ascii?Q?FKeIwdrLKs4epkCXkaWuaqrWtn2fw0WU1J2E6Fv5v/sjWZjHoq2CcyIHbc8F?=
 =?us-ascii?Q?y4hbwDRIS90HViXWm0UO9WOKBgBi3uqT/q+GIsogp/k5WuGsB/5WCqw8DbIY?=
 =?us-ascii?Q?Z+s+N9ASB4iEBo5phUfFAbwxWzpHEkkUWc66VrjfW86eVgUWkvS7awEPhHSe?=
 =?us-ascii?Q?Xm6q+a3vTVOrZSKSX6DjusjDrUfjleV2CxEgSLt+uNof8Fp6uu8assxogasM?=
 =?us-ascii?Q?wb2wrjeflcJweNL6wVuuAmsvqeQkBhLJze+61Pkct9M+L6FNWGGzQWoV6tDJ?=
 =?us-ascii?Q?RYNdFV0V9L7MvPoiSvjzCDc4hqX69qTqbOBF+vXZn8ARhtGGfbEb5rpVl+WW?=
 =?us-ascii?Q?VnDsqJOE6RK9FT5D7LqLPcG0cY2DUH86b9qEmTojRCub1k4lq/7dxzCJUjfr?=
 =?us-ascii?Q?BMWcQukOBzpw7FGY/9/7pXAtg9JVcZ/xtDh8/Ni1wfGyFQwE1soVmeTdl4Oy?=
 =?us-ascii?Q?xRX3TjRc1M0X5RpZIMFWgksKeM7XkMOFol2dhk71yA6RtppUkb+oQdVpPevJ?=
 =?us-ascii?Q?xXnbKTD5QOXOB4awgN+HCNMAQ6stWLkP2MdLREXDqPxbT+AiW+/dblb7QDtK?=
 =?us-ascii?Q?RPi23+Zyp1pyoryUKTbs26B+9YvY/QKnlVoPp5JOvQDOXWwEFEZZQ2U8ntL0?=
 =?us-ascii?Q?ndG0TK6hUdWxbp0kOfzkbVj+Ib+cz3Sh7lBbu6XgOQWB09MoYsn0FLF5tlAA?=
 =?us-ascii?Q?GWB2jroFzQNwtPRD+q11+dbklS2dsrnMbtWyFKH9uY6gNKD7tdYoRPzsJvVa?=
 =?us-ascii?Q?9pmaYMw3MsPAuAyNgB9qI0lbBLQofnMaspmDJVH7DGIis2aFkIkLRrHjbj1w?=
 =?us-ascii?Q?ED9MjngLg9XL14mjbl1A5P7/kSFh4LFkWw3IN+m3H4R/T+gEJbmUTN0DHZa7?=
 =?us-ascii?Q?eTxrBlwuDPN4/TnDdB41ssnX8LPsnmdnMO7R23waEq1U6itgaYHemI7/ISVz?=
 =?us-ascii?Q?MiIUOa5/SE7OJbxGX9EUXzm5dCqrLzqbg5BZchGnntB/X0cZosXRQM7piPTV?=
 =?us-ascii?Q?aXUS9NxKAa4bx70JphohUFgnWMhhpW3TkjxZnvPJK492kShumc8aqo43G6Ba?=
 =?us-ascii?Q?GRtB0e9htVKJ4O3xaFUpXwxCrRYycz2rCG+1z/nd1LDIVc/DdWInVNXZGXvr?=
 =?us-ascii?Q?HqFM9wanNOKQ0Z6UOtewzLxIhlvgKPH2LmrAxII2kSzZz/n2P2yLnpo0wZ6M?=
 =?us-ascii?Q?JA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cab74213-e98b-462a-c6c1-08ddf4223c39
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 06:36:43.2517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xG8hZzfGF/dQMVEY+/y7myqrowcQQ2lc3mCGk9LfFaDlrajXDR7skte1tUz6hwxp8/vFXOnV8lLoNibvrWCsA2me8Vw96HscEbSYvnIIMS0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5803
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757918208; x=1789454208;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J2lR2ZhmV1KkzoILQ1+n581oiVtdlj4HMjQNYfY7N7A=;
 b=fHIQp94Vd6aD+iRs4Tg8REtdPKD0BcU26hkYYezaLF8TTDbRBjtHNKEF
 G6ICJB9ArB474r0ZyptanaQNGWt7R6jd1lbPsxfnhJExckUU2mqsT6j3T
 SJiF/LzXYCuZwEq6uy/tPxp+gpH9RRhxeVvl2m36JUsdHKWHyscSTJDJK
 Ka4XOJX1av351+s68Eas00wP9bm9je6SJRy97ZxPM4bJbPld3cKpIZbSZ
 FatPkxCr/YTccmPIG4Py60PsNzW0CAckz62LrwTC1vKOeOxVxMi84C5bz
 jv261HzD/DGbgnCE044F7zx2DiYacJynZLIXByTIQp16KB8GoAi6Yjs0J
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fHIQp94V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 8/9] ice: move
 ice_deinit_dev() to the end of deinit paths
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
> Of Przemek Kitszel
> Sent: Friday, September 12, 2025 3:06 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 8/9] ice: move
> ice_deinit_dev() to the end of deinit paths
>=20
> ice_deinit_dev() takes care of turning off adminq processing, which is
> much needed during driver teardown (remove, reset, error path). Move
> it to the very end where applicable.
> For example, ice_deinit_hw() called after adminq deinit slows rmmod on
> my two-card setup by about 60 seconds.
>=20
> ice_init_dev() and ice_deinit_dev() scopes were reduced by previous
> commits of the series, with a final touch of extracting
> ice_init_dev_hw() out now (there is no deinit counterpart).
>=20
> Note that removed ice_service_task_stop() call from ice_remove() is
> placed in the ice_deinit_dev() (and stopping twice makes no sense).
>=20
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---

...

=20
>  /**
> --
> 2.39.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
