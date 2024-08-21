Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8390D959FA0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 16:21:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 173D5403C2;
	Wed, 21 Aug 2024 14:21:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vWumYnpLQL_O; Wed, 21 Aug 2024 14:21:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B76DE4031E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724250062;
	bh=TXnNdjSWh4ibWdTdRG4/eSFCc+OUmf37COlNs16Qa9s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JSRENO/iTmIUdqYlSKG/EV2bjWZBbnZ9uMCRlHSOaXg2YsUn3VEgk73Ex5kPeO42p
	 /JCvlHISonHQ+0YpBfOCR3BtAVKeT8q+2KFBrgCSLTkXEOEyG5bu8HNydnpXVpozon
	 H8gFBsaD/yrEMc0jfFALsPu0lylx9R+icCiNk862SR+ZNBzlA5Cx1DMh5FYCeBXzS1
	 BBUa4JITLrzT1aoIU41f1aAje/24F583mrUrB735MO5jHTk7IaPPMDB4M8mQt3f2qv
	 VLgCZ7SvvchRDvEetVJ623pBaLnJlW3TGjfMSo/Vu1WV6HgDq8ppuAHzXBLDA+DvAK
	 YAzrpS2V2/Mcg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B76DE4031E;
	Wed, 21 Aug 2024 14:21:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A9FC1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:21:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA978403FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:21:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bkAZxw-ry6lp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 14:20:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9758D403D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9758D403D8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9758D403D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:20:59 +0000 (UTC)
X-CSE-ConnectionGUID: OSARo1HOSUOZ6wwDHgqO9Q==
X-CSE-MsgGUID: Ysezfjc9Tr6AB+DDYzxWvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22761997"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="22761997"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:20:57 -0700
X-CSE-ConnectionGUID: RlfmgtdnT1Kgrx46sxl6Mw==
X-CSE-MsgGUID: 7BQdUlQITTO9IGVNZu0YFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61087003"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 07:20:56 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 07:20:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 07:20:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 07:20:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 07:20:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CtdnFzYgibiwaWSBSaRyTNbcGk/RtRacbSF/igI5r746uwyyUxsYt8LPu3zlAbXY6fZhELzsBXwqmD8JufAH9C/c8PxRnDLG9NLDy3tT/U/bu8z3+41DL4vPmkLyO34gQ82xpHQfquIvOX7kMWO3J0dYH+ULjKE38I+jmHLRfWW33FwCR8LNU3jYkw/Wp8VlVeJ2KPGCGNxKpMFWC58Fd59P2UNxPpTg7f51LJ5JabuUYAX+MY+Ig+kpj1K1ibKs/On7QnI6Tk1FAUjx9A69rau8oHNFpX3w7KxYYXXgJBA0wbv3Ixb3km1bFN0oCw1KFp8VP7E77ii71k6bf/a+dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TXnNdjSWh4ibWdTdRG4/eSFCc+OUmf37COlNs16Qa9s=;
 b=Gl6+ifZ44cYhxOom7JAXDO+YN9POuf+swOpmnzN0tOEH7aZqum8T0h1Hs7y3s7QD0o8PHBpUreSwAr6hNcpcR8vZw9e9zmOCjdE3Ou8iw/epqw5BDtqoa/HGwowGzvWHb85y4BhM+x4v1VSmbH+qHsE7mTlhmYFCOw7QFuV3RRwYgDZcAB9aWwrF42AFJFPc5poO3oVqkfTajyWqq5fqccM0hCRQekxAcncXWKTsypkS71LfJqviGJ1OmY2MZuDXyMz0NBLJGnUIqPfkOap16AASMmtXG8/bMUvHhn79Jpard4RvFGdNKb2GpLzWh2Bxn+pZIdoq1V5lAg35vnY0lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MW4PR11MB8265.namprd11.prod.outlook.com (2603:10b6:303:1e1::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.20; Wed, 21 Aug
 2024 14:20:52 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 14:20:52 +0000
Message-ID: <3278c207-b450-4ef0-b240-0fd4cfc0b1df@intel.com>
Date: Wed, 21 Aug 2024 16:20:46 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-7-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-7-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0189.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::6) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MW4PR11MB8265:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b43aff0-01f8-46b5-0eed-08dcc1ec7668
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WExGM055Y1pGUVNHMlpINDVnU0JGQXpEYzRqdUQ5am1tMFp3R0hObFI2Yndz?=
 =?utf-8?B?R2I4VWdVZm0ya2E1N2pGcWpldnlmeDkyQTNWc2VyOUtXTTIxOUozWnlSeEVo?=
 =?utf-8?B?ek45Y0o4Z01CazNsQmxtNUkyUGVoUWVZelZMVVdBYXkyeFZWS1pTaVJSMHZr?=
 =?utf-8?B?bGRKYUZrSzdBb21LWHlsd2FrMkFIWDI1MWY3ZWE0K09qaWlQdTAxQytQME16?=
 =?utf-8?B?MkpKcmxpbEtTRkp2V0tKOFQrVCtWUGlqU0lVRXJheEYvbGJmbnFTY1o0TXNv?=
 =?utf-8?B?MncxVWtjRmhLbzFNaFpNV0w4YkhxWG1HM0F5ZEtkcm92aTdNcy9QUDRjalkr?=
 =?utf-8?B?K3Y4TzdyMlJ2U1dwM1czd2pDT0pXQ2tjQUhLR1JaU3J3UTgzTi9pdWtlaE8z?=
 =?utf-8?B?ekZnNWVNSWJuWmNnR2k5UkR4UDcrd2dNck5hYXNPQkNNbU9vbjUzVnJ1WUJ5?=
 =?utf-8?B?R0twMDQ2OEY4YjgzV3BrT2FCaTc5TkxwWnZkMGNSTjVWNU10d3hRU1VwaUtO?=
 =?utf-8?B?czFwaXpvamFqYm1HM3BieHdwV1FEajRidHczdlpsZHBiM0ZZdG1tSWl4YlBF?=
 =?utf-8?B?aTlhcU9xTEtaSFMrZmxIZlpoR2ZxMElEeGR0Q2toSVIvdWFPTEVWcmZrUkhl?=
 =?utf-8?B?S2hWZnFBMW5KUWVhZm5iSnVuZ0V3TGxMZ0E1bHhuNmhsWGhzY2gxNm12Q3JZ?=
 =?utf-8?B?Wk9JbXlGS2xmQk9rTEpKUkJxSjNRUktONzR2WjRYU1I1Q1VvMVpGUVdkZDE1?=
 =?utf-8?B?UHFCSTI3Vm1oUHJGM2t1NXVHemdOYTZUTjZ0aitQWEN0NVY5cVgxenFCUkV6?=
 =?utf-8?B?dFQ3T0Q5cE1SVmdlc0hZVmZNOEozSUYydGlBczF6dzlQT1M0cTNESU1DYzQz?=
 =?utf-8?B?d2xYQ0lvVFZ4UCt6NG5rR2Jac1dOQ3ZCZUR3MlFLZVFJUnVFUXo3YWZkNDlt?=
 =?utf-8?B?c1B4bVM0TW1abEhDVHc3Q3pNNmlHbkFUYmhibDNSK3hMamVQMzZ3dnREdUFo?=
 =?utf-8?B?c1hQbzQwcG1HV2lxMG81Qlh4Uld6WDUxdXF0VExvcityUUlqV3I1b2EybWp3?=
 =?utf-8?B?VFk3alNzM0ZMaUdKeVFxbzRNdEFlNHRVd1hUQUcxRTNxVXlTaGJ2N283WWRE?=
 =?utf-8?B?RDBMZkZyZTNQU1MzUzRFMXpzcHZtU1JOUGlkb0lXZkxHbFZKMkdkb1pVTTRI?=
 =?utf-8?B?dFJ4M0JlMmhvdDNuT3Z4MWZ4WEFsQVFVWHJhZXRTMVBSZHJJZHBZZVBXVGx6?=
 =?utf-8?B?TUNzdko5a0pUNUZrSzlYUWhtYkhDTnZJc2RaR0YvNVJDZDNFa1g2QWRON0Iv?=
 =?utf-8?B?aWErR1BESVlYazJqNnRUZURFa2xTeHMwa2c3M0kzbUJ3QStTVUx6RDBhWXZn?=
 =?utf-8?B?dXR4aGNaZytsUFQrR1lMbnp4ejRDVDl2aENXcXJKMjI1MkpmT1MzRDNwTFFz?=
 =?utf-8?B?S0twOVVCMy8vemR5blk1ZlpyUWMyUDNsZ3BQajVSTXJKRlpYQno0ek9KQmtp?=
 =?utf-8?B?bFpmR1BqbmNBS1dvcGwwdWkzWHpDWGIrTHd4N051clIzeXhCdkJ1WVpZUDNz?=
 =?utf-8?B?MC9RM3VYc0gxZ3FGNDRFeTVvdmoxbk5yaFQ4MnNncWRzeC9MdkNrKy9IVlpk?=
 =?utf-8?B?dWxjTDhhQk0zdVZPU0hRN0JoUlNJWmNSVXdhVDFZaHMzcmdGS3Jjdjk3T2hj?=
 =?utf-8?B?QzR4THhuT0hhTGszWG1OVWFaOXBiQjEzUjFQWGdScFNpRU1EM3pPQXdSS0U5?=
 =?utf-8?B?cVZrZUZ0endWZlllMDRycDBsem1tVkNCNGZnOUNQaEJIdkJRR2k4T1FTNEZr?=
 =?utf-8?B?Vm1uWkxkeDJ3TVJid0ppQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFR4ZTBlKzRtM2Q4d2drVFRMbXFDdW9RbEovL3pBRUZ2TzNmV0JMaWVKSThz?=
 =?utf-8?B?K3h3dUhZSkJFSlBZN0psNnBUdzFwaG9QczN4aXZMc3I5T09CdVVwbVVRS0E0?=
 =?utf-8?B?NmR5aGxIaTcza2xjYndZbzJDb0YxdEtkZmZvMnFjZWxwaDhDOEMrd20vcTV6?=
 =?utf-8?B?QlJ4aDM0OHAvb1UrYnh6bk9kbzA1V2V3WjZOVFdMTmhSU0Vyb05rdk9QQWtm?=
 =?utf-8?B?alRLcG5qblNhTTBUUU5UTUVDK240L0lja0ZqaUp6Z0QzcFFaMkVOSDRUNnJ6?=
 =?utf-8?B?bk5ma3BoS1V3SnpZTFIvY2lMYUhaUFh3bkNndEEwM0J2T0tmVzRpbEwzM0c2?=
 =?utf-8?B?a2U3MHdJZnU5enlKUnJIaTNOUVVvemZaZTJwNG1KNUNRdDRyYVJjblpENmUz?=
 =?utf-8?B?NWxTVVBMZ2ZWQ2Q5d1p3Z2JjMC9CMjlxYUVwdkM4NHgwLzBCZXRxS0k1dnhm?=
 =?utf-8?B?V1FrUUZIOVErREw5MGJuUEY2Wmg5V3RIcXI3WjhOTExMK1N5WDg0SGxwTWpw?=
 =?utf-8?B?SFhrRWh1My9MOGtLTS9RQi9yRzBjM1oyWnUwVVliOVFRWTBNMUVvdytLclF1?=
 =?utf-8?B?cGNPSXNYUDkvVEpXcjJDeG9nYkowYnZZTzM3cFJsb2ZwL3BybnNVblNrZlFI?=
 =?utf-8?B?OHRlTXZscjBPVnJOYjlxaGd5S2MyRWlyaVFMS0cxRjZVVkZvN3I4S3BzREtD?=
 =?utf-8?B?RFFOYnVGeVRTd1kxSWM0dCtZbUVJeW04eUdPa3l6RVRndEF6Wm5TYURJdnor?=
 =?utf-8?B?N2pTMzNDb01ZQW9yd25Nd0wrMU1oL1RJcWlNblVmVHNiVDBWMGVZWXArdm92?=
 =?utf-8?B?TlVHODdkcndXQzFPcHNTSWl2SHNSbHdyRGJTRExGdTdmRnN0U3paMzNQRE9F?=
 =?utf-8?B?Uk1Mc1JocVdxZnE4ZUtINFJkWGE5ekV3U1JxNlFuQVlRblM0RFF6T1drNEFz?=
 =?utf-8?B?UTlpSlRqUlBJQ0hudWhIbjJpZmNqUjkrWWtSMVhqcmRPaG4vRi9pbHJoNzRK?=
 =?utf-8?B?dzhRTDg2WHB6SWM1NXFlTGQwb3lDTzZ4Y1ZMcDhwdWlUalBEa0oyVTRTVVVO?=
 =?utf-8?B?WDUveFQyQmJCTkVvS3pzQ29rQUs4KzFNNktTcjZONzJyMXVydlgrNExUMWNS?=
 =?utf-8?B?dkJDZXNBMDhsdE0vaFhxUkxSUUUvNFZKZkdMQWlZbC9Fb1J1bExYb2Nyc1hN?=
 =?utf-8?B?aDdQZTdKaHRYWi84ZzNwemFlYUdVRzIraDV2Y1J1bjVrWEVIbGtXeDk1M3dE?=
 =?utf-8?B?ZWw2WHZlSzV5bEQ4ekc2RkU2NkxSejhta1VTRUNRNi9qTXFNVjVSWStxa04y?=
 =?utf-8?B?NWZ3ZVRmaXpxaDRET2JWT1RzRUMzRFpsSzlDSXVXRktRVjBEMDdlOWxad3FW?=
 =?utf-8?B?SDQ3MEVNaHkwVXRqVUwrbGhmNGg5RkFUQkVLRVpiS1M1L0gvUjNVZnd2ZEVR?=
 =?utf-8?B?NEMyeGszUTV3NXFqbTVhMzlTakdSSE92SHRTT2ZvVlJldmVqRGNXK2kxNmNL?=
 =?utf-8?B?RlBoUlZyOWpIZjNialRtelcxREdYU0d6cWNvNk05dWkwQTdCNHMwZndBdFFk?=
 =?utf-8?B?NTNjcFI0TVpHajZtelc2eGFQYURISzVadWNoVmdUL1FzZjQ2V2JEVGs3Y0cy?=
 =?utf-8?B?QkRHZmM1cDh0ZEdYcldtM0hnZXE0c0lyd21lYlowa09OTXFtaXg0LzJxdmRW?=
 =?utf-8?B?eHBhRTNNU3F3am1lRXhUUWpHSTdwTFlVOEs4aTF5bmdIcUwxYmxMSkw2OGNF?=
 =?utf-8?B?dVNsQmoreDRzaGx5enZzU1ViTHl0SHhJUHpFdGNXejVlN0pQYXBuV2JVWkR5?=
 =?utf-8?B?MXNCdThCK0QzQ250cGordGxKcGxGeWFQVXJKMkdGYytFZ2pURDZvVXNiKzRL?=
 =?utf-8?B?ZUFBNUYxZHJpV3N2NUFrclAvekRadlFVaEVrRVo0WVU0THkzbGNrWURCV3NZ?=
 =?utf-8?B?djBLbGpMNVplbHF1K2tJemNCS0c0NjMyUTJmOUJVdkhBZHFRamFTdlhKQzF4?=
 =?utf-8?B?d05NdzZ0dENML2hiZ2p1K2pHaHZVeEF0T3FZalc4RVhpQXJMbzZWcHhmN0RV?=
 =?utf-8?B?N2NveE50ZWxHUlR3ekl2Z1Z2UmF5dDN2V0p5ZWtvblFqUFFlVVBpdzVhamp2?=
 =?utf-8?B?Q1YrSENHOVJ2bmg1ODFWQ01hUit2WTJyWEREeDB0SXYyaVlVOGszTlZtKzFS?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b43aff0-01f8-46b5-0eed-08dcc1ec7668
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 14:20:52.5068 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R6b2gTZayrAreeui+DdTQr/laPEbxLyhZ/3n0Erltv50YMEp7V/VyIY1xYlH/SxjaIGelwrSC3JAEqz76cp7uWdGvpmABV5nIworOFGv3jA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8265
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724250060; x=1755786060;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=49J689qtnWWVFLm8/tCyaIDAo1mt271Ng3MYFBrhXcs=;
 b=jsM+EaQxQf32XxLM5P8D3Lu670MHnYsANY/cDLnjNubnjfFv8rXRfe0a
 //3pg0fYtQa6hg18ovHxcNeY2UW/EG3zcjKq/tEugacHZjWjaBGLM97Zj
 2DrSS1LelBNDiA20JDR7ml9nUYc7QOk2rqcsbclTwguuCmILetjPNKh6R
 OGg9mBTJ2qBSQokPhPYo2EzjJLq3V1xnhFltKD+mGHljY5E0vewEUs8r0
 gHjtzLbpFfuGZ4ffbMeoe4tU561yjdO8hh/Y/9azbsTI4h0WNzGuJiQxU
 YXYzBygXVGTEIcpagFhAXtnYBtKHSPX6LRvedB/Sker1AIjD3hTDGK1h+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jsM+EaQx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 06/14] iavf: add initial
 framework for registering PTP clock
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:31 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add the iavf_ptp.c file and fill it in with a skeleton framework to
> allow registering the PTP clock device.
> Add implementation of helper functions to check if a PTP capability
> is supported and handle change in PTP capabilities.
> Enabling virtual clock would be possible, though it would probably
> perform poorly due to the lack of direct time access.

[...]

> +/**
> + * iavf_ptp_register_clock - Register a new PTP for userspace
> + * @adapter: private adapter structure
> + *
> + * Allocate and register a new PTP clock device if necessary.
> + *
> + * Return: 0 if success, error otherwise

Period ('.') at the end is desired at the end of kdoc.

> + */
> +static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
> +{
> +	struct ptp_clock_info *ptp_info = &adapter->ptp.info;
> +	struct device *dev = &adapter->pdev->dev;
> +
> +	memset(ptp_info, 0, sizeof(*ptp_info));

Is this needed? adapter is allocated using kzalloc() I think?

> +
> +	snprintf(ptp_info->name, sizeof(ptp_info->name), "%s-%s-clk",
> +		 dev_driver_string(dev), dev_name(dev));

dev_driver_string() can be just KBUILD_MODNAME when it's called inside
the actual module. It's mostly used when you need to get a module name
from a different module or core kernel code.

> +	ptp_info->owner = THIS_MODULE;
> +
> +	adapter->ptp.clock = ptp_clock_register(ptp_info, dev);
> +	if (IS_ERR(adapter->ptp.clock)) {
> +		adapter->ptp.clock = NULL;
> +
> +		return PTR_ERR(adapter->ptp.clock);

Braino here.
You first set ptp.clock to %NULL and then return PTR_ERR(ptp.clock).
IOW, this error path will always return 0.

I usually use temporary variables to avoid this.

	clock = ptp_clock_register(ptp_info, dev);
	if (IS_ERR(clock))
		return PTR_ERR(clock);

	adapter->ptp.clock = clock;


> +	}
> +
> +	dev_dbg(&adapter->pdev->dev, "PTP clock %s registered\n",
> +		adapter->ptp.info.name);
> +
> +	return 0;
> +}
> +
> +/**
> + * iavf_ptp_init - Initialize PTP support if capability was negotiated
> + * @adapter: private adapter structure
> + *
> + * Initialize PTP functionality, based on the capabilities that the PF has
> + * enabled for this VF.
> + */
> +void iavf_ptp_init(struct iavf_adapter *adapter)
> +{
> +	int err;
> +
> +	if (!iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_READ_PHC)) {
> +		pci_warn(adapter->pdev,
> +			 "Device does not have PTP clock support\n");

I think it's pci_notice() or even pci_dbg(). A device can miss PTP
clock, but it's not a failure. _warn() is when something went wrong, but
not as wrong as _err() :D

> +		return;
> +	}
> +
> +	err = iavf_ptp_register_clock(adapter);
> +	if (err) {
> +		pci_err(adapter->pdev,
> +			"Failed to register PTP clock device (%p)\n",
> +			ERR_PTR(err));
> +		return;
> +	}

Why does this function return void if there's an error path? To make
sure the driver works even if PTP fails to register? But I think it's
better to bail out if something failed than to work without certain
functionality?

> +
> +	adapter->ptp.initialized = true;
> +}
> +
> +/**
> + * iavf_ptp_release - Disable PTP support
> + * @adapter: private adapter structure
> + *
> + * Release all PTP resources that were previously initialized.
> + */
> +void iavf_ptp_release(struct iavf_adapter *adapter)
> +{
> +	adapter->ptp.initialized = false;
> +
> +	if (!IS_ERR_OR_NULL(adapter->ptp.clock)) {

Since you always assign clock to %NULL when the initialization failed,
this could be just

	if (adapter->ptp.clock)

> +		dev_dbg(&adapter->pdev->dev, "removing PTP clock %s\n",
> +			adapter->ptp.info.name);

pci_dbg()

> +		ptp_clock_unregister(adapter->ptp.clock);
> +		adapter->ptp.clock = NULL;
> +	}

...but I'd invert the condition to avoid +1 indent level.

	if (!adapter->ptp.clock)
		return;

	pci_dbg() ...

> +}
> +
> +/**
> + * iavf_ptp_process_caps - Handle change in PTP capabilities
> + * @adapter: private adapter structure
> + *
> + * Handle any state changes necessary due to change in PTP capabilities, such
> + * as after a device reset or change in configuration from the PF.
> + */
> +void iavf_ptp_process_caps(struct iavf_adapter *adapter)
> +{
> +	bool read_phc = iavf_ptp_cap_supported(adapter,
> +					       VIRTCHNL_1588_PTP_CAP_READ_PHC);

Maybe split the declaration and initialization to avoid line break? My
editor says it would fit in 80 if you make the variable name shorter,
e.g. 'phc'.

> +
> +	/* Check if the device gained or lost necessary access to support the
> +	 * PTP hardware clock. If so, driver must respond appropriately by
> +	 * creating or destroying the PTP clock device.
> +	 */
> +	if (adapter->ptp.initialized && !read_phc)
> +		iavf_ptp_release(adapter);
> +	else if (!adapter->ptp.initialized && read_phc)
> +		iavf_ptp_init(adapter);
> +}

Thanks,
Olek
