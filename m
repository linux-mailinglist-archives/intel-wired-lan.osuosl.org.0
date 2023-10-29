Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4897DAC82
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Oct 2023 13:48:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54F7C7059F;
	Sun, 29 Oct 2023 12:48:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54F7C7059F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698583728;
	bh=MlxVQc+Uy3ve5p10IqcGwsheSq3Qb9NVR2lwsBY2Jtg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aNHQbRA2NO9Ce7fdUTDvrpXzuudTZl8DBdjYYYTvzvJn5m5j5cn15rrsp/+KtSqIW
	 fmhXyQqiJSg4Y1+Vc4wDxz/iqGsznevmsDTy30EBwnC0XkjrEpamFYobBlDSEU5DTf
	 sU+g8HEO5RAV9gobXxnMM0+TvTT4JYwgh6aBzJ+4dsBmoapnVbXhWYwkPHLBR1h3k7
	 wpawBtxPeguN8fyc0sEThYL87incYCr4DbkIH7M51/q5LGEsPp0+4luicl11gq9ytm
	 2m6ga6ufBuIqbd/ui1Y0bqwv2D7DFUs0KBtHVUDmBvGMB2qXKl3LP7aDVVf56R4nlG
	 apNhrGIqMhDZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id th9u7LDLKUJ0; Sun, 29 Oct 2023 12:48:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24F1E70502;
	Sun, 29 Oct 2023 12:48:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24F1E70502
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD1AD1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Oct 2023 12:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A748432D1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Oct 2023 12:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A748432D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id odZA_xeent7S for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Oct 2023 12:48:40 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24F4F42EE3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Oct 2023 12:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24F4F42EE3
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WhKMfvltVO9iP+la09IlqJVnluJEowd6b9Vqvk1dYjlDrIymKUkWVY6HyH0iIVaJuvzg0D1LRWviuUzDBgQCdmHQ16fit9qv3m6UfmrjllxeGlAGuwPa0ZGEeG4WBn8VgVNFrm1RoTOW+cPP9WqQoTq//VXY11CeKk0dtMzRA4HDz/xSKzrl3dh7LjonH2Zc20csHInvWm3GFn9PpAs8OPqMeYELehStSb75vg8WiWSaDdWbKZ0xCRn5huk15Mu9IQIfv6GXXe9qxL0a7tm7/JeknJHOhKMGhq2LUpCIIgp/HWfc+oWELN1dpDKP7/u+b4+aveGhmi4PQ0pw+AjH1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Y+xvY/yMRqGKtkrx4qNYRgBjXkb6GiV4pZHXQPGPVs=;
 b=JaWuEUr2FKC3vbAneM2z9TxHqkfXpkzunzpWYg3VPkxP/LplqrOMvLpxkgaUAvbX80f4xKrFtfkMlYoA/vt09+n/c3EcWeLm7SMf+XnE0mUb/F9l/XNttrKKxz3x3gbi5+u0SNe0F4pjYGzDhQ62MpfVJgnWQIci+1lRvDVDVIy0mUP7qRUsWx9xMup01rGLRxc/SOk7P7fzBikjlM0QE7oHRak3TrInnYy41kIK1iTRJsR34nMmxTTD5Co1X2HCs0HYvs3OJYuRqdnSyr/Y7B15VV1AJyvlo18q9LLpLZGyvBGBedD5l8RJiLwqfDpIz/j9Ec66vQmuT6OUNyi/pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) by
 PH7PR12MB7281.namprd12.prod.outlook.com (2603:10b6:510:208::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.22; Sun, 29 Oct 2023 12:48:37 +0000
Received: from DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6]) by DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6%5]) with mapi id 15.20.6933.025; Sun, 29 Oct 2023
 12:48:37 +0000
Message-ID: <e471519b-b253-4121-9eec-f7f05948c258@nvidia.com>
Date: Sun, 29 Oct 2023 14:48:28 +0200
User-Agent: Mozilla Thunderbird
To: Ahmed Zaki <ahmed.zaki@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Alexander H Duyck <alexander.duyck@gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
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
Content-Language: en-US
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <e644840d-7f3d-4e3c-9e0f-6d958ec865e0@intel.com>
X-ClientProxiedBy: LO4P265CA0055.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2af::11) To DS7PR12MB6288.namprd12.prod.outlook.com
 (2603:10b6:8:93::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB6288:EE_|PH7PR12MB7281:EE_
X-MS-Office365-Filtering-Correlation-Id: 01c6a5af-76db-4313-be33-08dbd87d5e70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GpBI/ytYVt7BK2OLPbztSlmU6YLnDNrAY7hn/lqPC+TvxVe3TZ7TPnIfj4/L7/+vtRKoaBeoHqYp6UBS2hL9H5mSJbWLRQhY8BMvq6DYDjUWC/V6hAQFb4gVVIG13gzcRmuMShyMBFckA0eBVX6yez0WDrfW0QqqzHDV9VHE2NbBoyqgFxo5qa6Phd8zE9dSKi2u5OAXEZvpsObMIqQuSHGqQGhPnChaQSysN5YBSddAJNhlpP9+XlsXzaS2EcxKy2BS2mWh616IVXQiqTDPPaC8SF99RaI5ZmnB1eIMrR6/Q/6A/mBfd+/+tCrda5H8mkvWSSC9NalRPGrpQFWnvW4W0FiORt94HRpIr4aTmarA2Cfwua9VzrHSVF4u0TVdl/2m1cpp2s1yBd7jevI7gIM3ME3kIuAp62MUD5J295PM/HUj8xhg3We5JG2H6Tp6S4I9ZUqNc9m4zxD1yVkhYbhoUcF9XQnAGbIiSBjyi+tZN5GI9lelxbyzbEo8g4WumXjNxucBhZn6D+frb1tFVNDIUbjOxYnV11TN+disLbj/bv5fYHoP5vcNHG4drBwX2/YgYlRwIcrC09r52sTufDlS4Jmc1+XG3WmkRnQLrnRNyW+f7Am/RUI+NASUcstM8C7FZDf1zDfgnDRHedJFc2PNCYg4BE0Y6sE0xF8IsXm3odUwTrZctKRCIGuQilL+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB6288.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(366004)(346002)(136003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(38100700002)(2906002)(31686004)(31696002)(83380400001)(7416002)(4001150100001)(5660300002)(2616005)(86362001)(6512007)(41300700001)(36756003)(66556008)(110136005)(66476007)(316002)(66946007)(54906003)(53546011)(6666004)(6506007)(6486002)(8676002)(966005)(26005)(478600001)(8936002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVRFb01SRm1FakhweVNmVXV0MnJ0dE9vN2dnTlEySnhiOEpLUGNld0k5aitZ?=
 =?utf-8?B?TUtWQkhReVpIR3NtQXkyZE5MaUdRalZjUTA2SFlScUZJa3ZGcDc4NHhuZ3cv?=
 =?utf-8?B?eDJzUFo1YmlhQlh5eXdVeGVSVU5yMEtSazV2WUhPV0Jla2VLT3JvNHZWR21z?=
 =?utf-8?B?WVB6MFFmZk8yYkhrODM5QWdLdTFmVXdrYzl1Mnk5YWJKbjN1VUthTjNXNEY3?=
 =?utf-8?B?NzY1RmVVb05hV1pCa1BJZDkyRGlobmVmQ3NPSHg4b1dGek95RzR6RWM4cElj?=
 =?utf-8?B?aTRKQTl3WEhLbEJTbEpBdTV1U2pnNHZPZlgzaDVQWlI1TEdvYnBRNnF5U2xB?=
 =?utf-8?B?azE2RUtnYUJRRURpV0FvNGJRU3JGN3F0ZUloVWVRamI1USs3Rnh5cmdETXRF?=
 =?utf-8?B?cFA0OTFIQW1IS2kzeXBwVys1S0pWTGR5akRhVERob2VKblNYcFgra2ZMWXZk?=
 =?utf-8?B?MlVWb0JlbmZzeU9pMDZRblhDYUVyYUNYbkQ1RGRYMGNBQTNrNzZ3dkVvVFcv?=
 =?utf-8?B?Zm9ORTF6eHdMWGNLbEZXWGttNzJRRjlPOG15RUZ3QXl5RmF4T3Yxb2Z5WFZJ?=
 =?utf-8?B?TTBvMStPRCsrQmx4SXB1UFJGTnN4clNLdjM2cUgyVTlNZlRJNWdQaTFjaFMw?=
 =?utf-8?B?QmlEOE9XYWtmbER0VE9veGZaTzJUR1FiSkdnL3F3eHVsSlRNTmhuWnJYMVZI?=
 =?utf-8?B?UHR1Q1JvK1N2dzdZZDhKbkM5SHRlRDc1bm5xbERrN1E2eDQ2MXVJRWdJSW90?=
 =?utf-8?B?Vmp6STNVL0NaSTJINDBvQWlrUHpsZUp5ckNHdzlsVDMrd0RLRzU4bmVjMGUz?=
 =?utf-8?B?dWlBYStyaFVzTFFmWnVCQWtJUW1PTnpkRGtNdUxkN0Q5VCtxK3E5dnpPWmNU?=
 =?utf-8?B?Zk1YTXp6T2ZmRG9ZNjk5bzNlRlRqZ2NCK0dPZXVmd2NXeXozL2Rad2VoeVBJ?=
 =?utf-8?B?a3h3dXdNVkhnOE85Rm95ZXExbVROY0pPZXdLNXE5aVA4ZTJhb2UvLzRDMHJT?=
 =?utf-8?B?RnBiaWJsU0hYNmhUejJnZDl3VDFBYUdUZTN0VVpYZlFCWDRURFgvclF0ZW5i?=
 =?utf-8?B?TlpQRU1sRHR5UThaWUVlZkt1R1NFc1JiZlRNQm9CdXhySndHT2lXb1ZmVENn?=
 =?utf-8?B?MEY1blpRRUprd3N6TlV5QlVaQnZoKzRjdVpwUUkrcTNBL29XOUpyZTZ0cStp?=
 =?utf-8?B?am1JeVJaTlBwNnNXbjQvTm0zSyt1RkVDT3NUSWFLNWpCWXhIYXZEcUNWZXAy?=
 =?utf-8?B?ajFkdXM3T2ZKU0RxSGpzVFFLN2FXTFRsWTJZeTRsVm8rSk5qRk1EbjFVR1R5?=
 =?utf-8?B?bVE4UU02elJDaE9Rck9xRituVzR0bWhUeER3SE12cFlXVHVrZ3d4NUZZbXp1?=
 =?utf-8?B?SVEyVlBqdEpQdWJlbTUyeUYvaDhpN0orOGxHdy9oRVJ2WEJaSlZCYVp4SWQ2?=
 =?utf-8?B?NWhLVURlMmZxeCsvZWg1RWRESDVZVkNMdHpWNm5ncm12c1lJZVhLUExDbFMy?=
 =?utf-8?B?UjF1aEp4L0RxdFhrRHZ4THJQclFFL2U1cmV1d1hkZTNzaTQycnh3dEpjZDQx?=
 =?utf-8?B?cUJoYjdLZGVSL3hqK3dwK2l5KzVGaWpncUxsdVF1cHluN1hhbXNQRnJ6eW93?=
 =?utf-8?B?N2o5aVRzakUvK1hvVTJBdXc1TXZBZDdOTUJYcFA3SDh0b09xeE9abmNrT3Bk?=
 =?utf-8?B?Z29SZERXNnE0L29RSmI4U0RZdnRQYVIxYzhRamk5UVljaDRZWlU1OHlHL2JL?=
 =?utf-8?B?VEl1ZUZSTWtuZjNkU01taU1QZHdVZGtJcTN0NlR6VDFDWWt3M0dJUk1MU0hH?=
 =?utf-8?B?Y3M5ckNYYmdVK1dOOUlUZy9PRjhzdVAyZWd2RE5yWDlaRHQ4aDJkVTNLblkx?=
 =?utf-8?B?SGxTWWJ1MkZSeEVIZ2hoQ2RpSUduMm1YeGxoeE1WSHdNMVJ5QWJkL0RzN3RM?=
 =?utf-8?B?Si9JOHJOMFhlSlZ2R1FnVS94MnZ5YXYyVXdlNlpPbTJDbUt3Z0N6b1ZiNFpG?=
 =?utf-8?B?QjExalgrN3hFdDcxWnpzbGhCWWNxWml4NWlXOEh2TFpLWExUWG5ETDJtaXlt?=
 =?utf-8?B?b0hQeExvTytUOWJ1YTFRcVdWTjhlNlRHTnVUc0N3SFlVU1RUL0duN1NzWW1s?=
 =?utf-8?Q?cuJ1ClTafSWwG9FgvEl9sKpoa?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01c6a5af-76db-4313-be33-08dbd87d5e70
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB6288.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2023 12:48:37.2196 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bdv7t2My4IpoVFmXRD5XdlrQ4jXJOCPMttfLujlufaT7Sm2AizfKL6CTzogzCuIN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7281
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Y+xvY/yMRqGKtkrx4qNYRgBjXkb6GiV4pZHXQPGPVs=;
 b=Ag0Ioi1tFgE8ymF5GKxMKSBDtNhOaAhihLpTzUmThPeqEbDuUAbA2wbysnRVpUDCMwy/utW2mJGd4uMRo/pMOH1txKqdRdTpKAZ5Jh5/KIredXqQPAgiJI0YhZgHiOYlVZMD98HYOfkbrnJrn7x4+ZL+q6sUAQ6WIAzVfafHEe1adpdispRGneZIramNqlRqNAjU/i62KA8DteOc8OlXBpgbUYcgTmFkrLIlFsNpxe0KglJW/1kAIB0qY3biy4FbOKC55cnwMUsFsWH4F0kmRcMvIKrjweRv4tP9afrhQjb4IBs3rb+gmztSNnGa+5PrmINOgBnrSTMAODX+ePxbcQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Ag0Ioi1t
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
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 29/10/2023 14:42, Ahmed Zaki wrote:
> 
> 
> On 2023-10-29 06:25, Gal Pressman wrote:
>> On 21/10/2023 3:00, Ahmed Zaki wrote:
>>>
>>>
>>> On 2023-10-20 17:49, Jakub Kicinski wrote:
>>>> On Fri, 20 Oct 2023 17:14:11 -0600 Ahmed Zaki wrote:
>>>>> I replied to that here:
>>>>>
>>>>> https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/
>>>>>
>>>>> I am kind of confused now so please bear with me. ethtool either sends
>>>>> "ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the
>>>>> interface
>>>>> for "ethtool -X" which is used to set the RSS algorithm. But we
>>>>> kind of
>>>>> agreed to go with "ethtool -U|-N" for symmetric-xor, and that uses
>>>>> "ethtool_rxnfc" (as implemented in this series).
>>>>
>>>> I have no strong preference. Sounds like Alex prefers to keep it closer
>>>> to algo, which is "ethtool_rxfh".
>>>>
>>>>> Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how would
>>>>> that work on the ethtool user interface?
>>>>
>>>> I don't know what you're asking of us. If you find the code to
>>>> confusing
>>>> maybe someone at Intel can help you :|
>>>
>>> The code is straightforward. I am confused by the requirements: don't
>>> add a new algorithm but use "ethtool_rxfh".
>>>
>>> I'll see if I can get more help, may be I am missing something.
>>>
>>
>> What was the decision here?
>> Is this going to be exposed through ethtool -N or -X?
> 
> I am working on a new version that uses "ethtool_rxfh" to set the
> symmetric-xor. The user will set per-device via:
> 
> ethtool -X eth0 hfunc toeplitz symmetric-xor
> 
> then specify the per-flow type RSS fields as usual:
> 
> ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n
> 
> The downside is that all flow-types will have to be either symmetric or
> asymmetric.

Why are we making the interface less flexible than it can be with -N?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
