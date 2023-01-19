Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D526734A5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 10:43:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6272822A9;
	Thu, 19 Jan 2023 09:43:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6272822A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674121393;
	bh=IgSM05GioyykUYCfQf0cFHgRihfKNpCmee703F1boz0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cT1M9pv6yPeNkYXW6pcYUY3pj1rvU0l9OIcVCozLG6K9i4TA2gOdjecOOS3pIUDBl
	 6KcYeZBHD9Q+OFOU+VQjJrlwr4/P6ZXpMcA5YjN+1UMjGE3PRcCimsbnSTgSlPybpK
	 J0zmLIQMA+gtybGwnY+tVth4iagRI40uqFqM+hKIUDSgGmPJwxYieCV+TMPPNTV78i
	 ZPuqyCcBjfdc5YlPxw2LnROfbQmfB8nesw7/y+saYLL77OaHhPj2pvuDxti7mKwigX
	 r7TUZ+K0BoJllFfyFMWrxn+bxldFYAv00hFFUaVIPk5EpsEn0P4d/BzEld948mfGt8
	 0OgZkfmSPj5Xg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BemXvKYjMP6M; Thu, 19 Jan 2023 09:43:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFCF68228F;
	Thu, 19 Jan 2023 09:43:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFCF68228F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 878E81BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 09:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E0C7610DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 09:43:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E0C7610DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJEKyeSbwkYf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 09:43:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A64D6610D3
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A64D6610D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 09:43:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="308799202"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="308799202"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 01:43:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="690568420"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="690568420"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 19 Jan 2023 01:43:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 01:43:06 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 01:43:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 01:43:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ac3a62dvs2fTE1nH+k5urRSlpkWEWZgwUS2WsogAprPvPNSWSEH91NuWfklSANesLNxwACHcDGrvqi8INE8es6D4InUDfMRr/CKABx3EvhRi6h/4yUxZ1lMbWDgpDSpz1yoj64u5b+yRNqGHqRPP6BFs8uk8XVQ3Rf+Aci52/VcuUizMn5f391sL8rm8S+PfQ6TD0XZLvUQM9XNbYKST/lbVQkqQfC/jmpO5ei5gFYjlpTKLFHH1mbFFmHXNH/So/XDdgAvFQvd19lBL8w1OTti0+7W+fly9fw0Z6EogJHOwRohpxLTCYQ+FlFnYFqgSlteZY4lbeX+H2A3E7nK7Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8lUAqeCv7VDJ2jvnDNqxLjSr/+vJl/91RqzQ48xx2NA=;
 b=mVcjfYfwsrMKu8o+7bwIdjyXkuUGS6cB1qx4yMH1mj5TCQ+mTNuzxFdHHbiMuBBRwIijp/EJOzA2gO2gqqKYtHuO+tMfkiiaX9HzigqmLKwNuYOP8m180Wgf36MXXCNBnl+pljsUQeKlTHAdia5e/Q4WpViSUQN6q2ur51RXZWHAPIc2bfaJn0kC3fk66+cRxb6Ga4Vf1GDb341NDbVyJ4vdCZsTkBuWpSX7Ast4hWs0LBKCRDJQ9HyU5CjJDUl+aS+IGTIDT3boVqh69f87w6auwQxeHoie5wIy44AlJBdN5Ud9WufL3h8FstgbUmMmsGlpcDHt5J33Xv4EOQzagQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5358.namprd11.prod.outlook.com (2603:10b6:5:395::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.25; Thu, 19 Jan
 2023 09:43:03 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5986.023; Thu, 19 Jan 2023
 09:43:03 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: double lock on adev_mutex
Thread-Index: AQHZJa5DdxLiG8Q7YkW06siHZRwePq6liVBw
Date: Thu, 19 Jan 2023 09:43:03 +0000
Message-ID: <BYAPR11MB33677150757C4B89B3A45B55FCC49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230111110111.20099-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230111110111.20099-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB5358:EE_
x-ms-office365-filtering-correlation-id: c16c3bec-2bbe-477f-0442-08dafa018f8a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5d7ZJXOgt+LO90Bv1RNhxtCg+Hym1PiTQyrQNL+N21/xY+vfQUj2+1sueSxdPS7RiGyiLk5tgnvUrv27nlCXHvxfDPSU3x4smbk7C4vdGblAuFwy9ZimofjoEH6BqqlvnrRwCbuyTLx4A3BukJvapqXKTMKLgx0qIFnx853BhEBoLtv2ImVNeF2XywTrRqnQbwr5tZTgYnDNQt0mJfWwSZ/UdI+7Omrc3uNE/9Z3KgMde7p/Xbf0IqoIqaTwZXIFdvpTxU5mPcmx84ZqbzbqvD2FsyzGLlRM4HTyYo+P3A5oqfKxlWI4snB+Ayy4b6nGJq08N+mbH3notdyAKI7DIsaolsUQxKZFM8vf0l4gx8iHCsUbEykaajKyiPU26fEpp/roqNZWhfdnfGJ8+8knAGhwF3o8OODx8lC5TDUm9nECRUsYzBuosonMstRcfRl+n9dwVE6p568E/QtZVXQs7aV7b31fkXC/fhi1l2dqxEPIEUE8j2qfW2O24hTI3FqH4xmGnmdQRDqx8MivKsN8NHD8LO71maQIJsX3YU2sgb8W5VAsXyw7dYnw+63lHSJdEakREpWcdMiCIBPtgT0ves+qt7mTn3hvCd3NruQ+wa1592pFLrEISHBphfBjJvpWw0KiyTeYTlRfjPfPdXUwI9+WNMUf0Gi7sr7dJ4bLBb7XIrUCGDpreGBLm1zOqXRMGq3237AEChdufJqYp3Ljgg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(396003)(366004)(136003)(451199015)(38070700005)(86362001)(41300700001)(5660300002)(4744005)(8936002)(52536014)(38100700002)(82960400001)(122000001)(33656002)(7696005)(478600001)(110136005)(71200400001)(83380400001)(6506007)(53546011)(26005)(186003)(9686003)(8676002)(316002)(64756008)(66556008)(66946007)(66446008)(76116006)(66476007)(2906002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CUsO4rBfydOKRtaPlz63jgn72iUHBuZ/b2IgBuK9ucT6uiuX84cg55bmPhXm?=
 =?us-ascii?Q?EY8VTI0THivXafsOICUZsSHb4paT78jAiHNULCCpsRKY5tbGs5HF3BDtTtu0?=
 =?us-ascii?Q?bJ0SJjN0LxnWl9LGwo+nYlGSh0K7hnKg3NUP/rIh2Ip8q9ShUHjzbvA4lajn?=
 =?us-ascii?Q?RO6LotELbmloKMwDUDzO13jb855hnubYs/+jP4BIRLTSLv8jtJ9gOoUWp1tf?=
 =?us-ascii?Q?400wzs2k79Sm3UMFBvhg+kDOJFnKkSceQSqVfF52UWua/CqiAWhd4M0Oq2g8?=
 =?us-ascii?Q?8RVr+49/MjyEq2QDcowdgb0du53qseTlclZxf2SF5V6JFGaZrE3vpUPlWMvb?=
 =?us-ascii?Q?qsokUwRD02r+nhtZQqvIa4qpnE67OlUKk1XC66JTOWzOFO5IHyQSBy3ZUul/?=
 =?us-ascii?Q?2n/TV1r2zjRRhNprZAYhJpih5pBJDeLL7Ecda/X4UWDZZSfbuOtrkUDcdN6m?=
 =?us-ascii?Q?u91d3zNepzV4OoGswQxhd2t3aTwkNgo+JEw8NkUVi+VF8bnBzuGfe34v6nHH?=
 =?us-ascii?Q?sEVXQCWHVd2mNJq5OCMSg0rIti4jDnZfhquVY4HpUoA88OkVf6wQEpOM7TbI?=
 =?us-ascii?Q?iVXy6c0/o81Dbrhy5XaSP0z4INwpxU4k6t7XiSCydKXbMDIr11oZyNe4cX7Z?=
 =?us-ascii?Q?g3s6e1WyC8ofK9FmJVnk8LzzDAn7nVEYshH2tomVeltrOX1pDUaQMP+8SGzK?=
 =?us-ascii?Q?pW4o60/a5quTSQVlS3wmin+zEqgCMQZczDBhiSSY13kSByciMexNEZhy7nRE?=
 =?us-ascii?Q?L3sq1imm9ceclGbWIh4Yj78sUwV/OOLSC5thuJCNzqbvg/IW/+TXmnHdiw7O?=
 =?us-ascii?Q?kKXae73gBt/0M9SsJR7jTpvpeCFwfxukm3AB2JfO5cEBGZTj6THyYyZEsxDI?=
 =?us-ascii?Q?1AI1F7Iv4YPWeiSV+BiEeFFE3grw7iTHaQTt6ByRqMFDJm8xjHh0GzWWBt91?=
 =?us-ascii?Q?XMwnfVLUsLX/1EwNnFvYjZ91CswOjJYgTZAm4HedGCaFVuwkrYqnKd4RAxeZ?=
 =?us-ascii?Q?fsyZ6H4AvHBlK1OFdlmhR5iSnbIv0MfMb3YRv1hy3CzO861cfWlc+F81Gxf7?=
 =?us-ascii?Q?3ph3AOt3ikSOnMxc03V+NBcNS774Ayo2lj9httOTi1MRk77QGhdlNEwYa+wp?=
 =?us-ascii?Q?mcBJ700QPBvX0VTNajvCRIABaiXAU8tI8+Hy7p5G0vwJpjZ+u+PhsSLej9MY?=
 =?us-ascii?Q?7k7bYZVnTQaNfTlWZv8kI3PFJpQL+75HoQdJ5+njblbFW1kLfeBwcrBNr9fn?=
 =?us-ascii?Q?QdUJlWJSJm8aTSjjdLc9S3Lmm87L7aYDHlFezDRa6XQacvhUdgobmP8eqkTw?=
 =?us-ascii?Q?8KLBPmaSISKyVpcuFIRVlyDTRBTjDJoZc/Zfuc5wtE3nuYPpTskAzJKbSDxY?=
 =?us-ascii?Q?ZgVFyZkcf8VPV19cdI/Mc0AZIwUF9Oh+GB820V69vXOJ1C5Hp6kH7nWhVp/t?=
 =?us-ascii?Q?hv4KkiAXKpUL6bUvFeNRuhwh/NTp0VmWSABU5DymqAm5M9Uz4munr6NaWieK?=
 =?us-ascii?Q?VSUzycm3HoD9GUdKyA/lqxoJETKs1dWSbFNjqxkyhxJKpOO9JjWD2Pqkf8TB?=
 =?us-ascii?Q?xXDuw9gIjhCU03CTEELx40jXQbq12zXEDONkh5pc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c16c3bec-2bbe-477f-0442-08dafa018f8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2023 09:43:03.5976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nFZBAIPd5WkDRGyXrCEJ7sSeyNqYvUR9+OxWlLwQTpYM5RAWXTZBoloEgTRSqxh+O6i8IreNlgA74ovnaGP9WQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5358
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674121387; x=1705657387;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=B9qUs0iAlM/GIawfmwpio0AwQOYBH1+ysVHCeJsHl1o=;
 b=cFbCSen1qMAFLlzFI22FpTznxOiNnROPxiIcPm71Mknd1QmkN5lB0rz/
 YYDZFbS32GGBDHBf7p8Z+r1PIY+iL5MZL2eAh5+lLKeask8NIu1p15azu
 ddWSMl93buVYGdTK0435/c6C2pO05bLY2u3bcRFY0DFthpHfHhTXyn3ti
 5upmVg43q6xySQV+2pYdxwI3FcDBwmeZPVYaBM8snXumkoTTwaL2IFXJE
 TvNLkHaFsWk66XLu8PAwt8LWT9T0hCybDyrjABiuPflcfysHALTdJePfZ
 +WZRraw58kMwYQjP9GVy5N5v4mF3M5ZgiTHysmRc86xBxKjCJnqto7DPm
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cFbCSen1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: double lock on adev_mutex
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
> Michal Swiatkowski
> Sent: Wednesday, January 11, 2023 4:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] ice: double lock on adev_mutex
> 
> Call trace:
> ice_set_channel() --> mutex_lock(adev_mutex)
> ice_vsi_recfg_qs()
> ice_pf_dcb_recfg()
> ice_send_event_to_aux() --> another mutex_lock(adev_mutex)
> 
> This call trace is reached when user try to change queues amount using
> ethtool:
> $ ethtool -L enp24s0f0np0 tx 64 rx 32
> 
> Avoid double lock by unlocking after checking if RDMA is active.
> 
> Fixes: a49a2713f00e ("ice: Prevent set_channel from changing queues while
> RDMA active")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
