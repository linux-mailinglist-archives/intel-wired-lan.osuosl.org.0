Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7E51F5E53
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 00:27:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 88424204DF;
	Wed, 10 Jun 2020 22:27:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LgJ20e07SGuW; Wed, 10 Jun 2020 22:27:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 89D4725DFC;
	Wed, 10 Jun 2020 22:27:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A58F1BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:27:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 56E2B88423
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s0DC+-xsqQAb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 22:27:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 622F1883FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:27:46 +0000 (UTC)
IronPort-SDR: 8saveh2LSxRxEpYlf+BM3oJYHQV4n8+Czwze8uHXmqrlOrlgLZuHtwJYj1bY6qR5R+CrdVmeBF
 MzxOxifa252g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 15:27:45 -0700
IronPort-SDR: RI92ouGBJ1t3f90eU6iPgue0I3cTK+xyodDHNYGSmFZWkIuafB/9n5GNNbpbj3pvZWZaAceVFV
 qoPimK0ffJAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,497,1583222400"; d="scan'208";a="260534518"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jun 2020 15:27:45 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jun 2020 15:27:45 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jun 2020 15:27:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 10 Jun 2020 15:27:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TiY/Jr5wHKwIc5tWp68I1Qb1jyq2Go4impCIflbdIukby1d0EW3+sP50jgxoQa6vAV+0M8HyM1ckcPvl4ld/lt4PP1/hMUg9O+bet9aY5/9t2D97elWxDbsCZ4dzsoUWDh0GT/qI+SnnU6pmgoU2slHzP0QfwU+yYIBsXFCPcTO13xIILuAdbYZKqvNg0iN3J+19sb/n8uHsR1UYlrqBzRVhGWOf8efalenUbXaMeyS8cVVAJVKvBrKm2uTGMh5ZC5toGjQCwnaST0CGTo3TiLoEE4T21/WNlP1XLt6h5Z+8MUb9Hy0iE2FMorfnakmTSRqxIHKWdoML32TzsuCZZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qbpnqOZRh0bluZ0odxq7R7eImf56ImbuJw36mfahwg0=;
 b=J9X6RBbw61WU65/xNlSBzbC7IkLMORULT7eKxS71Eplt6EiRLRQNUplyVt1eKiHxqVR/UbgggbE3gYfPcdICQvQKMr+tyTrJ7v/kU48jCI/+5Eh0rGwyR3mKPwtLJWvlTMEWeToqR79E5I/whhCs91F9YN0afHa+4ba/sjw8Qaqk690BLYUsqNS/1Ooj+N0TOKpgxLffQVHejA50hQt1ght47gT6Vf9DAIkeI5awbAdh1LLpSBq2tRIgfI8y/j5h0DZv/tmd+C6LoJGxrJzmeZ6PQhOPgPoekP3BezxfGdGUEa4rFNK4lxp9Qc+WyR2yvulyu28eXkfT+Kj+nu+23w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qbpnqOZRh0bluZ0odxq7R7eImf56ImbuJw36mfahwg0=;
 b=SPP8hJmQ74wBbA5UxxyfvKihPRVMxhrPKKxtFee7LzJR6A6sBh0zHD42awf4by35dfUT9VeKFauMAGEfjY5CGf4tvFWxd9BLZMS91wzNAulbeHzG5WXfhnLDCkQWxwekLKcVafE2pchxaFEhRcI2seWSUFYIfhuXU7h19NW3Gto=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR1101MB2083.namprd11.prod.outlook.com
 (2603:10b6:405:58::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Wed, 10 Jun
 2020 22:27:43 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 22:27:43 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 3/4] iavf: Fix reporting 2.5 Gb and 5Gb
 speeds
Thread-Index: AQHWO1yBYRLS/MZkFkeOB7Jhf2BfGKjSdexw
Date: Wed, 10 Jun 2020 22:27:43 +0000
Message-ID: <BN6PR1101MB214512E8FBA3535DE7FA17B28C830@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
 <20200605170946.23494-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200605170946.23494-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d061932-95f5-4f00-64c3-08d80d8d7e6b
x-ms-traffictypediagnostic: BN6PR1101MB2083:
x-microsoft-antispam-prvs: <BN6PR1101MB2083B439C8130B51B50E9ABB8C830@BN6PR1101MB2083.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iMXVIMGFQbB2dlssJ3FZEmbQlCMA1EaupjuAq5cTA+E9arzx0j+dRBqWW1xS+SQIwAXiR6omgdTUsfhcvyH4rpHib0voQ/1UyvCcKpgucdjvXuBMy1QDzxWXIHkdDUyGd0/fh3odSTJmFHVLvwAjdThrEnqIsRBJxTpI96c0fP36+ys2fIZChcOHQpCsQbTFsHPWiQvgmPbEHeT0hTWUC13GideKJHpViHHl/lmjV7qfnhxcmawHlxAPsgmlvo59PUr1WT5jHhC8F+pUgLoFMSeANxtLYObvBT2mtEx8Ay/jOIdphoy2Ye6q4K6qIss8UgXv2Se098g3a1tRFhVIoA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(396003)(39860400002)(346002)(376002)(64756008)(9686003)(76116006)(7696005)(66476007)(26005)(8676002)(6506007)(316002)(6916009)(83380400001)(55016002)(66946007)(53546011)(33656002)(66556008)(66446008)(5660300002)(186003)(52536014)(2906002)(478600001)(71200400001)(8936002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ZNQdA7YRnWSFsDbwLQK0LRvIbZXAha3SKWXXZKQPrgpBKb+YtAT0MITmcvfxxD0GIWW4Ap2D91IygamiL930H93izLhfghPsYDu9f9smiRXvsTOSCHZ5HnivT9j5jWTg92Md20MsmEzkXGUCZHXl9lw4gV4ui4Qp7srDPtodJzmGOXhCijN2pTST2sE0T8UOoM8Ls0sBrc9q5J2NDBd8iLaAaUKTcnhgYB1kbY8+sGyAptVZSUDBe+DgfVKNADn7ooUBoBOgv7H5k/UbGolGNuJPFiVEjONNBlg61cczQBvvwNvgWySxEgwnreEInHZa5yzl2vHqyk5dHuutQyKgTqGbDl1knH9R21/B87tCByfhlhiKKIC47GaLgqIiDMeCZ2pc6tCcQh1fa4ImqegcDim6Y6sJobeUCRG1Ql/A+vumxwnpk+V7FBUrfRIwkYG/iqCrRhfYnbuAdOt738RYL4Tnh/E0JC5wjiCOs7WwJwuTOp2xw6ja79zf5q3Y2HYc
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d061932-95f5-4f00-64c3-08d80d8d7e6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 22:27:43.3543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h0MBiNtVFOdf7nRaqT/taqSwkkOdnO5HYC98GvoHKA5icp512mvbJZhW3mIlm9KIjOrYAk3iT6huaK7GP0RMPNK7sNBcdCD9xJV9IZ4CTFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2083
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/4] iavf: Fix reporting 2.5 Gb and
 5Gb speeds
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
> Tony Nguyen
> Sent: Friday, June 5, 2020 10:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 3/4] iavf: Fix reporting 2.5 Gb and 5Gb
> speeds
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Commit 4ae4916b5643 ("i40e: fix 'Unknown bps' in dmesg for 2.5Gb/5Gb
> speeds") added the ability for the PF to report 2.5 and 5Gb speeds, however,
> the iavf driver does not recognize those speeds as the values were not
> added there. Add the proper enums and values so that iavf can properly deal
> with those speeds.
> 
> Fixes: 4ae4916b5643 ("i40e: fix 'Unknown bps' in dmesg for 2.5Gb/5Gb
> speeds")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Witold Fijalkowski <witoldx.fijalkowski@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  6 ++++++
>  drivers/net/ethernet/intel/iavf/iavf_main.c    | 18 ++++++++++++------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c    |  6 ++++++
>  3 files changed, 24 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
