Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8555652C552
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 May 2022 23:10:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D1C061103;
	Wed, 18 May 2022 21:10:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dO4eWLRHULL2; Wed, 18 May 2022 21:10:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24A64610E6;
	Wed, 18 May 2022 21:10:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A45BE1BF410
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 21:10:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B293610E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 21:10:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kKNzmhwGYH_X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 May 2022 21:10:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D49760E4D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 21:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652908240; x=1684444240; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=bYhizrytPj4UO5bwPvM3bMAMdru90gfqMnVjXasBBcQ=;
 b=NbZxtCZVI2MC7XFupIzT1BWCQ4+xHwKXtgvaIqveIOF5xPf0CzrTQnIk
 WFmWeqEX1xmmihRwO8HghnnEYckmlcLc5ijGU6/ErHQJKJORFKq9G02wB
 brM9xTmKdVYmjXL5zjcMCxSDl1O602ftvqdeA29tBrl8BPHkeajEC35VG
 ITPloZo5NNJXMAq31Krw6/cS2DomBZAPPHn+BNB+PVLFNn/bCiYL+8Ouh
 ioiQIomx0NGZRwTNeeikRWK8Yltt49T0nu56ydgtCDg5oaf5ruK14gI69
 8Gm5t51Bv2GVnoP3wGeVNRrXN4FmMYoPmijVR3HNEcG722BFY88j6KNV3 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="251790168"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="251790168"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 14:10:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="673657937"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 18 May 2022 14:10:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 18 May 2022 14:10:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 18 May 2022 14:10:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 18 May 2022 14:10:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aUSYXkjAZGYInVUm4P/QM7OyR/HF7sf394Dj1kP0rixbuZnDnTzDZ18jq3wWKhWINXYAtnsq0V7GP7ThV+QpPAGaQjBSURjDAf91PZIGda+2tJGSh7EZZjnHbfe71LI08PaMY/DVsKbbklqKFKPI/Y5VJygoBjsCbiDanPHtEb++Akp0Zn463iIvLiPHKoWQIkk6mDmkyBY5q9pxZoiNgyRyyO0HyozMenLXp3g6YQ2agCg8hy9MYSn8tA02D0RtC4HK1stcNmGhf8Bki0XCeJEwOdKApgrcjYp9YeCdhK+Pim4YL9eIzir4mJUrw0D0jSgGFZTZ39hssenJpaIauw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bYhizrytPj4UO5bwPvM3bMAMdru90gfqMnVjXasBBcQ=;
 b=VR6B7RhSfi4w0ANn7PNJBas9z1zQG+mSe1fgdS38vGkJUg3e9WPL/50UuQDxbfvTtpcinysB/T6txe6qVbEaJLJ6ew0aX4lj7lCknzA/bV6asAka/wkedfJV0PQmwuNdOurLdRbSSCpJ9tqhHAebXqHbCkL8xR5JmFnvih/Ae2U/xjb/IMeJBl3aFIvN8BoVhOybJgkr/OZVeJbkMpPM5bx4Uytxp+3qWud9HqsmsOU1Y7p74xCY0kl8Qn6kwQZvAgRRZqkVstGDghxPABKSlng7+8ErX6dsB86xmdImVP2qT5HkYdnPpXGUwNfnwj3wFTrVFjLx6iCgsMMk9DMQYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM5PR11MB1515.namprd11.prod.outlook.com (2603:10b6:4:11::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.18; Wed, 18 May
 2022 21:10:35 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5250.018; Wed, 18 May 2022
 21:10:35 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: Intel Wired LAN mail issue
Thread-Index: Adhq+WX1ZNZAunWbQA+N+6Q59aT8+Q==
Date: Wed, 18 May 2022 21:10:35 +0000
Message-ID: <SN6PR11MB322956B2B8854A7614B6202DC6D19@SN6PR11MB3229.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f376c28-96c2-400e-52f1-08da3912d9d4
x-ms-traffictypediagnostic: DM5PR11MB1515:EE_
x-microsoft-antispam-prvs: <DM5PR11MB1515BD85D5DAABF9F93548EBC6D19@DM5PR11MB1515.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b61iX0ZU8rigOc5zLzubV4sD+nox+NqcM3kNWQuMww+6bVaSvVjwSF9w4EhmSDKidiCE0KNmqCsh+XNTqgiTgPS2Er07a0yZ2tybqr1ktXzYch794NCQ++D9hq8zTF6rj3qrmTZLfYQsgW6VZn58FMzbEo1vfrMZtxduJdC62Num3Txcbe22n26g0J7d2f3TKvbPawApxrbuW5GecIz6J+l70Ff2oEIDfgpi8TiWHKbCin45e54/ty9hcU+1kIH7rtYBRuJg4pcyFBVnmGxi6TaB6nCwM8PufSZ0nr2ztk1RfiYuP8f+EIY69/v8PUQuhQsTJ6pT293Up5U8zsiGTcRNHJU4lD9dfUX/mCOH+QuZg8LfRS0YVVP6qpBns6XeD3b6RBGX6mWAJkT8A4DF78nZJU3ry/8MELf/TFHW8tABhHXhcuut4wSgjALQyLaBk8DNrOh8yALECCY/d5y+BsrJROmsDZuVYm1fxJEVfRnwL2P7hZPGgWbvakgXdpp0iVdTIZpFMN/oAC2KYR+9G1uHleqrYbc8VQvni+oxeFbBYZeu3XRse9RDv1aN1lGFyx1KcOs436FFh/wXfReCzXtPII8j5b5OVfxYuO3aZAYZP92i8vboiKkmNpdX0VDdsbw0Hzna9kg2eW4RgBb+NdCXHsELWklv4eJua1YbOqRI7Q1jzWSEZYxnW55IpIqbNrZHzuiip0FijykGizHU+g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38070700005)(186003)(66446008)(76116006)(2906002)(38100700002)(6506007)(26005)(316002)(66946007)(122000001)(82960400001)(9686003)(33656002)(66476007)(66556008)(5660300002)(71200400001)(8676002)(8936002)(7696005)(52536014)(86362001)(508600001)(4744005)(64756008)(6916009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DjPsbfdtCIV+zUvlr8s/Rh+Pvbt3Os6+Za0aG+aS0yqSdRx1S132wHqNhId8?=
 =?us-ascii?Q?h+sKQRCacDlWUuhZPse9b79w3foRHqRzg+8+A0kj1CNp+DI4FD/JwQVOHlMt?=
 =?us-ascii?Q?muf3RtVLWVmOtyUbjXEarK3AYVlg3Kb5c7XDw7q+WaRa5EcpfHKDjfrGVXEM?=
 =?us-ascii?Q?Jpc2ObX78/Dqk9zhwC/wXS45RaSHNhuTOuRZE7rfgCOwOu4vK1pv7SfwB3Ym?=
 =?us-ascii?Q?fpvc2pP04n1dxu52Q+SVa0+/iQXkIIv62FRDPfyVX8X7C7UoUcf2dC5elcwh?=
 =?us-ascii?Q?fMoZ7wbqWOhpg8SmcnvDyC0noRCiPVrpZHwOsgEB7j3/iq8peiusaKvDsnaH?=
 =?us-ascii?Q?HuyyQf14Zu7yKWcnbNeKWlZYLKpIYUdfeMC1KszeRyJw0HyocsTov/qW3GiH?=
 =?us-ascii?Q?sT0wmesBMg0dbWl+tM1UI7mxrtI6vlCcgLgV4+4s+mACokykeIf4E9CH4T0O?=
 =?us-ascii?Q?giQL1CbnmWlmkUOh0YIzD/Xw587QlXE4EuohwWJ1ufeYW4NxeBzgnanYURLE?=
 =?us-ascii?Q?XTyNshW1UoC9+E5NHfwOcKVRLBUz5Zixur0ir0H+vc9TAZeyb67lpkbUFj5E?=
 =?us-ascii?Q?XGI0iSfy3cYt3hFKn0XbldpTYE8gD8OYRat0B/vIgbMnROtLIyTmS7faIfUH?=
 =?us-ascii?Q?vmq4gBf0tuCKKri2JrrOa9IXorurkY0cGYmVW+K19d9Bpl0nwsMwQFZqj5l9?=
 =?us-ascii?Q?SKXaEGN0QnnCTzOscYiWNRS7783Csni0PXc/mdfHQfhHeEVDEw4wUSa4yOMw?=
 =?us-ascii?Q?CXWT1mLZyC+N0D8xTSKxeLkOtufRelKF631Yih6XDqdnvk0Vv8ds2533bZYA?=
 =?us-ascii?Q?jsulgRrxDUWLQhR/8p1vImj1MGHleLiiZbgIItb/Z+5likvo5J+vcf/3YW8z?=
 =?us-ascii?Q?rV9UV+86tV8XTBGFbn8oLijdCbXYZbKt7g99fxReJcwEVox8C7bjArAxAGVy?=
 =?us-ascii?Q?Vu29p2cu705PdjdkjI7XuhqxdE9O8h4g5JuyNbech6QeekmbAnos/dDHr0+F?=
 =?us-ascii?Q?agXkKAjkG3uusBy38+mS9SXHo5VJ5ygeUBCR+fx3sbofjuJI9sGEbISNHQ8E?=
 =?us-ascii?Q?cQTKMSkyXRb8TmgHpAbH1YqgUxdZIegeb3BIhkArVxR0MntJZ3MXPmdhXSw/?=
 =?us-ascii?Q?TqJnBKAUyXNvDHO6AcHAGio6nRemvMktMesW7aAl0oaqT5Nis1EqPiG//qKU?=
 =?us-ascii?Q?NhGEAeYGAufy0gsXC9G73tUjOSgOyNgbdkuiud2MZ5HFUTs0gbHS7TEVZ7J5?=
 =?us-ascii?Q?iBhqwrWXw1A0YRBAc+rOiCc5rsteZZYffMj0OrceP44ugTlCqOw+rB8qZiNz?=
 =?us-ascii?Q?SNbIDtx7drhrE8KYX6R9V5xvmzG3mBetKgehds2W6Rn5ErrMrgo1meG4lTVL?=
 =?us-ascii?Q?3TT1c9qrG1ht7EGMVHNKJXQchUTUCpdgSwTJXF1NUBDVokAmw1ZOVaLovzf1?=
 =?us-ascii?Q?gyyAlZjgkGGOPXFlCRQP05coRp0LJMMmq7nEzaXFIQGYIzLOJ+uNgbTq3oxu?=
 =?us-ascii?Q?BZfeIJujrQv0oAp4ZQtGpkmFajHaQ1Yqe98MmLM6av4GmLVJ702cXLkhKUXD?=
 =?us-ascii?Q?p/sGwxyYnOW8ToBrtQX3PXVYcYUtKOYUVmbs4naAAZMgsLyM+L3sLubd9vkf?=
 =?us-ascii?Q?UVXcSTs5QyMwP+5g4w6Nh/QUBYPlHZOaL3oV9unS0B9Ssig14NLG4CsKjsJp?=
 =?us-ascii?Q?ISiGjLU9vp3cyDmtunN17BVVgxAEzguuOZU+fbeq/SRPkEcPSp6QzdjijSFn?=
 =?us-ascii?Q?gi0gMXIBJ5MEhcolFvnlNMGqJZdnJ9E=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f376c28-96c2-400e-52f1-08da3912d9d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2022 21:10:35.2955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hhZfe7CPvXg/FB26SQfyXxWh9nn7ssRqofnGX+6MWHtQEZFRtxvA41s+zJmkEikarvF2+AfZJBNUkzSZm3F1XX5lricfiAGG1pLmd8cU/GQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1515
X-OriginatorOrg: intel.com
Subject: [Intel-wired-lan] Intel Wired LAN mail issue
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

There was a server misconfiguration on 5/12/2022 around 3:15PM PDT which caused any mail sent to this mailing list to not be distributed. The issue was corrected this afternoon (5/18/2022). Any mails sent to Intel Wired LAN during this time period should be resent. Sorry for the inconvenience.

Thank you,
Tony Nguyen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
