Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAF58A1429
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 14:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B36441E5A;
	Thu, 11 Apr 2024 12:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1RIjTxvTJ3P6; Thu, 11 Apr 2024 12:14:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B59441E67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712837691;
	bh=baqBrGewn34sGHuYq27BDGxs/j9wrTOPi6BRMb7vXUc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QVvtyR3D//7EPrprwxbWpajVA5frelZoxsXXp2gf1Zi+5WKRdRPTyIZHSdXRnZ9QR
	 Lx8+S6jt0FZQi6RB5U1wYO/Eg01tGcRI7oJCcAz+eB1tOpCcWy/+d2TXKBX5OfTVOs
	 rMeuHwqYievEva+Q8kc8Ry9pFcDCiA+JQtswIaZJHAlQsR7xc6MWERaL0hTMgj0IVZ
	 FBKgP1g0uxs+LQjvK6i9dPZQnWcfDk81Pju4Zlpam7aAYg/031aUz2O3jaVvDRJrCg
	 tquoV70qnjuyd7EAx2ZTXWKQeHbhZOZUKQoU21AUhX46MgJigDp4EhPf9JVYN2iPYf
	 lEVJf30xjWzYw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B59441E67;
	Thu, 11 Apr 2024 12:14:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C279B1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AE74960862
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Eyh5l_uiuEv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 12:14:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A663A60749
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A663A60749
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A663A60749
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:47 +0000 (UTC)
X-CSE-ConnectionGUID: dj4bN2diQm2RwBQ+GIFQVA==
X-CSE-MsgGUID: uK9eGUTZStysWHPod8RvxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8417371"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; 
   d="scan'208";a="8417371"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 05:14:47 -0700
X-CSE-ConnectionGUID: cmoC8N2dRG6eI1DiuWLQ8A==
X-CSE-MsgGUID: N0S7Wyx0SSKcZ4Mb110l3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="20887187"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 05:14:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 05:14:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 05:14:46 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 05:14:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UgGMsIZWC85PhOVa06g0a4llntEfgh9OFGiiBlE5BYQkcgnqcPYG9NJTJOlA0vv+wTB3vZbWF07LVYyAJDgO+YN6rDucV/ga3kRZ54/BEzrJhLAPrIxOeHy1ibCOKOO1TsbrKlmdwyShP4W//3oKuWfG7cWSiKLBnK+qg78HguexKC/zjBKonK3UVLd7ThVShk0QvPiRHyNfUhu2jDZrd6vHUwuc+RsCgUUNWX3qbPsGRvAn6gsJ6Vl3sl7/g7VAlm1oVFja/kdCx9Q64/Epe+FvnKbdOHVmPb7uzfzysO2NArCvyNz7/FEeU8X4K0jR9ymc62e++jLBLumxVk5pNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=baqBrGewn34sGHuYq27BDGxs/j9wrTOPi6BRMb7vXUc=;
 b=eTikC/ste/MlyLET7Lzs8fArIISQMoyeQsPNmDL/FbnnSsqzbX56LMp0uruWiOaayrShWtouDfo7i2iBuBlDqgEk4XPiO4huAfrld9UVzJDbOhcXDcyfdy8/4s/gJ7/VMv3YFho1P/uoBrEWa7ZjbndurecgCBbXC9B4wzk5Vsd1IrlVTOc1tRHzPIKznMGilcKzcuas3quTOKHqMw+pkC29yijpjvw60c/7StbelL6AZi8qoZOSB8b2AEL/Q2+KG/IWz4QE50AgHNXCB9l+iVyriY1RE9w/Z7VXhszeiIemKNDtD3jcPVLUGFwUzTlqvq5NddCbc/yix1CX+imztg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Thu, 11 Apr
 2024 12:14:42 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7452.019; Thu, 11 Apr 2024
 12:14:42 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 4/6] ice: Enable switching
 default Tx scheduler topology
Thread-Index: AQHahZ08AKzgTqI0f0GCc1Ist0sVwLFjBvuA
Date: Thu, 11 Apr 2024 12:14:42 +0000
Message-ID: <CYYPR11MB84296B30E863B1CE12E05046BD052@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240403074112.7758-1-mateusz.polchlopek@intel.com>
 <20240403074112.7758-5-mateusz.polchlopek@intel.com>
In-Reply-To: <20240403074112.7758-5-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM6PR11MB4657:EE_
x-ms-office365-filtering-correlation-id: 850c206f-8ccb-4814-0407-08dc5a20f80c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kPX4rECqLLRjvNHBdZYYztHUYOG8gDgfTu37DKTXc06SB/aj5qurJfHKbx9igxyzauWaxyWW5s1/e1QNwqbRfmCkluEEJnLRMzxwaCsMMadqU0CpPuTk7QaZ1moTslMYDlZ0W3dIZ2qzqPhAFBkvG57Sf2fuZEls99jp/f3/e8vUtfq9h9xHLD2qN1LYbVXc61RTfu0iMYF6aC2i1QS2TGxDs9ESlJwy1DW6SpZ0fhwc1NLvwuNl7/IVrGLj005xtMYVIjAwcRrGUyNJ+o/eTV44MVpG4RP8ttuMLx4X2AktGFQDRz9W0T4562Ah4LRqcleTbdyUF2ZWZTPcvitZXpddsFeC7PVp1e+OC75XTNz84lBp8koD3iwoxXjWEJoCnH20aCb5OiU26JN3tQv7aEv8mDQGkdhF4YmXn31wyxCZv0PzFNjz8C7z1xRnWbHjGQD8fVgJT+nWrla0Fe7cyngbgYsNL1pRpvW07GtNgIDpXSorx/Sr8aDfywkRMduD1ePUhc57iQPa3R3FHxkDpp5BTYYvyTd07IwRUZMqniaAp7SzPzD8ax1UwXnfhleZCcknLkblMmgJJp+gXXkilANiupSNIkIFtXpPv54Bv21kXijIgL236qLwTFWYBwc7h8jXGSSO/246RoEfmjUfUuf8BULnE4GZchOOZRGDxt9RAeXangWI00xoyAPtiiGESce3sM14Nsd2RrQkKKYtR8+NKbNE80ztbEYKbOF+fzk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CSYiKwFo5gr7bX4xF8b5CTFYwhg+XYnFxC8ruZLaQAx2T5ZVHmUmfOPan/Xb?=
 =?us-ascii?Q?omg0JeMPkw9SsK0kyJfvqMn2uZvyJRnT6vBA6lN1v/Yk2TSfe/sYK+FxNwYg?=
 =?us-ascii?Q?QUOimYEDOmEmEyRn7N3aIn+vq9zQFWP7wu9moq11XtBtj09TJ8tvtAPhTTAV?=
 =?us-ascii?Q?q/U1ixsm/iBKC9BLXOFmjdbX4bcl7zQ4wcRJMbCniFMGVmMkRxMTd4PO7CJm?=
 =?us-ascii?Q?k5MVP/Kz5lCVvsFxar9ETlnwPaOtCcH/mQr2QmMceqfkgK8lEG+rm1I0Hu2x?=
 =?us-ascii?Q?6eJ2J+oSDRGIxGhXhKZyiftrlIfecWrig97D3FTJDigqmtO2pZctXcv6bDm0?=
 =?us-ascii?Q?yrNF5oLPiukNf24nk2kTFvwjbMkvKx/copdVrF6PKN7x4hY+ddkz8VTthy25?=
 =?us-ascii?Q?UBolk6/Wjj9/NNa5l8Mig318aiXXBG2W680Vs0FEccf0wCytMEZuB3SEiXzX?=
 =?us-ascii?Q?C1BNz8YZhte7bkZL91tw/OTlUWIlkiw7uLptmkjLBEkbXaznn1N3LbmttKXR?=
 =?us-ascii?Q?Dv2ay9jXsvB6M/mVzlkc8cRs2Yzqp7s0kBj3x63ICl2sv5+IotwjbS0s8Lap?=
 =?us-ascii?Q?BSkLsOeJia4hG6SRW2Ehf87c8699q1EeNGkb0ejWubQX7mCrOGSKUlUOKKRF?=
 =?us-ascii?Q?7jvxkfddAc7E9utakycAfQ9NMUfmP6y2AErKzGsH/4JxPThXDtXfyyBoQp+0?=
 =?us-ascii?Q?42O1ELD9BitoF540OhO9/zlYrjmQtwbLaDYFdxYO/FIq4cEaDsa5DSbeMwD0?=
 =?us-ascii?Q?fQ+lSvdO+5ujW06jMI5vgbu1g5mltlTIzTs9eq9bUJzAEGDkFqM7WQCM9GAh?=
 =?us-ascii?Q?nTKw35RETQm4vf7Cc7Ds4IdXa85wddomwEooU6JSQEnphc6Lbmg8n5Gu47bE?=
 =?us-ascii?Q?BbHVQkNDIIcYAEbeKCmokxibhG7S+a++XIE5w6k0dn0rbeTaKDdDzSWe0sFp?=
 =?us-ascii?Q?ocUy7ViieKXioGOyvh4iiVyCWe/OAUQkzx3MJpe5J9xK7n4ZQ363d07c5cna?=
 =?us-ascii?Q?uDoE5V3TVBxzcrY6R/r3SX6ISQSfg/gt5Aux/07FyqnMxV0nxnsVEJSMKyuF?=
 =?us-ascii?Q?dFLBkQBbJ8Vq+U/KAD4Hj8Xph1028p7rz11DSIykDs0eAygvgj+20hHMyjOv?=
 =?us-ascii?Q?LomCHPc5v2D+CSKxEilu4lyHy5FoyEwGZuhpIBXz++cAw88cYkSkoHVk69kT?=
 =?us-ascii?Q?gJ72dwFCIoP1u8UckUtqIeaXTv0mHKhRl93Fk88jsnYmKik0Z+SsGjHz2ihw?=
 =?us-ascii?Q?v5gmvZmooJ/DGnaoz3XbDWohQQPTBrAux293ak8axn5/V2YZsBeJetKeDGXz?=
 =?us-ascii?Q?HyxrFj7EreijvDaz+pjNY4lk3Z2nJ83r8ciQ6VDK6t4ba6sYw7/cWNFSpRgg?=
 =?us-ascii?Q?HunEoorl97yWCYdCwfc0N8m3ZSh6gQ342bbVbu1sh1n8qD0SlRNwOgz2wEMy?=
 =?us-ascii?Q?teuDxAkraSIJxDSlKJbYcA+xFWG4eUVAbhCi8Tet3ElIHM2itxluUMlxj7fB?=
 =?us-ascii?Q?TUZIdzcBo6lPzS3BhMajS/fFdH/tecLXtcIK2DpJQuz5bVAdQiYWhOQeLHoJ?=
 =?us-ascii?Q?B0lkTlBElCVKrXUD80YGdChd812I6HAjta2rq3XBVmL7oNusiy7bWDBT+aOw?=
 =?us-ascii?Q?jg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 850c206f-8ccb-4814-0407-08dc5a20f80c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 12:14:42.6577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KrJYJwaDZIcyHxrE4IYtGro45Tf1F/iDxH++PbaP2isGYUlDLknztVXTn9Or4yeHGsJ5ctrLmI0zh7DaHDnC26YxjBj9lEnWmmZsknyKnPskUY+31g5jrENQ81TUFd8m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712837687; x=1744373687;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8eD9ryo4/ZOUVCzRWeLMHKQIAUXRBUDjc1BfibzAA0w=;
 b=SO4jUSgubeBo2CnAlwuCSLbsMIXwZSlfxIuI61/89/kjoLQU7WrqBGYZ
 yObkhd6SydrAdFqa/gF4uf+oqiLNwJJgWOKyg81JiZBMybLp78KY0D/9f
 fBEQ03MxaqOgqzxeFcG8/TXVdJfWRLfVk9bgbG2IOm+xM33LM9dEm94CW
 O0fhZJjecUXTSRkVZSMgeltEjfKEC/89f/zQRCMBAXfS98xhpXbi10WSQ
 aKAM0lA5z7Uo0KwQkZgBrFN2yqGs0VCKPKHzVh/EOCzYdEqtbJgnKWdwM
 112to1nIn5dpiWIcQ15lPCgozLxfFFQuHVvSYALZCHQMmqq6IfQzReh6i
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SO4jUSgu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 4/6] ice: Enable switching
 default Tx scheduler topology
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Raj, 
 Victor" <victor.raj@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ateusz Polchlopek
> Sent: Wednesday, April 3, 2024 1:11 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: andrew@lunn.ch; jiri@resnulli.us; Wilczynski, Michal <michal.wilczyns=
ki@intel.com>; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@v=
ger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>; Raj, Victor <vi=
ctor.raj@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; horms@=
kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; kuba@kernel=
.org
> Subject: [Intel-wired-lan] [PATCH net-next v9 4/6] ice: Enable switching =
default Tx scheduler topology
>
> From: Michal Wilczynski <michal.wilczynski@intel.com>
>
> Introduce support for Tx scheduler topology change, based on user selecti=
on, from default 9-layer to 5-layer.
> Change requires NVM (version 3.20 or newer) and DDP package (OS Package
> 1.3.30 or newer - available for over a year in linux-firmware, since comm=
it aed71f296637 in linux-firmware ("ice: Update package to 1.3.30.0"))
> https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.g=
it/commit/?id=3Daed71f296637
>
> Enable 5-layer topology switch in init path of the driver. To accomplish =
that upload of the DDP package needs to be delayed, until change in Tx topo=
logy is finished. To trigger the Tx change user selection should be changed=
 in NVM using devlink. Then the platform should be rebooted.
>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 102 ++++++++++++++++++----
>  1 file changed, 83 insertions(+), 19 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

