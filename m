Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECE178F41F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Aug 2023 22:34:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA593418FE;
	Thu, 31 Aug 2023 20:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA593418FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693514073;
	bh=tCJAevjCOaIBn/LwPB/x+JyZPe6WlAWemvJJeT/F35I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2XlX+rfGfWmQiPS7bCO4Pj4L3H00MH5FroNc5u/F+oKGf2unbs8YPDdsX1VSaDpse
	 iGSSuKIi0jp2kp488MTxOab3W9w85xB12JjpcuOjYKHKY6iMrh6xmbbqwGptW9SljH
	 IOzFb7/VaEQ9OibpBszGqDcSrpby/+/uPxUrzt3SCVFPBIRDE+hkYBPieNNCZVFotc
	 6s5iXJbMTVXzUpBjRsk+R+iK9dwGJhOZmLfq0l43HXZ9xGqgsuiKRm+zgdeOyuUjiw
	 DlaVHIYqU7O5j0MCMqbC/YLUjfzKc2NHQdR2e+VQEHorvyaZx4+VlZukFkppVTe96h
	 qkNwx6y08HA4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4a2ZqmM4Rltd; Thu, 31 Aug 2023 20:34:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC09D418C0;
	Thu, 31 Aug 2023 20:34:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC09D418C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 671921BF295
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 20:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4745260B97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 20:34:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4745260B97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p3J16ck14u9s for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 20:34:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30063607D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 20:34:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30063607D6
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="355558356"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="355558356"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 13:33:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="742855802"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="742855802"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2023 13:33:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 13:33:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 13:33:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 13:33:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LYnCpyG03RMZzTLmtftQQJUm/n9ny3g61f/5yzBP72Txw4BeAhxGJ67wjprQIQmxFg+QDDhMT2C2ocelOdT7FIwrnJqV1YYN5MYVPUPt8YuFBNFycXsUY/0zeHLOVM19EbjiuofJl+Ws+BQYh6fQmCSyyCqFhgIu5L0LyMe3WhHYe/4cQ1KpKsSxInMAD39t3MQopPGzL162bIe5zWkwHhVrPUJ3Q8JnzwZJWqSha0BIfZL9x1fsSMLL8cB3Hen8v2s6fe4CpRjY73hhahl1gkPoHHNJoW0aE3DSy+/naRzlkD8Wers7jMd3yGNLrNMdPza7C31rOdhpgj9F9ym5xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cEoQBNWkIOgGs7bgLuaof4nrcrayEmdOKilEZHUvLpU=;
 b=jE62KGXr//5frcSO95+P/Nf+TC8qhUzVPsQaxSLw2DgepaxIr2YK/TnTyWhlFeqnuzAbLoy3eLpk+rAcMYpKjX5xmbRahIPEg5TSjggpRPASSFVhwdWqhczSmAsE6ggaA4d2bf+/p7IdTsW9njP8J28u39ZUkTv2g1nRhMqxrWcuQX3kgxAvmIC2ObvDsH+mxTj34soEUIHUWwDXCWF1XXUtAfz8W9s69Ku0Fe3YVcTZ92ZPiZsfRwQpEsYp1GyApgFOYLVAtyE2OWV8Nh9AnuZrlkib8tSQ3TnsPx0pDf2PKwFDSKAVOt234UFrQMm8FU2Qqgb3hHJYGdiTEHq7pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CH3PR11MB7865.namprd11.prod.outlook.com (2603:10b6:610:128::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Thu, 31 Aug
 2023 20:33:16 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6699.035; Thu, 31 Aug 2023
 20:33:16 +0000
Message-ID: <ddab394e-438d-bc77-8018-08ed8406ec43@intel.com>
Date: Thu, 31 Aug 2023 13:33:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ahmed Zaki <ahmed.zaki@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230830214821.3439959-1-ahmed.zaki@intel.com>
 <20230830214821.3439959-4-ahmed.zaki@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230830214821.3439959-4-ahmed.zaki@intel.com>
X-ClientProxiedBy: MW4PR04CA0252.namprd04.prod.outlook.com
 (2603:10b6:303:88::17) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CH3PR11MB7865:EE_
X-MS-Office365-Filtering-Correlation-Id: e69bc015-30c4-466e-00bf-08dbaa61813a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +UHfc+qJplegWMdojBUCGSIOmwO4Jb9Jd7w+PadSA4CiXOmKx0baKn6r6QzyqXp+9crNX0RmZMMj8kKpbpE/4wuwTaC3Lux6MXtZuOzgfIGj8j21ZafCAkeSC7JNA8YLMFalatjH8IYVF4HkhFr4n7QzrqIn9aZ1sAxwLrdhSyq7lNZ9SUlKa6WAOB83PX+7NsuSdJWvxD8IyFyji9AhN0LyUD3SCGCINFYA/GQzoH0U1r2FSam0c33+IW5DKh6o/ziv+5RhYJUgtWHk8Sa7upSZRBorzIW+yB+Ai1xkhTgFeNgPIGQl325xY+dZfajt8XPYapocCNMFufmKDa/C8OpQcAkW4lNFWcJq4f4wzsNhakhnN/grQshOplXhedC5tRogvTli9GLony32H/MUaWkp2C0mLINib6fIpdefplGiLbze11m6zdeRLFFG/eS5MRx4JXWR+DBD0ey7AZREBg3Agu83NgQYN79+fo1sttUZjcuVAwSHiHxlyqbGEmWrz2tR+CGeCG3D7ywdr/33nXpd2XIXsq9F07QXc5u8tldpzYTS6i8J9D6OBACtwqis+0a9u25wO4FqdAFpHItUk4ztUDTmYwC910ukq+kPI5G2fAP2d2cUTt6prHeMN49o+t6qmVZDT2dPMuFeK69dAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(346002)(366004)(39860400002)(1800799009)(186009)(451199024)(8936002)(6666004)(66946007)(478600001)(53546011)(31686004)(6506007)(66556008)(54906003)(66476007)(6486002)(38100700002)(316002)(41300700001)(82960400001)(6512007)(86362001)(8676002)(31696002)(36756003)(26005)(2616005)(107886003)(4744005)(2906002)(5660300002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2J6RjlKcDc3bTVqbzRpQ1MyR3FRTSszUDhScHhiZWhETzRzVTRCZWpaNVB4?=
 =?utf-8?B?Uy93UTBjT3VZc29uVmszOXhlS09nenhFSzVma1ZDYUhJMFIyemw3YnR5VGNZ?=
 =?utf-8?B?aHN6TlRJV3NrRGNmOUYwcFBjUlRhQmlZUmc0TEJlMmZySVZzM2RsbzBhbDdk?=
 =?utf-8?B?V1RZd21LQkNGL2JXRVVMTnNEaW1GUkhzbzNDaHpHWmFSUmI5Y1Q4S3o4V3o3?=
 =?utf-8?B?TG1CYm9rMU5QajJwRE1DcFNzWjYzTnd5dE4zTG1kRS9jK2FxKzl1c3NTR0dP?=
 =?utf-8?B?T01Ga2hWREIvZ3ZaQndUS1Ztb2hYMG9MTUFIemYxK3VITzQ2cWs0YlltTDZk?=
 =?utf-8?B?eEI0S0wxQm5mbkZtVzJ4SVVMb0pMMmlBOEtKM3dLdGdCSEpKdGNVbDlmYXpP?=
 =?utf-8?B?cURsMTc1bVpjWUx1V3FuTGdweGorL1pZbXhMQWxiWlR1emxGN2MydkxnMkpC?=
 =?utf-8?B?RnVsVVduRUlNY2lMNUdYS1ZiTUkyNnA4RGprYmNJVVA3TTFYUlJvc293YTdw?=
 =?utf-8?B?NTQxdzNCcjBRcEl2R0tlWGl6NzFWMkYwMWZNOTRYNWl3Sm1QT1h0MktjWlZp?=
 =?utf-8?B?Y3BKQUNsWVBzeERlY0k3dlRLbFNPV2lpSVl4S0htOUxrM2d5d3Mwc3BXZm5Y?=
 =?utf-8?B?NEZtYjJtZUZ5TlFqbExxcU1zRTZHYnAvMXE0Z1c4V0ZNYWFPQm1XbWU0Sk9G?=
 =?utf-8?B?Z25wZUNwelA5VkpWTkZTek15aS9HZkNqS1ZuNW5xeWxCemtxSEllMnFjWms5?=
 =?utf-8?B?V201V0prQlZlMWdkaEtaZHpEOFlJM3lVaW1Gc0FsUmU2ck9CNzRFVUlWODRx?=
 =?utf-8?B?OGtGMUVWWm1kV0htQ1NpNjhzZ1kxU002M1RYa3I2b3J1M0RxMFVPdzBIZGNi?=
 =?utf-8?B?RWZhR0xrNjRWRHhnYTlVYnpQVTVVZGFhSU1FTzZldEpjaUFkbm9lcGd6T3c3?=
 =?utf-8?B?elpZY3AzM2dxRXJvVXFOTThVcXEvSkpERUxuajMvT0RLbFBPZFJHTXhHYmJs?=
 =?utf-8?B?dk9XYVRsU25IYjBWSVZQRktkSE9ZTmZnc1k4bHJaRUxlSEQ5aGkzTlM3MWVu?=
 =?utf-8?B?NjJxNWIybXhPUjBVQ1YyMUZlcVdyOG9Rb3psbk5jelhoT0xISHl2cU51OG9L?=
 =?utf-8?B?NGRWSU0vTHUzZHFUYW00Q1B1a1dUVXRKbThUb3BKTS9KWlhDS0hoU1pDU3JG?=
 =?utf-8?B?bDZhblBaRjF4QWV3alE0WHBQcUIyenYwazNpQ1UzY1poaEN6eEdYTGJQUU1T?=
 =?utf-8?B?NlZSWWNtbmtUZ2pHL3BiU0dqSjNrL0h2SmFYRXFjTFZCYTk5M2kwVHgzOWNi?=
 =?utf-8?B?elJvTGdvNGN4U1BTZ3dMc09ibTB3OS9IblVQL1hMclpwQXg4RlJIMTQwOFcv?=
 =?utf-8?B?QzZ6MndDNDc5MkdER3hBOE10dTB6S3JlSmNmU3lBQWFjQ3JxQVVJTmlNZG9C?=
 =?utf-8?B?RjJ4dlhUZ245RmE0ZFBleDJCM2ZYTmp4dyt3dzg5TTBoeVlpUDJHN2NOa0w5?=
 =?utf-8?B?V0xzNng3RHVEb0hxeFJvRzg3VlhPbERIM0Ixdm43WllIVW9yNFFmZDJFbGhz?=
 =?utf-8?B?MU5nS2hPMVFkRTJhM2FZcktnOWQ0RGkzQ1R1MzJpQ1BPK3lJckVUVURPdEty?=
 =?utf-8?B?Q0hIbGdYcDFuUU1KenIvdHoxN1MyemRTQ1hxRU9raUgvS0FGcllnNTQrRUVZ?=
 =?utf-8?B?YVZlVkdnUnlObFFBMktPN0ZKck5LVkZPcWNLMTRocGNZWnZYellEZFlTUFR4?=
 =?utf-8?B?Uk5wcFpFcWpGNnZxOHZXcHZiZDIwRVJwcU1UQjdIblZoOHVGQUh6RklvOU1K?=
 =?utf-8?B?MzhmaVd6OW4vb28rWEJBNTVNcVZoaGFvcGdoeUJjV0o0RXY5VFgxWkFYNzgw?=
 =?utf-8?B?cFdkUDhzSE02MVpGeHFsRERYaHZVd3ZTaEc1dUdmWVo2L1c2TlB6REJYSC9q?=
 =?utf-8?B?VUsydmxBYUZ3WlVid0NGbXlocUhBSnV0N2tRT05FYy9YYzRIOWxWOHdyV25j?=
 =?utf-8?B?aS9sWkw1NkdnRW1SbDkyUHpVdnlkWVBOd3hWV1BnRkR5bUpFUGpBYjE0ZEVu?=
 =?utf-8?B?REJSb1NMaGg2ZEVMekw0TTJCZEZld2dsYTNTaE5qZ1IydWFoWGtGUTdRYjdZ?=
 =?utf-8?B?RTNzd1RTZ2RVVnUvQXFxSXUyMEh2L1NDMHRvNG04Ti9VT3N2ZTI2WjdJKzNV?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e69bc015-30c4-466e-00bf-08dbaa61813a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 20:33:16.1816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kw5KshckUmEWnBTEYkt9sUN/OKY6A3pKNm5i2tTVT0bVyVZHItR7A9iOu6QWLPm7ZTuxkr+9A5HU4WMoxVL99aBat7cb7dlTxAOBGIuooSc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7865
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693514066; x=1725050066;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6+h2ZFgLBWxfCuUOEX2JZn62M31j9nYj2IRWNiXed/8=;
 b=TG7YaZYhR3c1JFlbkDd6DPQ4SsTNRiYH4S1Awmp5OjACVJYNIKK61F3K
 KiD5LYvb4g4ESN+xbICBHTyAq+JHetnAoo68kVeBkkN9n65PVKNTKFerA
 8+lJnxqydaPxkeQklTqKSC8Tm/hBHClnoO0TjY7X2n5Yjzwcdkr3Vn8Fa
 /fyEHlt7gtqjZfsyethWj9lsEm0LCVYUUH65F7YzXiwFG68F/BrmjfXeo
 8QL9Aw9Zr3pqocRwJbucDJzB5eAzl3MeuT3HGywP+U9zgM/Sn5d6nZLBW
 kC2ZyftgSiOIijevvLApjcGoBgAmKq3+XrNvQrzb84Tfc6h5LDLC8b4o6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TG7YaZYh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] ice: Fix VLAN and CRC
 strip co-existence
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
Cc: Haiyue Wang <haiyue.wang@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/30/2023 2:48 PM, Ahmed Zaki wrote:
> From: Haiyue Wang <haiyue.wang@intel.com>

...

> @@ -2673,10 +2696,15 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
>   	if (ice_vf_is_port_vlan_ena(vf) && !ice_is_dvm_ena(&vsi->back->hw))
>   		return 0;
>   
> -	if (ice_vf_vlan_offload_ena(vf->driver_caps))
> -		return vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
> -	else
> -		return vsi->inner_vlan_ops.dis_stripping(vsi);
> +	if (ice_vf_vlan_offload_ena(vf->driver_caps)) {
> +		int err = vsi->inner_vlan_ops.ena_stripping(vsi,
> +							    ETH_P_8021Q);
> +		if (!err)
> +			vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;

Need a newline separator for declarations. This supersedes the no 
newline between function call and error check. However, since your 
declaration line wraps, it would be preferred to do this:

		int err;

		err = vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
		if (!err)
			...

which should resolve all the issues.


> +		return err;
> +	}
> +

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
