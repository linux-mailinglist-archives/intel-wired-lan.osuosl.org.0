Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770EE5FAFCD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Oct 2022 11:59:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5694440B5A;
	Tue, 11 Oct 2022 09:59:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5694440B5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665482360;
	bh=LB/d3Q7amEN3/AnQ13IOrD6wUpcwcaBmG2zKEdHzWec=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3cudAlM3Q4pnH82ipQDr8WdgT3N62jgWP65+/DgbIED2zA4k2H8zsn5NO0DPjWKuv
	 u6QvEcsiJzlhICFOQ9uXiPExFVR7QH4DK6yKnwdg8eokIBa4re7WJbEeWiuYLw3263
	 9r8sX3B3mqkshca6GMkjUUTXnMKr0jLEETpavwvKrxZrTFqWjnwzWFTCFqGxdw/AAx
	 VbpNORtOyo/5rBEj5HQ+99dTQtqZiuU8URwbrqV8cX6GalWYH3i3iFWj6FJ4VvTR5J
	 hKnYnJ+YojIfzidbQW0yFGm1/uhIKtT2EAOwDgVy54UIScI8COKvPF3b+QXJcrM1KF
	 JAypIKL40qmAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fG2jHiOxBhzS; Tue, 11 Oct 2022 09:59:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3791E4017B;
	Tue, 11 Oct 2022 09:59:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3791E4017B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9717B1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 09:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E55140B6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 09:59:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E55140B6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pxYReXV2X6k1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Oct 2022 09:59:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BA5440B69
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BA5440B69
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Oct 2022 09:59:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="368626484"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="368626484"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 02:59:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="626304327"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="626304327"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 11 Oct 2022 02:59:11 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 02:59:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 11 Oct 2022 02:59:10 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 11 Oct 2022 02:59:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+0utMBlXgdoJ4p1XgKap6HvTuk0w3ZSBrlKiWVVRDaTLl4tfS/e4sC2Kih44Zm34VKAsV+fs0jWEO2SXJtTlRxrMWHCh9OrwYIZaJ225AgOsfYVre/sEtuc+mSRTCH/2BlAN6+Z49+GVHD7j6Ud+ri15kZa7BSuzxUPq6uOwfDM5u4J7RgHBUZWLH8TBgyRhbKCCs3JSK8bCnIHFrOPStfmtKvnf+k7tG6/t9GHxax2lPk3Hn7NCvG7SF3R4or5cV2U12a/HuE9hRiFbENmDNotry4DjukWB0z7FkYH/8ng4XFxNMw0TolD+wGwKTiv1RSu9IT3gIaIbv5F+8Buaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k0duFcUTuxreZ6mKaSg6ZyYb8rhcD2eTLKHZqliFiFs=;
 b=agGPDgke+aWkMKJ9yADcuUrvq6STNuaCEqM5ke66iGaQGg9c+alT8U2WnSy1gtjpM9D/Vt/b1ceNcEN75WugzXF6gliV+7fP0HZXYNkeWsLSIAGs5pK856cOeQ2NtYrqyWfRFxEYHLXeuScnzl9mf2x6Dz+tVOyferOIL6xSfj0SuRReHDwoo4Hg5RJijjuhkqqK1yP6nDqsE/X9RrEYyjCilAC+h8KI4O3wgJI+pX9WPfAUpblLPV1oRiyaCMw/3RSTzySUjaxlruZfdF8zCKhcsjOW50l3z9N/QWLxFbQAW6AUA0iheTug7Dbw2ajW2/deTRWVGuKKwPpDQ+vv5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 CH0PR11MB5362.namprd11.prod.outlook.com (2603:10b6:610:b9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Tue, 11 Oct 2022 09:59:09 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::bee8:7fe2:4402:6ab6]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::bee8:7fe2:4402:6ab6%3]) with mapi id 15.20.5709.015; Tue, 11 Oct 2022
 09:59:09 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ixgbevf: Add error
 messages on vlan error
Thread-Index: AQHY2YECm1LBxK+CzkmKT1NWxek5za4I/RHQ
Date: Tue, 11 Oct 2022 09:59:09 +0000
Message-ID: <DM8PR11MB562167DDC8FEC108AC899E01AB239@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20221006124408.15485-1-jan.sokolowski@intel.com>
In-Reply-To: <20221006124408.15485-1-jan.sokolowski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|CH0PR11MB5362:EE_
x-ms-office365-filtering-correlation-id: 672261ea-ee23-4b1a-7f9c-08daab6f3dd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0PK4+rNZIK5ykRmx9c+SJgR6yBDQWcYAoTmr1QsDWaM42D0xyQ8PyvJpJeDq09sa81S/SiK/Wm/joMiUdrWcHVY3XZHubsHYZo9hi+hF+0m8hI3Kt6LL3WonOXvA+Ei1OxAx/zk06CXG0EhoOzrJYy/T517rxPc2TdOdZf1ypYBGFTLlbJsCE8bgZqxtALxqoZNhLvlXUO3hBO9rNMm+pp22hs7V+J/5a9n8QbYOHsx2rcpBv14yeOigIAqXMTlnUOzk7MKThqPw9SMA1QQG5Oeh1GMjXPSlRijGkJmNvo1SVgZPVaf0/xtpoT21Jf7BbGJArDebqBaBfVwxql9WVmO9Opavg9iPtqaKf3B9ECo6DEDJ+YOc62tUynp2aF4Mr7gXD2K6L0mFAkTSnWBR595qXQC5g4X3CP9mfcZZJsDkChIvj/poABIicy6mpFZcGQa4/V7A8r9D2hfli2clUG5grAPqcHasLxdpws+lWVVyJngmYcyzbXxpxyCpdeDVNXWnJrkwApn1XvmLtbwyI0koH6ISJkUDjc+AAJ6mpqHoeAYz7h76lWKjgFwQruHfmZQoLbvI5OOt7IsPtP0ufi36WR0bE9Gt3qzDxhShB6x7FXYxhYI92+KfrlFbEJkjQmLIGprZnz11XfgqvUmvRCO8uqlY1OST1CiRGThwzXEx4qPYZTxmRvsV/an08+BNr8SHAsoKbPOZ9pb677coXB5H99Bct7tA4PEVPnLjv7A0UvIEc4J2AtsMLP4srLHfUHfZdFUk7/sLiIjIY7X+rQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(396003)(346002)(136003)(451199015)(8936002)(38100700002)(38070700005)(186003)(15650500001)(4744005)(86362001)(122000001)(41300700001)(64756008)(26005)(9686003)(53546011)(82960400001)(7696005)(66476007)(5660300002)(316002)(478600001)(8676002)(6506007)(2906002)(52536014)(66946007)(71200400001)(110136005)(55016003)(66446008)(83380400001)(33656002)(66556008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oic3EaL8mt3atCa75pzBMsDaKgKicfmwkPBpnmn+fVgNfj8Z4+6+40mOG52o?=
 =?us-ascii?Q?cCNPu0JO+W5Ns47pjObKFA7iyM8HT5QcDQRbdRLXDKSNfvfK1yM5v7+LauI8?=
 =?us-ascii?Q?RXwF6PhuHiaCMc1kJPduyxtSYmTwOUvkKPQdrYoUJ2Y1fxzehMeMchPkioN2?=
 =?us-ascii?Q?PPPVNw9xofw2CJut5RhGTDZdueU4L+ykg0K6v85+nS5GrHxDzUxBpIA2LVSY?=
 =?us-ascii?Q?j1BbrP4Dl94vvuNR5YGKFrno6axTfWizB31f2ApxrunBjLl6t2gDZEyyJr/d?=
 =?us-ascii?Q?6dc+o0V64GJqo46jeljWGCAzF0oQ6S40ybQp7Pdb+vM94dbBVy7zCCNM5yoz?=
 =?us-ascii?Q?PLiYo0FQ+GarUFSNzaowE/Qs283eL7MFi3/NGE1I9cByQ5UEi3XdcB1dSos4?=
 =?us-ascii?Q?tGj2sZN4D4fP1uTPVnpm4+WQ4XnLTkLRaoAj+7yYIkm/Z0aEMwhsXOGnSjzr?=
 =?us-ascii?Q?Wc7w9nK+ImEK1mNhWX+yR6QNHZqzaksHD8wmY1GfaQa3J0sz+3zZ6UItZdNm?=
 =?us-ascii?Q?bivTb1bXsML37vHW1KW5VjMPkzFFfvMV3PpZctrkswuvxTk/NiyMlvteV8Qn?=
 =?us-ascii?Q?oNSRGHDrq79SdjnytsfDZzwpn5dvU4JfC0+utbzQIpbidxbMXIHwHHelGFDi?=
 =?us-ascii?Q?qmLry9uB62xEPMjg3rZq46V9LNFkvDu4yo1XF9lpCFxSNVmk/iTDPi5sFAC4?=
 =?us-ascii?Q?8fHdgX70Srde5iC/KXP8kYWW+DrxO+RULP/tmwtxsZa/ZpwqxV5nEudYbbaG?=
 =?us-ascii?Q?4m9G1s536uRJOZ5ZQocLCtVfo5qlVge1Tfo6PVwFjw6ojy4D0SZWNSk98Nf2?=
 =?us-ascii?Q?P66kHTrnqs2RVxCmpQkoTRJQZ7l0t+mP34HUtH3fulmCEGSdlQVYrLyhzZcT?=
 =?us-ascii?Q?G3l2tC6Zweknn0nsy+aHkWW+9Ihoxs3ta9pnwSoXu4eR2r8lbHF+fMs8/2p3?=
 =?us-ascii?Q?xBy5+EEqWGIM9GVQxMlxZFxOuxvwL7iobKiT81rhNsE0dA1JhGqGln76Rqxa?=
 =?us-ascii?Q?xu/vthB2/EYkLJI7PZCWsdK+R11bkesDE/lXkj7GQzGn3FDIgXhZQcJSExxH?=
 =?us-ascii?Q?OEG8JBzkUTbwwGyBT3K2yMNDAPJxdI9Wf1xz92An1wFFMj3ciwhVuviseoEP?=
 =?us-ascii?Q?I2Nz3yTFg/lbrTUwx/KIoRdGwTnmBFuAOsdfxaehVf3BuM6ZPPisFAlW4iUD?=
 =?us-ascii?Q?dL1FSSmC3/X1NZ73NV5CafVTYooko1XT02ONbJD5wFzR0b/eYknxeSjNmpkH?=
 =?us-ascii?Q?AdRgTVFAnMXxFMheFkUpV4TlAJT4k1mlX4tPH5PjbftN/zGF61unwl/uVBkx?=
 =?us-ascii?Q?Kr7goVA3GXicxf3PwHe5BbOPv3RW4xy2O4+tP/3mD8jnopgjSmwh7EangbNq?=
 =?us-ascii?Q?WGq0kXP9WbUooZpu5qxQ+NvBT+Yyk0QFv0onu7u0R73BUowHHCu73DIrgVOn?=
 =?us-ascii?Q?SpSd5Ok/7BsSl6FdENzWhPOQvdIm/oNGc3R1rg5rSn9UVYzWlKfpWQxWrSLu?=
 =?us-ascii?Q?3kAonX8X0rtGTwiXIrL7fCEZS3xYAqzgKs4sL1fTvDGh5KXi5KsFJ2/XWANF?=
 =?us-ascii?Q?fSWWy4WDvXSrCBPkgpPvMYJKemiemC5BrYqV4r5ag9MwIDduypCIS01V1Mq5?=
 =?us-ascii?Q?iA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 672261ea-ee23-4b1a-7f9c-08daab6f3dd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2022 09:59:09.2802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kFA/HYli9gY2SGUwdAOxo2l5nX/hxuBCpddDPeJd7ewCyYvYFy0jQxiTcRyGrvdYWNwH1+GyIqYtqBiFBjPgOl8nbUOLOWrDKzCuYcjoXAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5362
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665482352; x=1697018352;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WKx/oPRykGnQ3TJRkOv4u8GheCjyxdPVDr8OOA7dvco=;
 b=jkDbRrItcW3pxU8ZXtWjSvLGZKAH05+/PRnxU97p3UVBgnT6+ZhvLkar
 ykJZsF+Z/L4/5SgVuo0SP5xKynt9YFqeUxs/O2mU+RT7ptGTDLk/Rwf9V
 W+0EATYROZYF1RzPJGjbjXiYTySV61PFyTub1x3VjZLMC2NKwiUU3Ni4v
 43iUU62DsddftiQidzRVTfYVRduqKu1j85MTQNxVmnEJTw3uRPTp5GLJF
 7zLcd1WQj27rC1zxBEGVITyHediLZPWur/aEULJq3vEtwdlks0mq8g7Fw
 WFyjOeB0HZjD3k/skJGiyoxV7yKdE1uyBiZsHAPCJ/R0AcR04NN6y5Kzs
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jkDbRrIt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbevf: Add error
 messages on vlan error
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
> Jan Sokolowski
> Sent: Thursday, October 6, 2022 2:44 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2] ixgbevf: Add error messages
> on vlan error
> 
> From: "Jan Sokolowski" <jan.sokolowski@intel.com>
> 
> ixgbevf did not provide an error in dmesg if VLAN addition failed.
> 
> Add two descriptive failure messages in the kernel log.
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
> v2: Reworded commit message
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c   | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> index 2f12fbe229c1..f1e5809f4d22 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> @@ -2044,12 +2044,16 @@ static int ixgbevf_vlan_rx_add_vid(struct

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
