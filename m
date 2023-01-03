Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 259C365C3F3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 17:33:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5910960585;
	Tue,  3 Jan 2023 16:33:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5910960585
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672763622;
	bh=SDs3ACmrPli77TUZSSZv1RPyqneyiMZdli4oP0PtPRU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tL2BSD90dThg1Qdh7AMrRTCiufVjSxzCgTbUqjJ/mt1lA/gxwn3fj94feLO0Jg/zo
	 gsGU3/WUjwy+JlYqwk8nAShyAbecndjWwMEAfyjW7BnwtaY4tpuo0FYJwv/SclK0Yq
	 GS33n5b6anxpQpX9y2ohwDG3USrLdxysXNO00rLH/TRpYJ86P8KL7ovAAjIsmBx222
	 HKh+cmmR0qbYVuPlqG5ZTwsebJXDn5+mVPOHwmbNa2lkWB9GZ0ZRO3WCpjp2tJKvG7
	 7eAKedDwM96FMBPLSXJDj7B2g6sWk+4sLKU9cUo86mEeC+LP5yGl4m32vJ6A02xnaj
	 +lh7CCNgHKh9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xFJywP0whV0L; Tue,  3 Jan 2023 16:33:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 329DB600CA;
	Tue,  3 Jan 2023 16:33:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 329DB600CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6220C1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 16:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F573600CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 16:33:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F573600CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9U5B-QCERiPN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 16:33:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F6FF600B6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F6FF600B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 16:33:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="301377964"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="301377964"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 08:33:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="900230815"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="900230815"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jan 2023 08:33:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 08:33:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 08:33:34 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 08:33:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DDR/EptmIvdjbPC+kOz6wCvTcupslVeUZCxA8Kp5A+xmR3tewZmqBu+s4f5Jt+pnv1BxABenRSP0V80e7HlAB9dH+ZShWZEZff1iaJwUyekzRNd/FZ5ufC1QIdlURls4fxZyQ7j+esnrEim3BsnVgmGIXq5sI0W+Al9FIr57zKD7FKOkIiEiG+Z4UxzELv60WjKSQGrqNVgoCsok6tWif8oHAkgsP8Vb16k2WDH3AqhXTxmM0DuUXJ0ZMieU+JVNa95d22m/rEi2adKZ6lASOYTn9IRTt+9yTCFQu2dHTubDz3+xMrH8r7sM5+xg2oHxqmDL9cgqelJ92vNSk4H8CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GNIYjmOEJbt4mVOaphsv77B3ApKQAIq/4w8bYKFs4wI=;
 b=kjbGvv6JWeqFsBeXnkYSYPetovrDchL0Kc6y5NtTaf5iMHssdLxg7Zhlp3Kqc3ak2FVnXvKmk1tfVFmkjk9T71+LhXvta9u8ZNnOUvU9NhQZyWKpn78PzGPfWX6R4WLCedQBpW94npHdfbFmsYKMi1yWIcXmFFOZkaav0Pl9Czc7eCMURAn5VGVD1g43MNJOgi3eI++3hCa/9szuTBnqZcMBJ4vF77tNHsSbaRnTxlN6iaOiK+VI3eFXLQxVaYHCoiRyoxREltYPNBncIRT1G/4/1f5mxGj2EtGD8GD+pTZOAHjyjbDygSU36lAE57zJhB5dFmJW3eaPWmFCP9Wblg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH0PR11MB5427.namprd11.prod.outlook.com (2603:10b6:610:d2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 16:33:31 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 16:33:31 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 5/5] ice: use debugfs to
 output FW log data
Thread-Index: AQHZEdWWdPkMlSq/z0SSK794eqToP66M/mtQ
Date: Tue, 3 Jan 2023 16:33:31 +0000
Message-ID: <BYAPR11MB33676BD3F8F40C5F030DE1C4FCF49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221217050714.314-1-paul.m.stillwell.jr@intel.com>
 <20221217050714.314-6-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20221217050714.314-6-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CH0PR11MB5427:EE_
x-ms-office365-filtering-correlation-id: abbb6e7f-7972-4104-562c-08daeda84085
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yQ/nyiNkbG1NqgIEenXA2iQZM60+L/AwQ2OQy+dDDwHLg2LD32wWAeKnOsXwpmpngxc2vmTlZxQm9feUh4kVSNFh2FUr7bayGRT672C0dcrJBgA5ZbXsypOn5Lb08zw/I0QdvFjR87FPfDTVBZRSOx8eAG9OwaReIr61+xhAzrIG/rGXxqqKwGy3FIZePqZ7k7vjFQa2lnh88SlM0onctG7IxpL3sKZ+YDAsKtK8vNFAkMz5o9q2lR3eRUIRWph1nWjHGm/hJTUoEKJhjMm7SK+7aFeUP2C21C7bG5XCCjw4axnQRbdVTocE7J8Lgjr3CPsEqBsD3bpbHQ0a/z6ZqPNnwRzkWbEqk6CeSo6GgopyrGVOkKK9hhNiZg3sGSg88tRESJYEM2vqG3CFvR2Bk/vju+LHmD4H1UG3ZbmSqPzoK4Cfn8yYZIpcyMpHZkwNwMvpsRL1QlIqRbJWfQFkSGSstgyKXrJ8CGywXjFOs06Ez5NPzdHN6/RMb8SgPs4hwijiFzm+07Hgew3sSGMwRDvo9SdmcSly2r7rpYzewx8h+DniECqDU1xZ+4WbaVazzpUepBO3U6xanrFL5d3jxAIBfMGXJiVB+YYSYcU3WO8fwcbqS6anIduudRBSnNKfde4NDj4CtScPAV9ehyUjPIEQYZdvQtBE6LAG8/mipqAEgMnRNdrA+POV15eK71fY/RJXNovrOzakCNXNedXxmwWT8laV2DgJgWndVGl0wFY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(376002)(136003)(39860400002)(366004)(451199015)(55016003)(7696005)(478600001)(6506007)(122000001)(53546011)(9686003)(82960400001)(38100700002)(26005)(186003)(71200400001)(2906002)(33656002)(110136005)(38070700005)(316002)(66556008)(66446008)(76116006)(8676002)(66476007)(66946007)(52536014)(8936002)(83380400001)(5660300002)(41300700001)(86362001)(64756008)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rLUd9LBLkX7ZkpPbHvZWzyqt/6MB/e29xgEQ5jdvtv/yzu9ycBuNvTKnvUKq?=
 =?us-ascii?Q?H1LJFkVyMtaygD45NmodNTVsNXFhtYDscNGPVhV5oI9ZXyP7vGJ+DaAcH8xT?=
 =?us-ascii?Q?J/meTGft0wBlgXS9EVkI9ybtfTXPuo1kZVE7hloQ569glaziyJShCHqkwxI6?=
 =?us-ascii?Q?pF6aG3OhnK0Zks1o6qL3h3ksEWwW/xRQnCVOA45pVKgh3s0AyJC1xu21obuI?=
 =?us-ascii?Q?yXMZkyPQ7r8VQp8yiCJSRHihbxUWfqBucvHvjDxH5tCWu4saz3Ag0l4brE9O?=
 =?us-ascii?Q?AiaIy8a2tN5UbYdfSzNpxIlk9mYO4dw/KC+vfl0dv0+d6dcFxTN8RK0j4GI9?=
 =?us-ascii?Q?8sr4qe4AmsKVyeUiAtNsQ/1nwAkRiaRVdzR2XSyL5GtQVxB8ubdboZ7NAsji?=
 =?us-ascii?Q?7nWxfSweonSxiojlIoQJMpTV8IbcGm5XT3ydWH3AEOBTJ8hpJm0zfhQE2qtN?=
 =?us-ascii?Q?kQvsr7flYUUVDNzFyVdAIKIkes5Az3JDhEVbQg2JdIrZrQjcTqIvx+6ZiufP?=
 =?us-ascii?Q?imSaAWhc6azj7Zh+5FkA+GHLbCEAWI5uSrTrTfO3ebtLVndWAfH6Y+QQm4li?=
 =?us-ascii?Q?J+iUQ5DWqGowsCM4g3K+0sxVVN3xc+hnjuOHA0Iud+BikkuwkIveVqNOmv0m?=
 =?us-ascii?Q?WD17WYPJ5+kiymoBJrDy5VtLwVwHDMSvc1icsd75+y6L/YdaI3tpFzw8GUTZ?=
 =?us-ascii?Q?/HaWuz86ezOSHVsxr+t9f/Mb78OLT1QiR9UA8YoI/lSVTAcwWfimHieWwLKY?=
 =?us-ascii?Q?SqiQ/N38tbdd18J2lzjHlCKzwEs554u0/be2nlhoStoft/8wQk4vrtuUbgEb?=
 =?us-ascii?Q?Xn7Dcu7aztKS06OvjFKpoAa036FEKEBk3wWxi6WIjo9UPdoYTQ0jVJXkK/xh?=
 =?us-ascii?Q?61l8cRmOejPNJrrRClRG6wkfngSA5q7xCFmbYc5HsCmpstAGpRgkxCaGhBrm?=
 =?us-ascii?Q?yHQuoMmY+/uOKgP6jFRdcE0ppJA0icTP3+4F6Nqayi2bSGf0J1Rjzqqfa9i8?=
 =?us-ascii?Q?ZfWSyl7gbbkb4bEZ0yKblMVysyx9hRXyoX4Y+UmYzWf0mK1APlK/St18d2sC?=
 =?us-ascii?Q?HH5A0vd/4TpytgR2usx8uYsrJ2FyIyvquBXjtjF9oVJDv9bHoCz3qHjHrEZi?=
 =?us-ascii?Q?d4/RVKQkp8ZXyXpd+OtzUtmeGNrhtX7wtHHmPs+biY+SBFMB+pfOV1F7EynK?=
 =?us-ascii?Q?45nlEhPs/7oxuAPRz+B+J6zCDdYkHSlTUgR5Wna6cYiPWPvrEo/aAt/L7AXR?=
 =?us-ascii?Q?5Cbwrjz4PwPI/xbh1zBgNFYvz+C42zYMdtLrAqdXNL5EyzK1gu4yFfukMAah?=
 =?us-ascii?Q?mIBgFakgl0phrn1AcNFIUNp4xmIcJLRyUh20Eg6hq3cqmP12HYOladsT6glg?=
 =?us-ascii?Q?jV+Puv/iAMoUYaM94X0WoT2ADIJlHC4WaEzB7snPlWtqryVVcIc+yETjbCmU?=
 =?us-ascii?Q?TAkJRmYNIxoNKPdeE9xx6JR/jnQNqVuyDcf5lAIAmp7Und0vdfMXMqNZVJhZ?=
 =?us-ascii?Q?vlxldp5V5AfxBHxLg3tsqmnXqMmzbe5TGiXz2LDcsvsYChqKyWPGWH65Bg0w?=
 =?us-ascii?Q?LZ3LpZfw1VK/6PNZxpC3Bw57qp37TzDSs56PAn92?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abbb6e7f-7972-4104-562c-08daeda84085
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2023 16:33:31.8490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4rj8qX65CfY8osez9FZ93teBkmTV66l65HBWjx5T118yjXF7MEhE09JXKFJPLrRx7IoJTfGNJymehaCAfCpw4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5427
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672763615; x=1704299615;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9KKkRU3M+A8F4rFv9ai4Nb1R7sKvyG7dWWfDacv6fQY=;
 b=G7+FCuQW3Kbf/Pnzz2HO6qbzPyihYf8zTmS8eTuUGc6CieTLAFAw3Hxr
 kvxB8XgKgqo0VVkrh0Bl2m/eJc12qxHH8CzOBGkIqfEgao2HQMF1UrsxL
 KhmLfJFYw1XgUjH2MyijWI748g+mRFr0YU/u2JMci/LIKXs4F2R79G025
 jodwkwKEyFAGnIcSV3QyYsHYcKzhh14wVZ18ATx1WsPygVREBTuPu3u6B
 t8EHBIZZgXPBG9COpzigiIt9aYKID+Sy/EIQ+MY0sU6BmgYHOr0fkPU4g
 C/5/cOCX/ZrZNNCC8Pmoo+6IqN98uvjmJQjkWtWjFmhtyipYARRyrNwqu
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G7+FCuQW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 5/5] ice: use debugfs to
 output FW log data
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Paul M Stillwell Jr
> Sent: Saturday, December 17, 2022 10:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v4 5/5] ice: use debugfs to output
> FW log data
> 
> The FW log data can be quite large so we don't want to use syslog.
> Instead take advantage of debugfs to write the data to.
> 
> The file is binary data and users should send them to us to work with the FW
> team to decode them.
> 
> An example of how to retrieve the data using debugfs is:
> 
> cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog > fwlog
> 
> Also updated the documentation to add the new parameters.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  Documentation/networking/devlink/ice.rst      |  39 +++++++
>  drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>  drivers/net/ethernet/intel/ice/ice.h          |  22 ++++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  67 +++++++++++
>  6 files changed, 240 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_debugfs.c
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
