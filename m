Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0219F5005D4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Apr 2022 08:19:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CA1160B06;
	Thu, 14 Apr 2022 06:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OYvqpazBu5Zr; Thu, 14 Apr 2022 06:19:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AFF160B35;
	Thu, 14 Apr 2022 06:19:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DD391BF85D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06C1360B35
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8__te-5MX_OH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Apr 2022 06:19:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 271A460B06
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 06:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649917162; x=1681453162;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UvHHZ/b4AKAtpb+Pp2GSXXeyrifQghE5gy1qT/L0In8=;
 b=ND0VpktePg3bD525miYzJZAWKnKXotbP7tCh+50A7LAVtg3pRPinghry
 qqK5ujTgpm2rir2KTsLH3rfkdhmPC6sHVvpmddt4LOYW3+5t3hxATD9mI
 i++KOMh1pXySSDJApUmPI8ftlCYPCOgBKypUsdjX7dWcloW8uKi9rknFo
 u/uVUnL0PGp91otW9n0bJaNb/6YKpJWu8uMo80NAp3Ez2AGyMASnVFStI
 TcfViBcziy1x8TJ3kHHta972dj/1pNWdA97T5ihWfpWN5Qjo5ML+FoM27
 FmLcSDUPIAmv4V6bxPYcVgq2Dex2LK+66kUB5rBWjM1kBFgqIrk5wSpP4 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250149177"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="250149177"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 23:19:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="508282677"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 13 Apr 2022 23:19:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 23:19:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 13 Apr 2022 23:19:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 13 Apr 2022 23:19:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L61RZww6VGjxwCJScQovectJLlIzSxutvFdRpm+be7Q+RMcwVOHSNE9ZaD1OGkxIlGBKpbQ83wKkQfDIRXXrqTglu1Lp/qvl/F/ory7sOptiCe3xKVfP+l8j0i692xiSK1YVsoQYe4VOfId4yIGHYsrI3SqxZS0Y1MIaKWnFN7Wcas0fwKqX1T/esc6s1FuQCLdOx63/hZ3Htcs25riAMUhYKX9W7R01xsh/i/MFcEcd47PFU2fBqu40yKyFH7/3Zw/fBr3hGGKIvhPddhTrhAIrP2tGFv7UQifXjqFjUaqEM/Go9ElNGaKOnI7twQPpz0eMKUbQmvZO7R1aEBIqVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UBaJIXeA3nK5uVml1aLkPjPkT77NfIHRcJr4yCZXnV0=;
 b=HASI4c8MAXWo0+nKrERSmuQVGAt3I0g99EnTAjxV2Yml0N6D7FK7dk4xQ2s9tBahhZFGjnJ+M/tUoJr5q6eKmLVKJcPCGJ0Nw4oiRfj5C5KffrxBTIEk2Y5AraKVBej+RYrpe3Ptcl0pH3o2bdcJOpwkIU9dkor7NpgD+b1qoMTZJ7m1WKtrl8fzHazEjGOu431L5uSz1TN62NI2UWyNR/lYfMGsVM2VdOq0SHZmWuTlm9cHLLQ1oCjjeWDECZ+DL3eFb8BAClNyZ/bBhKAoNQ8mYaTkUfWlpzdl5L3km19gMrWGOIEn5bHt2anDvtZTcSDPhM6rN+ztdZzL58+9ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4546.namprd11.prod.outlook.com (2603:10b6:5:2a7::24)
 by BYAPR11MB2695.namprd11.prod.outlook.com (2603:10b6:a02:c0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Thu, 14 Apr
 2022 06:19:08 +0000
Received: from DM6PR11MB4546.namprd11.prod.outlook.com
 ([fe80::e80a:4268:df3b:c3b9]) by DM6PR11MB4546.namprd11.prod.outlook.com
 ([fe80::e80a:4268:df3b:c3b9%7]) with mapi id 15.20.5164.020; Thu, 14 Apr 2022
 06:19:08 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix crash in switchdev mode
Thread-Index: AQHYSx7O5evfRO7g1EqHCBVBKM4Oeazu+Jcg
Date: Thu, 14 Apr 2022 06:19:08 +0000
Message-ID: <DM6PR11MB45463A034BE0FF4A527AA2559CEF9@DM6PR11MB4546.namprd11.prod.outlook.com>
References: <20220408075610.445584-1-wojciech.drewek@intel.com>
In-Reply-To: <20220408075610.445584-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3978f7a0-2533-4264-6001-08da1ddeaeef
x-ms-traffictypediagnostic: BYAPR11MB2695:EE_
x-microsoft-antispam-prvs: <BYAPR11MB2695598B640E4EC986C79F549CEF9@BYAPR11MB2695.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /TxDODBnaieEu7B2CobJUj91FClDXT8uEwzEkVKqTZk43wzjJs1d0fA0P/fVd8RiMn+rldRwoNM+Bg3d/FXnru7KIT2cafjnnN+C+9/dpNvhRlQbFU3Kwl1iifnYMQEmTDtft1Hb4wBoTEgVeFSMlY520QVXtXgZAaqs1tz0X7HiVO9LsYKas8qDgiOz/Gb9Cj6chmFh9Zi7TNOmQYaoMGkfbGLjKOfCOLgJ0CgrjLCi/CJEQUtWYQ+tjV46U4PG/E9rCa4IkDclBaLgyn2Ja2Si16A0JYqiHXRsgDv+pk0Dnl+t/myb6MJAKSPlSeoORMtYZDbaLlX3UBIZi6ExMKJjrgiHaFnJKhn8CUkz29rcYh7oiNjZMyQqLAGbMMIi/e0hFzBcRJ0xb3GA8l/CE1NNmvI9zzNu7Wh3diyPlVr1cZS7Cc3RIoJBnQI/R1E78y8VjUgcZOfqFj0aErQ6gOTrGD6L046zG15+QvvPn0bl68WsvFU2PxXXefIdzJ7cs4e1wP4GxWv+StVPuk2I+9YJ6vJTOXEoLfkGboSuKS7a617fIYrAtECODejVu8ginWz+T9z20+XobWdt6wA4GFkHZNwJ4BwYjtgbT6naL4dKpWzMlR1S6oXrzExlAg/4V2TNve+bxsQnNaiDPxwpoGZtBjKxQBYyYVMKztEAdYmbZwa7VN7oAuk/Pwwjuh9aFo2M/dFczXsp+8+srBhJjw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4546.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(316002)(66556008)(8676002)(83380400001)(122000001)(86362001)(5660300002)(76116006)(110136005)(2906002)(38100700002)(33656002)(82960400001)(38070700005)(8936002)(66446008)(64756008)(186003)(71200400001)(9686003)(6506007)(26005)(7696005)(55016003)(508600001)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZPVT1xylXdYxLgCa7Ayer40Qrq/6IHEEelad7yrsazq2Tj7KMMVru+o9obCH?=
 =?us-ascii?Q?ey8z6v4dWwTDNSFVIMlWCh4Tdv34ZzNNO/653litBLm1wnTefSV9Zp5rfdov?=
 =?us-ascii?Q?1vdpM/Cg8i7pRMzly7U8WJmb4cDKbZHTBINdcafWg06Qnba9kWzZXTeM1ghg?=
 =?us-ascii?Q?1M0i3uelTBsN1vkPa5DigVt+niVP7oq7sPBcGsRSHYwBW94D9vjVVVZ5cs6O?=
 =?us-ascii?Q?bELfkWWN+kI8l5XoONn7oIptCNYVX2Sel3YmdFt4nbCUp5LqVmJuQiYbIwhI?=
 =?us-ascii?Q?YT18Yf6YNYf32BG//tgNFsYPx8JShcZVhBUMPbUbD5FMqY8QSHrG6QRLPbgW?=
 =?us-ascii?Q?jE8+EsFwv4Q9dd2OgLQgE5vB+7T5kDZDrkGcubOZMgVvMQQQCD9ymIYtGQxZ?=
 =?us-ascii?Q?iw6dXtczDG1nyiw4E02yZoCsXJHt236nbJymGgPeZm8iJONsEj0jlUMFxFev?=
 =?us-ascii?Q?uX2pAFi/FzNPbtCK91uuPPnkuAejwT7EbDPEx8ArdwkMZor2r4kENn8Nm0fP?=
 =?us-ascii?Q?d1KKOJM0rt/XxBn51f54UpE4hUAs8W/97OKYBPTNwW1J/ImjRI4iQlp4hhvw?=
 =?us-ascii?Q?FJwglszeWCgjYgvgolpSdsuAPeGOykXDLpi7KVD3ffs4W7MiYfXGOEBSYbcj?=
 =?us-ascii?Q?49vGJaXLNCBlGC32OzoEzmaKGPWUn1yRsWcb3pSh5EDbUU14K3Ldx6syEOsc?=
 =?us-ascii?Q?DVWIV+LHjlcVmUz2Rfor7pmf3Fdh8YAT80X5LNXsNA+0S7p5B2wLGrI+hUVV?=
 =?us-ascii?Q?GSJ8Dgvhbpfz/NbQ7MW2Im7Pl2EMcVv01Lz/3FUOIB0MsRI5oRgVTtIIpcMx?=
 =?us-ascii?Q?LSlXma2835GK39hgo1BAxYE0vBkskD3+sffrrfBC5qt4ENKgwIK/mbiMYx82?=
 =?us-ascii?Q?d+7uroNygaTbXX1dmp6rBdEAe8n4o8U59urck5TeomueLvQxWPgYJC4awLPb?=
 =?us-ascii?Q?jJwweXbLHg9rNQMeRpJr9uSqGa3XTGN1+xLmBOhx5RMqIuqt6n3bYkNSp1U4?=
 =?us-ascii?Q?za+Ipw03aKYIPi9caoZV+Py34QLQGMsH7Is4JYYrLhUJ69TfLMEWxUF4znEU?=
 =?us-ascii?Q?xr3wZkqtGP4FINrCJP0yvqCdOXEPcx2imsuPhG2QnbEUDtGc4SZTcJNS2jNM?=
 =?us-ascii?Q?c4sPcQ62n91eguUc4/tr+Fb3qcWH3PDBKiMzcswFDsJdvYJxolUAKdwi1EFT?=
 =?us-ascii?Q?gHxyOVPtHuOvgJgZP67Z22NiMh88zA/GmIy3ttVVJeuldYBRY5zxQjhKRHDE?=
 =?us-ascii?Q?B9clvMXQHp94A0GWSIIupx6EGSUEg/qe61OJj49UV54jai47h8/AxzHZ88BU?=
 =?us-ascii?Q?ow0XkOMCHbQ9KGynfCwg9Q44WTCvwK0a6u0K1x3jGPcP3Vss1ITo1CinxpHF?=
 =?us-ascii?Q?R5kVHNgg79eMW6boczW5iS1oKcorxTFG7hZmFdWaWflrmu1dN+CTcJ6+ITPC?=
 =?us-ascii?Q?5+6gyjZU+xWihnFP171pCf7SwNjvuDXxsg/RYhLs4Z/x80B006kfebkGiKrk?=
 =?us-ascii?Q?xo+XTL9FhKPlcxO9f4kNKFxPppfgr/fktWBszHAXUU5Qu+HnGtoOzDL2+lXF?=
 =?us-ascii?Q?trzbt9SmKG42RYCIEzPAEkjaavhGdfOjvbTYLLDyo+b2Kwuxh9fsD1sDzNw1?=
 =?us-ascii?Q?h0WIhaK6zY+RusglXXyAEidTed2iemaeSqgXAJqH93if0TFcYJ1pLO6Rvlco?=
 =?us-ascii?Q?mNGxo01xbM5nIi46HcTgVMY2KNmoliVMPfQQehioKLVuN8ia5f467PTNhzHA?=
 =?us-ascii?Q?mPEFmOVqhlX99zCsYvED3eMFPF/qnI0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4546.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3978f7a0-2533-4264-6001-08da1ddeaeef
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 06:19:08.0433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JNcVlfYTpDaLBEl42cfCTZ1xWH9ZCaOId9TcJmu2sy6E2pJ77FkAY/PZJevpX8znFJPbutpjtW6Lj8nkRtDnxP46qy9cMQ7txefIhMENfuM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2695
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix crash in switchdev mode
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
>Wojciech Drewek
>Sent: Friday, April 8, 2022 1:26 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net] ice: fix crash in switchdev mode
>
>Below steps end up with crash:
>- modprobe ice
>- devlink dev eswitch set $PF1_PCI mode switchdev
>- echo 64 > /sys/class/net/$PF1/device/sriov_numvfs
>- rmmod ice
>
>Calling ice_eswitch_port_start_xmit while the process of removing VFs is in
>progress ends up with NULL pointer dereference.
>That's because PR netdev is not released but some resources are already
>freed. Fix it by checking if ICE_VF_DIS bit is set.
>
>Call trace:
>[ 1379.595146] BUG: kernel NULL pointer dereference, address:
>0000000000000040 [ 1379.595284] #PF: supervisor read access in kernel mode
>[ 1379.595410] #PF: error_code(0x0000) - not-present page [ 1379.595535]
>PGD 0 P4D 0 [ 1379.595657] Oops: 0000 [#1] PREEMPT SMP PTI
>[ 1379.595783] CPU: 4 PID: 974 Comm: NetworkManager Kdump: loaded
>Tainted: G           OE     5.17.0-rc8_mrq_dev-queue+ #12
>[ 1379.595926] Hardware name: Intel Corporation S1200SP/S1200SP, BIOS
>S1200SP.86B.03.01.0042.013020190050 01/30/2019 [ 1379.596063] RIP:
>0010:ice_eswitch_port_start_xmit+0x46/0xd0 [ice] [ 1379.596292] Code: c7 c8
>09 00 00 e8 9a c9 fc ff 84 c0 0f 85 82 00 00 00 4c 89 e7 e8 ca 70 fe ff 48 8b 7d 58
>48 89 c3 48 85 ff 75 5e 48 8b 53 20 <8b> 42 40 85 c0 74 78 8d 48 01 f0 0f b1 4a
>40 75 f2 0f b6 95 84 00 [ 1379.596456] RSP: 0018:ffffaba0c0d7bad0 EFLAGS:
>00010246 [ 1379.596584] RAX: ffff969c14c71680 RBX: ffff969c14c71680 RCX:
>000100107a0f0000 [ 1379.596715] RDX: 0000000000000000 RSI:
>ffff969b9d631000 RDI: 0000000000000000 [ 1379.596846] RBP:
>ffff969c07b46500 R08: ffff969becfca8ac R09: 0000000000000001 [
>1379.596977] R10: 0000000000000004 R11: ffffaba0c0d7bbec R12:
>ffff969b9d631000 [ 1379.597106] R13: ffffffffc08357a0 R14: ffff969c07b46500
>R15: ffff969b9d631000 [ 1379.597237] FS:  00007f72c0e25c80(0000)
>GS:ffff969f13500000(0000) knlGS:0000000000000000 [ 1379.597414] CS:  0010
>DS: 0000 ES: 0000 CR0: 0000000080050033 [ 1379.597562] CR2:
>0000000000000040 CR3: 000000012b316006 CR4: 00000000003706e0 [
>1379.597713] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
>0000000000000000 [ 1379.597863] DR3: 0000000000000000 DR6:
>00000000fffe0ff0 DR7: 0000000000000400 [ 1379.598015] Call Trace:
>[ 1379.598153]  <TASK>
>[ 1379.598294]  dev_hard_start_xmit+0xd9/0x220 [ 1379.598444]
>sch_direct_xmit+0x8a/0x340 [ 1379.598592]  __dev_queue_xmit+0xa3c/0xd30
>[ 1379.598739]  ? packet_parse_headers+0xb4/0xf0 [ 1379.598890]
>packet_sendmsg+0xa15/0x1620 [ 1379.599038]  ?
>__check_object_size+0x46/0x140 [ 1379.599186]  sock_sendmsg+0x5e/0x60 [
>1379.599330]  ____sys_sendmsg+0x22c/0x270 [ 1379.599474]  ?
>import_iovec+0x17/0x20 [ 1379.599622]  ? sendmsg_copy_msghdr+0x59/0x90
>[ 1379.599771]  ___sys_sendmsg+0x81/0xc0 [ 1379.599917]  ?
>__pollwait+0xd0/0xd0 [ 1379.600061]  ? preempt_count_add+0x68/0xa0 [
>1379.600210]  ? _raw_write_lock_irq+0x1a/0x40 [ 1379.600369]  ?
>ep_done_scan+0xc9/0x110 [ 1379.600494]  ?
>_raw_spin_unlock_irqrestore+0x25/0x40
>[ 1379.600622]  ? preempt_count_add+0x68/0xa0 [ 1379.600747]  ?
>_raw_spin_lock_irq+0x1a/0x40 [ 1379.600899]  ? __fget_light+0x8f/0x110 [
>1379.601024]  __sys_sendmsg+0x49/0x80 [ 1379.601148]  ?
>release_ds_buffers+0x50/0xe0 [ 1379.601274]  do_syscall_64+0x3b/0x90 [
>1379.601399]  entry_SYSCALL_64_after_hwframe+0x44/0xae
>[ 1379.601525] RIP: 0033:0x7f72c1e2e35d
>
>Fixes: f5396b8a663f ("ice: switchdev slow path")
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Reported-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
