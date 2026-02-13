Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SM0SMszrjmkCGAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 10:15:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC1313458C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 10:15:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D262607A9;
	Fri, 13 Feb 2026 09:15:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2DwrJd8l7fSJ; Fri, 13 Feb 2026 09:15:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4A6A607BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770974153;
	bh=G17rbjfvtTLVWu6YJ1u+hb0czvsWQJZSJfsuEaEkCTM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a6ycxgyf+hLlMzpjPUse4Mj2Ctf4p4oljJB6yayPp2s3JDGWlsCKabxndKVqAqKja
	 WYNJd4JdmMUzqJ7ly5am+2SHWv5+KHM/0LLexrl8tw+Oygrc1GDI6u/x1kFNW40lM3
	 cySg5b6Jaojh9lp7ELuYg+HD3wchuBY1yOPKaFZbJq1ad/RL0rcfPaBRhbMaDTqmyF
	 UgFpJBwqBWAuI7bfcKNcULaNu3KY9M++RiPFln1sAYY5yk/1u23evT8m1oBLCYw/iq
	 H+hSq4dGINLI2AQuAtKZ+/YTaODcPtYLweAMYteCj3FVelKawYMv3vMoGx1A4IL+Cj
	 pF/7IgV7vAuPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4A6A607BD;
	Fri, 13 Feb 2026 09:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E01A2255
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 09:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1BB240BE8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 09:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jR1Qu0ZZJkpQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 09:15:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DFDBA408DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFDBA408DE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DFDBA408DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 09:15:51 +0000 (UTC)
X-CSE-ConnectionGUID: QOuiblFyS728fLgdYg238g==
X-CSE-MsgGUID: ecSduyb0QQy6ldHhhMxtbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="75998221"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="75998221"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 01:15:51 -0800
X-CSE-ConnectionGUID: LpFWc8whRy2vdchqVgoNlg==
X-CSE-MsgGUID: QMDFzOV6RL6CB19Q0hsEOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="217344477"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 01:15:50 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 01:15:50 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 01:15:49 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 01:15:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yP1Y4QvcXRo6NBT+h933vucfRfSFD9srvJzK/a6ijq5i/0FGY90yc5UBvpbGUrWembL4cPxj9sPGaivwvKV/ybyNr5E0O2Qs/zqi1+U35oZUJflXRlLL1N3ECbx/KuG+/oPLrK4Zs5fRiAxM5dTCWbr8jrKy8nj8eEne3cq4JXZEsogiC7Su5TaZjIXnhhX9mFK8LsXBisV/gdV7Zb6domlR0Yidhqh0YLHqKr4LDt5r/QAJr+LFxvrKJVJAaOPJEGUYYbkkZk6nY2UzDfAjSwxGIaE89BwxyRPWM3JGU8lHNnyBUBygVmBmqdXCnR8uFVyDc8S8+OMXqHn+S+5f3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G17rbjfvtTLVWu6YJ1u+hb0czvsWQJZSJfsuEaEkCTM=;
 b=grJ4C/tF1vB7UmiIrQ7DTFxygG8WAmASw6fcd0vH7qu/wfjoqTRkNBiuVWwj4EXgnG9zKfHgIf/w4V2edEEh/Wp5BI0iNk0z/Lr/STHu8o6gtMU9KaMPsdcS3+8e2Tk+JOhf89gshxSVIctmkpLSO3S0VUkJiQeOJ5/HGUg/ptZepg1BGNh5R+yhFmeUacNV+a7wLE4SIKnpPzIizovgHGOsOXJnlH6hfQffNdvVE8aiwNHchjW7p4ofQVl9Y7mg4O0CIi74pD04QHJjiccg1ggf20aqW1dVlJZB81E07iu6oFr8IIDt09jdCaCKrtiwMXCUU6ISeNrO4pfnWIMO6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6554.namprd11.prod.outlook.com (2603:10b6:510:1a8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 09:15:47 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.008; Fri, 13 Feb 2026
 09:15:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: David Ahern <dsahern@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "Greenwalt, Paul" <paul.greenwalt@intel.com>, "Daniel
 Zahka" <daniel.zahka@gmail.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Ertman, David M"
 <david.m.ertman@intel.com>, Mustafa Ismail <mustafa.ismail@intel.com>, Shiraz
 Saleem <shiraz.saleem@intel.com>, "Nikolova, Tatyana E"
 <tatyana.e.nikolova@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net] drivers: net: ice: fix devlink parameters get
 without irdma
Thread-Index: AQHcnMXzhOkC45D1d02YA91FK03XHrWAWQOA
Date: Fri, 13 Feb 2026 09:15:47 +0000
Message-ID: <IA3PR11MB8986CB20CA811DF771F9405FE561A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260213084841.1406442-1-nikolay@nvidia.com>
In-Reply-To: <20260213084841.1406442-1-nikolay@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6554:EE_
x-ms-office365-filtering-correlation-id: fc93bd14-2de5-4e2d-e84e-08de6ae0794e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4yJu6KV+ceIRytvKqgjgf6RS81bXodeoKvucxo/XKvJ6Ai+B6kh+WfgNjfVu?=
 =?us-ascii?Q?eF4vmO2W4hxyawG+c2opl3pR2vxGDu6MkZq4mzugdo+57VoYw8dSYwGzDkK4?=
 =?us-ascii?Q?Gm4SgZ6VqjvTuMmN05Qpyo1oJj4cNYeIdPV4RSifhSNtRHrU+OLWJQWembcM?=
 =?us-ascii?Q?Zazpx1Kn10ZqfgBnnpycuJL2tpz+airyVoIQZZdDj+tcY02+vomqdPj0D393?=
 =?us-ascii?Q?KTxPb598vfVX9vJFXfWbYnQoij5ka3A4kRXlOZjjqesOZ19GzXQzjf5J87Me?=
 =?us-ascii?Q?kRes/hJ9p0QZi6Jko7zMOtOIS/v2LVDcR9VH73GSjZ2v35CtW8euKm/E3gKI?=
 =?us-ascii?Q?ID9JAAeq/Ul8/mbZkbIKmkBmTUJFGDMch7edxAF03NUXl+sO1zg67XlgtmxV?=
 =?us-ascii?Q?JDhcYgNGu4eVnh515Eg1irbWvlsOnkaPjtyKAfMDwDb/CbjIAdFP3iwVKd9S?=
 =?us-ascii?Q?kI5lUehUxEEOGqZ+rTsubSIQ3rAjJppT7ryXD5Jfo9wP+82tPECp0Uqu+n7s?=
 =?us-ascii?Q?DdMZXK1n0MMdKfzswu3C8ICF20U1yUl8pI/TujKYmW0g40OK46+cEeW1NI38?=
 =?us-ascii?Q?Zlpbotnfj7nmtgMseo0X/JF0hfVsbwDAMmF8rIekVywT3H3CLeTcU8XyMdQL?=
 =?us-ascii?Q?nv1I9muCdgX+kfFdwIq2XleJS4dYjDJ4TKHzmqsyHCLP4uvQobYNao5UVniW?=
 =?us-ascii?Q?uHH2YFPELqiuo59McsU1bViwaYVwWz+aramzpL5+sX9V2BLJ9HnuklYblxtm?=
 =?us-ascii?Q?2ZM70lIB26wdZWr5D9xfVc2RwLOGZtmA4tn/VeRAa7OvPpqUjD/RVh1Jste9?=
 =?us-ascii?Q?wSJWKo8hT7zJ8lim4Xfx73SsYhLnRbUbweftKyWr5zJhp3vyewsH8tHtPzuo?=
 =?us-ascii?Q?6lSgGDhe4jArF3X1t4SgI9YPXyeR4dHHkh3gYeeqkdBRN4oki6cBLTlDYaiI?=
 =?us-ascii?Q?p3cfqsq73wBhtnbyxV7oqxuR+JEgIFUV1TIT77bteT+x0oZqD2EXp3JJbIW+?=
 =?us-ascii?Q?DPnTMVlnJWUAD84b5NRQPO8vsWXiRvw3AyUj7gv+MxyIubxffpxuojorK//Z?=
 =?us-ascii?Q?6Z/Y4Nd62b72o/mmFn6jTbhOLcqqz2xJO849RBZbC7n9CbbaLYPMkaPwur+g?=
 =?us-ascii?Q?z5UqusER+TCp80rcTv41Zy3JtnCN77tn9OzPTDH9fQ4LHqPJyMGLRKSNlZ4L?=
 =?us-ascii?Q?6DUll0JfCR6wLk+g9qmAsbP/Gzz0X2RjprDwZ4ZjCVIWx+qzRu8NoTJwQAiQ?=
 =?us-ascii?Q?6exo+V7fGyHl880rDJVm9cxjbvxWw+lAUdBDkwh/5KFeNfEX8p7dmqSjuBm3?=
 =?us-ascii?Q?L/Yew8TDD8SOQUSQYY96azweka9r2PkqnkX/KsePVKeLpT0CHkkBItRzuxCI?=
 =?us-ascii?Q?DqYxx3wejuaEjzvwbzzrbs1X4n86M9LZ8F4g2MdIBmjIINj+4rrk/PmAex1D?=
 =?us-ascii?Q?Nr3UXbLBDIcZ0B/Vuwh3pHwgb2NdA570Ox8kDY3kbnqBztIZcLc5i9XN7Nlq?=
 =?us-ascii?Q?LHHKYaVBu33pMZs0xdcAUjxEKrPWHwSp6/6ISwL0SNmT8lSnUBrhGu63J7wT?=
 =?us-ascii?Q?Z4UJblUU2QaQn7F6fDn3epxv/7QZ5ToOeIghFBM6cM5oCO2iZAAl7vzwTEsU?=
 =?us-ascii?Q?QEqL2lrn5D25WqF7FxD8jPY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZE1QE65MbYdxhgLyNIgItu7E7Co12MZcdCKHvf38195gGqN5TlkUySX0h7Ij?=
 =?us-ascii?Q?4qCQYlBpxDn4j47zsL15UtfIAoeyLQei0pbvTRKucm/C4aX12ypvvm6Lunc0?=
 =?us-ascii?Q?QT0ZcbEs0xOfms/okb9FNXHBIpfKVmkWWBSwXQwlnuDwoiIK9f2/ynso1pAw?=
 =?us-ascii?Q?GsWixCyLiuAurXfEW3iPcb4Ra46x2dazOu6LlKhf0AZot4QI0Fheolzu4pyu?=
 =?us-ascii?Q?A03vKLDc0T1G0Tb1ejJIudLTzlq9h9QhP+rd2BkLjfzEo1vIeCXf6PwBVnjV?=
 =?us-ascii?Q?MFe0lxWV2ytiubvCQUhm/tZGxUv7YuBv/k5vjEgTZ/KcBlz7WWad4PmJ7iDr?=
 =?us-ascii?Q?YUzILJWJBrJNT+n4MOfW0xfwlbEW5OGBBBByv4f9ITdwP9FmvnLAAoacV8Ap?=
 =?us-ascii?Q?oDnNRzi2AapbX8vSsU8v5H8g0NDlNF3I19oL3clxdEaQ2E5eRnlzZApP7cZs?=
 =?us-ascii?Q?unn0nVr9ubPkjUaJYhosAZvjsFd7Y5+ha4V9nmPH2bhiozN+jlNaG5n9c/14?=
 =?us-ascii?Q?sBnNLU7+KdMWPfiC1iytXei4iQzu1X+9VGtEAd6uf9Ow/KWAQAQW6tiTU96O?=
 =?us-ascii?Q?kU6sasxzc8X1oY8M/QC2DY5QnN/jKqIbPp99g3fxrYDfx9Z0Xc1mWi5Y/sWu?=
 =?us-ascii?Q?6y3Z0bFnnmYCbxqHSx6ow1pggLgxBg0sKZjhvs0nseHm58kvdZ7zpoZQMXph?=
 =?us-ascii?Q?qsYhRfLT2lCx797uw3UKPTY8YKJ3ZDqKVx/6ayBOuAQ7Pi/lY7jsiFiK+omC?=
 =?us-ascii?Q?E47U+9gaomz44gmoz/yASNxX5IgLasV6S/K7iJtbar1Z67beHR8ZbOrDpbL7?=
 =?us-ascii?Q?sDVTfv38qLDfcMhOu/mNuLa0s+AacIDkt60Lnnce8oTG3rVGwWkzQOk2NQsY?=
 =?us-ascii?Q?ncsCBfg+6nf6RuARfE2SLQwnmImiRYo2ueMk+1jlH8xu8yu0xBUknWXM6Fle?=
 =?us-ascii?Q?ouoUH7fO4qKoDeIoQA/x7dzZoJJHcvg9lC+pJmuoZNnMjDTC0M5lRxfVt6cn?=
 =?us-ascii?Q?NPcMtuV/qPh/iUkSGoDIKQ9MY8zVZ030G0IYIeWCiDEol6jMbv57VMfZVoh/?=
 =?us-ascii?Q?imS2NZoShgvZo9Ul8D3gTNVwBoWRyntV8olMhbGz2MFTasGChvwFckSQSbmc?=
 =?us-ascii?Q?uZ+ErOkxqilBmV6BBKn6T1RFuZU/rqwNrgu1SR2s6DoYzhWpLApeQWqIOIiS?=
 =?us-ascii?Q?GpR4x3JfXKOQ+oWBbS0uLhARAvf+OvMNKeESUtSJz9c1YjQvABEX2zl/AQNA?=
 =?us-ascii?Q?sFg1sVxWXezLiNjXNu2dGueqN8uu5P0hezN4PyyTleF5ibcIBcSu3sBOQ4dx?=
 =?us-ascii?Q?7E+eraApjBEU2rbYTh3oI2cZW7huaBW2OPwQ81krRlJuJL1felXCluZij+Ph?=
 =?us-ascii?Q?G//PY3r8d0OlGhIBeOYrM7LQztEW7qZDRu0RCs28t/ui/erCUmsV/cP3lDQt?=
 =?us-ascii?Q?gI3bZO9A70jvXQU34BN7CX2VP3IUNQmhSumEGAcoxB7jYWxDks9zen7J5qr6?=
 =?us-ascii?Q?m7sztJ8U589Nn0373rl7H9+SdiHF+yt8dyVU08O0NrPtCZlKMih7t2kmvhjw?=
 =?us-ascii?Q?DZNItLOyBU/ncSOGZ7dk/Vovw3t5IS86BSvK5KALWJ9W8NSHhZojWLFHuFdb?=
 =?us-ascii?Q?qSdFjAX6VRfx/jLRPQyJyf/o+pdtP/8I4wUXW6pdEaei/fMzuqR0/cCC9h4o?=
 =?us-ascii?Q?u/77p1OUWsFxoHwzSclfYGw23v0miGemmFoBI+5RfKcR9bMlcUtCjom29pKx?=
 =?us-ascii?Q?2xPb8wEJ3g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc93bd14-2de5-4e2d-e84e-08de6ae0794e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 09:15:47.2715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mn2pI1vmdzHIz5ArW23Msbjl2MoSv/wmz5kIL+jrRDoxoY4+wl7vw6B6PVpPrSdL4cHMs/LDikiopscpEY+ZpK3PKtfVXSDpu+wOJh45PoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6554
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770974152; x=1802510152;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I7uD/LoS4MKU+Q1XAyiB6Yf2qmpUGJZj75RBw70zivY=;
 b=iMg9mQAzzRaFGZ6BaPywyaC06hromG7/JhoDUdJa7UtyQjDjsT7ghIpj
 gOhZ1+zGvXvA3sqD723CMw2JWWxfj+t+O/9tHNUlpGXOCqEj7yOCnTeqO
 nLalmXXWRQSQtDrFZxb79GGPKklXQZFMMnhVBfWoT7bGJsFZIsG+BUHxv
 d3O4e3p4jpOIjx/2viq4HxgMewyRPyX3g+20hmQFjiwai/0b3KV0bv0bb
 /X/N0LRdI1RnmjsTeF7RuThPJl4gskBE/04RfaTNf/3K6wsv7vD6Jr1Uk
 L2f1LgyK1ALey0E1yrui8khMwWaNEiYdk3F5QG4HAu202zkDW7CABfp9V
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iMg9mQAz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] drivers: net: ice: fix devlink
 parameters get without irdma
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:nikolay@nvidia.com,m:netdev@vger.kernel.org,m:dsahern@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:paul.greenwalt@intel.com,m:daniel.zahka@gmail.com,m:michal.swiatkowski@linux.intel.com,m:david.m.ertman@intel.com,m:mustafa.ismail@intel.com,m:shiraz.saleem@intel.com,m:tatyana.e.nikolova@intel.com,m:andrew@lunn.ch,m:danielzahka@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,lunn.ch,davemloft.net,google.com,redhat.com,gmail.com,linux.intel.com,lists.osuosl.org];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: DCC1313458C
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> Sent: Friday, February 13, 2026 9:49 AM
> To: netdev@vger.kernel.org
> Cc: David Ahern <dsahern@kernel.org>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> davem@davemloft.net; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Greenwalt, Paul
> <paul.greenwalt@intel.com>; Daniel Zahka <daniel.zahka@gmail.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Ertman, David
> M <david.m.ertman@intel.com>; Mustafa Ismail
> <mustafa.ismail@intel.com>; Shiraz Saleem <shiraz.saleem@intel.com>;
> Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>; intel-wired-
> lan@lists.osuosl.org; Nikolay Aleksandrov <nikolay@nvidia.com>
> Subject: [PATCH net] drivers: net: ice: fix devlink parameters get
> without irdma
>=20
> If CONFIG_IRDMA isn't enabled but there are ice NICs in the system,
> the driver will prevent full devlink dev param show dump because its
> rdma get callbacks return ENODEV and stop the dump. For example:
>  $ devlink dev param show
>  pci/0000:82:00.0:
>    name msix_vec_per_pf_max type generic
>      values:
>        cmode driverinit value 2
>    name msix_vec_per_pf_min type generic
>      values:
>        cmode driverinit value 2
>  kernel answers: No such device
>=20
> Returning EOPNOTSUPP allows the dump to continue so we can see all
> devices'
> devlink parameters.
>=20
> Fixes: c24a65b6a27c ("iidc/ice/irdma: Update IDC to support multiple
> consumers")
> Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> ---
>  drivers/net/ethernet/intel/ice/devlink/devlink.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index 2ef39cc70c21..7de749d3f047 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -1360,7 +1360,7 @@ ice_devlink_enable_roce_get(struct devlink
> *devlink, u32 id,
>=20
>  	cdev =3D pf->cdev_info;
>  	if (!cdev)
> -		return -ENODEV;
> +		return -EOPNOTSUPP;
>=20
>  	ctx->val.vbool =3D !!(cdev->rdma_protocol &
> IIDC_RDMA_PROTOCOL_ROCEV2);
>=20
> @@ -1427,7 +1427,7 @@ ice_devlink_enable_iw_get(struct devlink
> *devlink, u32 id,
>=20
>  	cdev =3D pf->cdev_info;
>  	if (!cdev)
> -		return -ENODEV;
> +		return -EOPNOTSUPP;
>=20
>  	ctx->val.vbool =3D !!(cdev->rdma_protocol &
> IIDC_RDMA_PROTOCOL_IWARP);
>=20
> --
> 2.47.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
