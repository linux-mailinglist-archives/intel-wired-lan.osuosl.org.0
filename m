Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B891A903922
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 12:44:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EB298145D;
	Tue, 11 Jun 2024 10:44:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fo2e8hDHpfbX; Tue, 11 Jun 2024 10:44:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FFA58146F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718102689;
	bh=alOkaa80plr3ZXzXrrvxhYVaS7RJ55bi7ZQztI9YfuE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ihfuvumdRzEpFlLrNizCxL01YDXslwNClCWvsSqnAYpKZ9N6/JLVLh5RnJUsE1513
	 r7Xz6vuzGylYw7tC3LwIU/2PVIoJNjk3lapgxDfMkK97QmtaMvOB2QJkc0zO1r3KQS
	 69JnthmbyMF/ump6eze6toJQLs7rxoYWElseb1uMhTLIffTg2QQlDMGgGIEp2/4AYn
	 01A8AZ1R//99WfFzayxpBA3fvB9H8dhW8bbmw/gmzFjr5wWiP0uGnHHP619Bi+pTgh
	 bWW0cJFUF2G+ifwIX0rLWkhafByK2QhZ9MdB+E4PtPwETmt6n5VERXTwN8xxUSA3q2
	 8i3Y+nZ26MZnQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FFA58146F;
	Tue, 11 Jun 2024 10:44:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30D6F1BF395
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 10:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D9A26082C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 10:44:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ppPUUMJOU-d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 10:44:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1E9C8605BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E9C8605BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E9C8605BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 10:44:45 +0000 (UTC)
X-CSE-ConnectionGUID: u6RhEQAcSJ6dNJJb7aH5Lg==
X-CSE-MsgGUID: HX3bk8M8Sh6N60DnhK2PJA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14682722"
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="14682722"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 03:44:45 -0700
X-CSE-ConnectionGUID: jGjsvBfiTJyQZUKMfYucAw==
X-CSE-MsgGUID: z1//pJsZSxicA28MU64N1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="44517066"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 03:44:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 03:44:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 03:44:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 03:44:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QyVpcTkZmHHCxthEisvTdsbP9n+yOUIJn1ms5kjuThlPWYkZ7Yy/FHUFd2TjjvtX6zfQj1ldH8JM1EOQ9BUStp/xOuk0zvP17gvkCJ5Gvm/gREdETR7OSkgVDsJRFqYNEY6OWg1N115KxdgElf5CD0Tfxb/+VLbALRIkNtEu7Kiw8WhbyTKJm3UjbvrMRbst9v/SyLhbX44o8e3zp4eyPSSN4dyF29jK8kcxpOzkbpNhNAF+dKCMCI28YgPRZ0pTHbQCQkasaMF0mr34Szqb0gasIIqvzu6v+ht4v0+IDZxDXB7w/1Nlbsc/v/C8GwePpa2qPrm0WIXWi3Cxs04Bdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=alOkaa80plr3ZXzXrrvxhYVaS7RJ55bi7ZQztI9YfuE=;
 b=hDKJYcDBq8l0M0SNkLdADIySxUgI1kNFpSncj0XxpnnHWzSvaVJqk2PK+bxw7CqCV9/pMYxBYnwYzk8HkIFryC/g76gN7/meyHc25qNBb9oIIJPSWzh8DkBx5M2x5S3Y2wD6hcISAuqJQxF1qF21PKw1BeTjypC1csHGPim0YWbMPdBFFtqoyJCE/bx2A/p9ys63P/a4vmRwV4h502mVBweIRihQCDDBHVvcGQje1d/PvyAUVmdZ+JSWuw6wtmmRxYn+Wff6CJzNUI49TYfdsJlqY329rdIqGTtwk8dWb8pE4hlSg36IqfVHXnR8nJ+c7Or0Ww8rbEQ9v6TQ9RYfOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA1PR11MB8541.namprd11.prod.outlook.com (2603:10b6:806:3a9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 10:44:42 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 10:44:42 +0000
Message-ID: <cc76768c-d8d4-4c07-93c1-807f3159b573@intel.com>
Date: Tue, 11 Jun 2024 12:44:31 +0200
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>, David Decotigny <ddecotig@gmail.com>
References: <20240603184714.3697911-1-joshua.a.hay@intel.com>
 <b30f34a1-48d6-4ff4-b375-d0eef5308261@gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <b30f34a1-48d6-4ff4-b375-d0eef5308261@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1P189CA0014.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::27) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA1PR11MB8541:EE_
X-MS-Office365-Filtering-Correlation-Id: 573d55c6-d87e-4a6e-88ae-08dc8a038040
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SWxSb2xBVmx6OEF1dng4eEh0UGpNWWtRNlNDajFXNkpGaGIzSFU1bEpvNW1J?=
 =?utf-8?B?TUIwZW1JL2VaNXB6S0MybXU1ejI3Z3RxTHVwNlNkN3d0bDgyOFNKY2VCdUJH?=
 =?utf-8?B?bVlUOWVVdXJmM1BCVnR2SURsVHo2QU1wYksxZnhHYXBVY1VROXZQK3dEQzhF?=
 =?utf-8?B?UmxLNzBiQ01GVld2dnBYRGpGVStUSTFzSTRoWUtOM0ZvaUZEN3JHSVJwczRE?=
 =?utf-8?B?MGVPWFVJbnVScWVTMml5d3Z4K0pLcmtZQU84bThQZEtsZWdYMVRBL0phbGsv?=
 =?utf-8?B?aWV5TCs0MnpQV3JBZ3JFcFIwWmE0NXRUenNwQ0FCSk5yRkJuRkMreWQrZnpZ?=
 =?utf-8?B?TXloc3YyR2tDdVhQOUNpemVzV2xQMUY5cmR1THNtdVJna2ozNm0rZnVVS3Vz?=
 =?utf-8?B?U3A0OTJMakljb1RlYTdoMS82MHo4eXg5YWhTaGF3MWVnVUtzbCs0bTQ4b0hy?=
 =?utf-8?B?UW9MMjhEU281cWhuK2pDNDM2WmhiN1htdGxXdStxS2JjTjJNdFhnYm56eVVT?=
 =?utf-8?B?Z0NNN3RPNDB6UDRxN2VwRGEwOCs4Q1o3dDBPUnlORnVYZEZJcjN6T21zbjVX?=
 =?utf-8?B?eUtCanp4TnRsRW8wSm4yM05pOVJYaVhXcUhPUVgzSVJsZlI0dTVqRVYyRThL?=
 =?utf-8?B?WnNZaG1MVVZpdWh6VU95RExaRDdUUllIeDFGN21UN200Rk1ZOXhRRGU0Kzhm?=
 =?utf-8?B?REhaVHNXbnZxUC9Qei9nRVNJalJtWGlnOFJTSzB2cWJjcU1lOVRhN1QrTTJ4?=
 =?utf-8?B?RXkwQmd1WHBPa2NDK3VOQnJrNkRCMWt4RWVobVFNSldZY3lFNm0vT3NWU3Y5?=
 =?utf-8?B?dnFacmNocy9aY0VhU3FjK3ZNcFdRQzIweU01bFBlZzk4RXRnT0Q4V3grUld2?=
 =?utf-8?B?Q0tOeTl1UXV5REhZRCtHanJJK252ZTZQV2xUTi9PK20zZ1Bzd3gxVDUxSytS?=
 =?utf-8?B?N1NHVVovVjlYaTRSakgwZlRLeHpKZ3laei9ra2ZqMUJGc1dheUU3dytqMjlj?=
 =?utf-8?B?ZVJsYjU3blhaYlFyWmhBZ3hzZG41emJaY24zS3lnV2xKY1hFY1VrRWhkanBN?=
 =?utf-8?B?TU1RQ2lpaXlZUnFjME01U1MzTC9QZmg1ZHBIeCt0OVNodFVRSkNGbkN2d2xw?=
 =?utf-8?B?WGNKWjZjVWdLT1ExQ0NuUnpkZGszVlcrRGNBQU51L2hZcGw5NEg0NUpUOVQr?=
 =?utf-8?B?K2E2ZTRWdHQzbzlYRlQwVCtjWXJZM0xDWTE1NW1OTFFNM3F3TnhHdG9YUGp4?=
 =?utf-8?B?ejB6NWZCS1VKajJ2U21Wb2ErU2l3am9Wby9mM2lNbTRpM0tJckdETUVZUGpS?=
 =?utf-8?B?TnRMNUdIYW9HTTRkaFh6T0cwekhOV0pyRHk2NWdxRlRLVnRITVU1L0twbHFa?=
 =?utf-8?B?VVpTWk9HcnhJdlZxZXlUaFIzeEdWZWhkREtaM0pnMUhCM2Y1RHZWajNOL3Zt?=
 =?utf-8?B?cVdpdEdYSE1QaXhCSy9ZdU40UjJ1aXBqQjUzcTJvMU9kU1hRVCtrRGpyYnB0?=
 =?utf-8?B?SUltQk1EZythbVp3TmNoRkM1UFFKMjA4UUlEMTZXa0xabU9nMlpPQWdLK0Ux?=
 =?utf-8?B?b3dPcjRYMmlia0xoQnRKbHhVb09NRUxKaUduSjFYZnRZUnNRT0ljRXYvY3lT?=
 =?utf-8?B?ajdNZzd2Z2QxYWZnYWhWNGhQL3oxc1NZNUU4Qzh4KzdPbFBwLzlzM2NyYVJK?=
 =?utf-8?B?N0RUR3NKWDZoK08xMW5DUlFBdUZ6QVJscUlvc0QwRzZjZUhtM29aYVdIbSt5?=
 =?utf-8?Q?uWiR/TMNFDmQ53NTjZXns9gH1pxiPGQNbrciNQZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFNwUytRQkZKMHplbDlOWEV0eWcvNU1PbXU0WWtkV0pWckNjMFRxR3dFMFZw?=
 =?utf-8?B?enJVRmJxWW9iMGduK0M3eTBWUmRMb1E5eVpZMU0va3l4L2dEMUllbkM3K0lR?=
 =?utf-8?B?RlViUmNvQTRhcWVvNEY0cjJxczdMUHRhUDNYOW9iM0JocVRUYlk3VkIrdFpm?=
 =?utf-8?B?dW5WRTNmNVhaWDgrZlJlbC9mSGE0Mmg3V1hjc0MzbElUeXRMWnRaUjM5Q3F3?=
 =?utf-8?B?L0czeGh3c2dOQUhjQ2pmRHZxc05NblNoS0VvaURUcGZkZFFPWjBJTENMQWFE?=
 =?utf-8?B?QnNWR1ZERWw4cHVxWlFJanNwaUp1UEdjcU92NHp2T2E4MStyUjdLZlJUWVAx?=
 =?utf-8?B?RDZoV3BiZnR3cXhSVkljeXZGYXN5eHcrRjF2eCt1NTJJaEhPRlRic0hLeHQv?=
 =?utf-8?B?aWJ6b1pHT1VjL0h0Wm5ZOHFWNzBjWHhlUDRhdU9yc0lFeS9jbjNyajc1czhj?=
 =?utf-8?B?aC91aG01a0JkUGJNM3k1MEc0N2ZXWGdtU3pSbmtObUk4QU4vdy81aSszMDRB?=
 =?utf-8?B?cm1WSHk1bnNOUEluYkk5aDBoTG5lVmtYSWpQRUw5cXpqNnl2d052dENXa3J2?=
 =?utf-8?B?ZXRNbEJSb2FtbjlkeVZQUzZ6LzF3K2lwd0tiVnBnNUlwM0twVlViZElaSnZS?=
 =?utf-8?B?ZTYvUmRYUEQwd3RYNWJtMDN5NTdyeUNUWXVOMytoV1dOd3NCdzhNVko1ZXpQ?=
 =?utf-8?B?dm5ZWUJrUWZ2QVNBQ3NHYWlCSzFpL0VISGY3RGRra0JLOWdQMHJQczRLRktW?=
 =?utf-8?B?YWplbEs5N0I5elcwME1zY1pZK1hEMHFnamVUYlcvY0xwOTBkVWxpcFdENUFo?=
 =?utf-8?B?VzgwVXVJakdhUS93dzhVNHFic0d6a3FidFNUS2tsTWtSWUxPZjg0dWl2b01I?=
 =?utf-8?B?TklUelczNUUrZklqUkNRNU1zMXZXbVFhdlRwaGRFNTExVVNtNXVNbzFhQkI0?=
 =?utf-8?B?OFZYOFpxemNjb0NVdzRRS0huYzkxOUgrR0Nxd04zTEtKMkdzSHd1d2Y1RjVY?=
 =?utf-8?B?Q1FFazdXcVgwZHBrRlF5S1Z3cHNPb0hYYUlMT2tWUU5zR1JpVVFTVUo5RHFE?=
 =?utf-8?B?cTdLdGlDQ1RSYUtqc3hNb01LeUYyZmhoT1RaditJNTBwZGpzb2srNTJBWUNu?=
 =?utf-8?B?M04yczFyY3lnUE9YVk84a1lyUFkvMVRQb0I3OGIrYjczQUVkdkkxZ3p2U0Ev?=
 =?utf-8?B?WDQwK29iTFI2YjAvaDk0TWhDWUhMLy9Wc3NGL291TzBtK0N4b3FmL1ZadENX?=
 =?utf-8?B?ZURzcU1pQWswYWZUL01HWjhlM0pWKzNNTkd0Ym91M1JKRWMwaHJ4RGUrQ0ln?=
 =?utf-8?B?T3FUVVBBTTUxcDRvNmxtTUZ6ckkvUkg1WWRZWlJyRnhJcTBZM3FhVjJUVUJu?=
 =?utf-8?B?b1V5c2hKS2FUMzhrQ1YvN1g2TXc2SHd0WGYvUnliKzVIQU0rQUh2TDFXQ0ZX?=
 =?utf-8?B?aVJYbEZlOFJTeTNNM0toOTlnbDFkYkdHeDdnV3AzM2taN2NwT1phYTR4RzJK?=
 =?utf-8?B?VG5CSVN3eTgzU0M0TFBuS1pLZitMTGhRYzBVMkhCTG0zSkszWm01YVprNTRK?=
 =?utf-8?B?U3NPUGEwSUEvQlhiTWJNeHREU1BhM0RrQllQelBrYUlsUGhKbjZBMS83K2xN?=
 =?utf-8?B?Vkh5Nmg4Y3AwNnpPcUVzS3RReEdRTFJERE9nSXBreTFpczFLTUQ0V1d5VHd1?=
 =?utf-8?B?Nlp3Zk0zNG53Q3ppWnhCNFRncjJVb21uNDRkTG9IR3V2Vk9RR0g2THg5OXBX?=
 =?utf-8?B?VjNZWllsZTJpUWdOcXo0WmYxaXJKdlFKUVhmTy9wcVZndXc0dHNmUWh1QUJ6?=
 =?utf-8?B?WHJQUmVIZGhFQmlHZGlHb1MyZU4vZ2U5Z2pTQ3BDa2hWSlc0OHB3czRjaEtY?=
 =?utf-8?B?Zmg3VWYyMzlJZjhjNnZvby9WYmlBeTZLK0M3L3VuaWplcytRS1hIbThKQTFm?=
 =?utf-8?B?MzNNamY1MzRvdXpIa0hZZDZwaTVKTTZoKzNKejJDay9CakxJaWpJek81THpl?=
 =?utf-8?B?eUF3aUlRb1BTWmlZa1IwUnNnWGNqaEo0ZFliSmFxckIwSEJWNm4yUGNTK3A4?=
 =?utf-8?B?RGorTDQvRXIvbnFvSU5KUUw2Qjk1Q1JUeHQ1YndGbk5laHprT1NJdjlhS0JV?=
 =?utf-8?B?T3NYUno3ZkEzeTZqZTNKNW8rVFpWV0lqdDF3bTdHMGZLbU1udlNOa0FxbDA5?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 573d55c6-d87e-4a6e-88ae-08dc8a038040
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 10:44:42.2148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uDCFk/VBnOgk41prD7Y/D0pwXW6JK31BMmVF501LimKwx5joBvuorN3x8HStTPnUWj0s0kIkzEE+k4UUpphT9FTk+VVCRhAj50oCTRrlLWc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8541
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718102686; x=1749638686;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JJOJ+TFyobNKTcFHkLRF7VjHEpndKNeg+V6Y739LxtU=;
 b=Fi4fZJNwKnO/JY8WkYozNQGoutYFHzXL/Ack3urkHud7QF85ZAt/fF3M
 5gMc9efvXl2zJDAG1+c72J0Z8gmn52X+BOsnZJXHQRAHuOn0Ro4FVLgac
 dx/2zOtvh5ZrWnVe6wS/jfYLufNVztKjzYxu6cf0z2nTEwQQTH0l5Egh0
 YSs7jneqDm0BSPhx/FYRl7yykaVSxBzrPv7YvQGzuXTlFnPe85iSHD2+f
 jOrbpq/qiGJma8j1jK/8cm9iPHywAcqatItkRS52vlL8wWtJpZj/h2hjT
 VuOf4JNHwxtGlyTlxNKUYFCkWx7QfQgFL1gSjat7OZZ2qQNl3VFCzLJyF
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fi4fZJNw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: extend tx watchdog
 timeout
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, Sridhar
 Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: David Decotigny <ddecotig@gmail.com>
Date: Tue, 4 Jun 2024 16:34:48 -0700

> 
> 
> On 6/3/2024 11:47 AM, Joshua Hay wrote:
>>
>> There are several reasons for a TX completion to take longer than usual
>> to be written back by HW. For example, the completion for a packet that
>> misses a rule will have increased latency. The side effect of these
>> variable latencies for any given packet is out of order completions. The
>> stack sends packet X and Y. If packet X takes longer because of the rule
>> miss in the example above, but packet Y hits, it can go on the wire
>> immediately. Which also means it can be completed first.  The driver
>> will then receive a completion for packet Y before packet X.  The driver
>> will stash the buffers for packet X in a hash table to allow the tx send
>> queue descriptors for both packet X and Y to be reused. The driver will
>> receive the completion for packet X sometime later and have to search
>> the hash table for the associated packet.
>>
>> The driver cleans packets directly on the ring first, i.e. not out of
>> order completions since they are to some extent considered "slow(er)
>> path". However, certain workloads can increase the frequency of out of
>> order completions thus introducing even more latency into the cleaning
>> path. Bump up the timeout value to account for these workloads.
>>
>> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_lib.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> 
> We tested this patch with our intensive high-performance workloads that
> have been able to reproduce the issue, and it was sufficient to avoid tx
> timeouts. We also noticed that these longer timeouts are not unusual in
> the smartnic space: we see 100s or 50s timeouts for a few NICs, and

Example?

> other NICs receive this timeout as a hint from the fw.
> 
> Reviewed-by: David Decotigny <ddecotig@google.com>

We either need to teach watchdog core to account OOOs or there's
something really wrong in the driver. For example, how can we then
distinguish if > 5 sec delay happened just due to an OOO or due to that
something went bad with the HW?

Note that there are several patches fixing Tx (incl. timeouts) in my
tree, including yours (Joshua's) which you somehow didn't send yet ._.
Maybe start from them first?

I don't buy 30 seconds, at least for now. Maybe I'm missing something.

Nacked-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Thanks,
Olek
