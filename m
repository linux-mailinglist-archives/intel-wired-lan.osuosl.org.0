Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPxeM9O6u2mtmwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 09:58:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 277882C835A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 09:58:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1699560B6E;
	Thu, 19 Mar 2026 08:58:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bxPyeaAyGzu2; Thu, 19 Mar 2026 08:58:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8725C60F69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773910736;
	bh=pVXu/nmx0dkclxhqfzGLc/j/u2DK0Nlhgy85Pqy/05o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Exm9GutoAvYF+ilh2OjKhEoldQd5HoUrpjUurDkIbeRbEmlRYD+q/yejJA8gPVzqZ
	 te1JaWWKyKDtwVtPGsGmpMdensEjJEm1xD0KoPtBoIKwC1LW9iT9U5/oX8KKRlJNPR
	 VLBB3tzNfXlK0Sj/c/Sm17laGmfViKmKjA3mGScX8SCCxtAoP5UWs894fVZZNthiSm
	 4P89KgmUOZD+nKWaWX1yOYx3MIcquDzkcql6Z5NiP19GH+87LN+iN7hvzDJkB9p8LT
	 TM+SL0eLMUNPAzV6LDIFBb12NAkNcJmj46kiVN/gkdLZ7DeR4Tk/za8QkN6LQEA4iH
	 u1iQSM+1ETFpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8725C60F69;
	Thu, 19 Mar 2026 08:58:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0352F1AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 08:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DCF9740D2D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 08:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FMMRXjd6IBZB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 08:58:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D2670400A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2670400A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2670400A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 08:58:53 +0000 (UTC)
X-CSE-ConnectionGUID: /+IetbpXSXOK24nRhqPkwg==
X-CSE-MsgGUID: oQ+hFMvtSwWTP0EQzzu5gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="75009929"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="75009929"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 01:58:53 -0700
X-CSE-ConnectionGUID: mvBeqFE1TXOXnc42GjIbTQ==
X-CSE-MsgGUID: UFbhseWXSaywkeQp/15eRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="227599165"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 01:58:52 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 01:58:51 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 01:58:51 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 01:58:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F6dJiC/efPfkUfU8C5GC0fmVwhDpn5cSpDmOVW3hDBHtvrAcI0+yzdY93Z/OoaQmYUGeisbPgSlRblqjtlQcetiJzXeS1RUy03KkH+qnp/O1XYP4f4pP7WeNwev3nbu8sISXGPUoDT6ZY0GgqyWsrTsGbMoDJidApHtSGoVegVsppSCaR/xAkY4Cd1XuP9qwvUn5dTUwDqjVo1rz9CWpbi+18gYs753oB4pN/pPsFFJov/GCFDO4FxUn8164Wh50J7KEEhTDLriPGr4NIAnk6lB5e+iYnhlcOz+H75q0bi5Y6sm/2yfJLi+kYC9UZ/USNzt6ArZ4Px2u9RJ7Gy4NDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pVXu/nmx0dkclxhqfzGLc/j/u2DK0Nlhgy85Pqy/05o=;
 b=VjqKzZ1BOIXUJtD0MIVaOLAsCYqTV6ToW6U5377KLa1r7fKsGoU888mSSJ6ywKrPSuTggiJ9pycqijq9GiJtWMJ/9dPGujKnPo1X8ZUFHDSJsKdxxhB+I8La+/T6q91bLPZ45gm4Mt6INa+HjFzVeKKAVmb/WgEHcSBf0j5DI6COfOJW69Y7urkRjYcJop76tO5GeD0AJvO733H6nWw6dromMYzZ0EFQGMF+3xivY3kKJ4Reib909r3oXmWzF9G7OWbb8wNpj6u5gK1v62+d4/XIidTxqva+Bh4B0ker238M7t2gr3QSkVc51AEgjysMHSf88zRMCeqhROvPmgM9vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8545.namprd11.prod.outlook.com (2603:10b6:610:1bc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Thu, 19 Mar
 2026 08:58:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Thu, 19 Mar 2026
 08:58:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Greenwalt, Paul" <paul.greenwalt@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY config on
 media change with link-down-on-close
Thread-Index: AQHctxrBsE8Ls17FZUueFai938x4qLW1jt4g
Date: Thu, 19 Mar 2026 08:58:44 +0000
Message-ID: <IA3PR11MB8986E5EE0E5E072C4C2662B8E54FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318132351.428749-1-paul.greenwalt@intel.com>
In-Reply-To: <20260318132351.428749-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8545:EE_
x-ms-office365-filtering-correlation-id: ec762053-3be1-4814-b2e1-08de8595b994
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|56012099003|18002099003|7053199007|38070700021;
x-microsoft-antispam-message-info: vUJBovCqS92mue+UuLY1yaLQ6LaUsdLTHzngp7/X7tD9/MeE+waANYeW/MM6GAZJaBRFEJGASQCeBTIai87+LkSjwIW7jnVMaHMoai0wiJyZn2crfexLJnNOIDDeTOHxr6Fy6yEl9lgL5aVuxnyYLPAr/ooXgzDRzopfh0oYBNTXrMWaxELpo6q11tTTdNsl5Qs/E0UYNz02d7FVZdyE/Y/CEtXDB+Fk5/eoLk+mCW3za+MV8CRYPOmLPSBPJIVWLR1hCft/YQkHXGJPfgZjhzxwN6ccGiIZFGUgwQtzoEZ8Srs0RaHQIx04j1g1OmcYsMHEUKI+31TpMgYbiD/o4NFB2a9o8hRD8OAM7eErOvXYjNe3FXaSAoZVQpHpbk2t3Pup3G5HdtvQrgBOldVdayJWbqKN+pW4Wm5ka6+9nubVLKq3A8GvGn9szb3CE1FDI1NiIemmn8QwBzA8FcHD4j44epG7h7PSZSsIdrNNeoWd1PZ3+DQJhsM0wA7cKfhHFOs2g+ypvEO2+UeKUHdotPwlWUaNIM9faUtBYUwAr6Iyc1EoRiNp0w00o1dIxyBGjQ8pcfG6T75C+GhtQa429hD7xTLW801MxiahfHumQ6CKbSoBTMzb/Y9G3I7/eEa9KJjgHEKbvMXKZpIIoEXjYf/SlgCXkGa1IIk3Yp+FvOyy5pPRkX7050gjd/eY5DKzLel10vSuxOGCS5Q/BGDLupJCwziKQA0NejAe8ZK49X2uw5od1tJCHeungfZygjs6gTYto4lGrtA3mvPvIVUH5/cbjNQOKBeOo9JcxtgOVKs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9HPuuBsxFDBw78L13Kjx5Rn2r2Ou/nUcmfpk3es2WbFmegfROG28GGu/zt1k?=
 =?us-ascii?Q?WK2WLGttcQM7oetgahkBUpy9C1J8cuxLTaawKV9ivBAyNG1WCwEbkyzbUYdq?=
 =?us-ascii?Q?niCA9n/ICJW5llrbF9y0UZTVLMwbOZwrQSaTGxVm+7HIjrNCE7xw7B1T90GA?=
 =?us-ascii?Q?lxb528sgQHhBB8tF0+87XLQTsNhKUAj3yKtaHdY4YpQ8BT6nDL43P3qA6YFs?=
 =?us-ascii?Q?Og/b9cO0U4GU6O/yTBvOjY8qFH8X/CkmO7fIlS45sOI+SAnG6ThbpZb3scJj?=
 =?us-ascii?Q?7iLv31qqJ0O3ciFkR3mJbQzBRX01E1srHMWLHA8JckWkTRWSkt+77MU7/BBA?=
 =?us-ascii?Q?ofNe+V5Ch3d6q4glSg5WAmlgn+wmLZ4Ur5XvUzinaWnmbnlHevb3i+Crovv8?=
 =?us-ascii?Q?qPSeQS4JYJ1hFaqdxK6tkQxqEl6yCZgwHGudvVcnPlz5hXVLM9EDovg5hu+a?=
 =?us-ascii?Q?M6W4JF6GZmdAnO07gD5AbwyK2al9i5SiAKoKG+9XoNkWsInCI3obbhdMTCW5?=
 =?us-ascii?Q?M5uCd2PZGXagYQHVjBoTg5WqjarPKG9suDfKsl4MjPFPibR4WeCOHM1wrUK7?=
 =?us-ascii?Q?e0E6I+7LJ7hUEwHOcz7DvuYpyA0tk/Gm8s7y91aprPQ+CoOP6cBT1RS1Fqx8?=
 =?us-ascii?Q?KIzJvwhGfBA2zNjh93S0yok5Ug9txEPNDOy0SVtOjXl5Ce7YrLoDB2InV4Ui?=
 =?us-ascii?Q?yBPe92T/SUg4YuEfApO81GWyp9tLcGVshSKMDzbAjdNVQy5RlcKvIF7zYTn+?=
 =?us-ascii?Q?pChUyV+ka5x4VhfvgtOaTAlLR9qnQju96gY8P3kOaQGBkisViV9uRGhLyn1K?=
 =?us-ascii?Q?Ur2+lD/eiCwL5+9xIAyfaAcS9TfE+VYp9BKqp9dKR80VDUlHJPkyUCsKP8+c?=
 =?us-ascii?Q?Wlx/cwLGsSv/bCZWgQ+wKhJWhhYtLVJ1ORtvt/HF+HhoWW2Jdl1+/jBQPdut?=
 =?us-ascii?Q?K4NXejt6UOC2zL31C4+2Qia20uxcoaccPcsrctDPLle4Nr7VqW0HEANVO7KJ?=
 =?us-ascii?Q?PBuk4qxOqb+zWwQLxSoCHggFPQ9d2RUez3LZJMV4QsDEjVpVSOHTSM4GHgiB?=
 =?us-ascii?Q?0mS98BLSL/SHah9r0xIOEVRe9LG4397Tx8vavBdriSqsnMbcFZVY1Li6AA3q?=
 =?us-ascii?Q?8LqrohRth8T1hQnYd/TMf2/yeDLN5TnA+IVVV6hF26JRW29LgNxccvNsj1Be?=
 =?us-ascii?Q?wbpXIHcIvAhw22jIqgN2hcgS44yS+JkYgxsPMFrI4Ft1esaJ8J0AkGPOtD8e?=
 =?us-ascii?Q?+wY7fc/WpIDqToWSPC8SdZUvD5R0c9kqsQ0YVwIJKUmWBT2anw8zPGPQCGiH?=
 =?us-ascii?Q?5RnlURoFa+0JclPkCYkPmBvUZppUKCAivdZyR9rjHvoiTiLqWa6NwHCYCP1A?=
 =?us-ascii?Q?tckYXQ/cAWicDtNt5s3jEZ2JyKYU9J6cnGOo+v669CzUJnnbR6b6mx/hd/QJ?=
 =?us-ascii?Q?VhzWzADHEI6rpoy1Aigsk4biRSobEese5zeJjsIc0mg+wLX5Yo+BqrEug7+6?=
 =?us-ascii?Q?aNPhTgSSXN4S+YWDsSyPs/OS/cfxTXnvlXHHAfefMwNPugMWo25ZMJv0zopI?=
 =?us-ascii?Q?b4NIOfzSMXe0q6FAGYE+C2p7YdOeJ7OWIbil2AXAbtkSX16dDzex6PxCzJGL?=
 =?us-ascii?Q?69CmFMWd0v+Gt6CJlARl7iehlZU6XKO5/0UvXkRB18qwLPW3w87t68BJhK8C?=
 =?us-ascii?Q?/XnA0hGrqa01Vw3JrdUcfCXQZ3V3aVR4MRt+E54QlGMW0tYayI5sZf4SlwWI?=
 =?us-ascii?Q?CrpqPR/HTRuxoWdPhFvkj2ktsMD198I=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iNsyVc8tANQicf5QJcWxGhK3fgycGE9hSopf6SGFLo65iMLIoky9NixK9hx3RL5zAykoQWbmtf1sBFI5OH+e/TzF4H2kEN+sLJHRKBOdJw0nbjS07EKqbbdeYgW7ABFElRy2n6sAsrqAqva7iu4a5KHp5rvXbpaqiEOSH2pYqGCHZFLdl9Mr1EC2yKwpkNkdy8M7pqv8duNxWB/OTbShwJ5p+hboa3M+bPCqpGMFneg7KxBcJ6qnEhf/84wIcDje7z+WXGHaJY7F8U5WCO9FYl+Zjk8xTl5Bcuzis3fPqBTu+YTHVEzQl63Sf21p1+kkQrXeKIU3sQh944cGjSFIgA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec762053-3be1-4814-b2e1-08de8595b994
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 08:58:44.2837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IDDhylLkCtMXwElPXp/O0NC8AFd3ow0NPjBGWkGYPMewUN4nTko68NNBbsqnlbQTw3tSsPYFvKq3CUqpZwUFbAQehy9NYEjbwMjP2UjFiv4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8545
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773910734; x=1805446734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aq5lMixPWCRYw+gb680pGOwq6CPGDennxlfwkXVQiFQ=;
 b=e+SZhzpy/EuFUimW89kh6yRokwrALB05ZzNjL6dTUCFC7AENHQQzJA+d
 BF4ukOqjrp61TD33265BGzkyKykhf1XKWT56wZP/cS61H1CRXsf+Q//6s
 Tdbe82EH+5eEjBJLP1rixySeJ59Ad/B/gEz8d7yb+vTCw00Fd6TTC6410
 9L4bwLkp81GeWlQJcB7191EUJ3yfOu3lyKiSO/nO/knDn6OsIUzByqYwl
 cV7tO4UuJWKPXlp0Vcocy/01KaV5Y0Mdx22hhAisTaZP5caYw3kkVab4W
 SUUVxk5/ICTA8ZGpO179NISj8Y5xm6PqjSmpZhVnfERtGEW7nfdAnAPgs
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e+SZhzpy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY config on
 media change with link-down-on-close
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:paul.greenwalt@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,osuosl.org:email,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 277882C835A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Paul Greenwalt
> Sent: Wednesday, March 18, 2026 2:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Greenwalt, Paul <paul.greenwalt@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY config on
> media change with link-down-on-close
>=20
> Commit 1a3571b5938c ("ice: restore PHY settings on media insertion")
> introduced separate flows for setting PHY configuration on media
> present: ice_configure_phy() when link-down-on-close is disabled, and
> ice_force_phys_link_state() when enabled. The latter incorrectly uses
> the previous configuration even after module change, causing link
> issues such as wrong speed or no link.
>=20
> Unify PHY configuration into a single ice_phy_cfg() function with a
> link_en parameter, ensuring PHY capabilities are always fetched fresh
> from hardware.
>=20
> Fixes: 1a3571b5938c ("ice: restore PHY settings on media insertion")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 121 +++++----------------
> -
>  1 file changed, 27 insertions(+), 94 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index ebf48feffb30..512e55e974e2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1922,82 +1922,6 @@ static void ice_handle_mdd_event(struct ice_pf
> *pf)
>  	ice_print_vfs_mdd_events(pf);
>  }
>=20

...

> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
