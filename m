Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7396FB477
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 17:56:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12FF784343;
	Mon,  8 May 2023 15:56:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12FF784343
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683561375;
	bh=kYfHoBfx1X928XLWgybVr5QZ5uwwZQJR03aNTuHleQE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bmLyIf7GcjE+wCczuOdM7g+SAVxta62XefyeyGJzm39wxLYkrUZwLihRWESGVOSlM
	 wO3wF7qeuzpFsrtc1OFoRzMbmkyBa4MvEuvFmYganjtHWYYEwBwnJ+hKKs4xUHG8K7
	 qZe3tLnxzISk5otfFb1/EmoaxzvUZjmqSdXKAKgdxsMTGz4BtKpyqDZU9UMOBdPpE9
	 i+nBGEZfVdEYEb95Ki7hxbnk3P4R6aBxbloLItZzTS3JbaTakeTk8KeBxUxriLVnuV
	 6HPogqrV8gHXrj2OX7MoSeVSz5dbTV6LOgcvS6jxCigDxL4tX79t6EFuFfXgvENxxh
	 edxXWuqY7VEmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L2gKHzmTCmJP; Mon,  8 May 2023 15:56:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00DB084329;
	Mon,  8 May 2023 15:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00DB084329
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66D3A1BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 15:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AF9361487
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 15:56:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AF9361487
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bo53IIVT7zJt for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 May 2023 15:56:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBD3B60B83
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EBD3B60B83
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 15:56:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="334125169"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="334125169"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 08:56:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="692655220"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="692655220"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 08 May 2023 08:56:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 08:56:05 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 08:56:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 08:56:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 08:56:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CkgpYJqBVd6RHT9Q8mSMdUbJGWGovdqRvsyprj8XkNcqftFml27Fuvh4j3/hKGSTrZarWQ8YY7YdUIeBQYxJz4A4rPjzGsw3vSXxjK5tuZIPbq96kb25nPvPgG/u4E25z5i5A2blHIft3dD+HcMoqdEErED6yp7smb7i+Wq3pGrCegx5noCf3M5SC5Ahsi7s0Fw9P7snS+fasbYSrABaC0dYJLmbOMGWGXE9wIPGl1bAbhScdkmXtEAXmrSGRlTdc4P0EDtMBcKN3tIKI4YwioKwBSR+e9tc+4Tz9kyCqCWeG744J+9ib/s3ooRA72WNfjtoGc1HDg44U0zJR3YqeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wd1JtM1Bc5GS9RTDxwzREB8oRPgnNJQDjw/IU8oJ0vQ=;
 b=g7+zOpvtnBgDq2NbZyT74SMYjCua4YBVddt9BLQDw6NU3DbThQjIC6jjKTEPSlztukucdpF2Da64olZysTSPk2fWg4xv6vn+/DsEy7juSAAHanx4QCXrgBoLiF7Zo9KSjceaUptt+qhvaowQfb0YvR6KerAvVBDYsRsUvxWx5Dyj1LqsOfHV/wZz1MycQR2wG8EKaLscvotCKyNnGZhLKnETH7hkhT4zJ/dUF1RRk0ElHiB4mrJ6x9hBie6J0bC50r3+aG6BDLLFaZ6tCYznJBl+oYvcgRuZVsbqzQyk+81ZVLboqwvD9mXDCrRJwwLkXo9H9j68u1Zpi+IVy10eeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by BY1PR11MB8031.namprd11.prod.outlook.com (2603:10b6:a03:529::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 15:56:03 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%7]) with mapi id 15.20.6363.026; Mon, 8 May 2023
 15:56:03 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 3/3] ice: update PHY type to
 ethtool link mode mapping
Thread-Index: AQHZeHD9VldxQr4MJUW0KRteLbckQK9QmgNw
Date: Mon, 8 May 2023 15:56:03 +0000
Message-ID: <BL0PR11MB31228958A5A689E1F0DA4B8DBD719@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230426185047.725910-1-paul.greenwalt@intel.com>
 <20230426185047.725910-3-paul.greenwalt@intel.com>
In-Reply-To: <20230426185047.725910-3-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|BY1PR11MB8031:EE_
x-ms-office365-filtering-correlation-id: 8a270bfd-ae35-4a04-31a2-08db4fdcb9cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LVzwSQ5IXd8u7VV33F3tAoHt3hIvBrUhnCaRP+mzaoZ9siYmF6/nMpdBoEBFLtbAmtJy0jtIMm6wq9yC2hEPuEhjwiMiUfPfnTErvAccOSupM4ebCe6mLz/xngwlKhXUCWL6JGdGFSP4u5KCic3tPL4JOD/yDBhfglhkA4modHYWeeYbeg6mrGqOrHSMMZKRli1dYOQjPFDlP2EjVEAsQ2uyFVrgbOEuF1z7mIVCiQOeBmIt2BEbzGYt1yKt+4I7GJwvAlKWcszwLWqQff8/+uI4oruOFUaM6MnLAMt4Oy2aaDmrEVCSG50ifpO/ODk/fmNS+m+5I7HStqHUrvcC9XKWuAzH+buNVr+bd4uWoD4MBfJJ/dj0x6nGKEB7OAfYEQu+YaNPTIEAttPJUMCtapeFL7rPgJOrG/Nc+aV+f5NMtEpzqYtlqj7+LwFD01G5bWvLNNNNmaWyPOzQ2r8xKzrm7DXtl4HWOyCM3RuJrL0NM8Jm8Gtq0WpLLYqNZ+8rEUaG6Or8vxweFNjzL42qa76vIJ1ghZvkg8+3jeGxH9moCTMhvPjVU7gydzXp6sGyLtjXfvQcCQd7ILpq4qXyoIhbICbkKrDi5nqW/oDRy1YJMwCczN7YuDyFBoBGC/13
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(366004)(39860400002)(346002)(451199021)(4744005)(2906002)(8676002)(8936002)(316002)(478600001)(64756008)(66476007)(5660300002)(66556008)(66446008)(41300700001)(15650500001)(110136005)(71200400001)(52536014)(76116006)(66946007)(7696005)(53546011)(26005)(6506007)(9686003)(186003)(82960400001)(55016003)(83380400001)(38070700005)(33656002)(38100700002)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L232CiZllIrpc4L/Ncn5oEFxNTr9deTHJMY/t0jeBKSJvUiEp+JPFuGCwm2i?=
 =?us-ascii?Q?FF1pbgb29RhgQ5p1J5DBCWCBBNMp7JZMJKFPBk2sKB7ihazfRWqY6dYKMQa8?=
 =?us-ascii?Q?w0RtudbTK/wMAbvSMPFjY+jS3GQ31zdPUgY1FXGsVFbmF2o8r5Dsl+PPcTkR?=
 =?us-ascii?Q?fBF85xF1tMcDmdchzA+1kJ2zhECY/KJLeR27KL0HYBH+ML46zIeGBFX0NiPd?=
 =?us-ascii?Q?oXCZLrxREntR7PtRXj8gRvYT66IsTfP4oM73f4iYFYTHOPf/gU2GSQDnOm0Y?=
 =?us-ascii?Q?c41MnjmUMJP/0+yWP9Yz3tdk+071ckQPcIxq4NcdkDOuuU7DCc31mP2Bp5NO?=
 =?us-ascii?Q?c6M5rGah4KTr9jBNu4rmAnYWKb4qrVV0ORP6W+CJ61UFRXPQZFE3E4eVkCdf?=
 =?us-ascii?Q?V++xdr5RquVu/MKqtEbwbAhZu+5aQSQvgv9a8giLH9EKyX61g9pvvKwpoEpF?=
 =?us-ascii?Q?8/O3TINKlFZ6QdzRISf98NTPnvNs/OnD4UwRNxhuUCR8IfIwMj4/lIZ5+Jp9?=
 =?us-ascii?Q?VUvlGzGp/z9iModm7MjTMfXstRuimzEYjiJuC7D94b78kwgfNwO5mtAmBmH/?=
 =?us-ascii?Q?mDzfKsFYOvcUep01lNnlKaAsdeGfoLvXYszxfkeJQn6ml2pj3oh8x9gVuDgU?=
 =?us-ascii?Q?oOkf3rOuqRVA4e7rWKDNTPHNWe2q8aCg9Qpkan4jdeYUFc7UWkl48zy75rA2?=
 =?us-ascii?Q?TGAqnjIBQFh7cRjh6E8OM4Kd/ygrVTLjfCG3P8tU6L6CZwtkr05H5utRYSma?=
 =?us-ascii?Q?jJiuCnMeuoAciO8e8fgPfZfXaXFP8YM+UO4TDktrajtzRpZh1D5zsPxLKW06?=
 =?us-ascii?Q?zPNFdAsc2Z6EC95bo6bzvwojP3a3bL4GxEnyEL9sRdZl+CjVGXCz/Z5J8+VJ?=
 =?us-ascii?Q?xvItOipAZ7hf2pzAQ1wphHt/tRXXFr8FtHh+ahO7IW44czE8M5HEd3epQ4rI?=
 =?us-ascii?Q?Uo9cRw4koIlIZWG707fTLHnVEATfje6x4CCumUGdUJGbIuQ0ir05/oxAqE24?=
 =?us-ascii?Q?W65Bs4aKjUMF5YRFPqQgpJ1N7vQLN6ZEl3RlvK8d4Ua95TR3LiK7lgW8S94a?=
 =?us-ascii?Q?I7cAh2Ahi0lH+zcrDTdLowDiCLzRwZTqV5TMbBYrqmd97wn4HdIq3cfe0S6m?=
 =?us-ascii?Q?vtEQ3c0CH4HU7v+fQyAZIa5zlzyzNh4m0Y1y01I4cEI1GKxHc5G8F8AB8UT7?=
 =?us-ascii?Q?F52HEbJjpCEZUrYx8Bv+uoLjbJt53x3c5U6nwODLlQXmA4mpDqaVaN67WPX0?=
 =?us-ascii?Q?8/HvSILz1AqX7JBKElkE80RO1SlW8Yrl/sZAnJ1zyZW5QU6MxRF3FGFu5xJc?=
 =?us-ascii?Q?AHQ0I8608dZ2axPHYyogcOBSii/7Z0nayZIiH5S8UBkQzT1JMlmd9PriVjfl?=
 =?us-ascii?Q?pIv5j20Rau2OmVzbAId0iNU9s+lcVK+CLvHG8zaIaIXtkqULed8zpRZGQBRe?=
 =?us-ascii?Q?uDX9tJwp2aDJkKS+eliV0I5o2kv6P55SNwEOqIquvTahXN2fuFg46e0lZJi5?=
 =?us-ascii?Q?nz7oVpdRmYOgiclg9o5goBzdc6kZ7lE0Ff5a8sx8djRXWu5sk70P9YLQMbAz?=
 =?us-ascii?Q?80j/Y4csMmIy5FUlta+dAYHb0L0q/5Mi/9MXfwqRs+mhaDSd8RJCg444Nh3H?=
 =?us-ascii?Q?sw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a270bfd-ae35-4a04-31a2-08db4fdcb9cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2023 15:56:03.1544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fS0Z5eS5FoNHRc866l7kbTaSp1PiHZYQkC4aZKDR/IbDIrwkr8AUzjjrovRozSah/pFfU/pxYwSUFW6bNXxS1ALd/73ajgrhdlsGWj+f8p9AKDSxxna0eODNIiW2a+18
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8031
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683561366; x=1715097366;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Wd1JtM1Bc5GS9RTDxwzREB8oRPgnNJQDjw/IU8oJ0vQ=;
 b=jv2Bl8VI7ZT4JNTC0+8daXYDbnL39+emcxcSuUywX0A+Zgr1YkVAFmFb
 sVJ3KD5Cgu4H7gAsDAP4j4+KQpV6bIbrUNmyNinzpR0L8JqGOam7p+Cls
 Bk8ihi+RuZz43XZtDgxcV1qiMKWWB9awzqrj/m/elbqLz1fwPYYxpiPid
 3guxLadF1vK7U9JvCbja8vTbCtiy3JJ2Liklxc3CQcVDmb3+sZectpEsh
 XVBpcf89koUTRJxrU6UdLCaXsdrSBZRQ6Gnp7h+RJa+htrOKREcduKExj
 iESWqh7ko5NNE3/WrPKNQZ8ajc+58y3NghxfNmXg/vGUVxDPhT7dtJBN4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jv2Bl8VI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] ice: update PHY type to
 ethtool link mode mapping
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Greenwalt, Paul
> Sent: Thursday, April 27, 2023 12:21 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 3/3] ice: update PHY type to ethtool link mode mapping
>
> Some link modes can be more accurately reported due to newer link mode values that have been added to the kernel; update those PHY type to report modes that better reflect the link mode.
>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ethtool.h | 38 ++++++++++----------
> 1 file changed, 19 insertions(+), 19 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
