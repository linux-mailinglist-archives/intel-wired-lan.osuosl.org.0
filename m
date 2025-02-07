Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 667D6A2B874
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 02:53:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A724E424B6;
	Fri,  7 Feb 2025 01:53:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J3IfBlbBs_lo; Fri,  7 Feb 2025 01:53:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55B86424BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738893184;
	bh=M2AcJMXo0z8RlcqvdMLKJ4gHtIwt9RsxiLi7CVl4yh4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=17AILgOZkuH0kAJqqIJApH1iniAnvp4tVSsxFw6ClVz9WNV7l3DEAnKMalv4BRSl4
	 pRHK7EyrBa2kKCefWHu/pfd/dHJ/+pEC5ZEAKk3DcjFDPsFw+Nt0O2lLSO//No7NkA
	 qxqYcJn6tV244nzNojF4BHF4UvKetcY+rC+qEDIXkFc294SG3dj5lo0ymFTq/+DOLs
	 1B8Pwgqh4RoVGvgsegCwWYM9Nq2XYOW35wVMja8hw4AqyNE7DC1sqMIjdcwfVFGSHv
	 x2HSW11uXadKtnNFSm2rB8bE4vPoglemsn/Q4fFiAvHnHoQebG44b2qkhcQ2V/20mI
	 5nEw3ncawhGyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55B86424BC;
	Fri,  7 Feb 2025 01:53:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C370E2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 01:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5BA9E4199E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 01:53:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ts7wi68PxTrV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 01:53:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=qiuxu.zhuo@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DD1CF41731
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD1CF41731
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DD1CF41731
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 01:53:00 +0000 (UTC)
X-CSE-ConnectionGUID: 9pLt1bKZRHifOYFQfPJJfQ==
X-CSE-MsgGUID: oabYgJMaTKCeMmmUKEswaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39419698"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39419698"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 17:52:56 -0800
X-CSE-ConnectionGUID: I12UVP54S/WlxovmIfIooQ==
X-CSE-MsgGUID: bBGBWa2ER9G9dzUA/TFySA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148609223"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 17:50:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 17:50:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 17:50:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 17:50:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pSh0+Q0aiLS5Fg5pme0Iv2JuSTlS0rGFNVL/LgEzaT+VRRYRbOH2s8MFQvyv6hzOAdvEShDhyrxUQGNByXBaEQ3c8OEqNE9DS3BERtDPHSTiEi5HwwxfR79EViksVtD5RYZ2SR9M9p6bQLKQE4PfhE3YtToY3xggGs2cl5EVeFNThlU6JRfUCDE71Ghk1hSBqaM8abMFCFt+vFEWwbkSzR/xe8h+OqyVt6YStGpjk0EjROzbtfl5u8EGXyfcJD5j6KHPp6A4GzAlcXmRZLtsEoO7wt3Thrt0gkXMqzVeYVQ/3OwjBkQ2x7VSzyUSejT4kbal0c1idrI9ipuPyzyRRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M2AcJMXo0z8RlcqvdMLKJ4gHtIwt9RsxiLi7CVl4yh4=;
 b=bkXblsKxKoe0fEJnVIaf8GgC9GCCKy3kSMLd64+BLMKOHdq6XrZbYrsFATEKHbOUXmDqNhTyksLZRMTPVXjWAeCJjzGycP1wlI79vm6ZCdqWmT+GTJZOv2nJKlx0Qt1Q6DuJ5kvM9QHpMicwvgsRHifSVgAxrGsULAtXXUo89Xyvo+ePos07yPixcmEyJgMyYiY1atznY0DAgCLDSJM2voee5a78LspXQ6MgSFJWEGZYwDpgRYX5MW/CFxcbvXB1QVqJU33inG7SFQdwjas7CyJTsbQ4NdUzhxpWHGqSXyVKw/RMD/c1BbFTZFkV5xw1kJkQA75e6Il8H+PswNSnuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7134.namprd11.prod.outlook.com (2603:10b6:930:62::17)
 by DM3PR11MB8760.namprd11.prod.outlook.com (2603:10b6:0:4b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.11; Fri, 7 Feb
 2025 01:49:52 +0000
Received: from CY8PR11MB7134.namprd11.prod.outlook.com
 ([fe80::cd87:9086:122c:be3d]) by CY8PR11MB7134.namprd11.prod.outlook.com
 ([fe80::cd87:9086:122c:be3d%4]) with mapi id 15.20.8398.025; Fri, 7 Feb 2025
 01:49:51 +0000
From: "Zhuo, Qiuxu" <qiuxu.zhuo@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter, Konrad"
 <konrad.knitter@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Simon Horman <horms@kernel.org>, "Kees
 Cook" <kees@kernel.org>, Jiri Slaby <jirislaby@kernel.org>
Thread-Topic: [PATCH iwl-net v2] ice: health.c: fix compilation on gcc 7.5
Thread-Index: AQHbeObnGzM6hqP+wU64EQjO3IixRrM7ExRA
Date: Fri, 7 Feb 2025 01:49:51 +0000
Message-ID: <CY8PR11MB7134F3AF2F1B04B48AF9D17C89F12@CY8PR11MB7134.namprd11.prod.outlook.com>
References: <20250206223101.6469-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250206223101.6469-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7134:EE_|DM3PR11MB8760:EE_
x-ms-office365-filtering-correlation-id: c6420c3b-9ed6-424c-e727-08dd4719b682
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?0g+l7hjCCIxr/Cbe/cjk2LxQL0CLErdzQ4bO1yVxHHMxR54/Y9wMB8vMV8fy?=
 =?us-ascii?Q?vGPQVPUrrogwhmMVE/CuERmofZe56EWq1UrmtfUtJN7DUPDZY/Uw5apZ56RB?=
 =?us-ascii?Q?7SK7KNV2N0X8Wgw+pYvfLSNYLETNGo1cgdFPY7DN4Tpjo3YjYMBLHrFKITwW?=
 =?us-ascii?Q?2PRMoG1cIrea5U3OlJpd420i2g7EmeIlhYtYOH4UpEJ4s2ZrrxBhoCTykGRr?=
 =?us-ascii?Q?ON+4MdmC+u1RXk2/BmgZk5oHa8gvQLBlM7IeUWycHTTdeu6xBjOtQdxmdAV/?=
 =?us-ascii?Q?gvFKn82y8gC+oCYWsVU6gct0Bi95qj5bcR7Y0vNuk/EIkelzgji4+km/3Nov?=
 =?us-ascii?Q?n3R6UREgKerFDRJpHO4VAeTGL/mfkfQGFTabAC/jUiC/Xpmr6Y7H9S7N1RHS?=
 =?us-ascii?Q?/fxkpJ6UWOqTuvKUugP53Sv7whbro9ZoDB7ZiG5HZAbAGftM7QDI0JQE2Dbd?=
 =?us-ascii?Q?wtbnBMK//rTABTtSpsJt+F66yq69Bgj+oLfsg42cYOnPJX7MGTPWRWEzL5tM?=
 =?us-ascii?Q?Z3FT6OLOqOHBASEsd+gD1Ii6QZelD6S4fSkPzoWpdofuEURD+dOrkQn5h4id?=
 =?us-ascii?Q?m4ctwNwlo9sF/r7lBfV7xIYbpQtMFBt2LTLSEyos9BaJsON3NVe+f0BrAYok?=
 =?us-ascii?Q?EnyxfLj3r4JJdp0r1N7FIrnDoIeYRg+Y9dbciQ/L3VLvjefwfKEfnjv2T1ML?=
 =?us-ascii?Q?orofmveZK14S9km1l2bpUfUGtT04BApptb8n/7rHSz5SuVAd8fyjVpuzwJq7?=
 =?us-ascii?Q?AXjTb7f9HznK06mwM/TQf5pUQXOvkpp1hlUfEBA0TJ768tgJnQP/h1diCsKh?=
 =?us-ascii?Q?dFCUCQhTg/VYGcM/8e5AmejOvlVQ0Gyugb0TC4La2wpW0uyn1HFB9zzxxvms?=
 =?us-ascii?Q?D8ukqBjMh/gkUqEi0C+PITwjt+l4HUuW4MYKQqbnlBP8o/frPC+aqGs2t/Rn?=
 =?us-ascii?Q?Vpgxlt78pLYt+pKirRhkxP4++W5pMXir8HrcrgmfmJ3BYSgLkCpjmdlDjnaT?=
 =?us-ascii?Q?oPkknA6mB0G6G3VpxDpxgwDsZnNYIeutX2CH8K+iUQMgrgMXdgA3FeXlAwth?=
 =?us-ascii?Q?LoNos0WVztWGb0gnHHykJUPJMnA7dGW9D9MwD0symwRr1j//d7Dzvxza0JZX?=
 =?us-ascii?Q?OLW2zy8XoEg27UoOa4UIA00G0XamhyJKrYeUHvzaOHkmZqkevftOCxAf+yfU?=
 =?us-ascii?Q?Y6EmoCaGOTA78v148HMPgEeKHmx2rYq2yIo2pAHTZzmWjTjY1DET1X619WjO?=
 =?us-ascii?Q?XU7bo7zgrwp9T9quwWssR7sUQIBR9nG4B4ugXJi7SAH234tIPtfSl7mWbDDY?=
 =?us-ascii?Q?Xm7xb6Vc9gIq1tTKBafFoZGhLk8wghoOFns4zOrAf8l+0PjIxEImoopb2Rry?=
 =?us-ascii?Q?UDOu3ZjPJuDrxfI9yiYKpFtgJnHO4KYZ0aEgcM4K45Ux3tsV5g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7134.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mdQIBJDRaYUp2H52B4rolgSlQaEkA+oKxb5VCpKI9jVcZKrvQR6u8NK9qBIo?=
 =?us-ascii?Q?7EL4pWmn4JvYKAvPe9ZOp2104UKp1D1H8d4VSdMp2ntcO9fvohh0M36TxVjO?=
 =?us-ascii?Q?lB1o5jizN0Q2D99TkYn5Z9n9b1ZW826JcJrRUAXq+orEj3nOPF50AqpDCT7L?=
 =?us-ascii?Q?U6GIccn3YuFJk1HdZSJeIUuNSADc01H+cW9xuqcpxNJv9AwXruxcN5nLDIBJ?=
 =?us-ascii?Q?dbNyKkEmWSXt8fjNI2hFVQhDQHatleHqawsw+9uESLY9pvio8HoFzUYKgJAW?=
 =?us-ascii?Q?4cf1GqaRyA7xZYBzWx14dbWuXOPD1X3f7bu9WCkC0ynbrDw6cUDBmIa9QrWx?=
 =?us-ascii?Q?E4H3qdlk4mmth3Ptc2HYpn09Epjvl72JT6cBOStcuaqN26PcfChZY4diHgR4?=
 =?us-ascii?Q?AEq8mbPgHgqI89cdgpRt405oMePiW431O0UrbUZ3CF8tTAGIGnZksmGpa3Pm?=
 =?us-ascii?Q?9VXV2k8tB6nboWQ5CuLziSNgk7CNWxjkngsxMHJT2NVCvOu9vChxYXu7yn5X?=
 =?us-ascii?Q?c2SObJjQBOhBkGWjgLSItQS0MM5oICNSDUXW9vBwlk8QpvAe3RqFTQenX2lH?=
 =?us-ascii?Q?Vlxzv1EQxC0pUd+JczERmSG6wF15xLxmSes9xqN6nCA5nCRSrlhMg60i5Mro?=
 =?us-ascii?Q?LSX/fB/eiLLDCirwBqq171Mes1e+EnLvyxckw8ygBBYDJS98gwNlxxI/0vJS?=
 =?us-ascii?Q?TdUNji60DcG1QMBKTmssJV8OZxuUa9kNcYn25O9JOyHg7EH9VORTOTrstTxP?=
 =?us-ascii?Q?OWtTLYtpFLrb5tGtJiPqIDKDggn/PMJhpcPnqqMrRMrn+ZXyrI11MQ3WdfSz?=
 =?us-ascii?Q?xHHY9dV8cpppPMZKlprF3T+ihr78PPcL9Fc1wW820lH1QtLklJSdBZzmgrpf?=
 =?us-ascii?Q?e3QRKEursSQ1thpW0cECS9PzJcKoaLonvy7sEcGnjQiAg2oydrWdBm0eoY6r?=
 =?us-ascii?Q?r86FaqQNOdRvipjok6prHOsHAWgaxMjHxHg92XFZj7LJ3dqJ7J6OwSEmn9gx?=
 =?us-ascii?Q?0kFsQgyFC05ourzg3co1947eufEAW9Ht2LuhXzyc0IqSB4fQ1B9jl17YzmoR?=
 =?us-ascii?Q?w2uIEKZFFF8KP/30Md0zP4qHBgA6qk9N4VmM/VFy3kctlcqHfxr+QMl6r80o?=
 =?us-ascii?Q?TBQ9/dX6SaCb131Y5iPd3pPs/P2f181qMjnvD/HE5TBOKTji37HhQVuUie9J?=
 =?us-ascii?Q?ZVetQuZYSLRtX8ddiK/oT9wmw4xTA62p8BJEymbCQSi1HheD8ftVROJ+WjRE?=
 =?us-ascii?Q?vVylIR4VguOv784BCrZpYyLn+F57sKHPCEsmaU4/xepgI5hEtinJ1XbH3V9H?=
 =?us-ascii?Q?ggFBchuSFQHcm1VDZkGrBl/IOlp9rXtq732uX7w8fV/30UIOv5D6IOh7K2L+?=
 =?us-ascii?Q?kU8Yl+5Bnokgr003xz0Qa1BTwnloSB2ulFNGIJ6LWUTuOu1JVGtAHbsVuU6a?=
 =?us-ascii?Q?/tvBkvAMvGufWBGMml1UfcrJpXw5hvHdaXdaTqOgE3z7qhUZYRzLFgSTP+wu?=
 =?us-ascii?Q?IPi9w29hJkSlhsD/GqgGQ4nPC8MoaDVSzEh30RXFu6Vpsd4zanxvlFB/JzQ/?=
 =?us-ascii?Q?t8gaI1uMIM0Ei20ghclnn8y/IEL/sCT7A5yVWkUy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7134.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6420c3b-9ed6-424c-e727-08dd4719b682
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 01:49:51.7841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3y787Zxg18Lgc0swFDg8QTsgzXWwqKAJGwRr216tGUqcuSgFvNco5uAkc8BrvQafldutCyAcueCzFosFR7gYOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738893181; x=1770429181;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VV6Cl+HcOOeOsRXwzpfd7LvUx65TEVowxXGKCiRlxtc=;
 b=Kp9e+EjNRBqmq+U9rS7pq6t3gR/3U/QQ2GxgZ49qdlnH8bI1t6LpLzSB
 ShQUvlN1KARUTr1rn8UR0S45nCuaJtWcBo/ro18ZegtGhid/TOAaGrmkQ
 b1dMUZHsGp/v/PySiipzuo0G/rWQT5Gxc1Cvx9FrEUnlRQzCIklYI/h9/
 SjWcZ9Lpa6RsuYJq0g1ZZ7uXSpOog6vlbd1SW0+HGO6FaXpxNiPeOgxxp
 HY/4Ib8F3tv9jyZoi7Wig6EfjV02milRbUc5Jxwga6+wLUTnhjvRmpJxJ
 9Ed1Qjni939H+uBQrh9pnxff3Wj43/VTjoZl3dmRH6KVHVfxbCCbYkIgV
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kp9e+EjN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: health.c: fix
 compilation on gcc 7.5
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

> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> [...]
> Subject: [PATCH iwl-net v2] ice: health.c: fix compilation on gcc 7.5
>=20
> GCC 7 is not as good as GCC 8+ in telling what is a compile-time const, a=
nd
> thus could be used for static storage.
> Fortunately keeping strings as const arrays is enough to make old gcc hap=
py.
>=20
> Excerpt from the report:
> My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.
>=20
>   CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer =
element
> is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: note: (near initial=
ization
> for 'ice_health_status_lookup[0].solution')
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: error: initializer
> element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>                                ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: note: (near initia=
lization
> for 'ice_health_status_lookup[0].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: error: initializer
> element is not constant
>    "Change or replace the module or cable.", {ice_port_number_label}},
>                                               ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: note: (near initia=
lization
> for 'ice_health_status_lookup[1].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:39:3: error: initializer =
element
> is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
>=20
> Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
> Reported-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>
> Closes:
> https://lore.kernel.org/netdev/CY8PR11MB7134BF7A46D71E50D25FA7A989F
> 72@CY8PR11MB7134.namprd11.prod.outlook.com
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Suggested-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

   Tested-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>

Thanks!

