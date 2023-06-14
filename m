Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7719F730ADD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 00:43:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D899841EAA;
	Wed, 14 Jun 2023 22:43:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D899841EAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686782581;
	bh=xIaq11JHmXNk7ot9fv/d1JoEEPHeP/6uZEkp8ZwbXE4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=67cfC8PJyKemLbk5GMADtBB3Z3jlRQDHdVZxAc8B/ZmqY53/nIxFwhPs79yKLfe8h
	 OS+3PNdVzK0T3RER/cMhfpT7O2f46JXGmqGgYP5hsDrQjLR3xnDJoASYfpZNveSu73
	 rnRp7fnX58mWyEpIeFEySuTTLP8OXIAUI6gSHQUN9kXjsO186TEHvjmnb48h0vvTgU
	 HtwHvd5CxBzm6HGUa4mBw2F/Ta66iUaJETXZDjyCUODguA+dohGOZC9fjLO5WZAtOc
	 jtXU4yhqCqT+1xwFHAGmrKzQL0N0L5douFhBmDwOpCBAAHAIwtdWAwkFYUWKAC5h5k
	 pL9AU/ncTBTJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3HUN9s-_j9ec; Wed, 14 Jun 2023 22:43:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 893C941EA9;
	Wed, 14 Jun 2023 22:43:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 893C941EA9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C63FA1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 22:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0A8F60F7A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 22:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0A8F60F7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QXU-Mxi1rUQU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 22:42:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EFDA60C14
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EFDA60C14
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 22:42:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="362128624"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="362128624"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 15:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="715380367"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="715380367"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 14 Jun 2023 15:42:51 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 15:42:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 15:42:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 15:42:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jJecd1iOTT+KcH33kWS8Wd8h0vYCu7UGEQyZuA1y4N8YM+sVnHeVUAe+m3wgg6M8LmJkev/0x9zRkRk+vQQp4mQkQCEcDXUg/veJPAdjAx0eVXpBthGSZPBi261zvr8Ap00P2cXA2fPcBKa1GAVKd7MC3KSCPOiYALuWiaWFqKVKTVFD3d9KrurTWbiQ+Zt9IdXNMWSW4ipYOzeVrfIJh2/IftsQDBaRerfiIbu6jOFCpv8u+m4uTuIFM4hQXZWtzDMExB3hgcn1KOc8NxruaDq6qw/GnCksSHfuW6dBSKt/hA8AZOr7YeSMriLJlM2rYpjvdoU4XOm3JQoNgEqRWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hJr/P0xz5up0isNKxAuErVwjuglq6ro1NjV4/JSJmg0=;
 b=FVn/UKKB/1UO8ES4gndZQvO6yuTrgivjAqPBfV6DzaXyyu5YdmJIo+T86Mx8KUA+XDiRECVuO1O+n3BDuGqVsMAKSvc0KICKwYhNAKprQPL0q8iPlhs9VAg+wMNNoUZ1VlHbykd5Lpoz66l1DXQF/tyxF9743RviX0gFiLuh/CZTm1L+NJsa2OaRBg2avtmZa0h9eoxiV1Oy0foZ3qK+R86eRB6++6Q8PGfs2OER5Rc3VhNGeYt5eHPeTumCTkm2gRZQjdU1kb2BspMHESur/Ozumxmp8ZLrZ2QHkIJSw+vbTesN4xQEGx5ui5EofNzHZRZttZNzzXzzdzMkhAtQ6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by MW4PR11MB5774.namprd11.prod.outlook.com (2603:10b6:303:182::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.44; Wed, 14 Jun
 2023 22:42:49 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%6]) with mapi id 15.20.6455.030; Wed, 14 Jun 2023
 22:42:49 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Brett Creeley <bcreeley@amd.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v4 02/10] ice: Add driver support for firmware
 changes for LAG
Thread-Index: AQHZmxeMU0H/mWURmECI3Vg6OeoxwK+K1uAAgAAUnRA=
Date: Wed, 14 Jun 2023 22:42:48 +0000
Message-ID: <MW5PR11MB5811013247814142055CF99EDD5AA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230609211626.621968-1-david.m.ertman@intel.com>
 <20230609211626.621968-3-david.m.ertman@intel.com>
 <401c13fc-9fbb-a126-f05a-6468a563404a@amd.com>
In-Reply-To: <401c13fc-9fbb-a126-f05a-6468a563404a@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|MW4PR11MB5774:EE_
x-ms-office365-filtering-correlation-id: 2018518f-e909-489d-bac5-08db6d28ae1e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XPY9LqOKNljfq5k8f10TwjgjoAwsuAPXSTIvflvqM8oJpFRYD7eAkMxTOaVa3s99ipNaZtE/Z4WKett9bnZd3XxMUq/p8zN71PYjFnwpTdSbkkWCVRzp1mLFYwV/J9L5cAyVqJnApFm1J26UcvEsbLQw1BIt13QJlkxKkI1Zj/cbxWWYehfkEnAp/QhGuDI3Si6I0cAMhQ/YZWAj/MUZXDQ3Yg2+8dxjs1qXTE1u4hmX1Je1cCf9e8w4qQ+fFSYwUeFmHZjak2fh2dDhJkwZpxs71r1jT2t+aLg2seqk1CXqDkfOc965W+McUf0iz0KihnoHorLNoWeC1Dh0CeaAhCuh9pW2Nc7IrVSfj8BbBDSQLrgN51Xl20Ji3ag9PTLnRdQ1IQC3V5YxBO0nb7hniAACeGv+NO4GWAQyd/L0oaomFoadeKoqkNk6vED8/G2Uc1ooveAIp7uqWGBx0ufSd/tHvpj7rfHLXcbJ7c1Q5f7E8KW0zx7kbfA6n44mxqa07+dGMZhe22LhYS3287ylu01PAlonWIprqWBWywql7ieaD7KlufG0epTPEFca757zEqytMJ1S0brbOlPUIdv0eerlVKFMswxodrBGDtOSS+IpY5/nW302QPrKD+715DJz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(376002)(366004)(136003)(451199021)(53546011)(26005)(38100700002)(41300700001)(7696005)(83380400001)(186003)(6506007)(9686003)(71200400001)(54906003)(2906002)(82960400001)(110136005)(66476007)(4326008)(122000001)(55016003)(478600001)(66556008)(66446008)(316002)(64756008)(66946007)(52536014)(8936002)(76116006)(5660300002)(8676002)(38070700005)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aDBGRGhqaGRScFl5YXh0QkdKZ3VmRWl4TldKTE1ZSE0xVWRUL0liK0xsbmpv?=
 =?utf-8?B?R1R6L3NBQVZKeHN5aGt6U3E5bzJuZ1Y3ZGtmTExrRjZkTXZaYzJJWkY2ZXE0?=
 =?utf-8?B?TXRUcXkyeXNMaVVwMlJPTUV1RFNybUE4M05ZU2hhMUFHRXVWdmV6RjdkUTQ5?=
 =?utf-8?B?eVNIdXViMXNlb0d1Uzg0WjBuZGszQXFTak11WHNPUzVtQTFxOUNPaDF4SlZR?=
 =?utf-8?B?R3BwblM4N05JK25NUGdTNGFjT0x0aVVoSy9KUkJWNzZSK0trNkg4T2NqNU1J?=
 =?utf-8?B?N09ZRVd1VXpsZWJISFZRWUd5TnE5U1hzcyttRjlrS1J6STRsaEtlVDZRY3hJ?=
 =?utf-8?B?VWVIdW42TjJQdTN2ODgrRWdLMGNiOElIRHc2R24reHRXL3FqNEVlUFVVekJP?=
 =?utf-8?B?b3E1akFwRTVYQzVKKzdYSUhscWZ5eDNtcUhacXpCSG9FSjBxQXBtcjFRTEdo?=
 =?utf-8?B?cDdXMGpNYnphd1NYdjRrL3BmSjNaUmltNytkVlNCN21LRXRUUEVhZWxGNEF5?=
 =?utf-8?B?dS94T1pqRHlCNWJ0RitNZ2tTTXVTcWxaeWZLdFVQRVRkdW8zSDBVRFVMSlFJ?=
 =?utf-8?B?Y1ZJMEtxYXNLVnQyNnBaMzRhR2wzQVdRVXJUMkFRYkV3RmZydjFOUWpRSkFa?=
 =?utf-8?B?bmY5bHJCeWhFRm9CMy9CTEtsWkNaT3dpQ0szYmVHT1VvRytuOG1JUER6VSs0?=
 =?utf-8?B?T0xrK0J0WnVURDVHcCtFdDg3b0tYeHI2Rk5TU05wdnJacGowTjBDNU5YU2ZY?=
 =?utf-8?B?YUZ6RGtwTEdod2hIaVJONnQ0L1FLZmlyNlRoc1JQUkVxZWkrZE9iNzljOS8x?=
 =?utf-8?B?U3ZYWVNZQW1mNURacW9mTS9wakd3L1JiSDJxVVRPb1NtUmE1K1dXT000aith?=
 =?utf-8?B?bUVtb1ZydUhyc2VlUzZranloYnVsN1dSZStYRVIySDY3c1FxYXVxb3BvT3R4?=
 =?utf-8?B?R1RNNTZMaVE3TEp4cHAwZEdjK3FVQkJSVC9VZks3MmZ2TDR3NDJQWVFwNHRt?=
 =?utf-8?B?aXQzTm1YQWlPdG8vQzBZZytMaE5uMGhlZ2VMZnk2WjFsODdaaHlCOUhDQk1Z?=
 =?utf-8?B?d3B1L1VGNjZjV2RrQTlXcUpHVmNCYWNFNzh4SkM3c1FIK2NwOTZVRzh1MGpX?=
 =?utf-8?B?NERnNythM0xWai9COGU5Z0dtWlNCaDAxNDdVMW4vNSs0RzI1RU0xY01ORWdX?=
 =?utf-8?B?OW8zWmFFdURmd3l2aG91Vk1NL2JKSVgyMlFNQWMwK2ZhZmlZbWlObnNmL0p0?=
 =?utf-8?B?QWo3TktZT0hEKzhDVk1GNmdnaHl0QkhUdFlocGdqRjZGT2RHcUtkUlMzVDUx?=
 =?utf-8?B?dTdzR2htaWhQbFhmOXI5ekFsUTR1NzRocFRYSTByMkdJU1FkRnlPZmhORUhG?=
 =?utf-8?B?cmtuNnFSV0c4cEpWbU8wdktWMzdrTkMxeENVZytpNXZVSDNRS21VWmdwRXIv?=
 =?utf-8?B?bUQzY1RCSXlZZEU3YmFiMXBrOHI2Rk5BNzh2dWwrRE9JZ2FxMU1YRkpLc0ZO?=
 =?utf-8?B?QU9XNS8ySHFHVjU2UXg3T25NNmhEaExPM0VsWUZ6QWlieTM5VlVhYUdtWFJV?=
 =?utf-8?B?OENTTS9EYm5WVk1kc0tnZ1lOSGpEeUR4R3FxSFhDbDVoa3NBeG5nY0VMdDl3?=
 =?utf-8?B?eHZJWEVCYnhWa2t2NWVQcThFQzlKaHB3RTQwZWpoZGxtRzlzNWpjSXhlV2U3?=
 =?utf-8?B?NDhnSDVpUDIvaUNkZGNFYVNRMHpLQmxPSG5NMXVsVHN0QVllRS9jdXFvd2Ey?=
 =?utf-8?B?S1BWZTlzZDZKMDBqWXIrZUdrenVERHlHTWJBK2ljU3liUTFMZEF5cXY0Mkc1?=
 =?utf-8?B?ejVESzV6aTJmVWRXNUZLWUIvd2pmMzNlLzBBK1B5M1BIdzdCcUtuWExvQmk5?=
 =?utf-8?B?OC80bURhTU81U3lGakUzVkhSd092SkcyT2lqV3Y3K1czMEtQZ1YwYWt0dWgv?=
 =?utf-8?B?NUJZZnRzeWNYdFlwemM0cGdVMjhtTFBjUjdBcTZiZWR3RW02YVhiVkhpenVJ?=
 =?utf-8?B?MGF0OXBiR0E5dHpVcGxuYkJJYnF1aEhZalVvSnZZelJuTEIxTDNMN1lnMlRI?=
 =?utf-8?B?VWI4ZE5FZU1vTWUxbktIUTU2cDhHbmdGS2xEd0JzZ1lDZktCanZ5NkU3eHJq?=
 =?utf-8?Q?CdiM9RALdHkXc20v/qcDeK2S+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2018518f-e909-489d-bac5-08db6d28ae1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 22:42:48.9888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Sj2iuywBz3zw7R2nSnkXwhP22KD1b5/3xP5vu3lD89rGtXoldJcWBa3clXaqtpriDLDZsIBQCHn1a5Z5FQjl3zsfxVPY9GpTHyBJa+7bdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5774
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686782574; x=1718318574;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hJr/P0xz5up0isNKxAuErVwjuglq6ro1NjV4/JSJmg0=;
 b=gQRaeBEMc9av1DV+qlzQv0RwJbU2zhCmhtrVWdSIRsWecJl7m9vcHOqz
 nw8mu9Z9KVaHPF5PIhjfFGxjNYuk4mYBn419J+lq8KwC6BooXGMzrwhm5
 mg85jJUK9NR+xy/IVPqHOD4txlB0o01IwfuOjKoTvR2uEJqd29EW8qR6o
 WiY+d3tPp1h9FMtRf3QNO4fYM+j1WG4TIt/IHTtDwjd+kIFhD9wOaGHtK
 ZjZdSOAKFMG3bz3aGsDDchD3K2pu2HOgfSACVqaaYLx5PfSf/w6qHjaWV
 lg3Z7y7qoyRw1bUXswU534B9V832nBRQobp+LC2eIwlXTa7RWzF9BLtmQ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gQRaeBEM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 02/10] ice: Add driver
 support for firmware changes for LAG
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Brett Creeley <bcreeley@amd.com>
> Sent: Wednesday, June 14, 2023 2:24 PM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: daniel.machon@microchip.com; simon.horman@corigine.com;
> netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next v4 02/10] ice: Add driver support for firmware
> changes for LAG
> 
> On 6/9/2023 2:16 PM, Dave Ertman wrote:
> > Caution: This message originated from an External Source. Use proper
> caution when opening attachments, clicking links, or responding.
> >
> >
> > Add the defines, fields, and detection code for FW support of LAG for
> > SRIOV.  Also exposes some previously static functions to allow access
> > in the lag code.
> >
> > Clean up code that is unused or not needed for LAG support.  Also add
> > an ordered workqueue for processing LAG events.
> >
> > Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

...

> > +/**
> > + * ice_lag_check_nvm_support - Check for NVM support for LAG
> > + * @pf: PF struct
> > + */
> > +static void ice_lag_check_nvm_support(struct ice_pf *pf)
> 
> Nit, but this name is a bit misleading to me. I would expect it to be
> called something like "ice_lag_init_feature_support_flag()" or something
> similar that better describes what the function is doing.

Name changed

> 
> > +{
> > +       struct ice_hw_dev_caps *caps;
> > +
> > +       caps = &pf->hw.dev_caps;
> 
> Nit, but since you are already creating a local variable you could go
> one level further to the common_cap, so it could be:
> 
> common_cap->roce_lag and common_cap->sriov_lag

Variable changed to go down one mor level.

Changes to come out in v5
DaveE
> 
> > +       if (caps->common_cap.roce_lag)
> > +               ice_set_feature_support(pf, ICE_F_ROCE_LAG);
> > +       else
> > +               ice_clear_feature_support(pf, ICE_F_ROCE_LAG);
> > +
> > +       if (caps->common_cap.sriov_lag)
> > +               ice_set_feature_support(pf, ICE_F_SRIOV_LAG);
> > +       else
> > +               ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
> > +}
> > +
> 
> [...]
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
