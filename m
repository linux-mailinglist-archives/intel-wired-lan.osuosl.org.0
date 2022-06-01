Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C893539D33
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jun 2022 08:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56FE38318C;
	Wed,  1 Jun 2022 06:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KNjV3WPuZdCY; Wed,  1 Jun 2022 06:28:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5376D83252;
	Wed,  1 Jun 2022 06:28:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC9B41BF859
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 06:28:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D92A240590
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 06:28:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 13Hs1CmsGycl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jun 2022 06:28:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3842540119
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 06:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654064926; x=1685600926;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dFolmVrhnIG7JIKgraHzpu4u+zHyWX0laV0SzrdC4n0=;
 b=Y0+wly0mFPpiSssPSWxGfjQYel2BTx60etU0OXGIPwvwhaZeUG9DAumX
 gJs2ERLTV6qTOaiMCpqptkpUyTGIMhZouSWZyFomdtUP3cfRUb3HT+lhg
 TXxf7jjmOszNlhU4q6C9HfjR7hRfr4omWkWhWCkURImDNBiWUAEM1HexR
 R4ay9G/uKFJPi83GeGIHU2FsZd413Ou0cpOi25GiiX03yCg7mylbtKQgv
 AUvWVJVqMmpgo3zIz4Qjt4BRFmfnzXxQH3NniQn3naq2HLQ6k0oaZLxgE
 Lh66sYO57z2RwU1G6+g6y2tLf3W9TLzLlBTxn6jIHHlO2kj3vP+GO1XOQ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="275567673"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="275567673"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 23:28:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="606093155"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 31 May 2022 23:28:45 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 23:28:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 23:28:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 31 May 2022 23:28:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 31 May 2022 23:28:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZB/xU4BxAByBD/xNHE0wBoZRi83R8ohQmO7hX2a+a93KslilyT10zCSnlNfLVVZ0JI8B2W1gh8bKk++JUO5//hvhedW94rJq5UDOuTNVTXAcZZzQkZ9wrU70LgJ4EhF6npKcjmz1qrvnGn4xZqlN/3h0vfaRJbwpsWN9kbcghB6IKf1vXvVcltMLGgAWnSkDLdhicZgPa/TQF3Q92d3QgrgbGeYdphhcGLdzPkDpt0PpSm5eljsvozQsO4XCGtx3/mT5GdjHaXaV5etpcCebs0c1ejGyDyhUDNN/wJ5sn4f21wqIc8Yh29cYDA87W3Mz+Ly90WrtblD/YZLesly4+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xI9IK4ntvm1lPkeogJDZRNbitbh4vcQTlCrR47vXY1U=;
 b=iFEf4aNDQ53QysTL2Tl4qVfT+LCflB3mrXGckJ/jbv41/ujdZErNM20Si9RB2rOnDCRImHRVaMpgLD1ayh0TXfVGgycAWDW8BfBzMyR4i0CLiDNp6/sUEAZ3302ZS+Hl0oDRYJ7opJb1VRKTkqdkk1yOmyWugHD0zCu5UZxDrEI8Ef2NCes3pmd3SXGD7+XBCzOtJFIRJGNaLjopZBeVL6FsTsV+SyJ2brZN86C01CBRqUj7WfST8Cczt4RtPjf5oqwDc93bA3BaDzuHth97BqGOMIKafKil/WYUg7tqICQP8W3+CsQZ7LB5qN70hWbqJHxNULJkzXXV7PRcSB7Rsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by DM5PR11MB1292.namprd11.prod.outlook.com (2603:10b6:3:7::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5293.16; Wed, 1 Jun 2022 06:28:37 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b%4]) with mapi id 15.20.5314.012; Wed, 1 Jun 2022
 06:28:37 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: disable stripping in
 default VSI ctx
Thread-Index: AQHYdEWaUZQ29HEbQkemt6rqak/6Gq06GNfg
Date: Wed, 1 Jun 2022 06:28:36 +0000
Message-ID: <MW3PR11MB45541AE66B00C50ED19AA2CF9CDF9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220530165122.8804-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20220530165122.8804-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85e7b9cc-4f9c-44b2-cc83-08da4397f5e5
x-ms-traffictypediagnostic: DM5PR11MB1292:EE_
x-microsoft-antispam-prvs: <DM5PR11MB129217603B890BDCE63EF6BB9CDF9@DM5PR11MB1292.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xo16/lWYrfI4LFP9pY7k7p09pI63YoE/9f1BTf0PTPI5R2kucysbkLy7lHA1wP5un/t9ZrKJfnhtsLQ8rOrnGu3L/jNHkU7/XxgVgOzdB93y/ow2weWf2bFnDx2kVXlg7d198eYuaFFgqjQfXDVVky8Eamld7KMnUEXx/N6uoK6tm5KE0G13vSU5jh3hMTRCLrkP5cko+LsAep+KAdVwki3rovqZEnEKMySfrK4TuVI8ISF3RhyA+phf5QGgG5N6W/d9gH2MptdS2dZrsUxOCe5LvUyRm/x4/d/+Akkr9CPk9BoMByKzgITM9CfKcxbPphqQObA/Zpu0fq1malaowU2p3Wy2jzgRHetnXxI3YjYGJp5Dap1xTMNJWCxYD1wxdLDP2LIgekcKhHJ4fH1FEg1PtjTQ8jK4CpRo2csMgIyf1MaPAclm6d8b4IxRhDSjIM9p23N4+wrvPsrzjBX0VsjIpfQH6RQ9dewIzBY7Oh9UdvPSDKgfqiw9Ek1Wsis4TTdMUMDPiKQVCMbNmurwVQ3oUtaVgJQHpsWk6QBdoNVOP1OLt3Gm1gPpnWG+f43OGKxadxusiIgC9jhA1EkxUfsZMWZzCVfSCNbCbq7R8em7vFUt8fYShjDASyxeiTRU4U2zpd9/dijuygRSDH7x+qLbnpTEX8c/JuC/YTlrTEN5mFEUGFfyEr0EaZyfQsytnqhQCbnirUZ/C7cSk1EsZTo6/lyxqhVrHR2Qm5WwTpc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(64756008)(66446008)(66946007)(66476007)(66556008)(52536014)(38100700002)(86362001)(55016003)(110136005)(316002)(8936002)(8676002)(76116006)(186003)(7696005)(33656002)(82960400001)(5660300002)(83380400001)(508600001)(122000001)(2906002)(38070700005)(9686003)(6506007)(26005)(71200400001)(168613001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WBGoVAFiDLdrDIwEgGs82s13baf8p+h7TkaCdF+q89CcpICVBgkO0H1GSexX?=
 =?us-ascii?Q?Migd6t7wx3qGKg5Fn7wtQu2NXb+Kr2khkxnm18Vr+XwWxNrA8iuDyc5Tu91r?=
 =?us-ascii?Q?DfxteBaCGG2190HJDccyh7GDf7AfGnsCA1VrxNpsc4fEMDdGXoRpOhVJz2T/?=
 =?us-ascii?Q?j91DY45uSKkZ8wuqjBLZ3F+bPPUWbMlTnkzMFcR8xiW1a1qHlNMhlkWfgfYQ?=
 =?us-ascii?Q?EkTkzuAIda5DH3ep6Qm8mVKP7UQ1RtseeVW4wDZvDYrATUAucOvnmel7eO53?=
 =?us-ascii?Q?2SmUGsXrkVTLFq07o3QPsWn0rf9ZmG4dGWAuFIF3D5C5TghthW5PQbHWzXCS?=
 =?us-ascii?Q?Cf72wj7Fu6fxFHvqhgla4i2VP3qghggQ95S0WV7l/Gg9iMcfDW1MKjg+qciM?=
 =?us-ascii?Q?9lYTzrxTu7vrt7I7PV2zXJMYIE9QNLgP5XC2rGJ2R5Rp4pxRbL2MzNs0+Tqw?=
 =?us-ascii?Q?AjGnvGMsePfKjlvhaBYMjoI2n873Vki7WlCXOdVZjAUwUPzCItkDp/Po0OHM?=
 =?us-ascii?Q?3ik2F6w/HzyvCVDnyfMBZpC/ewOzMWGsA8ENaX2uXYMTX5B9Ve5C0XmrBvx4?=
 =?us-ascii?Q?vhEYpEPFr946bM6tLWlEFzhcb23766Ahh5pWJ/34QhBZ1ML8qJkiAcVQu300?=
 =?us-ascii?Q?3MHU4PcpI04xK5wmNVShliSv9QYbMOj9G5Zzyoz1L2UtYIdT8mlIGxVE4Ma0?=
 =?us-ascii?Q?JiV667SY8S41khcP7/29jgyWWf3dJ5Zm4abi8M655KW8K7ZSrp7vZfBWIRan?=
 =?us-ascii?Q?O0k0eQtmAhAjLWKad+8gbfE7LACudH6a63G+F6gsf4GOJ4dQFz4VcBGTKxts?=
 =?us-ascii?Q?UsrBfWViqhST/1MPT/trfTIYBs4ibw8i0dk4Qz3LmtgNrjQU3V7UIUSdfBj1?=
 =?us-ascii?Q?m0eEkmjyBKhqmAHxbEo3B6/MhNXA5SnDHt9p9TlzAVA+vzdu1dg3x00FdTLV?=
 =?us-ascii?Q?j3IxnBylPtUFzNLb5yhz9OQTdkfgxHI4E7v2AycTFQFeo8HV/Ir3cyWgY+Q1?=
 =?us-ascii?Q?umDDEfaEyGKJVCV8rYliE9QnvziLfeOC6GYOHVsiWjqXWhDxKOWHSSTCf4VP?=
 =?us-ascii?Q?Eu7hnVwmjo0fcXluBY4JdfliSsM+fOjUGWWnSNGfqlL9qI61750DjjHp5BHJ?=
 =?us-ascii?Q?omJJHf53pv+AvCFjA0FbP7zRN2jHPGKynIF0CjyvY6t5RrcECq5PemwQgGRh?=
 =?us-ascii?Q?+nq7d0k5HaxrW+PPPNv6c+bxl/4hwAWfg1/5Qek64wJhcl+F0CU6jFRhgTCd?=
 =?us-ascii?Q?VLQZAd3oWqVK9SV/k+kwB6Lp66IZK4HwyfYcaR9tF7EZpNb3gws/tFjCeGi6?=
 =?us-ascii?Q?ttIUW71PYJiUSwb22YSDKh8frBXS8usCHCCReythwFLYXNIGEkxOh7Rvbctn?=
 =?us-ascii?Q?ETcZOVdmjUyK0pSIBx/GZrcPl8TN0ib4AF6psUj2gsfvtvQgqAR9XReO2fJr?=
 =?us-ascii?Q?oZ5IIhK1ddwjPnLKwPmbY5g6znKq+bDbNtCfRkIELsJXG+iL13FVk20aWhhb?=
 =?us-ascii?Q?Su9g0brpOHJXRX7md1YFnccaacj0NjnU2tU8QB/q28Q/OCyUsbtSfucXuB5W?=
 =?us-ascii?Q?nzbborI/pkmmvgeSZsuJNEpjMc5opUxMo95MTc/BM++tbVcaP4fruQexHPgL?=
 =?us-ascii?Q?fynLzS6V4GpeW+i4REOMRVZS2hmJgpbwp3QgSUAuvuMOhaw/p22IfijDL72A?=
 =?us-ascii?Q?WJ34LAUOuls4GJr9Hn6Zye+odE/ELthLgS5rRxdIXtV3cxULDu27/wPRrtAF?=
 =?us-ascii?Q?Kim52PIOf2auJMX6Izvq8o7T8HRrI5w=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85e7b9cc-4f9c-44b2-cc83-08da4397f5e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2022 06:28:37.0166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t9XXcp4HVaZPTT4VUdLi21GKQb9ja9sGyfBuVBAdOAEYq/PCQ22T/zMoq+0lpjIEXmrdqjYkHjyt6C3km+mKLFrBrNFymqzaq2RL/ewQymM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1292
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: disable stripping in
 default VSI ctx
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Marcin Szycik
>Sent: Monday, May 30, 2022 10:21 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v2] ice: disable stripping in default
>VSI ctx
>
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
>In case when driver is in eswitch mode, having VLAN stripping enabled causes
>failure in communication. All VLAN configuration commands are blocked.
>Because of that VF driver can't disable VLAN stripping at initialization. It leads
>to the situation when VLAN stripping on VF VSI is on, but in kernel it is off.
>
>To prevent this, disable VLAN stripping in VSI initialization. It doesn't break
>other usecases, because it is set according to kernel settings.
>
>To reproduce:
>modprobe ice
>devlink dev eswitch set $PF_PCI mode switchdev ip link add br0 type bridge ip
>link set br0 up ip link set $PF_DEV master br0 ip link set $PF_DEV up echo 1 >
>/sys/class/net/$PF_DEV/device/sriov_numvfs
>ip link set $VF1 up
>ip link set $VF1_PR master br0
>ip link set $VF1_PR up
>ip link add link $VF1 name vlan100 type vlan id 100 ip addr add
>$VLAN_IP/$MASK dev vlan100 ip link set vlan100 up
>
>On link partner:
>ip link add link $PF name vlan100 type vlan id 100 ip addr add
>$PEER_VLAN_IP/$MASK dev vlan100 ip link set vlan100 up ping $VLAN_IP
>
>Ping fails.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>---
>v2:
>   * Small corrections in commit msg
>   * Added reproduction steps
>   * Removed Fixes tag, added squash note
>
>This patch should be squashed with "ice: remove VLAN representor specific
>logs"
> drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
> 1 file changed, 3 insertions(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
