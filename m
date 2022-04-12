Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C3B4FE60E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 18:42:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97DAA41754;
	Tue, 12 Apr 2022 16:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fdTiNiGp_riL; Tue, 12 Apr 2022 16:41:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61CCF41728;
	Tue, 12 Apr 2022 16:41:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03FC21BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 16:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E583683F70
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 16:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id US4Cscf5YY4F for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 16:41:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 22B8683F54
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 16:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649781713; x=1681317713;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UzDUA3je9EhEtPlymWZorIwApRpr/Dt4hY4x0qQnZU8=;
 b=W/g/UEsBJNgJsMGFOENKRp6U9Z0R2+sco8+gCWk5VCfFBvTThHgH95KW
 yGkS/Ol4aQ64yiUg638WEi+a/+nnleJUUiDsS7zdyzOxyQMFFoXO4oNcp
 fmwrPJZNWlVfVkT60PbKCMdKL9qMSJazHeolALrzeaoHLsMg8KzQeE+7Y
 Q4C9xjBigUYCTsXsM7916dTHjwKu63eMRQ6AmwVeccr+vByzo4lbnZs4C
 8kCyOKCCiNqOY7QQ7MwwyVDjQu8L2KlK4jg6YrVUqDwucvEl7vUr14M6k
 wktT/ZbPcmGyIp+bMNv1FTrY3Fd3TnvHHDbTRR6gZm1DoBiUrLbBfmZR6 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="262183738"
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="262183738"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 09:36:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="551796435"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 12 Apr 2022 09:36:43 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Apr 2022 09:36:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Apr 2022 09:36:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Apr 2022 09:36:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UTdDsjRUd8xnfwZp3X2mIRf5TDabbWG1+aWirubG65YLFpLty5B8VPyAzEk0qiSisCT2DvjGobD6fl4SLpH1xGZNlDtswp7He9e2Gu3giDq7FCyjEH6WfmMC9OQjvyia+Ux08IrbJY2nfC1cpGwJKsU47bLalqkZDfXOwVY28JJ3ENizlmIuOgmonRP3O/PPuqqyAnlA53KSAcoIk/vDuzBmbq+YB/fhmC44Al3KXIeI4imtnCPbk0chIumj9wm7dwhazMLzukgFE1kbOx+iVHmLxUD1pB7VrXCDNGsT0/M3CULwaqwCIaO66AmV1XCKSVxx6mgH4Lo+DSM9cwSdGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UzDUA3je9EhEtPlymWZorIwApRpr/Dt4hY4x0qQnZU8=;
 b=OIjInBXEElYKx4ztIXOYzbTcF6sYHkNpE3J4BrjHs+pF54+dM3Aa4yuTnxO1IMCeEiRzT0EKfIw0NWjEB+CSoGwVT9jSQEetoW5fYZRPMH/JdAWHEfpTK7n8M1PmhSX8u5PKJUsyI2cpErs5YjqnvD9RxyVkvk/qteevfntyYLsrcCWc0648wY7kHS2ktiKS39z+leukuNXeQbJh0jSTOGnHayW44DvAFENLdQFRTi7tL1Jo2oIQk2WRGHQO26pwkAMHoNwJ5PuHavTJISng5soFDXRaV1rM52v23UlKbBeTalLNXZM+9h2agS1cUUIdfw4sCFKwL0EB4kEiNinQ1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH0PR11MB5490.namprd11.prod.outlook.com (2603:10b6:610:d5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Tue, 12 Apr
 2022 16:36:42 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::815d:8ff7:538c:b10e]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::815d:8ff7:538c:b10e%9]) with mapi id 15.20.5144.030; Tue, 12 Apr 2022
 16:36:42 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/6] ice: add newline to
 dev_dbg in ice_vf_fdir_dump_info
Thread-Index: AQHYTfv49WLORuTobE2HZ5fdGVKo0azru2kAgAC/eKA=
Date: Tue, 12 Apr 2022 16:36:42 +0000
Message-ID: <CO1PR11MB5089109C48F3F58ECA332F3DD6ED9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
 <20220411232907.1022602-2-jacob.e.keller@intel.com>
 <aa858f43-a62b-4ce8-c307-882e0ef90134@molgen.mpg.de>
In-Reply-To: <aa858f43-a62b-4ce8-c307-882e0ef90134@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc26d96a-4a29-40eb-ef77-08da1ca2a026
x-ms-traffictypediagnostic: CH0PR11MB5490:EE_
x-microsoft-antispam-prvs: <CH0PR11MB54909E3D4AAE00DF7F473DAED6ED9@CH0PR11MB5490.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DA4KMOC7TK6lMHCMPGF1+n0y6RM2fckC/vjvbbsmxtXyg5FC5IiF2LoRIxhHOUV/WOLZoDzWZhNFDw46q28ZjkpradUrtD9WDlHLTHB42U78CM/2YL/7kEl++NQpZB07wdNlueamVC5psEx0E8BKIMWmep27jFPM5dSyEDqmMoyqyCWuigJ31jCKVQshOSGONjNUtzP1KH5sDj5GeSJUg8jCHb5Zx8NpGz2yw4kIUT+1A/nH+DUafXZkfzvtCJnEUiSOaKzzEM9N0T7Vyx6RhGEQiLOeauK3mq7m8unenOa4IFbbLlNigLU+SFumOd8zDlbAP7bXsFBkCc7QlrBUaHkXxQwGaWBNrgXHBlNbzh88aT1CaOe0WFTcY2kxC7BEPazoPrCuEWqDTXqQi5YWv9lpD3uaQt2UOQHcgy3IkK8NliICcMGPgCNmmipJ5k/XvwGDpExHPueQMutMBgSdP5lZ8B/c67tKjrRs3PX2mknzHY2MNjZqxqpIiaVbB1K8dT24dWD38FMrH8NGxxRMpEkrm4bZcrzaobcSiANQR+KMWujJaSX4EvqotOuSe7IcB/5VYEKMuVMgMyvRQHI6YBxO4U4fHq1HaznQi1F5iWjh/Grr/vSt1DYKTiGZ4fOvXwqRUbjz+G0tLPhfINslXydmHWvTG8tjoIrm2WMgwE7vcfHQfQXtolhXFpVJOPXZndgMAX8wDTpYDADjhgNfkA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(76116006)(86362001)(6916009)(508600001)(55016003)(38070700005)(82960400001)(83380400001)(38100700002)(66556008)(316002)(2906002)(186003)(26005)(122000001)(8936002)(9686003)(8676002)(4326008)(53546011)(52536014)(66476007)(64756008)(66446008)(6506007)(33656002)(5660300002)(66946007)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDdZaHd1WjFadUljOW1YRHA1Y3VnelMyaGNIeGtQaWR6emJZamZaY04wcndJ?=
 =?utf-8?B?MjhBNTNxeHRYYmx5cGtFaisyckdxbUFkWDhDd3dBUkRJczY5NVhGYWFqNUtD?=
 =?utf-8?B?VXkxMkRUdk1uUnUyQys5SndlakswUm5QZTYzOHNkSG0xQmd2a0hIY3NWZ2hO?=
 =?utf-8?B?YjZKNHlwNkVwdWE1RmpzY2w5TWh2NjJyL0tOM3ZyNWJhek1qVlI1SWYxWDNs?=
 =?utf-8?B?ZWFnOFE0eGd6Y1l1dXlYUTZYM05MZjVNOU95NGd0SFp2bUg2SW8ydk9DNXJ2?=
 =?utf-8?B?QnIyaGQ3KzhFL3BzTHUyK3h6VFBGRWNMQjNKN1lpTnV6c0JydUJ0SUl3Mm8z?=
 =?utf-8?B?cFJWMm9NUlJrV0srUXBWaGluNVE3ZDV6MmErRWtYUk8yTzVXMGlIeWZEcnEr?=
 =?utf-8?B?MTEwY3VvSFp1S3FTVFZTK1JnM25JUjVMVFdGcy9CaXQ1QmZlMTlJTjhXditD?=
 =?utf-8?B?TjI2ZFg4L0dsMzBNdXVGV25sS3oxdDFtNWd6R3Arc2FxK1Q0L3REVWlNY3gr?=
 =?utf-8?B?SUFsbzZEeklmWTBTOTE5UTIrM1FPUUZHRGVKZGdRYWlnUkNnK0s4djZpSTdo?=
 =?utf-8?B?dHA1c0UwTHg3VTZUZFYrdW9wdFFxVmc1ejVNNitIbmZmSEhxVjZEVHJ6TTVx?=
 =?utf-8?B?Q05UWHJieG1nd3MwY2tIek8xL3ZMMzEwNjdBbmF3UzNXSURPdHZnTXZ3U0Zi?=
 =?utf-8?B?eEFqV2RnVWJQZ3RjRnJCVnoxSXhUTnFHbHkxUVNUNGx5WXNOOFl5Y0QvVXNE?=
 =?utf-8?B?UjI2NE1OY1RHMmRhYlcwRmRZQVIwM0xjQWh2OHhKUU9WL2ZwVGJsa0ZSdWpD?=
 =?utf-8?B?Y01hNWVEUjVvS0ZjNWpvMHFFNGYwTjZGSFl4cU9UY1pBMDBBRUdwWVFnRlB5?=
 =?utf-8?B?UkYxeXJsc1RlTjUvcTd2Z2dQcFlBWXFWUkFkbHBzTFRCQ0liQ25RWExCcGRs?=
 =?utf-8?B?SUNzd3dSVy8xZmxGRzlHTCt6Zmo4ZlloTFBFK1FaWVhOdWJPZ2dGM1pWb09I?=
 =?utf-8?B?Nm9RV1Fxa1NHSnZUejVIVUp0SnBLVU55SVBRaEZUUU9RTGl1RnltSDg5Ymlj?=
 =?utf-8?B?MDNzU01LUjNzWTQvQVVzWlE0VmNOeEVobEgxdW4veTk1QkVPUS9Vald1Q29N?=
 =?utf-8?B?V2I0aTFrdFF1UDRma3JkSFNObmJJaHFmcmZqS1dqMkg2SHhRQ2QxSkZ4Uk9r?=
 =?utf-8?B?d2s0anl2V1FMWmY3MGJybi95Y1dHeW92bU9DcHB6N3E0U0szWFBySlM5V1FW?=
 =?utf-8?B?VUNNMFVVMXptcFhYMURkV2M4Q0NxamlrV1d4bkc3QzREVWNlUnVTTW1GZHBX?=
 =?utf-8?B?TFdPYjcrKzk2Z1R6KzdBM1Ivd0pkNzdBcnc4SXdtL3QyWU5PSHpSSDR6cGZm?=
 =?utf-8?B?VlJvYmgrTllyNlIza1F1Tk42U2RiMUxTUys2aHdDNTlISGVpeVNWeWlUTGpt?=
 =?utf-8?B?bzFMSmQwYVd1b2MvekM0aTYrZ3F0aUNYQWNuZ09vUDgwYTRuRkRiVUNBMDVt?=
 =?utf-8?B?d013ckZQdEo0cnNqYzNNZFBDU0lnTElqUGljUkt0QWc4SUdjYkd1YWVRR215?=
 =?utf-8?B?RU15QStSNDgyTlpZSUFXZFFMNFFnUnJUWUxqUzk3WWZSZTBKNURiUlVtcWhL?=
 =?utf-8?B?d21tMmlTWTN6ODRST0FoNyt4YlhuQk1TbVdvMTJ2T2MxUlVDc2tHTWkvTUIv?=
 =?utf-8?B?OVJ2KzJPZ2VJazVjdHVYeTdqMmoxdmZVeTR5Zi81ZEZ6Rk03Y2pIRERzRFNO?=
 =?utf-8?B?cWxPVlhkbDB4Qm53NURHU3duWjdyblQ4YlR4R0hRby9uT1dXTFE2T1BXaFhW?=
 =?utf-8?B?VU1idk5hYU9PV0k1VkVHTjZlVXpNT0lsbFk0Z2lBU3VNVVBvUmJGZzNBSEs3?=
 =?utf-8?B?R1hnSFFwTU9odFZMaWplYzBWQm1iZ2JCaHFpR3JYK0ZFVGYvK0tSYTVSV0dD?=
 =?utf-8?B?MHhFb3BVTDBoTXNvaW0zNU5vRmtjUGVNQWc1d0JWeFJyL2FSWjJ4Zk1wbUF0?=
 =?utf-8?B?NFdrYm5IN1FEVFpJWElGRXRRQWpOaW1mSUcrcm5JZ1ZNNzdqQmt5UlhMQVE5?=
 =?utf-8?B?dUxkbmhMT2VYZVAvbGFPQ3hpUG1nWEU4R29rU3dDME04MDdKNUFzYkUvNmRr?=
 =?utf-8?B?TERHK05mNDdjZ0o0OEpTYmcwdGZaSGNSNmFHSTZMb3B5S1dMYjlZQk4rczFk?=
 =?utf-8?B?a1M0V1VHUkp6MncrR3NiZDhycmNJSnZ4WW5PMW05aU5OTlBjb2tpWXZYZm95?=
 =?utf-8?B?U3BBNU1kYk4wcFhjUldRZG1wQ1UydlBQL0Z5NlRzbWtvcE1JcEpGZmV0ckpZ?=
 =?utf-8?B?TDAwZy9SYzV0dUdRK3N1Zm1Oc3BTSi9DOVZoTnRDYWlYNk1RcGpOZz09?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc26d96a-4a29-40eb-ef77-08da1ca2a026
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2022 16:36:42.2907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nFjWXHiuIUw/9/Uot+sjHr8PVvYRbbFxACSny3nCVLYwYdFHPbev2OVA1NpRBh914rpDwFMKcNs372D/hW9NosZqMzMB8yDzbBA4p3flAZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5490
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/6] ice: add newline to
 dev_dbg in ice_vf_fdir_dump_info
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogTW9uZGF5LCBBcHJpbCAxMSwgMjAyMiAxMDox
MSBQTQ0KPiBUbzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+
IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBTdWJqZWN0OiBSZTogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldC1uZXh0IDEvNl0gaWNlOiBhZGQgbmV3bGluZSB0byBk
ZXZfZGJnIGluDQo+IGljZV92Zl9mZGlyX2R1bXBfaW5mbw0KPiANCj4gRGVhciBKYWNvYiwNCj4g
DQo+IA0KPiBBbSAxMi4wNC4yMiB1bSAwMToyOSBzY2hyaWViIEphY29iIEtlbGxlcjoNCj4gPiBU
aGUgZGVidWcgcHJpbnQgaW4gaWNlX3ZmX2ZkaXJfZHVtcF9pbmZvIGRvbid0IGVuZCBpbiBuZXds
aW5lcy4gVGhpcyBjYW4NCj4gDQo+IFNpbmd1bGFyPyBkb2VzIG5vdA0KPiANCg0KQWgsIHllcC4N
Cg0KPiA+IGxvb2sgY29uZnVzaW5nIHdoZW4gcmVhZGluZyB0aGUga2VybmVsIGxvZywgYXMgdGhl
IG5leHQgcHJpbnQgd2lsbA0KPiA+IGltbWVkaWF0ZWx5IGNvbnRpbnVlIG9uIHRoZSBzYW1lIGxp
bmUuDQo+ID4NCj4gPiBGaXggdGhpcy4NCj4gPg0KPiANCj4gQWRkIGEgRml4ZXMgdGFnPw0KPiAN
Cj4gTWF5YmUgYWxzbyBhZGQgKmZvcmdvdHRlbiogdG8gdGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1h
cnk6DQo+IA0KPiBBZGQgZm9yZ290dGVuIG5ld2xpbmUg4oCmDQo+IA0KDQpNYWtlcyBzZW5zZS4N
Cg0KPiA+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92
aXJ0Y2hubF9mZGlyLmMgfCAyICstDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sX2ZkaXIuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfdmlydGNobmxfZmRpci5jDQo+ID4gaW5kZXggOGUzOGVlMmZhZjU4
Li5kYmMxOTY1YzA2MDkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV92aXJ0Y2hubF9mZGlyLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sX2ZkaXIuYw0KPiA+IEBAIC0xMzQ5LDcgKzEzNDksNyBA
QCBzdGF0aWMgdm9pZCBpY2VfdmZfZmRpcl9kdW1wX2luZm8oc3RydWN0IGljZV92ZiAqdmYpDQo+
ID4NCj4gPiAgIAlmZF9zaXplID0gcmQzMihodywgVlNJUUZfRkRfU0laRSh2c2lfbnVtKSk7DQo+
ID4gICAJZmRfY250ID0gcmQzMihodywgVlNJUUZfRkRfQ05UKHZzaV9udW0pKTsNCj4gPiAtCWRl
dl9kYmcoZGV2LCAiVkYgJWQ6IHNwYWNlIGFsbG9jYXRlZDogZ3VhcjoweCV4LCBiZToweCV4LCBz
cGFjZQ0KPiBjb25zdW1lZDogZ3VhcjoweCV4LCBiZToweCV4IiwNCj4gPiArCWRldl9kYmcoZGV2
LCAiVkYgJWQ6IHNwYWNlIGFsbG9jYXRlZDogZ3VhcjoweCV4LCBiZToweCV4LCBzcGFjZQ0KPiBj
b25zdW1lZDogZ3VhcjoweCV4LCBiZToweCV4XG4iLA0KPiA+ICAgCQl2Zi0+dmZfaWQsDQo+ID4g
ICAJCShmZF9zaXplICYgVlNJUUZfRkRfQ05UX0ZEX0dDTlRfTSkgPj4NCj4gVlNJUUZfRkRfQ05U
X0ZEX0dDTlRfUywNCj4gPiAgIAkJKGZkX3NpemUgJiBWU0lRRl9GRF9DTlRfRkRfQkNOVF9NKSA+
Pg0KPiBWU0lRRl9GRF9DTlRfRkRfQkNOVF9TLA0KPiANCj4gUmV2aWV3ZWQtYnk6IFBhdWwgTWVu
emVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+IA0KPiANCj4gS2luZCByZWdhcmRzLA0KPiAN
Cj4gUGF1bA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
