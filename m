Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B6697C0EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 22:39:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 445B14127E;
	Wed, 18 Sep 2024 20:39:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UvWwqAaZjTFx; Wed, 18 Sep 2024 20:39:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 535E141272
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726691984;
	bh=N82z/pHGa3jkn2biRritNCtplhaNy9imcRdVze19Wi8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qgwpoY4W5ubvdxWk+rJkDSI1KjFW90DR0ejxw4U4aEksFl5FajYvtY3iSMR4z0+rT
	 1pZxszSjPuQh2t7NJ+xNysF+kpl4NuRVjnLUNBawxWQGYi9GgmGV27kB73Yzi6g/Wu
	 r6wCHnTtughnV6kZkv5Cy89kuRbCSmU0vHNgffTpsRNotIa836rmtOWW8wdK8KPF2E
	 cs6eP7klzG3zgoZprr8u1pJDjQrv6XBFjmVWFrY7Wat1flsWr+zkvbabaTwMJIZnbt
	 7QvOM7/3eF3xDxZpl6ZFofwhKIL+TsXgr+lyGut62HHGPYXwTDqV0wt6LXcG3jiE8R
	 aChkJYZ5SdHyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 535E141272;
	Wed, 18 Sep 2024 20:39:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 898A21BF30C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 20:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7776784952
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 20:39:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jnWapdu2F6DS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2024 20:39:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1558684950
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1558684950
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1558684950
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 20:39:40 +0000 (UTC)
X-CSE-ConnectionGUID: GeiU378uQiqMIzqTWuxWQA==
X-CSE-MsgGUID: jlGXHLqJRQiRhM9vXwMkTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25720672"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25720672"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 13:39:40 -0700
X-CSE-ConnectionGUID: 8tj5Jh51TDuRJm2711j1TA==
X-CSE-MsgGUID: 7q6ihpdHRda/NnwQiIdR8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="100419471"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 13:39:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 13:39:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 13:39:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 13:39:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g65IChvv5kEq0St40H1K96uUl5FJrP36GnWhZfmmaYWHbZUa5fTK/Qa2VRzWh90Gpe2ZslxjUxBokiyED57NOssXgz+YFiZDs2z0wuW7QaxjfNCzQ/+P7x2IYOrZVmW3FmJ2Wev1uQsQyNnbsg1nrbFgs6rl81Rn8bQI/ERbUQ02dw+QKXsFCHZxOSYJfYaqBDiihV9FJegnDKaX3NVhxOfU6IkjjUR8DJecg11XvfQdqP/h8nWszZypAE8TwEnwWr7Lba/emcQxFzG451k0WrgBl+LECwcTevn91AuSSR5MwehjOUnwG5ncjMb9vhoAhkRtTINd61U14dXny8LdMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N82z/pHGa3jkn2biRritNCtplhaNy9imcRdVze19Wi8=;
 b=tF5etxP9LmsEXOkX9hlAirRS/wGNTT0dPT6zic2ncJHWNr3yqV0UJkeR+pe4ADcKFsj65HTlbTT446thtP0XlAnmG0pmmY3odg2GCWI2yB5NEGA7oE88hTu4Payic669eJXbvxhPICQk9FjwXiBBmoKCk/ZvSbHO+r1hgS2ZhPEa61f+3DT8G2Rb73DfF3WTSumxr3MyUSB4oxUYvU7sRRdCF6psFkKLL3FKfV4QS/kR9DE2DA4ChEJXIiFNJaGq/0+M/x1cpC+Hlb6q5mCOevo9MYOpfsT17zfvMjy16JKZ1l8upm9uzi8ap28pDMx/72krxFc1nUMT9uygJ1zJLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB6431.namprd11.prod.outlook.com (2603:10b6:8:b8::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.16; Wed, 18 Sep 2024 20:39:37 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.7962.022; Wed, 18 Sep 2024
 20:39:37 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net] ice: fix VLAN replay after reset
Thread-Index: AQHbCfUdy/nptKi+Jk6r8juofQYo17JeAcXw
Date: Wed, 18 Sep 2024 20:39:37 +0000
Message-ID: <CO1PR11MB50896C07F6CD56B6D549BF40D6622@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240918180256.419235-1-david.m.ertman@intel.com>
In-Reply-To: <20240918180256.419235-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DM4PR11MB6431:EE_
x-ms-office365-filtering-correlation-id: 65aa6335-0c52-4af2-6687-08dcd8220315
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?XEPI00Q6pQE1WW9GarFtNtzSkWuo0lPY4ZXctA+B7R5jjhcxLj5kxjs/cVmD?=
 =?us-ascii?Q?FQpSKVkqrspO/Jw/Eo/Ie/PFICxJvogW+udnfxnwq5vKSgSgVfyIzRr4lRfQ?=
 =?us-ascii?Q?PFDWXb+z334xI9XfOXDkr+L+lPLGacirWoTVj5IrCArEAx9wVEUwwoc7DC67?=
 =?us-ascii?Q?6Hmg3PCiND3TB3LrG32a3aiJMJ7uK1z0YRsoguRpYpt7m4azJu0M52IWXf1M?=
 =?us-ascii?Q?PU+EnBdySCtmXlz3gDqqJynO7gZQjcavCugKLVeBL0wyQkGoUmKbv6QjZqKf?=
 =?us-ascii?Q?T88SuSYUI9Uj+YhWp3tSkfnYeFiZOn238j7emGlNOnQtQWIdyBcJoSl2NIfs?=
 =?us-ascii?Q?t33G2PDkFKMlFknJWOGQJrVqU7AH8wSCkYGA8teciZb1ZKWTEyeJnxwtVNcy?=
 =?us-ascii?Q?nt3sv+Ynvp8NsMhbbm50I62qWY1qLoTZctbQL5fr3TK6+Wnb3rbInX1b/d7W?=
 =?us-ascii?Q?D6mzxQt84hRAcB9nyZKxpEWog6v7P0CfOpjavm8TrsQvgFooEO30818q81PZ?=
 =?us-ascii?Q?rfygtWK6xy31spFJGBuXDP5OefLmzBbD20UeZU1LLxAvDR7J3z/BDNOn2Hns?=
 =?us-ascii?Q?nllIVlyT5LjNBe0r+NDzqT4cuz/L2/HDoGpyOws+/dwJQEbQycazHI6FNQ7Y?=
 =?us-ascii?Q?YcSvOzC95osMvtYg4NUll3VrKlqwLDdRPg4N2YL5wr9Mysv/coxii1yJnQhv?=
 =?us-ascii?Q?keXRvJluJIrnoUuoJhkNlWhj22/LXBt/CPArvkz1r6ypgjFxVIvrLpW6R7xZ?=
 =?us-ascii?Q?F/yNdwCFfK660p+akerbzZINeb/1wiKBGXr5EvUzvCHYkHbdBUV+gauUx/gl?=
 =?us-ascii?Q?ZeC+aObr49nO9e3El7Dx2zRikNTy1WryH6chVripkbl+7epCxridWQlVqFkr?=
 =?us-ascii?Q?YGQbT9Dkw/ZI4Z6WbatgP4GgIWQkGrsuT2aEcUvLJRm9RwmxeF7HvYxYdMVU?=
 =?us-ascii?Q?VXbR3R2usFjx/LYKjLQGJlDOMR3EfylUjoj6nq/i1ahMhJFA0AAmjzytfrUv?=
 =?us-ascii?Q?pjUs/jcWOiNtDnGHirAyPqCqbCXBb9yQeaepcza5pXEU+3dI6DMp7kyYhEX9?=
 =?us-ascii?Q?3YCs0DglcVsIUiKd7Z1+ykrYD9hPFB0caMbdInpWL2BV0DiOD04NCwn+m6qT?=
 =?us-ascii?Q?HUXrh2aGA3iA/fa6LZ4EOA3LaTIRBQxQ2enO6euEN9ubkt5P31bNquaMi8Pt?=
 =?us-ascii?Q?V//T08nFFMvX5rIlkQqu+lDOHlGrLn1IIL+0bXqY7TQDYR4uEJbYqgLN8Thy?=
 =?us-ascii?Q?14aeDi8I19xbIwOG0BJE2gnbSxqYw5Th3/xd6q/WBsTmxBE4vRddnE+M1Qde?=
 =?us-ascii?Q?wdbRCZil73y0LahSjcNTPXtXxRDGQ38mVTO9gyjTgOUkYR/aeeT7JzbljhOQ?=
 =?us-ascii?Q?I+SlfWnSDfDOGww4t8wmgr09z9D4Chz8lSTI1U3S8Y3yH1yE9g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f+fiDMqhjhO8DWQVlFod8dwNDaLKY+9hSmqQdlgWJKWY0tkQbZlDDpbzGm/2?=
 =?us-ascii?Q?anWNiopnymA0TwBkxwVVwrSxROhU4bZhk3UqipV518GgVHKA6UvGEuqLpWwX?=
 =?us-ascii?Q?UVhATD8mewcNqgq8anIPhJgSMtjvP5eTqQPC0T6l6DE9I9Gd5uul8+UZekly?=
 =?us-ascii?Q?TSD0hkuF9iPeYHTrr4czIP7llw9lI/7Emr3C4QyuPhAFik+3eKfXawwYQwuY?=
 =?us-ascii?Q?VMdFppNvRyn8RfYFuJnMYGNucTtHmatOp+HIm59AGq95SCcrpf5xsvby8st8?=
 =?us-ascii?Q?k504xxClH0z1SlQ34idoMgDU1GcWwssso6dDWiPEIUCodzJLxBmAwzNpCCPy?=
 =?us-ascii?Q?2nuh0JkoTkdufRHkiHQLie7LyEhmUMfxyzEmCw7t5InpBdS/JDgYpU+Qx+rS?=
 =?us-ascii?Q?yGETiERRmJMDTdUwIsmmkg9Owg6I+7yjG9KZ+Q0oikujFPwPqGq5DhcKuiAN?=
 =?us-ascii?Q?AbmAKmA5eyOXW8E34nkFWkPk5eZHTkbutaQdao05ePM/qmKaYQXZJRATEUcv?=
 =?us-ascii?Q?Zzle4rmnk/ZBpL3lHaV9JG0gt1G92bY3g/ZQgctHSejjcLgyFfsnTNvVRI4k?=
 =?us-ascii?Q?zUDjU3UNovPYe8lfGbZl6VmENNxf0Fkft1cB02ZSsoiv5IFBGsvP4qrPoJp4?=
 =?us-ascii?Q?FtJSH80Kgel8Ara5QY7iSdgNkw8cS09RJ+H1THmYDLqrM9YfVI5HaB312H1o?=
 =?us-ascii?Q?wVvqa9Ph75owcF7JTuYLu5S/9O3Hq5FgtwLzqjvIme5LCwPFwAbFPZYfcHdd?=
 =?us-ascii?Q?kB50FlRjLb5ItoSrZRd3hua5m7Caodu3eCmg6KK6Ue/AI7OwubMvEfOZHtrt?=
 =?us-ascii?Q?cgmQIy4oTZRn0J9XlqoQ13WGoblW8TUCExEniSuSkcRElxN8zlvdp9ue0ZHp?=
 =?us-ascii?Q?577orTxc2ufGcxny7AsN4m6TaW9S4WPGURMm5AhnGnMclqbPdgInClq0ydBe?=
 =?us-ascii?Q?+97CUkccZ5lufbRFwvY9Ebz+N+5ALWuOEo/Nc4duHbD1cB5GrQPDowGsrVhA?=
 =?us-ascii?Q?oc/niQQ+aUlc/b+uq1/4Q5OB0RH6EnM7VIWU16MUwu/61rYJkel6udu9mBVH?=
 =?us-ascii?Q?Pk+agtDlyinggAr3hHiCvZlbJjkTirXRnOYvW1rz+NnzKiHtzZZHiPbCSjGA?=
 =?us-ascii?Q?s7wm0xeu09YPvOC6a9lFO7U+NCAtHP5O/x66DLxzADcCGWTvQSVOKHBrrKQZ?=
 =?us-ascii?Q?YJHFS6dVsKauf6PoOXKRe/B0MwYJZ3e9voGrl9NxB5XbttaAZOx3WTIjPGHB?=
 =?us-ascii?Q?NW79CpDGNHjA8T1vss5rk7uk8J/GeTIN6tzisqRoA47n8kkKUxO2mYcH9XZx?=
 =?us-ascii?Q?60d8bC27DG1IwDcClSiq71lCnrS7Nx+Pe7L1aYAIBbqq/Mn+LHvQ0xYkAJIh?=
 =?us-ascii?Q?Z5pfBM773sQ/4Cosqq/hNoSi336iDT1wcydEeWUqyHW4qUPJFQA3yiYLJEp0?=
 =?us-ascii?Q?XPn9Xryo4BSYKTEwOx3RLSxMrFkSyN/G+NNW183amT8qGXcZ7Xd5ZP3BBaV+?=
 =?us-ascii?Q?CuyjHRDxKUC+zgf9HBWQ+teZxl0CYYt57pWAgb3d5YK9BBWNeNdMa1kuZ8WR?=
 =?us-ascii?Q?OYw8lnMJqIM48PwBRVgccbGEEifF8p/zp3/NZk57?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65aa6335-0c52-4af2-6687-08dcd8220315
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 20:39:37.1956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ejBJvfe6CM2vsGiN4ZpAJHr1ksCp/t4Y4iB9FA+nfUe/AQivl8sDD3ivS/8MSViwbiLkLZM6vM1D1br2S/HqbPsLrG3ko+2ActsAuYgIOxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6431
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726691981; x=1758227981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J1HCX3GC+H62pHiDPqEJbDjggN0JNYJHRUVLfmvOgZg=;
 b=HzIsP7wjskAzBRoXMELZlHAGIMlwd4PsudgvKbxAYnMWFKrd5eJhk3zS
 F+6pPHZtaf4OOLig+6VBnghT+455LYJh75XtDy415vWO29D8uQh/mkdNb
 4Q14WDHWJN8+6YbjzoHY1p4IycOIQFdCf6mK/pqHskADUOkCsGCiI5gV6
 3P+4097GCNU3y8Ef97Iei1oxdt+PnN5lHqre8gbJKQFgCo1gL3s/UQlph
 Z14vu/rUi33RRNFTMIQsZz7kXYwiRcG1uOA5HxzW56t9SyRyCHDnmBpVU
 ZYvnsKazqZ4E0cP6EhTDCX8kmO2sGVKfyVXMyKtw9LgAHHQpAaOtstkLe
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HzIsP7wj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix VLAN replay after
 reset
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Dave Ertman <david.m.ertman@intel.com>
> Sent: Wednesday, September 18, 2024 11:03 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>
> Subject: [PATCH iwl-net] ice: fix VLAN replay after reset
>=20
> There is a bug currently when there are more than one VLAN defined
> and any reset that affects the PF is initiated, after the reset rebuild
> no traffic will pass on any VLAN but the last one created.
>=20
> This is caused by the iteration though the VLANs during replay each
> clearing the vsi_map bitmap of the VSI that is being replayed.  The
> problem is that during rhe replay, the pointer to the vsi_map bitmap
> is used by each successive vlan to determine if it should be replayed
> on this VSI.
>=20
> The logic was that the replay of the VLAN would replace the bit in the ma=
p
> before the next VLAN would iterate through.  But, since the replay copies
> the old bitmap pointer to filt_replay_rules and creates a new one for the
> recreated VLANS, it does not do this, and leaves the old bitmap broken
> to be used to replay the remaining VLANs.
>=20
> Since the old bitmap will be cleaned up in post replay cleanup, there is
> no need to alter it and break following VLAN replay, so don't clear the
> bit.
>=20
> Fixes: 334cb0626de1 ("ice: Implement VSI replay framework")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
