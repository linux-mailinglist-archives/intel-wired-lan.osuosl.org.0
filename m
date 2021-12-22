Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A825947CC62
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 06:01:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B117560F86;
	Wed, 22 Dec 2021 05:01:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8TZplW_fMcUB; Wed, 22 Dec 2021 05:01:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4A5B60F1C;
	Wed, 22 Dec 2021 05:01:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A68CF1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 05:01:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F7C040607
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 05:01:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lc5J0Gr1KPoO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 05:01:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89D9A4013E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 05:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640149273; x=1671685273;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I5zeMRIEb3+Cou665HoZQay57I4ZZ2hGvylVoh4XaaU=;
 b=nSfVpvStiit+dgzV6E51hMi3llkSGqoNAGu5Eb/TIczbOrUekTl9/A5Y
 YX/DL8PdiFOMDiIsRUBoRNgV+WfuDaDP/quuqg7dwILvWXta1DxymiA7V
 /BjNkzKRKq4bqc5HRbLbfbfZqnmVKD5kimycWWfF931rbFTrjnc7COnQo
 aQ7ppJ6dkpJIw3VyABY4lS2GhE45Fc52EXsm+vNvpUUBcyvKrn/zegb/Z
 +qcPjyz79AF4Cdp6X3GemvD6UKqVrcER8bE2uKy9NbrbDDbjrPh5PVdFK
 7FDvE56y1B3lpctia8XU7ji6l+TH+ZqN15wfouhioXrDZHmGQO9j6sVqU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="221222069"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="221222069"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 21:01:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="468043384"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 21 Dec 2021 21:01:11 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 21:01:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 21 Dec 2021 21:01:10 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 21 Dec 2021 21:01:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n1+W4uNX+0dhgBlPvSqyYhuNqk0o3RdzTd9MvFBkaJz1yS/FsGH1znir1/L1OzG3x5Ru3fkJ4vP06yvO8eMlA6o/iPoTj0VcNrbmn9Arl+/7EX96IB22//F7XZa+NjgbSayL2qf8PpWpndu0/kiOy1zrEt47PtDhOpyVTtkL03R20mrc1ckqcDeoAmx23FZDjZSWiIjxX6YgI7GaknJHjTDFWoOPDGoM6zQ1y9NhdBQZrYf/60wx1ZyG07Fd9ldUkxvNsbDtYjn3WdLdsYkjmxn7qUl/BRXGgQPEeqZIi5g6UWRgu1ft3IGehb7krXKPCkxTbRdth3t4ycQAR0LdKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbbb+JPf3Avo0g9s56x8QvI3phXZpQEjvAggFX+ZOXo=;
 b=DlcHKU9tfvbMiGiIv4jvUECg3V819GEW0qP9ch6hUtJ6PqrjzY0tw7Qoaw49s1B/Elo12jtroVX8yxW1bkNOX0kraYasybH99VO4SMs/jrEZ5CAJj8Gfmh5zj51jO69TkZyOXbXHEU1r9xElkrjaZ7G5FIP83bm7iR601szYLLvH9R2hYJ7JUIXqmtSV9hOkZw+tqnAkoRW9IlmvQW2h/u04+KbeDxpe/CcGc9fG4khFBAP95ZW1w6H0gPfqLUlP7cAr8ugHLNx93PNBBbm3Zgp4E0EeBWt7qz3DYaU+nZcdd6PT0Iv4tg6+o/f9M0d89n/0VWZE3gMEWX1KatmdsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4356.namprd11.prod.outlook.com (2603:10b6:a03:1bf::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.17; Wed, 22 Dec
 2021 05:01:08 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4801.020; Wed, 22 Dec 2021
 05:01:08 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Increase delay to 1 s
 after global EMP reset
Thread-Index: AQHXzAL03hBcsOBD70SjcgUzMjkOzaw+SaxQ
Date: Wed, 22 Dec 2021 05:01:08 +0000
Message-ID: <BYAPR11MB336728F454B88AE78224EE56FC7D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211028135114.202530-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20211028135114.202530-1-jedrzej.jagielski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f970cbbd-69a1-4ca8-623a-08d9c508113f
x-ms-traffictypediagnostic: BY5PR11MB4356:EE_
x-microsoft-antispam-prvs: <BY5PR11MB4356859367610AB2D423A16AFC7D9@BY5PR11MB4356.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:820;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xCJthFWT9gkdyoj9xCvFcvXHWXjoVG3p1A62vy7xScfM5nGq+yf+Mpjk8ixrxZpTDSddSBNQbgucqhmCc1tlea1ma52TotO5Hk6gcg0Uv/S+2NmFfQMWf3PZqVVlwgPVhyvy9X34d1LOg9UzOIOFTzUcAvqg0aIn8z6moaPbpVhZu63ibNCTUb7pKnnIFtb2nkVFGa070+UOl0eWAYGa0O2YPt2bc86BgR/Hq+jfl9JmqHDNEV0NrSKp+gi5YhLOBenZGic6P4djYIBaHt8cjIkZP5CABjkxbPoj+xJKxbQ4n2HoMbJRa1lK0HkDUBNd2R6MkrlwNmejZnW/MCaSkoTyqwTV/AF5o3q1l2CfYM+ujdSvURQvuO0k/JlbBpMfyb0/9xtay6JtMugXQq7je9Y+9if60GESm30Eu0dX7o0UOQ8Iuc4UPdYtcohAeNvIto1ov+0mVp9/J5zxbOcmoVUWW2v6RS6DkMNr/849VuKDUeZ6tMGiI8zb7P3CvUzmYMGLQG6vB3rkdncot+tZpEsW7FzUaBv6meUFF3JrtGA7M4/fMEloFyqloxScnsSHu0hRNfkmQSnK/jXu/pq2GbvuWdGlnLHTx+lJtXjKve1XSkKhU4J5HMrpYUCS2LTXBSiwmtfsxo8fSo6FcHP7ntqIVjbOxifG0gCrV3ZDyL3HmEZ3mzurh8aWuTsjB4BINtknikSYXZH9igQ3VRAivw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(8936002)(186003)(86362001)(110136005)(316002)(38070700005)(2906002)(38100700002)(82960400001)(83380400001)(26005)(76116006)(122000001)(64756008)(66446008)(66476007)(66556008)(66946007)(4744005)(55016003)(52536014)(5660300002)(33656002)(9686003)(107886003)(7696005)(4326008)(71200400001)(53546011)(8676002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PfAveU/7VE9b19UVYOW9duSXLVuxWXKogNwrD4fsZ5gQtGvf2ipeUwZbr/Z9?=
 =?us-ascii?Q?Y40pw9zgrSRi8i+g2Yy0EemKku3IOQLj0eZELHBppkS1MZp5idnqbrbfOWSe?=
 =?us-ascii?Q?3XcDJvg0yS9A/r3ffBFmR3S6ec+Zb8YH1eMNxzVGqaeddKz26LMczfQHhSt7?=
 =?us-ascii?Q?A0jmS6cGz2XZp77cdW9PFtwoIFixqSmLk3xl4O+yt1jFQqeUV/DC7n8pFxzu?=
 =?us-ascii?Q?cLfbVwJFIRdhDdW0fsE/at7etm3BD7tTuj4kyD1qwuHcBlNr7BEe5+p0ddGZ?=
 =?us-ascii?Q?ouevoHvMowB+pPyCW9xvEXPUYROVP9PthrRO95FmKEavoQ8wjG0JO3xEmif6?=
 =?us-ascii?Q?KrtpFlxBXAvCBTpAvWv3+QUWc+sr6Sg+hf2GrZ3mNC0Zq45tfMfcAHgmg+5O?=
 =?us-ascii?Q?7GfH3neEQVCAju/ufRIrSmr3Sly3oSykpWVFpmS9Hm3tOR78uNmoFYMFqRLw?=
 =?us-ascii?Q?fCz8oFhwn2V0pk/9NESqQ/6p7P2NAOjz8qyGCvHo3LKazcaC1CSRbXjdn2Xw?=
 =?us-ascii?Q?t+hvaUgHE4caC0UTJjTW8mye68+GmBJ+Ftk55bh+5TLrh3Uydzf/SenhEoVf?=
 =?us-ascii?Q?6c2MMBScIEvDK9vDKCw0VY9Yj6ADpKQBIw5VEiA60RSC3nktvI2LTZl/FrFN?=
 =?us-ascii?Q?IZyK8d1TLhoYRYLhj9xVHD/SVAAZMuIxHEgucDObtzvk7Dh7XOEyx3Zgii6Y?=
 =?us-ascii?Q?E+JnJLKBZALl6tVZRzrpy4BSJJyYML/HHYl+r2gYSsMP6GToE1I7PcVCBDfe?=
 =?us-ascii?Q?Pae/ywdTt1ZSP2LBrHhpAARSjUId8IIRJ9M+tdQE37TFZrCFJuC1q9BP9Dtk?=
 =?us-ascii?Q?DGNf/mLFb9rfJtXda1EZJ2iqexog01Vhf2ilCCfirxltYE6K+X0rtiB5XUHj?=
 =?us-ascii?Q?31m9rFj5rkW0wa09steo2KjwMz0cdUMF6OuACI65+A0GZ5y4XPyK75XZRPD+?=
 =?us-ascii?Q?IJCpPqKHynDSoNgCzlEYMcnr3sLca4B8bvvGUTDRUUrqwpEga37SEb2MVVsW?=
 =?us-ascii?Q?k5FVzxYRXwOVYuPJT7duAhTE62uq606ZDkLu5lTmL++Q4K6VMAZDudmarCb4?=
 =?us-ascii?Q?u7odkh5fQfhj8/AqIPvE5ILWd9lVmHbSvhkbqyt/GMKfCZxln+IBSp3qmUhk?=
 =?us-ascii?Q?NQfxH8ThK9KJb6vbeo/asUCm0EGZTd4+6jhi5W0Hm3DRCyMFQwk39dQi0MxM?=
 =?us-ascii?Q?CfAnedqIBOiKZHMfEhOjUYsgonuCRy6xto4VMScYpJs9FjJsyUCjjDsdT2eN?=
 =?us-ascii?Q?52K/gCPeRUe7zMg8ErFG3aeFYgg47E20vHNvH6hlsCahgPOuYTWKXnCvawR9?=
 =?us-ascii?Q?mEZSDoW5wJbBmeMMDkZQ/4ENAAbAjoW5UeVrCfrPymWpZSfbV/DMcGXOWCkh?=
 =?us-ascii?Q?f7pt5xMeaRuvsxKJBOB+FPCIetyj7fAbohbSYE+rkJVLbUq6TWXVp6BRar+F?=
 =?us-ascii?Q?TvgvPOD7EhD6DpcaP0gXvlVRYbHRg9NfHWs9fXJJJREn+qBynCtKDYlOr6d6?=
 =?us-ascii?Q?0FdqUkMPeeuu0MEcZxqfPH3LO0BSmsHJSWDfRdFQKm7+GoLehHSYsVrat+cC?=
 =?us-ascii?Q?pwCXSwUIdFjEHbrfUdFP6kNhSHXS540DHWEsZvWPClVFzdb8kyx95t6BoQ5x?=
 =?us-ascii?Q?YuZ7NE+1pNOyf3v563u8w+I=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f970cbbd-69a1-4ca8-623a-08d9c508113f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 05:01:08.6131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wd6130MBqCHBTPI3AUIXDnG1Kjfr4dw2LkUW6Eza0hBCuD5QuufPqKxCRPxc9vZMao74oGos91jC2DtVihmpuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4356
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Increase delay to 1 s
 after global EMP reset
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
Cc: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Thursday, October 28, 2021 7:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Increase delay to 1 s after global
> EMP reset
> 
> Recently simplified i40e_rebuild causes that FW sometimes is not ready after
> NVM update, the ping does not return.
> 
> Increase the delay in case of EMP reset.
> Old delay of 300 ms was introduced for specific cards for 710 series.
> Now it works for all the cards and delay was increased.
> 
> Fixes: 1fa51a650e1d ("i40e: Add delay after EMP reset for firmware to
> recover")
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> ---
> V2: Fix commit msg
> ---

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
