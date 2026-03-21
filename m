Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOqDG5AAv2nrogMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 21:33:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 481C22E734F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 21:33:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 270D061C2D;
	Sat, 21 Mar 2026 20:33:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AcjxkpKznU6g; Sat, 21 Mar 2026 20:33:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3563D61C2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774125194;
	bh=KwH3xIcJ1yrkUne4ACmYcNFL0EbcL5pd2gACKj9hwUs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R/FrLyOwOV72Uan7TZ9sgEUsMUHBYAEB+l/vohYwezyFpWWzxxphwohMB6g4vx8LI
	 lY2IZrsLAsfjbo46/KhzAC+a24L/mtlQBKWu4jmW9beaIBULfSHGnLzjdBn8wHof3i
	 Rdvcr9RfdW1/kg7a/yD0lxdpGNaJYDEnVnuI0jjoZlKGAxSFIC3biUTlgnFS9hJ8XN
	 mNtimTw2lTZ5EWClD1wNTcTuwwGrtH3dI1H++Lub+2mtsOrgH791HPJpovXKxr9GU/
	 aSLjQRrlptAWMgQIwrYHLKrD2g17PDR9GVsFRIWImPDaede/nuTvGquRKYxA3LvVhd
	 r5ZbD7nA5sTLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3563D61C2E;
	Sat, 21 Mar 2026 20:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C9E8934C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 20:33:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB86540086
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 20:33:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TB7jZRcr1DWe for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Mar 2026 20:33:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 73FA140074
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73FA140074
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73FA140074
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 20:33:11 +0000 (UTC)
X-CSE-ConnectionGUID: DkyY18puQaWKQo5PAVGXzA==
X-CSE-MsgGUID: QmYUYIctQpGIyfMHIdCZ7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11736"; a="97801304"
X-IronPort-AV: E=Sophos;i="6.23,133,1770624000"; d="scan'208";a="97801304"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2026 13:33:10 -0700
X-CSE-ConnectionGUID: Ba+JW0yYQsGaWlWAb5XzfA==
X-CSE-MsgGUID: 7VQxGbzLRo6RtFfAaBFBtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,133,1770624000"; d="scan'208";a="219332316"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2026 13:33:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 21 Mar 2026 13:33:09 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sat, 21 Mar 2026 13:33:09 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.68)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 21 Mar 2026 13:33:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CpbhQfmjCPRwCfyHrBkBfWQetfJNQh9diUOCNDkPF4liHri01aRc2sgCQSnvKAsBuYV3PD70Q7yNajKgKZobFYmcqg/gyri+Q6TO88qMohXptxNU0dBTq+nToxOkHZCOaPoo0p0Od49UigDc8c9daE7Pe6iMHoRRJzHDMvNYA+xZyEtmlhSQLsmcBy4Lk4OCtR4TK4EBvk8uo+YyAN750Z3ATR/DYxSF4512J+IybgtyH8EhMgdKeApse7k/5aYfcwUDEW1Ki3tDXxTrcsRj0CYEEocjdmrhH23Al8cUTZYokr2HIdL6a4zCtjp7WBRwwzdHinNaUSxB6s4lOq8f0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KwH3xIcJ1yrkUne4ACmYcNFL0EbcL5pd2gACKj9hwUs=;
 b=a4Jx7nmShL1xYwfOng5uiDI1/dQlKh7pmllu4yxgvtbUbdYVAHePqB/W5QQddO4mKL5qJVAy2HTo/7sGaEGZ8rWFQMo9o0ZmM0ZI+XbKhkF6lVzmzvhG7VsiXbbIJV8CKQYEgkpbW6dz7NS6LEAVeJAGat0gNZKoyOhDir9i4ZkdCTMrgYMHXRBJu2tOZdBqxyrbAqHZ4DGrLpI6g/ZbumKbVgw1EwL9t9Kq/Rg+lhVqvhyYs4ob2m8z5MJ4i5/GF74d/5GmKVkt3W7pGYMiXFHJODuxrLwmPaffgBBskLrnaVegUZFgCjm/TPimiCisP1xfFhudKeaf4ku1MGvDKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Sat, 21 Mar
 2026 20:33:05 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%3]) with mapi id 15.20.9745.007; Sat, 21 Mar 2026
 20:33:05 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH net-next 5/8] ice: add TX clock (TXC) DPLL interface for
 E825 devices
Thread-Index: AQHctrc0WqVoa+jYU0q5kNwmJ1rzTbW2ILUAgANVO8A=
Date: Sat, 21 Mar 2026 20:33:05 +0000
Message-ID: <IA1PR11MB6219FEA6AD98CA328D8C35A3924DA@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260318090654.611349-6-grzegorz.nitka@intel.com>
 <20260319173734.2004456-1-horms@kernel.org>
In-Reply-To: <20260319173734.2004456-1-horms@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|SJ2PR11MB8452:EE_
x-ms-office365-filtering-correlation-id: 80d3d3f7-d466-4690-639b-08de87890e58
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: HvwHKzXP+i9HtzCIFzgkV//JEG/DBcF9/y4bdWRUQKEN0RallhEQQMTPDyt7kRm1z2+65mMpRbv4KAO29X029KlxedMPgfi5csQJ7wRU4TM9kOB41ic7i/t3VB1Fjxx941u/yFyerAFkKKkKhwGppMr1yq+EzaRS2J2sNuD8GHrtVZw/36oXR6jlcZK5eTkbYEDojif1KyDktv8ypWiLkmEZgVYTg36wBa6xrBg3cfFxX6ORCB0q3caujuJ3/rpc06d9ntpUuQgTPkoGLuOTDGG8FXlI9Jggw7pIXySCsYqYaAF7MVwipOib/8pgae2ajK6Zuy7rDiG779hHiPBRJFI2gEQT6VRh7hR+kLBLwpF/Rm2ekYtGL/W4OsgIDchKs6mUsFIgvcz3XXGGayqjSWc/gmlScusBGg59Lhjm/xzEmeMd/EN+th0nwXXXe2SlakRlsZoodEakkTD5cees0frDMAYurAyGRhphys5vFVBexG0Vd0ik/IAffuekRFnZMGQvfgRsE2XbheZl1X9p9Ls0l4uUhvOsgORJ3riMNnyc1l/AXhwHEmhFCFUitEMiOhHXExAqyAVYs7imE1vhYaRUmToS+ZVcY+oly/hdWL2TG75u2CqQXiehiVeMekHKw4oPPcP1kSDVst3Spl+ETNZh53AX+ChKeJ81xIXu8r9ichUazDb/bLEXgx0zetEUfRsvOhpJAGogUkGKYvk2SnjadRt8w6at6WPv6Ru0TeBprJx4AT/GiMbi13umoiz+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FcLvonlVcAhQO8VgbZpAewA/kCz4vwk253ZamljiVHCUSwBjzSaOMg77mpdB?=
 =?us-ascii?Q?5jSvVgQE86sVxdAKVJnF4Qjew3LAbY/Z4G6lnCBAuCROdrcNEPpwiYstzd+I?=
 =?us-ascii?Q?Ic87jIHk9fAkezpOSFYy0XUYHHCPqFAj5yIKlPYfBj8w12lbQoq2woBWelpa?=
 =?us-ascii?Q?Hl/S94Hs1jJg6m8Dx9KjucZO4rSLi+2l7qCuPXrbQKOxo8iRyW0RJYzpxUGW?=
 =?us-ascii?Q?j1bxoxD9gKAJ4ZFbBFLq/nvI0vPdUTNG6UF1k9m62UrXLvdOmOZ2RWB/AMLN?=
 =?us-ascii?Q?yz+JHWOSbn8P8/LlVG9jeucy8BkYdztucLyxCjptxmmTIe1YkJ8OYEDpir8N?=
 =?us-ascii?Q?Xq+AmMOaZsp9dvedp45AiF6TO9fV+090gPTfKAOl6AY8U8+n+DHRsxj2fL3k?=
 =?us-ascii?Q?fAP6nB0LM5ZEBZA1LFV3hBthAFw0V/izi+FrtrUlHG2vcloA4iSvAX3XYtQJ?=
 =?us-ascii?Q?TfiT6Uk8CyPmgSFOOaVscbHy9aynrepnlA/6IZP3Y1sJ28XjgegH9xNWJ3Wm?=
 =?us-ascii?Q?3NUT3JReouguTaOwNOM1dBg48XwS1B6H7VnoVUQ5rRkYGG49qrKBS3BHks7i?=
 =?us-ascii?Q?EbG1y03jKtQA6P0IeGIK7nR5v1QmGpToagZbWE6AEghiXb9R6mfZpT2+qjQI?=
 =?us-ascii?Q?zEr5Z7fekydvRQpkrqU3n+4NUKFvWVBfIx8sqGTlgRigGNK+c3lfQplN4lFN?=
 =?us-ascii?Q?HoaaX90YNHYkHxuIQyhXpShsyltohNJUhy6xvYqmMfmcqdb8gz6p6YfzF+9e?=
 =?us-ascii?Q?NotCNW7vpwdmtgkPI+Kti/oxjD76Y8uxDMuErlTHmsn1foCdM6ivJ5zRXFyk?=
 =?us-ascii?Q?iyTVJiO1kSzNqK7QE6iZHyE4h6U7MnAjfb2Y5nsOZmVJCvVicOKIGqa0UKY7?=
 =?us-ascii?Q?d4zsq/USfTeSeZZoM4lcSEzNciuBIRcroqqvjW03YZYFTabweVPmS1n9nho2?=
 =?us-ascii?Q?xW6g359GqFi254slnspCeaTksB8egy2EnpyVxp8dltWFJDgHNCAs5KCFa2B+?=
 =?us-ascii?Q?49shz160CNJ8i3PeJvmAcDGO85B0T7KLtpPBBr8FZlhd+apTg8nfJpTELMrJ?=
 =?us-ascii?Q?tBP7NOApR6vSTWR/6Nnlg4EV83o+1B0b8+3iHOJvmsx5rUisByCfILmbc7zT?=
 =?us-ascii?Q?7vMkrK76sZR487wiwyvAjwuE1sAWl+VnJ0CebisFPCQLDeUpKZF/wDRhkfNT?=
 =?us-ascii?Q?4tQmbxWgGNXKhgTAte9vuz3rMsb3i6Xkn/1lcQRsEtjoAZW/8V4GxpX/8JPx?=
 =?us-ascii?Q?f5AoLgq0F7vqhwxAEIuXCrY44gtPO83Myv6dRAcdhr6yY6yfEYLlbPHgVK+3?=
 =?us-ascii?Q?uZS4XM+la5JD6GniN/NhnruMQ/u6OhtbF6c38iru6Qn3a6fiOCDcgDX0LCAd?=
 =?us-ascii?Q?yQHRXZUpy/I4r7DkTWhGmhAQJz4mrt2WhT6Za+z6V7S0izgT4dRaNSeW0ic6?=
 =?us-ascii?Q?Da6Bdh55YITJ/2JbeCUTZDeJa/FilKXUsYUzD5gapPbRWouWme3WaJy2+yhU?=
 =?us-ascii?Q?qmzfDKhJtl8/jCv+w2zA0EXNBvehzQJrNKtHLL+938cH8dSfi/lG1ZuPfbgW?=
 =?us-ascii?Q?3aYla4f1N55+53O5LJl6IvQntKvcLY1s/NkbU9wOzKowICFDBumuS68g8aoX?=
 =?us-ascii?Q?J9u9ZcrYVT9bLs6urR+ZFftm0AMidVn3xEJJOwmqbzijo92sS+/w3vQTGu8k?=
 =?us-ascii?Q?Unlyng+F2M2oxVa7Z8LALMYEjTbH+aVnRiQocA6QNAEFlqso1btPu0LnStLS?=
 =?us-ascii?Q?lCpLfH5Thw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: u4nKxl0trn8NyKp5QSo5juSofUn/d+77D5zywM1C8bUnNdwOse2lVcAHipO1oc3tdyLsdMZ2QU5I40ZiGwnTJXzDON7ikgNHqtxZpiB/ypBr9r8SBY+65v2PsGo8iwW0PQdS0VdPMjWJ8ScaMMIiOrhgJ/ewr7nGYfFCb8JA/Pp/gSyQr2Lw3SezxikrOr+Kb2e3pmO5AfzPbjHceqjS2A3Gr3/Czl5C5lhoKPXVLUzcORZVxtVUokuNDlLqEX313K1eHPni+beme0NwciiQlazQpBzb6WVll/cMhwE8cdIn/b4abdMu8i1FxhvOVgoMOFfvAnYRui+4X1FpWT5K9w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80d3d3f7-d466-4690-639b-08de87890e58
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2026 20:33:05.4075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DNnpr7STfOVg4rYNPA13u5MjWsTY8ktORsIPVA+iipATqEw5stQDu80wQx1KzMtyjEA6uw8ZtOaZHCcSN4jWuTOm78cd2awugppKgoPCY9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8452
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774125192; x=1805661192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2SlCVtpwUjGRBcJsoekWWZRVOIDC1A6UvFtNhgJeuYI=;
 b=G+SeqV2pwSOxBgXhn3oCoJ97Uf5ooph8dgGTxUoyLCHzb5yDQwWDVswj
 ofKtxq2b4k9St2wXHqAjn4470flhvFwEHzdsH052pCiun00rBo39mB+Xz
 Lgir5FI24H+yetC9kG21gXaqe683PutSa7OoqWcT4+WE5gNvX2nYblqxt
 OwsKkWh6ck2CQH7WURtn6ZP2ZaBPXgbSy3FHUnNoZI9+dPavSf8S//rzr
 FvKanYWbvOlTKOUTYQXRpEiRinsW2eA1kx8gamsVasf5WOwnKnROJM7oH
 A+cz6SsAG3zZC/6UHW+x+QF2yvqfMo1esd72uKtxva2kbHqCLhKywfopk
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G+SeqV2p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/8] ice: add TX clock (TXC)
 DPLL interface for E825 devices
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:przemyslaw.kitszel@intel.com,m:Prathosh.Satish@microchip.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,vger.kernel.org,gmail.com,intel.com,lunn.ch,kernel.org,microchip.com,davemloft.net,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 481C22E734F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Thursday, March 19, 2026 6:38 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: Simon Horman <horms@kernel.org>; netdev@vger.kernel.org;
> andrew+netdev@lunn.ch; pabeni@redhat.com;
> Prathosh.Satish@microchip.com; jiri@resnulli.us; kuba@kernel.org;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>;
> richardcochran@gmail.com; vadim.fedorenko@linux.dev; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Vecera, Ivan <ivecera@redhat.com>;
> donald.hunter@gmail.com; intel-wired-lan@lists.osuosl.org;
> davem@davemloft.net; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Oros, Petr <poros@redhat.com>; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH net-next 5/8] ice: add TX clock (TXC) DPLL interface =
for
> E825 devices
>=20
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
>=20
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-
> local.html
> ---
> ice: add TX clock (TXC) DPLL interface for E825 devices
>=20
> This commit introduces a TX clock DPLL instance and pins for E825-based
> devices. The TXC domain exposes two reference pins: EXT_EREF0 (board
> external electrical reference) and SYNCE (port-derived reference,
> described via fwnode). A new pin type and pin ops are added to support
> TX clock references.
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> > index 62f75701d652..a1258f2e03a9 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>=20
> [ ... ]
>=20
> > @@ -3552,6 +3686,39 @@ ice_dpll_init_fwnode_pins(struct ice_pf *pf,
> struct ice_dpll_pin *pins,
> >  	return ret;
> >  }
> >
> > +static int ice_dpll_init_txclk_pins(struct ice_pf *pf, int start_idx)
> > +{
> > +	struct ice_dpll_pin *ref_pin =3D pf->dplls.txclks;
> > +	struct ice_dpll *txc =3D &pf->dplls.txc;
> > +	int ret =3D 0;
> > +
> > +	/* configure EXT_EREF0 pin */
> > +	ret =3D ice_dpll_get_pins(pf, ref_pin, start_idx, 1, pf->dplls.clock_=
id);
> > +	if (ret)
> > +		return ret;
> > +	ret =3D dpll_pin_register(txc->dpll, ref_pin->pin, &ice_dpll_txclk_op=
s,
> > +				ref_pin);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* configure EXT_SYNCE pin which is based on fwnode pin */
> > +	ref_pin++;
> > +	ret =3D ice_dpll_init_fwnode_pin(ref_pin,
> ice_dpll_fwnode_ext_synce);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret =3D dpll_pin_register(txc->dpll, ref_pin->pin, &ice_dpll_txclk_op=
s,
> > +				ref_pin);
> > +	if (ret)
> > +		return ret;
>=20
> Does ice_dpll_init_txclk_pins leak the EXT_EREF0 pin on error?
>=20
> If dpll_pin_register for the EXT_SYNCE pin fails, the function returns
> the error without cleaning up the EXT_EREF0 pin that was already
> successfully registered. Looking at the call chain:
>=20
> ice_dpll_init_pins_e825() calls:
>     ice_dpll_init_txclk_pins()
>         ice_dpll_get_pins() -> acquires pin reference for EXT_EREF0
>         dpll_pin_register() -> registers EXT_EREF0 with TXC DPLL
>         ice_dpll_init_fwnode_pin() -> may fail here
>         dpll_pin_register() -> or may fail here for EXT_SYNCE
>=20
> If either of the last two steps fail, the function returns the error
> directly without calling dpll_pin_unregister or ice_dpll_release_pins
> for the EXT_EREF0 pin.
>=20
> The caller ice_dpll_init_pins_e825() also doesn't compensate - on
> txclk init failure it only calls ice_dpll_deinit_rclk_pin() and
> ice_dpll_deinit_fwnode_pins(), neither of which clean up txclk
> resources.
>=20
> Compare with ice_dpll_init_fwnode_pins() and ice_dpll_get_pins() which
> both have proper error-path rollback using goto labels.
>=20
> > +
> > +	if (IS_ERR_OR_NULL(ref_pin->pin))
> > +		dev_dbg(ice_pf_to_dev(pf),
> > +			"Tx-clk mux pin not registered yet\n");
>=20
> Can this cause a NULL pointer dereference?
>=20
> The IS_ERR_OR_NULL check appears after calling dpll_pin_register with
> ref_pin->pin. Looking at the code flow:
>=20
> ice_dpll_init_fwnode_pin() returns 0 (success) even when
> fwnode_dpll_pin_find() returns NULL and sets ref_pin->pin =3D NULL. This
> is the expected case - the commit message states "The SYNCE pin is
> registered when its fwnode becomes available" and the code prints "DPLL
> pin for %pfwp not registered yet".
>=20
> However, the code unconditionally calls:
>=20
>     dpll_pin_register(txc->dpll, ref_pin->pin, ...)
>=20
> where ref_pin->pin is NULL. Looking at dpll_pin_register in
> dpll_core.c:
>=20
>     int dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,=
 ...)
>     {
>         ...
>         ret =3D dpll_pin_fwnode_register(dpll, pin, &ice_dpll_txclk_ops, =
pin_priv);
>         ...
>     }
>=20
> which then calls code that dereferences pin->fwnode without a NULL
> check, causing a kernel oops.
>=20
> The IS_ERR_OR_NULL guard at line 3716 was clearly intended to protect
> the dpll_pin_register call but was placed after it instead of before it.
>=20
> > +
> > +	return 0;
> > +}
>=20

AI review comment is valid. To be fixed in the next iteration.
Thanks

Grzegorz
> [ ... ]
