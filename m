Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F5C58FB22
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 13:15:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB80E4180D;
	Thu, 11 Aug 2022 11:15:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB80E4180D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660216550;
	bh=y1CjDW4dh1g2wIKOJeBk2msH6iTwL2Uk9wNDcrNxQ4M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JF6UyByyz8PnY8QGkem4lgC0xODK91HYbxGlP2upMvDzhmhxwhrIArj9M9fESH5L/
	 /4C6zR5fhROaMMPwoUYDNf3G9eAqWSO062GMWWXbHddlRWyt2+HhN+GB7Jw4hu+wC1
	 KBh1HeMCspBcvlq7dD9hlAs0FqnUvvKPlc8JUGo1vy2blZgYc8eXbmAmSrkBFMZwAf
	 5ewbPNBVYmeHOdW//2tWxVxDajk6noShcQvHX+uJQEP15TRRxtxmkP5B+2AXVx1oWk
	 jddqXs8LUVsio5pW7PB6IUGhcC8wtB8AUfeM6INeUOKM2r7J0nOFcBeH1bvXHhItKX
	 3XtbkEQ34YVaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 82cPCXOmvvXJ; Thu, 11 Aug 2022 11:15:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81C43417D7;
	Thu, 11 Aug 2022 11:15:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81C43417D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E08331BF38C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 11:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B94FB60A9B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 11:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B94FB60A9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id te5_HlAGAoPY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 11:15:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1D4760A74
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1D4760A74
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 11:15:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="288888380"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="288888380"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 04:15:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="708580951"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 11 Aug 2022 04:15:40 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 04:15:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 04:15:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 04:15:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lldp9Jpl5y1B298GGa/Hb0dNo4R9AhDFZHQLr2wkbexjmmCrfYiX/RaNfmt08+Wyo/Iuhh2A0BhUqK9j2u/cvbBrALOevmwaNHNBCMqT0w7FRePV7lduVvSOMp0vC1vE2cjiOfS34kXc8ODbLBirIe0+DlAJUPkuB8izdgih4jEn/6yFdGc9d75VhF1C3TCur/UIuNvYYU7ovMrvRHI1me8PtCvhRkCQ1nAgFdnOAGqiELpUbvVAEwiG4gxO3nAYf1f1FtkYUoBq1ih2NAF+T71BsDL7o7eIFdb7hhlkAVohoFiz1yRMKC3xQElvuSwVKNhylC+S1DD0HhMa17IMSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7f20wS/oIF6J7migV0LBwVR+KoYDx8oNTAQNouv46f0=;
 b=KxAS97Jl2xH+19Ge5qCb9blHMJiKNVzq5Wr8hhbXyUFo+QNvjDLNyJo62fX3vEQ9nl6HQEtnA0I9n/syvnswdDmsrIJ35pbW4BUaKdeEBKNv9+Vatp7wAIgibKWU2dJf875j8L82BG2Wx8M8WVyWFp8LxGqjs7cpzAVb4wV7Y2yvIM8w4pU96Iy2OxPjo2H2D3C2SaC9ubee1WgwjWLjmKr4JEDbCY3R5xmZ8+0T9uFeyH3OVyt/IGbDqr21+HiR30Cf4RN7VGvKuoAKdCtLeYnHwbCdVRTC6aa8NZ+BHSht0BlPp8kqWM/peSupIH25gtb7zxxw0og/LsUnYLOKzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB3052.namprd11.prod.outlook.com (2603:10b6:5:69::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Thu, 11 Aug
 2022 11:15:33 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Thu, 11 Aug 2022
 11:15:33 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix to stop tx_timeout
 recovery if GLOBR fails
Thread-Index: AQHYpkjGWWErztxVj0qm9q0aiNm9pa2pmqUA
Date: Thu, 11 Aug 2022 11:15:33 +0000
Message-ID: <BYAPR11MB3367CCCA47B65703FAA583EFFC649@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220802081917.86798-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220802081917.86798-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d19cdc1-accf-4c12-4792-08da7b8acef9
x-ms-traffictypediagnostic: DM6PR11MB3052:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a2c1WasSyKOqk1aVJAdrUOzpj1L8Qcg9U3kEmW+07MznH/gm1oF06IppZoZNUWRBGJmt8Nuzb30Y19RksGLAVYrIRcTgX0mgaHDJqhloSnn8ayDha2icA/aI8eDONz4xqO0KCjKEPoXJAwtbu/RgAYF2+LnK8p8bqIh6czcAV3/ofXvey8KWiRo+CT2DuNBOnx2ja7twviOZn/nD0QEoFP6r8BPFC3TVFxe9L3cvsEXNwRdqkMnD61pfC6UEg2HZvjHGti1g8/WpTvWNJLz/KpadDbS920/qj32Ur3PkwPhXWOavbP6TI5wEgQY7rGtkYWnNQgz3Ebh6a9NPOpJVBxul+v/Jhm6HMSwjQ7XxJSg+Ogf1AMD17oPyY69+Z5aEtTAUYPSy+f/0l+WdWPCKEY7mT+pA6KfjnWEWz7SJ6kndMIYgtgW6buOCA4etHtoT+tQxS5OATlZEk5eO3RMk1oJeOc/fTzcfaf+24NarwnYC+T4rFBHnRZsnBefjNXHtefthEGAlEDyjH5EDlPSPyyQHSDOOmKOzpCGEmMBW0QKJfyjMk+//VgU1zeskNvKZElpMyUW7GD7UTF1jZJpHGWzAD0XgjdAc+HgYBOoVudStBni/spGjhW/aqmQmD5Bgk2tC1CSgnMgwBL6FX6iRtnykL3GCt/X1hoyfPLw9Wy28qUshNnk9CM9MnuYVrJTzoBHxsHUTs0kBd1eyTE7O+lipuw6qPSwAv+LPefIbzISNaj010uZSnuYwew1sNjBhkvXtEUW/aNYkTkBno/1KTtMQebTQnSs4k1go50pIybc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(346002)(396003)(376002)(136003)(66446008)(38100700002)(83380400001)(26005)(9686003)(76116006)(66946007)(53546011)(41300700001)(8676002)(7696005)(122000001)(86362001)(52536014)(186003)(82960400001)(8936002)(5660300002)(2906002)(64756008)(55016003)(316002)(38070700005)(33656002)(110136005)(478600001)(6506007)(71200400001)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cHvP4xOEaBfI024CzlyKKMyPfZ9fBSZEhy8M/Cw+1ErF8J4cOUpMYOTVhq9O?=
 =?us-ascii?Q?mIBOsw4GQzM+7vREK1a8WGpQC0llb+Jw2aJO7/Wz3o7mukwOibdh9wp2s8Ls?=
 =?us-ascii?Q?3yt/CgPgTJZC5Pzxe4RC3qSg7V2Ra83+RNTZDefZVZRC/Z3KMRVQHqmnuuu4?=
 =?us-ascii?Q?wQh5OIit+Z6hrYT+t9xgwCG4b+CwkXf99/hTcymWrVTv/sRxCCLQqNG18Yli?=
 =?us-ascii?Q?5AJ6iH8/U+8gTUiNELXHPapJM3h2xqvq3hQz0qnQLiyKBvBitMaHLVByR9oS?=
 =?us-ascii?Q?CCVl/V+tZZWAz7bRGA3hW0Hj3FqOZo/t2QVIDgTMqaiq6eclG9z5snmtdJEN?=
 =?us-ascii?Q?FunGgxJPPtCIYatRb9AUQbk39GOCZP09kJHMQKL+mMnLoOOy2QAtoy7Co2+O?=
 =?us-ascii?Q?fIRv8aNibsOdtF/x8VhETvsrmPpEZ3pwiNLrKHmn0Fc6FP4T0PjtpYOwyPaf?=
 =?us-ascii?Q?5/vNXiGehJST0m8EAuCb+bttNaTYHCaLs7FP/78qyzFvuRoYHFtaU7ijiemU?=
 =?us-ascii?Q?mGduvIia9cHT98tRX63mTrPAldmz03VUrJQSflI0AqQGCcdlXrqqfRpEvNsu?=
 =?us-ascii?Q?KT4XkrthctqsHnb0dXmJUNvel4R5duzLFw/+eijUTi/Yy6cmHaQxRInlbkWw?=
 =?us-ascii?Q?kHa1eNPHyKvcDMEy9m5tyEEB3PUkycq7K9GzDIk0ZuV26GCfMbOftGo9uvis?=
 =?us-ascii?Q?MRi6Y5w2zUhb20o3eZWJFJqeQuDTSas4j37aCe40AJALv0/lGgyyK2iIKdY7?=
 =?us-ascii?Q?KnPk7xdXST/civNCLX19ZdfAgMhyt5OPO8Vxu3t27Uzr+2cTwVahYEz6gbhS?=
 =?us-ascii?Q?U1n2pE/Hq5MOXado86Yr/AHGfOkqXwUJu1Uyi++p6XWYaMQDp/XN6ajzQcwQ?=
 =?us-ascii?Q?8TWtt4ZOKkWemic7/ehJ1ndpNKx+WTPW6xFgP+a7dXL/yBRwojQyIiwXHonD?=
 =?us-ascii?Q?6V6wKsp2SAz8he/LOV0VZAkMe0kNlChLuf32ia4MPmhJR+mVmE/4cLtsdpS4?=
 =?us-ascii?Q?hphrbiyRl3QzlZjPmphq3qCokPFCTS79Me98uXvzOqR6jV1BNht0RRJqbIKT?=
 =?us-ascii?Q?zKp6hVSOVZ8Xpr/j9RlBmeqbfLA1zlilGr8lEd/7j+Yzvbq2g3rlpRvOHsvi?=
 =?us-ascii?Q?CaYq5YKa4y2WRDnkvloLQX+cYVfwqO4fSsH7wVYPZ1R7h9xySwnWu6QZVPoe?=
 =?us-ascii?Q?rr+iXx7TqJNa49WMOrutoy4+NttTRT260yPqTxEj4KqX5Ra9gctpa4vkvtN6?=
 =?us-ascii?Q?Wz9LzA9/iAYDHqGgBM5+GTm6gSQXty7wyi2MJLB+8mghk8x3209f+eHT70rd?=
 =?us-ascii?Q?dL5K2UbGpXDL/MzDuN4MyIQflpGO3rMOrQX9IwQOrQUHUupTqRRNm4aczym5?=
 =?us-ascii?Q?8AaPvyw+cMKwQ35/aHMRvdCbuKsgQnea3ebKpYVF7I7z3IapuUKXnaOO3qdH?=
 =?us-ascii?Q?EwI+hcdC/9tuzRpfXBCqHD2oQko4T0DGB2gzgdvrwuF2uHXUvUFkdahOMDm5?=
 =?us-ascii?Q?MVIJi8ZsOUris9H2qI+UAHneA3CpouIMUR3bBQuBVvw1iNkQwHaOGKSJXAFj?=
 =?us-ascii?Q?oXPojnxSxvBI0aLvKstQGjRqNI35OsjF1XmTChxt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d19cdc1-accf-4c12-4792-08da7b8acef9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2022 11:15:33.3868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rXoWRMhEBzswWvl+RTgRRMa3EGWYfkA3xbCdL96cagjX5/L1F0DdB0gLaz3E2yyOdKVlDlLvzT3Xpelo8DMlsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3052
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660216541; x=1691752541;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NCXBASbrRcAfnEwfuTEVEAbZQ9uPhnFUOOrPkvckEtc=;
 b=Yd3yBseQus4be5oXM6QBrV67mMbMECC7EHqVJ4NKO6bUKlg6nYueh8QF
 2Uhl0iCjMRZKe5hgU8bLOIC+Mawr0RZ6W4adJC7wGDyt2h9eBsGruwzDT
 zR9cmFzbud2g+AcEX3R6w7qYgRX7kU4OC8LvWaBzI+tZMl2BA9i+esX+o
 +lqmDkr0Fn03qKgHBbyAe4+Jm7xasLjcaW/vOB/xyTYQj62Hpzb6Y8I5X
 xpay5cqaWgqItMqi7a2TZi/Vns6LrdunAz7U8tki+STquRj90LLkpaVP0
 E0MIZUuxlEYIELn4FKwpfL0W5LPkkhBq+Nqp307LG+LL3g5ZYBsyxLdpH
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yd3yBseQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix to stop tx_timeout
 recovery if GLOBR fails
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
> Mateusz Palczewski
> Sent: Tuesday, August 2, 2022 1:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix to stop tx_timeout
> recovery if GLOBR fails
> 
> From: Alan Brady <alan.brady@intel.com>
> 
> When a tx_timeout fires, the PF attempts to recover by incrementally
> resetting.  First we try a PFR, then CORER and finally a GLOBR.  If the GLOBR
> fails, then we keep hitting the tx_timeout and incrementing the recovery
> level and issuing dmesgs, which is both annoying to the user and
> accomplishes nothing.
> 
> If the GLOBR fails, then we're pretty much totally hosed, and there's not
> much else we can do to recover, so this makes it such that we just kill the VSI
> and stop hitting the tx_timeout in such a case.
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Changed the author
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
