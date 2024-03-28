Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B80C88FD6F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 11:52:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DB0060D93;
	Thu, 28 Mar 2024 10:52:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2kKh5-Mi5MMZ; Thu, 28 Mar 2024 10:52:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5E0E60D87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711623127;
	bh=OVUAo63SaBsk3QLkyVrWvMDhLcS/Tnueib9GHc/cX88=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KxcHuaBcxm5x6WyPECgvJe3jfmDsaEYQnDbD3h7qrsLTN+f8BhsyZMmeXHrXk4MG8
	 ABSs5UlVpI9INOQfpmqocS9pDZa69LfFBjjwrGzNSIiYzV+r9FoBTPbj+5krsSzfiK
	 b+3DWhIFUOfNJP+j4e9RunrmEN7jp4KSAG0rd7SVqokgC15bd9VEchYJ849qcU16Ab
	 /oUbVLyk1zkNbOqxVlwYLXWv6Oj/aLhWHzFMDJpga/HwblAhIEAuXHcmvGQ5cGCx/s
	 lfJ6E79wB8K2QW70udp8cLG7o/DKax0uIFWi6vs7likMb3auicXwbypfQv02k8ISVW
	 Tf6eMfBwOJJTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5E0E60D87;
	Thu, 28 Mar 2024 10:52:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF7121BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:52:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AACCD82271
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:52:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5O_YjoSTu7iR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 10:52:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CC1728224B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC1728224B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC1728224B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:52:03 +0000 (UTC)
X-CSE-ConnectionGUID: hpJgd/mDTVmTQUQLarld2w==
X-CSE-MsgGUID: gEPcqqxzQW6CITsuOXsOnA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="32171815"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="32171815"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:51:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16631764"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 03:51:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:51:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 03:51:38 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 03:51:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h33LHzY9wq1EoOcXtPn1MsTwIiHYuRvP+XVpdOiMfj8er5EOaX4Fuy/jUq9j2zjajntLWSVq1W6hIp3WDwVgTIQjN3NCj1n56pukQgvkRD1+kJ0uxciAYwQ+b6ysS1Cw0nfUvQrOrpXe608M5YjNkdbYar2bAJhIrOwvEVxK/hMJgJImne0HrtaxLujxwp1WD6yUKsnw3Nd8eFec5eJW3V0+6eqdMrMVKe9VKtTdtHOWxkDnRrk+6QXBaCqGNB35Ce55G37lRLVX19xHMGfiXCSKpee2hI0efHaOj36X6M9S1Xc9ceLX8xgiivGPgbS+omAa7GLGLDVpuA9F8IIZEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OVUAo63SaBsk3QLkyVrWvMDhLcS/Tnueib9GHc/cX88=;
 b=F5NgWOW4it/5CihD+rVuAMAdYCWEDDE3D+5cEWEnqTXpnm31ICiX2LVmiRRzpyy5juNOALcjE1fUb3hazROVQaVzT2yIB3SmokjR0a9RKKvSldlJi4QEWXdw6Kl6ww3JNKeXlEzknHwf+EqwCioq3M/TSa/un5VcIYheKOsq7da11xTLD2SDUlzaaTp0a2WAKh5YmOOcAhzL7+hHfrKRM9E2EFPfNdKg+htIxnx1KmYWF8gwQqvRXFFwwStmTzRx8qSLNXUl2L0ex3SA93jSItzbUZZsy/4nuP9KverjMKw9aSxBGQEJRDT/VEiyms1y5ecGJy4SlyLLagfpz6EKnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA1PR11MB6100.namprd11.prod.outlook.com (2603:10b6:208:3d4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 10:51:36 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 10:51:36 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v1 3/3] ice: hold devlink lock for
 whole init/cleanup
Thread-Index: AQHafvu94nHmIdcoKUmAf1V0x53DmbFM/Y5g
Date: Thu, 28 Mar 2024 10:51:36 +0000
Message-ID: <CYYPR11MB84295539092404CFB9153EE7BD3B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
 <20240325213433.829161-4-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240325213433.829161-4-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA1PR11MB6100:EE_
x-ms-office365-filtering-correlation-id: b49fae4e-f7e7-4202-34fa-08dc4f150a27
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8stivQwuE4EU94p7HJR8aeUNHyYDXPOTgCCmOy4b9DG1GJqhbkp+HkBYkcR++Z1oixhzciE385M/nH0Rkg05yCpZocn3ed/fpjUAUM9epEmvv8yuM1IEIe74thRDlMJnUFbCS94t0tP8J4MZdOEsW5d8TlGahXwk2FrXm4pWE4C7no8nv2GiQe5zgh5rEG6m52gsX68vfYQApQCGmBrhkon3M53j9ZWSLsgvcwf80XxfKHmUK7kj7NZUmJ4OQ9R83lqXC5j3z0/zsae42Wq2SMyhcSn78JPVLhPovYV4RVSjMatneqaxEJia598kp5TRsot3iniS0qKhVdra1H7dI+h3ZGY/f/myvOZl8lXrv9PvIa4H6ZMgrl/+2ISq1iS/vLXmRGbZiTqr7Jk8q6xa5zjl1MBz6ZPbe0Zr4hHqBrrDrkmNWzoCcF5LCdlo3GfPRE0qJ+OfnK3PJJcr89BlQFh3+RXQiDI1s62tuiH2xB5AaTkYe88wlMxBy1i/rbDtDHrthx3LFjpg/+rzP67kubb/Zs0iFUWlSdBzLVhQv+QmGd3SeNAAZZQpCcHMDvBt5LOXbqoOI9gj66+bp3FFxpd5U2sPxvufvpGYULuzJZKcWLUG491Qvi59wgJVq7Jh+fmOiI3joDIWzRLa9Mbi0Ob6BfRzMmLb4afjs8MOuSRPJ5+IOHa3htZ+3PUWIREwpQVxnA+sfyvpg3myWmI5ug==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pLgAfEWR6Ei8wtxIA2KuaR3rC+TuHk7IpsRRC/GhycAc1GtmL6EK4EZReWcC?=
 =?us-ascii?Q?YwEbRS/g4mnutmIDOfPolfsD8mkZjCsQzgAUb4AbrOtUDNBA00qjsxfvuscN?=
 =?us-ascii?Q?f3rJ75MbmCPlfX8GvLNFjX0GdDXptaG7XPsTMc7JavvxmXCjVrxDp0JXbYfT?=
 =?us-ascii?Q?Wvx50HRHrM9LAmYbK4u3asfF59ifTuFJZslX3DO48W5RlQ40OLrt+6PB54p/?=
 =?us-ascii?Q?AadGmS0Koz9VY+f0UwE+vjvh00/2ZX6pVAXXK6nxjCiPwefWoSoJhjheBhJv?=
 =?us-ascii?Q?SCY6uWpnHCq59/2emVhSUQKxmkVBHbuGN2+AEIQOKj/Lt4YqS6djgjaeo4q+?=
 =?us-ascii?Q?I3qbdjLDcc+7tCS94yH0aZhC7OdWbyKS+XncphmUeLC0KQkEyf73FRQFsAPR?=
 =?us-ascii?Q?BcGrCpkXw5uaQOHu7pUlvz9yBwOQrQTogCgmuVpOGbouWbFnEZavFvEfqCxs?=
 =?us-ascii?Q?ll4Cc8TvefxYMmnBRFapZc7kK4pg1IWenCT5g+AKWS0mgkgu0p7eMwhlJNoL?=
 =?us-ascii?Q?5JCFyuvqut8FYB3bhQGZ4YZUF6QliEZSi14O/l2hYLwAN6u6w/hJ+qAHgq9l?=
 =?us-ascii?Q?tnpjkZOaWQz2IScNO/okREFGb9iL8j8AlvSd6s7tn9JnZDWzKiouApgh5IT4?=
 =?us-ascii?Q?yCl1Xxe1zX+L00GZeX0pgAxAE/PIVVDik/uQTZ3DhNMT7yK8TURDADFZPGUH?=
 =?us-ascii?Q?bblFaImw/hL0WkjmG1qZ4MFT7BZvFZiIvlaq+6BvYnSpu+qkTUf2K2N6STLM?=
 =?us-ascii?Q?z5VYO3tYvZea1SSbMcnu8xWrlSIutTSBI8FQ7JXAY0gMSp0AQaKVHcm+cr5a?=
 =?us-ascii?Q?h3OHFgM9lCJXaSJZdjpml1fdtMYsRCUY4KHQcpJ50x1nlD9JWtuJtmUB7Hzw?=
 =?us-ascii?Q?YsUe9LcfBtkS9D93wkDMKQ66O9qR/7W5ZxImj13LPPsLZ7cOTHdao0p1amb0?=
 =?us-ascii?Q?SIh8PIDTG+eucJP7O7IZ3SoAweHeBijXsvqJY9BLjYe3k/ybjY2IZeZZAJjp?=
 =?us-ascii?Q?wi/RKRr57l7tvvX5Rx3B3Auih5nK4DcSsVQ7QnaFXzNS1zWbfUt19DxCPq27?=
 =?us-ascii?Q?gYOcGBKI9sJOPWhorILTNyJ7zHMtlA5loSI5S00/kmt5PmVgxtd4PlkNnpVD?=
 =?us-ascii?Q?c2CJqw8qU5p07jCHfAWxPlZBEvpCVtRRBWn3dxNJaCdTCiogVuf6cGn9Rk5d?=
 =?us-ascii?Q?WvVefA0ZRxnwdS7u9jDd1z7RwhtP7Yp8HZ/xoV2pM/m6O6lgtz0+dpxnMWLW?=
 =?us-ascii?Q?9m3mt0ZtBVvgKmYDbbhlGGeTxm/dBA+oZV2imRXhHs2+9niEWjJynpKa9CLE?=
 =?us-ascii?Q?npXBk2QKiIZCaVOTfz5mY0qxA7Nhva9VXeUSDJFCU2Yq5gOc2bBh9gQT2sxQ?=
 =?us-ascii?Q?olhHok//r5bSQqcEpKiyWzQVCzZ2hChsRslh1YC8l4Ft/1HPd/3qNt46e7nl?=
 =?us-ascii?Q?f7ZP3M97d6Na9ESsNxDoxRyBM1gg8oZ0tqVskUmXdESsV4PZyuSz3aZXLl56?=
 =?us-ascii?Q?ubw8//yaCVJfcDDfNBTLvoXyxfe3XbyRbFtJW4J1I5vPjNAnR3Xi4oHJYl2I?=
 =?us-ascii?Q?4eSyGMYkpET62Db+uCXZaSMuEeUdbpoN/O/fmjtpFjZ0Z4hlaLDie9FyKeh7?=
 =?us-ascii?Q?2g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b49fae4e-f7e7-4202-34fa-08dc4f150a27
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 10:51:36.2534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jJXBUnQcKD8lllywUvVnLDrA/ZQ9pfE2eIQ7tnKciSLiGNwNizX4SKhmRKFCb/SddWh0NN9A9w0PHEKJ/aqIMRkfz1tquTnj+MWjETSXPHkVUtgsJkCxHXI4a3E8ac/E
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6100
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711623123; x=1743159123;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lVpfOvZXhYqTLs7JA96eZb5rHf4F4XzdDCfUFLSha6A=;
 b=cefatPVnzO0nebeKRGZ9fE53cum9JbRDRfOt6Gh+/y7EyJWn0aRUWZxq
 ElUh7/qruKoHqUrDUlJfzFLG/6tSCjFv+vjoKfZBLux81iwdjiNWedLV3
 GW9Cj9IM9wu0yEpC0SfUhP0w0KP9tdM5LGPrYXv40ep3c2CJjPX7WrYl8
 BvTf1hSWV9CsMQO5OXJ3Y0DjYh/xA881FeMwG154CZQ5eEZxhj2k4ozCp
 8AVLTII4sIMUzeZXRSAiTUn7wsh60EXg44QncO0laPI5Dq90P1MbXuRSU
 EsaCBX+hsLRUfKfa1ZYya0aAUnt44lkDlzCMAtUHgpe0HIKQfmdxfcr6/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cefatPVn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1 3/3] ice: hold devlink lock for
 whole init/cleanup
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: Tuesday, March 26, 2024 3:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; netdev@vger.kernel.org;=
 Jiri Pirko <jiri@resnulli.us>; Michal Swiatkowski <michal.swiatkowski@linu=
x.intel.com>
> Subject: [Intel-wired-lan] [iwl-next v1 3/3] ice: hold devlink lock for w=
hole init/cleanup
>
> Simplify devlink lock code in driver by taking it for whole init/cleanup =
path. Instead of calling devlink functions that taking lock call the lockle=
ss versions.
>=20
> Suggested-by: Jiri Pirko <jiri@resnulli.us>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 32 +++++++++----------
>  drivers/net/ethernet/intel/ice/ice_main.c     |  7 ++--
>  2 files changed, 19 insertions(+), 20 deletions(-)

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

