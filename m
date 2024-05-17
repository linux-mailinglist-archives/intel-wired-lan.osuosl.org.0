Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B268C8169
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 09:28:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8158612A2;
	Fri, 17 May 2024 07:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LakI8PwehjA2; Fri, 17 May 2024 07:28:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDA5D612A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715930912;
	bh=CrKVp2cN7wyoycKE5j0cvZPPhWDGnJJAfJ+jhb0NmQc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5YqjR10SVSImbsboi0gXl+WquEIRKiV4ud9SRpZJYVJLqhAKSMteLwBvRSEv8ANyR
	 TrfHJnsxCorVv9Cb7Qw292QEoN2rAY0l6mKOG4jC7x5AOvAepXwF/L5HrJKsV+ETFU
	 bzyc1O57tx6ZtUYFVCQtNJGt+1MDNSZnVzKXHRotI2erN1Hakc+Ks2B5D5rlbeLMho
	 aPaUrlLd0jOnqzGHA7MCK28vNmGL/1MKfiojrCxKbCEZi/xNom/nMQUroXr0wNF9Dn
	 IQfi/1mdyf+Yyi0duBxaiMC3FMjlVJjmR66md8qEexp/hT8UJFfb6HuO7sD7CeVTxd
	 hw6LkhAHoFQLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDA5D612A9;
	Fri, 17 May 2024 07:28:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAC3C1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C661940567
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:28:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WtTAQz11h96S for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 07:28:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E761740137
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E761740137
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E761740137
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:28:28 +0000 (UTC)
X-CSE-ConnectionGUID: mdK9B7ISQN23OVPo1GgcDg==
X-CSE-MsgGUID: hnAYJaI4T622C82pd+CfcQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11933174"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="11933174"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:28:28 -0700
X-CSE-ConnectionGUID: RIybzDubQ26GK+uuXm/plA==
X-CSE-MsgGUID: N8UMCyCeSJKR86Rc6bMTog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="32303343"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 00:28:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:28:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 00:28:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 00:28:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K1Q3gdRq9uOhH2os21apytV19oMLjC7xEjOypmGSPnv0xGyRrIKj+tL6GdtP/c810FcjURzrB0MhPAZkTFDvvyEKfj7A1MAgE9FhiBfYhpD67V4oT0yYkOCep4P/IYynU8r2j63Ex5gRgix16EiXy/EUMBFouFmYbKkAJjTUN3aYvpMyfqkBqCR6/boBcmWF9WvMUbIrDaNe+6XuXwnlXo3Y4o1np3D4ejrazD+hDHFrUBsAAUilwmusAwin4i5xIie/HQChGkPlx7wS/KPSgcMX49eG7sKnIgT8zAKFRKGcI2UMJQcjzEJ1lwQt8Vw4EPeDfoOdBKdyM3uCxquV1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CrKVp2cN7wyoycKE5j0cvZPPhWDGnJJAfJ+jhb0NmQc=;
 b=bfHcKR11+cBhrImukTlirDS7Xiyqk78Xo65wQaG02hNC8c9FsFURKmWTOnl4dITjyaM7uv5lvsXdeIdRg+HY9UN1hdVeqQDNxP62pj8mPs5GihfskfTTpbxUC0xfKPqOdxZlQW9C70f4l0Wq5aak16UazzqA2QDWauFZmfAtBhHx59Rx/Qryrseed/uPM8FvI64uWAQixcAxSbpkZzc+VgUpBQgk2FqUyMboUuAlT+qjMKVC+vNHkGPJq0NjInbroc7QMkKgRGyFiYdr27Onl/vpFNJlTiJceNpsRA2rxryc6BigtLMHWkYRQZGsxUbOeFhq1o9sJDeYAY+G+GeH1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB5156.namprd11.prod.outlook.com (2603:10b6:303:94::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Fri, 17 May
 2024 07:28:26 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7544.041; Fri, 17 May 2024
 07:28:26 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 01/12] ice: Introduce
 ice_ptp_hw struct
Thread-Index: AQHalkysnfYLcV3t0UOO04mx8YpJg7GbKp/Q
Date: Fri, 17 May 2024 07:28:25 +0000
Message-ID: <CYYPR11MB8429C9784DED6315F7F2912ABDEE2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240424133542.113933-16-karol.kolacinski@intel.com>
In-Reply-To: <20240424133542.113933-16-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB5156:EE_
x-ms-office365-filtering-correlation-id: 42fcc4da-a2f8-46cc-fb5f-08dc7642f0d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?hM6hoGL7YPGZjFeMOk/JklhJP8s9WDcqHRVsEPhb5v6Z2b/hWxkXGXyOshsa?=
 =?us-ascii?Q?sqfPnk6CZUNnz3y6GKI3UE6rA762S5exwM6gpQteDXa+KpGSHtgHmGi5+sz2?=
 =?us-ascii?Q?y+3GZckATIV326VQI6eAYXgIsFxUNN5ldEe7hMGcpenyDOvvQ9GIVPiA6hEl?=
 =?us-ascii?Q?MH/dJ6mBVgH7CFSX3uK/IE95XuW6EhFsvtdQrZ1guxM1gF/wNSaV4yREQLlu?=
 =?us-ascii?Q?dH7Zr1GkZh2szW4RcLu7Jg4s1aGYJhvficSeD5Lrumjihh/NtvlEL8sLm2NZ?=
 =?us-ascii?Q?Y/RXuK+JYFYfomjIv+qHsFXkFxQTbBP1PawKMp/39+QVXXtMJGfoAl2n8RJm?=
 =?us-ascii?Q?UdlR/4CE+vxAn4pN9jLiWkpwLMfE7LzwWFoAdQWn9adkALKRWbnzTXLml0IN?=
 =?us-ascii?Q?Tpq22UsutJYsteqqi89Ag/S3cken5KWHZMr9Me3wr0GibDW4BJRm5KauSeJJ?=
 =?us-ascii?Q?exViHpvbDZ6zQ5rpISYM5qQ4fWIM8B3JW+DKqRhfjCRhXQgtIxeZjW/56stP?=
 =?us-ascii?Q?NMCjilNlJ4CmwI60pK6vpBGcbOmRZ60YImv10OG+3hwxeDeth/Xr62c7DyMO?=
 =?us-ascii?Q?BmsjVqaaeslmclKTqOsI5EBJOdoSJtQu12rIsPgleJWULK7rcukMMRhDiu08?=
 =?us-ascii?Q?ABKz4o+0DbNkiVvSBgZOvxijspP1NSuJJmxEZ+mWvPhK/IeFDqkahb8iWbSM?=
 =?us-ascii?Q?zYILp8EzSGVLGSz8x8qJCnnqGgSmBwdoe2zpE9yjsiRk/g66UbvmuiRsSPMD?=
 =?us-ascii?Q?mlLDhgONs9197i41mCPy1mXbbmrVZEqfz55TWIzBc4l2ESaRHhW/AkKt8ZjL?=
 =?us-ascii?Q?87YqhBo3megMDn7+RG/k9kh7HIT6rkLkMFWabVlFaX8iWTtBSsQ/p5gvjD3+?=
 =?us-ascii?Q?jJpJjaChj0K4gmQvrW5IpNEp/b9evKKd2UiZ8MIEYzxJ7FHRYoHUD8D4EmTW?=
 =?us-ascii?Q?pfAfowfAFnSKUq+mtTdYJAkN6MPCdzLk3jiOrHrcEQzzucn+ZDlNURz01dlV?=
 =?us-ascii?Q?FraO3nGQnxkEh73ChAhfv6llDD/dyrGFWuXGbLg8qk7m7Quwj+eVCdph/43j?=
 =?us-ascii?Q?YdeJAZMCiDoxANE1zFJid57EPZBUU262S4h9apA+Q+QK4qm1bVOsSkpcPh+3?=
 =?us-ascii?Q?w0hcUgW4dSJz6DaBEFkHMmVq9ksj1TjgHaRh6amvX7IyD/WzwMKLMbNDPJ6y?=
 =?us-ascii?Q?BF0+ft0vVadlKZW6Npefro+1nxY7r/9AhbSbjGDwDcxmSQ7fcJnyd8SbhjqP?=
 =?us-ascii?Q?XnMvxyPlINuRHFlkBe1ubi6fxZvIwv22LHqFSvEWVCR8LA1zHogbT3+aV6nF?=
 =?us-ascii?Q?rteqS32Bw8fZeTyOuUZUw9wD5d5Bt2ZH1PQmRkf89OFawA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5WLKiTZwFkqSXZ0xTG+QwgdDRhDsOIF0Ac50puUArE8rmCXPmOP/qDCtn3Ge?=
 =?us-ascii?Q?fQUHdsOFEcn9952QRGx0ofpwxtmh+jz8nkk8NKqLW6DAjRMB+Kv/9uko8vIT?=
 =?us-ascii?Q?YGJN5RGfv56VJFgic2aZoy+dey10E3ctqrX0FIf5YqCgkcKxdZU8YDafrj3y?=
 =?us-ascii?Q?Rcjbgmy2XMpZJbwHg4WUbZUcNTvcHgliFbYwRz9CG2CZZV8i2IJyY8aQzBXY?=
 =?us-ascii?Q?FkE86M9PG1HlLZDJAZEVRPUzp5yhBjwRJDBH9D+i0/OIcIAWmrZ02EPu1qV7?=
 =?us-ascii?Q?V/waJB9BLTISKAp/lobP+igYI35JbQaut16bm3chBmhIfbPwITimIoQmP6TG?=
 =?us-ascii?Q?cYWsJRaijuco2N+GUCifvODC59/1JGlpdD3I8f56E6SqR1o2TwOy1N+IEExX?=
 =?us-ascii?Q?hDNsmu3uoCI12/H/J5CBiUU/NcqIXawrnvdRRrqSp28K7WS0Os9zNEWjpY6O?=
 =?us-ascii?Q?mG0hnDLh0pd5PdAJ48m6ZtJ16z/TqIS3C84llPzvxFtETWjeIAeXQRB2JEMF?=
 =?us-ascii?Q?M1OP5PrAyZvZYCT5rhsm6cqY3sttioxnGWTIMsuAoAUo24339MQEmY2eU+Zw?=
 =?us-ascii?Q?KHo8tqRz8nok4o9xzID6RqTK3XQN7l+11EScBhpswfKUkJ4JlRNMwfqF2/n5?=
 =?us-ascii?Q?kGKvJixEbZcywKFEndD/5N+e00QQ8u9fYkzS6rro+sHcUKqAEDEUNCZpDGtR?=
 =?us-ascii?Q?fJmsBOohYZueuA668aW/X47CjNg0swTaEYGavfYGUkjOFT8ISrlHNCAvW7WR?=
 =?us-ascii?Q?+8vr8gxZtOlBwsRXg9XiCDHJQ7nfIn4pvXk0SIN6b2EHNz+kNU2TdzNPNF/j?=
 =?us-ascii?Q?TqukR4BokF0qSbxcxKfTXXonQfpA9OI0IOQTdBw/Med9cnvwjnHAm6Wfavuz?=
 =?us-ascii?Q?eajWMkrneFYRStcLNSWe6jGvwzjpnOphDPetsIkIvlHt7M3UTBvIAJqzgVKW?=
 =?us-ascii?Q?84fWagvV1XnSKp91gcnoQckD5/nqQnxw+H/qdioHz82MSETEpGkpwacisd8K?=
 =?us-ascii?Q?XmIK6OB/YyWufw4Iz+31yfQknKWV5gENDLHif73XCmHWJyuLBXqdGFYtCGEv?=
 =?us-ascii?Q?iNlTAprxD4tZDI42h8cMbAXrKWNKtROfYi9LLWsrJ+6xLr2L5076Ai7XwrTg?=
 =?us-ascii?Q?Z9D3QL1N51DCE9WVhVWjnWNF7AU7gYg1Odg51CY1OCELVnsFPYRnjFD7dh3/?=
 =?us-ascii?Q?5NPLoYhQzsRqKUhYCR1zwcikK0zh4KhUaaCkr8QsEKjSPlhn9rXFn/Udlok4?=
 =?us-ascii?Q?rRI4PMkpzPWsMP5Xc3Pus4ptTlNXkLPISo1p7tAu7niJTGdX4w6cFf26d2sG?=
 =?us-ascii?Q?JrbmSYKTESJRvx1LD6rm1ZXDUcRrhvwStMZpstQZkFTOkULid1UsgPE6tazf?=
 =?us-ascii?Q?GzOoc0OV4Nzf9QMWEb8LAp0cVxVavbPdvcdFdg/Av4Rz14gUrlXVLwDeZKAR?=
 =?us-ascii?Q?BQlWH/6kSvIbiW46NR0OPKXRPiTWwmnGQ4h15b1a+ucJlQZkooscb+8ZzArq?=
 =?us-ascii?Q?7loBhjy7xk8kl5luak7vni4x1jhSvlUqcFTSuwQh2a56vOIMHXgsrSJf1fGo?=
 =?us-ascii?Q?1UEz4WjfjjzUdwxqKoV35/3ycy0L36PFfDa6bYT4Jw+qlxq+nQ5p9eIPsNYN?=
 =?us-ascii?Q?WQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42fcc4da-a2f8-46cc-fb5f-08dc7642f0d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 07:28:25.9727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0EvEXvm5svxS/hls70ya1os1bQCUTamAWvCT5LhUhImmOodQvCXfcvIkITSououKGPO9XfACqukZbAMA4IaeDq79p5hkbwG8/Et6pSBiTjNtembunOLWY9smkw/eaKLs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5156
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715930909; x=1747466909;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z1PCBboTgbaAxcGGV/p/egaTdajgk31Vs9QdWfKGvmQ=;
 b=h/nxxfvVAEvTXU0dLPAEKfD8+fuDUWsLJPYw5oibap4YeC7ylzqTtEu+
 oXjAjHJ9A9vUhmQwvow9cKi1MI3JcwSsXyPupYzhMWWSDss0rsoRHrlys
 bdDluSU59pjcbanPrJTBL4+dq8ih40DZbM7pbaSVZ3ELwAqW7+B8Fzp5s
 7+brnjB4VqfZxa4afciS+JYFwf6nSVKLzvuqKQMvYklMo4BZ0nFt8jhV9
 lnIB/tNE7hDgAPf+5MqOPSND5szFdC1BhEWo1tjzRWKVjsUVe7RrG0ss8
 9BfYEkzMUsmiITTasr5PppFmciShcSsEJcOTUGHah24CmoU7+T4mtOU1G
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h/nxxfvV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 01/12] ice: Introduce
 ice_ptp_hw struct
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Wednesday, April 24, 2024 7:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH v10 iwl-next 01/12] ice: Introduce ice_=
ptp_hw struct
>
> Create new ice_ptp_hw struct and use it for all HW and PTP-related fields=
 from struct ice_hw.
> Replace definitions with struct fields, which values are set accordingly =
to a specific device.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V4 -> V5: Adjusted RCT in ice_base_incval
>
>  drivers/net/ethernet/intel/ice/ice_common.c |  24 ++++
>  drivers/net/ethernet/intel/ice/ice_common.h |   1 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  22 ++--
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 134 ++++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   4 +-
>  drivers/net/ethernet/intel/ice/ice_type.h   |  17 ++-
>  6 files changed, 126 insertions(+), 76 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

