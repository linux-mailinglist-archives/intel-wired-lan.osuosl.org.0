Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6501E3F21F6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 22:55:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F310342537;
	Thu, 19 Aug 2021 20:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DtKhQYnunjlf; Thu, 19 Aug 2021 20:55:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1FEA42514;
	Thu, 19 Aug 2021 20:55:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7074E1BF297
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 20:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5ED6C80C09
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 20:55:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XcwgA6jualeK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 20:55:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8025F801DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 20:55:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="280382827"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="280382827"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 13:55:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="424754825"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 19 Aug 2021 13:55:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 19 Aug 2021 13:55:12 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 19 Aug 2021 13:55:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 19 Aug 2021 13:55:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 19 Aug 2021 13:55:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZZPEAqoI7LLTqHuLeDgZdmz1LG7puqtpNXG1GmyYyIQm/U+/o6v028uNj42JL+tCn5jE8PdQezd1LVC7grmYlATLIX7K41Ab9lvCdo1XbXP9pm3ZpNuonlkvLD1f6gP3UQObzuSwPOBowPO3rfeLHhI9BooyoD/JbkfF+yDyXNXKPNMhDub57C+cAmnc9c3SUHsW8WTeJeBHyWrMV3OLoC/PuWrE/+kSINiaEHlvAZRtMx+lcKoCNSefLbc3CnnuQEbFgFlybbUyITHuzGoXoOxKGWSZNV4yfMp5WfU8oDQJEG50eRcmwRJYKlxJf2NwaiDzl97bNFsrvL2JUGfliA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5mLeCCnBjjlIEqkXWWmFQs5Qa1JidJBTHjyOBewPVpM=;
 b=OAWOX3UjhuXX3a0S85tW17NJi49iW/+1lVsFm55VjvkWraoR+bvZ9WFTM16cVPtKmXR4FCoq/hDaziTYOogWA2uiBnIDOKOBmQWwYFopPlVi/hkj/QF/+MW6L3H6TxqCcdrJMdByhXpLqXZBF4PZ+iiH0Ub5oupu7oTD7ajH338Zm0V/npguRTVX7xqt1G997LpRbNIsKr++YslpgsINWIDdLmoqHdiTHPKCdORT3nG1h/Q0PCg9zedlrgMoePKEKk72HbN+DK0o1Eqj4gywCtzwsj0L0mIo4fYYqq0xnyk3Cs6HydEAcvuXurLamfpB8npQzb0W37YM53XXJAxJNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5mLeCCnBjjlIEqkXWWmFQs5Qa1JidJBTHjyOBewPVpM=;
 b=QfL1hLSMMtpPZm/1jd/vnKPZBZVreGrwsUw/gNqRsAok9XpsixvLLb0pKw78p2xKcMDlDPBLG1jHAllFCJsL1pSCJrZWe3tBlsd9PwD/348kT5nuZFlJZ0ulutUF13SoYMJuzHcP658pyqRYxob25v47OwKj7O+jeqK0VoWaOr4=
Received: from CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22)
 by CO1PR11MB4820.namprd11.prod.outlook.com (2603:10b6:303:6f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Thu, 19 Aug
 2021 20:55:10 +0000
Received: from CO1PR11MB4835.namprd11.prod.outlook.com
 ([fe80::d3c:c53a:cb70:76d2]) by CO1PR11MB4835.namprd11.prod.outlook.com
 ([fe80::d3c:c53a:cb70:76d2%5]) with mapi id 15.20.4436.019; Thu, 19 Aug 2021
 20:55:10 +0000
From: "Creeley, Brett" <brett.creeley@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 1/3] ice-linux: update dim
 usage and moderation
Thread-Index: AQHXlTC3ZOipGL8fsUej60hapWehhqt7TlBA
Date: Thu, 19 Aug 2021 20:55:10 +0000
Message-ID: <CO1PR11MB48352C797E4F83E105174C67F5C09@CO1PR11MB4835.namprd11.prod.outlook.com>
References: <20210819192959.590146-1-jesse.brandeburg@intel.com>
 <20210819192959.590146-2-jesse.brandeburg@intel.com>
In-Reply-To: <20210819192959.590146-2-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d370f219-eb1d-4eaa-44ed-08d96353a276
x-ms-traffictypediagnostic: CO1PR11MB4820:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB4820B4354182944033BCC274F5C09@CO1PR11MB4820.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JAqBDoEDg1IuP94pX+jSC+NgrCoK5/fXCTUaxJJV1flTNFqDWV2nR4F2s4vz7Uh/8GxXghFXOOLcHBKJoU41zLak7TsDkrTx6XKTO49OPJCiNQ/L7WRKYG7r2QZafWaUL60oI1P8FfQq4aYm5LS2XqtT+rQDejQrc69QgizldazFhlc0GPs+04AluHdcq9rpfVXOIjWOdE3SYKOz6bTK0xGQ1lDGMvHJMXTZ7EcedjrW8G9+COBjQN/GsG+dTk6Wh57A7Yd0E8Vg1+je2uKv9l1TgjCAErBqv9OPQtAopoA5VPxmjiABCcmBaxZmfu5HUAIK9tO5DEJcnoN0XgvJg/GSY8tS5yEpjxc/GJdnopkxLHEg9ABwMpVA7AdYsLs1QcMEC2WPaMJIERIS90W02/7lrlomZw7UHoZtW5i9O4SpWvDo/5NyrR0kqWw1P14qTXCnBxYBi+UMENyFSoLk3Up5UI6jkY31Wz0fns2JJn8bXN5+g5Yq/1sGFXWzlkY4WU8eN4Bswq4XzGurDbNRjcOI1/Iv0CYlo37lHN6duBqNA7BZ2efTf9whdWpgvByrCZIqGjUrjK0N6skQ0BlR4lVX2pf8rAYM5M3RcHux6onFozrHytZwmUVzx927b3L+UVRxsMJR6inXByY1cRhqFCiY2yB4K6gObnFgOlnensxTISerb6t3x6C0YshXEQ8EPovXkTlc3myNlBSnt6gZYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4835.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(39860400002)(376002)(396003)(136003)(2906002)(66556008)(66446008)(86362001)(66946007)(15650500001)(66476007)(64756008)(52536014)(122000001)(38070700005)(71200400001)(33656002)(8936002)(110136005)(8676002)(7696005)(9686003)(38100700002)(478600001)(186003)(76116006)(5660300002)(83380400001)(6506007)(53546011)(26005)(55016002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sxM/K1lKJu5HQTPGwLiBdAk+qS4aLfYhw0IPg4L67zi3GA56ntN8U3VsgVqC?=
 =?us-ascii?Q?nzjb7g0zLXtaZThuPMxcLCnr2yFByE+6a/U5TpCjRYqrQk3EhL24ITnNvGCs?=
 =?us-ascii?Q?RLO4RWRNXAzM1I9ZIb1ojRzsXFZMqGIFPDAqYc9XfMfYrtsgJK8mBZ4x/rPt?=
 =?us-ascii?Q?k3is9K5oweHEsFAxTShXlSmTmR6VvvAf2wKJhC89IE12fAboJad6rj/ed2nZ?=
 =?us-ascii?Q?MA2uTeTkY3z362V9WBBaMYcIrap8ott87Jxv6a3Ukz8aPrEap0oEVUVkSOyD?=
 =?us-ascii?Q?v2G6izBeeWW2ICffSr3xw3jwyVS3iqM/wkj6ZA4u/g4u394Lnt7UTTVJxksJ?=
 =?us-ascii?Q?Es1ePxmjGj7k+ev05j1FEaSC42vqbO3HkUCyCFrnAVzsbIw0SQCVCcpHmYOy?=
 =?us-ascii?Q?IwKyDmzTXHadN2Hlda7dOOLhOdQH47PObacMu8lBzb/KNmug3cjUFf5jcfjJ?=
 =?us-ascii?Q?JkFts5TWq5FyFW5WBui3V/ihmj2Da3T1xhrQUymma3khnKqncXntG2O69SD1?=
 =?us-ascii?Q?AZJPCcTXuNTfZ/QhkgmrcRIXjb4YwYZ9gP1yvGuMMVABijRrExpbsw3h/2EV?=
 =?us-ascii?Q?VKj477dWGskYYGngrkn9tk9okQvndBc1Bw3DrsmLqEEFR2DcZdZIQ6V+E3c5?=
 =?us-ascii?Q?nkAB2qrpkX7+Gzx9DfHP5S/9b3QN/vr4PF29kumNzKD6HQUj9cQM9euNtgMs?=
 =?us-ascii?Q?UYnHZD/jJ4qSSo3gPiNfQw0vHngcdw8ceFk0TYJ2M781YbZjh7dC4xiBfx8l?=
 =?us-ascii?Q?ZQW6cfCFoEIVf3YmxY7yBukkyH0G/IYLu2zFwrybba+t8J6bgYXyeR6Z+r7+?=
 =?us-ascii?Q?TEA0x/qRrxDr0h8Cl1VilAkVJl6ai80+TEU5GiGHUCEbPW57ON3Ugja4K2Cx?=
 =?us-ascii?Q?i1cyZFiM5ppv5+UQfHbKM/kQ/PI5MTx6OnDDz9eN59Yd0rE7pOuybsT/V5D/?=
 =?us-ascii?Q?vb2NMkyGDbBW3kzkA4fYgMeiw8hQXcsi47u8B6Nhq/E1aAuhhgjCFUgtpkjv?=
 =?us-ascii?Q?iCC+H+uE9zuV5p/PHmLWFh6HCxw7B3RJiJaMDlF1LkGPDI6d4Gie15B1nxMM?=
 =?us-ascii?Q?/4QWqje1ZC+2BVMVSP+cnR86Pwgd2yr0wSd5wVvV3q37T/qTeiyPxzlfAk6m?=
 =?us-ascii?Q?942To/5mUvIDKwYUqUINvTAMi7NL6sBsKEUW+Yu9T5+04FWNvt4cjespTClf?=
 =?us-ascii?Q?JRVEhKjS64yUVjhqmseKXZC89ZvAiexoXpFWftrOtsI6d65QHEwHdASJOcUB?=
 =?us-ascii?Q?zkkvQgtNLONX7jm7+BA1Ua9KQBFXuSuOcSDGTLqlMPV/dbuDQPOTa4Lt/XJ0?=
 =?us-ascii?Q?ZXVWd+uDRg1MNRQSvqzwy3gW?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4835.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d370f219-eb1d-4eaa-44ed-08d96353a276
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2021 20:55:10.7187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9LOo3C8jaOmRdqENoE6xeLmM2S1lhnE47pERtAhpTeeCA3IWp4ZH/zveaCf9r+tatb3Kw+cFQxbLgncmMtkisQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] ice-linux: update dim
 usage and moderation
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Thursday, August 19, 2021 12:30 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] ice-linux: update dim usage and moderation

I think the subject should be "ice: ..." instead of "ice-linux: ...". Same
goes for 2/3 and 3/3.

> 
> The driver was having trouble with unreliable latency when doing single
> threaded ping-pong tests. This was root caused to the DIM algorithm
> landing on a too slow interrupt value, which caused high latency, and it
> was especially present when queues were being switched frequently by the
> scheduler as happens on default setups today.
> 
> In attempting to improve this, we allow the upper rate limit for
> interrupts to move to rate limit of 4 microseconds as a max, which means
> that no vector can generate more than 250,000 interrupts per second. The
> old config was up to 100,000. The driver previously tried to program the
> rate limit too frequently and if the receive and transmit side were both
> active on the same vector, the INTRL would be set incorrectly, and this
> change fixes that issue as a side effect of the redesign.
> 
> This driver will operate from now on with a slightly changed DIM table
> with more emphasis towards latency sensitivity by having more table
> entries with lower latency than with high latency (high being >= 64
> microseconds).
> 
> The driver also resets the DIM algorithm state with a new stats set when
> there is no work done and the data becomes stale (older than 1 second),
> for the respective receive or transmit portion of the interrupt.
> 
> Add a new helper for setting rate limit, which will be used more
> in a followup patch.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  25 +++++
>  drivers/net/ethernet/intel/ice/ice_lib.h  |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c | 118 ++++++++++++----------
>  drivers/net/ethernet/intel/ice/ice_txrx.c |  73 ++++++-------
>  4 files changed, 130 insertions(+), 87 deletions(-)

<snip>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
