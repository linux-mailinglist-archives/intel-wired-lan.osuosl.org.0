Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E623EBA22
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Aug 2021 18:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB79582EB5;
	Fri, 13 Aug 2021 16:32:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4kxnBMRSOXgz; Fri, 13 Aug 2021 16:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B17682EC7;
	Fri, 13 Aug 2021 16:32:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 730271BF873
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Aug 2021 16:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 60B9E60654
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Aug 2021 16:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NE-xl44CnLyB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Aug 2021 16:32:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61F90605EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Aug 2021 16:32:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="279328892"
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="279328892"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 09:32:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="470127863"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 13 Aug 2021 09:32:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 13 Aug 2021 09:32:35 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 13 Aug 2021 09:32:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 13 Aug 2021 09:32:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 13 Aug 2021 09:32:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m8vOy9F3SWNnOwKPTD+AUsNRAezG0EI3E+jwYvNx1P7KQ6M0TIIncxF52CzbjH+X0B0FH7xXbHaR80prh4lcQx4hjC5x0MNxIijR9IUmIMiO9UHXwLy7x7+lstNiP4NRM8TFKfS0zHgwYQkuYLhHvjPR4kXc5gheaam052PEXZbL746FYfUwNRWIz+Eh+t9qLai/pLEXgWABoEL8wuAR8nlosNWbmPGGUi3QkeDBFIZae3SRXhZD/u87/YPSUCTiJgX8oksc4jqvO6f3atOjzA/stR4r4VCmEyJ9D7a55rwoZ8S/vP5tR/YpzQOkCwA7fiObND0SfFOnCnWPRBqVGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZW1uUCruCBq/MqjPk02Jb9RninBnIP7XsYwfeZ/XgmY=;
 b=lvbeJowyUI7YGXteuUldZOm4MRl2yHy2GDXK0l3JG8blrSSq1olqvy36RzyzLhFqwdRt/SQpsyOJoSZ9maCtS6mbi4rklsbnBjTdhx5wpJMd2TSBca6iyZQ9LzC8nt19NP0mTX17XIQnuReEpFS6EvCaGk0GpZaaeKSE7OdgK3TJpohPTwBpyWzd0N+BLV56PU0to6rA1gwjVXrSDMy1eLxyZzpBmGNne4LolyaGCWytI9xWHuNIpjGpgv/i7ntGJRHQDS+eRBOy6G4pcPoTVD5nXLcz7x24IGrDpWJg6MG/VCYuKp17eXb/EVS7al6aWB8c77WvFe9pg+yfg8rpKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZW1uUCruCBq/MqjPk02Jb9RninBnIP7XsYwfeZ/XgmY=;
 b=SDhvEK0BUNwA5cy+sydiwbSQJeNrg4EOdQGjBKSXf1OxwpqLJR2r3TkNdEN/aMhTVLKdM0UWTxJXbqpOFNyQ6WzV9UFfhYLOQjjNd/jc+Mrb4bUs/cit7Yp0KxFvBY4AzetigqI0EZeQCj+yUNcM9puw1+EfaIkVoGwIAd67k1A=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5034.namprd11.prod.outlook.com (2603:10b6:806:f8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.17; Fri, 13 Aug
 2021 16:32:30 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4415.019; Fri, 13 Aug 2021
 16:32:30 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "zhaoxiao@uniontech.com"
 <zhaoxiao@uniontech.com>
Thread-Topic: [Intel-wired-lan] [PATCH] igb: handle vlan types with checker
 enabled
Thread-Index: AQHXkEvYaz/lgoP3bECzmYrA8kjIuKtxogYA
Date: Fri, 13 Aug 2021 16:32:30 +0000
Message-ID: <dcac5bb5598fcb1b6ce09aca2ac718f8e9c6e4ad.camel@intel.com>
References: <20210813074536.15624-1-zhaoxiao@uniontech.com>
In-Reply-To: <20210813074536.15624-1-zhaoxiao@uniontech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e24745e4-871a-4999-085f-08d95e77f243
x-ms-traffictypediagnostic: SA2PR11MB5034:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB5034886B7D663B0140E3165CC6FA9@SA2PR11MB5034.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2+/pLxGSZsacYvWytGxdIEHt9xOUVgRTnQdSITF+gaqPwjA0NkW7TQtsc+N0EkPGt/HDJ9imzHodtA6WdCYsiPROR9T0EI+Hp4KQeoQMZtvCgcw+94SNSWzx+dZOommpjm4auu4+Td1OtqG3Az2DzXILI0KnE6pN6+W4Gt7iKSTs0QLMVCZWY7VBV5U7efvlmReHpg5poPvU/pGoFWDLFp2KM8Ew1v5GyDlPA5lv1+5qHI6PW9kE0fAGHE6D6Tq5SfLiSWf+RZH6ApFwqlEZUChFEHFgWqWWM5IbHHTVmdQH9rNyGzSwBVqs3QKmiYMBxyUJZg7rRg/4hO4Ce/YmgQxLavXnWBoLW2QXXXDVTgIIsrswgtSsJct1pNHxCzQzLUOecssx/ufL8nvODEnr37Z4Xievu/Qm+KxgaRtPTpzokB02T/i3q7VaG+LUmbKg1PpxEoZb18X9nSON1b3Wt0eqzcTiFu0vsjtOrE8MDhPYLz5ukGvbW8JioFdzmMYJ63q3phHFlf4nft6ApvsdAU4nikkkct3JIpftLFG/GTQ1Q/DbNWl5KAEwLrhhfBCSJrk8tJpBMj+hWq2Pvn7R2+AdFJQJ2v0d/8JHSXdkAgBRNFzTelbcvxB83HbbhOQAj86a0pN2pKDVN/04PQfHn1DT7PkKHOrvFb8o9wF6WKpKZTAamm0sbqs0nOt6tM/dkozFvw21t6sAjljkJGHAHkP8RWarVH4fduyaSZb75R+qqcctdUzyMDAfCgNl23yDAyEjV9qTPjCpY2VRRLdvdxekFgqQS1TLDGf5B5mV3fA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(39860400002)(136003)(346002)(376002)(6506007)(54906003)(71200400001)(8676002)(4744005)(966005)(83380400001)(38070700005)(2906002)(478600001)(186003)(5660300002)(6512007)(4326008)(66476007)(66556008)(64756008)(38100700002)(66946007)(122000001)(316002)(8936002)(66446008)(26005)(76116006)(86362001)(6486002)(36756003)(91956017)(110136005)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGtwaVlkajJsYysrdW42UFJYSGN1RW1GSkRVaWFtWUUvb3Z0RHlVNDRQVkNo?=
 =?utf-8?B?eGQ2ZVpNMHUrd3MrSkhaa3pPZmxwbGpabk9tUHl6OWNDY2ZsVjdUTDk1eGg1?=
 =?utf-8?B?Tm91LzFVM3A5SUROUWYyVFppUmFiNUhGTWZuMEhORFJGS0RFVmFRV29RZ3NV?=
 =?utf-8?B?aWwrQXdjR3hlK2lGWFc2TVJFbmMyMjd6MWtnTG91T1IyYmR5NWJ1bTZYZ3Yw?=
 =?utf-8?B?K1BUbi9rRTBhb011YXBJdExIM3doQ1FyZlJnRFNUa3BEVUNlMWE2SGtBTVNE?=
 =?utf-8?B?b2ZOa2gzVjY2S0R2cTFXSFNKbkJBam9pbEtmbVVuUVR1c2tkUm5hMDd4Zm9p?=
 =?utf-8?B?SklvSC91Sk1PL25uOS9PaHRvb3I1dlFrd1lPRTZuZk5pZUZmRUVWQjZrWi9Q?=
 =?utf-8?B?VDMwTkVIclJtck9rb05UUHVqQmE2azZRRFZkUFVyUUFvZ1crZ3BCSi8rNVcz?=
 =?utf-8?B?T0IybFlvWVlNZm5ydG5LeHFWMm5MaGZFRTYySzNyMmVBMEJoVzNlT3lRVU53?=
 =?utf-8?B?c0FiSFlKMFZ5Tlh6SmFUSUNjQ1ZnbTVJU0RXZnltTTIrOFFSVXVyanFqQWRK?=
 =?utf-8?B?WE9GT2NtYlFqQVphSno5Z0lRTDR5Y0RCLzBZWWVTZExMMm5aVS9QWVUrQjVk?=
 =?utf-8?B?cVRJNkl6SVhRUTNBemR3NnlTVkZWNmREeExGeFB5L0d4L3VUM0tWcHNnVXRz?=
 =?utf-8?B?Z1NVb3VHMFJNZFFmd0k0ZWFsZnFSSGFtVkhreWp2TmFpMW9UWi9tM25NWFQ1?=
 =?utf-8?B?SWxvUSt1NDFTVW5oMUZablc4a1A4aTlNVDdaZ2liQVVHQ3R0SmhFNlF1OUh4?=
 =?utf-8?B?TXNKaDUxWWo2a0tBemkyaHN4dEcrSDRlcHljQnErSWNkR1J2MS92OStpYjYw?=
 =?utf-8?B?MjBnUVFBQlRWQmQ2Z0tDamVBR2g5Rkl4VWRwL1RmeGplczBCbTJxbTAxRlY1?=
 =?utf-8?B?OHAwZ1lGN1IvcndJQk95MUx4OHRnU3BCKzZxMEJSY3V4MzhPNXJsSzd0OW5y?=
 =?utf-8?B?OGpHSVZleTlWUlBybkRMTUF0QnFsckpneTFzOHFqYWhRWDJuVnljdXFIS2tk?=
 =?utf-8?B?TWlobUh5SEdNZ3g1cFVEMUQ5dnRKV3BueTRmNGYzNkViM2J1YldleWtpWkRh?=
 =?utf-8?B?TTZwT21uZUJnbW1JNTVSNDBZMUtuWWNmYVhDN2pPTDdPY2d4M0FuOTZqeDh4?=
 =?utf-8?B?VE9OUHRSaFBzTnBsbncySGk0OWtFYjhXSWpScnN6K3BkUG15dDJnYkZMWTVH?=
 =?utf-8?B?Nk4rcVF4SmJDQy9iNlJHdVI5b3ZHcmV0OGJ5YmFVeDdqSTNpVWZ3aEVWV2dY?=
 =?utf-8?B?V3dkakUyNGQ4L0hpNGRYSEVzK0pPMHVtYmVRZUc4bUlNdEcva2ZzeDJqVzAr?=
 =?utf-8?B?Y1ZzRzJWdzFkOTNGWlFIRHlUZ25hS3F3ak1zbFNwWTRyREZDbXRsWlM1SGo5?=
 =?utf-8?B?ZFJ0ZnA5UExOWDVNVnlESVFxSDBxTEJ6UGNEYU9IODZRSk8zS0J2b2x2clU2?=
 =?utf-8?B?cWdlbmJ2S3pjNldJZllmL3htcm5ZbUNGMnQyK0N2KzJidGlWd1BDRlp1d2JU?=
 =?utf-8?B?WnpTMjBIdGptcmU2V1FObVI3a0thcjhNODBkZDRDMEsrTmlmSTkrRVhzVktx?=
 =?utf-8?B?bUVrR0JRaXZUZE9idVNVZG9nTWNLYXp5ZDcvaVp5dzl3NS9YOHNKTjUveXV3?=
 =?utf-8?B?STEwUEEyTjJQbUZRVnhWY3FldVdOTDAzV0ZUVmZocFRzVGdHbFA5cjM2MTd4?=
 =?utf-8?B?emozSnNWUkFqVmZ1QTBQWDlnOER5QnVUcktuQlVRQWwvWmNQVE5PWlM1MzNv?=
 =?utf-8?B?eC9VQWJYaTFYYkhoaTFKUT09?=
Content-ID: <02383A16C62E30478D4686AF8E1CE186@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e24745e4-871a-4999-085f-08d95e77f243
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2021 16:32:30.6665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cHKY7JAuaggik9fB6pyOm3kriQkYITE/gWo149wsWKFolZSzaE1E4r+6tYBLRxuIY7K+VZmHgav41UmDDUuyupsClH3E63sRkMAgjj0o1ZE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5034
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] igb: handle vlan types with checker
 enabled
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-08-13 at 15:45 +0800, zhaoxiao wrote:
> The sparse build (C=2) finds some issues with how the driver
> dealt with the (very difficult) hardware that in some generations
> uses little-endian, and in others uses big endian, for the VLAN
> field. The code as written picks __le16 as a type and for some
> hardware revisions we override it to __be16 as done in this
> patch.
> 
> drivers/net/ethernet/intel/igb/igb_main.c:2676:48: warning: incorrect
> type in assignment (different base types)
> drivers/net/ethernet/intel/igb/igb_main.c:2676:48:    expected
> restricted __be16 [usertype] vlan_tci
> drivers/net/ethernet/intel/igb/igb_main.c:2676:48:    got unsigned
> short [usertype] vlan_priority:3

Thanks for the patch, but this has already been resolved [1].

Thanks,
Tony

[1]
https://patchwork.kernel.org/project/netdevbpf/patch/20210526172346.351
5587-6-anthony.l.nguyen@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
