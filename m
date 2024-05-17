Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C698C8290
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 10:29:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A180404D8;
	Fri, 17 May 2024 08:29:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VOJaywZfInwa; Fri, 17 May 2024 08:29:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B87D40542
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715934566;
	bh=4PwoNKHVigyQNcqMKJd3RFrYlF28hna5uhHvTQKhiBg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j1jBJFe2uFkQyH/nGEV0QoxkudPSAlbdkYY5cwlzlwO/2Gddvwaph/Ko47QbCJDSi
	 3818ebvV9ozYJ/s+wlQylnhO8b4jqCr/Uws08l7rJ4eRawr0j3kxlOfHOt92V5nEof
	 2n9DtvMVZMVKdwvotu1BO5qOkWtFdBkriISzy0aGQBTmN1W3d44F2oZX5cDKh+fzL3
	 IxyzcfyzVsVRsAmrdl1BCq9t95pSCvM9pBroPM36N22XD9zJSsIY2X+1P6eMdQmRv1
	 bje3hpgGZsjEzrWsC+Bfj1ymGbFjSRuV02mzYnybfGu4GL+rtOdTBgSpxAYe6GIMEe
	 KyIGHVzsmY65Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B87D40542;
	Fri, 17 May 2024 08:29:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30CB01BF20B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 08:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2991240532
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 08:29:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a5o7FOCWvzVy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 08:29:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0A14540520
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A14540520
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A14540520
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 08:29:22 +0000 (UTC)
X-CSE-ConnectionGUID: Auug3ubHSHSY0Xhpw1J1sw==
X-CSE-MsgGUID: 0ZVqMR3SRdeAtxzjkkUUjA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="22678138"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="22678138"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 01:29:21 -0700
X-CSE-ConnectionGUID: SYOGhRV8SLedwSqHB+wsHQ==
X-CSE-MsgGUID: Xk2H9iQBTseyzbp2R0Nddw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31819345"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 01:29:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 01:29:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 01:29:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 01:29:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 01:29:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RfQroU1g8Ld5EGz8MRH1LyH3Hoojuu6XOG7leEKaasBjicryueUsiqwypt27mpz47HPnJUBnU+gvMO6PK2sqGhufWwkozwbMYiAUM1pm8FmN2/JGcrwqfqKlmedav/VJMTjHmW8NaFQFZYQajapJlwHSnjtm7AgepueH2Es+kxw5bg8j3tShPnE8sph6vDd9Tw7y6Vx2g5Px/3HYrN++kmjQK54aKIEXn6J5dau3kboOe1HZu4eL1fHOePwAXEVUnUZNChWztSEBSqPoBj4ASKSKzosTebm/cQL93GuonbN5Q9lKDK2giGc6rtcyPjeaqavlh8dLXOjjUOch4HdBwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4PwoNKHVigyQNcqMKJd3RFrYlF28hna5uhHvTQKhiBg=;
 b=Iqb6+dKq4d8fqfVSglXhRa7NpOgEQkwtYdb16EmWE7Xla91pAIafr3bNOjAQnhoZ39CG+tsgE3mMSFCn/PPgTAYP5V9RylljJZgBmQ0LM1nvcKFT9KT2CdlCDkAUOh8+j7b27TpiX0rgdrRUWFgWBTLqNy8vq72cTY4s6LkXXv/1wCRCrD0se1ogUZMDzUKEEIWool6EGG3cXA8jlcN+AonTvqmurbGUNzbtqfAaTFyrT99+CY5fAXXraRDz9go0f5EPbJCLu9Dh5oprzU3wNiwgmxHuyHJdBOmSmH372/z4T2NYaPcvhId+5yoqp66cG/HguLUsTadvsdubRonu6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH8PR11MB8062.namprd11.prod.outlook.com (2603:10b6:510:251::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Fri, 17 May
 2024 08:29:13 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::bfb:c63:7490:93eb]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::bfb:c63:7490:93eb%3]) with mapi id 15.20.7587.025; Fri, 17 May 2024
 08:29:12 +0000
Message-ID: <428284fc-232a-41d7-a8cb-f4b01fd84691@intel.com>
Date: Fri, 17 May 2024 10:29:08 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>, Brett Creeley
 <bcreeley@amd.com>, <netdev@vger.kernel.org>
References: <20240516140426.60439-1-wojciech.drewek@intel.com>
 <342a9b10-97d7-4720-92ef-a548179b990f@amd.com>
 <eb7293ac-3674-4e89-a11d-a8b8fd470dcd@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <eb7293ac-3674-4e89-a11d-a8b8fd470dcd@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI2P293CA0008.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::19) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH8PR11MB8062:EE_
X-MS-Office365-Filtering-Correlation-Id: a6714e74-2092-4686-ef0b-08dc764b6e85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmZtYUYza1kwM05BcERSMDc5QmQ3MU43RTI2VDZrei9wRFlEYy9vZlZ6VmZu?=
 =?utf-8?B?UFFIaGFSbk5XSDNiY056ODhUMnVJQWVHNVh1YkhHaFM1MXJtMHZpS2JXeGJN?=
 =?utf-8?B?SHpIU0w4WW5QMEdPYkF6MG1ZTXdHbWNMQ2J6ZjFjdk1FQ1lhdFM2eWJOT3hZ?=
 =?utf-8?B?cDB5VE04RlpQaFF2Vk9XelpVZXVzeGsxVkNXcHdTM292WFhSMjZqYis5TmJN?=
 =?utf-8?B?R1J2SVBYNWsxcitwV05HMmEwMS9oY1FiSlVaSXFMc3piVmIrRXZPczNjZ04w?=
 =?utf-8?B?aWNSTjAzZ0g0eVFsRmVlQVgyTkVVMjk4ajVjLzJNTkxOTFR5YzR0a29IcGs5?=
 =?utf-8?B?cjkrbll2TW91RmloR3RlbFFyblJmVG5sZm5VNVBNWnc3TG1HcFJmMEdNelJ6?=
 =?utf-8?B?Y2l2ZmkvUWVIQk1sdFBIVFlUVzVkM2F1WEczSzREV3NUc3FOT2FQUFR5eDI5?=
 =?utf-8?B?UjlZY1lzZlRmR2tQV0YrWG9YcWpRWm9jOEZ4ektWb3I1TnQ5S2dxL0tOemdV?=
 =?utf-8?B?OCttNXF0ajZrRXVQL2txMXZkaHU0TEEvdmdIdXEvYzBTZGxJS21CS2F5cTNW?=
 =?utf-8?B?TGdBK3Y3MXdiTnF3S0dVSk5ObTRNYm1UUzliL2JIR2RORTZwUDJ5ZDNRamZ1?=
 =?utf-8?B?OEU2NXpQK05rY3ExS3ZrSzQxRFg2ZXp6OFBteGZhdG1tTEtHZHg3VzdmTGx2?=
 =?utf-8?B?emFib2FtRHl2MEpaa3VQK0RRVWtEaWlKTFhYbXIvVnNuS0FrcWE3djRQb1pK?=
 =?utf-8?B?OU9JUS9VTHlRaThDTVFuNkFBOVFvbjQ5cFdjRkg0bjVZZGVlcGFudEI0K2U0?=
 =?utf-8?B?VHhacGJYRnkrejZvNi9HTTBEQzJwMFVXcDlkSGdpQXZGZ1ZxQnJnYjU2WExz?=
 =?utf-8?B?Z2hFOTVzQzhnRksrU0tvVS9mcWtENFFvTUhTenRiOGRxMXFPbkVWVHhadTZM?=
 =?utf-8?B?enNHaU1pL1VzRHFaMm15Vk95Nlg5V0FONzQ3d0pSN3ZPUXZnbmJEVUJTQUJz?=
 =?utf-8?B?L0pSZS9IMVFONVNENmJXRkRNY2o4WGZGeUM5NlE5cEYxUXZ0bnJVdHBGOWFk?=
 =?utf-8?B?VE1rS3RHeTJqYnhMR1BtZ2RKTHBabVkzZVdQQ3ZQSHZ1dUgzRVJGUUpuL2pW?=
 =?utf-8?B?K0dkMC9RbWRDbVRDN0QwV2lsekp6UEZ2WlR0RS9ucUpVaUUrU0NWUlFvZ05P?=
 =?utf-8?B?ei82Q1NyREZROGxyVW1KSDZxOE1kTjR4ajFBREFDV2ZJMWUwM25rb00xSjM0?=
 =?utf-8?B?MUpaZWtHUlIzVHIrVzFZc2g0SkNuYTZiWThvWS9MYnUxWitsTTVyRTVXQ3ZR?=
 =?utf-8?B?eXRxNDNiL3dwMkxjcmxTQ2JCRG8rbXlNQ0hFTjZieURPRGMrdjlkMjdpcmNQ?=
 =?utf-8?B?RFlPQzBJNWV4OVZBSzdwOEU4YTd5Z0ZaeUhEL1BnRVBObXc1N1VEejN0OUxo?=
 =?utf-8?B?K3pwajhuRjI4a1pyV3ZtVEpjVVJ3bU84cnZjTVVhZzJkZS83V2JOK1QvUkpY?=
 =?utf-8?B?UjRmTjFPZlpINkhDWWdWU1g0M1J2amIxTEZTeEtaM1FneXdWZStSb2lmN1ZT?=
 =?utf-8?B?d0FSSkFBelA5QWUxc3pFUEI3UWxrSnRNU0xQcVJPT1Z4bW5nRGRXdEN2eWdL?=
 =?utf-8?B?SU1ZaitSNjF1N0x4VGg5dGgwWFpScGpPOE5BV0kxTXJzckZ3amUyeitxZmhu?=
 =?utf-8?B?NGswM0RzZDBlWlYzY3FackN0VGhZSEJHSHUvNXhuNEFVcCt4d0YrNmRBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXd3c2RBWGc0L1hMc2E5OUdUZ0JoMytYN2MreTB5ZlRXbW5zTDdIRjlDTno1?=
 =?utf-8?B?VXcreVJsUEVBdWFzd1ZhdkpvTEVISFFzRzZCckpUalBqQlVEUHE2M1hNL0FP?=
 =?utf-8?B?UTByWXVReEN4ZzY2QkxValIwQ3ZlLzZXbXVSdU5hd1N0dkI2MDlGRFY4MlU0?=
 =?utf-8?B?ZmFkY2NwNWhBVnhZVWNOa0pOQWFPNXpQS1Yyd1Y4UWhaNkdkc1B3OGt1R1k0?=
 =?utf-8?B?eHFYWnpnTTVmOHAvdUZqdGhTUUJzb1BEQmpLNXVEbHEySHc1alRKSWZoUWVF?=
 =?utf-8?B?ZTZYazl6SVliZkcwa3dkeGhyZTBHQ2hyaFdaTVg4aWdVcnpmeVVtMjRJMk5w?=
 =?utf-8?B?NENxRm1IQ1d2QUxyRDJDazgyTWFPUGlPN0pqK0hvZVJHNE9aOEVKNXJ6bmhl?=
 =?utf-8?B?V1ZTdzJrTWtjSSttdGcvcUJ6WXc4K2pYMmgreVo0VmFSN0tncVM5SFFVbzNR?=
 =?utf-8?B?bVhaeXJpOFZDWkVVbC9zTTlGR1Y0dERjQXdua25iMlB4aldBZ2kvUUR2S0wv?=
 =?utf-8?B?WXVzMHU0ak9PYncwNk9NSjVYMjlrWGVWVkNkQzV5TEYyZ2lSZ2h1ZC83c2o5?=
 =?utf-8?B?dnc0N0pHbXMrYXkyaCtpUk1ob2xEMlA5eEN1eS8veUNNTkI3UGR3b1BkaXMw?=
 =?utf-8?B?TlhwdVhRaEtTYWp2UmIxS3dMb0JkaFdHSVUveWJuaFIva2tHZzVGcFE3VFRW?=
 =?utf-8?B?bFo0OHN6eGlzdks3dXpFVS9lSm1GandaODJ3dEJFYlZmdGtud04yVVkvMGdn?=
 =?utf-8?B?UElmRkRKT0dNeVFFUkN0d04yVjkxWGNZclNxVXdmMURQNTYxRHVoWmJFOCsy?=
 =?utf-8?B?VFVqTGFxcEZvaHF1OFNwbG5seHVIQjBJK0tld0Fjc1JxbkVmaVlDNjMwU1k1?=
 =?utf-8?B?L3dsV2FwalJEVUhCN1p6NHdOQlJwV2lESXQ4eUJWN3cwNEZPSzQ1dCs4dnpo?=
 =?utf-8?B?bVZYdk5tTnpGUi82bURXMjBaN21qbUJ3d0xseUVUemdjc1d6dWx5dHJFTTd0?=
 =?utf-8?B?anJ0U1U4RjRNa3hNcC95Q0RCazhoYkdmL2NROVFTSmwrYlJPV21qSnc2Tkpt?=
 =?utf-8?B?eFJGWVl3YXZQVzJ2MWt1dzNLZHZETlhEejhCT2JxSlNRWUJQTGppcUFnUTNL?=
 =?utf-8?B?b24yT3VzbHptd0tIY1ZRMmU1RXpFQWZTUTNCK0JYaFA4WjZ3TUw2YjF3TlNB?=
 =?utf-8?B?TE9vWG82eG9lS2lKaitIdHJmTi9OSElvMDFRazYrZG5xUG5FQUkveEx5Ukgw?=
 =?utf-8?B?bE85MHd1dUdZMnVuRzVIN3VjTldSQWRVOXFjRThSWkRNS1dEdkVqaXFJR05v?=
 =?utf-8?B?TXlVQm54ajMvTVE2WmdxTzVEVmhJYlRleUVVdUp4YjByMldmaWI3d0M4amRC?=
 =?utf-8?B?K0VKQnQzWVp0OTZyZkFLR25IOHZTdWpHNFZKbmtRMzZlMVJxSHJFeHo4N0FT?=
 =?utf-8?B?Q2twSW5NekQ3SkdxOHhaNUhTdURkN3hveU81U2ZRaEhBdzBQZmd1b0VEVlRX?=
 =?utf-8?B?dmhyRkdsNDIwaVY3NkZrc043bHgyV29lT2s0ZjJPQi8wcjVpK2MrZEJGbGg2?=
 =?utf-8?B?WVFNSEU3MEhzMUVKR0YwUlBkODhXSXJJdGpHUXE2dU1NMEo3NDQxNHFpNklR?=
 =?utf-8?B?NXgrK2l1eXhvVFRKMjl2YmxEK2dhYlp5VVhXdnBWcnlDZmVnOERjTkdiU21q?=
 =?utf-8?B?VUtpaWpTYmsxbXRGMW1NL21CYjRIYWM5YU95WEVmWUxSdzNZWGUzSVAzNGxh?=
 =?utf-8?B?bTNXWTZubUwwZS9OYWZMK2l4TytFWE1aTmNBSnA1SjNnbmZlUi93VGlsSjVM?=
 =?utf-8?B?cmVxUkpCdlgyNzBVZ2ZtR0VCV2NqOGJPTld3c0lhS3hrZGhoSnpNU2NKU2ZS?=
 =?utf-8?B?cXh2VFZ3R1ZwUWN6RUtHd20rMzU2Zmk5UHJ4Y1JSL1k2NkREUlJlQjNhVEln?=
 =?utf-8?B?NHB5S1NFOUZpRnhEbWpmVXEvbHY5Z1cyTFRta09kMHYwSHV6c25pL3Zxem1t?=
 =?utf-8?B?dnFwQ01VRWFlWWU3dVEwTVVIa2ZoYnNNRlZWUkRlcGFTakJrVVFUcWVOUTZK?=
 =?utf-8?B?SFN2end3RFRBQU5LUnpWQ3NUNENVMUN0cFMxMklPZlg0RW9tRWxkbkx5THRl?=
 =?utf-8?B?VldwWGtzQVpvNkZ6QjZXYWJublJCeTVsbkFScHlSTHh2Mmk1YjJQTi9EQVhV?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6714e74-2092-4686-ef0b-08dc764b6e85
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2024 08:29:12.9405 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qikzmRp0Wz2bStp7fBXOv4Pt8t5VsBRrekX82fEEHiOiApb3aWEKYg7QQI8CZalKjcVOhKPwjcUlm7sKRhhuAbg6PsKVej2cvgUQJV5PFE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715934563; x=1747470563;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/s5dt3d+yg8gaIuXo6U/xA18XoOhpEKIPQmmM6/e/ck=;
 b=Lmi9oE6JJ8m4EPns2QmPm5eLO+Ps8hU3wDcHFf36GkVFETOtEAMIFE9d
 AA36nU9YL9Uo71sapYfHSXXu4gJvcm9oiieBPqcAcCP4oxkM9PGRu15eq
 Gea3hRwNWI2Bw6VxDuGbHsRbbu/AY/3sL5WLg9t2IXciQL2hQflN/6or0
 CikwNv64KsczS5rtDDjxetmQadVA1UyqMVde8b4Z55MQooLyALJS+6N3v
 mLPQllECNnTEBqNyNP1L/vSQCm0MlAbpvP19E3yCr111dS4PinmGIrYiT
 naUAsTViEIdZPYYqX5dGFsnYq3dzW91TdfgbDhCXlXDjgSiKPIT8tKwwn
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lmi9oE6J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: implement AQ download
 pkg retry
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/17/24 09:49, Wojciech Drewek wrote:
> 
> 
> On 16.05.2024 18:36, Brett Creeley wrote:
>>
>>
>> On 5/16/2024 7:04 AM, Wojciech Drewek wrote:
>>> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
>>>
>>>
>>> ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
>>> to FW issue. Fix this by retrying five times before moving to
>>> Safe Mode.
>>>
>>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/ice/ice_ddp.c | 19 +++++++++++++++++--
>>>    1 file changed, 17 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
>>> index ce5034ed2b24..19e2111fcf08 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
>>> @@ -1339,6 +1339,7 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
>>>
>>>           for (i = 0; i < count; i++) {
>>>                   bool last = false;
>>> +               int try_cnt = 0;
>>>                   int status;
>>>
>>>                   bh = (struct ice_buf_hdr *)(bufs + start + i);
>>> @@ -1346,8 +1347,22 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
>>>                   if (indicate_last)
>>>                           last = ice_is_last_download_buffer(bh, i, count);
>>>
>>> -               status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
>>> -                                            &offset, &info, NULL);
>>> +               while (try_cnt < 5) {
>>> +                       status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
>>> +                                                    last, &offset, &info,
>>> +                                                    NULL);
>>> +                       if (hw->adminq.sq_last_status != ICE_AQ_RC_ENOSEC &&
>>> +                           hw->adminq.sq_last_status != ICE_AQ_RC_EBADSIG)
>>
>> Are these the only 2 sporadic errors that FW will return?
> 
> Yes, that's right. We don't want to retry in case of other errors since those might be valid.

I would say that those are the only two non-sporadic errors ;)

> 
>>
>>> +                               break;
>>> +
>>> +                       try_cnt++;
>>> +                       msleep(20);
>>> +               }
>>> +
>>> +               if (try_cnt)
>>> +                       dev_dbg(ice_hw_to_dev(hw),
>>> +                               "ice_aq_download_pkg failed, number of retries: %d\n",

s/retries/attempts/
(as retries = attempts + 1 ;))

>>> +                               try_cnt);
>>
>> If try_cnt is non-zero it doesn't mean the last download failed, it just means one or more attempts to download failed right? Maybe just "ice_aq_download_pkg number of retries: %d" since the if (status) check below will print on failure?
> 
> Sounds reasonable, we want this log only because we want to know if we hit this sporadic failure.
> 
>>
>>>
>>>                   /* Save AQ status from download package */
>>>                   if (status) {
>>> -- 
>>> 2.40.1
>>>
>>>

