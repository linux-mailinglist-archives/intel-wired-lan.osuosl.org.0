Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5673D58E34C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 00:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2814F4091F;
	Tue,  9 Aug 2022 22:37:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2814F4091F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660084649;
	bh=GwKIDfplgYJeParLwV/jDsS23025MAJUQQBy2sFUtG8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yo8BJnTs4lSm0pEnoIgq/Vf8pupa2iFD/OA1z8FQZ0rAOCjh0HSDP59jysewvwEDy
	 SUfkRGoBebeQNIZwBDZHE41HQYkjgqk4KNWdY87tIOEmX8n6TyDfpgKciWzp+5bbJi
	 gSjuN9q19Ivj5DyuHDKEDYFXqRveJQhwwFYHvpHQ+xTeIOLhCoI7J9lAJmzGsZygUz
	 G/sA/ufVZ0Z//bVm6suks/cXrkhtHUQxLM3jRnnOe1TXeaKCu9ioeFJUAbSZbcCVB/
	 2HU3t92b0W9WmcrSxcqxioo3SWd1nv+eBaXF9AQEKxzKLRgLW2U3xDq8p7bl9DHM+t
	 /En08vNkeU5dQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mfPEaPUHr3UK; Tue,  9 Aug 2022 22:37:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ADAC4091E;
	Tue,  9 Aug 2022 22:37:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7ADAC4091E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6C991BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 21:11:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8978660BCF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 21:11:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8978660BCF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-pAtROO9Orn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Aug 2022 21:11:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C86F60DB7
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C86F60DB7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 21:11:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="288501411"
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="288501411"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 14:11:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="694276124"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Aug 2022 14:11:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 14:11:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 14:11:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 9 Aug 2022 14:11:32 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 9 Aug 2022 14:11:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fc+BIdJ8gpEFPkS1BQFYxVWhuTBC8H3w1GbL8bzWKQ564vnja5BaxMk/vIrF7gMmKXl/Ipompp3jbadOOoIAKGrBmedJbMnwBarYFfxLnpi0II1sNfHfZl7BEVAbYyxaRL3xvq01JNlAerbe/BS41p/wZiiLMRe07KUUVOMRwK/LMfroZQ4iOsFxFE7DOgglDgXLUUWnpmSc1mpXXnv9PewvYbJPpwr+LwF112Or/P0PaGNhhtovT0swZaBlql9/MumVGoklpa1NxHBKrRv+Y369OuXt7DkklnsuQD55OFaLDLUmdFqSUsoT2M8Kt2sAx4yDy9XItlAcw/bhmYDz+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Et/MUgEHvbeB4TDjA44eMYyg9zC9l3qvNLGRzXEhfYY=;
 b=eMxktGVJxXIIFnm4SB+1WIYJca+mfxi6skt2wqj4R+i6W42x5GefeFXC2lo2w+aMKhVHD1Gax6HzW3TmNLWjcLhf454Lmk48JiZ/NKG5dYBFdGHj/P8W7/lTxiG7wN47QE0pfyHnlFCwCLMJ7xgQ3+qsYfXovKYq3pWCJuGmjMapgBp9OdFhQmr5MxLZONcvIz0kiS7hAOqKOgO2pG5pTXwN4fbDzTBpD1yb32wizf72yLV/+3vUw0kZjU73fWfK41g6ABC9fjptTAeO6Hth8WZIymRfPA3jbPrwOwy0AZuIHi8offYyg7vIv9N59e9S3DWmTWUc2vZ8+YV92c2dVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3113.namprd11.prod.outlook.com (2603:10b6:5:69::19) by
 CH0PR11MB5476.namprd11.prod.outlook.com (2603:10b6:610:d7::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Tue, 9 Aug 2022 21:11:27 +0000
Received: from DM6PR11MB3113.namprd11.prod.outlook.com
 ([fe80::9c27:edae:2e08:8874]) by DM6PR11MB3113.namprd11.prod.outlook.com
 ([fe80::9c27:edae:2e08:8874%7]) with mapi id 15.20.5504.020; Tue, 9 Aug 2022
 21:11:26 +0000
From: "Laba, SlawomirX" <slawomirx.laba@intel.com>
To: ivecera <ivecera@redhat.com>, mschmidt <mschmidt@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix race condition
 between iavf_shutdown and iavf_remove
Thread-Index: AQHYpmZfnwaLofEO8USpXfU7HGdZ/K2eeIkAgAAGSwCACJVkEA==
Date: Tue, 9 Aug 2022 21:11:26 +0000
Message-ID: <DM6PR11MB31130998A16B8360E72D354087629@DM6PR11MB3113.namprd11.prod.outlook.com>
References: <20220802115142.65176-1-mateusz.palczewski@intel.com>
 <20220802115142.65176-3-mateusz.palczewski@intel.com>
 <CADEbmW1mLwFzPJrx-igzpwF141Gb71wgJd9Zm1ur4xPkWa5Hyg@mail.gmail.com>
 <20220804113730.3437e762@p1.luc.cera.cz>
In-Reply-To: <20220804113730.3437e762@p1.luc.cera.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3f61445-b1f8-40bc-8f6e-08da7a4bb8c8
x-ms-traffictypediagnostic: CH0PR11MB5476:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cc+OoLVdn9PANNvGxL6+j1YEs49tVaKb2A05L8r3Lp3p/+Fjz+VPsBcQnBIhY9E24YFXgSIjKAsCuZ55nqBSQTtV4B/IeQrGi7TAwtEJuaWQkw75OkSpSpobynJdLViEGA31rQPAEVMyTc4ZQ7b4hu3I7J03ztpWQhcCdS+QD8fYnmJ3oRF4takf3x4gVPnbshMov/rR+qeIfDzYaVJd0HS0en9T7xOYK4o3WrLwoHcXYNLjvLwskASiDSOOmXVrrQY6PNm2Vz0W6u8ppFyBO5iSjTCH2v7UQf0pZjOU9QJ/0IWaBQDoGITakxhE9owLo2o6w+ULd7DoEcq72A5Qv8TNd5ftx/N/DAlKq3qZqZSaiT6M87R3+v5EBz3gcdmKPEEXBbb0pntGWkp94VcO36fZvmMJJx56m7kUkJ2hbMEwRsHMkveG6x2J/bKF7O0DfSxmn+mHMHbGqfprsCCq5IurjplCEyaC5czpm1JzNhIoxAbpEZO7icvuKyFCtZJSWIb93eGZy+9ydYes3KVdyGTO99aU8q5zOvPaQWS+lXcDu/2qyQy4WieEWtxy4ZhI2aBbXCIn93fHAwQJqasu3zAki8F/NplM/+r49iujaMhxBLsD2x2gYQEBI2cwLxLveeO/fzl4IDcEivGT9h8XLbHwuXsacQLNBJLNDEmI2dZMBLStw6TAXu4yixnyN3+LT6JeGZ+PHMgMFs9t4FLbGYQUWXGfXpfVlzl4bG4AD0XQPvfREyWVyC/1f5tHLx6zlSuJWUgQ9Su7vQ7YdZeNxxxyyzClnDwwKJ02gfcoz70=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3113.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(346002)(396003)(366004)(136003)(71200400001)(316002)(478600001)(54906003)(8676002)(41300700001)(66476007)(110136005)(2906002)(66946007)(66556008)(64756008)(38100700002)(66446008)(52536014)(76116006)(8936002)(5660300002)(4326008)(122000001)(55016003)(38070700005)(33656002)(9686003)(82960400001)(86362001)(186003)(6506007)(7696005)(83380400001)(26005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?layy6uAdo8RNZHEtYYYn+xzI3Y1EMHGq3CcVDXEzTHqRtGsReyiIh4qFdPEh?=
 =?us-ascii?Q?kOZyuFKpPFK/jYBeFAXO+vu7I3QUfox3BffGRmGnlJnj24IcdIYni5O7vcWs?=
 =?us-ascii?Q?R7aiuGCc8vC9JDi3untAwSEyUIAq1zU8cqqYsHxVyilS4VK0QbMcTgWZzzq2?=
 =?us-ascii?Q?7qLm7VGjoI8+J2q9Jb7RuswIv5/raNBHNd48+ZFq21haLSVKMYsdyQtmZTeQ?=
 =?us-ascii?Q?RxQld2iuS/Ahl+HooDurkPVeZCbHjRJLWe+xVqKLJjhTh72aOrmV/7bo4q5/?=
 =?us-ascii?Q?tVO0o1SQCqAZqb8N0LujP+2RTnqN/JhLNbUmC0DEUM93iRed0ddn0XiH/R92?=
 =?us-ascii?Q?XILov1VN6ML+xGG7TFjf0fTDrOjnca7r1j0XtjfUYWsUpk2wNCqazZRMxNJ9?=
 =?us-ascii?Q?r7HT0mgXc8YRRLmmCi9h2AbPPw6opTj9Kl6DqC1DJZ8MO2PMFr8T6STWSboY?=
 =?us-ascii?Q?XhLwsvOM6hNCpjwKkOeHQ5XzKpbQs0elNHjVFfdV0ePf9Imjur+2O9q74Oqf?=
 =?us-ascii?Q?Cm5UDXZFsVoB+4xkrgoiYC8ZalceW2BEylpZLgRJ0FSLrf1BX8ERsTFvlLlA?=
 =?us-ascii?Q?uTU6mjN0M3Y6CZFkj1eaw5gi9ND9/05ba34R07RVDgm2cdeHQsAFVNxGpRSJ?=
 =?us-ascii?Q?mDc+RWyNozoPGbEkvhrSNR3T9myXPXKTbGC0bYpLOI7XqmSDx6tMd/VSN2QW?=
 =?us-ascii?Q?fVAQKXJlFxtN5gnRB9st0trZAkB8u0SA+xXkB0MVuTcBRXil/x7kMc5Ff4EL?=
 =?us-ascii?Q?NPgFzIMn2XH76kF3Q71kc/wEmsZpR2H0Ig28+JK7bYjS9vq0Pw9XEqaqW/qc?=
 =?us-ascii?Q?9553jC4xMoLt5Y2kEH4ufBABorHvA7QhQ8xkEVDZ7mBE5T5heDlzm3ZTSoRT?=
 =?us-ascii?Q?0AbGZSZAUsejIfKccBPU9y48Y6Rv3pb3+iIitVK+L4q1IluBau2Ru7TtUZog?=
 =?us-ascii?Q?skcCLKAjK0C8VIk5uMMwHek5/Ic+bdRdrP2PBZ/KYx/y1lGqeQoY8ZgESdb9?=
 =?us-ascii?Q?GkUc7phn5DoGjiFGXg3S/NX8QoBsGbOAu5HkOGfzsHWynZGlLvtI8f48GOkE?=
 =?us-ascii?Q?QheKwc6v7OapwML+uCSnjIv0gwij3VHv77rBaS3eUKQmPi0sGnS5lCYFpljo?=
 =?us-ascii?Q?Fb0c6l+AQGmqaMTGR97zPkdks33PaScWHbUnwcRPUWNYvFknBiwB/7P6qMAU?=
 =?us-ascii?Q?JiAQ0t3xHC9aXMwGhzeKSR5vxXc3bnNbiH7SVJxLx/OFb4y/eaZuG+zeBGmC?=
 =?us-ascii?Q?XnQ08YKhPzYjmKH1OjL6y4Ma67Xp+6NxtO3+7zfdU5INOz0PQWWFXMYk659B?=
 =?us-ascii?Q?+qYHb/l7npgMFQt0Xr3tOdyofsujrVKO1iokhB0JWsWtPqlA05xcFcGqRzPN?=
 =?us-ascii?Q?5xd5Pm7MjqdWpbcO7OaR/uNo+DW6vq3JpEU+tgyJ9nUXrQ9a9nNM7fiPlIQi?=
 =?us-ascii?Q?Y0E/t1bsCmKlzVwgtUJ1hhsBVtb1LLfhKUwbQ82xWkE85n8ivjdHJkdm/SMe?=
 =?us-ascii?Q?qHsAqffzTMuh9P0KosD628IjBZsjY3KKztz0QNuFjt5y91hHITvIL5TJTmHU?=
 =?us-ascii?Q?KUP1anaKurPMt5/9FGVrbIbGd3MhGBGUkIRAsjHo?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3113.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3f61445-b1f8-40bc-8f6e-08da7a4bb8c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2022 21:11:26.7477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7IDPsVO4LuhXriy8+DDV27TgDF1uJwppaBCqNRngm/3ByrnLwXHtpLa93e4Ub9pp27Zc4tJsjSJ4eVGC0XQtm268D4AT/brflzQ2Nmpw2A4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5476
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 09 Aug 2022 22:37:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660079496; x=1691615496;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dsno94jTBEUZx7Qt2Rg157nl8PfRVkLrwGERxVkMsTc=;
 b=C7Ld0sJvRsvm3e5lYbRhM7SH8fml4AMbGPoI/Obo76DAXKAvjSERnmHt
 EzvMdvCJSEIIijgn6+pQ5Dy+QG2oy3i+t0nvCVW3A3Tx5OkdWYfKrYysF
 6nYswKT6ojV/k1dAubzxpbZ+O6KktgvQu+0UBGpKj1hubWLIkeJFoLbR3
 e6eAYqR8y43vd3hmAYLatnL5jG3iisK0/EwUpM2gYKLlkbXHBBBU9B7N5
 krFsLNkP1eNHIbQK0GBwzRgo3M9nB4JBDjtTzo75uW/YjmJ3cvYPm3f87
 pw5n3j+cZ2tMYZiqyUqvBu5qrWXmpzXFgBjvv/sUQLGuwihuJgBotMKRD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C7Ld0sJv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix race condition
 between iavf_shutdown and iavf_remove
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Thursday, August 4, 2022 11:38 AM
> To: mschmidt <mschmidt@redhat.com>
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; intel-wired-
> lan@lists.osuosl.org; Laba, SlawomirX <slawomirx.laba@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix race condition
> between iavf_shutdown and iavf_remove
> 
> On Thu, 4 Aug 2022 11:14:58 +0200
> Michal Schmidt <mschmidt@redhat.com> wrote:
> 
> > On Tue, Aug 2, 2022 at 1:52 PM Mateusz Palczewski <
> > mateusz.palczewski@intel.com> wrote:
> >
> > > From: Slawomir Laba <slawomirx.laba@intel.com>
> > >
> > > Fix a deadlock introduced by commit
> > > 974578017fc1 ("iavf: Add waiting so the port is initialized in
> > > remove") due to race condition between iavf_shutdown and
> > > iavf_remove, where iavf_remove stucks forever in while loop since
> > > iavf_shutdown already set __IAVF_REMOVE adapter state.
> > >
> > > Fix this by checking if the __IAVF_IN_REMOVE_TASK has already been
> > > set and return if so.
> > >
> > > Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized
> > > in
> > > remove")
> > > Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> > > Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > > ---
> > >  v2: Fixed author
> > > ---
> > >  drivers/net/ethernet/intel/iavf/iavf_main.c | 19
> > > ++++++++++---------
> > >  1 file changed, 10 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > index 6357dea93b99..d43e8f12d3ad 100644
> > > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > @@ -4846,23 +4846,24 @@ static int __maybe_unused
> iavf_resume(struct
> > > device *dev_d)  static void iavf_remove(struct pci_dev *pdev)  {
> > >         struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
> > > -       struct net_device *netdev = adapter->netdev;
> > >         struct iavf_fdir_fltr *fdir, *fdirtmp;
> > >         struct iavf_vlan_filter *vlf, *vlftmp;
> > > +       struct iavf_cloud_filter *cf, *cftmp;
> > >         struct iavf_adv_rss *rss, *rsstmp;
> > >         struct iavf_mac_filter *f, *ftmp;
> > > -       struct iavf_cloud_filter *cf, *cftmp;
> > > -       struct iavf_hw *hw = &adapter->hw;
> > > +       struct net_device *netdev;
> > > +       struct iavf_hw *hw;
> > >         int err;
> > >
> > > -       /* When reboot/shutdown is in progress no need to do anything
> > > -        * as the adapter is already REMOVE state that was set during
> > > -        * iavf_shutdown() callback.
> > > -        */
> > > -       if (adapter->state == __IAVF_REMOVE)
> > > +       if (!adapter)
> > > +               return;
> > >
> >
> > The check for !adapter cannot work. iavf_pdev_to_adapter(pdev) will
> > never return NULL. It does:
> >         return netdev_priv(pci_get_drvdata(pdev));
> > Even if pci_get_drvdata(pdev) somehow returns NULL (which I don't
> > think it will, because the driver never resets the drvdata before
> > freeing netdev),
> > netdev_priv() would make a non-NULL value out of it (it adds the
> > aligned size of struct net_device to the pointer).
> >
> > CCing Ivan, who will have more comments about the adapter states.
> > Michal
> 
> Yes, to make your patch working correctly you need to adjust
> iavf_pdev_to_adapter() appropriately and also set pci drvdata to NULL prior
> free_netdev():

Thanks Ivan for a nice fix of this problem. The only way that this check would work is when iavf_probe fails with no memory.
We also came to the conclusion that this check is not really necessary and our update on this patch would be to simply
remove the check on the adapter to NULL. What do you think about this?

> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -164,7 +164,9 @@ int virtchnl_status_to_errno(enum
> virtchnl_status_code v_status)
>   */
>  static struct iavf_adapter *iavf_pdev_to_adapter(struct pci_dev *pdev)  {
> -       return netdev_priv(pci_get_drvdata(pdev));
> +       struct net_device *netdev = pci_get_drvdata(pdev);
> +
> +       return netdev ? netdev_priv(netdev) : NULL;
>  }
> 
>  /**
> @@ -4899,6 +4901,7 @@ static void iavf_remove(struct pci_dev *pdev)
>         }
>         spin_unlock_bh(&adapter->adv_rss_lock);
> 
> +       pci_set_drvdata(pdev, NULL);
>         free_netdev(netdev);
> 
>         pci_disable_pcie_error_reporting(pdev);
> 
> Regarding adapter states... __IAVF_REMOVE can be removed as redundant
> and instead only use __IAVF_IN_REMOVE_TASK bit.
> 
> Ivan

I divided iavf_remove function into two logical pieces. The first piece helps the driver to survive races of watchdog init states and iavf_remove call.
So when init fails the driver doesn't reinit if remove is triggered. Additionally the __IAVF_IN_REMOVE_TASK was introduced in order to fix race
condition between register_netdevice in init and unregister_netdevice in remove. The second piece is the cleanup of resources after netdev gets 
unregistered. I had no better idea on how to deal with unregister_netdevice call without holding crit_lock. Unregister_netdevice function will call
iavf_close which requires this lock in order to free traffic irqs and cleanup rx and tx resources.

The __IAVF_REMOVE state is used in different purpose, for example when the driver is ready to stop workqueues (after netdev gets unregistered)
and iavf_remove already holds the crit_lock for final cleanups.









_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
