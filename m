Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA9E81A8CF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Dec 2023 23:12:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 377176158F;
	Wed, 20 Dec 2023 22:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 377176158F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703110361;
	bh=DUaKhq/Yvk+/1ZATa4XhMvwlaUaCB/zoTxdRDaD9kA0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nn1G3HzgQL707QISAPTvHWxrs8O4+8uTNqozLKQbqeQMTdY7PuKwC371+z/dA6qE2
	 DeEGUFMbizzYt0YD6s4MjxFhQZaQbOi24OFkNPxTNnFc/h8ZD6HOek9ZzT7DrOajtY
	 eStud42uQs7rPzeEffD1UnnQVcYy5pfc2vnRerSOwNt/WzKGVgbNEyMl1XC/5Xeioc
	 70npE5n4ZVKzVTNDvQen5wczkBYyh+7KDhHPGgu+L3EfBI1UllhMgbReMYRjx2z77N
	 aEmDzqjuK4XKrzGXXnYdZKvt6taM2hB82CjWtyufPXLz/zaXj7orQzmo2u9+CEHTPD
	 IMxl8OQLCYmMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id elR_cxfmCGvq; Wed, 20 Dec 2023 22:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08ADA61098;
	Wed, 20 Dec 2023 22:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08ADA61098
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A4441BF471
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 22:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4B5742189
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 22:12:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4B5742189
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZbNkeTI6FH48 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Dec 2023 22:12:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA68F41B2F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 22:12:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA68F41B2F
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="462328317"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="462328317"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:12:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="18106332"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 14:12:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 14:12:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 14:12:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 14:12:30 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 14:12:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UPQf0mydKQipqYv+huAMAAJ4vhgy6pRNTYmuz2vnnQXP1p5Ta+rSYqGJrlKSXVtgxN1/ikBumBw0F9wRTqzhv/AHb7GzhazTrCtN+YqNIvqk1QUMbQRT/scqffFjASbSHkR8aYArcsLBtrQ9ngvdcHbJHppsnCBzQ565w9ZX7+LBnup6eBKFZ6FdkIsDFDqAD7BQRQQU/PnmyLK3orBUDUIvddFo6WijzoKTOp0md2fThFpLgM46XwpiFyhXyc7CWLNpXDY/0Gw8E6aT1r2A62TCQUp/zcdrT2V/db0/Lba/WkYRqpbQWOh5Acc+01damrysYh5cUOwpSfX+XQL9Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d/P2gnmnhULEGngV8JvnCPCmVVwNVtDhQ6QWFP1JdQA=;
 b=eGcsL2R75363+Y8E56BTm55JD+Re0LMEZOCy89lFT8tglEkVjLy/MgYaXOqjVIIbvdqFvyZtAH9azsChsCdfN/zH7p2gXMY++iH+wO/IGODT2zVPRDD5lYGnbSX0+Ae5LGpQVq0PLmB0WLdvwSem1TVJM3bsvZKbHGvSmDv90F3MZlLD51wZ1odaRA4HpTm4X9dYehtOAPEiFaPKndxOuSlEzXobpkfoAZ1AATWUdegGaKuBLuBjsfT4Xgv/f/GpqmANkqEgSb2FZuu3vJV3+8hibeGcMsxpOc/CdzFiYkZObIG5pvgysVyr8TXt40Ch0dz3mjoZqQsB0R9X6ErsOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CO1PR11MB4788.namprd11.prod.outlook.com (2603:10b6:303:97::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 22:12:21 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 22:12:21 +0000
Message-ID: <fbc0ae3f-ced6-39c0-2e9c-f5d56cb26d43@intel.com>
Date: Wed, 20 Dec 2023 14:12:17 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: "Nelson, Shannon" <shannon.nelson@amd.com>, "Pucha, HimasekharX Reddy"
 <himasekharx.reddy.pucha@intel.com>, Kunwu Chan <chentao@kylinos.cn>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>
References: <20231208031950.47410-1-chentao@kylinos.cn>
 <BL0PR11MB31226B042632413AB8C12D63BD90A@BL0PR11MB3122.namprd11.prod.outlook.com>
 <bd95de9e-1dcc-4fbd-ba47-9d33c8bdc6fa@amd.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <bd95de9e-1dcc-4fbd-ba47-9d33c8bdc6fa@amd.com>
X-ClientProxiedBy: MW4PR03CA0182.namprd03.prod.outlook.com
 (2603:10b6:303:b8::7) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CO1PR11MB4788:EE_
X-MS-Office365-Filtering-Correlation-Id: 12504d78-23dc-4d42-ffc5-08dc01a8bcc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xmeCBDphMQ1oz3YIx2+gagYr3X5w3PwhQ+gPldy5fpMsHFdNmZ3Auv0fIwJwPAth0ncEeSX5Uec8M9/bbKoIXNKpwO0FnBAfvV9Ch4lsW1yaLAqfDkPU4Y2goX/RDG+MqL9KuubgXGF5DuQT2Rr6w3hwxqE+XlblqEKTeGLKnSdbnYLt7svvOz/ZbyoxURvgXEVEEFCjFfRhLxT4TJwolOt5CB72aIkb65J8l/puFW1jgP/QNsHrwD9+AdUe8cW+dNXrLRXiojDNxP1zc6zi4XZMsaYbfecxTo3WMCSOD1U54/YJFVBdb/ZVJjxOH1Pyih84hcoYfNrDsSdE6dXYzALF/oVDIPhUflpNEkfQFpFQUgQhdKJiJsrSEje/XSmU7bP7oncb65RCGyJVzaU5aV9i5GNQOnx0VHxgcxBlAQnOGZwi5Cj2ImhJo2qnAZ4vkCvIFVM2fYiWTLA5awReVtEPZHTE/wMWE/bxLH8Um57gfJ8LBEiYQQhj7KeE+PLl2h4M2Wg10ZD+tHr2TrfuG5CK+9nZoJ/rV3qqEVIIph+d2dcysF3GcyhLsJ9uYV9YzTGYg8WBEYd2oviR5K1jcuUp58PIt4DqCt9eik+Sqd6OdvUTSnZRvbGZu081dCgR4XxbSvblm5Ieoz2SreiQhtlaF38HSeQVCprho0fOTn4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(346002)(136003)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(6636002)(6512007)(921008)(41300700001)(36756003)(4326008)(8936002)(110136005)(31696002)(2616005)(316002)(478600001)(66946007)(66476007)(54906003)(6666004)(53546011)(66556008)(6506007)(45080400002)(86362001)(6486002)(7416002)(5660300002)(26005)(83380400001)(8676002)(2906002)(38100700002)(31686004)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUdBendXcm1HZFU5bUgybXJHZ2lrZG5IMEpDVFA1UW9KQjlXb3g3TWlnUlQx?=
 =?utf-8?B?SWZua1p6WGVlM1hCdzJKSUxHUHh1dTFteVRFQ2xTSHlUWWVtS3ZOcEozU1Ex?=
 =?utf-8?B?OVYxT3BSVG9CZWN5ZkU1SHZWMlJ1MnpHVUcwRDI2dzhLZXM1K2lFSXptZHgz?=
 =?utf-8?B?ejIxcEhBZ3NiV1NKZ0Z6cHh6Q2tHdnJVZWtqWFlWdkpKT2kzUWc5Qk9EM0NK?=
 =?utf-8?B?b0JGNVpjT1BjZkppK004UCs4RkhYUm5QTkFURjdWU3crbmJGNG9wK0NxVU5q?=
 =?utf-8?B?bnpIbUtFMXNKVy9OZDNFRXRzSklxM1RrNHlNekRyZDQ3NGxpSlNoSHFMNkR4?=
 =?utf-8?B?Q0xlQ0F4RGlROHVjNmxjR1RFZmxiZjV4TlcvNHlJUkd3R0FqMFBuSkw1aFhj?=
 =?utf-8?B?YzdLOEdycnRQOHd1ZVZpSU90emkzcTdKT3RZNGc3aXRxRVdyNTd1ZFJOUm9r?=
 =?utf-8?B?b3c4S0pBRzRsc2hnNDhiMStQellFTGExUDdZek5mQ3pNdzNHSHoyeU9IN2hE?=
 =?utf-8?B?QktGRWJ6cmk0blRiNlpKc0ZleFFYUVZvajkxeGw4dFBhbVlVTUdMckViWXJV?=
 =?utf-8?B?YXdOdzdoRVRoUWRpNzVXZjFwTzNVcTQ2OFBBSVhkbHBnMS84aW1BNUdFVG5t?=
 =?utf-8?B?NUNpMGo1WWZ5ZG51alVDQlBCQXVXMnpzR1JFUTE0NCt1aEJPY1E4U3BzKzk0?=
 =?utf-8?B?VVBPeHVtekR5Z0hYelMrVm1YWU9rTDlaTVNaVWtUWVNyZ2dRY1VkNk5QTHJw?=
 =?utf-8?B?czdsMWlvakFVbWp1WVdmTVd4U21jYlR2S1d6LzRQTVFCenVzTWhoVWFGek5l?=
 =?utf-8?B?WHh1Z0duektDWlRjcG5sS3Q3aTV5eXk4OEtFcWYzUHA1eGgvZUpsd2U0MmlQ?=
 =?utf-8?B?U285eUhVcUlib1JNU1ZNYUptZE5FTit3MVUxOFdqTFE0eTdGcHZjOGZPd3Ny?=
 =?utf-8?B?N0lJeHB0MFJ2NXNTZzhBU1lONTdoSXp4UjI5VlR0VnNsWURtN01ZQjIzNkdM?=
 =?utf-8?B?YkhvQ0h2N1UrSzU5RCtzUDNSa2FYS0YyMTNSZkg4ZzFhQVhOTklKenhPbE9X?=
 =?utf-8?B?SFFYdWF5ZWRoU0pXQnRVUUlRTU9xQUN0QnJqZmpuQk0yc2pKWU5WL1NPSWFU?=
 =?utf-8?B?bzd4ekRxWW4xN2RPS0tEOVRrTVhkN0htcStVSTllN0dKKzhVekNzZnhDaXF6?=
 =?utf-8?B?THljcDc4a3dEYVBKOVVYSGcwTWN4WmdwRW5oUmlUSlZpckx4NkZFK2ZmMTJP?=
 =?utf-8?B?d3Y1T0VyM0l4OHRGZkV6OHFIT3JRTTI4SXR0NVBOanJHTWVZcFg3K05DZXk1?=
 =?utf-8?B?Q3lsdzF0OVNSVU9EL0grQXh5SGxNbzRCL0UxckNhVnIxWEs4VjRubW1teDQ5?=
 =?utf-8?B?UzJITWFLalhzaC9xeVVWR1kzOTJ1RGtlMm1QYjdYWEZ6MnRaYXZQNEtTWFls?=
 =?utf-8?B?RTZjZFNVWmU5bFh3YTBLT3IxMjZTOUVZekhOUTJQZUI4Q2hhZ240ZWRiOGpO?=
 =?utf-8?B?TVZKUGN2N2hCQVVDdW9mOVBzQzE3YTFaRTBYQk5KdFJtTVVheWYxRlJRUmdx?=
 =?utf-8?B?U0dLRUhkVmlYZFJsZExnb3QvUHpocjJ3OCtsVzhiR3V5NVpHT0VMazhqeE9y?=
 =?utf-8?B?MmZXcHNaWVBaZnNTVXVKT1lBS3NHMU44SlUrUng1Mko5NXQ2RVAzZmNjNDkw?=
 =?utf-8?B?VWN5ck16UUJaMzBjMkttY1hnRENuNzZ6UFg0MDdCdUl4WVlNRFlBRm5xQjB0?=
 =?utf-8?B?OFdEV3grNEVFcGsvUWtJMjdsQjdrNjFSZUpuakwvNmxpYW9CL0VrWHBkdzFh?=
 =?utf-8?B?dWNkRVRvN21tcVB0VlRHd3VJWWhQbjM3WWxqTXB4NnIzbHp1ekNmNWdCZHR6?=
 =?utf-8?B?c0piRkszZVdqQUVJc3k1ak04SjNocTBqTUJkcXZwS01YTlpSUk1aQjNabTkx?=
 =?utf-8?B?RFRVQ1NKTjVIcmJlQSt1dmxKOTJ2T01pVHYwangyMXZ6K1laQjI2Y01MMTVO?=
 =?utf-8?B?OXJDNmRwNlVmTUwwNER2aEFxQ0pZSENPNm03Qy9JNW9DT0N6TWJrbE1yOWRo?=
 =?utf-8?B?UmV5WDU4WGJEa1VnT0paUnRRcjVRbCtwUmN2UkZVOWNPOFpkSjdjSzBlSXZ4?=
 =?utf-8?B?STJ3NTZXYms1ZzRTU3pUUFprVFhhWFZ6UkQzbHBKVEl6Rm1jaCs2QUhpQXd2?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12504d78-23dc-4d42-ffc5-08dc01a8bcc1
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 22:12:21.4805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1AXys71KWPSF8Yq3U1+CHagGj+s5Vh2LgGrEpaxnACn/vgzhsiLXfPKY9+xQe8FFiaCKsoWHkMWS9keRC7uzA+0FCA4TI5qOaSJnk9bj10o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4788
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703110353; x=1734646353;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ryC2vTmuC55t1OvGgnBxhUuHPVT41acH/z8oqikcnNo=;
 b=LNFY5uoybbdRgJ3JxHpjeVRBIWmO9A0car0hcg655lAM1xMbJfTJazYK
 KKmJ4ScqJtTDfuYgaoNzGt/0U1x5BCNeIm1tVrZ0MBNCBAwp0oSPMGZWx
 6zTG2ZeG1qFOy3uWlfvDlYBQxeu28O33MZn/Cco1Z93VhScMRF5D1AJxL
 7JXsb4XEtMsdFddfjbvY3RSvxU3y2WtQQBUEIj4VrsvfoE2tgAg0hRY6q
 in1f9g7ui8l/5Do03aQpLZpylckACEv/KoORSs+oqGj9ezpwdif46Bsub
 PunmbmLJxAkBcbkn9m5XFHra0kg2SpWBp4XMEJM7F0i26Kp/UmviE+HEZ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LNFY5uoy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next] i40e: Use correct buffer
 size in i40e_dbg_command_read
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
Cc: Kunwu Chan <kunwu.chan@hotmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <horms@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMi8xOS8yMDIzIDU6MzIgUE0sIE5lbHNvbiwgU2hhbm5vbiB3cm90ZToKPiBPbiAxMi8x
Ny8yMDIzIDk6NTQgUE0sIFB1Y2hhLCBIaW1hc2VraGFyWCBSZWRkeSB3cm90ZToKPj4KPj4+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+PiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVs
LXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiAKPj4+IE9mIEt1bnd1IENo
YW4KPj4+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2NSBpd2wtbmV4dF0gaTQw
ZTogVXNlIGNvcnJlY3QgCj4+PiBidWZmZXIgc2l6ZSBpbiBpNDBlX2RiZ19jb21tYW5kX3JlYWQK
Pj4+Cj4+PiBUaGUgc2l6ZSBvZiAiaTQwZV9kYmdfY29tbWFuZF9idWYiIGlzIDI1NiwgdGhlIHNp
emUgb2YgIm5hbWUiCj4+PiBkZXBlbmRzIG9uICJJRk5BTVNJWiIsIHBsdXMgYSBudWxsIGNoYXJh
Y3RlciBhbmQgZm9ybWF0IHNpemUsCj4+PiB0aGUgdG90YWwgc2l6ZSBpcyBtb3JlIHRoYW4gMjU2
Lgo+Pj4KPj4+IEltcHJvdmUgcmVhZGFiaWxpdHkgYW5kIG1haW50YWluYWJpbGl0eSBieSByZXBs
YWNpbmcgYSBoYXJkY29kZWQgc3RyaW5nCj4+PiBhbGxvY2F0aW9uIGFuZCBmb3JtYXR0aW5nIGJ5
IHRoZSB1c2Ugb2YgdGhlIGthc3ByaW50ZigpIGhlbHBlci4KPj4+Cj4+PiBGaXhlczogMDJlOWMy
OTA4MTRjICgiaTQwZTogZGVidWdmcyBpbnRlcmZhY2UiKQo+Pj4gU3VnZ2VzdGVkLWJ5OiBTaW1v
biBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+Cj4+PiBTdWdnZXN0ZWQtYnk6IEFsZXhhbmRlciBM
b2Jha2luIDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPgo+Pj4gU3VnZ2VzdGVkLWJ5OiBU
b255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Cj4+PiBDYzogS3Vud3UgQ2hh
biA8a3Vud3UuY2hhbkBob3RtYWlsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IEt1bnd1IENoYW4g
PGNoZW50YW9Aa3lsaW5vcy5jbj4KPj4+IC0tLQoKLi4uCgo+IE11Y2ggb2YgdGhpcyBkZWJ1Z2Zz
IGNvbW1hbmQgY29kZSB3YXMgYW4gZWFybHkgZHJpdmVyIGhhY2sgdGhhdCBwcm9iYWJseSAKPiBu
ZXZlciBzaG91bGQgaGF2ZSBnb25lIHVwc3RyZWFtIGluIHRoZSBmb3JtIHRoYXQgaXQgZGlkLsKg
IFRoZSAKPiBpNDBlX2RiZ19jb21tYW5kX2J1ZiBpdHNlbGYgd2FzIG9yaWdpbmFsbHkgbWVhbnQg
YXMgYSBzY3JhdGNocGFkIHRvIHB1dCAKPiB0aGUgJ2xhc3QgY29tbWFuZCBwcm9jZXNzZWQnLCB3
aGljaCB3YXMgbm90IHJlYWxseSB2ZXJ5IHVzZWZ1bCwgYW5kIGFzIGEgCj4gc3RhdGljIGdsb2Jh
bCB0aGF0IG1pZ2h0IGJlIHdyaXR0ZW4gYnkgYW55IG51bWJlciBvZiBpbnN0YW5jZXMgb2YgaTQw
ZSAKPiBkZXZpY2VzLCB3YXMgcHJvYmxlbWF0aWMgZnJvbSB0aGUgYmVnaW5uaW5nLsKgIE5vdywg
dW5sZXNzIEknbSBtaXN0YWtlbiwgCj4gaXQgbG9va3MgbGlrZSBub3RoaW5nIGlzIHdyaXRpbmcg
dG8gdGhlIGJ1ZmZlciBhdCBhbGwgYW55bW9yZSwgc28gdGhlIAo+IGJ1ZmZlciBhbmQgdGhlIGk0
MGVfZGJnX2NvbW1hbmRfcmVhZCgpIGNhbGxiYWNrIHByb2JhYmx5IHNob3VsZCBqdXN0IGFsbCAK
PiBnbyBhd2F5IHJhdGhlciB0aGFuIHRyeWluZyB0byBwcmV0dHkgdXAgc29tZSB1c2VsZXNzIGNv
ZGUuCgpUaGFua3MgZm9yIHRoZSBoaXN0b3J5IFNoYW5ub24uIEknbSBub3Qgc2VlaW5nIHRoZSBi
dWZmZXIgdXNlZCBlaXRoZXIgCnNvLCBJIGFncmVlLCB3ZSBzaG91bGQgcmVtb3ZlIGl0IGFsdG9n
ZXRoZXIuCgpUaGFua3MsClRvbnkKCj4gc2xuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
