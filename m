Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B427DD152
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 17:13:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDDCC83C50;
	Tue, 31 Oct 2023 16:13:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDDCC83C50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698768815;
	bh=widCKwZdg2ClsMpMITOWsOkfQh+PYJZ06vIQHPJVuiU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XrdVNKtM47fPl1vH9slBlvCxLE26I8A0o15u44S97+eUYJ6pkqAV0uyEBHJPPS2Fs
	 /+WT4SmxX/fQTzJUAsWH6BB8BiglRE4EdExGoDDhHIU2A3hr3JIz7QlyMDSpVgSm3N
	 w7/88VVnh8UymQ59NdSfIpir4MoPd5dFsZmg+f5GZ7ECzJZOYNRTmh+//Px79gtNEF
	 rwa/caygifxPG+rL8StMLgv66zuH/DUcjienGASHcWzw16ytKU9GPZ+DRTQplZcHqv
	 9DFwTW/DwHqE14a5ok0KIzYwOWLzKoCB26WPLY/JWEPxOKEajTg7pAunnbcfWToSDy
	 +syv0yfpKhipw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wP6qApZL5RYz; Tue, 31 Oct 2023 16:13:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B31A183C46;
	Tue, 31 Oct 2023 16:13:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B31A183C46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6407B1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 16:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 386A04188C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 16:13:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 386A04188C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-guT6qwgf59 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 16:13:28 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2060.outbound.protection.outlook.com [40.107.96.60])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4543641875
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 16:13:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4543641875
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jkIXEY9miPUCywZgifKjbTgoID+wqZSOG1freTf3NUaDX5xhssILK4GiQGzFTiPyRL3ynek1mHYDb8uwfYwfgJi3AyUIwcyo3obHHah2AIpWGCLz9d6+x2NchRinGFtCSPbQ6l9cW0TcoCI27ek9gkHTcSL0JqB58OZLxB5NPniw2nzTal6UqX8ywD4s385E4OQ/D0QyhS45BQXRGEuBhII9RtL+rPx1mYVg7y9INLOU3dpZaoXFwvCzVuYmpZukWZKhpsZKbU8CV/BKKp5ElrkmM+aaJRd8CecOF9+Mwm2NnYYi+r/ufyPz1zVaW640RCK72ZJ9PywMkvoIMAjU7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uHtW2cKpAR4QCAfWKJtCTFnB9us7YKje4PpzasW7Ax0=;
 b=YpLvIvgYFRGmbLL2e/XFsYnMKHAuO6wks4o+0DqQ5pAbhLaXUkEWzCPgt6NVndSxIBUYdQVnyA2AvKFKCMlyqI0vBLZSEME6r1Lc5Fb5WTatBNohTNeEtxK8hq/zHaZCPdFpx47S88fSjYjP1mEwpN/MtdS93OUahsl2Cu+RoRif4zDwVGqI5qxd6HoeknxzA6hk2LZE3EaF+3bU1BO2IrYrdSi2VYcoHvvNq2LgxuonGCh3ds3sXQ3K0f7OSsRXfZ3b0tlp19Bg3QwoqPrBLyCsqgvEdcKvZ0faPUZqr2aJanPEjhCkkoVfaEL37kPp61ntW5cAAUw9lHL1Kf0iug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) by
 CH3PR12MB9393.namprd12.prod.outlook.com (2603:10b6:610:1c5::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.28; Tue, 31 Oct 2023 16:13:26 +0000
Received: from DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6]) by DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6%5]) with mapi id 15.20.6933.028; Tue, 31 Oct 2023
 16:13:26 +0000
Message-ID: <ff81c4e7-0787-4357-bb92-9da334a4ddaf@nvidia.com>
Date: Tue, 31 Oct 2023 18:13:20 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
 <20231020164917.69d5cd44@kernel.org>
 <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
 <89e63967-46c4-49fe-87bc-331c7c2f6aab@nvidia.com>
 <e644840d-7f3d-4e3c-9e0f-6d958ec865e0@intel.com>
 <e471519b-b253-4121-9eec-f7f05948c258@nvidia.com>
 <a2a1164f-1492-43d1-9667-5917d0ececcb@intel.com>
 <d097e7d3-5e16-44ba-aa92-dfb7fbedc600@nvidia.com>
 <aa1dd347-a16c-44f8-95ad-5d50bcba8f34@intel.com>
 <70132b6f-542f-4fe6-971f-ab9ea80acbe4@nvidia.com>
 <e7679b57-af11-42b1-91c7-b18cbcc70119@intel.com>
 <20231031082023.3fd4761b@kernel.org>
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <20231031082023.3fd4761b@kernel.org>
X-ClientProxiedBy: LO3P265CA0021.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:387::8) To DS7PR12MB6288.namprd12.prod.outlook.com
 (2603:10b6:8:93::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB6288:EE_|CH3PR12MB9393:EE_
X-MS-Office365-Filtering-Correlation-Id: 2995de8b-549e-48ef-adfb-08dbda2c4fdc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fve0NI46RjVW4pu5eHsOt8j4B5CWXwvSv6HwKxS4+tmcvWkdgk69UFpXSaT9CuOTDsO0A9RuiEpUhlxbQsRBW4ieCpuUmjAzHNicq4SGjHMBjrDvN137ajOBkX8Hhz5ZfM03vuZ5Ge5M8OwkKC4aqGq5IBnnqWzMX1+YmBI3aNmZfFCItMGXEO7v2mYIVfnR92pKIHmxyEStRFoA4NXvAJAKevguxwWfgdWl/SW6XhjqMeJauJhWUKHIr8106QfGLTeq1Ua1ESWMd1JqGH/w8l/zmBH7SRfvdSsymhOkQ7dnGjjyOKr0OPTdrK4FL0M/V/i6yzghTvwBsCD8N/cYHMOkjo/MzW2g+ID8fqB0tXfPsfh5Vwla1LeOe8Gy3ilsyy6fTdilt24HUkaInRQZLN5OPgqGIl9YuA5x+oJTg30DLvXVOixyiF5APE//jLLcYHvnjRmsipuW28Bn594HrX9yaLSSOjCIyaezmIusfBxi7A4ELbu8XaVX++1whNYZfVfZp0LsEW5BWdu94Fj6RZdxtgaDtVomjlmblIZRfcCg2DMMR07EjPmFEcXYL/AQM0d3uRz1wTxhp0ci/5yMqd3iWzzGgyuy6/vc6boQgmOpsruwjgjSkMk4jGZLpkNxJruv/ppmf626MLTgtkZAdg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB6288.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(39860400002)(346002)(396003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(31686004)(6512007)(26005)(2616005)(38100700002)(31696002)(36756003)(86362001)(316002)(4744005)(2906002)(6486002)(5660300002)(7416002)(6506007)(53546011)(478600001)(6666004)(8676002)(8936002)(54906003)(4326008)(6916009)(41300700001)(66556008)(66946007)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFFzSDF3TnlnN1l0M0ZYMExLVDVNTFd0RzFSbGRobHRsb3VHbnVXTndhNklK?=
 =?utf-8?B?REN5K1R4MnlyWjlPSmZUSzIxbHhrelY0Sjk0ZytmV2lER0pjVWxiTU5DV1E2?=
 =?utf-8?B?NVRkd3RVU2FnTDBEQ3k1UlVDd25tM2Y0bm5hQVZ2Smh2cEJPQ0NrdGFxNFBj?=
 =?utf-8?B?cUx0NktOSSt2Q1NQakpMTEU1Z3lVZUI5bVRPT1JnZG0zcXV4L3ZXMjcwbUY3?=
 =?utf-8?B?T214blR0OUt2Rk1mMUdkVmFaMXkvU0tra000Y3VualhiU0hDQS9jNjNHeVh3?=
 =?utf-8?B?T1puZEJ3ME1TUHVvaTNvR1hlY1dvZ2J4NHY5bkVWTllGV0dGa1k5SXUxLzJo?=
 =?utf-8?B?czkraEdoTE9qSDRIVjlFbmFacHVNazhIVGtuWlJnNVRneTNZSHc2WWdPSVVq?=
 =?utf-8?B?QnhRc3pxUzY5YXlFRmt6N3Bic2lobWk5eldlWmt4UnVWM3VETkVBMVZSNjk4?=
 =?utf-8?B?MEZFb3NNeUVYWUR6eitEVGdpVGVMNlVGQVI1emdVdXQ4N3VXNkhvSmpVbGh1?=
 =?utf-8?B?T1ZTREplSzNrRStyOHQyb1ZpWHlCNE1hTGxiNzdhM3FsdmFpSHVQWk9OOTRN?=
 =?utf-8?B?ekxGVEMrcW5NT3FWSmtVK1lNTDRSeE5zOFpwem93N3NVQW41MEZKWXNDT2xy?=
 =?utf-8?B?N1RkdjJsZ0VjMnZxMGRXOTk1K3BIRmtQMEtDSHNidWF6eW0zOFBmem9mbDd6?=
 =?utf-8?B?Zm13MHBzWW84Vlc0cHJ5UkxUajZTd0lDMTlZb2tpdGowSVRKWFR4SEdaemN5?=
 =?utf-8?B?VHZ2YXM1MHQybldWY2hUc1lwbjdMMkhwOXlXa0JIMmlFRnVsbHU4WGxZdXVK?=
 =?utf-8?B?Y0tnMlIrNlNBeVpXVmxWMW5qdmR2eVJha2RNbHFXcklkcGFxQkdDa2pGdjFK?=
 =?utf-8?B?bkRIV0hMN29IYUtJS1VtUWxxam1MNHNUM28xWWN3L2hwRyt2MnlFMHBDcjhN?=
 =?utf-8?B?Y3BaOHBUclRGS2NSVStZVWE0VUtXaTJqUGxsNGg0RzlIak1lallZMXJnRnRu?=
 =?utf-8?B?N2VGMWVGbFlodlpZc0t3UGhZU2hpa2o1TzlMZzMvMkwrVjMzRWJ3VjhlNnRZ?=
 =?utf-8?B?dkRnMk92TCtEZjl5eitkVDhrWHIwMTN5RDlJWFFPVGYvdTlLNjhLOXBySWVW?=
 =?utf-8?B?NS9IaUxyRUJvZ2lSbktGZHlOQ2g5VGM2bmVHUFJ3M2lrRVkzWXJMaFJ6ODJl?=
 =?utf-8?B?SFhSbnlGR05hQnRHUDlLZDVPb01sdzY0eGhhbUZGMERibGpjYVdxQ0dPNG93?=
 =?utf-8?B?WFFQSGNtTjZ5NUZtb3p1Y3B6T3U3L1BKZklmRTYxc2RGdlN4WWk5eDUrUUZU?=
 =?utf-8?B?UWE0Q25QK2xrYW84TldPTmsxMG41aDZDcUZPOHVaSFlqNWNBYkZ2THN2YUlo?=
 =?utf-8?B?Sll6YWEwVXRkenk3VHpSdHhuSGd3SW45enExbDlCZ0lGMmdNcU8yMnU0ZFdM?=
 =?utf-8?B?R1dvaVNVSlc4VWdpckx3Zms2dGpLekxQYmxGN3JHZms5Zm0yWkVVNFpiUEtj?=
 =?utf-8?B?WHcrM29oY0JaL093ZllhQXRiM1M3cVc5YUNQNWlpZVRtNjd1dlMyN3ZORkNN?=
 =?utf-8?B?TVZ2SzJZV2p2Q0VsejJoRC9CMlFna1RPR1hKOXVVeitWWFVyN1doSGg0RTk4?=
 =?utf-8?B?c2Yrc2lVMEljVWpTNUZMUW5yTWlaUlJxZkdZNUlHUEZWMVdTck5XR3FlNE0w?=
 =?utf-8?B?NDE2WGVwME05ZXRVVzRRTUN1ZjdVWkZWMXhJRVNMbzBzVFlRV1ZhWXFPRVh5?=
 =?utf-8?B?eVg5Y0RqWGNRR1FQOHZ1OWNRN09MVFVKK3FqbXhxa0dRNjVrVVdoS2RwbzBB?=
 =?utf-8?B?NjA3WGk0dGQyYTJWKzh0ZEVlVUhqbWpUZms3Zy9qOHZzYmkxQTZuczRnbVJQ?=
 =?utf-8?B?eXMvUERCa3JoRVZLYzcrOEwrWTIzQXVDWmVvTGppZnV5V2FQaHQ3SFZHWVlr?=
 =?utf-8?B?VHlUSGxTZ00zc3kvZ3krVGo4aTVHeWpWZ2FOWHRRbUdMUVU0OWFIY2xTdElQ?=
 =?utf-8?B?VzhLbE1mQzNoY1lDRmFzV2tsL3dIeUs3cDhoL2VBUUl0d25OK2pySER5UkhY?=
 =?utf-8?B?blA3Z1A4RWRXL1dzMk50dGR3NTFZeHBJMFd0S2wyTmw1WFo0bTJkNlN3S0xQ?=
 =?utf-8?Q?kGr/yFsNHTDJGJdrKuohUGqgh?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2995de8b-549e-48ef-adfb-08dbda2c4fdc
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB6288.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 16:13:25.9608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qiwi9xD/CX5gnBjguIk9FZy8SIEn/tpwMfuQQkKCKH3Qp2cWR2u1o49OKnEy19Lx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9393
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uHtW2cKpAR4QCAfWKJtCTFnB9us7YKje4PpzasW7Ax0=;
 b=DQM1Q9DtS0tpPvB3yo07s1B/FbpS1v22AtWtzyS3QuuTdwS8WMqWF49eTuJ3K1opJNHcC5EaltwSzxsIZ52bglHRRbGcjV4qZgQSSLJRPCGioqYYhdsiOvyGlDwrBkEA767SUYgDY5VddN3IRkdqHfGgRY8ECkwDTI5khSNcl1dj5gxyxORFm7voJDfSlDsgEtlaYzLbsOvOMliOA9DYqqi0jxlP04QnMZd2ojjARMCAhYVkPqIdUYdDdggfMCYXNkXEnSeUWOx3Zv+fF6LMEEE4Rwc6dk5Rdm87w+3A3Vfh3lTsX4p4nyq63ElPwkQQMppmTlqkWX/PV0xMmootQQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=DQM1Q9Dt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 Ahmed Zaki <ahmed.zaki@intel.com>, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 31/10/2023 17:20, Jakub Kicinski wrote:
> On Tue, 31 Oct 2023 09:14:58 -0600 Ahmed Zaki wrote:
>> Do you mean add vendor-specific implementation details to common docs? 
>> Not sure if I have seen this before. Any examples?
>>
>> Or, we can add a note in ethtool doc that each vendor's implementation 
>> is different and "Refer to your vendor's specifications for more info".
> 
> Gal, can you shed any more detail on who your implementation differs?
> It will help the discussion, and also - I'm not sure how you can do
> xor differently..

Sure, IIUC, ice's implementation does a:
(SRC_IP ^ DST_IP, SRC_IP ^ DST_IP, SRC_PORT ^ DST_PORT, SRC_PORT ^ DST_PORT)

Our implementation isn't exactly xor, it is:
(SRC_IP | DST_IP, SRC_IP ^ DST_IP, SRC_PORT | DST_PORT, SRC_PORT ^ DST_PORT)

The way I see it, the xor implementation should be clearly documented,
so no one uses the same flag with a different implementation by mistake.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
