Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A2E6189F6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:54:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D489561043;
	Thu,  3 Nov 2022 20:54:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D489561043
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508861;
	bh=3vFx78/U7b4W3o0vUymxT3kkZyVXZVoe05uWYu4MpWE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hOxa5CWry91cSW7FZpsDCpDfZFiJc5cM5L7qF5xvuDnrEqnfB/phvPTX8zR+3OsA7
	 we8Ow1h7LGMTwGJwdL/Q8Dbqy8W3J5thGaIAI4sHl60MLkFIOvNy+mk/S0dA6ZhuIu
	 2heN6x8kc8YaP5mlNvxMpM97Kms4pklPzAAlOb5CcuSIXah90Wa3L66yrIynOqamyO
	 +oHZSfDGTv4sMHbsCGj9po4YUsRT7rF6CnnJUt6K6uwjvHm930+tB+N2ndQUmP7Nrj
	 815sjZ0KzM8vrN32j4QiCi0xsbDbLwrGCu0CNI+MzkoffBZ+tV4A112yD8JyZyLeuB
	 0fT3khyjfiUMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RYVLxok_K92T; Thu,  3 Nov 2022 20:54:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1ACF61042;
	Thu,  3 Nov 2022 20:54:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1ACF61042
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89EA01BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63B5061042
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:54:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63B5061042
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yTyGIZ0UOFac for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:54:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 407BD61040
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 407BD61040
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:54:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307423159"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="307423159"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:54:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="698382018"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="698382018"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 03 Nov 2022 13:54:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:54:13 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:54:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:54:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:54:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h9CuQbS1SAsqEjY3rVVYO1Wqs4Lt2IQGZ3emIENtqvBF0hvZuEWq6m1PM6blfRbt04lknK+mG4gjnBNv/g/EoG0g8OupWTpvdiPLcBFHcA77Vy6wH11EJ07U7tH6Did4P+Q2xkJKUT1+1VwX93inCUS5Sf6sH8Y/wTuhIF732WHPK7fS+KRed2ljY68C+ohAeSGXAoALgDGb+Aks+CB69b3cPMDMJoQ+Xbn/BtRZ92HH/o66toP0L8N4V9QsqVem42qb3pxPdQKjDBYH2k1cqMPQofS6Geh3caiD68FvIlDIagQ3cRoxUV6ck35gzH3jEUdGso3evfAdZTS+kE1/Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6z5STgo4PmwmkiRJlI3z7HBM6BXup7QPide1P/U6JHE=;
 b=c/pDK9Fqb5C5MCs9c9bDO7qZZXvu9mITDIeS/9fgWsUamn0EVm/BCvCdqy8OhMPzF08xGefpKXyurHNGU3iFti0OOmFzpIP9IN5IU3+DDqpHNvp6PLFrl9aiLuFzRoL+HGL7JBJmwBbx99Sr9+LrFKghbf2IrDOlYViACSvUofPTzaXemlBv56gqn58hbWa0y/iHjc0GI/4YcPUGibXGQoqc9r3oPDKXnFeLT8WabVSOHssmmJnBOV+Y536C7dS+DE0sJkWvFe1z2lYQiEPuhaZmiNeBegaE1yyFsPD9iiZzNKqJ9lh7rFIxfGCax8AwhcqRQR9cjToziNhAtDnQBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB4792.namprd11.prod.outlook.com (2603:10b6:510:32::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Thu, 3 Nov
 2022 20:54:11 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:54:11 +0000
Message-ID: <aea5475b-049d-067e-3cc4-e767ae7bac55@intel.com>
Date: Thu, 3 Nov 2022 13:54:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-2-jacob.e.keller@intel.com>
 <16f5979a-0df0-0f21-0654-72d8791a0a76@intel.com>
 <MW3PR11MB46815510BD160838E67F8DC980389@MW3PR11MB4681.namprd11.prod.outlook.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <MW3PR11MB46815510BD160838E67F8DC980389@MW3PR11MB4681.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR01CA0021.prod.exchangelabs.com (2603:10b6:a02:80::34)
 To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB4792:EE_
X-MS-Office365-Filtering-Correlation-Id: c5f6895b-1155-4ece-61f5-08dabddd8ee9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UMo3XzZoXcGAdrv1WbpbWxT++nm9osJjFGojde5aj7JqmwTQA5gDm1MKD/yLxrSMsvKPznHXHWtatVrqzsx56MvELetLi1bFoh1ZkqjRVQcXp53qYkQvRSSheYBk6Ci7ujHc3wnQRoWM1+mU1mgBKhN7VhC9IkzH/8GymSQyB00ll/dFwAR3fkKhMCgHG5IP/NkfMUcP462WhAldEUBxPC9n9NRHwZBwgVtgun5xi7VG1AR2dL1vO9LICGTtJlrfQQykMCUVMMLBTzjFDI2A3wotUViiRTdgBwDU9y/NvSAg5WAzkYBQqxeedBHAO3Dl/bcUZqQl4sljKa+7BVvY4h924yynEx0fx8wqm7Atbh7mm+aAA+pD5qdoAlbNoNg9hr8/R2WomVxtpAY+VGaXQWkpAiLyHylljj0Gq87KAEYz8QaANiMiBgzjQ/B7lwr1eyV1wVJb4o3ZeGmLJrC1HPiBK8WiuyDLaih99D18Y1TxIIlbaVtUOr4MmSZ5xVme0srlJ9d1CrsbCO5NfrG+dDLVOznoW8n1twa4AIy1AWrwtARjOmZ6JGqICeeBLkljOeB7Jwdg7bvE4srOpav+WDaZnaHfFaWP+ay3tYQrMRFuq+0Nvwlcp131gEe3O9HXuoDjj0Zk4wiCH28/4S319JAB2rdahYi7BoH/CasD1GkAZFf4iPszMoPUg7YpwRusnTLp0fPI+CrtYHQbbuiVgWlSsjFOo/VVjZsVzXSkKcQ9H849uJJGn5LxEk5PhmrJW5ZgIF3yaQQREXFDbkj5Jg4afYlUKsj30MgqRsyOy6+PZXp88MjIcMSQGkuyRfwLGAkX3ph5w6ilXnSd1NXhsw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(346002)(376002)(136003)(451199015)(86362001)(38100700002)(36756003)(31696002)(31686004)(82960400001)(186003)(53546011)(2906002)(26005)(6512007)(2616005)(478600001)(6506007)(558084003)(316002)(66476007)(41300700001)(66556008)(6486002)(8676002)(5660300002)(110136005)(66946007)(8936002)(41533002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXJtT0pjVXluNVhnREVSRUFOckNYQkRTVCtMdklhaGt1ZUE0STg2dGJGdzc0?=
 =?utf-8?B?UldjUVM4SXk4NFNzMGxpRlF2eENHK0lMdE12TmZtblBVaFVlT1IxSnJqdXlP?=
 =?utf-8?B?MUVpZVNXL3JhVERqd3dtTjRodStVZld5N0R4dDZ6UDR2RS9JdGdDODZ4WUJ1?=
 =?utf-8?B?Zmt5dG9SOHNnM25jMTd0Z2lsOWZpVjJQN3VmdkpKTXNGVVFzSDJEcGVrU0F2?=
 =?utf-8?B?UWVSd0ZVaDZOZDVBSUkrVitSNGJaK2JTVml1ZjIrbWtYbGFxUFo2OXUrOSs4?=
 =?utf-8?B?ZExOOU9xOE9KQlpnSDZ0RHlhemg4MnJXbWxlRzlJVWJYNGlDNHRIeWhWQ3Bw?=
 =?utf-8?B?VW1kNzBnUnhqOXI2ZlJjRVN1eVRBb05HM3lub1BjOE52K050WXhqeFlXYU1R?=
 =?utf-8?B?YStwTWY2cWpSZFFGRHVIekJvaWNRd2U3WFFneHluazZ1c0RXZVlUQ3Zxa3FM?=
 =?utf-8?B?RDFYeFVud2tCbGl5bThVQzVlcWFpQkpBc29OU3g4d0hYbkw5eGozdXdCRWpY?=
 =?utf-8?B?d0tYN0hDZ0xMWnJkZ01VaGE4QjUzS3RLeHJHa05MaEJBNzdOZHpNS1JkUFQ4?=
 =?utf-8?B?di9COGxyQXFxVzBlWkE4WDl4OEFuMW5jZTJnVVczRkdHVE5yL003bXJTVGVR?=
 =?utf-8?B?RTZFY3VKQkN4dVF4dDErbjMzSWgyWlBaSzJZempzVm0wVFp2YXpuUW16eExQ?=
 =?utf-8?B?TmxSekJQR0ZMSEZXbGhjZGlSVnptbkJmcE9ibkZhUlArM0tkd0JLTnhIMFRu?=
 =?utf-8?B?WE1XalZLcTJ3bXlhdHBEUXRBUkYvR1o4ekFkb01SR3BMdTFGWm5mSDkzaXB6?=
 =?utf-8?B?dVRrU0UxT1k4ckprQWZZbktVYU5jMXBEZzBaaXlvMlJ2bE1MWjBNUnNJOSsv?=
 =?utf-8?B?V0lBTjBMUVVXajhuZmc5QmxkeUl3UWxYSkh0RUhJVVk2SUhycDBiVjR2VFMx?=
 =?utf-8?B?OTNCek9MV3FkL1pIL1JGZWk3WUQ2eHQyNmtqdkpoUytQQ0xscGo5Ymhhangv?=
 =?utf-8?B?VDQ2M0FMTlNpSGp6cXc1bFhSL21FdnBkQ2tILzdlc0s1T0Ivak9qanNaa2R3?=
 =?utf-8?B?cHE4K3FCQjdtZFlldWQ1T0JScFd0dWpyak5oMzVHWEo0bTlkMUNEWnRjY0da?=
 =?utf-8?B?NnE1RThLckZGbzBVZ05YVzlYcVJ2TTc2bjMrMk0vVExQcDNEbkdTckFDdEg0?=
 =?utf-8?B?ZXRIL21Mdjd2a1o2Um9JZ0o2dE5KNzh5d0JRUEs3UExzZGF3YStnMFF1NnR0?=
 =?utf-8?B?NVdhWVlQZGFUQWdQdUxIOVF4S0E3bm9QYVF4YndVckRyTDhKVGM1NzYrc2g3?=
 =?utf-8?B?RW9TVkFESGFHRWRGL09ST2h2dVFXV3V6QVc5eHExYmJmbHVqVG9KY1ZrRjBp?=
 =?utf-8?B?bVYwVXlaMGt2TndDUzRVRWFVb2dwT2U4dFdxZEFMNzJab3FhQ0dGSkcwYlZJ?=
 =?utf-8?B?RjIrSlRpdVY2MkYrK0F6Um9kVStHcldKK05sSzJtcFp5aFJJWG9WdkxxWllZ?=
 =?utf-8?B?aDRnRjdwOVhBbjlzS1NSOFBpWmZJWG5rNm5hRWc5SjZTeFZEQmFHNS9ZLzRJ?=
 =?utf-8?B?bmkyZFpjV252VkNPM3RVWXFXeXNvNUdVYzdWclpTd0FiTmNwazlNRUNmaHhG?=
 =?utf-8?B?aVpMMjVCMlZQa3NyZ2hGZ1k1a3N1ejhHRU5jN0RKOWNOVWdsVVB5bmhMK3RM?=
 =?utf-8?B?NjIxT3NJVk41OExWT01sYlE4OTlXTnltc3VsNXgxclRPdnVDenZUUDdlVmw2?=
 =?utf-8?B?M3gzS2VVbGdwMitvMm13SlVIR3hjdHBWZlkrRTV2SVd4RS9iVGFtRzhLbVhM?=
 =?utf-8?B?QW1KMVloZy9KRVJlNnpMR2VrVmZLQ1E1Z1Vkenp6c2lmL05STndoUXlReU5B?=
 =?utf-8?B?b01VZ2hiUTBHUFRLelFyMmtrejhlZWM0K1JSU3JCSlZPVmMwbExIOHg1Rk11?=
 =?utf-8?B?ZGpNbnNTTEYrQ3FnVmJwcDNJYU5KclgwWDVSOEllNHVCZlpkMGNpQi9iRmVV?=
 =?utf-8?B?S0k1SStuQkc1cHFSYzZYY2dmTFRVSHVxanVhS3R0ZnBZZzNBeG1vR2xsbGlP?=
 =?utf-8?B?QThUdHVRcjdnLytheFo4OFNQZ0hIcndzZGlZMUZ2TFFsOXlaQVl0Q1hCNnlz?=
 =?utf-8?B?TGhvVDZ1dm5YKzlIREFxQ1orcDBqYmc4WjBueFAyY0oyL2FYelI5L1RDTjBZ?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5f6895b-1155-4ece-61f5-08dabddd8ee9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 20:54:11.1459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zhTsIs6SS9Z2GQYC8uekc8HLYMO30ofdkq7a9Facl3pwJyRDGLCCeUW5jGdc/chS7Yq6CoNmYV+6V6Q4Zuox2HMEnlHQ1LJkcfWMFS+b/pc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508854; x=1699044854;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wLY+m4YZ47fcq2OTotW+MBhHtc7KQTUXeOhU8m/zcek=;
 b=B7JhPoxO5S+wi55wrbtiUVVCc9z9xXZP7gPHNYqVu6W+xokjQwnZjAhJ
 7hRftRW798mfKAue3uAm10ty2+qqQ5BJEa1AAESEZgpBunogurA+e4guO
 +z08cNNmf20XfroI41germtxh7vteuJleJCW37M1gPjKrzxNx8hkJVq7W
 gvmZVKQgVzL9AP/qtL2zPLQoFVNpksyax1li/2te9thn5JsecgxzktbQh
 BHLkTPgpL31bezIKaFKsRgqjzb8qFMDaPjKQC8kgO0aaRhMWNrYOIQDwd
 MiFlK3GQ2+rTAolPAK14RDCt2aqtm7wxyUQnnjKKbo8oZg3o/5P3ARbw6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B7JhPoxO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] ice: Use more generic
 names for ice_ptp_tx fields
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/3/2022 1:50 PM, Temerkhanov, Sergey wrote:
> We might want to move it to a different patch, it is used in ETH56G support code.
> 
> Regards,
> Sergey
> 

Yea, I'm going to drop it from this we can send it up when ETH56G stuff 
is ready to upstream.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
