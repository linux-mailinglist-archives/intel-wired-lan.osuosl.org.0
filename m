Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1203634B3A0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Mar 2021 02:53:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2375F4191A;
	Sat, 27 Mar 2021 01:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M9GTlPn2QahR; Sat, 27 Mar 2021 01:53:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD0E141917;
	Sat, 27 Mar 2021 01:53:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19FF71BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Mar 2021 01:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09CE440680
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Mar 2021 01:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6xF7Kc7R33Sp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Mar 2021 01:53:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01FD340641
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Mar 2021 01:53:04 +0000 (UTC)
IronPort-SDR: NJdVxD7tozkN15dpxSg/+K40JGGs+ebeKRVMyHkhJ+txMPWiyCZh+uwnnpuzO6yfEGwNbSkIug
 aRWQ97mPhePA==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="190695995"
X-IronPort-AV: E=Sophos;i="5.81,282,1610438400"; d="scan'208";a="190695995"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 18:53:04 -0700
IronPort-SDR: 9naaE8DnJDR/H1aqmJsEIAdbpJJSmDXU+rV9uNJ4yAhZP8slTi9vVJiS8NikRaALQAnE95DBu0
 08+5LB9nVeow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,282,1610438400"; d="scan'208";a="594361241"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2021 18:53:03 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Mar 2021 18:53:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 26 Mar 2021 18:53:03 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.51) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 26 Mar 2021 18:53:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ObZQpyDpbbsQnhYZQuEIfPqEb+lbZCeJa4IAp4UNLPmMoc2jE7bXAbVe55qUyOnE4LzPN18lnUy3ZAESec5QR3uwDKOg3m6k7/n9hFzSoCf+ewORg6JrI29Ulvw8WFbDWD0QfWGd4O6CTH1HJT/6s/tnJOsxG4oudYXf5OLClppYPH8+2JTNBG6orYyPtAeQ6rY/39IXBdDUJdBfQ4RuN2M8dfJy7cf6oySdOiFkVbR6tU/Dx0Za5c55Bv4I96sG/Br/sb2YHhEV+TM86Xhh9x2/2DUgwMbCODIgnhh7XNChC5zW2neFHwqiebX5m2ItAJA9bZzQ6/IA9U8Oo+xIww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QATHrMWuaJta+HrZQC5Y8YEHgldVzE6kLRxSyrU6lF4=;
 b=YjuJ9sIyOMKF5gbfNzXdwrGOaqTKpCMNC+mFBhU9fjb/uCoULs9fVZ5tLfn2NsAr6J+fOMinKWdhvrNbaYO7DjfmgIhe/6HIOg8LBATZce0NfNrT8zcqRXstAKXTaEas0lF+PjbsUcVSbZ7MSIYDx3dmRgc0cmH29jy3SwZejWVM3IKItFlYpmeSz2kewxYylhPU2yeztq59TN9geakXNTy3jskCjmeTxh3/GJkfic83MAM1JC9z5SumbEXPFKlNTECRjktXJF+40D5GY2X/SzYzdgu0sfxOso0ZRbXwq4vEJtdePnluzbHnzuW63LO6hRGKwrHwqjaNGZ+e2I2lGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QATHrMWuaJta+HrZQC5Y8YEHgldVzE6kLRxSyrU6lF4=;
 b=lQBIR9zfwQbixqIw7yirbvu+4t1+uTf8p6XXvaD9Y7ETZI58Dz1SGXsCtZLxbhlf2otdTb6h5G37RIWBKhmiZ1ZZSTvAIJskOL4mqIicBWacmym5oGnez7gZE4Qb34MeWZ0YIGnTz4MZpLNqfmWizIwZFiMomaPbwDmP4La2QKI=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR1101MB2272.namprd11.prod.outlook.com (2603:10b6:301:51::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.26; Sat, 27 Mar
 2021 01:53:00 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.3977.030; Sat, 27 Mar 2021
 01:53:00 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix display statistics for
 veb_tc
Thread-Index: AQHXDzhGjY0WGjBUa0WoeMxAeecvOqqXOSxw
Date: Sat, 27 Mar 2021 01:53:00 +0000
Message-ID: <MW3PR11MB4748A70F68C24591CE153A68EB609@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210302074627.14349-1-eryk.roch.rybak@intel.com>
In-Reply-To: <20210302074627.14349-1-eryk.roch.rybak@intel.com>
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
x-ms-office365-filtering-correlation-id: 5bcf3d1b-b1bb-470e-6dcc-08d8f0c30d6c
x-ms-traffictypediagnostic: MWHPR1101MB2272:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2272D03A8C644033F8638E35EB609@MWHPR1101MB2272.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cw4RW7Med1O1amJk9Hiu3eo/kkgsqyy/wBHgbz4llehGoM110LKiapu3GM0wIwiQJJpPdCp+nW0RXGDY4/qhinJINiD4vvBlZIzLyQ5sHQqIf5PmSg39WDB1m26AGgnfQ2XAUM9V5wx/r09EYZZcnn/lvLD+SZhAQevAXliBApdlxBSi8AA88QNT7hFqd5UznX5VaPSQEhOQ4RS1B3Nm3nWnDki0GFaHIDujJ7Mmeei1CWAckaL1HjyvDdQW2xg45p/1W2gDIsT1b+EtXDQJh5YsBCIJ8FP6qE0zmDekg+V4JSds5zHMooWRw8CdbNWn+fv4KYt2NkpcvznA0MNxNQ/dePz6ouUANdL4VOkBmfqNGBKc14RvcPF0VKAtF7PrIv2TGcaNLSs1c5TucO7TFzZz8qAwVBcosvPyKZ2Njgz7KjwsmkYC8VVXR8urBa2WYMv88nQdkBrGLZ1suTcWadiaYuw19shhnHhbkxh9UnXGAO0Vi5FrdGZOyEYZE8pUfeka026FY48namAhMLPQw5oNFbXSJkd9hQtG/MvwJDghVJKjBOBJqXn/78w/ODjeg5QWzp1AM5uJaIbtBI0IprqkF71hoLlHe9qD2Ie+xSZhcuFCLeCRpXbrVnPkB45Ui5T3rPYXBE4JY5B2ygQFGJ10ESKhfhm8sQhYL/l0YkY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(136003)(396003)(39860400002)(376002)(8936002)(83380400001)(6506007)(26005)(110136005)(33656002)(478600001)(8676002)(2906002)(52536014)(55016002)(4326008)(71200400001)(66946007)(7696005)(186003)(38100700001)(5660300002)(86362001)(76116006)(66446008)(9686003)(66476007)(66556008)(107886003)(64756008)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?BI1z991y7u3t0DHPLmI41LAdPnin9lEfxKUr/xgUmNROjL5DjzItk6NOBHu8?=
 =?us-ascii?Q?zN9n9yS/ZfxGF1goooN5wpW+HyiFqSGbfFSaDk9TymOmFabtx3SIf5HQCZHB?=
 =?us-ascii?Q?zIgb3WF5ceV1GnOiyp7Sn6ZVNq1byIReQ4sKJw9OQy2DPyVWPg1qQB3/0Ks9?=
 =?us-ascii?Q?axN9CAoa5uJ7XlSI6myB+4i5K6Pu/oaJG08Ui1MsZ9KM8iLYZydyF4nY6/nw?=
 =?us-ascii?Q?zOoo+CHxtLwC2ddH1ltWcEqvFvHFC7oy8h0zLWKX1ji91iTKQw7ymahicS2Q?=
 =?us-ascii?Q?TZ8zyGTd3vzLJLPVrJijFqIn4vORoWzTcQhhDPxUuzqiZtPOO/Bgcd15QVUF?=
 =?us-ascii?Q?8HGzJTQ0+lOI6mCyxODcrk6X8wsG+iZ2qhttjfiKaYU4QzFAHRMIh8oJRjrk?=
 =?us-ascii?Q?kXiB8tPCZu9fewaLO6jMFLkS6mUxVz1pwsuOFFamKGCADuyT/d8ap/3RuT6C?=
 =?us-ascii?Q?tlVnViUeYcoaKqz11yj7S14vvL5F/XEYf0NLEIFUN6hb+9V4+amW343EEKVL?=
 =?us-ascii?Q?l2kEfYvfsoouMgW+fTGwm1rOSOoRXM6CasELHCmh+N0b3tLTXT0U3ob1evBt?=
 =?us-ascii?Q?ENIsMF2U0yHhmAJ7odcGBgLfw+INC3cw2nKdmDp/KYMvyJIMXhN8ZVxIs9vi?=
 =?us-ascii?Q?1Y028l/23fT+YlEeL9Av/eFPNgiVKe1eh82pykm8GQ8PcYx+G/b16k8zITbr?=
 =?us-ascii?Q?7itBZ+hxPTk/P4iJXF+5bU8AJ8Ug9zbbTtVXrAPakBuQb71DCVwwbHI5rVMi?=
 =?us-ascii?Q?EMnSGCQssBf7JiXk30ugBiGPZyNNmUDWvNlN+O9Bls9wxVNljUqLhgQWYHtl?=
 =?us-ascii?Q?EGYb7kps7mPrVpMqMjjyOc8f4AwshCAUrvLbP6G4QWMtZGj6AovYHHZqX0a0?=
 =?us-ascii?Q?B4/fXFJjGTMlIQ5SFCQgaKiriPUTYMXXRwKAp7r5M8ehjBq1mU1unklpPxlM?=
 =?us-ascii?Q?G6whvg0U2RzeW+JhHw+lqWMjrxvjE+x1s3MD5TcAQjzchtE114yEIWCYjU/d?=
 =?us-ascii?Q?MdfLoN51e5MDKSct5bRxqL6usfHsevLtkeWlGoqECgrSCcqKgjVnqDspqaoP?=
 =?us-ascii?Q?h6msspajfF6oxptkVVeeJFU3vZFlNVLa/bLxaRm/rz7N06qnc6antXy+olKM?=
 =?us-ascii?Q?rbm5GCRnCyoI0NYH8uki9lsnPMce491Rvxr7PIdlvUFLvH0p/5HvACn4NX7A?=
 =?us-ascii?Q?3n6XNnMPxdCEN6Ij3cKMxRgrU0Av2Tg3Dft8A1hR/lz1MajRxB6ndGf2WR81?=
 =?us-ascii?Q?g7RjkF2Yg8bHDoUbcjXKuzqIYiInN3bsxhnLzA+tKxubhPOINexhjGZ89cnJ?=
 =?us-ascii?Q?icCCppAis1ZG6qrarVQFuQtl?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bcf3d1b-b1bb-470e-6dcc-08d8f0c30d6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2021 01:53:00.6209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0vtahfAxAWfJ4GtkRSIbOKsp6Xj48rSNPog8pkul/N7fmY4E1Xz4RVJTX0+XF3CP6mq+sK4u9yiMw6o4q72Iww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2272
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix display statistics for
 veb_tc
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
>Rybak, Eryk Roch
>Sent: Monday, March 1, 2021 11:46 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>; Loktionov, Aleksandr
><aleksandr.loktionov@intel.com>
>Subject: [Intel-wired-lan] [PATCH net] i40e: Fix display statistics for veb_tc
>
>If veb-stats was enabled, the ethtool stats triggered a warning due to invalid
>size: 'unexpected stat size for veb.tc_%u_tx_packets'.
>This was due to an incorrect structure definition for the statistics.
>Structures and functions have been improved in line with requirements for
>the presentation of statistics, in particular for the functions:
>'i40e_add_ethtool_stats' and 'i40e_add_stat_strings'.
>
>Fixes: 1510ae0be2a4 ("i40e: convert VEB TC stats to use an i40e_stats array")
>Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
>Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>---
> .../net/ethernet/intel/i40e/i40e_ethtool.c    | 52 ++++++++++++++++---
> 1 file changed, 46 insertions(+), 6 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
