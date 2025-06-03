Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A74ACC2FF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jun 2025 11:27:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51F7561140;
	Tue,  3 Jun 2025 09:27:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s7Jej9FXX0PO; Tue,  3 Jun 2025 09:27:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEB33615C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748942875;
	bh=Bjwnctajh0AESFc2hsbqffq9FJfv+o1lSOFMVacswyM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0YRqjHVROAOZtx4zn8WSZ2GJ7V2bVKVnpSjSe0BW97p9Ldh59MEWIui2WWlFLdZRk
	 +VSdvjXXJd+1t9HYMBLn8gDENKcI8dEz9JqghyXhcCQJ1KUwan9SwAisjFysdludwT
	 iiMSrjavBWlwmD4QrGd3cl+DN9UTRJ8mmoM+TPk+ucV03fjToPS8BGmgGQOMc+s+WA
	 gN411fUGVptDTW/Z4iseSa832playYlaSowAch5B3U60RMWXqpFZ38aZi3Nl84dwJl
	 yXZx3R3KdA2eew09qe8tG3CFwu1T5GK9vfI6Q4srxr2NwuHYLJpSBhQKksxMuJGYGr
	 6S8aM6IWwcipg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEB33615C1;
	Tue,  3 Jun 2025 09:27:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AA28315F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:27:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FB0C83B0E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:27:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vb_2wUngVWfU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jun 2025 09:27:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F30E083AE1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F30E083AE1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F30E083AE1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 09:27:49 +0000 (UTC)
X-CSE-ConnectionGUID: Dg5tTlVtQLitP92rYnlgqg==
X-CSE-MsgGUID: ifwTmLclRFCVq/hVKiD0WA==
X-IronPort-AV: E=McAfee;i="6700,10204,11451"; a="76366975"
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="76366975"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 02:27:49 -0700
X-CSE-ConnectionGUID: Fou7Z8gCQDa6ufragiDkiA==
X-CSE-MsgGUID: n8ezhDH2T+6tn8BHk4mRjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="144779736"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 02:27:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 02:27:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 3 Jun 2025 02:27:48 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.73)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 02:27:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bu9GhOT2G/aQy2/ZOkECLHA5Kwf6VPzOGyYAAkvkXknM7MWqZiPeNbG/rcgKkvh47VYmQBNz1zZZHLCi/BfSYGH7QbuXg5ugDheRNGJhKI4BxqA4eHFs9+sc30LHYVhDh/qa3V3ukFxZeBummv2l8ZUNikik9HnGBe3t5/i6BDyE0LQvK3/uCfhwUOe4R/ZsGuoYNVsXFvi8sh1waaypQIi+2T2V6VjMogfa5I/sqd9EL1JTBgUTzT/9N9WK59Mcr86ujXB8rDpQFWZ+aX0/cFOZEuZVZPsLUdrIJ4esOEIVtkVappikxN9h6YPU6Ze7SOmrrVLH5OSD0ObilDw/iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bjwnctajh0AESFc2hsbqffq9FJfv+o1lSOFMVacswyM=;
 b=njgOJ9nm8Y2vOCN01HzSHka3qHwn3gB8g9fr0TVRiPXkFv/jvMiv6Pc2k6yEI4kdO1qNQYLGqlt6+XqnIYSgISY5sLxbFSks0o1rds1+0LtxAqxorOLi9afpP4V4uF47z9RUZ66ehFjPgSATeytPQFramC31pnK9yRvnLNTFFEAH+beezZ9sitSb2cbCHZAjPHNAZCE2KjXClp+W2ZqZDpyE4DECO0fwiEHwuOpogIRY4jMjA9ce2zoP8Yi0Kwy+O8NPng4qsxSaB0gT94BUWa4/XF3Upzk79Di7byDYBPIKLNjO5HyFZjO7WoamNY6bGqveesvaGg9BsV9NcX7Ybg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by BN9PR11MB5289.namprd11.prod.outlook.com (2603:10b6:408:136::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Tue, 3 Jun
 2025 09:27:43 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Tue, 3 Jun 2025
 09:27:42 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Stanislav Fomichev
 <sdf@fomichev.me>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 3/6] iavf: simplify
 watchdog_task in terms of adminq task scheduling
Thread-Index: AQHbpUyEeQ8/w/6m/UWVhjfi9u0V6bPxiNIg
Date: Tue, 3 Jun 2025 09:27:42 +0000
Message-ID: <IA3PR11MB89857EE241F4C5239C0C496F8F6DA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
 <20250404102321.25846-4-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250404102321.25846-4-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|BN9PR11MB5289:EE_
x-ms-office365-filtering-correlation-id: da16bcd3-b3bc-4ee0-968a-08dda280e477
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+VpbiSmMOLNoXXYaVFD5PlxQRj8eum7MTf7JUiLwlmTq8MmYOY/UYIYRBsT4?=
 =?us-ascii?Q?A43Ne7xgk+nke0foV5/WkpNIQdY22Smzw+INbfwe5hAy44uOLyW6dldKY3th?=
 =?us-ascii?Q?xWp3WSXe0OQboMDM+fwBdbY07utXBQXPgEWEEnCX7aTV3Ceyk5De0AL17ZXF?=
 =?us-ascii?Q?1d10XXE2vC7EPz0gGwiNsrAw5hjSzv5waUHn6P6qyxcKXmr3geDebRFysa+K?=
 =?us-ascii?Q?QIBbcvOviuYHtrP89afCzqe0FMyE40SKncqxVcLyPUVsoty9UmkNrI1RlKxl?=
 =?us-ascii?Q?HwSqalbFcjyi/g9ctXaG1RqjBdpNglLB6YbblpDZm0kHZ9ZrMuqJ4zCAQPEm?=
 =?us-ascii?Q?pNRoglNiyzmUOXj2td12fP2LFiWtpcpq/3loJ559n+HglUVGHaDBoo/9lkQN?=
 =?us-ascii?Q?Wf8QlmErU68spEWHqD5vROAcEDDBvzPz4BmZNrr8Y5ariukK4QQUaK9umIJV?=
 =?us-ascii?Q?+UcjxlJr0g/MG7NAx2RIH1Eb2JRBI10UNozqV8GDXyBf5h82Ch4Lnfnc6HYo?=
 =?us-ascii?Q?rXP/9jiEyDONDcSHp+dTk0xLFC6jy2qlLL5pQxcV8NA2SloJbcd+s4wdE+kB?=
 =?us-ascii?Q?ZSmgsJhdIRWG2XktoOYk4Pdoj8KlAO4qMtNtGZmfOi1oGxBdISnbgud8+RrN?=
 =?us-ascii?Q?40UCYhK9DfIU7xeG44gjrgRGrRX+Kz5LoiStBRC8oykAagK6jEb1n0jxCDgw?=
 =?us-ascii?Q?94C3SM/j24LiiRCYx1xmdgwHxii6X3Esue4AtBS5uUwkfQrwMP8XxnmKqzb/?=
 =?us-ascii?Q?74frmx5/Y2KsQkIv4QkTzgf779id0ksGz7r7zS+yEvEzuS7cy0zcKyNkLYMc?=
 =?us-ascii?Q?zInZ0wNtC3fp7bxYbEwO8BONSX1zbbXf+HxZwUJ2jru7c7RuU/8gcvVoPoxg?=
 =?us-ascii?Q?jGKXoFY54qtjhfqyMaYB9ohjsg/094rUcYBEGXCrINMOUbE6A6ttcOIGy7yh?=
 =?us-ascii?Q?SZveJSa44gd5I+4A60vNH3t/JTB/4lIUahjD/cJeTafVHYA6OD110puNYl7A?=
 =?us-ascii?Q?ank+eZ4sxLVhgV7mjJ8cWAtjhQlQr5bvt896FcRoQHolegeUXRG+IwdWbybl?=
 =?us-ascii?Q?3J1koVDxAtZJGnA4IAXqz0WM+wJ2hL7iylAvFKUVLjc2Lb86LUCeuNMhqvCy?=
 =?us-ascii?Q?DaqbtDp2BG6f7FGeaUf7RR2PZMchCl5Io0XrEcWkpFKwd1MnrWLcMxukN3s5?=
 =?us-ascii?Q?+U1YLaiCbOE27n2gsx9RPP4es2lQj5LZMf32LpXIHNsJxn5bV+tGXfzyOqTE?=
 =?us-ascii?Q?ia/ttINWX0XymR0vt0B0zGLFyFTT0RiuH1InhM02GyS8UXPBdnZHr0DjCetx?=
 =?us-ascii?Q?o17OeH52QiqGW4w1ZJ13LUXqg2mP6rRR1fI/f25pf9tXGFAfMYg4delzSxNf?=
 =?us-ascii?Q?QlG3jLYjw8Cl5QNcAChWhpGbV1v/+tclvMSnr3iG1FFQVr2uCb+3CULkO1xB?=
 =?us-ascii?Q?gUYQJ9InMEnmY3GbP+SGfKY5TWfdQAVZSNrl1Zh7wRg70mDAkAfZVg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b69exiCEemgg3sjCpeCFdP6pp9Srh+DKgm03QWNw3RecWfihWxDdZDmk8D+u?=
 =?us-ascii?Q?LIoonQZ1z9WZ9Mhj+1YnsmuN9QXMHrNW1RgT3h0RGoKJARpiTTlB3IAKeIb5?=
 =?us-ascii?Q?C/9ar0F6lkl3lLPFRHT7/lCCAVRF3WNgCp1dkoJucGLNTi85YEeZC7lm6rKR?=
 =?us-ascii?Q?wwLDzQjMz9up69xrF3Wwy+chJdgH2QZXgpgKwdCijvbUrPPLnvrrKtQCymqh?=
 =?us-ascii?Q?JWO6k266FQQvG3yj8+Vh3/3sW29tF2aJx3wxiJE7HSVo7y0IzfeEEXmYdMga?=
 =?us-ascii?Q?ptTY2j5EA0YMJUrcntILWlrlU+j6aw6W0nRZI15ts+shjuUPsur9nF1SmQpq?=
 =?us-ascii?Q?PSToRWU0Be7zJ6Pu9YGJMj8j8HW8mDAptAgwZWn9KRDTktQNoC25Adqq647V?=
 =?us-ascii?Q?ePLE1u7E5LRwE0kRG102jPBBEQNO2ylHHMgH24tY5KkS+lS4RhLa1AcXd9+D?=
 =?us-ascii?Q?cxDOpceSZWMGDLrnSps3iEtUbJ5HbOp9KxbJgbs+bqZ7WyCfpN3gIjqdovDB?=
 =?us-ascii?Q?W3jsC8eABlBkL1zUmbhKzwh6h39MqBz3uTguq539kGISSFecW/t9ogg+lTMn?=
 =?us-ascii?Q?KR2TkuvjE44Y+GClxfFCsz5jtTDqP8gTIFsdvE8iBI6SwhmHyyPRf9bsxgcl?=
 =?us-ascii?Q?ZJdlS8S+B9GbZCMe22dmzgYF0vTjX/R/Ru5ieuRp/1BcRn7e8d7KXeYROz6x?=
 =?us-ascii?Q?bzoFEcdyyZym5O1fT8sOKp/a7QndlKHB5ueqxfHlLNs9t8PDKWBI1X4ilrBS?=
 =?us-ascii?Q?yyUpVW7e0lh5N/uAHsJJpz/Xqicz08dvFtwWi1VpK+CUh6CUgshmgwuHnw9E?=
 =?us-ascii?Q?ybCyql1bqlJpYraat+WMB6Nu4TXm/PkxGrN6f/wLCKT2LTtOf5EEnfUIiIll?=
 =?us-ascii?Q?xpSHGheY0GYD9H2JTuAQlymW2T0MDcdkC9t/Z+Y0lYM66PIQACGpVAPKQJP2?=
 =?us-ascii?Q?c9nXyAZD0HrxpjBZMiGjvpeCGG6t9/2QVYv2ziUnMEfQPxEvVKJX7PFBwsEg?=
 =?us-ascii?Q?L2mkv/HOVr2ToJfGdWPJGkrLo1Hstc4NpbiYquQ48a+6UirPddbxnuU97QHy?=
 =?us-ascii?Q?dWqy5HYhGakeACksBfNol4OeznYqrR4J7BvS9SHaTUX9RM5KtNQwk/buYfgM?=
 =?us-ascii?Q?95e4JWfnsLDGDNWWMUShlaia0Dw2XihbMZXdjm3OcNuOCOjjGSvr+GU+yIPL?=
 =?us-ascii?Q?bx2ddlLFGyqvjwVWtuCt1UQX2sU166tHKId8f353W012aMHXfdYhPN8Hle9f?=
 =?us-ascii?Q?I+hfbsXz/PiVzuiUk0Psstjy/jsF7h/i8T52aYJG3Ws96lbUtf4v0Hs2fjDs?=
 =?us-ascii?Q?emfG6K7UaIAEkH0JhtOSy7gz37EmkRXjvDlbZ+mbIF86nL8pjkWTX/CSd1el?=
 =?us-ascii?Q?TTJVyAkPVAsPxQoY3AD1TphDKkSd0vQy6XVWQWBosbtQfYt5qbYl9HvHN0ar?=
 =?us-ascii?Q?+zJt5MDV758arCW/irzBI7nhSUfov1mpRw8EGGoA81QhnX/EH6xMyJdiiC/n?=
 =?us-ascii?Q?X/kCf4BllBQGDdSKqVWyMY3Rt4obwKdf5xXuvB4+sKdo/m4Pn71uZs+mN2Jf?=
 =?us-ascii?Q?d5yzILZ4UQl3tGuAk4evE5hRYJUNl+d1zjYDbpTX7Xl+SuUORIFDteCM/upB?=
 =?us-ascii?Q?Ew=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da16bcd3-b3bc-4ee0-968a-08dda280e477
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2025 09:27:42.8902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xmKWU6pR9NebRL5TB7d15JzU1wFIfku9djGXVaN4/Tf0/9iFbze4+TrcSZthY/3BSEOXofRaOZwSYxNF5TZB+KFmfU9jq4LdBw4pD3gVWMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5289
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748942870; x=1780478870;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iucWf1X9OY2wjKQ2UwGBOkSUvMg7NeB3raQ5arwOlHs=;
 b=LclB3L0LUZAGkzg1hLIzwfUeecSV2OkWyjVY+QHRk5K6/yvFxZ/Mgxan
 Gqc8lT9KuPVwOTn6p/WoCvHxLezDHpTd9MmRA8vJKZ9Np2IEkQMM47PrI
 16VQGU0uZjsQKoa4mToj5eYTFxNGpsb7JlxGFiRduIuhcLuh9q373JuLr
 PtURhZ5Xx+iOoLc/BzZTmb1Mu9CGP2MwtauAqmThVf6xP6KsaH1blupAz
 gBUqOLI/8QheZsIRxey9axQa+7seGTQCQbT3zrQN6dZXOiBE8D/rxaV5K
 rQWHiVeFpO0CM86P/GnIaKjezuJkOHajA3vYYFgypKMzhoE5Q1X8tsOzI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LclB3L0L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/6] iavf: simplify
 watchdog_task in terms of adminq task scheduling
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
> Przemek Kitszel
> Sent: Friday, April 4, 2025 12:23 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; Stanislav Fomichev <sdf@fomichev.me>; Kitszel=
,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 3/6] iavf: simplify watchdog_ta=
sk in
> terms of adminq task scheduling
>=20
> Simplify the decision whether to schedule adminq task. The condition is t=
he
> same, but it is executed in more scenarios.
>=20
> Note that movement of watchdog_done label makes this commit a bit
> surprising. (Hence not squashing it to anything bigger).
>=20
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 2c6e033c7341..5efe44724d11 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2934,6 +2934,7 @@ static void iavf_watchdog_task(struct work_struct

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


