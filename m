Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C19316569
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 12:43:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 818ED8729E;
	Wed, 10 Feb 2021 11:43:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xWEjjkCFGaAE; Wed, 10 Feb 2021 11:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FC378729F;
	Wed, 10 Feb 2021 11:43:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9767D1BF479
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 11:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A8B08729B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 11:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mLmlok4kx33D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Feb 2021 11:43:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B74C28729A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 11:43:38 +0000 (UTC)
IronPort-SDR: Gyat/GfYA/7wZGOXsAaeydbgJdWqmeJlFChkgv2SupOUFFa8E7K/tEYQ5XJnCLfPXg8TNqLG61
 B9zqAyakxN/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="181283664"
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="181283664"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 03:43:38 -0800
IronPort-SDR: XDlKgd1GPt39PI9BLmgDFg86jRXPM8bG7Fu2hbHh23nqGPNmZAJMQFMBZ93ZYaETuQ9JiYgcgr
 hqAxLiIbJFvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="380027602"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 10 Feb 2021 03:43:38 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 03:43:37 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Feb 2021 03:43:37 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Feb 2021 03:43:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G4ELF+aQibZ/C6jeOzdmDMAYbXMbj8j7zF7EQ45pTQBSXle2CV4OXqGH8KFiXQAHDENnXPj20Tx5QD128dE/LU0BuSREWJVQlttiKHNKNxbp+WOOsfrbMPLBoYL3eVhK5IaKU+xNemINBYhM4bLZk7Bhep6LkO23ust+3pD5AeO43cE3q0MfuKsGsRN+a7mvcD4zdkazSypsc2wEuJfKcQyoI7U9hihbJfBb0JqHtOXNPXhpyIQLyNE+Gt9bVh1Uc3neuyIK48LIgwGYCaP88ALIwPVvOT/vKZ21SGrHFwyfGSJvXbphtugeq1jb9/3B1o0oD5IQdHHM7u7eulTtSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M4lTYQsB7tA8x+Q0rJEjQOjeUdZoHRoLajcYAPVvQOE=;
 b=dF5czNtLXChOonw0x+wn3wkXLqNU4piYS0wUGSlFF0Jlxr4L0udD6vU5rKsqCj0rWYIS6zksiwuK1i5fndDCqrTlwjdcTCjhucmrcnQ5XFXhuxk/Zaly81IvuWUXnTF0LDiaUzOdC74W7Ln2Zzx/z1X+/L4U31G+0cwhIWnXF7ByLYbOS26TanH+v7zQSWYFFmQGYqtqG8SQ+nT7ANEeSqcxkoNVcKzlhT/WEBT9Lg7uXhn5yrB7glnT/XSFthoJOCxq6pXq0UXxjruD3jIJMTPg8o013L51Zg4lYcwheEde1cFzuwHXqVcbW7xVyXK2tGuUCpMlXGVjKtPwV7TJhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M4lTYQsB7tA8x+Q0rJEjQOjeUdZoHRoLajcYAPVvQOE=;
 b=fziHeObdCkLq9PzHqaoMcGAOQKywrQKTZVopwhdHBBvfK8Ar8uHa327O4rzbRw15WSs4Kn3EvvV69mktUYlBWEvWH6zhMtYfMGLa/59WNRcgrfTEArxWMh2c+lyLtc3kXO0oI6Lpfua/SDlV/9L8cLjEcjp5Of9r2cWFlefMsrI=
Received: from DM6PR11MB3292.namprd11.prod.outlook.com (2603:10b6:5:5a::21) by
 DM6PR11MB3801.namprd11.prod.outlook.com (2603:10b6:5:136::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3825.23; Wed, 10 Feb 2021 11:43:25 +0000
Received: from DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::74d6:6cad:5c9b:e3a0]) by DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::74d6:6cad:5c9b:e3a0%6]) with mapi id 15.20.3825.032; Wed, 10 Feb 2021
 11:43:25 +0000
From: "Bhandare, KiranX" <kiranx.bhandare@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] i40e: Log error for
 oversized MTU on device
Thread-Index: AQHW6oDEXHNpUz9c8EekNY5fbbP7r6pRbi/g
Date: Wed, 10 Feb 2021 11:43:25 +0000
Message-ID: <DM6PR11MB3292BC885388F810F7E5D956F18D9@DM6PR11MB3292.namprd11.prod.outlook.com>
References: <20210114161706.9224-1-eryk.roch.rybak@intel.com>
In-Reply-To: <20210114161706.9224-1-eryk.roch.rybak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [198.175.68.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d543da7c-d4f8-40ca-895d-08d8cdb913ce
x-ms-traffictypediagnostic: DM6PR11MB3801:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB380166F60811FEFFBE13DD7EF18D9@DM6PR11MB3801.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:901;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o28oWPhFYxWh5iTl8Jj3jEx8IHtaL9voBIl7S9Z2o/17DE0/aVvhtF2nDIMDz/eyVYut3zgHKIUZz80FwFtXPF5A5YzDxWxowAxEW+XrKfcW3YCHaLVIVgW5Qh/pTm6t8/eQZtq6jIlNF5T1i4rbmm7gZ4n4n7U7YaB78NV4F5N/CvkAMmVCUdqlPjOLHuaGqkHSQL5u+jVkgatK5eTMTrBMOZmI+86gVC3eL0qGN5bNhLWTcK5VkQ3nA8Oe2vt9CSiYimMQGj8P9TNtq4sKdUt9nFQKeXrc/xkmkHkMIcY9Ad2oBriOIL7h48T8g6ovsASpUEjuap0cI23+58+0J+/Oto9IX/wkzqWgynbj0JzFH9+3Hn9UENAZCN+gyHDZb6fuWZVyUUu8E8wCkm10lMgLYuHyb57f0QTbfDo5KHGLXUZUr7AjHWt6KCs9XU1imKZ0IjEphyc0ZH/Os8yOBAQTGsc4fFDqcDWKHjaLqYskCQN0g+cOIsKhZWJtnvm8ii0Nzj0EQuIHZQqTAE3BZ53fqre504tsZiy9goIDJlCglBnsZ0lKXjm+9CXDjHlryJp6vdpuDCPMY0zDOQcG1bU29ioH0peEXoA6nw3ZVn0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3292.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(376002)(366004)(396003)(136003)(71200400001)(4326008)(107886003)(8676002)(2906002)(110136005)(66446008)(64756008)(66556008)(54906003)(66476007)(52536014)(6506007)(53546011)(33656002)(76116006)(83380400001)(478600001)(7696005)(5660300002)(26005)(86362001)(8936002)(66946007)(9686003)(316002)(55016002)(966005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?GRLB/yVGPm6iTZbHKBMcur+nIz0+w1mYr418NQS3Q9rPmli8nnOy/8Dyev9N?=
 =?us-ascii?Q?7z5DJn/asEN8xq3/2TnSkNJsGi09txznkC6oq9YOeG8tZ8hRyT8PeAHJJDr7?=
 =?us-ascii?Q?eT9L2FsHrddkxFOVrrV3+cwEP7u8ZMyORzO8LaojNmpOF3qY3Qxmbw+dB3TI?=
 =?us-ascii?Q?q7MMHaUremqCLqj0EMLmIawm4r2IQYiexslK92WRaINcVkFNrhIqbrMV+HdL?=
 =?us-ascii?Q?dAQT9+BZRlnaO9VdkDrHq1wUfvEkn/F8uS3ANq4LhY/2J/7SdtZNn6ZF3Lao?=
 =?us-ascii?Q?urgAgAqAC14fn5pQ3+IJNXhdJmLd0KvitOOpPmqvakVce35GpFly5G8VMp1Q?=
 =?us-ascii?Q?a0kxrH+VKXC+FuyFxyQm+KNImTsT+b1ACHGLroYwDgjjotTqdd6ljQLJzqFL?=
 =?us-ascii?Q?Y6AaNPkLMou/q+CalS6IwQKEdz/t3NGP4mxb8VDrH5bXxvwVa9WBcTEUiJH6?=
 =?us-ascii?Q?rhKvnWlNdM5zX2YECwGsehMT2xGimHdMUPsPxjkY+lTQOBfTuJKM/7malti+?=
 =?us-ascii?Q?YGh/L+Ocq+TZL5g9yMsByZMkiBL7EWAWJTC37nvEJaIWvbXCUxov/b5SbW7C?=
 =?us-ascii?Q?uNfeYWjPePIkVAmMIkB0LqxUFSKh6rX6b+3gAekNyL2Y5f34NGcuaaWoKPop?=
 =?us-ascii?Q?xs09ZSyxNPeu1wO7+Q1Kql8Y8YUkn5Rc3t8EdQrnj7GV2x9rR0cWPI55hfVz?=
 =?us-ascii?Q?IgO6Kdj4D+CuSZuahR9WwdxvrPRkDI70KswZekX3qYP/mcDOENrRwm9UiOjm?=
 =?us-ascii?Q?46N6rE6XVneDReE76NKBDkVdRFuxW9kqjelXavBlY9/lWu4fsdTf8ichsk4x?=
 =?us-ascii?Q?HzavEl6A9RSU7K7fWFD6757vtLmL0Kzi5fOtgK5xBL4apISv0acdRJvg2CLH?=
 =?us-ascii?Q?IDm0D8isEOfoUfF7pRGvmuCkKoxojBfTTxSiW6sfQP394lzW0r7VFtIu6z6z?=
 =?us-ascii?Q?fG0kzxXff5HHYDgcCgEzjW1XjI238nQ5inf3kynjGDPyZ4LZ4MyvwNP5ZUnC?=
 =?us-ascii?Q?JXD4fBkbk1xrU2uAseIsgXqorwdlnfS6NUToCV4MvZRXGJpQYdF5CJOH1x8H?=
 =?us-ascii?Q?wGeCnJ2WJ/I/ArdRRqIfVu8cVgynSZyu4g7UDBwWBujyy+pVyaybkIbKPxDO?=
 =?us-ascii?Q?d0f3bRBz5FF/5O+RwAeF7E1XFPaXVTYKCBjbDJBmG2mEmM0CkmoG1VPurGqP?=
 =?us-ascii?Q?5KpPNIUIG8CJXNbbRYIRzzzaOtzvx0ClxO5n2L9+C+XsvK3REJOrH300XI/3?=
 =?us-ascii?Q?G8cpDJPqaFc3MJ4qRrpiDcK337l29JkTvun0ZyBlXCWGBwTazm0d0222As6I?=
 =?us-ascii?Q?hZ0lQ93Yc3pHqNsDcUSkyhhx?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3292.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d543da7c-d4f8-40ca-895d-08d8cdb913ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2021 11:43:25.6452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DVL6zMDoxOSxB5L29HPL8HtINlO7pokrvBQMoh5ULWPjHlnm7aAo+esXF6GTF9qj0ghvjEdqwAK3e4YrB1R3p7bk3rN1jzUaZh0kijiSrE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] i40e: Log error for
 oversized MTU on device
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
Cc: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Eryk Rybak
> Sent: Thursday, January 14, 2021 9:47 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: Log error for oversized
> MTU on device
> 
> When attempting to link XDP prog with MTU larger than supported, user is
> not informed why XDP linking fails. Adding proper error message: "MTU too
> large to enable XDP".
> Due to the lack of support for non-static variables in netlinks extended ACK
> feature, additional information has been added to dmesg to better inform
> about invalid MTU setting.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> ---
> v2: add dmesg trace, change commit message
> drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>

Tested-by: Kiran Bhandare <kiranx.bhandare@intel.com>  A Contingent Worker at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
