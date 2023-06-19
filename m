Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CA9734B2E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 06:48:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B77281448;
	Mon, 19 Jun 2023 04:48:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B77281448
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687150126;
	bh=Xd/SjAzSOWsCzdjzf6TJflvLH7vdP8aTjmfRNNeZJgk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8vMTCZydkh/O9l542O/vf8ZTrSZSMJI3hVvF4PKb7gzSpYY9Ma3HLThGjfObPrAzl
	 aQ/km6Go2J0Rj/37JYMUyjOxKhgaYO7I0a8QSrDdMIM1YDuxV45u3hKeb1V0jffSu+
	 eQgyhLYZi27Y92zvrQEEmVVkLjpKGra77GP00FFkdSnNZr2kkKcAicluJ06AfvBJZS
	 5sasIwaQyAJjzwwsIMKyShtZjNDgipH7TdPomI7y4Me/5HLaskLIKvdBHk8mJLTEw7
	 jewGVFHWQ1DCs87Rg9lv2xpBJE4UKDv17NeOWtTnfZqhnOnbxLk6IXfmsr/4KL3dUn
	 QIPjYPJpsQNDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6MMgEXCiIqer; Mon, 19 Jun 2023 04:48:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55C3681471;
	Mon, 19 Jun 2023 04:48:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55C3681471
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3641E1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 04:48:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 05143410D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 04:48:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05143410D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQKE8WAoVisC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 04:48:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7BB1410D5
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B7BB1410D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 04:48:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="423204575"
X-IronPort-AV: E=Sophos;i="6.00,253,1681196400"; d="scan'208";a="423204575"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2023 21:48:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="690956427"
X-IronPort-AV: E=Sophos;i="6.00,253,1681196400"; d="scan'208";a="690956427"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 18 Jun 2023 21:48:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 18 Jun 2023 21:48:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 18 Jun 2023 21:48:36 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 18 Jun 2023 21:48:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VdqLhpfjA8RiGsTjcURRhZWhVAKyHv9ZkfZY57SvWGZFO9qUw2CQ6nB51w3x0FtlfcYdDrpW92fiTzbNmze3yd3K/BjPhCPyd+dKpFgCexEyWszFTKpPiECB7kAsNIgD3ATCqQbrjLlOkVnoAx0F/aTfwv5Dw5ai5JU0RLB/cjFyGvKiD2qqJRSIttKj9bCPQ/NnLctsvjNKCg+B61yQBrABFiQoZiUI+k9qApJ5k2LoSais0lUyZWOp6JGOBCQUdK6nYyrCRw1OjqjxFvpS2lF23iEHwI6jM2hI/ZkXbgBRljR+a8W+H7USqsuwkSlilGJMrRMY9GpvcpIFtKPAZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fgONXGDpuiyEXLJ9NMH0WLUeaj43xzNrPGCjeBgmXYw=;
 b=EJY0iCJulcYb0Ze3/if1wikaf2oxTVWfeV9IlSKs4SuDsmm7VywE7h9uNtL1ZNcQWwuWdKqdTwRmQIVGL8LScGqZZM4XjXqFhdqHVJd5o6uR+oMwFthLzsPfdUAWgIq203R3EUBvBYpIQm2LhJxUdi/l7OmzS4GFVVyIFqqeIQMPIJNuTpOLHMnoc1J11iRxfsJwvI8Z/ZHfLNIx7ttEK8YNELfnTjDZAnU7wzqGbF3tV+3TdvjVxis5xCtmtPQRDlWVLl04/xVOTm6UKqjkXQzbuUT7Pp0viy4gEwKM9VlNr9TwDsrFdyIFWRmvgNAdwdRc0VmqnD3p2yPItQSoRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by BY1PR11MB8055.namprd11.prod.outlook.com (2603:10b6:a03:530::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.42; Mon, 19 Jun
 2023 04:48:28 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::304c:a71b:3375:5095]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::304c:a71b:3375:5095%5]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 04:48:28 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, mschmidt <mschmidt@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: reduce initial wait for
 control queue messages
Thread-Index: AQHZnjeF06GKtsQrXUavUt2jSPKQwK+RlXlA
Date: Mon, 19 Jun 2023 04:48:28 +0000
Message-ID: <BL0PR11MB31227EF2E431764FBBFCBA5EBD5FA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230613204053.3581328-1-jacob.e.keller@intel.com>
In-Reply-To: <20230613204053.3581328-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|BY1PR11MB8055:EE_
x-ms-office365-filtering-correlation-id: 9dd663a7-4682-4a18-7029-08db70806c7d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2MfCgycU3RD3BFyGfLBDGIuiiW6GmnSz/EdYewbcihNqCwuNgBFWbPgJeqFIyzVMmXR888u4HlYVfrUW3HWZXH6bRco1Tu4zDuMxhqQHRukjIH42PkcOUMoEfInFppTEYPFWviTnMdWhN7rLAA6PvLi+XkqotOCxNhl/bfaVLBFC222VoMeoCh1pDmgYby5/ZmzEQ78tNpIcDUAzyPf0u8XzY5ZTDZybfM1u2w2HN+To/zOPl1LotKTwQ1J8wfkOpWrZcxeE5M0warGOhRekGP35oCfrkMkEoYX0yvUU/jNl4N3joNt6rESrjf+eTvLvVS1Tq07evO0Ivmb+3tF3mJVERcEm1LL9sA6MN8eQqSOJSfItrCq4c2lWOvg704TWxA9Do4tKR1PoF9uI0hKGD0Xt54YviOkPFD0pDd7AdJXEERhPzyHC2FKEgypk/Bp0v749ia7CCuDstj74EY1cxBoZbDxqWpG9ofFWbSE+vUqnMp1GVcK5gHHxEvwmfgflKrI3FbCrCzumfvU4QQP6QK5fmtxNfYextkmc5SplIPuCapdO9P+WbyOZfup5081lI5F79jDaR/H1h+ghuAULpxahimmJWiwMuXII/xQpRq+VjBp8yTErCUpyyj5mX7FW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(39860400002)(346002)(376002)(396003)(451199021)(83380400001)(82960400001)(33656002)(38100700002)(55016003)(122000001)(38070700005)(86362001)(478600001)(110136005)(71200400001)(76116006)(7696005)(8676002)(66476007)(66556008)(5660300002)(52536014)(66446008)(66946007)(64756008)(15650500001)(2906002)(8936002)(316002)(53546011)(186003)(6506007)(41300700001)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z447LX4tCENRPa2h1pbOKMWgXRkz/w4BFXeLyVwbwUR0UP//LZi9OD0z6tkB?=
 =?us-ascii?Q?HEQZYVGFLhwCWH0rwMYazjQYB7xg0kEXHYS0HdZH0UpFtXaQau7x/Xaloy7F?=
 =?us-ascii?Q?BIl7zJ3iKNjZo1xoit6VbLDpSAzwZQpQMW350XlAfe3gdIiwzysaRYR05DyR?=
 =?us-ascii?Q?Z/Li1oePHBTWorFn6bjfzWkrzQ55sIqTi1ZbPGNbKRBTs3nLccfH1x+ZlQSP?=
 =?us-ascii?Q?oXxRT4qzWLxuIPZD4MWVcGOTftf3NEOpc/brgzvLdA2zFrMh0s9ltiEWYC+i?=
 =?us-ascii?Q?eRZ58wJu1j8t/PXIr+CvQAwwNGA+eh1uxxYRZkSjQFJxeZdqookAfTURBWSe?=
 =?us-ascii?Q?0CoxGi5JC+6LbpA7aBTTMGwmkEKdC8J7PDUvNNu2amHF0zHCHJudr9IpuR+i?=
 =?us-ascii?Q?68WUWO8xpG+1YzIfULvq1I8vplknv8XxHV9h7w2uUeKr9zKbkgGYfMz2KsE4?=
 =?us-ascii?Q?0e1LaZX5KvIaeJK+OLTQMFwZF1x9/6N/B5VGEVe+y6iA00VHBaolldBp1fGW?=
 =?us-ascii?Q?+JNLDmagD4S2nkg7wddjpLaBOk0Iq5aOh0wX/t6xETZLYxyrxut/KzVv8ZhS?=
 =?us-ascii?Q?QF7uO2tSNH56KR8/tl5pmv8hwe8pmmShhJYWRFpPopTvOYehqA3h1HdzlkN7?=
 =?us-ascii?Q?TdNj0VVdkZkVMRgDVYcS6/haGGiAcC2CHLOMG74B8mQfdLrT47eGWzqmfFga?=
 =?us-ascii?Q?7zFUSzwH3U1nvNefR8W5i/hek76ol+1siB9ozJ8VNgKIyg9yp5joDpJSVuxC?=
 =?us-ascii?Q?sTs/NBc0UCq0NW+0QWmo/ecVVxnZQWxS9Xrsu34HD88axBGwl7aXbY/J+neV?=
 =?us-ascii?Q?UOgBH6F2NnQKDItQIflnR9HZNWyj/Gg2g/78BErplVrN08HGhweUWzXP/tF0?=
 =?us-ascii?Q?fFwbtxrGKNWIFSTo7FE7ni5KiHMnJfrajTUU/rK80Kw9SJZpCnFfJ8b06qJ5?=
 =?us-ascii?Q?0X62oP7Wn9Y82vde44lbAuQ0ysf9IO9prB4zJB/o2JRVmHFZyAWH3pH7+fih?=
 =?us-ascii?Q?pgngan5S1LyckF6/m8oYWWqPfmat+uPiLe2uCc8FHFlTRyitkMtq9A4rll8+?=
 =?us-ascii?Q?FjFhpX20c9YUX/6Ug4LN37jFN/6VuSoUJE8gk7bCEXlEmEFvvNwD/pgkno4M?=
 =?us-ascii?Q?l/JojNotCL64qp6racFQhsAyM5BT+xryB4U20L8f5Cq7AF/YbTL4YssqopBZ?=
 =?us-ascii?Q?tHbi++T+I8dWhYP+KnCsl77MUvk4vq+Z4JlxC4oryjnSB85cUVjaxhgVLZV4?=
 =?us-ascii?Q?hb3+oEut5kSRWKbbJjBB6sUHtOXtWAmwmnenEKmupAZrOD603Y4GAd/4CaoO?=
 =?us-ascii?Q?RLp3epKIZPOlycJaCe3h2MK7Y57Fv0oJAalOeRGfvAaO6HezvQN2034s0LiJ?=
 =?us-ascii?Q?9ZQJXQNkKWhPWgKgxB1BV3dV73iP762DlHoJJ3oYiAZ/yk/zGDMd4QskzpI+?=
 =?us-ascii?Q?AMi+KIAjDisv4IJMJUi8AZwfbPP7Db2JJrKr8nwXd3tfIuB69lYMmeOsXFyK?=
 =?us-ascii?Q?In76jDCsNX9Jj+jYCJAjffed9nTmgSaJW4gvSF7/KCJDLinnG7zrceVkl6tb?=
 =?us-ascii?Q?w/nw90bbW1yaViwCGidkMFv4WJtSAadl6pEe4SJflN/9wBFiUahwFgZf4uYJ?=
 =?us-ascii?Q?rw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dd663a7-4682-4a18-7029-08db70806c7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 04:48:28.0857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jHyxuXR4ypfU2fiOnl6WPJeMfmXIagtS5086oZrO4HP7DCa3M661XY0AfFmxYfFS8Me1TBZZgkGRIhTDLWjJzri4s0r6S1m/SUtZXdPl7NzyBMBx440lt10/7dPFAzQl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8055
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687150117; x=1718686117;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vrI0qEEZaXQnuUuUT8JbW2ejkxVSoO2FwRq3Q2CtqTk=;
 b=I/zdK2tQtWmBi9EVmsaTnnTk0lNAWefMVoCH72JKQQsn6L8GHr3AgNiI
 pEr+aFMb4d8DUZnK7fPj+xvbLpLnJujzDnzG/n25tyGHB3OZXmQSJAm4I
 CG+B8K7xze5Tk1YxZKUz3DXFmQRdEBx/A//eJeT3ajuwvYvu/bJKAiPFC
 7JEd5h9BFr0GDEkXtBVmPoUBdfpAuVaQehXH4hUMuL4AcJXE3nW8lZF4f
 Xy+do3N/yeotOQwy/3KKLq3OiO9p1CkeUcxfw6FpI+tHIUmfv6DE9LHBV
 7VdR47kjwb4PVdsc8OovOK4qSZE5/AZjWbNVBXoKtHNUNnclgV9HiRGpK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I/zdK2tQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: reduce initial wait for
 control queue messages
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, June 14, 2023 2:11 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; mschmidt <mschmidt@redhat.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: reduce initial wait for control queue messages
>
> The ice_sq_send_cmd() function is used to send messages to the control queues used to communicate with firmware, virtual functions, and even some hardware.
>
> When sending a control queue message, the driver is designed to synchronously wait for a response from the queue. Currently it waits between checks for 100 to 150 microseconds.
>
> Commit f86d6f9c49f6 ("ice: sleep, don't busy-wait, for
> ICE_CTL_Q_SQ_CMD_TIMEOUT") did recently change the behavior from an unnecessary delay into a sleep which is a significant improvement over the old behavior of polling using udelay.
>
> Because of the nature of PCIe transactions, the hardware won't be informed about a new message until the write to the tail register posts. This is only guaranteed to occur at the next register read. In ice_sq_send_cmd(), this happens at the ice_sq_done() call. Because of this, the driver essentially forces a minimum of one full wait time regardless of how fast the response is.
> 
> For the hardware-based sideband queue, this is especially slow. It is expected that the hardware will respond within 2 or 3 microseconds, an order of magnitude faster than the 100-150 microsecond sleep.
>
> Allow such fast completions to occur without delay by introducing a small 5 microsecond delay first before entering the sleeping timeout loop. Ensure the tail write has been posted by using ice_flush(hw) first.
>
> While at it, lets also remove the ICE_CTL_Q_SQ_CMD_USEC macro as it obscures the sleep time in the inner loop. It was likely introduced to avoid "magic numbers", but in practice sleep and delay values are easier to read and understand when using actual numbers instead of a named constant.
>
> This change should allow the fast hardware based control queue messages to complete quickly without delay, while slower firmware queue response times will sleep while waiting for the response.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>
> @Michal, do you think this initial 5 microsecond delay would have significant impact on the use cases that you fixed in the mentioned commit?
> I don't want to break those, but do want to make sure that the fast response hardware queues don't wait unnecessarily. One alternative I considered was only doing this delay if we are on the appropriate queue type. I'd appreciate your thoughts.
>
> drivers/net/ethernet/intel/ice/ice_controlq.c | 9 +++++++--  drivers/net/ethernet/intel/ice/ice_controlq.h | 1 -
> 2 files changed, 7 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
