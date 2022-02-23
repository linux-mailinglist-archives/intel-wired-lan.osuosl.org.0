Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1809E4C19CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 18:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA88D60FA0;
	Wed, 23 Feb 2022 17:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6uN6nFRZWDaa; Wed, 23 Feb 2022 17:20:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8633360F7E;
	Wed, 23 Feb 2022 17:20:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A0831BF263
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 17:20:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42A8B40142
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 17:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wui3HIL2rGUR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 17:20:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE494400CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 17:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645636830; x=1677172830;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=LO/dDqmr/wvHfywrKgJv1LNqhprznQqTnFctg06/fJE=;
 b=feNpGtCfq1M0ujGTeqAVigl3GpuG2sO/uqc/OubpY7vzL9lR8/zS/qN7
 CKj4Ux7c0YzHSMhBpQAWr0NPsY8qrhQHY0KWaUnX3VdmDO68PGpCO6sCg
 PVgX+txR9vi/SxME3MIgHc19SPAbrYXU1X7Xd1jl+Lw6G67hv8MehBn+i
 kJs7N3ixebe1c0JBcCIfwV1n5BiqEj6wQk/zDtdfEflubI3jbK604XZu/
 gl6H7Oi2Qg0aDfYznRhmgXcjX1fNLlmHHheBPHTlQjxCvYX49CoaMoMze
 RzetifugEPpo8NmaR29OqhIVoJXX82v+IsA76kyP4emrTumu6Y8f1orNP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="252223968"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="252223968"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 09:20:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="573905131"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 23 Feb 2022 09:19:59 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 23 Feb 2022 09:19:58 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 23 Feb 2022 09:19:58 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 23 Feb 2022 09:19:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UI+7KeVBceUF9FJYu4Zd/yDBiaX0cSbAPX8hFFann7fAxjXNiignHRSNbvSz5xLualti0fMXysAQQNmrua7QZFtSI5BRGp2/clp4+uwr9xjUu+Cq1juiiZkHdmq0BfrnOBqNw/ijIf0iLYlMTGkmV37gJsjPUXipGYkmjU7faiidlRs7oyrEIOOgFdfiifFKDeAtMXbNymRfsMzSe7vnan83Y2RkDvmBD1HHsjUz4liKuDlxZvpnIZnAeMHbg9CSr8qEkx0E3nbwSn/mgX+hRB1BINCaWaFxJfHubViAfyRaTTN3svVjp7eXTCK+Fmdtwm+bnjXtd3gnTx2GJdI1hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=snt5zsbNXx2r+e1H9C3sT6qPmgWBYTVmNfzN2mR8/ms=;
 b=PMEfVb9U0NEU32WKbEdNHjTvqLRtYogqfDF0m50oQV7Fw4rgj2+HZyCA7F9J5QKvrqsv63j6vZz6pbKw00CXmQTViQLP2s2LYMkRG3kOt8srtVpvC82/Jw2pFSbnXruVH2+YESvUQ1qBlPknmwJeUyViEPL6/3G6g7HsqrwwD5hqc1wFr3s6sQEjH5pLKK5az27EH4+6kLvD54Lv78ja/xJd7eg5+W5UKjHiybBaCv70w1J4rYb79TdtCIEEzWqlCsdwhSAmkazTHImiZzxCpxaAXw2Nu634q+NrKwrT9KdlmbSoLhkY9b7Yh7Qr0FG+QP23UdK16Tt9AUREZbY2qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 BYAPR11MB3255.namprd11.prod.outlook.com (2603:10b6:a03:1d::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4995.24; Wed, 23 Feb 2022 17:19:56 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1912:e2ed:a440:4910]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1912:e2ed:a440:4910%3]) with mapi id 15.20.5017.022; Wed, 23 Feb 2022
 17:19:56 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "damato@fastly.com" <damato@fastly.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: RE: [Intel-wired-lan] i40e and TSO with MPLS ?
Thread-Index: Adgo062SA4LMUJ2qShCf3qA3ozVwcw==
Date: Wed, 23 Feb 2022 17:19:56 +0000
Message-ID: <DM6PR11MB4657EB65F784C3E816FD27FB9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df4f34bf-525e-40d2-ce13-08d9f6f0b6b3
x-ms-traffictypediagnostic: BYAPR11MB3255:EE_
x-microsoft-antispam-prvs: <BYAPR11MB32552F05E8520DEAB70C35E79B3C9@BYAPR11MB3255.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: po3RpX4Qwdct9cVZ58xpcXztqdbD9pgZrWR2HfENMYb169AcVhlh23YJ5LTQf/diVBWZf7b5tE+DfiyYihmYFjsDe0QRzBXL5X1PEqKwRp3tveRMTgr6KpcEowALydjd/Il4/Mh8IHM7SImL8h/aVCzFTSMkeNzhJxFOvZ1/1ShgBcONrUTR4exBYQMOO9GZJK6VOyDwy/5e0KVbn70fbDa8K5UUoLkQvgVE0bGqK1J8BpgafeujJur9xlgHBfidaFvohZoHbc3gg1/seAZB+MwoknoByJSoZFGwOEbXJ7780+0MCwgcDdclphKHQ9oaVNcS3PY+MARvpHDbogC5/uUT6cKc/mDlky6pIVKbUBV3KvnlLYPQytNiHCAxAY37NLVodrvC+00yNMo46fHD26g4bLOiBh1d+kjoHRDKw5ATExheu9k6CSy/SxXBk0M20c7WFTxuzICEZkpTxzpunkEgxGKzZgu8JZk76HbL2Zyiq5WHEJMhW+6mGRoebtQX5J3ojisp4f7oFyy0bNgaz0N8V3VdkyrQTSrCJSqJqsGMHCFXZkNZiCy5t3T6eKyHAtT6axvLJnNLQnIallTsJ6tRO52UdKVm+iNlJNdy2FB7U9nQMSgTd2e8D67jpp9dS7B3+0S8lMMpiiESVYSKJeKmH0W3gB00t/fYw/OF7kwvI4VjERbgj4T4tB4oBN6I/JyyaBP9bHjgkt2yRYxqg0d0aCdVZJs/A7/dZe7P9IDnvEFmUy5SP8nDXjEQOAjEioK4EPnDuGnJ+13Xy1jFWe6yRWlTjp3dE3VgFrlRYx0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(107886003)(71200400001)(33656002)(966005)(38070700005)(6506007)(508600001)(55016003)(9686003)(2906002)(38100700002)(8676002)(64756008)(66476007)(5660300002)(66446008)(110136005)(54906003)(26005)(66946007)(8936002)(4326008)(316002)(122000001)(82960400001)(186003)(52536014)(76116006)(83380400001)(86362001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yutSQUAcKVQyXyWUIDpXo9Uq71GBcZJw8qTJVJBoDEFTafInS933iOXnk0/d?=
 =?us-ascii?Q?vDqRA/2sycCC2ffxfNWT7eqCOuRWiba19FgUjlvDtgDcix09ZsWTKJtkM4tv?=
 =?us-ascii?Q?cmKWAFeaVT6L+lXR423sittTDV9LpMLlekhrBNyYkc7Ds3BxB9TOGoybq8wq?=
 =?us-ascii?Q?KDmsPRmEZPlAWXrCJnNY1eI2oOYnn7KRC1oGWwZ99o4Cg8F/hYLhIVBHjoOn?=
 =?us-ascii?Q?HXsAj4tGD5T1f1dMeU+19LgDNM4P7jR2inA/XutCTC6HsqhemynHT75K6Qb+?=
 =?us-ascii?Q?X+pVNInMkt0dToFkc1QrteUs3T8E365dhyKfvRTcBMNSJkf+jEl76gXOs4Rl?=
 =?us-ascii?Q?BbnZCbkbTvAU5X8725HLXsb1RWkI1HU498NlXsiKaCjclF8cMWbP3V8wNm7F?=
 =?us-ascii?Q?Z2F5wsVG6HkZujT+tXK6ndrGQnDUZKb5dk0bKyn+p1uDgTcyqWxs+YFskzqi?=
 =?us-ascii?Q?NGjAqGFw2tD2wp7vmen4TeyhpVnX8a2apdCV6Qwm7bVJ44hPn85+srwrL1Kr?=
 =?us-ascii?Q?fMga0z7PW8KpGjRg4E9BRhpdfWzQ2dDqOWUIFNslu7uZDuEjVBsQyscCwAMj?=
 =?us-ascii?Q?QBZ6MyBMRzWmQfVE9G5p4xqvFWA+D9T/EVUiBNj7bGJzjSfd6mArB0S0oxOq?=
 =?us-ascii?Q?m5bhEgq4NdyGADrLoVjiqTNixOf0Lkq9BwgyuYcGEM4xM3xEFiDZhDzZBuaL?=
 =?us-ascii?Q?OpTGgMoAuU/CqT9Qonhx3E9zYwEIbL7+mefoMmKEsi5zJw6960BKCXvm5rGI?=
 =?us-ascii?Q?4T1ky22aw/cQvAqf9psMeqhquNiI29Bw4VXkM/nD+QqxqIkjgKxU/2PesbCs?=
 =?us-ascii?Q?Jp9h83mdgQHJ6n+DY5vQC2ltqgDum+aG5frNFj+nlFZT/iscVCeyX26d6JMQ?=
 =?us-ascii?Q?Vlj01ZVQgmRbSWhqkoQJ3CLq9pdmfoR7g8dZFJfLIPFnLAlzQwD46QmARw6q?=
 =?us-ascii?Q?Z4P6f0h55E0aWJWQM7MCsDLt1/3vy+uAxBe89GhMtypxWLP2uG17RxQ8Q0sb?=
 =?us-ascii?Q?uFap3f70qAkn0rFKH+RxiOfnTtVM/GAZXoCoAuXwU45MLBqHFvsz/YNGEdyC?=
 =?us-ascii?Q?WVi68zKG7dMalc4p+0pACBr/iP6sqE/wfgoIbk8CpxtUDURz1UsYhhRsTlpc?=
 =?us-ascii?Q?5Di5ampEnDHW5VfIrX+zLzIrurkYuhVB64b5+UaC+zSRnRiOTmnUkgQgIHH9?=
 =?us-ascii?Q?QvQKM4ejOFQuT7qlppyO7cuTOrgiA+0g+pL2pX5wnwp5O1zt02Q7x6LL+CH9?=
 =?us-ascii?Q?Xc5rKokxK+nK6D3yXq03wvyKvyxSuMuhBLjqirL1PD0R3TDfRvPRRA/slQP2?=
 =?us-ascii?Q?wUF5KaxcY/yJOoeUEhEw5D8KWKzGakQetgWgfSaaZrc41mN3Ti8Cjjekikga?=
 =?us-ascii?Q?6dy0fMl2BOYcky1YFRchxIhXKBhKnuJBCyaQB3bnmp2KKWPfEQ3rrbZbmh+O?=
 =?us-ascii?Q?WvCfuc8DcYoVnJjf4y7qwGouqoDLFLwg0/GMxQ8i1oyuVO8zXhBNru/9Ifqa?=
 =?us-ascii?Q?F++OKhRFhXCaIzJgC+g39g1C4WiDLoYdh0+1VfDPxvKTHFydiAT3jpsFEYKC?=
 =?us-ascii?Q?gOuFltOyjWiURXj6VFp95urTk2jPtF5XFCHkL7Mr9Rp98Ijvy7rifrMoQZlb?=
 =?us-ascii?Q?Nm0cTRzzdl2AM4GAnJuaZnL/gYNpJiI+amhnXO4HsEsotEyWvPo/1qduf1Li?=
 =?us-ascii?Q?v2ZQIw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df4f34bf-525e-40d2-ce13-08d9f6f0b6b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2022 17:19:56.6519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aNOCjJPbeGajttWycQMjk8bckATWTRhZhj7ZZg8JtwvoeK4VEzTasokK2lmfPUHh7FmoD4V9k/KOSHQwp5kW+BeMzrYMWcz6DY+UlY0Cn1Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3255
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] i40e and TSO with MPLS ?
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Greetings:
>
> Does i40e (XL710) support TSO with MPLS?
>
> We are using firmware version: 7.10 0x80006469 1.2527.0
>
> We've attempted to add support for TSO+MPLS to i40e, but were unable to
> get it working. The patch is included below for reference, but it is almost
> certainly incorrect - and I am not clear if the hardware itself would
> support this even if the patch was correct.
>
> Applying the patch below and using tcpdump shows that:
>
>         - packet data, as seen by the pcap filter in the kernel, is large.
>           This suggests that the kernel is attempting to offload
>           segmentation to the device,
>
>         but
>
>         - those large packets are not ACK'd by the client
>
> This suggests that either:
>
>         - the device does not support TSO + MPLS, and/or
>         - the patch below is incorrect
>
> Does anyone working on i40e have any insight on this?

Hi Joe,

I have done some research for your case, good news is that we believe that 710
hardware supports it. Currently we do not have plans to implement such feature
ourselves, but we will do our best in reviewing if you decide to implement it.

Such offloads should be supported on packets with up to 2 MPLS tags before the
IP header. For start, you might take a look for the features pre check function:
static netdev_features_t i40e_features_check(struct sk_buff *skb, ...
It probably requires an update after the changes you have posted.

Hope that helps!
Arek

>
> Thanks,
> Joe
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index a21833c..b7455cc 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -12920,8 +12920,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>         np->vsi = vsi;
>
>         hw_enc_features = NETIF_F_SG                    |
> -                         NETIF_F_IP_CSUM               |
> -                         NETIF_F_IPV6_CSUM             |
> +                         NETIF_F_HW_CSUM               |
>                           NETIF_F_HIGHDMA               |
>                           NETIF_F_SOFT_FEATURES         |
>                           NETIF_F_TSO                   |
> @@ -12952,6 +12951,23 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>         /* record features VLANs can make use of */
>         netdev->vlan_features |= hw_enc_features | NETIF_F_TSO_MANGLEID;
>
> +#define I40E_GSO_PARTIAL_FEATURES (NETIF_F_GSO_GRE | \
> +                                  NETIF_F_GSO_GRE_CSUM | \
> +                                  NETIF_F_GSO_IPXIP4 | \
> +                                  NETIF_F_GSO_IPXIP6 | \
> +                                  NETIF_F_GSO_UDP_TUNNEL | \
> +                                  NETIF_F_GSO_UDP_TUNNEL_CSUM)
> +
> +       netdev->gso_partial_features = I40E_GSO_PARTIAL_FEATURES;
> +       netdev->features |= NETIF_F_GSO_PARTIAL |
> +                           I40E_GSO_PARTIAL_FEATURES;
> +
> +       netdev->mpls_features    |= NETIF_F_SG;
> +       netdev->mpls_features    |= NETIF_F_HW_CSUM;
> +       netdev->mpls_features    |= NETIF_F_TSO;
> +       netdev->mpls_features    |= NETIF_F_TSO6;
> +       netdev->mpls_features |= I40E_GSO_PARTIAL_FEATURES;
> +
>         /* enable macvlan offloads */
>         netdev->hw_features |= NETIF_F_HW_L2FW_DOFFLOAD;
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 5ad2812..9e641a9 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -9,6 +9,7 @@
>  #include "i40e_prototype.h"
>  #include "i40e_txrx_common.h"
>  #include "i40e_xsk.h"
> +#include <net/mpls.h>
>
>  #define I40E_TXD_CMD (I40E_TX_DESC_CMD_EOP | I40E_TX_DESC_CMD_RS)
>  /**
> @@ -2908,6 +2909,7 @@ static int i40e_tso(struct i40e_tx_buffer
> *first, u8 *hdr_len,
>  {
>         struct sk_buff *skb = first->skb;
>         u64 cd_cmd, cd_tso_len, cd_mss;
> +       __be16 protocol;
>         union {
>                 struct iphdr *v4;
>                 struct ipv6hdr *v6;
> @@ -2932,15 +2934,24 @@ static int i40e_tso(struct i40e_tx_buffer
> *first, u8 *hdr_len,
>         if (err < 0)
>                 return err;
>
> -       ip.hdr = skb_network_header(skb);
> -       l4.hdr = skb_transport_header(skb);
> +       protocol = vlan_get_protocol(skb);
> +
> +       if (eth_p_mpls(protocol))
> +               ip.hdr = skb_inner_network_header(skb);
> +       else
> +               ip.hdr = skb_network_header(skb);
> +       l4.hdr = skb_checksum_start(skb);
>
>         /* initialize outer IP header fields */
>         if (ip.v4->version == 4) {
>                 ip.v4->tot_len = 0;
>                 ip.v4->check = 0;
> +
> +               first->tx_flags |= I40E_TX_FLAGS_TSO |
> +                                  I40E_TX_FLAGS_IPV4;
>         } else {
>                 ip.v6->payload_len = 0;
> +               first->tx_flags |= I40E_TX_FLAGS_TSO;
>         }
>
>         if (skb_shinfo(skb)->gso_type & (SKB_GSO_GRE |
> @@ -2962,10 +2973,6 @@ static int i40e_tso(struct i40e_tx_buffer
> *first, u8 *hdr_len,
>                                              (__force __wsum)htonl(paylen));
>                 }
>
> -               /* reset pointers to inner headers */
> -               ip.hdr = skb_inner_network_header(skb);
> -               l4.hdr = skb_inner_transport_header(skb);
> -
>                 /* initialize inner IP header fields */
>                 if (ip.v4->version == 4) {
>                         ip.v4->tot_len = 0;
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
