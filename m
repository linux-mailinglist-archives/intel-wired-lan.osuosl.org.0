Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FEB7C4FF6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 12:20:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AF8461072;
	Wed, 11 Oct 2023 10:20:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AF8461072
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697019607;
	bh=wE/hbnIgau9A57Qb3uz/scUE6Umu3Rk1B48aZ9BSbTc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CwZoaSeZuJXZtSCtJbf8JhcQ5QLuyyGkJBu9SFNmVECkQE5kwVkI8GXf8mwqE+byZ
	 Oj2qQigfbrUb7zmHxul1RhWQAzoNvEsYN7W0AuvTGRvcQh812HkYYzGr4WgBlbPt0D
	 T6kUoc0fDSVBYuYMtdnxX3zp3PsssxqXA4tSFD0eXxIc3qKgshgPAWn80lRU3hXX6Y
	 a9Fo6mEiG28QhIweApkakdd2j+mxN73a1Ti9vErZ9gHHqbYJGREpnS1oSDsc0vHLbY
	 ZqXr+r+WDhI1QwfDTxlSp4ZDltNArPRQshgLtLCyCkelJ5l+Gtg4Mw89IGvofZ36SK
	 dRz3gB4JfLmnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LwOPiH7UYTIT; Wed, 11 Oct 2023 10:20:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56FD360F97;
	Wed, 11 Oct 2023 10:20:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56FD360F97
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78F1E1BF855
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 10:20:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53F5B4093B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 10:20:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53F5B4093B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id csKMtoxh6_cm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 10:19:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA98940899
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 10:19:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA98940899
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383489760"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="383489760"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 03:19:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757508382"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="757508382"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 03:19:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 03:19:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 03:19:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 03:19:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LA76akk+OtadwYu6RO9G5RUF/A8GYakGxkJKlkUUV8oWIM7hdPbThG3PlkxFHkFCtfcZKoz1Paps3EqBIid+GfrkWXY4wjPim2BbzMJXub8pBcv9aoDjJgSXs2NC7Aw/OGgk6jtf3807J2UgNUPSF5kWWBOJ6BPUATXYyflTPB12011fSGezrAI38BGXNu6i/gbbRIgzQq7ATThHCMfSnZunOR+yTQ03eniO+lvY9bzuiUHkPi/7RMKoXMIkclig/bJQEqzlJFyU4w4w9CIyjw0DMIDg7YZf2tn7I6+clZEvn8pDeR9/lQbSmTSsVxgCNRnzxx+/56fDmq/Qg25Wbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zrS+vb+MQDUfjM2Wh1ATJ7VAiT29hb+N3brvkziYcRc=;
 b=iDCeL0rndani3rc/vxN7xNQzvel+3ZlMNlP+mIgxFc2Vaij0f57EyarBufjf2yvR+ppcO18z8L+aOIQxp6uIzWtOpBCDSNNBmofd1gWYZouvFL+TbNN6rwhXSX3cg/zKZW+VXVKLG0cAxCYfkAvmLKwA2GNa7AXwbfobNDuSIveie6g+3VNLUQfe34kjasYJC+XpFCSaGtn6XzU1WHh7Qomliy+4G07Qcar9Maejl2vbX1Ba7CXYRc8qtaqOljqP2WoC9OZdkjmebzWFqpaeVIzHjuiBtl1FKxa6IkUUwTEduggJvWV4OXsa3qXpqLhRjhT7nF3uSyuAMBpXXFA8uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 IA1PR11MB6075.namprd11.prod.outlook.com (2603:10b6:208:3d5::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.37; Wed, 11 Oct 2023 10:19:50 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f%3]) with mapi id 15.20.6863.043; Wed, 11 Oct 2023
 10:19:49 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next v4 0/5] dpll: add phase-offset and phase-adjust
Thread-Index: AQHZ+wAAblH1e+NyZ0CAvrpe74f6N7BD4PcAgACBn0A=
Date: Wed, 11 Oct 2023 10:19:49 +0000
Message-ID: <DM6PR11MB4657D7F3A7D2F46D333A20D29BCCA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20231009222616.12163-1-arkadiusz.kubalewski@intel.com>
 <20231010193440.76f93d5c@kernel.org>
In-Reply-To: <20231010193440.76f93d5c@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|IA1PR11MB6075:EE_
x-ms-office365-filtering-correlation-id: 07760979-e34d-4286-34b7-08dbca4399d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QwL5sfC+ZaoEalkRK2I4kKo9rzV8r4Ozaz18EWMb5M1D0osSuaFgw66GpJ02ddeb6UR7kf4Sxin9FqTKoynxFxHy2ac3DprcQ338x1N9KfFkt6vEj1Yzg2ipmstviOG0xM0wMvdymZ3WtmWtWC4xoKr7vGORJAjWRouk3Roertu3bSddBdiGmwni3uuknPALUwl6nNIHYTHpAly5Gn/FNURT09orcZRoalGHcOUr/v9Hn8zQB1Tcq7NC0S6of2QVuMwoM238tsW5JcLmZinjswjTWwMWGOwwU4j3ycsnH8IQV2TqI4c91tQm0sw4MZphPBj4DA7prydRwykSdhL7zhstPHuzKHzDDq9W5FY4Mj1h12bjDFwkydN5bJdRzHRE779OctiigeTWPdCFO4YXxf2CG4ABhGVMrzOFHpSeSrOpevDoYXW1tBhhH86BjkjkGklTc8bmEunHEHwzHZi8STaFztj6EfYxXiGz3fTEbO82KF3SBrdqHevDFKG6lGLJj4k1tjhsEJTmTec7sPZDHye29/LQYVGyOLNpfYcs14eXlYXzfeit4iZCRxk1S3NKUoI3qCH5BT3vdGJRmpCc52R76fdSg5Jxydxe9Tqed3ENsOIgc5hVhr64AfqVncQy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(346002)(39860400002)(396003)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(82960400001)(33656002)(38070700005)(38100700002)(122000001)(86362001)(55016003)(2906002)(478600001)(4744005)(9686003)(41300700001)(5660300002)(52536014)(71200400001)(4326008)(7696005)(6506007)(8936002)(8676002)(66946007)(76116006)(66556008)(66446008)(66476007)(54906003)(64756008)(6916009)(316002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Vfsfrw1Nlk31DscjXQ/vh037wJ2QxJDkPHrNp9P1xql07tEANpvED0QX7u9A?=
 =?us-ascii?Q?eL3AP720mn9wtnZhIDuAJsHndBJrvPSxY/YEpZG2HTX2rakvsk/0ea1bPkIF?=
 =?us-ascii?Q?e83YGot+tYgmXKbcwrBuq2CbY4VBVdL6a3oW/Ktd7SpKtWg7mGPJsl+Ypz5A?=
 =?us-ascii?Q?lAixC8jvTc7UZSrrt0qb8M3tV2ANMcAi1WsEw5dm9VWZ+tkM72nX3zezGarQ?=
 =?us-ascii?Q?QxtO5wWa1YdY3CqlvUic6q3OurKNQd1jxA3wGYFd3L6bIBmk7eRnRhJ1EBSV?=
 =?us-ascii?Q?Vx0NWG0g3fg0EOnfHHTUi9oGQ2cZ+DDxxl+vdrHhI7zIo6fqQDQxVdYIjrB7?=
 =?us-ascii?Q?TcdRGnRpvbFBwec2u89a56O9CIsMIoxjJdRmkBiGRsWZi/AXbZchvCbJWqHT?=
 =?us-ascii?Q?FUr8pZHeZDSRHHNzJ1p1n+lqjaQWP87oLx3WBUlA0clSszCL0kwTaD+ll5Oy?=
 =?us-ascii?Q?2S49rFWANzOUv0NdlWI+rnIcIPKa7Ovx1iqtGQBCcqoc2F4tv8dBdAnwIgY+?=
 =?us-ascii?Q?HtpNHsxfZjfdvyVS11V0T1YMHpBN9eA6zP3U7LHFmh4sKY76bukj00rghizb?=
 =?us-ascii?Q?ykQxpPACdvyn83qZL8LfU5hv1reCTUrEOPJs3CM5hPgwXEDD15QGvfc5kb/a?=
 =?us-ascii?Q?j3d9KajfMvcv6o/svjvFIm7su1BJzUr8jHTKla0tYQS+B8nqina2pxDS+xc9?=
 =?us-ascii?Q?WN1sH6wTmuqOXjQ/CebrfNIZvFKHjXjLZwa0C3RLktOVYTfl5vkl0kKcB8Ed?=
 =?us-ascii?Q?yPf608DEIpQ+JqRjgGGYY9VoL5vy4DU5nheFNEM7k4JBvQ7bzBP////uV8YN?=
 =?us-ascii?Q?Bs+uazpFIo73afAL63hRhMkX27EOBcqtBYd8G+FEyhr7YqePvLQKF+iDKBs4?=
 =?us-ascii?Q?Jl9JZX3hu+Wvis0fsr3NGEzWvCx6+Dd/XirQwly16aQfB8tG59wBynpnhljk?=
 =?us-ascii?Q?08NIfsjPHI/w20XhwDmwFshGbVtWZqMb+qRp/KyqF0juCMPVpjN7xFdGIOj+?=
 =?us-ascii?Q?o6dpTP/nz3mPaLpqsnaTztnL/Y2uxjp93yOYyozKziyRkb1VwxZF2ftREBgm?=
 =?us-ascii?Q?rO3HvWlvVGXozL8tHP8r9tz8dKpAE3K9rB16MtA9q+zSijSXbOZe1YI65P/U?=
 =?us-ascii?Q?ZKH76HWgmwkqzIUodY+q6P9yDQxfysChEllvfz/eUq6QFMOhnlNPLWbH/Y9t?=
 =?us-ascii?Q?RTYyp/fMmbZfjflJWB0CGODKNSarOjBMEUeOdX63HAemwdJQYMUIbS+Z/f+O?=
 =?us-ascii?Q?N/WREUeldmHT9D4nsNEmdcd6CNB667KByD4fScrg21wCe4nolUkujM84+I4U?=
 =?us-ascii?Q?Mg5u1I+7MM60jT7hguUamXWVJ6buWb1Ltpy/n5/j8U8pbnWoaAYIjx/iMtGT?=
 =?us-ascii?Q?RFe2MfuUS+vrVviZ+wI4qKlHDZZYYCESQTQbA7GyXNU3NtNNhJDaU5gCu//r?=
 =?us-ascii?Q?FnZCwDUKSm+NW7T3GF9B8cYdhdvG+uyradcmapBdtH+cddqT+XOJINley/9r?=
 =?us-ascii?Q?uDGCgi38RWfFjDEL7DaM3bHHpWZ4aw91fSRSY7W0gqQRp69rQycewlrfH7JR?=
 =?us-ascii?Q?kM9043zW/2P+eaCA/iQ/bwrkDeXCuhdBBG1uMYUvrHFEUhHcWC9fkbySdkoT?=
 =?us-ascii?Q?JA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07760979-e34d-4286-34b7-08dbca4399d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 10:19:49.5029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FXbJCClMzsdFVcCUurpRe8hvUoYfdkliXvRMbvTH05WAKxWjanUHc5pOrEIsoM1nqzG7Jcx1QbLkP8SBcvufaQQmNO8ox2zogZ+s2a8YDs8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6075
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697019598; x=1728555598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zrS+vb+MQDUfjM2Wh1ATJ7VAiT29hb+N3brvkziYcRc=;
 b=UfOsSuY/nwTJfRhFPFk5+vdpG4DJHF9PTeSvEi9x64JMlrFrHJaa/A7s
 bcONdykNYwV4rJjTgnat5ITfPqmtL5YSlDW6sVsXTzfXKu2nGTkyNZpYr
 2YIe9yZu1qbIXnvAIzbispQnbuluyJ9jp58bHBGyajyIJCkhjEKHeIDCn
 NKkRNG5dhzCAn6zMG0Qmb0N7xkzUTiUY9Rp+DLccLatC9Q9YM1PPQyYwM
 tWpJoids+f4M9qMiO9vt8N5jgOfP0YIgetfdHvLoshEI8MnppFJx2c0Ka
 /aLDdTzG/RBsQDqRPL5NKxcrVBaA9hO2Ahep8HpL7LLWslcHtEI9vb16/
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UfOsSuY/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/5] dpll: add
 phase-offset and phase-adjust
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg, 
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Wednesday, October 11, 2023 4:35 AM
>
>On Tue, 10 Oct 2023 00:26:11 +0200 Arkadiusz Kubalewski wrote:
>> Improve monitoring and control over dpll devices.
>> Allow user to receive measurement of phase difference between signals
>> on pin and dpll (phase-offset).
>> Allow user to receive and control adjustable value of pin's signal
>> phase (phase-adjust).
>
>Does not apply, please rebase / repost.

Just reposted as v5 with only change rebase and fix conflict in dpll spec.

Thank you!
Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
