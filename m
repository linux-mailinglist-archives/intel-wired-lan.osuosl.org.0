Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F470538D24
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 10:47:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F80884041;
	Tue, 31 May 2022 08:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BfjLmgpn4WeO; Tue, 31 May 2022 08:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22AF283E89;
	Tue, 31 May 2022 08:47:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 673B41BF313
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 08:47:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5466240883
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 08:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8bADcsbiXsvE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 May 2022 08:47:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 45ADE40880
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 08:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653986824; x=1685522824;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SYOpXg6SekW0aQB3w1AmlfS/sHXx8BA+xku0F43F5/4=;
 b=gtcDDhh8HXW5MxKRT9RLGiuhC2N5i2UNgu3DOTQkJ4V/l3d/IwIz7SAb
 YkQwVKEKIODmC9gzAT/ORHm++2M5kDdgTS2D5dSdiBA09BuqEjaBa+eW/
 V+qb0yOcIlL2xV0l5Y0bzWiAGCoSfKK32Ufe0R5NIepFnvJCDqLsKfgbx
 TrTh4qFtJfH/syx7yX1GTaPBv8yJX3GT6JFZCIcymHkxc0EiRU7dvhBzx
 bOZ+/7TLmPwWnbFcBbMmE1ccHrWoJuWvm5BqHuscSjzA3UrbHYBgAwaek
 ufv0yt98yWIA2Ccgvy2IUNyOcWKyHtfISPyfcvzjtUtJYwTHkEhRBwBdB g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="262820675"
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="262820675"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 01:47:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="576305554"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 31 May 2022 01:47:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 01:47:03 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 01:47:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 31 May 2022 01:47:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 31 May 2022 01:47:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KPsVFuPWYDy3O3SVSaex6vvRQYNST1QvhYdWHEFegf/YwfSCUKLMsaZcmF7wd8WLw4HcwzUBZAB+Se3URtuDQNdgIj7ULYXXEoeUV+QLRsBmuA330pGCZZe4eXDO4Rw6fLbmlf+YGUeiWmFL/mvMFhEfhxTP/PjTCbmA1zeHQgy3Upxd7teFTx8dEOG7jj26hZPDRD+yucEXFhWUkYi5J1cgyLOgQpho9bnxyvgQhf01A/YzoI9Cx4/dcGI+VIOyB046NnsBL6nOJD1OMHucVxTgyQf9x9in47E14xADPUBidzCeoG/en+xdVJewcP14covf5XUYYEMwH45iGj/VAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SYOpXg6SekW0aQB3w1AmlfS/sHXx8BA+xku0F43F5/4=;
 b=QoKO0LKNsEZrstg+9HYI0jyLv2ctolH21zuewU3sBCNNFrkhQyLiCCIu+toJu9qcCj9766GUAunxTq05WQ2mfmEtqtIxdJf90zTYvSPnMvJMK8iQLiKsnBtMnfds2+viGl8Ylqa71Twrt3ltBV6p7qF+5IgyXzD7FQmCqLBwSDdbKF+7lm6bAkzbNlo6OzmAXGQOiPAxR0YYGBJAqU8U79k4nAF5zcz4P7JSABHumJlcdtQmkzFsoGyZm08S8OR7OhvxYlFbn0RdRCkk26ZxVIhbV3iqEJnTBqxHdw3jk4ljw2ldRdx9kLB908rD2hOhWoNXBDDIbvtF3HQnste+Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM6PR11MB3740.namprd11.prod.outlook.com (2603:10b6:5:140::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5293.13; Tue, 31 May 2022 08:47:01 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::8024:510c:53ab:2a9b]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::8024:510c:53ab:2a9b%4]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 08:47:01 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 1/2] iavf: Add helper to check
 if iavf_remove() is in progress
Thread-Index: AQHYcaFgLpwzQP6B4U2QByfS8RfE4q0y8pQAgAXADSA=
Date: Tue, 31 May 2022 08:47:00 +0000
Message-ID: <DM6PR11MB27315C25DD0EA44B086A5501F0DC9@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20220527080919.2370640-1-jedrzej.jagielski@intel.com>
 <c5ff5e77-f1a0-c298-b747-e9058623002d@intel.com>
In-Reply-To: <c5ff5e77-f1a0-c298-b747-e9058623002d@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0ceb3e7-a7d4-442f-d83f-08da42e22107
x-ms-traffictypediagnostic: DM6PR11MB3740:EE_
x-microsoft-antispam-prvs: <DM6PR11MB37406618994B98A7C5B4535FF0DC9@DM6PR11MB3740.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FCtLKE5MpMUlSRICZ1E1N3dkLOyBmDaDuiJ2V8dGEYZvgK6U3BoQKRMq6KGV+OUITQXsB8Zlq2b42AgU+6/WPhJuRFzNKI8AmTJsDUALB5/W00PsaKZXwaRj1f1yUMyA6oP/JFR85rV/OsRS40ltIQNZdD81EjR6t0HBGbe2u6T0nl6hyEsKjHKC+lRt15SMyM9nlmByLPOWDhm/e0FEmswBn0MlM4BJCVnphs1A1JO/xh6nruCSQCaXQnW96JRPrr5+7UI9iJlF851ymT4/JoAPTLQVKBZ4DQXnGsIOeY+fMU4Ug9eqc1zrtuSJRD3Rz7CVJpiiGRNVVW9a2ZpUYugEHJIQ4ZHWjoOu89W1q5be81SLCVKJnS9HHBL5rvSAdfmkeRB/QStfnOT0WeSMtWLDzl76R93lEuls3eDdlZKefs4U83Wl+bE3FggcEwrR310sXpvIRnNzm907f12984/CeelBtZ/IHgVDYl1+q7VLkPL3VWzko2s4aNBmU1YoZIzHgri3Sz8/mhhW/ph+ocYXr7bd2vVbqFjFfCGMr2+8tihd24zF4QroDAdMdZytg/FtmKKICNJmj+u2X/ebEfJ0vrMmKUyESxCHxdLbRtWmKn/hn9PCUgli3eH5fT1R2uXs1SyRh1naY+Kk6kgu7aI+uYwpQp8LUMUrX70wzsJRnvB77axO4B5fdTDyaeWG5D62RZsWjKS2cTEhKebOTQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(53546011)(33656002)(5660300002)(8936002)(508600001)(6506007)(7696005)(86362001)(26005)(9686003)(2906002)(82960400001)(122000001)(66556008)(66946007)(66574015)(55016003)(38100700002)(107886003)(186003)(64756008)(83380400001)(38070700005)(316002)(4326008)(110136005)(8676002)(66446008)(76116006)(71200400001)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U0x3Mm5ldEhOTUFud2xZYVNSQTZjMVM2UXV3aXNsc2VrSnFlcWZsRjBVaFNn?=
 =?utf-8?B?V1ZtZEM5V25mRXh0WE1uOXVWZzE1RVZTdkIrV2JrRXMwVVVQQmVXTk54SG9m?=
 =?utf-8?B?UEttSmd5UitNcy8vNlZFK1ZBZjFzQTNMY084QzZyWkRvT0p3N20yNlZOKzFI?=
 =?utf-8?B?eTlzMzI0M0p1Tld4L01mVmxtNTBXcEM4NWphNVhManR1WG12ME5zNmFScmFi?=
 =?utf-8?B?WnBSOUt6Szg3N0VydGh2Q1JNcVNCa3JVMW0vQjNyOWo4bDA3SmlNNnYwWURm?=
 =?utf-8?B?c294QXZKVjAzTUhtN0dheENGTHRHWGhRaDJNWDRWVmVGU2pBRnBtZXpRUWtm?=
 =?utf-8?B?eE4yVnJ3ZlRDekw0WG41Qjc3U2lRQ3dkNDVTblVnMkZFN29yNG5VU2hjbGRi?=
 =?utf-8?B?VUFzOVpwQVJ4N3czWXJmSU1aR3g2d1RlVFU0Y2lOMVVWV0NNTWh2enBiNURY?=
 =?utf-8?B?QjZUQ3V0a3M0RktpblVzaGs4M1ZobHdWMjdMSkd3Y3VSSUZuSGwyVEpEVUZa?=
 =?utf-8?B?a2FRc05KRXVvMko4NGdRMm5MTUl0ZVA4OWJGWDI3bWM2WUZybm1ZNTd4aTJB?=
 =?utf-8?B?VkRnelovbVkzWGJJczJCaVJFbkYwUU53c3pzOHJ4WmcySWV2elZqRDRsQnZN?=
 =?utf-8?B?d0ZnaXhYVXlEaTBFYi9pN3JqUnNFcGZtZzVzbmtQTXJaS0djRktRY0pUMWdM?=
 =?utf-8?B?STFBR2dJTHkyejZmY0owOWozdk83andSNVZqbS9iZ2tBamVoK3hXbC9rNjh4?=
 =?utf-8?B?bGIyUmZ2aWRGcENDZ3dTbno4TjZPdkM3b0V2WWNNLzhvNk80K045eVNtUVhN?=
 =?utf-8?B?ejcrR0VUODhtRmJMRmV2QS9TLy9aazZENkhDelovd21GME9JRDZib1RvUmtE?=
 =?utf-8?B?RkpmaWhibUJRRVhwRG1SOG44enhjSDhjUU9QU2pHb1M1SVZTRU5EQWxseDlt?=
 =?utf-8?B?NFdCN05hMlIxVXZ5dThydXdIRDdIWWVZdzdWeDkvbEt5MXZwR3hoRlhmREpH?=
 =?utf-8?B?Q0FUSm0rZUZ6cWtBMVI5K0VwSU1neDNNSW5VSlBoUm5NdGgwUExtd09rTjIr?=
 =?utf-8?B?dG5xYmd1TjdTQldpVVZ5SVdYOWpLVFBYU0h5ME1uUkNXTjdQbjN2OHRIcFg4?=
 =?utf-8?B?bkdhSkdxaU1uZ1ZxMXRQSTRwNUpZK2wrTVplSEoyaEFLWnMzK1BFUzNuSWNv?=
 =?utf-8?B?dUs5TTBlWk1wWVpMMndWZ0RIblN0VWVKYS8xTmdFeURCMUhvT25ydklQTldH?=
 =?utf-8?B?WS9ZTDVldlBUQzZpM2s0djYxQnQ2Y3cxV0RUN2JWK0ZTZ1VsclV5cXI5QUQ2?=
 =?utf-8?B?Rm0yOXMrTkFKZlZVZmQxV3d0VnNsUmtPYjJJVmwwSm80U1lNQlIwRUQyUWxa?=
 =?utf-8?B?M0tSY0QxZFRiRjVZUlEwRWpQbE9Ucy9YUi8xMVBzanB2ZDZkN3VWMEpVUE5M?=
 =?utf-8?B?eFg2UE5qaTZteFc2Q2p6eWxVUm5kUjZsL0tlWUEwWGhkSTlySzlKRUgxVlRl?=
 =?utf-8?B?bkdhL1dHMVdaMldxWEVKbFlobWZMaW50UVRTWTgyandxM1lzVnMwNTRCL2t0?=
 =?utf-8?B?d21ENDZYS2xOTWlacTkzTG1abGRqSkVGc1MrS2VzVkNWL0xBM1R3MWRmSzZl?=
 =?utf-8?B?NndRNWhNZGpuMHRORXVBd3daR2lnMXdHOEptaUw5TndCQm84ZjdLY1VRSTNw?=
 =?utf-8?B?dCtyTEdDc1YyRnhwbkdocHEwM3hXbWkxUU9UbzNPbGZUU0Q2SGR2UHlFdmtJ?=
 =?utf-8?B?RVBxNmJhZlFtYjYvN3N6dWRNVFViRTJlSG9xR0RoVUdSVGdSUEJIUzE2bUFy?=
 =?utf-8?B?WE96blZRelVLd0V2UDlVdUtkbHNHWlQwRE1FNlk2ZnRjNHJVaThXU25FTzhX?=
 =?utf-8?B?NFArYUhZeG95ZzQzRWZWNnZTYXduMDFvb0duRjhwY3RsS3c4cnFXOXRydXY5?=
 =?utf-8?B?aTljcml4RWdZbWFqV0lqV2hhdzFTZ0dFV3V0eUwxRVgwdzY2QXZ2K0JCYjFD?=
 =?utf-8?B?Z2ZvZXdsZkRUQ0w0Y0FRREhvMy9LV2tKd2x5UEI1MWhlOXNKTFBVODBhWFo3?=
 =?utf-8?B?eW5rd3NqcmxaYVNVQ0VjMFQ5UzdXcVB6WUlpeEVpRHc5dTVobkF1UFlDbmps?=
 =?utf-8?B?MXVqNjJqV250QUhYMnNRNlphS01SekxBL0tNc2tUZmF6Y3pZZmE3N29yNmxZ?=
 =?utf-8?B?RHBkYlZubndZZnUxWkNCNUFyRGkyRmp2ZmxmOEVDcHlPVFFJTzZSVFQvTk5o?=
 =?utf-8?B?bzNoWlQ5S0tIVlVIdnp6U0w3ak1ZM1Y2VDU4SWhDTnhDZ3doMGFpb20rdFRF?=
 =?utf-8?B?T3VUY1JSa0c1WUwrWjhXbko3Nks1OHpBRGMvUkttQUNlcnpGVWd2Wm00cWN5?=
 =?utf-8?Q?1LR0Qu6he77cRks4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0ceb3e7-a7d4-442f-d83f-08da42e22107
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2022 08:47:01.0238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gbYFPoxYFp0ElRH7cqT/xabTLewmO4rCqQs7cyorPH1RTcrWTB1WopkcDM+ru/HhERASB5GTln8+k/Yx58iqa57FKKlHmMM7qohf9T5C2os=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3740
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/2] iavf: Add helper to check
 if iavf_remove() is in progress
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pk9uIDUvMjcvMjAyMiAxOjA5IEFNLCBKZWRyemVqIEphZ2llbHNraSB3cm90ZToNCj4+IEZyb206
IEJyZXR0IENyZWVsZXkgPGJyZXR0LmNyZWVsZXlAaW50ZWwuY29tPg0KPj4gDQo+PiBDdXJyZW50
bHkgdGhlIGRyaXZlciBjaGVja3MgaWYgdGhlIF9fSUFWRl9JTl9SRU1PVkVfVEFTSyBiaXQgaXMg
c2V0IGluIA0KPj4gdGhlIGFkYXB0ZXIncyBjcml0X3NlY3Rpb24gYml0bWFwLiBUaGlzIGlzIGZp
bmUsIGJ1dCBpZiB0aGUgDQo+PiBpbXBsZW1lbnRhdGlvbiB3ZXJlIHRvIGV2ZXIgY2hhbmdlLCBp
LmUuIGEgbXV0ZXggd2FzIGludHJvZHVjZWQgYWxsIG9mIA0KPj4gdGhlIGNhbGxlcnMgb2YgdGVz
dF9iaXQoX19JQVZGX0lOX1JFTU9WRV9UQVNLLCAmYWRhcHRlci0+Y3JpdF9zZWN0aW9uKSANCj4+
IHdvdWxkIGhhdmUgdG8gY2hhbmdlLiBGaXggdGhpcyBieSBpbnRyb2R1Y2luZyB0aGUNCj4+IGlh
dmZfaXNfcmVtb3ZlX2luX3Byb2dyZXNzKCkgaGVscGVyIGZ1bmN0aW9uLg0KPg0KPkFzIEkgbWVu
dGlvbmVkIGluIHBhdGNoIDIsIHRoaXMgcmVmYWN0b3Igc2hvdWxkIGdvIHRvIG5ldC1uZXh0LCBu
b3QgbmV0Lg0KDQpTdXJlLCBJIHdpbGwgc2VuZCBpdCB0byBuZXQtbmV4dC4gSSBqdXN0IHRob3Vn
aHQgdGhhdCBpZiB0aGlzIHBhdGNoIGNvbnRhaW5zIA0KZGVwZW5kZW5jaWVzIG5lZWRlZCBieSBh
bm90aGVyIHBhdGNoIGZpeGluZyBjYWxsIHRyYWNlIEkgY2FuIHNlbmQgaXQNCmFzIGEgcGF0Y2gg
c2VyaWUgZGlyZWN0bHkgdG8gbmV0Lg0KSSB3aWxsIHVzZSBiaXQgY2hlY2sgaW4gdGhlIG90aGVy
IHBhdGNoIGFzIHlvdSB3cm90ZS4NCj4NCj5UaGFua3MsDQo+VG9ueQ0KDQpUaGFua3MsDQpKZWRy
emVqIA0KPg0KPj4gU2lnbmVkLW9mZi1ieTogQnJldHQgQ3JlZWxleSA8YnJldHQuY3JlZWxleUBp
bnRlbC5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5OiBKZWRyemVqIEphZ2llbHNraSA8amVkcnplai5q
YWdpZWxza2lAaW50ZWwuY29tPg0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+IA0KU2VudDog
cGnEhXRlaywgMjcgbWFqYSAyMDIyIDE4OjU4DQpUbzogSmFnaWVsc2tpLCBKZWRyemVqIDxqZWRy
emVqLmphZ2llbHNraUBpbnRlbC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
Zw0KQ2M6IEJyZXR0IENyZWVsZXkgPGJyZXR0LmNyZWVsZXlAaW50ZWwuY29tPg0KU3ViamVjdDog
UmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQgdjEgMS8yXSBpYXZmOiBBZGQgaGVscGVy
IHRvIGNoZWNrIGlmIGlhdmZfcmVtb3ZlKCkgaXMgaW4gcHJvZ3Jlc3MNCg0KDQoNCk9uIDUvMjcv
MjAyMiAxOjA5IEFNLCBKZWRyemVqIEphZ2llbHNraSB3cm90ZToNCj4gRnJvbTogQnJldHQgQ3Jl
ZWxleSA8YnJldHQuY3JlZWxleUBpbnRlbC5jb20+DQo+IA0KPiBDdXJyZW50bHkgdGhlIGRyaXZl
ciBjaGVja3MgaWYgdGhlIF9fSUFWRl9JTl9SRU1PVkVfVEFTSyBiaXQgaXMgc2V0IGluIA0KPiB0
aGUgYWRhcHRlcidzIGNyaXRfc2VjdGlvbiBiaXRtYXAuIFRoaXMgaXMgZmluZSwgYnV0IGlmIHRo
ZSANCj4gaW1wbGVtZW50YXRpb24gd2VyZSB0byBldmVyIGNoYW5nZSwgaS5lLiBhIG11dGV4IHdh
cyBpbnRyb2R1Y2VkIGFsbCBvZiANCj4gdGhlIGNhbGxlcnMgb2YgdGVzdF9iaXQoX19JQVZGX0lO
X1JFTU9WRV9UQVNLLCAmYWRhcHRlci0+Y3JpdF9zZWN0aW9uKSANCj4gd291bGQgaGF2ZSB0byBj
aGFuZ2UuIEZpeCB0aGlzIGJ5IGludHJvZHVjaW5nIHRoZQ0KPiBpYXZmX2lzX3JlbW92ZV9pbl9w
cm9ncmVzcygpIGhlbHBlciBmdW5jdGlvbi4NCg0KQXMgSSBtZW50aW9uZWQgaW4gcGF0Y2ggMiwg
dGhpcyByZWZhY3RvciBzaG91bGQgZ28gdG8gbmV0LW5leHQsIG5vdCBuZXQuDQoNClRoYW5rcywN
ClRvbnkNCg0KPiBTaWduZWQtb2ZmLWJ5OiBCcmV0dCBDcmVlbGV5IDxicmV0dC5jcmVlbGV5QGlu
dGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmVkcnplaiBKYWdpZWxza2kgPGplZHJ6ZWouamFn
aWVsc2tpQGludGVsLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
