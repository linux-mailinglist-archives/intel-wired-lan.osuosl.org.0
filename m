Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C59544E5917
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 20:26:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5043260FF2;
	Wed, 23 Mar 2022 19:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cq2OxwvOY13h; Wed, 23 Mar 2022 19:26:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8E0F60F46;
	Wed, 23 Mar 2022 19:26:36 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D2631BF48C
 for <intel-wired-lan@osuosl.org>; Wed, 23 Mar 2022 19:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46A7D60F46
 for <intel-wired-lan@osuosl.org>; Wed, 23 Mar 2022 19:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WF9CxLGjSfu0 for <intel-wired-lan@osuosl.org>;
 Wed, 23 Mar 2022 19:26:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3C2860A97
 for <intel-wired-lan@osuosl.org>; Wed, 23 Mar 2022 19:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648063589; x=1679599589;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=kOrAkiNGKOoPQDvxfuaVzioP0YWePo7iHW4Em10dwcw=;
 b=HTS36SZxTaLJAynAvxV8Ruz+ll8UWlM2cHjNlBfYZqznqo4dP45tNXtz
 qtRMlcsYYdAiuAHvVgJzMy3sZ87mf15EXdkX2DFwIn3rUxUtb631AEKch
 Y4N6IV+wz3eQqQCNfN4tM1vUimzkOcLL6qSpG5rrHm00WFE2slSGu9LH4
 OMxnzlDuR8UrlUua4vWswiFNbuZk0QSmJIYqOrsnzN4E/KGMOy4PFYwP9
 691js1/A67fmsohcfwyF71HmXwnhQtTUWRo4oDm2ozzm8PxLNu6AHN6fu
 iemVkhXcQjIbshnEwj+G1qnWGlXwy5y2qH5C3C/gCBf8tP5oEtSmAHV13 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="240369265"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="240369265"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 12:26:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="519492110"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 23 Mar 2022 12:26:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 23 Mar 2022 12:26:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 23 Mar 2022 12:26:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 23 Mar 2022 12:26:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a6J/f7cMEemvy7zjUolLpHfXrJWGWgJS0KYRLbI4QAxZzrIVIPpqJS6t7pU/LmhuxGLbqtD7TlsdN6ljFRuoXnd3L/jbKHRC3qoFXu2019OEUVaHmXVyIV8ADygD3L3OAhQ869Gv3+6xtqBXBE2zEdDHLv3z5IWg4zpNhHlOCsN45iteTfcIIvr8+fq9kUTpzUOFwGsLL3bBAULKV/AeCk7PWJf0BKAbnC7FBzQkWhiwQ4arHDJhBzfiYfMyEfCosK1sZ80s6b3YYAV3LbhYe4tpp3dOBM23F2GfV/n4SPzV/JzZ+t+l5uSvfMGMxhn+DXNrzHSxfH/K/PD9/6cmXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kOrAkiNGKOoPQDvxfuaVzioP0YWePo7iHW4Em10dwcw=;
 b=Ob9s6WATHPMefvGd61tb6MzCxWgB7AFtLpIwcQXeEcRLaheIxA066SM0Xdn2o0N/12NfjIeMW1FYEpSaRWme8IY47r3vkB7JjUVsxcJJdz8okPSh7aEjqFgp0BX5q6jDuCDOWg4+F7Oj3MkDK9CDynTO5eiMvMjiMhish+AyvdXBM+de8WTcN3o1OrtAe7InH1TMP6gfvghjrXdQHtuB5ozSA+lMUQsIqjdqaNnKBCUp7UUFzHLJ6/N+JqVy3ute8XOFN9lWnMa/K2qQdrMxbXPQUfgEYN7m213qAO+x1Q3vH+ubcbkgI4mYju04Yn8eOtg86/XDiQ7Pwu3QPU6Tqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BN6PR11MB1251.namprd11.prod.outlook.com (2603:10b6:404:48::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.18; Wed, 23 Mar
 2022 19:26:25 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8%8]) with mapi id 15.20.5102.017; Wed, 23 Mar 2022
 19:26:25 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix broken IFF_ALLMULTI
 handling
Thread-Index: AQHYPVhxFQxoYA/xG0OjB2XURFfgCazNXRMA
Date: Wed, 23 Mar 2022 19:26:25 +0000
Message-ID: <05d80b4c-c4a4-8f77-bbef-c5273aab613b@intel.com>
References: <20220321191731.2596414-1-ivecera@redhat.com>
In-Reply-To: <20220321191731.2596414-1-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c09a0787-9467-404d-e657-08da0d030549
x-ms-traffictypediagnostic: BN6PR11MB1251:EE_
x-microsoft-antispam-prvs: <BN6PR11MB12513E24ACA9124D8ABA7A37D6189@BN6PR11MB1251.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yt0VPDGBCeIkVYKHvDkCZtSzHhWzWXbENlc0BRO5gVJvRKu1Inz3h9rBxH5djOB/9gFSl9/CaD4HlM2qta75KR8R/6q0pDPSab32UQye40lr2JCcFFE7S1u5S75Rv9ZxPbnAkMfPYejl5Sp/GAQnV1PeCOgdsV/ulpHpw2afThUSrVHqAxbWvlA2Vh6lxEQDAIIdZvGgMfKpqaaOKs4ObI8LysOyVenfFNYkt12h4RrLPCMCHfiN7lsEoOT0D3sE1VZsRBTWSbIsunaMHcGGbMEQrEzcX8maHOHT+nLv/AUQ6yI7f/G4MwwH91Lzz1n5KPTCvH9i6iZjU8ai/VfVtPUGMZPr3dUUgeCsv7preIRgS5rXKg0N4IdHlGY7lXthRlqCGgfHFkaUFF2Fb+2uU7L/QSxgpCzMqG0CxAOcHttkbOUBZWkFN+kOkk8d2jwIMjkXE+2gPKqewUDdLtrGd86uFEGOM4vsh9QdCWC6WTRLbNS3FEtJuJv29F26wtCcQOshgQP2JGKUngC62uOIg82dWkwMsBwRWnDHLdEhCL11SU3f2JJyUO1uPjWjcjof8rZQxOkGYbZse+CDZGYP2dOubcEI+DvMDbm0aPo+Dhg7LSK2U6ZwARkYSJ/5P240cj7oeZlj8CLJ5701z8Tu/AKdQx92cTQRHWiwgp1VmHea4FCB5UfVaNa8YCy0W+xPMKlNEK8iVYSOiMm5yvMmnp6yMIGX4+XsRLKIb7OooDHBtBsDqa3V2J1SqXw0jHga3zyNK9E9vDX2oTi4799KRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(53546011)(6512007)(6506007)(71200400001)(508600001)(38070700005)(122000001)(6486002)(36756003)(30864003)(8936002)(38100700002)(64756008)(82960400001)(66556008)(66476007)(66446008)(83380400001)(86362001)(6916009)(316002)(76116006)(66946007)(31686004)(8676002)(2616005)(31696002)(26005)(186003)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bFFCT1FRUU9rRllhL3BnZDZ2WVpaMG9Ec1h2dG84b1YwWlVqbnIxT3RjWWEv?=
 =?utf-8?B?ckNGU3VFMGM5bm5kZzhxMXVWUlo2cGxJK3p4MVRXVUE2MzZYTm5jVjhQL2po?=
 =?utf-8?B?cFF1Y0VKMmRmRnRIeklQM1lDWHMyWVlnTzJibVJaSk93MFdnRmJibUpKQlBl?=
 =?utf-8?B?ckFBTTJFWmZVUnB3cTBmY2puSHh2bk5uTDZ2dUVGY0NHLy90WE9RWTRGVFZa?=
 =?utf-8?B?djlLVjBBdkI1VW5WVVZaNkxhdzMxZXQyRmRvZCtjRlcvVVlKOUFqbjlHbnQr?=
 =?utf-8?B?WEQyVWh0S0E2c080MXBvaTZ6aTVQbmJMSU5TTkFIZnVpeHlXc1VhZHFURnZQ?=
 =?utf-8?B?cEIwMFp6MVJpZ3RpZVZjTUlxS3dlWTVvbVMxdzA0U1RLZjBKKzBSYUIzWTFU?=
 =?utf-8?B?N04xOEtzVSs2K2JHRG50QlZyQzlvdTFvZjVub1hPUGgvOGowTTlIcEJIOEJM?=
 =?utf-8?B?U2pyaGhlRkJJcmQya3g4YmZKVDFOcXBMYVNxem54K2RSUHRJTXlKdUhDNnd5?=
 =?utf-8?B?bTduQjlWVTA4d0o0UkQ5cVlwRlpuOGIwc0NBV2NYaTN5TXIwVWV4NnNoaWNX?=
 =?utf-8?B?cW55eEtiTjR0b2xwNzBUV1FReWZzL1BBbE5OQm16RFlQQUZyT0lqaENrR1Y5?=
 =?utf-8?B?MVU3NWczM0Y3TElsc0E5WllXT0t5Y3pHWXdCTlo5UGFJb29Nc1E2Smlvd0pr?=
 =?utf-8?B?Z0pOTmNDbE45eTRVYzNRbHhydUFhSnBIOUc2NFl1QXdsL0daNFFXQVZSNFlE?=
 =?utf-8?B?NFRnbC83Y1F6Q3pZamVPdmN3aVVqeG14OHZQK0RmYVlPVTdTa05teU9pRi8y?=
 =?utf-8?B?QUJKakUyMHVaVU5wb2pYb3dISHBRcmRxeGdkV2VHM1pnY2J2aWVPNHg0SnEz?=
 =?utf-8?B?dkVTMU1UQzRRTHdOaVk5dTNvQmFLSS93djNsVmpJNDg3bUFDcC9MWi9xaDFx?=
 =?utf-8?B?eVZCTHpUYThqVDluZVFLNTJlNFVrTndhQVg4aUNRY0krcEJKZmVMNnVFNzB3?=
 =?utf-8?B?eGkzMGtjdXVHa0xCMUhsejBLRlBteEFnK1BuVUV1cW4zVXU4YllyM3hCQTFr?=
 =?utf-8?B?YjBXZ2V3cHNBQ2k3elp0dzgxU1NTWHVQcVAzb0xMNE1NVHd1U3VNMlFnM2JR?=
 =?utf-8?B?SkJLZHJVc0RqaHN2MG1jRklFY0I4RTVLZFB0YUkvRTIySWY3aVNhQ1dnWEdj?=
 =?utf-8?B?K3paSGF3ZEkweHlwRUxtMjVVenVBUndVcWtWTXFTdlExWTA1VGF4RDlNZlZj?=
 =?utf-8?B?dnpUdjNEMFliY3hQK2NoQm50aXRwZFVKeDlac3NPQWl0cjFMSlFwQ0pNQU42?=
 =?utf-8?B?dkNSQ0F1MG5YSkgyRkVGbEljN3FZSUtIekNYZG1qYk5Nc25lSnNidmZZTG8r?=
 =?utf-8?B?eFdqNjJYSFRsV0lrWUdxY0J2Y0JxSTNJSWh6ZmVsenI2V1EyOHh3UGZzQnVv?=
 =?utf-8?B?a2YwTU51TXVUYlBQUFFKUFE4VXNrTlpSME9ZVC9lT1RZRGNueXZjcVFQcDJx?=
 =?utf-8?B?R0J4UUdVRGl6R2lJVlVOVzloOW5VUWdwMko4LzBjbmdUMjN1dVlka08yTjlL?=
 =?utf-8?B?aHkrYlZ3OEtsN3lVQ0JsVk81TVlsWHN1RmhQY0l1SVM0SlRYaktLNXVKNU1j?=
 =?utf-8?B?K2diMEVmeDFpYjhzdTJ4ZzNsT1VybUtqWC9EM3c2QXYrVWdHdEFXRG1NdFZL?=
 =?utf-8?B?WExQV2lVa2ZSL25UUXlWKzBKcVVoN05OQjJla29oNG5kVFNsa3duR3hCang3?=
 =?utf-8?B?WlpTVHJDOW1vVU1BUWxYTFcxSG1yNUtsVmw2OFN5Q1RvN1daSWk3UjB2WEJE?=
 =?utf-8?B?ZWJ6T1MxK3lGTkZrYkJIaUNtcDIwWThQZTNhc1ZXbHJET2k5VGF2Y3RpTDhp?=
 =?utf-8?B?Mmdobmd5MXZ2L01tNUg1OVhnQlNxSXViSFQ2RnBMbW1xT1h5NUZNYkJaTU9y?=
 =?utf-8?Q?A5DB5wE/9j33BFkyJaDNOsycm9qW45gN?=
Content-ID: <1A23754957B6DD468DD22F239EFDD7A4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c09a0787-9467-404d-e657-08da0d030549
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2022 19:26:25.0345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eIHAGOWabxeAmeFC66imFSAxauOP1m9lFWQgLGP+Uqq5ogi6r03O9ECjm17uiik9hj2Q5tC1w43JnFIH15Dt3V9FBR2grzHvGJhQb5PXJBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1251
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix broken IFF_ALLMULTI
 handling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/21/2022 12:17 PM, Ivan Vecera wrote:
> Handling of all-multicast flag and associated multicast promiscuous
> mode is broken in ice driver. When a user switches allmulticast
> flag on or off the driver checks whether any VLANs are configured
> over the interface (except default VLAN 0).
> 
> If any extra VLANs are registered it enables multicast promiscuous
> mode for all these VLANs (including default VLAN 0) using
> ICE_SW_LKUP_PROMISC_VLAN look-up type. In this situation all
> multicast packets tagged with known VLAN ID or untagged are received
> and multicast packets tagged with unknown VLAN ID ignored.
> 
> If no extra VLANs are registered (so only VLAN 0 exists) it enables
> multicast promiscuous mode for VLAN 0 and uses ICE_SW_LKUP_PROMISC
> look-up type. In this situation any multicast packets including
> tagged ones are received.
> 
> The driver handles IFF_ALLMULTI in ice_vsi_sync_fltr() this way:
> 
> ice_vsi_sync_fltr() {
>   ...
>   if (changed_flags & IFF_ALLMULTI) {
>     if (netdev->flags & IFF_ALLMULTI) {
>       if (vsi->num_vlans > 1)
>         ice_set_promisc(..., ICE_MCAST_VLAN_PROMISC_BITS);
>       else
>         ice_set_promisc(..., ICE_MCAST_PROMISC_BITS);
>     } else {
>       if (vsi->num_vlans > 1)
>         ice_clear_promisc(..., ICE_MCAST_VLAN_PROMISC_BITS);
>       else
>         ice_clear_promisc(..., ICE_MCAST_PROMISC_BITS);
>     }
>   }
>   ...
> }
> 
> The code above depends on value vsi->num_vlan that specifies number
> of VLANs configured over the interface (including VLAN 0) and
> this is problem because that value is modified in NDO callbacks
> ice_vlan_rx_add_vid() and ice_vlan_rx_kill_vid().
> 
> Scenario 1:
> 1. ip link set ens7f0 allmulticast on
> 2. ip link add vlan10 link ens7f0 type vlan id 10
> 3. ip link set ens7f0 allmulticast off
> 4. ip link set ens7f0 allmulticast on
> 
> [1] In this scenario IFF_ALLMULTI is enabled and the driver calls
>     ice_set_promisc(..., ICE_MCAST_PROMISC_BITS) that installs
>     multicast promisc rule with non-VLAN look-up type.
> [2] Then VLAN with ID 10 is added and vsi->num_vlan incremented to 2
> [3] Command switches IFF_ALLMULTI off and the driver calls
>     ice_clear_promisc(..., ICE_MCAST_VLAN_PROMISC_BITS) but this
>     call is effectively NOP because it looks for multicast promisc
>     rules for VLAN 0 and VLAN 10 with VLAN look-up type but no such
>     rules exist. So the all-multicast remains enabled silently
>     in hardware.
> [4] Command tries to switch IFF_ALLMULTI on and the driver calls
>     ice_clear_promisc(..., ICE_MCAST_PROMISC_BITS) but this call
>     fails (-EEXIST) because non-VLAN multicast promisc rule already
>     exists.
> 
> Scenario 2:
> 1. ip link add vlan10 link ens7f0 type vlan id 10
> 2. ip link set ens7f0 allmulticast on
> 3. ip link add vlan20 link ens7f0 type vlan id 20
> 4. ip link del vlan10 ; ip link del vlan20
> 5. ip link set ens7f0 allmulticast off
> 
> [1] VLAN with ID 10 is added and vsi->num_vlan==2
> [2] Command switches IFF_ALLMULTI on and driver installs multicast
>     promisc rules with VLAN look-up type for VLAN 0 and 10
> [3] VLAN with ID 20 is added and vsi->num_vlan==3 but no multicast
>     promisc rules is added for this new VLAN so the interface does
>     not receive MC packets from VLAN 20
> [4] Both VLANs are removed but multicast rule for VLAN 10 remains
>     installed so interface receives multicast packets from VLAN 10
> [5] Command switches IFF_ALLMULTI off and because vsi->num_vlan is 1
>     the driver tries to remove multicast promisc rule for VLAN 0
>     with non-VLAN look-up that does not exist.
>     All-multicast looks disabled from user point of view but it
>     is partially enabled in HW (interface receives all multicast
>     packets either untagged or tagged with VLAN ID 10)
> 
> To resolve these issues the patch introduces these changes:
> 1. Adds handling for IFF_ALLMULTI to ice_vlan_rx_add_vid() and
>    ice_vlan_rx_kill_vid() callbacks. So when VLAN is added/removed
>    and IFF_ALLMULTI is enabled an appropriate multicast promisc
>    rule for that VLAN ID is added/removed.
> 2. In ice_vlan_rx_add_vid() when first VLAN besides VLAN 0 is added
>    so (vsi->num_vlan == 2) and IFF_ALLMULTI is enabled then look-up
>    type for existing multicast promisc rule for VLAN 0 is updated
>    to ICE_MCAST_VLAN_PROMISC_BITS.
> 3. In ice_vlan_rx_kill_vid() when last VLAN besides VLAN 0 is removed
>    so (vsi->num_vlan == 1) and IFF_ALLMULTI is enabled then look-up
>    type for existing multicast promisc rule for VLAN 0 is updated
>    to ICE_MCAST_PROMISC_BITS.
> 4. Both ice_vlan_rx_{add,kill}_vid() have to run under ICE_CFG_BUSY
>    bit protection to avoid races with ice_vsi_sync_fltr() that runs
>    in ice_service_task() context.
> 5. Bit ICE_VSI_VLAN_FLTR_CHANGED is use-less and can be removed.
> 6. Error messages added to ice_fltr_*_vsi_promisc() helper functions
>    to avoid them in their callers
> 7. Small improvements to increase readability
> 
> Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |   1 -
>  drivers/net/ethernet/intel/ice/ice_fltr.c |  52 +++++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c | 119 +++++++++++++++-------
>  3 files changed, 131 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index bea1d1e39fa2..717542e49d65 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -300,7 +300,6 @@ enum ice_vsi_state {
>  	ICE_VSI_NETDEV_REGISTERED,
>  	ICE_VSI_UMAC_FLTR_CHANGED,
>  	ICE_VSI_MMAC_FLTR_CHANGED,
> -	ICE_VSI_VLAN_FLTR_CHANGED,
>  	ICE_VSI_PROMISC_CHANGED,
>  	ICE_VSI_STATE_NBITS		/* must be last */
>  };
> diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
> index c29177c6bb9d..8ed87b43a367 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fltr.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
> @@ -58,7 +58,18 @@ int
>  ice_fltr_set_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi,
>  			      u8 promisc_mask)
>  {
> -	return ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, false);
> +	struct ice_pf *pf = hw->back;
> +	int result;
> +
> +	result = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, false);
> +	if (!result)
> +		return result;
> +
> +	dev_err(ice_pf_to_dev(pf),
> +		"Error setting promisc mode on VSI %i (rc=%d)\n", vsi->vsi_num,
> +		result);
> +

Our typical style here would be to do:

result = <function>;
if (result) {
	dev_err(...);
}

I find that much more readable than "if (!result) return;

> +	return result;
>  }
>  
>  /**
> @@ -73,7 +84,18 @@ int
>  ice_fltr_clear_vlan_vsi_promisc(struct ice_hw *hw, struct ice_vsi *vsi,
>  				u8 promisc_mask)
>  {
> -	return ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, true);
> +	struct ice_pf *pf = hw->back;
> +	int result;
> +
> +	result = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, true);
> +	if (!result)
> +		return result;
> +
> +	dev_err(ice_pf_to_dev(pf),
> +		"Error clearing promisc mode on VSI %i (rc=%d)\n",
> +		vsi->vsi_num, result);
> +
> +	return result;
>  }
>  
>  /**
> @@ -87,7 +109,18 @@ int
>  ice_fltr_clear_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
>  			   u16 vid)
>  {
> -	return ice_clear_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
> +	struct ice_pf *pf = hw->back;
> +	int result;
> +
> +	result = ice_clear_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
> +	if (!result)
> +		return result;
> +
> +	dev_err(ice_pf_to_dev(pf),
> +		"Error clearing promisc mode on VSI %i for VID %u (rc=%d)\n",
> +		ice_get_hw_vsi_num(hw, vsi_handle), vid, result);
> +
> +	return result;
>  }
>  
>  /**
> @@ -101,7 +134,18 @@ int
>  ice_fltr_set_vsi_promisc(struct ice_hw *hw, u16 vsi_handle, u8 promisc_mask,
>  			 u16 vid)
>  {
> -	return ice_set_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
> +	struct ice_pf *pf = hw->back;
> +	int result;
> +
> +	result = ice_set_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
> +	if (!result)
> +		return result;
> +
> +	dev_err(ice_pf_to_dev(pf),
> +		"Error setting promisc mode on VSI %i for VID %u (rc=%d)\n",
> +		ice_get_hw_vsi_num(hw, vsi_handle), vid, result);
> +
> +	return result;
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index b7e8744b0c0a..168a41ea37b8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -227,8 +227,7 @@ static int ice_add_mac_to_unsync_list(struct net_device *netdev, const u8 *addr)
>  static bool ice_vsi_fltr_changed(struct ice_vsi *vsi)
>  {
>  	return test_bit(ICE_VSI_UMAC_FLTR_CHANGED, vsi->state) ||
> -	       test_bit(ICE_VSI_MMAC_FLTR_CHANGED, vsi->state) ||
> -	       test_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
> +	       test_bit(ICE_VSI_MMAC_FLTR_CHANGED, vsi->state);

Ok, so we now handle VLAN filters seprately without these states.

>  }
>  
>  /**
> @@ -244,10 +243,15 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
>  	if (vsi->type != ICE_VSI_PF)
>  		return 0;
>  
> -	if (vsi->num_vlan > 1)
> -		status = ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw, vsi, promisc_m);
> -	else
> -		status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m, 0);
> +	if (vsi->num_vlan > 1) {
> +		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
> +		status = ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw, vsi,
> +						       promisc_m);

Ok so if we're in >1 filter, we add the VLAN_RX and VLAN_TX flags. Right.

And we know that changes only from another ndo op to add VLANs?

> +	} else {
> +		status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
> +						  promisc_m, 0);
> +	}
> +
>  	return status;
>  }
>  
> @@ -264,10 +268,15 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
>  	if (vsi->type != ICE_VSI_PF)
>  		return 0;
>  
> -	if (vsi->num_vlan > 1)
> -		status = ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi, promisc_m);
> -	else
> -		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m, 0);
> +	if (vsi->num_vlan > 1) {
> +		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
> +		status = ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi,
> +							 promisc_m);
> +	} else {
> +		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
> +						    promisc_m, 0);
> +	}
> +
>  	return status;
>  }
>  
> @@ -285,7 +294,6 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>  	struct ice_pf *pf = vsi->back;
>  	struct ice_hw *hw = &pf->hw;
>  	u32 changed_flags = 0;
> -	u8 promisc_m;
>  	int err;
>  
>  	if (!vsi->netdev)
> @@ -303,7 +311,6 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>  	if (ice_vsi_fltr_changed(vsi)) {
>  		clear_bit(ICE_VSI_UMAC_FLTR_CHANGED, vsi->state);
>  		clear_bit(ICE_VSI_MMAC_FLTR_CHANGED, vsi->state);
> -		clear_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
>  
>  		/* grab the netdev's addr_list_lock */
>  		netif_addr_lock_bh(netdev);
> @@ -352,29 +359,15 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>  	/* check for changes in promiscuous modes */
>  	if (changed_flags & IFF_ALLMULTI) {
>  		if (vsi->current_netdev_flags & IFF_ALLMULTI) {
> -			if (vsi->num_vlan > 1)
> -				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
> -			else
> -				promisc_m = ICE_MCAST_PROMISC_BITS;
> -
> -			err = ice_set_promisc(vsi, promisc_m);
> +			err = ice_set_promisc(vsi, ICE_MCAST_PROMISC_BITS);
>  			if (err) {
> -				netdev_err(netdev, "Error setting Multicast promiscuous mode on VSI %i\n",
> -					   vsi->vsi_num);
>  				vsi->current_netdev_flags &= ~IFF_ALLMULTI;
>  				goto out_promisc;
>  			}
>  		} else {
>  			/* !(vsi->current_netdev_flags & IFF_ALLMULTI) */
> -			if (vsi->num_vlan > 1)
> -				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
> -			else
> -				promisc_m = ICE_MCAST_PROMISC_BITS;
> -
> -			err = ice_clear_promisc(vsi, promisc_m);
> +			err = ice_clear_promisc(vsi, ICE_MCAST_PROMISC_BITS);
>  			if (err) {
> -				netdev_err(netdev, "Error clearing Multicast promiscuous mode on VSI %i\n",
> -					   vsi->vsi_num);
>  				vsi->current_netdev_flags |= IFF_ALLMULTI;
>  				goto out_promisc;
>  			}
> @@ -3445,19 +3438,47 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
>  	if (!vid)
>  		return 0;
>  
> +	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
> +		usleep_range(1000, 2000);
> +

Not your fault, but every time I see this I think about why not just
making this a mutex...

>  	/* Enable VLAN pruning when a VLAN other than 0 is added */
>  	if (!ice_vsi_is_vlan_pruning_ena(vsi)) {
>  		ret = ice_cfg_vlan_pruning(vsi, true);
>  		if (ret)
> -			return ret;
> +			goto finish;
> +	}
> +
> +	/* Add multicast promisc rule for the VLAN ID to be added if
> +	 * all-multicast is currently enabled.
> +	 */
> +	if (vsi->current_netdev_flags & IFF_ALLMULTI) {
> +		ret = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
> +					       ICE_MCAST_VLAN_PROMISC_BITS,
> +					       vid);
> +		if (ret)
> +			goto finish;
>  	}

If we're not in multicast mode (or if multicast mode gets disabled) when
do we clear these bits?

I would have expected some sort of loop to iterate over VLANs?


>  
>  	/* Add a switch rule for this VLAN ID so its corresponding VLAN tagged
>  	 * packets aren't pruned by the device's internal switch on Rx
>  	 */
>  	ret = ice_vsi_add_vlan(vsi, vid, ICE_FWD_TO_VSI);
> -	if (!ret)
> -		set_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
> +	if (ret)
> +		goto finish;
> +
> +	/* If all-multicast is currently enabled and this VLAN ID is only one
> +	 * besides VLAN-0 we have to update look-up type of multicast promisc
> +	 * rule for VLAN-0 from ICE_SW_LKUP_PROMISC to ICE_SW_LKUP_PROMISC_VLAN.
> +	 */
> +	if ((vsi->current_netdev_flags & IFF_ALLMULTI) && vsi->num_vlan == 2) {
> +		ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
> +					   ICE_MCAST_PROMISC_BITS, 0);
> +		ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
> +					 ICE_MCAST_VLAN_PROMISC_BITS, 0);
> +	}
> +
> +finish:
> +	clear_bit(ICE_CFG_BUSY, vsi->state);
>  
>  	return ret;
>  }
> @@ -3482,18 +3503,44 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
>  	if (!vid)
>  		return 0;
>  
> +	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
> +		usleep_range(1000, 2000);
> +
>  	/* Make sure ice_vsi_kill_vlan is successful before updating VLAN
>  	 * information
>  	 */
>  	ret = ice_vsi_kill_vlan(vsi, vid);
>  	if (ret)
> -		return ret;
> +		goto finish;
>  
> -	/* Disable pruning when VLAN 0 is the only VLAN rule */
> -	if (vsi->num_vlan == 1 && ice_vsi_is_vlan_pruning_ena(vsi))
> -		ret = ice_cfg_vlan_pruning(vsi, false);
> +	/* Remove multicast promisc rule for the removed VLAN ID if
> +	 * all-multicast is enabled.
> +	 */
> +	if (vsi->current_netdev_flags & IFF_ALLMULTI)
> +		ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
> +					   ICE_MCAST_VLAN_PROMISC_BITS, vid);
> +
> +	if (vsi->num_vlan == 1) {
> +		/* Disable pruning when VLAN 0 is the only VLAN rule */
> +		if (ice_vsi_is_vlan_pruning_ena(vsi))
> +			ice_cfg_vlan_pruning(vsi, false);
> +
> +		/* Update look-up type of multicast promisc rule for VLAN 0
> +		 * from ICE_SW_LKUP_PROMISC_VLAN to ICE_SW_LKUP_PROMISC when
> +		 * all-multicast is enabled and VLAN 0 is the only VLAN rule.
> +		 */
> +		if (vsi->current_netdev_flags & IFF_ALLMULTI) {
> +			ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
> +						   ICE_MCAST_VLAN_PROMISC_BITS,
> +						   0);
> +			ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
> +						 ICE_MCAST_PROMISC_BITS, 0);
> +		}
> +	}
> +
> +finish:
> +	clear_bit(ICE_CFG_BUSY, vsi->state);
>  
> -	set_bit(ICE_VSI_VLAN_FLTR_CHANGED, vsi->state);
>  	return ret;
>  }
>  

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
