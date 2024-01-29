Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 354468402D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jan 2024 11:32:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F7C882D0C;
	Mon, 29 Jan 2024 10:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F7C882D0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706524347;
	bh=0RxihtBESGyAorotHJIOOqQt5rgG72mzzWKRh2QAAlg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xxKGCHqHI0wH1khwWLTKjCmAbZK1GuNRx6BMAJNCjtlPXEWILVJdgAWQWnVC/CQ5W
	 dM2/+p1Gkz1z7TbgtPC9JFrOu0rr7jUkmmrWavBd9cH9EN6mbDLjhj9HxMwolZOL0g
	 +ytJ2EXFUYucha4X2kD+BIJRx6RUDnZnk/ueqrIVjSbOOSXEpk7e5BC6Jaxcs/tUxm
	 0iPzNsTwyLe9/53jxzHfAUo8WXc12H5kcVvIna1bMIxn7GHmopWiobYHz01eLDULJ6
	 Bh+lFJVrOoioBGsPM7QAywc4sbVVIp4xtf29ERO/AvkOkxBd3reQqV+Eb+9Zhxj9IK
	 C2moulHECjw+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MNmW7bgUvHWI; Mon, 29 Jan 2024 10:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B11682CB7;
	Mon, 29 Jan 2024 10:32:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B11682CB7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E9661BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 10:32:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D565840550
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 10:32:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D565840550
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o3oIACJz-Z5g for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jan 2024 10:32:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE649400DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 10:32:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE649400DD
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="434079954"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="434079954"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 02:32:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="3356285"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 02:32:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 02:32:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 02:32:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 02:32:15 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 02:32:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AmNyjYZsIl75dzcgXq1hIBw1V4HylY/8qQUBUkTnOiasqFj+eK+JlK6JJOUdt6vvAgiiM4/E5AyOkNLuLlcZl/XTvqyCJXj9fXDSPvpLQu60IQpUf1zg36YHf56oTEuFC1+9lBPgXz4waNIKGkcgCk3ga2nke4hv2sOo9zCJXKEel9uUPLuAzFkwB21EpOBfCHJ93LaD9kxjATG6Mq7/bie9qzFX3XZdCTJv8wBWDwlTj98RtGxlbq8Rw0K0Ng0hrPPq4r1G0GAl3jWplRovUSMhJoTW6KQuUnWoOFYkedzqR7RGvuAkf6sOu7wp8D0DlOyrkXnAA1nXshjO7ZsDoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0RxihtBESGyAorotHJIOOqQt5rgG72mzzWKRh2QAAlg=;
 b=FySzYpWLJ5q2AOGiui2+sDTCslfbYxkocDtoiKTCbhe6qH0PyzCfOBi1cChfKeOi+ebMtE2tgL8HKj5pjRdojfbltRg9WWjEE8uj85eyvx4D2VvUtL33IAajM5VDNTbDlMohcbrXcF17hGKJ1p0ETxE1AcxCOz1GzNi4+J+ue3HiHGMP1eqpnl8JHemA97jtaBmO3BBqRKk8+7qUCVh3pp0ck4zUSyTKJGuwpoEguVdhwitWGv43mcAw1ZwtAKqAofqP934Ruw0Npw6fOuaEoAL+gc6Rfga7V9cVkDPWFWvoMK5KJNEY/eC0O6gNdpQgZUj1Tw3lfFO7LkgQmxBqeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM6PR11MB4593.namprd11.prod.outlook.com (2603:10b6:5:2a3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Mon, 29 Jan
 2024 10:32:07 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7733:f6b8:e322:f670]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7733:f6b8:e322:f670%4]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 10:32:07 +0000
Message-ID: <a809a20e-46c4-46bb-ab71-daa41f82469b@intel.com>
Date: Mon, 29 Jan 2024 11:32:01 +0100
User-Agent: Mozilla Thunderbird
To: Brett Creeley <bcreeley@amd.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240125085459.13096-1-wojciech.drewek@intel.com>
 <cab0ec40-0e16-455e-b1eb-5699aa5f10df@amd.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <cab0ec40-0e16-455e-b1eb-5699aa5f10df@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR0102CA0021.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::34) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DM6PR11MB4593:EE_
X-MS-Office365-Filtering-Correlation-Id: 25892fbc-0462-4250-0c73-08dc20b58aef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C1nVqenBEvBH2yj7MTeWQqOPHx/BrFZCONLWYy27eH6DS7yqI/Bp6DWyTKCWgRKUtukHXm8ql3ItXo98nlPp7PfZQyfie+ZOmlKgyrbJohupCTgLPmRYJTxmrGu3HsvU96W3H5pJn+ngs8kiBTp4tiUjtwRs6zhjn0v80SPCPMRKeascow25sxoACPKJ/Mb8Gb3CDhBeA+7ivT82Kne5tg1ODblQlfWRDPIClI0AuEGHKbgrhcgVcKkNYydvSjP5FWetz2khbGYsL/gkwSK/76haBFVGRWrFErVTXKSTUy2zUZ1ucOBQSfu850VGcK5Mx2XJIieDh4YobZaDwV48HgRwUua0Kkb2wblLJo0250rQZQSBvXVnR+x25/GHOpgEjaNEcFSKGnGYTQzFvejaHFBcJ2VAHD/5US8it/ZA5yHqQbTsaqy4A0XopddEnPFslESttLEM80AExKJQTziDWMn1EZ8lP+C4YImJ2EfQfatkiJPWTqyvs/M4Oaf8I1m5PcG000HWcW3dNwMeSeMLVUkgCHGcIcYhAWh5ekvPPFE2Q6BEhDqZmggs/UlJ9Xq5hbaQ60Ou4lAk3irKfMvsi0dUyPemlbe1SuAXmT6Tge7ynbGmN6VgEHp9I3dmcoMqWS113vV4vtCIclBJuga76MhVy4F9rDam13o9xLkaBJWE7XacIr0kE0KDOmXK1rVK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(39860400002)(376002)(136003)(230173577357003)(230273577357003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(26005)(53546011)(6666004)(6506007)(6512007)(2616005)(107886003)(38100700002)(5660300002)(4326008)(8936002)(44832011)(41300700001)(8676002)(2906002)(478600001)(6486002)(316002)(66476007)(66556008)(66946007)(36756003)(86362001)(31696002)(82960400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWtsVUx1QlZUYi9kWmxSQmVCWE1UWk45bmV1WHM4WjN6RC82TlhMQTQzN0Ri?=
 =?utf-8?B?aG1uK1lGQWUyRGl6NUpscDAxNDh1QU1rSzlnemhwUlk5TnA2Zk5DaEhOOEZO?=
 =?utf-8?B?ZzFKWGxsbzV6SUZqMURLZFc2ejN4c1dvS1BXbmFQRERZdDJVKzhFdG1hS0Iw?=
 =?utf-8?B?TERnUk1oZ3BRUVpWR1Y2TDdEN3FOMzJwVkdUMzhDWVhPVzlCMjNCRCs0S093?=
 =?utf-8?B?QXdkSmoxdkxHMktVRk1ZaGsraHFWU3ZwcFJSQ0FGamxURmhLWDNzWDRIK2Ey?=
 =?utf-8?B?UWcyRFg3UDNER2VRR2xzak9odVZaL1JPWjFWcGZsb1hNQ1Z4WEdPbCs4WGxK?=
 =?utf-8?B?YzR2TXpzeFlUZGg1bS9UZml5MkNBSFIzSmg2Ym4wZ1czTTlQcXJYZ1BERU9R?=
 =?utf-8?B?NnF2SkVGV25KdWF0RjlxOXFvbFpFdEdVYlo4MlFRemFQL2NlT0owODA4ZitY?=
 =?utf-8?B?T0EwMFJmcm5KWXN2TGZrY2tPQ1RtMDF4UkZUaDA2dXJmckNzOWdrTmw1cnNk?=
 =?utf-8?B?Z3FXY0poV1lTdGxabW5tL2VsdkpKbUJJNm0zSDNHcjIvWlJvUEI1c1RGdWZ4?=
 =?utf-8?B?c2IzOWJ0VGVxdS9NaFI2Y3lsdFpQMFFXWGVralMybjl5M25BdXcza096QnBD?=
 =?utf-8?B?YVNtVHpDeTB4c2FLZFNiYkhkaWI0MUFRTkE3bWtNNDh4eWt1L1FFYlVzTzhG?=
 =?utf-8?B?dXptb2Y4MFlyZG5zdjdZOFpOUUROTlVLQnl5SE9JSXR0NmVpdE1lVWoxTUgz?=
 =?utf-8?B?dW4zWGxmUFV4Y2V4QzZUZ29CTXNDWEVzVE5PT3lYNVUwOWdLazg2dng4andY?=
 =?utf-8?B?aGJ0SC8ybGVpMkF0RkdCcmxLWTdaMWhVM001aHd3WjVUTTFpZ2l5dlFtT1NV?=
 =?utf-8?B?T3ZFa3RlaXhoQ1RnZm50QkR4NXdoVkVLNjRnQUdSMkNSdzFsSEJDbysrZHk2?=
 =?utf-8?B?Yk84djErMVlMeFIydnZ2aSt4L2FwN3daRVk3Z1ExUVVZNFpQdnRUVi9CZlN2?=
 =?utf-8?B?V3FRM0FFRnJHcFlLU1FKM2wzNU5UcG9uekF1UFU5UURNbjFNcCtLUTFBTWJT?=
 =?utf-8?B?K1hmZjZvUmdkM0luRXBUVk9EVzIwQlhyNXVHS2VnbUlKYXZmVUtHSVUwQ3FI?=
 =?utf-8?B?QzJ5LzVOY1hLalVYc0xvK2x5Sjk3Z2hrT0I1MEd5cjZlMTk3bXVwdkdlbDhN?=
 =?utf-8?B?S3E2aXRpNXJYRlFFZUIrTUJJa0JudUsxWEtYbWI5NG5UZUZPcHc0NDJzcVpH?=
 =?utf-8?B?MzFpMURyY1Y2V2w4RVFZakRmVWFHZyt2dXlnSHdqandETEpvcE5heVpRMnB2?=
 =?utf-8?B?TTB6ZXNhTGlpaHhHamwreFk2M2RBTkRMYkRCWkRUQTRYNkhBTTl1NndKZm5t?=
 =?utf-8?B?ZVpZNnpja1JxbnpjM05ST2VQZHVlSzVXTlJQSlJESFdFZ21TaHd4eUZFd0Js?=
 =?utf-8?B?ZEhBQytmOUtkSUtEQnB3SFlYK0ZXTWNkcjJib2E4RkVVTTVLRmxCUmdKVTNY?=
 =?utf-8?B?Ymo1eGd1aEg5Wndod1M4cm5ub0laMzRMY3BjZWJQeUg2eFNmVkJRWFArM2kz?=
 =?utf-8?B?VW1JQWVtTzFUc3lzc2k2aWR6dFF3YmNnWm01RVNHRXB1MEhScWZpcjBYem5N?=
 =?utf-8?B?SHBuaXpRSnduU0Vmbk9zNVJPU3oybmFzYXE3M2sxRXdXV3IwWmJVelBzMlZ5?=
 =?utf-8?B?cEV3THllSWZ4UTB1T0Z2ZmZsSGVXUjVVQWpUcWVtcGFkUERnSGNXV1lSSWtq?=
 =?utf-8?B?dzBHYkNiZWc3cFliVStxVUtacnlPNzBvK0toTkpSODBlcGtDbDA0ZWtpUytG?=
 =?utf-8?B?VzFDanpNSFFRODVYd0tqMXpsTkJCMnJMcTZLQ3NxeG9oRktkZFBibE5TTW5H?=
 =?utf-8?B?NHVxR1ptZVZGL3ZSOWpRTlpybmlaRmRwMFBNeUFuUk5xc2dJT1prY2Vta3dm?=
 =?utf-8?B?VDU0R21iN3lqMkxHNmhGRHJMeCs1OXNwa0dMdGFnSGdBTE9UVWRCblliam5v?=
 =?utf-8?B?UHhQRFNLVnREd0ZFbThtblUwRUM1bG1hanVBUW83RVNLLzFPN1ozVnpaTW9y?=
 =?utf-8?B?bTlGbytBOWp1OVI5dldqOEdDMHlGckxtRzhpYXVNTnNCcmhpNTVxUS90YU41?=
 =?utf-8?B?UjhpS0xjS2RSSFJkYmpmZHlMRXZoWUVLYllaSEJ4cEVLVk5yNFdRQ0x1dk1T?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25892fbc-0462-4250-0c73-08dc20b58aef
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 10:32:07.4324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9u3bbzb1BQnoEmp1CkaVNg+VDTYvX82W2iCRA1Q5ehy1xlOaKW6cIn3KRlLACWUXvr8ZLMXsUDY1z3r2XG/hZ9iz0qveaW8By2phP13kN3Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4593
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706524338; x=1738060338;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UC6VdCiID4uqwuPY4w18/vvOt94S32WMWsXbHIAvcus=;
 b=PYK3WjM5l1T/z+GPNfCnP+g2Db/gxJcxszbADbNHwXsQO8zpK48AgxdV
 7+eV1KU0oZH3g0Cd0jyToWwaJRNXmj1J0K9DIx5jQpWkN5tCdEy73QReT
 ywTpdDkYAMMEQ1ZPbuvBszmltRQfkkovPeB2UtGTV702HvLQGCp52X9p6
 FVFBTLMf3jlo0IPVA23KvhfMQG6M2aRc726Qek2jSkuiah4HvFQWjjJNe
 Nkeo0nte58sXH8medzI33ddZERqyybtnQFcI5jRE/RUSesOQgsmb/v8HH
 Irn5HWDfEZr82A8pwDBEGIY2tDbn6olOp9Js4pJGSvlY80PcW4iBog9lt
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PYK3WjM5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Remove and readd
 netdev during devlink reload
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
Cc: netdev@vger.kernel.org, jiri@resnulli.us, vadim.fedorenko@linux.dev,
 paul.m.stillwell.jr@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 27.01.2024 00:19, Brett Creeley wrote:
> 
> 
> On 1/25/2024 12:54 AM, Wojciech Drewek wrote:
>> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
>>
>>
>> Recent changes to the devlink reload (commit 9b2348e2d6c9
>> ("devlink: warn about existing entities during reload-reinit"))
>> force the drivers to destroy devlink ports during reinit.
>> Adjust ice driver to this requirement, unregister netdvice, destroy
>> devlink port. ice_init_eth() was removed and all the common code
>> between probe and reload was moved to ice_load().
>>
>> During devlink reload we can't take devl_lock (it's already taken)
>> and in ice_probe() we have to lock it. Use devl_* variant of the API
>> which does not acquire and release devl_lock. Guard ice_load()
>> with devl_lock only in case of probe.
>>
>> Introduce ice_debugfs_fwlog_deinit() in order to release PF's
>> debugfs entries. Move ice_debugfs_exit() call to ice_module_exit().
>>
>> Suggested-by: Jiri Pirko <jiri@nvidia.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>> v2: empty init removed in ice_devlink_reinit_up
>> ---
>>   drivers/net/ethernet/intel/ice/ice.h         |   3 +
>>   drivers/net/ethernet/intel/ice/ice_debugfs.c |  10 +
>>   drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
>>   drivers/net/ethernet/intel/ice/ice_fwlog.c   |   2 +
>>   drivers/net/ethernet/intel/ice/ice_main.c    | 189 ++++++-------------
>>   5 files changed, 139 insertions(+), 133 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>> index e841f6c4f1c4..39734e5b9d56 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -897,6 +897,7 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
>>   }
>>
>>   void ice_debugfs_fwlog_init(struct ice_pf *pf);
>> +void ice_debugfs_fwlog_deinit(struct ice_pf *pf);
>>   void ice_debugfs_init(void);
>>   void ice_debugfs_exit(void);
>>   void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module);
>> @@ -984,6 +985,8 @@ void ice_service_task_schedule(struct ice_pf *pf);
>>   int ice_load(struct ice_pf *pf);
>>   void ice_unload(struct ice_pf *pf);
>>   void ice_adv_lnk_speed_maps_init(void);
>> +int ice_init_dev(struct ice_pf *pf);
>> +void ice_deinit_dev(struct ice_pf *pf);
>>
>>   /**
>>    * ice_set_rdma_cap - enable RDMA support
>> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
>> index c2bfba6b9ead..8fdcdfb804b3 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
>> @@ -647,6 +647,16 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
>>          kfree(fw_modules);
>>   }
>>
>> +/**
>> + * ice_debugfs_fwlog_deinit - cleanup PF's debugfs
>> + * @pf: pointer to the PF struct
>> + */
>> +void ice_debugfs_fwlog_deinit(struct ice_pf *pf)
>> +{
>> +       debugfs_remove_recursive(pf->ice_debugfs_pf);
>> +       pf->ice_debugfs_pf = NULL;
>> +}
> 
> This function seems misleading to me. The ice_pf structure has the following debugfs dentry pointers:
> 
> struct dentry *ice_debugfs_pf;
> struct dentry *ice_debugfs_pf_fwlog;
> struct dentry *ice_debugfs_pf_fwlog_modules;
> 
> The function name is ice_debugfs_fwlog_deinit(), however it seems you are removing debugfs entries recursively from ice_debugfs_pf.
> 
> Maybe the function should be called:
> 
> ice_debugfs_deinit()?

ice_debugfs_pf_deinit() is even better I think since it removes debugfs entries per PF

> 
> Also, I know your commit didn't introduce the naming scheme for the debugfs members in struct ice_pf, but it's a bit strange having "ice" or "pf" in their name. It might be worth a follow up to fix these names to something like the following:
> 
> struct dentry *debugfs;
> struct dentry *debugfs_fwlog;
> struct dentry *debugfs_fwlog_modules;

We will do the follow up on that.

> 
> Thanks,
> 
> Brett
>> +
>>   /**
>>    * ice_debugfs_init - create root directory for debugfs entries
>>    */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> index 97182bacafa3..a428e24439d0 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> @@ -444,6 +444,20 @@ ice_devlink_reload_empr_start(struct ice_pf *pf,
>>          return 0;
>>   }
>>
>> +/**
>> + * ice_devlink_reinit_down - unload given PF
>> + * @pf: pointer to the PF struct
>> + */
>> +static void ice_devlink_reinit_down(struct ice_pf *pf)
>> +{
>> +       /* No need to take devl_lock, it's already taken by devlink API */
>> +       ice_unload(pf);
>> +       rtnl_lock();
>> +       ice_vsi_decfg(ice_get_main_vsi(pf));
>> +       rtnl_unlock();
>> +       ice_deinit_dev(pf);
>> +}
>> +
>>   /**
>>    * ice_devlink_reload_down - prepare for reload
>>    * @devlink: pointer to the devlink instance to reload
>> @@ -477,7 +491,7 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
>>                                             "Remove all VFs before doing reinit\n");
>>                          return -EOPNOTSUPP;
>>                  }
>> -               ice_unload(pf);
>> +               ice_devlink_reinit_down(pf);
>>                  return 0;
>>          case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
>>                  return ice_devlink_reload_empr_start(pf, extack);
>> @@ -1269,6 +1283,45 @@ static int ice_devlink_set_parent(struct devlink_rate *devlink_rate,
>>          return status;
>>   }
>>
>> +/**
>> + * ice_devlink_reinit_up - do reinit of the given PF
>> + * @pf: pointer to the PF struct
>> + */
>> +static int ice_devlink_reinit_up(struct ice_pf *pf)
>> +{
>> +       struct ice_vsi *vsi = ice_get_main_vsi(pf);
>> +       struct ice_vsi_cfg_params params;
>> +       int err;
>> +
>> +       err = ice_init_dev(pf);
>> +       if (err)
>> +               return err;
>> +
>> +       params = ice_vsi_to_params(vsi);
>> +       params.flags = ICE_VSI_FLAG_INIT;
>> +
>> +       rtnl_lock();
>> +       err = ice_vsi_cfg(vsi, &params);
>> +       if (err)
>> +               goto err_vsi_cfg;
>> +       rtnl_unlock();
> 
> Maybe just personal opinion, but this locking seems a bit confusing to me. I think it might be more readable as:
> 
> rtnl_lock();
> err = ice_vsi_cfg(vsi, &params);
> rtnl_unlock();
> if (err)
>     goto err_vsi_cfg;
> 
> Then below...

Agree, I'll fix that in the next version

>> +
>> +       /* No need to take devl_lock, it's already taken by devlink API */
>> +       err = ice_load(pf);
>> +       if (err)
>> +               goto err_load;
>> +
>> +       return 0;
>> +
>> +err_load:
>> +       rtnl_lock();
>> +       ice_vsi_decfg(vsi);
>> +err_vsi_cfg:
>> +       rtnl_unlock();
>> +       ice_deinit_dev(pf);
>> +       return err;
> 
> err_load:
>     rtnl_lock();
>     ice_vsi_decfg(vsi);
>     rtnl_unlock();
> err_vsi_cfg:
>     ice_deinit_dev(pf);
>     return err;
>> +}
>> +
>>   /**
>>    * ice_devlink_reload_up - do reload up after reinit
>>    * @devlink: pointer to the devlink instance reloading
>> @@ -1289,7 +1342,7 @@ ice_devlink_reload_up(struct devlink *devlink,
>>          switch (action) {
>>          case DEVLINK_RELOAD_ACTION_DRIVER_REINIT:
>>                  *actions_performed = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT);
>> -               return ice_load(pf);
>> +               return ice_devlink_reinit_up(pf);
>>          case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
>>                  *actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
>>                  return ice_devlink_reload_empr_finish(pf, extack);
>> @@ -1695,6 +1748,7 @@ static const struct devlink_port_ops ice_devlink_port_ops = {
>>    * @pf: the PF to create a devlink port for
>>    *
>>    * Create and register a devlink_port for this PF.
>> + * This function has to be called under devl_lock.
>>    *
>>    * Return: zero on success or an error code on failure.
>>    */

<...>

