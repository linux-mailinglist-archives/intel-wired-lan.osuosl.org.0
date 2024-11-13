Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C453D9C6B57
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2024 10:20:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7698882075;
	Wed, 13 Nov 2024 09:20:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xKaaTvloPKB7; Wed, 13 Nov 2024 09:20:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C126980FB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731489630;
	bh=tGpzl2JyeVW2kAuBRASBIznUAAwzw4y943/C2GXzxNU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yf+PhikwQjA++wq2S8h1uAa5JjExK49cFhiylzKL0Ec4GGbfkMo79MyaYdaQFCaZy
	 aSnOSPj9qEzzpDFsfbfw9+aYBW3gES4EQhCz0BRJFw5SdWbbx0eboKgFrDIYB9z6Me
	 aOXg3UoKFBJ1IdmNMMUVC6g+HaVC4PFHwvXBPrywko2b56c2bAbhEGMTgNX7sBd9j8
	 ad7Q3VFw5dcbwBY0TAX1cqKqdLxtWtnpGXaZ2DGFlsVh0/CFLp+mTp0NpG+9OfrmTb
	 FXyvZ59GJxcrbepu2AdNGa9noeFB+3ijUq9rqg2Bzgc6Y5Yw4xtFLBML6KC0mbRXoi
	 WEwgsQHbWJBcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C126980FB7;
	Wed, 13 Nov 2024 09:20:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 41207E2E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 09:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20D1A80F7D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 09:20:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hEe-xFPN693x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2024 09:20:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4975080F75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4975080F75
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4975080F75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 09:20:26 +0000 (UTC)
X-CSE-ConnectionGUID: If98+ZNyT8SSEWmPpADn5A==
X-CSE-MsgGUID: KxD5l8+qQQq3vhYYyBXtaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="34243521"
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="34243521"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 01:20:26 -0800
X-CSE-ConnectionGUID: ovBjm2ZERWWyFYnNCYaDDQ==
X-CSE-MsgGUID: ArfBuxgETNGfkoiXmyl17Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="87970867"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 01:20:26 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 01:20:25 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 01:20:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 01:20:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qj0tepamzFc2DB1KEjRhixkGf87MAQQonkFHGPZ7M6xd2Td7kuJFbEtqrfX1HKruxU/cN3hc3zPa9unqOC62T/Rj7QHNUot5xbJpgf6ibTmO/K0TGr9JGpfV37SYyCm7VBHR05CIpZ347gg0UNSDgF0gw+8S+AypRDVPUVt3pDwcPY8+UfDrNEfTmLepLCTAcrkduvHK8aQWhvB4Xlus4s16guaPlpZwb8XMaS4pMkadGat1G/rz5/QA/MHn+EOExxGNUGr53Nj1Zal/TrYJ7Iv/0uQvY8bjhaVxds9ZA51GjraDoTRmSQVdTT3Ll/XvDsb277bVwQqvO5n2l81ysw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGpzl2JyeVW2kAuBRASBIznUAAwzw4y943/C2GXzxNU=;
 b=o2GVqlKmgBK780ijZOC7SxjJGgNoj8AmvWjPuyl2/lhQff5joJEw6JdfJI4Nz+rRyEYOg9c1zVKMGmAb31HpPXLQsLq2gM9/17JUN0SM6WK4xSETeDzX1s6SWU84dD5YqXBLkRlaEhvA0VXCQtjsuYyi5IRJv5tivxtJLVIe/4a9Mnzsq1LZ0nZU40JTfgIKfGW7XsiJfbFKbH+3QWOYp76NCvX1Rlet0SN7i7YghCt3oV9I8J/cWbqFT1KehipfOGe1ic1UeGqBGHsQXd2xxnoNvlQwENEkB3QX7rc/huiqxmAL2M+qHq+4hJOuiU2jGG8b4DRlYVnUK8X6xvtaew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by MW3PR11MB4587.namprd11.prod.outlook.com (2603:10b6:303:58::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Wed, 13 Nov
 2024 09:20:22 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8137.027; Wed, 13 Nov 2024
 09:20:22 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Drewek, Wojciech"
 <wojciech.drewek@intel.com>, "Szycik, Marcin" <marcin.szycik@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter, Konrad"
 <konrad.knitter@intel.com>, "Chmielewski, Pawel"
 <pawel.chmielewski@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "David.Laight@ACULAB.COM" <David.Laight@ACULAB.COM>, NEX SW NCIS NAT HPM DEV
 <nex.sw.ncis.nat.hpm.dev@intel.com>, "pio.raczynski@gmail.com"
 <pio.raczynski@gmail.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v7 8/9] ice: simplify VF MSI-X
 managing
Thread-Index: AQHbLrMgHpT7LuCruUa5at+Y0UnLw7K0/QHA
Date: Wed, 13 Nov 2024 09:20:22 +0000
Message-ID: <SJ0PR11MB5865B58D55FAB6603E533DBA8F5A2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
 <20241104121337.129287-9-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241104121337.129287-9-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|MW3PR11MB4587:EE_
x-ms-office365-filtering-correlation-id: c32b7278-f40b-4f4e-2c75-08dd03c466a7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Sfq5SgAfTv3NxgFgj0A3nxjQu9JcMZadwsIF2uxM0wr129wQKCb7NsMPDUhp?=
 =?us-ascii?Q?NlK+bGg+zkeqXhXdb9r+l3c9qu8bRrK1mKr9Qii8YGuGHcpyPJ0qNt/z8N6s?=
 =?us-ascii?Q?BFoV7NQPNvAgnzAHWQzEAfOfKrVlRo59V+mAfmIsyjfbB3ZGauhWG5SVqebJ?=
 =?us-ascii?Q?8KEqvn0tYxLkXhhzYHuosJjHuaMhHmzUrRyK6Gc2WlmPU9HpKYCyNKpYQbNp?=
 =?us-ascii?Q?duFSbJGSWveO9iZWoFfNDyEzqB4dwSm0wjoYpfVrx+W++nLe47TrNTA/jBXH?=
 =?us-ascii?Q?QhLdx4fUHI3DajV3nkjz4nMkOjOVMWTGlUV7ptnQexppTNBqMVXRK3eLj+YU?=
 =?us-ascii?Q?/jRRB4kriSUhHnpBCBPr7twAMCb/atl/7XJMeOxIZpqBnA3CMw+X4WwB0BUM?=
 =?us-ascii?Q?jwEbzjRKvexSC7aDlNoKLd8edpS2yjB0U32icEq6RNiY7zzJ3eNUMMhTlmUa?=
 =?us-ascii?Q?mQmDwOnFYHty+a49rEJNPhywCZlypuQANW6B5hug7D5m+fssomvXHivoQYGP?=
 =?us-ascii?Q?WRZMvlC8NNd8IHNCiCjoEx8CMNhbRyLOdmKSc8pqTAQVdIk4cZkWUaH1alPg?=
 =?us-ascii?Q?Hm5x8y+SJhZBHp84M8qqT7BucligG6padDt0RnlaVCtd4vc8PdVK+45twKfg?=
 =?us-ascii?Q?PS7EXDrwHW2q/gsxd8Zysw+zpRExGNbwU9SJqf+vcFNyoiNbxJ/Z8jzmPWB6?=
 =?us-ascii?Q?vq9I/CTCxvKCVNok7sp8nYVu7OqdiXlAVz4dwPvvk+0FjHv/lVQJ+699Y8z7?=
 =?us-ascii?Q?+STi17QDxL6YltoSdL1sO8J1QV1p/0dSO1sAS0/UVGpW+jP1GdGYh8QWA+gI?=
 =?us-ascii?Q?2TMUQInGFmOP7WQcYk9IbH8FcxazOpm3LFFWHfJhf0gMFp+DUQhcd7XQDfVe?=
 =?us-ascii?Q?ilaWQQM9Rqw95sx0tfPLM36EJsfeQXMPfIJ3nRRTpBHpUQh3//rRkwWTqCYi?=
 =?us-ascii?Q?/+e3Majp5f9KfcZfMrAl2ZiGGOtzmBO48pQmYmCcAqPa0q1rQEJdJDWDiBrN?=
 =?us-ascii?Q?yyum5Z5osEMqtjaZ41AmhziR7rFTIO1kq4KOiHq62FhBQ/MzV/oqDJmorBCf?=
 =?us-ascii?Q?c+kfTmTM2VcMna3ffqaWAbVTSsN5yMWPpMt1lVSyibZD5wzBqrovOkO10UrT?=
 =?us-ascii?Q?G7qKd754auRCBJcVxAXhMIkCYfuhzBX1RqmbcZqslEYQAAGMIwi6xWfA8M+u?=
 =?us-ascii?Q?iTviOoNXt/MewzVbxZHfccIjudubfRJ2l77Y5Ua0VvtJ+cN+bu6+LvFyAR7/?=
 =?us-ascii?Q?/lq0l/M+75kz8INX0q5tg7L639+lBs3j/xec/z1cDMJWZL9isySiOGLHYE5K?=
 =?us-ascii?Q?JWGSCp5BXP+Fqz9Hoo5zchmy5WsWDuMO4X5K6H1ovjDi+pWRU86dIiIxq+XW?=
 =?us-ascii?Q?KNIYzO8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Bwq+SCVYJy7QF4LAPLzXK2OTRjnwGLbkTKCRjwWDAslfQ338sRix0Kyz+aWg?=
 =?us-ascii?Q?dDjIQjIKj+pfXW9tH3IId99DBxIl0gNENWxEiXpgvOM01Kdi0mDca00BP7vW?=
 =?us-ascii?Q?Rv+mwFYZg/i7EiRCCXZK+v6TlwQpxTY7TWa8JjZJq/tZ0JRQeqzv4f775fPd?=
 =?us-ascii?Q?vlIjwiCRrW/8DXJJZGnLm9qSll/kAi3AOhHw8/WJLETT9aJJ8g1sahmo+ZG5?=
 =?us-ascii?Q?o13hQqjl90CqxLSGvItWTX74jfQQ653SWHBLgbisRZb8WqbJ7mk33fNeLd7o?=
 =?us-ascii?Q?QeUlTk7kRZt5tR2IxRnWlIPN0pOmuaWqXfFBcu/drq88Yo54X1vgri0m12Oy?=
 =?us-ascii?Q?/xOVOiCTJR1VoI84Ql1ixsib6Yinz+NZKbSjNWKaEDtnn4P3LWdDFTxKWL7X?=
 =?us-ascii?Q?BJE/T5EUUJBEj7+9rjXc5rKs75pJuPqRvKivixTTMxrWBxrrmYi02rrmhzUb?=
 =?us-ascii?Q?dw4xsSyJ0vusMWWXlMbvq9OlnaS1iJizwgzBLyqNMo7NzDsljRlCOL3Ebs/R?=
 =?us-ascii?Q?PZik7MU5RUh6k9Lx+0u7LrwEr3K0v2zk+ilN+1xDqw4S9hPXRqiPpaSeWjH9?=
 =?us-ascii?Q?vz5VEh2rUJMODmAbkogVODqMb9fRht5bwAXpXDtUSUyoh1qnAt99WwIRbQvu?=
 =?us-ascii?Q?0yxjXIbtyjQ84+V4K3P4ffPyo3pi2ZycRMYhcvSONoJpXUztYFpyvycwOcG6?=
 =?us-ascii?Q?aMuIo0ZmsBJuLCyaETd6F+k2HAYOh0C6q7Y0aH8qgIOIsmHQDrcclw4ivqxg?=
 =?us-ascii?Q?KWk7M66O2cS3j3grYaKLWnKwC+/m3Btrf9uzaoExC5os6ivVrjkP9ezesThf?=
 =?us-ascii?Q?7r2nulkfllf8vn487zrXkGL6iAgQj72Te3okwSt+nUoCmehHFdN3r/IDfBXC?=
 =?us-ascii?Q?L7FlJjRsXctIbjNFJE+J7fsKFWIUlb77DkqO2Hnn8S4SnfXrKetOOzQVs7Ei?=
 =?us-ascii?Q?AyOqc6YUPYKC2NBeXV6PeI+bny1ou114DHFBrM7YuAiUW2Y/Yx894MKV5g+e?=
 =?us-ascii?Q?a3v+hvractbg/wjTAszCpu+1i+2lElQZlR0ATazv/Q8EVKFNZbUlZ4gEAOZB?=
 =?us-ascii?Q?5Mm64PzwO99ybAtAyvBg5r9CYMBIrl4W+9tWmTnKAMpYVXyzH2wgVrSFejAT?=
 =?us-ascii?Q?0aYKACsw4Lsn6tuipP4tzWx5BVncIW5nJGIZKYyPg0QZabNLov/5H5XOlgsB?=
 =?us-ascii?Q?/wCaETmru25cMrz71pnvMViIVo2zomxPR5ky5IF8m7wOQpZSgHkWYA2VOb0f?=
 =?us-ascii?Q?HYmx71+apqvbzv0srBcq+5Q0S++PweUjsZnoGrBpJxEgmUo4TyXltFurCU9e?=
 =?us-ascii?Q?bumtDBthkYW0wvwOPktZoksK7AMNV/WojR8JG2XMw7j7tDsCOdmMbSIlD+tp?=
 =?us-ascii?Q?w+3pYQsE1qxMgWBaXaEqAoMvCBlxSlVLb2ougmutiOnP7K0svi1VmX4Ha1R+?=
 =?us-ascii?Q?HszwNtI7u0S5WYwswNfX4mj088ym6lZlQWLSe7qGgOFD0Zdx6pRDVtTy8zUj?=
 =?us-ascii?Q?wQuhitXc9Bfj0W8j8zwumleVJoQIjwfu35x6Xmtf7kmW55kDJRasuAdqRLoE?=
 =?us-ascii?Q?URPJfShpJHF/3+WaT4DLPeALYDzNotfIvgEXLhAx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c32b7278-f40b-4f4e-2c75-08dd03c466a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2024 09:20:22.7095 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iF5j0I7lC1tzioSg0V8iZ9sl9THgoLpohByWl72qziI1/EWoTNlHZvLRklCys7I3rIAg0vsV8CdfEzkcqHGnda8m4vLIdhH93VhJU7DzWOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4587
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731489627; x=1763025627;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nHD9uRqUKLldMS/g13ndLj9B9YHhNNQeQvJgLI1cAS0=;
 b=mMgj3fjX0acLCS6B6pXzvXmJILGh79My/zZx3VFfuDOnPr7gcipT3j+O
 n1Wc/fPQRSi7Oo2Xpql39PnqDFs5eoaPluJ+o3mwAJimEXREnaS1LHXgZ
 vafNiRMECN2+S8VN3WWOoEX4vLj6X+GhN1IlLh2iSqSxAHJ65fyyjVH8P
 2JEJErNS8AfvEKW+AJ/IQxkUpaLmdL0tj4ChGROZpGM3L8tcTu00btPWr
 NrnKWWdSzmaPyNBe9seBlSM6VuiJtVJ9azmluOjrJFyQ6vHj11iBJWfWg
 uG3mn9kx3jZrv0dtFRsq7XXfsMTGw7p7T69P1iIXWNb48fyQ8zo5CDJTC
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mMgj3fjX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v7 8/9] ice: simplify VF MSI-X
 managing
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Monday, November 4, 2024 1:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; Drewek, Wojciech <wojciech.drewek@intel.com>;
> Szycik, Marcin <marcin.szycik@intel.com>; netdev@vger.kernel.org; Knitter=
,
> Konrad <konrad.knitter@intel.com>; Chmielewski, Pawel
> <pawel.chmielewski@intel.com>; horms@kernel.org;
> David.Laight@ACULAB.COM; NEX SW NCIS NAT HPM DEV
> <nex.sw.ncis.nat.hpm.dev@intel.com>; pio.raczynski@gmail.com; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; jiri@resnulli.us; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v7 8/9] ice: simplify VF MSI-X manag=
ing
>=20
> After implementing pf->msix.max field, base vector for other use cases (l=
ike VFs)
> can be fixed. This simplify code when changing MSI-X amount on particular=
 VF,
> because there is no need to move a base vector.
>=20
> A fixed base vector allows to reserve vectors from the beginning instead =
of from
> the end, which is also simpler in code.
>=20
> Store total and rest value in the same struct as max and min for PF.
> Move tracking vectors from ice_sriov.c to ice_irq.c as it can be also use=
 for other
> none PF use cases (SIOV).
>=20
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h       |  10 +-
>  drivers/net/ethernet/intel/ice/ice_irq.c   |  75 +++++++---
>  drivers/net/ethernet/intel/ice/ice_irq.h   |  13 +-
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 154 ++-------------------
>  4 files changed, 79 insertions(+), 173 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 14a90c916d43..7200d6042590 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -544,6 +544,8 @@ struct ice_pf_msix {


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


