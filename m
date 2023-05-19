Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 843F0709F00
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 20:22:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5CFC4253F;
	Fri, 19 May 2023 18:22:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5CFC4253F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684520564;
	bh=US9j4HPLlQ77EcBE5Vt+IPeJj3QvFoRz75DsRSSA6Pc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=54FCFKBGnsBJl9Fl1LXbFoje7oSTKKzjbru6Hv81ZquDt6gLoY5o0kwFPi9Jl7+xn
	 3yUl2KV2aukXxUk9rQQGivNMCfdMaclaCA0IjyTfXKLrFavJUsyuf8dkInVSUFKMYy
	 DfQIE0Lrwzx8qY2uNIDfBro6Z4jKZ9OxpqBgKY7KKNZ/AICOWHGPKVnO+Nwqt1mU5m
	 rYIunCwx8Tccp45b4SsS1TpsZ3DbGmLVkjAAqZD28fxmmRzslqi2MdXfPAzY+Sj8R+
	 /RBVSzavKMCtRzCQPGm0UoYyaXSkjEUVpT/GE6qs3vkr7lnSTdp4n5SJO7kfcdX8FI
	 vnsD5hMrBsfzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E9Y29W2JxOtB; Fri, 19 May 2023 18:22:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F68A4192C;
	Fri, 19 May 2023 18:22:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F68A4192C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15C151BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 18:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEBE54192C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 18:22:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEBE54192C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J7ddYRkd-f4E for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 18:22:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB1534177F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB1534177F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 18:22:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="355673450"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="355673450"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 11:18:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="846977085"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="846977085"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 19 May 2023 11:18:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 11:18:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 11:18:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 19 May 2023 11:18:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 19 May 2023 11:18:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8eYuClhvOx9OD/26b4YpZKJrTW8YLUjpvgFalN1XKSlVWJk+Dm7NoTKeBvl9cOxBjiic/RsWstGPzUblSBRFKTw2aAcR3Zmx8Ptmo8Gd4YFEVCKdZMZMl9alHGSlMzUZcuCNOgvHsMmQr9lzFN4b1h1xurtOkRN2Esiqi+QJ/rTq09IJ++OI36fN4JasKfckfW9lPkBYzWH4eMaA7iNJWEYB8UrpHM9eCLJrnQwDnxiJ2vhnoo600reIFGmWWFoKH7K7QCureVwo+oJJvCnQrZ9qiOY3hgAMZtGcIr2Ej+N9aGkbBmrNlENCVyg7h4iGTQpcF5TsYaYOWPbeEuUIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k1nQ2Iz8SZQGG/fUx2h+Nh61Tw2bUP7unpfjSZLeNoI=;
 b=dBTOtU44Su1o8Y988qla2W0Gu897ARGuAfUkd2Jp37B0EfOTHsGHVdZJSxKeDPYZfyyurtDTrW2+Ji54eBbfVdb9W61+DMxK1uk07EDjGJG62AYMdfbab4C2m/zyeigKaH8nUeZievlPtQL90n0nLM8BTPjilv7yBrHBiibhG8JyTBz0m9NhT1BK3v089vWMgv/VULM0AtH98ihAaBZ5KnSBvme/mzyGRBtGCSU2u8qYEHv81I8dMAOP5c9P20VAtvE4s2uk5PydKizYTn8AQN/wBM1feE4tpaqJ9H+xUSrFUSB5Io5tVnMKabZoo9Qsgs/eMk+2iZ4csbu/XQdNmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DS7PR11MB5992.namprd11.prod.outlook.com (2603:10b6:8:73::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Fri, 19 May
 2023 18:18:27 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::5194:555b:c468:f14f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::5194:555b:c468:f14f%7]) with mapi id 15.20.6411.019; Fri, 19 May 2023
 18:18:27 +0000
Message-ID: <0dac2d68-1997-5814-3331-f5a1cf1b57e2@intel.com>
Date: Fri, 19 May 2023 12:18:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Kamil Maziarz <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230516132331.96017-1-kamil.maziarz@intel.com>
 <20230516132331.96017-4-kamil.maziarz@intel.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20230516132331.96017-4-kamil.maziarz@intel.com>
X-ClientProxiedBy: FR3P281CA0030.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::16) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DS7PR11MB5992:EE_
X-MS-Office365-Filtering-Correlation-Id: 723483bc-4178-499f-1a33-08db589570ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kcjdYQ1oVOrSVYojIF9bJuM5mnlw5khiQc9fUQQLStjuTEV/BPB4DEJArxHJM8s96ioLxymrXXJA8Bk88Dmf37KNJEbKtoT7zYm2g8rItAAkTgaKFR16G8+NRF522Pf0Y45kUgQS1nI2fOzeXojlfU/X92YZeaU0SMPxvhJl+TkqaBjR5eI29Edm0r9ri6p93n6S9g5pzXzeAfA14+B69rfTdzqvjhggddL/med4ale68A1jAhBVHQ0hteaI0IxxGX2qj9R1j0BMUKpZRb40jmiqrKaoFtQ4d6JuhMkcCeC5018tn1nzT3HinHAORqRf5HdUsMbfJqqJRTt5rRaDLffB2oR/IBN/TY/uBq7VoLnwwKf9yu4y3KsS38bfdEf2TvkvpBJLCksagMuKfHy65MF9Npraevn774DvkcFvCY1pLYANOj4B/+8aQZ59H3+9iB2dQbVAjN2xAhU7OzLx9lajUKSGLj+kwhnxr5ma8X3jpWt1P2hcYiNH2qwNlB2yiyalz7ml4BA1XHbLoUZ7+fUW7ZInfnh2zD+fFitg2HCuUGzqYSbsPA+4aYfI/P6zU3CxvgGkoQQKsLpy/smohKavwHsV6KwBmMJz+BtKIOVsL7ECCIJwuh9xk71CZwjJxcpFks21aA4/eoAaa42x6Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(366004)(396003)(136003)(39860400002)(451199021)(6666004)(6486002)(41300700001)(44832011)(6506007)(6512007)(53546011)(26005)(38100700002)(5660300002)(2616005)(83380400001)(186003)(36756003)(2906002)(31696002)(86362001)(8676002)(8936002)(82960400001)(478600001)(66946007)(66556008)(66476007)(31686004)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjI0bUkxRk1xZXA1dW0wdkV1d2lxQTY2bjlzRVJHRGxWK2taU3M0d0ViSDk2?=
 =?utf-8?B?ZTVIcHVabTZ2M0RKaDdxcXc1eFQxM3NFY3p0THlpMGFKdFR4MjRsblNZZTBo?=
 =?utf-8?B?dTAzM2E2YmpRWWMwbFp4eER2S05sNlZrK3MyRmxzQy93UlduanRWdzR0L2JE?=
 =?utf-8?B?OU0rZ1dzcEkzRkE2OFgxOC9hQkpMek9XVnNaVHpEVU9QSDNzVWd4eDdGdm02?=
 =?utf-8?B?TC95blV1UmNNWEczQUt2V09nbzZnWVFxcFc3T1J3bW14QTE3aHpSSlB6NS8r?=
 =?utf-8?B?UzZ6ckkyM21xRnZrL1ZxMjBOeHdzZ1dyYitSUXg2bXRxQUVNZFNMOFlvZ0Jz?=
 =?utf-8?B?eXVFSEgxa3VTYXNsYndhcmcwbDVhTUtTeXBIV21TTTFxcUNSSmxTZmlLamph?=
 =?utf-8?B?eElVZDZqUHpjaWgzbzl2QmNsdHFGQjBxVWNpNEMzQVloQlV2c09DcThVTUNZ?=
 =?utf-8?B?NW9ReDVMbHNjL2JMRFNiOElVb1RIenJPMUZVVTg1dWcxMnVpZWxXUi9Pc2cz?=
 =?utf-8?B?RndNWG53RDRXTzlwL0RiYmpiVER1NE9idnlzVy9CQllWMTVpTDRMajcyNEVZ?=
 =?utf-8?B?U1I2V2hEU0srSS9mbHN0Z3NkcHorcHNvSTFDYldjcSs0V0JjUmQvKzZhcmJO?=
 =?utf-8?B?SVhrdzRXWXJ5eXptS3hZbjZoZzhybWtYRXNudHlvMmJVeER4VXFUYXA0MmFR?=
 =?utf-8?B?SnIvZ2FXLzVCQXA5QVdwZ2x2UVZLVUdTOWFuaFlOMFhrd1RyUFFsK1JVZG5r?=
 =?utf-8?B?UWwwaE9uUEEyNnNuSWt5UFVkYkZQU0ZId1EwUksrSzJnK05BcFluOE13aHhv?=
 =?utf-8?B?b0VVMWVMcFNSVWRTQ2xZZTUwb3EzNnc0K2FZaUkzektOMEd1QXI2WStScTVP?=
 =?utf-8?B?RHBpcUxNdmg4a1YyeHVIdms5ZUYxU3dkcEJxc3lUZGVJUnFlZGNoZ1hFT2la?=
 =?utf-8?B?RGRtTlQxcTFDSmpncXExdkJwbjRoRHNwUHlSK1o5bW5KSXhIU2JIUXlvRDBs?=
 =?utf-8?B?WGhZdGo0a01xRDBKaUNwcHU5STdEcXd4WkJtZkFHTUR6R2FPcE0wR2Q3SzY3?=
 =?utf-8?B?YXE2S2p1dzRiSXpSMlI1QnB3VmsxeHIzMExQeTM3b1dtWHUvMFN5Vy9UQXNi?=
 =?utf-8?B?RkZ4MzhSeXlkMFdRQURUZ1ZBbGtDcGtyU1ZCUEx3UG9zcVl2VTJwcE8rNEs5?=
 =?utf-8?B?eFZxOTl1YXI5Z0tTMkFFUVFkTTNjeC9nREJRcDc2MVJDaXRVeHJLbFlWdFNK?=
 =?utf-8?B?VU50NDdqNjlPRDhERjVINW54MVJkS3p1SDRPQ0ZBa24wVy9TenE1VlFpaGxG?=
 =?utf-8?B?TDI5eFBIZnQzWXJNZHdyY2gyUTlIZ2lja3h1aWFPNU9jS0cvSGJNTVJ1Tzh5?=
 =?utf-8?B?V2o2TFpsQ21uM0RMazBUbUh3N2trVzN0cm5UVC8wK2dKMTFicXlaNllvbUsx?=
 =?utf-8?B?UmpxMEw3QXZ5bzIrZWxRSjIrUTF2T09xNllqZmk0ejZIMFRIZzV4Z3o4Nytv?=
 =?utf-8?B?SXBtd3A2dldyOVM0S1kwSk5lNmtmU2diUEg0K3lGTmZNWUFDYTVoNmtwVnl6?=
 =?utf-8?B?dVVGVThOeVlwanpITmJCSEx6RlRRR1BYTGRaby9jeG5mdHNPbit2N0xUY0I0?=
 =?utf-8?B?eCs5NVI2TnMyeFpwSFJ4SnFBWXJZQ0VmQVRiZUcwRmRuLzczZ3ZnQmtWSlV3?=
 =?utf-8?B?WWxBOVVrSW83MzdKdEl1M0g0MHpkb1hPWDhwa1BQM0tabkFsTFk2c2orc1Rj?=
 =?utf-8?B?V2lpUzdxWTNVRlpzaStibWxQbkQxdUY3Vi9mZTVmVGppL0RLRXpsNThheDRl?=
 =?utf-8?B?Tmh2QkpWK0dxVXdRT2JxYkxrL0dqemlpa3NOMUxEMmNGSGVrR0xpZG9Nb0d3?=
 =?utf-8?B?Y2ZpSmd2U3ZPd3h0UjdHZHFvZTBxS0tBSGxqT2hkVDlURXN4TkJzME9ZMnFM?=
 =?utf-8?B?YlVrQkRMaWJTMy9QOUFVbEYvNy9ZOHJlSUtKd0x5OXNiUkZMRUIvdHZ3UWw0?=
 =?utf-8?B?REMyUlNVZUp0ZExrZlZSYnRlRy84SkFWNHlGVk5OZXlmZ1RaTDk2RXdrRlpa?=
 =?utf-8?B?WlRxTUdzSU9lU1hNV09JL2Ntc0pGNGlvUjQxUlViaVE3TXJWTWlLWUducGVo?=
 =?utf-8?Q?yZACCTB0MwBVAvNso90Mb2G2l?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 723483bc-4178-499f-1a33-08db589570ca
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 18:18:27.1507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GL6jPC/Nk0mKynnptHx53G0Be00HYWVawuinD3fInvA3kUR5weI+XOQgsoW4mXz3gLrTlU1jIkBRxCaiG9+qZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5992
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684520556; x=1716056556;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Cprd/2DZst7wxMiGlqx1Fwj3mVPNZ25cM46PNQLPhnI=;
 b=QW/B623K/AEYhAmUkS0J2bXvfM1dbG9VD/TuAymuQWBC9v6Ek4EsQD51
 aKpZHHgNAKMGg3ffKo5qSgNVatTCBKjSbTlCFDLuH/iUJ/0GW2Pz6+C9d
 HbXfDLParnYk21Hnq+b1XqVUWXOKK7Z69tDd1fmG3zP3HFPKCRJ77dLx8
 JTZk55vNhbszDW9oxOzJ+WYGpHUl58ERXgmuz9zo4ITwf0UeuzVuMOr+7
 dNu+wHg/PyhMA0amj4LI0oKNc2bJPAT9QzKEqkPvoyoHtKFKgEuyoZHwp
 Uy7qog3mYKHmaK/dIxroOlxL2Tt++UZt1XkxNbqwOBKvIsn50iOth3g9s
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QW/B623K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v7 3/4] Revert "iavf: Detach
 device during reset task"
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


On 2023-05-16 07:23, Kamil Maziarz wrote:
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
>
> This reverts commit aa626da947e9cd30c4cf727493903e1adbb2c0a0.
>
> Detaching device during reset was not fully fixing the rtnl locking issue,
> as there could be a situation where callback was already in progress before
> detaching netdev.
>
> Furthermore, detaching netdevice causes TX timeouts if traffic is running.
> To reproduce:
>
> ip netns exec ns1 iperf3 -c $PEER_IP -t 600 --logfile /dev/null &
> while :; do
>          for i in 200 7000 400 5000 300 3000 ; do
> 		ip netns exec ns1 ip link set $VF1 mtu $i
>                  sleep 2
>          done
>          sleep 10
> done
>
> Currently callbacks such as iavf_change_mtu() wait for reset and don't try
> to take rtnl_lock if they already run under rtnl_lock (flag
> IAVF_FLAG_RTNL_LOCK_TAKEN), therefore rtnl_lock will be released when reset
> finishes, and only then another callback which uses rtnl_lock will be able
> to start.


Please update the commit message. The flag IAVF_FLAG_RTNL_LOCK_TAKEN was 
dropped in earlier versions.


>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
> v1->v7: no changes
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++-----------
>   1 file changed, 2 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index ef7b190ddda1..3d439f9ac97b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3015,11 +3015,6 @@ static void iavf_reset_task(struct work_struct *work)
>   	int i = 0, err;
>   	bool running;
>   
> -	/* Detach interface to avoid subsequent NDO callbacks */
> -	rtnl_lock();
> -	netif_device_detach(netdev);
> -	rtnl_unlock();
> -
>   	/* When device is being removed it doesn't make sense to run the reset
>   	 * task, just return in such a case.
>   	 */
> @@ -3027,7 +3022,7 @@ static void iavf_reset_task(struct work_struct *work)
>   		if (adapter->state != __IAVF_REMOVE)
>   			queue_work(adapter->wq, &adapter->reset_task);
>   
> -		goto reset_finish;
> +		return;
>   	}
>   
>   	while (!mutex_trylock(&adapter->client_lock))
> @@ -3230,7 +3225,7 @@ static void iavf_reset_task(struct work_struct *work)
>   	mutex_unlock(&adapter->client_lock);
>   	mutex_unlock(&adapter->crit_lock);
>   
> -	goto reset_finish;
> +	return;
>   reset_err:
>   	if (running) {
>   		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
> @@ -3251,10 +3246,6 @@ static void iavf_reset_task(struct work_struct *work)
>   	}
>   
>   	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
> -reset_finish:
> -	rtnl_lock();
> -	netif_device_attach(netdev);
> -	rtnl_unlock();
>   }
>   
>   /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
