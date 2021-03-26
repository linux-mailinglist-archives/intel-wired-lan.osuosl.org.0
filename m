Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A2D34B333
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Mar 2021 00:55:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DB5560D94;
	Fri, 26 Mar 2021 23:55:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0s7peJleFCqN; Fri, 26 Mar 2021 23:55:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64DF760D8F;
	Fri, 26 Mar 2021 23:55:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDA8A1BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 23:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C973A40630
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 23:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id byZjr4v9oe7B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 23:55:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23A0A40629
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 23:55:05 +0000 (UTC)
IronPort-SDR: kF4PmNpg4L9d1oQs4W1tRGnLLh/2djEeIfhU+YxeRI8t1jCCKwy3/F6ZSourgTunYhtpRI107M
 teZOvGrZy0bA==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="276384253"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="276384253"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 16:55:05 -0700
IronPort-SDR: OQAdmY/mnHRHFVhwfAwvKOPhUhsaTztQIV1fbEIsF0kVf4PUteFJAmdLfmATnmtR47fRUdD50X
 M5MJc3l/hXFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="526205635"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 26 Mar 2021 16:55:05 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Mar 2021 16:55:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 26 Mar 2021 16:55:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 26 Mar 2021 16:55:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GRBL78661U5jO8Un3JpLTNcmwzDywWZOreF4wbjexN7HUmcnpvmS6VfK7QLMrfNS3uS+Dd69mHcSc+kRfbfhx52VFvruUUbtoBa1C1Zu3r3U9O+Wld+jRVRHI77h13yZISfgfDKTp9Il8QenC+rhgQdQK+N3ggyY5Ms5wNhCyaIwwijhT136XdRCInjhDnyJT1EbDXcItbAiODYYSM6hAgOJUD4xuJ6J0gDpGUsEueW5usShwjfVb1x6SJyXpzoZ+695ReNycDKQcY8OL25x6fXrA8aN9LCdjn/fxsw9bZ1shtuNSZXnaRkFra0BEj9Z+/Km1fG1BhB36sYcCD+JRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6NtnDoOOSqvbSLvZ0QwDK5OZ7u/mfibDz+ee58Mxq1s=;
 b=F6Xmg07C1KVDMXu0FjrmhnBSJjd0R+9R46h9pHHXoY/TotfoOqiQxm92dRitbvn7jcLjBmkgHlGfP+doj1s9vJixu7AwJpOyySmwcNNOsrV1LJM1mMbn/UolZEyqa525UdrYs/u88SRgNSPiG1LotjV7uha0Ex2f3z0N+GZrXe/d/imVH23YIqxdVAfv+kybkOXPgDBWNqz9aWgEkTUD1PHWDnp1xEKmTF0byXhJDUvz9lC6X8/ARnPan2t8tYdgGfhHnXRVHjnEU2mDZsSJU4hlfHnAwiTnK2lVKZhKUPBPz3YOFPf7GYyeMcQ61o7pwUyzg5qiFIvlKCyNPkswRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6NtnDoOOSqvbSLvZ0QwDK5OZ7u/mfibDz+ee58Mxq1s=;
 b=bSviUNU5RRolXSfJJWedgEZDK0fB68uFXQF68bSOi0ueykcQs+QBiiZleqkWntZTJPRPbDMb8wiEsrtnkhnuktdAL/rSJg9HTbRIDlAgk6OXQHsYfMW0VsAoOGUJbSNTq1cJrX9aW4WXLwv0FLtKaqggy1QaLyz9thp/zCW+tJI=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR1101MB2334.namprd11.prod.outlook.com (2603:10b6:300:72::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29; Fri, 26 Mar
 2021 23:55:03 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.3977.030; Fri, 26 Mar 2021
 23:55:03 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix inconsistent indenting
Thread-Index: AQHXBWuD5YCksPbLyUye2cah09mRSqqXK86g
Date: Fri, 26 Mar 2021 23:55:03 +0000
Message-ID: <MW3PR11MB47482791D33C46B87D904712EB619@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210217202119.228020-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210217202119.228020-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.193.239.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31b310db-7a1e-41c7-e59a-08d8f0b29346
x-ms-traffictypediagnostic: MWHPR1101MB2334:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2334A44A9153FEE74D4F8578EB619@MWHPR1101MB2334.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:439;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RG60pdEkRMEWhBZvNgwFKvktfjbI85H4gurjqRzHhl5Kp6rlIsCT4EXzh3cnfeI6nR7kq2cy+GvhGgVWfm6yH4SVp0ZNVKnWN+sHvtOV8mq7QBuHFxvEIPasbLAOEms2zwLnw0pIM7ighZAlWXPO/YNLdtkab6xh+0ZjvWGto9o9P0dYTc99L0bqbtKlH5wWKAQkHLr5Tt1S+lmi/GIxcgmMkNR586oMP2Lt3O3vV9USiJum2r3q0fzO5KzgcwCs+6aZ61dofm7LLqto/wuypW1O4ml5nrlZyyNcE47Rp0XsRAqt70R9W8NNgpYhTfxToXt3xDTla31gRjdQF+0E1vEKNwbqFlkRjF7s0F3ednyAqafEq6C+CPEbItH5IyTHCqhGtTvT7f3W6e0vOn59OycHHywEg7ZazPHtbStEni+5t6XotKf1k7c220pr6UBE9j/7/NXgX4CgqGbGuO5m9huTTH0guJI1vkbHwSYo2uvnZkX40+YvCwzSpxKKgsVE1sg60OqLplYaD3kbDRWS33emG+D4pmsZP5yIzGgJmKNUV7sTTiff35aCmave5lrbrOzB65LVDSZG5VaUoURr/A3NVLEENCwbOHdN2QjlPnQZCXOzf/ScLqnkwnMzclNYpw/Bx/HU2hVlk3LmIfc4cz1b79THdGjJVBm+baeCH08=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(136003)(366004)(396003)(346002)(4326008)(107886003)(83380400001)(9686003)(55016002)(38100700001)(478600001)(66446008)(5660300002)(8676002)(8936002)(86362001)(52536014)(2906002)(66476007)(110136005)(71200400001)(316002)(33656002)(4744005)(64756008)(76116006)(7696005)(186003)(6506007)(66556008)(66946007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?an4gHZF+hx11MYj/M1LcCUmyHnOjYKM8ER0UMZVfZSLYJO7caUSArXJoRg9x?=
 =?us-ascii?Q?9AX7V4Vo3UaU9VFcEbpbNZtgwClxmEzybfDXSFkRrbClvSJ6sOpFdgPraDF/?=
 =?us-ascii?Q?00hWWuDRoSQwWdwjttHznP2vt5XGPAhbopOkeTGt2ctB49mQsVRtNpkVeGcM?=
 =?us-ascii?Q?rP+oKlIqUslPLo/I0Zvvkr2R/0xDPqdfv6XZfv3pfOe2h2x3gLLiyqIiGKqE?=
 =?us-ascii?Q?MrqbujZSkg//EymJOzzk8p+EKe/P5D7aZXC1mnX7aYcWSO3J6CGZro53dwfS?=
 =?us-ascii?Q?EHalksZCKjmStFGwRNwSGGsIBXHADUn7eyXfHn8gdH1mswPotnVGnH+3rZvu?=
 =?us-ascii?Q?z5S6b8vRcjrsJNNEOxBzBdsVwbmnnYS9WrxmwYNmYcqsxfy/HsA9dFdas7c+?=
 =?us-ascii?Q?cbQceArYOICd0gNEsoikk3Yq0oKpFncAaaJUAeqhN1CKSNGe8YZV9Bo54Koc?=
 =?us-ascii?Q?zRJy3ZQgoWUJZpm38f0rGUY9uJAQzxKGsnawX4WN2tcXZxqtSeF7m2eSAeZq?=
 =?us-ascii?Q?52kkjc7vs0z7FD+ez0rsrQQOnLoJGAKswDV9Dzt/H2u5B8yLeyQv9x8s1HCx?=
 =?us-ascii?Q?iGdU9kpi5H8fWhPJN96+0Td5ZDR1TRK/Na/Ef7tjgR2lEuKCMLvt05IIVA2z?=
 =?us-ascii?Q?tejBvIoRgoZvDqHXzTcHSKp6iGWtqRaECIfr88bhEIb3exL4UEOPMu5FQ/Z4?=
 =?us-ascii?Q?DI2b6SkUEgaqNsnUIg5LM0JFMGhw2zifIuc2gJfU+8d1qhagIDEsaEhHf3Vo?=
 =?us-ascii?Q?1ZXmUGIOohSkB9e5q30xGon7BlP6fJJw3EBmvruEfNHzOo9YLZFLtYWCWnq7?=
 =?us-ascii?Q?v0q3v2aoygFZRNigwel0fg0mVjTH6w7OWD7k/pyrxqv8U7HAcgfsBqngKxcD?=
 =?us-ascii?Q?oJBWChDy3rdmnc4ZwTZPDEDHz+0B0+olYZdO2uYZ5i4IDy34z4XwFg1+R62e?=
 =?us-ascii?Q?hu9LZX6ggrgtj52Id0gX+E93NhSDvEhoiev74lgABlkYrDxbqgmC8bJV1ACz?=
 =?us-ascii?Q?qTL6iDKIQ6rhLfpv6f68G+hTACpdMg0hl0C9twpW6VjgMQI3/j/rRr6FtBm/?=
 =?us-ascii?Q?Efg2HniyepIGKmI7p2mwgSsmyS5DMbwZ9HUyn4awZIGGJw+6jO5gIReVOYrc?=
 =?us-ascii?Q?qMcIvu+r4g1RcQspKdx0iUUyu2Mn4H+GK+UvY1J8W3Jtc2vJAmbskoimn3On?=
 =?us-ascii?Q?HWfc/bHeL6wYneFPXM3SKeJqVPdjtkK/FuiXVzsFRdU4cg1+QziUfS/pp9W6?=
 =?us-ascii?Q?QGr3MU91EONwuABkO6nDXeURoszUCMDMHxNCQdVT68y2TQCrQA06qpFJS53O?=
 =?us-ascii?Q?MvEN+y7hqbk2lwy53Z30DnpZ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31b310db-7a1e-41c7-e59a-08d8f0b29346
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2021 23:55:03.7641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8fHD9HVuEpKVZp6yvs66zyKyD4ZktAUWkln+hx5CszLy8mrcLtiN5YOxVSPfFL7VVo55t+vZQTDCfhcIEnC3ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2334
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix inconsistent indenting
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Kubalewski, Arkadiusz
>Sent: Wednesday, February 17, 2021 12:21 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
>Subject: [Intel-wired-lan] [PATCH net] i40e: Fix inconsistent indenting
>
>Fixed new static analysis findings:
>"warn: inconsistent indenting" - introduced lately, reported with lkp and
>smatch build.
>
>Fixes: 4b208eaa8078 ("i40e: Add init and default config of software based
>DCB")
>Reported-by: kernel test robot <lkp@intel.com>
>Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++----
> 1 file changed, 4 insertions(+), 4 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
