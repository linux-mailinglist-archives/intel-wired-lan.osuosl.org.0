Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E49B44ECEDD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Mar 2022 23:31:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12ECA408A6;
	Wed, 30 Mar 2022 21:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bqF96ipK-wEm; Wed, 30 Mar 2022 21:31:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68CC74086D;
	Wed, 30 Mar 2022 21:31:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A81981BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 21:31:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9460884917
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 21:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gvcqVYPuueVZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Mar 2022 21:31:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2FB7984915
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 21:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648675888; x=1680211888;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M/5XCLqf46K3oHB+f5q6Qko6prYLCpGREegnvRMln1s=;
 b=KPnmBKCzdrjIpt1HdrNv+QGxJZ22UQp2LbM9rYMo/yxc2H8Vv5gJ/L+L
 vjZuU6Y4PylQwa0S01HmUrMZ50P14B+hNJGJlIM8eVUBmsv7R7c83iScU
 iDfbcDVTl0Tx3TjBLhWPXB9Ww5SAabJSkpnr+DO8MMRa22qM9fVgLVm6S
 AE/rCnj6USS9Mr8p9XYH49urtJOdMI55kYcB0Bd5chp4dFijOFJkfx4jL
 FtiDbM3c+JeQT2wpn8kftMZ8v/6hKK0EVOwz5ZWO/GtiJEKfSyocr6VPf
 6H1IV92bbnQlw0y7E2OjyPjG4TbpypUXu/1GJqSBRnFB9++pg1GUv9Lg+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="284563682"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="284563682"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 14:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="654125723"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 30 Mar 2022 14:30:40 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 30 Mar 2022 14:30:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 30 Mar 2022 14:30:40 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 30 Mar 2022 14:30:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9uS7BsKIFI9CTXTZnAwZGw1Vl/jRD+piVW5xEtgPGU+apkwE3Zg8cnqmsBijI4r6i5U++oNHm36pw9Vd88KGtPUOU+wV1vPtmV4A8r4LloDGksah2xJCXmo0S2YQ9opmgU6a2RQpC9RQoWbTqaRZn64IrgQYeRwrPYvIneAeIVqmZrcPDEqu2VEXWfZk1hKUgMyUrKzWQ42HoupSt54UbSHptFvvlPikL+E2PCrI7MFY2wUbcGvX0j7ZYEcyvb5CseS0xCxLv+4sn2yWdKoYkpTFlP24SNZnIjVFeiy/otjkvxRj6btqfz360lQa0uO4ZqWZu8d1vXdHl+8qwUqWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZNyEnPWOFDFEeXESDs4qNQIVUtAt16aro5TjBBszYYI=;
 b=kqqs+XMJHwoQQbE2BvTPjeJvGlUM26kikMhBmqxQ0tU+OCQcSeMhMhT6Z1bLn6V/V3x9SDunTRkJYtTXtrph3qH91cYyaWNK/QrZEBVeqJ+AuHWXDVkU2JcznHL1sjlNqfGKyZNzEjAOhtq0UvVpr+kmFSxLmbiOuaqCQsNDnTWulE+OTK3wbiiCeclAhF0tSYZ7PfSeaBIJPfRdm4jYAJuVO6AOpMnNaFYFkef02+qncnrDwpe4AAgemm1AJsO2nfYXXL9/6pC6rH/Cp6SnJz/V/nbvgViv/VWdylOwgeU303yIDfZUGlEoV1Ejsm7GGcB29s1Xj+7NIgf3KQGRqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB0062.namprd11.prod.outlook.com (2603:10b6:301:67::34)
 by DM6PR11MB3131.namprd11.prod.outlook.com (2603:10b6:5:6d::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Wed, 30 Mar
 2022 21:30:35 +0000
Received: from MWHPR11MB0062.namprd11.prod.outlook.com
 ([fe80::c3c:359:d9c4:3a54]) by MWHPR11MB0062.namprd11.prod.outlook.com
 ([fe80::c3c:359:d9c4:3a54%4]) with mapi id 15.20.5123.020; Wed, 30 Mar 2022
 21:30:35 +0000
From: "Michael, Alice" <alice.michael@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [PATCH net] ice: Fix logic of getting XSK pool associated with
 Tx queue
Thread-Index: AQHYQ1fKeNKey7PBdUWcO1Lt83Ut1qzWQlmAgABjSQCAAX0xkIAABeMAgABKi2A=
Date: Wed, 30 Mar 2022 21:30:35 +0000
Message-ID: <MWHPR11MB0062E501377693B8E2E9FCDAE41F9@MWHPR11MB0062.namprd11.prod.outlook.com>
References: <20220329102752.1481125-1-ivecera@redhat.com>
 <YkL0wfgyCq5s8vdu@boxer> <20220329195522.63d332fb@ceranb>
 <MWHPR11MB0062B06CAE27C58EEE54F162E41F9@MWHPR11MB0062.namprd11.prod.outlook.com>
 <20220330170046.3604787-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220330170046.3604787-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aec65396-5f55-4c72-e582-08da12948706
x-ms-traffictypediagnostic: DM6PR11MB3131:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB31310CE6D31DA5AB996C16D8E41F9@DM6PR11MB3131.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yItEtCIYvUD5GbldGUuzicQBrLV+DMwhYKYJbOF26q4IRZuhPEIO1GSsC9LlmezrXopx1i/1XFIz3+g57qXAtPEs3PehCItUbA95UBYBS4xouo4Ftou18x7NCZLZT+iSRNQQs6IWWcK7wNzDrgMK8K7UcAEqK7g22YzW2bikgcfAvjHpSrBPJzf2TkqreL8ZcDPTuOkDxlcwWywvq+X6EZOjaG7SMITlN9Bgf28WMUrJM5rAGcNwDwATeMhwvP7L69NxWgDeCAC/JdDnPISXomesEbjPLkuyFpIoEO8wNQfvUEiJrImoLHQJb23PQ6cf+syxSaQzavcKMUqNSYU4ioDyDHJdqoVq0EUAfBRC2qX0JQww0aOTMN+CzMx2CEEesO0NkkIiqww4o2jhyzWlUyIKIetnvlzWTiiy3AG19vpY0qpmDk2TilPrrAG3KGpGRgvZfINO323XHjHxx2r6jPQEkVxC8LwzqOAGh3/J4z5ruk9sccdQ9DAJpt/+yb0wMZ10LCkpGc3WbUAaDmvkWLT5ojGR34M1h+TdOrK90oz6hJw591oD+e7gBzyyhvruNE5QSJFhDFxsTH3yL8PgaGFyt0nffRa7q0ki240EIk0BxA2FT2Q/X4ruTIoA+4UTGn+yKqal3YEMLQT2v1XPSxr+bhi0mgAHlP0AdG7yhMhK/rPiDY2HHZvZfEZfO6hE/C3G5deS9H4sQIGGohBuxVyu0pwtm/taW0BIEV4mE6+M7/ikZKmDwlAOrfXHBqG2WZL63JF6arNAZDs/u/GjkIO74HnYgRDPEHuV+8jr2tApGP0/0V8a5yEnaq8IzwWRcmV04Xa+1lLxroN4oWbU9g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB0062.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(2906002)(38100700002)(7696005)(5660300002)(86362001)(966005)(316002)(71200400001)(6862004)(76116006)(83380400001)(26005)(66946007)(186003)(122000001)(82960400001)(66556008)(66446008)(54906003)(33656002)(55016003)(52536014)(6506007)(6636002)(38070700005)(8676002)(4326008)(53546011)(8936002)(9686003)(66476007)(7416002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LpOGTxPsC/iDEc5DUDK2XhoEN7TaIoA5CMCbJcPZFMu93XuUmisDfIywIRyZ?=
 =?us-ascii?Q?mofTHiFdgEVzyR/vfk4j0mkE4SLAKU+AwNFgs0opvF9+g10+OAqkW08O6jJV?=
 =?us-ascii?Q?0jIHalcewSxreY4pP99eZfhAIPQGg7xc1UfYE8lb2Tnnj20HP0u/9/QnxCBg?=
 =?us-ascii?Q?of4v+QlK9gN7gWflslKpy4yEhxOgBpoL3Jer/DcI5UhFUuTsAwwiFMm/BqQ6?=
 =?us-ascii?Q?+NK3TGH/TocZI9eEwaaGfsAb10s2Qwf/nvq7ef5Oa1foayuDSqxzQmhftiMZ?=
 =?us-ascii?Q?fG6jgMynWSwBTyOaOibvOpp6VUQW22NtY7WT2RBvyAC3dL0jbM/TuDdCkCZh?=
 =?us-ascii?Q?wfQwiyMZigBvm3LBYAwC3RT+Y/XBdWql+A4qz7OmqQpKIeknq7rKslRDwdZR?=
 =?us-ascii?Q?guZQtgfutJsLv4WtHzt+DUmhWtoTk70vviC3lHEICz2j3milVGDaFUwY0Nse?=
 =?us-ascii?Q?D+F0kX6myBHcwJB5f/WXfuXck76gDyBwOYfycDaWPISQDtPkR+ww/go46h4l?=
 =?us-ascii?Q?VDkK6ybksRqyXjGMH/kkpHKWLurI0tr5uCbc8Wl4ynuoKCp/HNA/FS42fu6+?=
 =?us-ascii?Q?uIKh6QisZmJ8ol+KTM4YNpycT5tuEK0Pxony6bFOawPwWDOu4vivwCIj1oLT?=
 =?us-ascii?Q?5KfKGnlAfZZka1sJnz6LUWfqc2qhSDku+yjx01VHGOjoQtNEhHkJUO+RgWnj?=
 =?us-ascii?Q?WjMkwWdFNliPYjZCB0QQn83uyrRfEC6T1mhq22m2t7Sch8ycpGCOISxhuq/R?=
 =?us-ascii?Q?oKDp2MSG4rTYAH0aBl7V33YK637rs5YFRCRXRx1qodoPjs2zsDgBJKZfIeK9?=
 =?us-ascii?Q?CfEDwx+1yHae0C5JkRSXVShMZk3CtEC8vC/EDABC1Dl2bBVX79B26NLK3P4z?=
 =?us-ascii?Q?TLTZdkbDOW1OCfLBhRKQZr7aMrpWfdR1XtmDnJdQKUw7kYINiUBDiR38vmDW?=
 =?us-ascii?Q?17QUNNGa9/XdiTES00Nhz3D4oCzz+SsHmxtxGgZ+2ibfWVi7Epl7bdgie5Oc?=
 =?us-ascii?Q?66j3/p4dfgyhI7wE2qATkkmEZmqJsmRxok8AaKNWL4SHYJoPdfr83Pb0B2TP?=
 =?us-ascii?Q?ON/28WmVs9JYnOCp62BlGC8HK7CpZ1KHy8GKe2kcn2ck/hX0C7UiLwKamtOa?=
 =?us-ascii?Q?w2PFHi34+PNVQBqp40P1wD1hA+rKE6/SawTvpsQ1Qe7vVjFcl8jFDPcNDtP2?=
 =?us-ascii?Q?mXAyqm3EUrPWzM3/lZ5KqyeRzf0CuXHU6cgRfAqkH6t9JbhgYVF5DSuVbfA1?=
 =?us-ascii?Q?FyCZS7ecap0mcstrq4V/ti5lKI/1FpE9K6aHAFGsBVHvTdst18oZAzWJk/Nk?=
 =?us-ascii?Q?GMhnvAb27uhTRVVNwGAHmbmzzbFcGcZEh8EPlFkSI0GQu8wkuz7h5CYvGoPZ?=
 =?us-ascii?Q?lAI29UKBYxsCk1LdK4QX9+jMKB+GYjUnhuatDf7biZ7kRB3dR1fxydocgIgM?=
 =?us-ascii?Q?N/YitEqLYTiqzyiG9G9t+KAmsAs/wbNJkc7oKg6mRACUigjnLA2mfgXOFBQO?=
 =?us-ascii?Q?uh7JY3RO7nXfYm++WcFryZR5YaK0d9fTkCD4YEcK0DYm1Wmavs9VWxb9CvrR?=
 =?us-ascii?Q?7WIZpwZJgl7OsApmNz/6HzQfiQy5aNSrDmiMXxyaHuZnE1WgL7qFAC/nO8Kp?=
 =?us-ascii?Q?bn4Z14JvEwd0WLLZPCDNkaLHAc6YqamgDFtmzfYf5ZBHFtZd0WiFlMBhEimH?=
 =?us-ascii?Q?0EetZOv2LLjaV/YKTTBx+bVc1kepwNAE8zsqigkFpybyOYDdabCXGNdYkWCF?=
 =?us-ascii?Q?KfKK2K22PA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB0062.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aec65396-5f55-4c72-e582-08da12948706
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2022 21:30:35.5244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fGGeKFPg3aMXTYSm8c/g82+b6nT/nFtxFHQRCHJ+VwfkCYI3UmdAP1J1TF+2TbvUy8JH1cv0y9rcr5fnWPa/fA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3131
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix logic of getting XSK
 pool associated with Tx queue
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
Cc: Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>,
 Andrii Nakryiko <andrii@kernel.org>, ivecera <ivecera@redhat.com>,
 Daniel Borkmann <daniel@iogearbox.net>, John
 Fastabend <john.fastabend@gmail.com>, "moderated list:INTEL
 ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, Yonghong
 Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, mschmidt <mschmidt@redhat.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, poros <poros@redhat.com>,
 "open list:XDP \(eXpress Data Path\)" <bpf@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Wednesday, March 30, 2022 10:01 AM
> To: Michael, Alice <alice.michael@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; ivecera
> <ivecera@redhat.com>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> netdev@vger.kernel.org; poros <poros@redhat.com>; mschmidt
> <mschmidt@redhat.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann
> <daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>; John
> Fastabend <john.fastabend@gmail.com>; Andrii Nakryiko
> <andrii@kernel.org>; Martin KaFai Lau <kafai@fb.com>; Song Liu
> <songliubraving@fb.com>; Yonghong Song <yhs@fb.com>; KP Singh
> <kpsingh@kernel.org>; moderated list:INTEL ETHERNET DRIVERS <intel-
> wired-lan@lists.osuosl.org>; open list <linux-kernel@vger.kernel.org>; open
> list:XDP (eXpress Data Path) <bpf@vger.kernel.org>
> Subject: Re: [PATCH net] ice: Fix logic of getting XSK pool associated with Tx
> queue
> 
> From: Alice Michael <alice.michael@intel.com>
> Date: Wed, 30 Mar 2022 16:47:18 +0000
> 
> > > -----Original Message-----
> > > From: Ivan Vecera <ivecera@redhat.com>
> > > Sent: Tuesday, March 29, 2022 10:55 AM
> > > To: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> > > Cc: netdev@vger.kernel.org; poros <poros@redhat.com>; mschmidt
> > > <mschmidt@redhat.com>; Brandeburg, Jesse
> > > <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> > > Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> > > Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann
> > > <daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>;
> > > John Fastabend <john.fastabend@gmail.com>; Andrii Nakryiko
> > > <andrii@kernel.org>; Martin KaFai Lau <kafai@fb.com>; Song Liu
> > > <songliubraving@fb.com>; Yonghong Song <yhs@fb.com>; KP Singh
> > > <kpsingh@kernel.org>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>;
> > > Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>; Lobakin,
> > > Alexandr <alexandr.lobakin@intel.com>; moderated list:INTEL ETHERNET
> > > DRIVERS <intel-wired-lan@lists.osuosl.org>; open list
> > > <linux-kernel@vger.kernel.org>; open list:XDP (eXpress Data Path)
> > > <bpf@vger.kernel.org>
> > > Subject: Re: [PATCH net] ice: Fix logic of getting XSK pool
> > > associated with Tx queue
> > >
> > > On Tue, 29 Mar 2022 14:00:01 +0200
> > > Maciej Fijalkowski <maciej.fijalkowski@intel.com> wrote:
> > >
> > > > Thanks for this fix! I did exactly the same patch yesterday and
> > > > it's already applied to bpf tree:
> > > >
> > > > https://lore.kernel.org/bpf/20220328142123.170157-5-maciej.fijalko
> > > > wski
> > > > @intel.com/T/#u
> > > >
> > > > Maciej
> > >
> > > Thanks for info... Nice human race condition ;-)
> > >
> > > I.
> >
> > I'm covering for Tony this week maintaining this tree.  He let me know there
> were a few patches you had to send Ivan and I was waiting on this one.  If
> I'm following correctly, this one will be dropped and the other ones are ready
> to be sent now to net then?
> 
> Yes, this one is beaten and the net tree already contains it[0].
> There are still 3 Ivan's fixes not applied yet:
>  * [1]
>  * [2]
>  * [3]
> 
> I'm wondering if it's worth to pass them through dev-queue since they're
> urgent and have been tested already in 2 companies? They could go directly
> to -net and make it into RC1.
> 
> >
> > Alice.
> 
> [0]
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=
> 1ac2524de7b366633fc336db6c94062768d0ab03
> [1] https://lore.kernel.org/netdev/20220322142554.3253428-1-
> ivecera@redhat.com
> [2] https://lore.kernel.org/netdev/20220325132524.1765342-1-
> ivecera@redhat.com
> [3] https://lore.kernel.org/netdev/20220325132819.1767050-1-
> ivecera@redhat.com
> 
> Thanks,
> Al

Yes, if you read my original message, I said to net =) I am the
one that takes it from here and sends to net.  I was asserting
that his changes were done now and ready to be sent to net or
if I was missing another patch he is working on before putting
it up.
Alice
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
