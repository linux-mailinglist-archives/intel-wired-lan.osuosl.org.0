Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 224F47CB742
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 02:09:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF68341920;
	Tue, 17 Oct 2023 00:08:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF68341920
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697501337;
	bh=y4NOMEAXzE8S8aozQy2eYUYicFC29WWDFn//rJiHmWs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eRmmtc1whseMANBpgkcCMhiiI2dyL2aLGxYkcvs/QMwWOXqbnKAcCpJGQ17e8+Jzk
	 JIznRnMY8NiP0cD8uNf656ZfsnMqlyigXjr9K9/EtUtwL5RzFxJaDmGvCKCoz8bnQ2
	 ZT6ODvjloMfUiBLcZKFMoONdQtfepaJ7iMevqVeNxfFoXK54zkzDlOEEMzIr6PmClR
	 zFa0qM+m1KfxCr2InGydIgvrB9Xfa2zW/G1K1VDHm0o+5cAZtNutGEyreqb7FYhSpk
	 JLX/JWBS25j4vz8fIUXZEHcj2seNRpfsxrg44mzgh3pNMv8RgDZz5ag6S8Pt53l1hT
	 j8W1opRqBOW1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RfwZKcEeQaZ3; Tue, 17 Oct 2023 00:08:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACBFB41916;
	Tue, 17 Oct 2023 00:08:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACBFB41916
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED7E91BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 00:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC13B40467
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 00:08:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC13B40467
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wW40Z-Y1mUqm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 00:08:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 199BC401B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 00:08:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 199BC401B7
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="370740483"
X-IronPort-AV: E=Sophos;i="6.03,230,1694761200"; d="scan'208";a="370740483"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 17:08:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="899702545"
X-IronPort-AV: E=Sophos;i="6.03,230,1694761200"; d="scan'208";a="899702545"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 17:06:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 17:08:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 17:08:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 17:08:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XnsV0QMStEhOXwSCgHbznhgpA2Wth4A4buP2/KO2IuOK2zQm9wKlzRGDvuEyeZ10CXKEaqOZFqd7T/0sJpYzPP4ur0H7CFKdI/HhJMrCMTTUX7g/YnG+jPBPyuDgjMleYFdYQ7iZgNLJYboE5jUeAv/XieHpNrLENcISXrS6j/LTnPl6asdlbfk9kgiMr5ADV5SXdp9Y3e+pIrV+yM19WTwCdsfNT4a9Be9GGitEbxCnWsbSQ6aDSwHyjlyaHSnpg6an7oR2ITSgOXHCoJBcNlTdfaG+CJ0OS6bBOC499ksc8fgDcA9MNNw3fdV5kNfuNl5SBmC2dNSb7rYUoYJVHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u7IsG8wV2pr+DiPl/crhmft70scA9tcirhXd0oCGn9Q=;
 b=OTX27tg/4oWsHKTMxUrjScTyIyqezhYSER97VuJEJT0xWxRLdwpbEvljJitEx/SlT6aqa8LyGGMbbEZvrGFUqx5meTPqojLfhMXyUHAhcJrVIA83dOx0vkbyr5xLiktxYmrMxfLaYHd03FPD30bNUjIZRir/2QQjVbMce8zDdEOLkeRabys9ym1XQ1TQbP3bXY0UsMxQVaEWXvmFl3H9o075tIArvvzZPQiETwDVMzCNZ0KYox5hc9r3+L1SO4SNDCpXQdPtwVgJoNqpQsOVySZPCm2Up+B91rWooaZpD2K42zzmRxq+Mmz1VdlZljEfy/V643xJPzBNQFf5pGkUKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by MW4PR11MB7032.namprd11.prod.outlook.com (2603:10b6:303:227::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Tue, 17 Oct
 2023 00:08:42 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 00:08:40 +0000
Message-ID: <afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com>
Date: Mon, 16 Oct 2023 18:08:32 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Alexander Duyck
 <alexander.duyck@gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20231016163059.23799429@kernel.org>
X-ClientProxiedBy: DBBPR09CA0007.eurprd09.prod.outlook.com
 (2603:10a6:10:c0::19) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|MW4PR11MB7032:EE_
X-MS-Office365-Filtering-Correlation-Id: 221a14f5-1c68-4ac4-af87-08dbcea53794
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7QMZhSdcctvisD3PgK8qrIpZPAJXUtXGGJ3RUmtwmtHW6k4Py3W1IrX6G3ll9q0vs8v6KGjdEbyZ8USptu8iVsoAy02UFFOLn/ahT0Fnn4mXZbO1AYaIc2JuL4qe9QL5d8E1RsLSjHEFm7Mk7N6jkVG6eOAXtPPMu6deNmPbS+MWRNpwwpk+eFii/ioy1ZO3xYZGD7jEFzs1s8C/CaKXGtA+Slqm6nVegncueFNDlsgFz0f14SxYE0Mh0/F+cuN8UhKfJbGLIC2DhuUs4evncHMKpBR66kuDEPntZUBRBCAxEMJy2ZE5Ek3p8b55LgO/lTEc8BkSFtytU3my6vza8jBy+yUbfaCmj3FMZSs7ZmLHmgxjKb9afzHi5FjXjSF4Vixio/C7kSqf0czMShaVkgO6v4XFqcMilIG76e4uMyUIn8uMEZF9DQvBELYT0DQWQzzxAWEBsvv16jQqPK1/HUIzcEzc3l1xM4PT1tQuxrKbvQX/mSu8a37w0Ru/wkAeUNLpGUqZfjjXM1tpZ/yjogMyI83t2ztjoNh/PrFmhpByLl8CIXVjxRu5Ea7lFkMFG2L/i9AZy1Hoh8FTd3Vl0p6OmQZD1VpnuqzlIB06lRcdthVxaNfevhFUvHgLHmjsuzovf/WLPidfsiyn4SxdMw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(396003)(376002)(346002)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(6506007)(53546011)(44832011)(5660300002)(6666004)(2906002)(4001150100001)(26005)(36756003)(2616005)(107886003)(83380400001)(82960400001)(38100700002)(86362001)(6512007)(31696002)(7416002)(478600001)(6486002)(966005)(41300700001)(316002)(66556008)(110136005)(66946007)(66476007)(31686004)(4326008)(8676002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnpUNkZ6RVplWUthdG9HVlk5NUpmWWN3VFYzcHMxbHRUL3VsMnBFZFlWZi9S?=
 =?utf-8?B?V2h2TDRqSHhLVlI3elk3T1N0YUF1ZGtRRFRiKzF1eHRobSs3blViSTgzZ3Aw?=
 =?utf-8?B?ejFDQXFLVnZPMUY1WFVRaXplWnJKS3FYWUd6Qy9rQTJsaXFVWFBEQkhhRWQ0?=
 =?utf-8?B?TmJ2a0FyRnlpdTdMaE9oTzZjQ0htMUNNQ01VZG1IVDZFU0hPNmc2N0xIMjBx?=
 =?utf-8?B?U2ZjTzBQdDIwTnVZU1BxelNsVzdPaUcxZ0lEdW5wZTNURHFHU3IwdXl6M1VB?=
 =?utf-8?B?RTlGb1hpSzlnZTNFbHJ2ZDd0bjVEVkVEUFFBZG5zOFE1MXYvNmpwcVRFN2lr?=
 =?utf-8?B?YU1vNzhvM1NCaWJSWTZqQkhiZGNuUnBuenRnR3IyamhVZGJOOEc4VUNXQWlx?=
 =?utf-8?B?VnhiUzEyT25PY3FlVVBrWGlPQlRBOTFKckN6c1pRbFJjc25qQjVKNEF3Mnhu?=
 =?utf-8?B?ZGxkVk5hQ2RSdExWZ280VENjNVcxNEhUenB3NC9kMTNTVzVjcC9qaVFWZ0JG?=
 =?utf-8?B?T0l6dVlRcHRKdW1yaFZIcllRdEpMQTBsbnNwY1lZUzVFYWZudWh4Yms3bjRF?=
 =?utf-8?B?VGQvc01yVFo0bUZ1SHBnblVEd29CSUdyWGRLRWZETEZrUE1iY2h6YlNkYTZ0?=
 =?utf-8?B?SEZZKzJVTUwzQSt1bUZSa2V2WWY0YjNlcFNCT0w0Ky9OSmJmRGNnR0l4dktv?=
 =?utf-8?B?c2pNTXQxc1FRS01LRS9kWTNES01wQnM0VGE1eXRRRnBCZm96enJLbHp5UW56?=
 =?utf-8?B?TnlhK0kyYjM5N3VIQnhUblFoOWpVVmJPVmdqK1YwelB3S3psODhMNE9Fa2or?=
 =?utf-8?B?QU9WM2VvV0tWc1dpMVB0cGxweEw3aTRHOU5ZSEkyMXg2NWl5cTFwMlFkUnZs?=
 =?utf-8?B?RE5DZXJCSW4zYlBLTzhCS3FGd2ZrcVFPbzNxTzZVR2F2UEUvZXFyMzZyK0l4?=
 =?utf-8?B?Y1g2TG1wcnUzaG1kc1JFSWRLaG5uYXY1MHNYcEtRT1JJOWVwSmdSY0FCUVN6?=
 =?utf-8?B?WFBmdXhUMnh4Z2VhNzFNMGtUYi9jWmc1RFBvMFhlMWVScnNHNHl3a3VCVjRr?=
 =?utf-8?B?ajZmeXExbFBDK2QwSGpaSXQyaXViQXd4ZC9HdUtwa3RST291dXh1T0lqUUFL?=
 =?utf-8?B?T3I3L2FiNmhIUVNseEk4VDdzT085ZDVwUzRCM2FBWTBOVCtFZkJKTVo5RDZD?=
 =?utf-8?B?NmRKWTM1dEZOQ0tyRENrbTNYYnp1ZGhOUThHcWFoZUVzSDBpNE5xK2d2ZHdy?=
 =?utf-8?B?dTlScnhvU2pNR3JUVlhSbVpnTWRvaWE3R24wTENhQi96a2NaZ0N5Vm1GV29n?=
 =?utf-8?B?a2ZrY2NPYko3bG5VVHVTRVZ4aVYxT2Z0a0lNTjJqR0hyK3FxQytoUDY3NjNj?=
 =?utf-8?B?Q1Z1TWg5M2Y5Ylg5WnJ6dlRwaWhlVXZYWHQ1NDY5eTlTWkZ3RzdYbk5BK0dk?=
 =?utf-8?B?RVo2WGFtYkU1UmtwaE9SN3VIQ2dsa1Nwcmk0SFlhVlRkTGxCNjFsaFU1alRl?=
 =?utf-8?B?YkJoZENCd013MElqQ0YvTk9lbVhjL2d0Zm9CRUJpL083NTR2MUkzU2NtZkNl?=
 =?utf-8?B?MjE1ZUJsd2RpNmlqM2JLZklOR29UWnUyNjFPdkJ2dmswRkI4SEswR1FndU5C?=
 =?utf-8?B?L2dpMG9aVU9UL2JzZUZHWmltOTNuVHJ1N1d1MHZzRmVVaS9xMWFqZ0kxZVVK?=
 =?utf-8?B?YnF3N3FyL2JjOUFiL0hxZTFvZ3ZSNUM0RnV2WXgxUVlpcDZHS2pZbUNiNnE3?=
 =?utf-8?B?QlpGT1VnQXdnQmdER1d2bUYya1NIMFRicDJPNE5XTldhWG12cFpuMHduZkFy?=
 =?utf-8?B?YzRrcEZQQnBtVXFBaWJEaGR6MkRMeDRXQWNSYnQ1aDEzRDdBOXBFbGRjaVRm?=
 =?utf-8?B?QnR6QVVrMlBTMEVhaTFKZy93aHJkZGQwU1pFWnpvWklOK1pxMDN3UTZheHRs?=
 =?utf-8?B?R2pkK2tmZ2VSZnVZc3BDY2JQMzNYckJrWm9tZ1A3NTVHeVEvSy81S3pCQjY0?=
 =?utf-8?B?OGN5clgwWThlb0ZsSXVZdFQvaVNqUW9WeThrSE5QYVRVcTNzYTc5N2hGRWdX?=
 =?utf-8?B?YitPWU9nNUl6K3F6ZjJrdk91TkxDZVNJMlQvaTBHWjUvMG1iSURIcjlLcE50?=
 =?utf-8?Q?hyYfKnMgF66VI2c7kPAWVpOTL?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 221a14f5-1c68-4ac4-af87-08dbcea53794
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 00:08:40.2786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 96PuETs7axDfj2i5VZF/HKU2O6IbpE49fKYbC0MhGDQVHbrbvDvw8SDx7xU8AYEfMGs98MQlx2YpDKXFNPrCug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7032
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697501329; x=1729037329;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gVoLnZdq+F4xySBN1mqT1R1MRH5DxuenpDJJANFB6kA=;
 b=ay/JtRtVqnpgfkh9IuW2iaqnSvDNpjuCM8wMYheplPTDC9sdH11E0JCN
 n3CJep5xm5iQTjuYDl3aoVvkSnMOdL1ns2XcDPTjd5oKKMe78YpmqKH5j
 HAB5z34u/jdH0rWOIRngytacduGedZQu9/KL+A7ENawHihAEpsawfUalD
 8YXmmyKfhUAw9iBS34kFUeHFQG/4G/eiltwbPUJAPUIzKod8DBp4obq30
 Wkoy3Nd9tZh6gedR9pFi5tyyx+ZNUZHavtuvPXPoodF6lvwA/ogSO1pqb
 9z8Ml6l1eb55MfkilQPCktRdXr2r89BwM88ym9lAs9AC6MrZ3PBG/oowD
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ay/JtRtV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
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
 vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-10-16 17:30, Jakub Kicinski wrote:
> On Mon, 16 Oct 2023 15:55:21 -0700 Alexander Duyck wrote:
>> It would make more sense to just add it as a variant hash function of
>> toeplitz. If you did it right you could probably make the formatting
>> pretty, something like:
>> RSS hash function:
>>      toeplitz: on
>>          symmetric xor: on
>>      xor: off
>>      crc32: off
>>
>> It doesn't make sense to place it in the input flags and will just
>> cause quick congestion as things get added there. This is an algorithm
>> change so it makes more sense to place it there.
> 
> Algo is also a bit confusing, it's more like key pre-processing?
> There's nothing toeplitz about xoring input fields. Works as well
> for CRC32.. or XOR.
> 
> We can use one of the reserved fields of struct ethtool_rxfh to carry
> this extension. I think I asked for this at some point, but there's
> only so much repeated feedback one can send in a day :(

Sorry you felt that. I took you comment [1]:

"Using hashing algo for configuring fields feels like a dirty hack".

To mean that the we should not use the hfunc API ("ethtool_rxfh"). This 
is why in the new series I chose to configure the RSS fields. This also 
provides the user with more control and better granularity on which 
flow-types to be symmetric, and which protocols (L3 and/or L4) to use. I 
have no idea how to do any of these via hfunc/ethtool_rxfh API so it 
seemed a better approach.

I see you marked the series as "Changes Requested". I will send a new 
version tomorrow and move the sanity checks inside ice_ethtool.


[1]: https://lore.kernel.org/netdev/20230824174336.6fb801d5@kernel.org/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
