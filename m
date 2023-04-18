Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783C76E67D9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 17:13:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 073CF41E2A;
	Tue, 18 Apr 2023 15:13:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 073CF41E2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681830824;
	bh=rgwEv48QTlFYxcRbZNBZRmuW3+f+wUsa33XAl6gKhVk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cvcysrkKe9GTIpYw+P9O+AjzEDm4FPB0dMhYRSEe+iWW/xrgF57wXRQ1zBZ2IiV26
	 g8ytW17DPpLSeiN/tgtv3kUnJTxtipYqZhdZ95JpHTAUwev3mYh0amFtN59DHPG9DL
	 ajG9aX5t01mV6/lmwnpJ12cPHSWuQv/J5ZNiQqW0Z5U4T46s6lz07KgVEqx0Gw2rH4
	 MYS1oBFsvJW4kGXINy9t2yS05bp0/ioERGfmiB7uNwC81MULOLA2jQ0KQFSP8O0T2R
	 eNkWJTkD26MFrOpbBJHTUtWNF6K7kBkGOavimEF0EpJarV3PLiCZ7lhON+7WOVmImo
	 kh0s3iealcK6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDbVMSKi4x3l; Tue, 18 Apr 2023 15:13:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C801441E09;
	Tue, 18 Apr 2023 15:13:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C801441E09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7031BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 06:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70F664026E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 06:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70F664026E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZH-AeZAtQq5Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 06:08:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2194D4021D
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2194D4021D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 06:08:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="325425554"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="325425554"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 23:08:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="1020687258"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="1020687258"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 17 Apr 2023 23:08:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 23:08:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 23:08:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 23:08:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HiX0AJMBLfNecwcy+EFGr5JtnLwlhBK4UX+uSQxc6ZkGZy7LHGvFw3jBlJZNZr9MwQTG3s9ZvanJcn/ebQRsU01tsy1c+V7MGrKNvZzSSXzLYPdOodiz6NeP6bHo8i76fIuvVDk11CIdDZIYUo4dIK/Eb7Ct12Q5VQoknFg8uitFMZ3rYpadP1e5Cn1ZbX/ua7lodfDbEiOQg/4iOWuy09yCBa/ZqJYNeuca6Ps7Do1RhUC2vm1XE91iVn0YeE1vcycfCrHOfa5X3TmaaAjRfcxsppoAcI+iNoStrreXrFBM0qwLrwy40b/n2Gy1awAa6F6vLOZ4PWokg2FvHjWIhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=th4JeeXdDZ+tQ9RWwwTjXm12iPhb0AEy2vQ1eVslPsE=;
 b=N/nrb/2DLnlOVxfYboVMbVfvbmAIl1994cw8SHDm6yl+NaDtXgiA1CIRRBxi0ZItXJ1LSKxAiaDXi2Xur9U8CRglOlcIuH782g32oYgzxaI9EIYONKUBfcMbTOPi/fBck4F6BmfAo0CbD/7yvpjui8uayI2yAlkvb4QbdstGtm8VsmjtxlTvvjH7D/tBIvEJDsYmKI21btqWxJTgo4nsEVTDUsBXQjahgopoUm3WahBi1FBf/uArUk0a+QUypC9lZhpHxQ49WlrGNj6cIRFeuAMmuZdqubtwP3fQBaDeTXteiEobXHNi+I733D4q16GeP1lqZOK/Yx0VtaMqdfbTXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by DM8PR11MB5607.namprd11.prod.outlook.com (2603:10b6:8:28::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 06:07:58 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 06:07:58 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Kanzenbach, Kurt" <kurt.kanzenbach@linutronix.de>, "Brouer, Jesper"
 <brouer@redhat.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Stanislav
 Fomichev" <sdf@google.com>, =?iso-8859-1?Q?Toke_H=F8iland-J=F8rgensen?=
 <toke@redhat.com>
Thread-Topic: [PATCH bpf-next V1 5/5] selftests/bpf: xdp_hw_metadata track
 more timestamps
Thread-Index: AQHZcTz1X0h8VE1O+0qh5RVifeCknq8voQQAgADy+XA=
Date: Tue, 18 Apr 2023 06:07:58 +0000
Message-ID: <PH0PR11MB5830D771AA05F28675173A42D89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174344813.593471.4026230439937368990.stgit@firesoul>
 <87leiqsexd.fsf@kurt>
In-Reply-To: <87leiqsexd.fsf@kurt>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|DM8PR11MB5607:EE_
x-ms-office365-filtering-correlation-id: 4b42bdbe-421e-45dc-6675-08db3fd34255
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9PFiGaRR8y9JSE2iLGEpDOMhS82J6aycMDMAsRKkYJayRqndG5Z4DjFpnxFKc/YEwfCf6fFI+Y+2fCsiQlk2q7zOkOeZr/Xs7apm/BdiViM9P8wQLKYI50m+L5RoZ7TD8a2AFJ2C2zYvk/1zPRvg0m37mxW1qGSlrhmaTD7LKeFeRe+QSQkKlFL8+kJyZ7RK2IlAiabh6GZqwaSHfk2xXw2KInKZ8GTKLMJ4Q381qkJIxZARBF2LJhD0hty/n8rMZ98qYH9D5XaP42byp+xmVEcJbHi6cHM7ijwB6DuXv2WtI7hnk0kkpMjpnTZiIdCeZjvj+KXNhNmmvRIjoyH9x3/646E5LJN06m0RdBGeGC9GLGhZo8U3v7IsnCVSNuELQweWVD64O3/XQFHFA6+r9twf8ie+pyGMt/G2ZRLkZEXVmWLDqNlqo69w8oelybKdCZ8h5f6Ay2QpB3rYGVGl2Xh/CtqN2m1Q94LOl68Qpg6crqkXyH8TeLQhh1GGgfCduVkzNVs/RoVJh90DyMAsQwGaCB6jLcAIgsGt3t8O8+qJ2pFli3NxTEf8s7VOfn2T1MhJqpvtZFf8Cs5b3Y53VoF+WF8ZOXOFRPnk0w2tzww=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199021)(38100700002)(8936002)(8676002)(122000001)(38070700005)(5660300002)(7416002)(2906002)(33656002)(86362001)(52536014)(55016003)(478600001)(7696005)(71200400001)(54906003)(110136005)(186003)(966005)(9686003)(66946007)(53546011)(55236004)(6506007)(76116006)(66476007)(66446008)(26005)(41300700001)(82960400001)(316002)(83380400001)(4326008)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?eBOVCNGQ91RtGoGR1j5mXN3drEBYf5ADwC4a2Vp9vLE3byAYV1jX6uxrKB?=
 =?iso-8859-1?Q?FYE588YpF1qASEDS65DgGog+rxvak2HnpJyDlpKEYu2HnN6XuckFVls7YF?=
 =?iso-8859-1?Q?eSt3sLN6SQ41KjOy7aZLWYoXCVuSIfd6Ga8Xi0ABp/LNagE/mZbkQcwdPk?=
 =?iso-8859-1?Q?f3VgCA43wNUt7K38LYUA9mp4WJcGimmYif+UXR2wiItJ4vcj9AORbcbzfi?=
 =?iso-8859-1?Q?YOuCAajavxiWzpRLfDp46YfeZDzKmjUc8FCPdJEDBDl7AjjPqAre5g1Lu1?=
 =?iso-8859-1?Q?3vDDUl11enqFbnE65DFQslF9mAXsM2WX1oiVAuoEdeV5nGjjMvVoB/fpxZ?=
 =?iso-8859-1?Q?Mr3ZhoWYBuLRE6/Iz8o+SUKX5JwYtQqg9c4PMrLw3+a6sqp+ApNjVy8FrD?=
 =?iso-8859-1?Q?iwyIO1iM7NZgOz2VRFccuhUppPjuVS22Uw6iz9vRT5mPFCIgxfj4k0sm+t?=
 =?iso-8859-1?Q?t8Npv1OjVeoPPt+J6fC4z8rpM96G6iooI/RTeyhy2c7/rKW3l8Dry2JUl3?=
 =?iso-8859-1?Q?CdMz8SVHxk52z7L8owsLAlOf2sS6E8UKS+6pN/UJJBvl8ixoGgzAjHG7C2?=
 =?iso-8859-1?Q?94d4GOmHGIwWuxWdSB3l6vpPAZeTsdfg0ZiEB3R21QWqWI3/EAqzPBfAH6?=
 =?iso-8859-1?Q?TrgSlMADU2PfiQVfwXCyluqbxdgc+zNBU7CGk/lLSUht3qFJJ+mGigeBLM?=
 =?iso-8859-1?Q?M8/eddAqXIXK+5CTCqhGz+MK7pmFKQhQnwMjBOjxbWhZkHAS722MJVBkEw?=
 =?iso-8859-1?Q?XYoPrC0Swncppu5uB6bz8oXMra0NtaKB5JLjKRJfQVC1X46PBBv4z2q18t?=
 =?iso-8859-1?Q?fjs9Hh/aUtHWKAref0d1AbHhYi5etbmara/kHIZGnOI3S4/VGI48cUIyTr?=
 =?iso-8859-1?Q?fZYI62QsdRIcLH2Dt5h3kINchzQRRMVJAhXkIQSNfz9ayP9UzbUJZAqqRd?=
 =?iso-8859-1?Q?4PQKQKcHFevi0S2UmrOWTW2YdJ6MrpjBINycfyOXupt0FXcTYokubia94x?=
 =?iso-8859-1?Q?fIlNUgOvADJtANpMD7EhGXRYqkfBCOAtRa51BkEUser09ZnthAJrNQFwDa?=
 =?iso-8859-1?Q?36Ez7r+80DfE/L3jvEB/nxgFbPfgXGXK3PvdLx6ogJaw6a8G3Hgt2NRfCZ?=
 =?iso-8859-1?Q?Op0IqMmeYzgOG/2WQz2TMAcTn4bRvzCcxQlzBUBb19VXVbMrilDSzChs5Y?=
 =?iso-8859-1?Q?pesL7jKDZAD/kphUtJk1Z6GG/FC/0j4qtVUwbvcOtukiTXRCAwZzud1Tow?=
 =?iso-8859-1?Q?6gLHUPspi/W7qUmEhpaTprJuzEszWrghcJ3xiDQh6rDBsfnovsQspbTIfh?=
 =?iso-8859-1?Q?pGgJrf77ViSAJf0YELZ8czwvIjm7EQD77uJZVUzADD4m18uPxE7BX3XMXm?=
 =?iso-8859-1?Q?5ch8Gboa9SJdzRNBa9oDYpSIbHQOS3ULyL3bUgjaALSUP30HGVIkJisiJr?=
 =?iso-8859-1?Q?6j0dsiOl1K69jLcXnSdR3t8GgVqdGp2fghUWDErBCvJ/FV6YeRJmSiUbjk?=
 =?iso-8859-1?Q?5Hgs8BPNc64RorKcx3z3ufKGRY5fVHcMXd8CXTsle378+TRIRXCQPezXl2?=
 =?iso-8859-1?Q?u/MXqF96tVKHpBbaewN8w1fmSDUEC4T22QtGz6EiQy3eRljMZtGnF1jW+T?=
 =?iso-8859-1?Q?tOj7M6M7UEz5sE/hQ9ZjErVpn9E878kVUmrcYejWAZU4i0kbEW5QZswQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b42bdbe-421e-45dc-6675-08db3fd34255
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 06:07:58.6009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yv33mAaZ+o+H1Ue2u2+UknwSxGMt+2GRFKsox1cGe8t5/+sARTbkQ0ZCMGsewS7kbanIkXx+ftr8E0t0IgOh6a6oGt3bfTdGV5sSWn9q/Ps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5607
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 18 Apr 2023 15:13:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681798088; x=1713334088;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jZd967WN7ppNIsQ78lhpWFyZRL3ypnT5Ghkvyq79brA=;
 b=XLxLQ92N3JA9Nw3O1UMz3qQBPsuToL9DZR7v6YkUxWpQ9wqmCiTEje3G
 uWAmsMPswetJdMRyd6ILy5O2fGCirGK3+H9Sioz3zoJoTDCGfziuS/GC0
 u11Q22caYPhUG5SJPY6Rg2ctOgeE371N4gnMExtoH8rRmX0aakKSNDQ+M
 KNqZWd0y2gVvRIeaYUMlQBumLSwELLcpabikqSmyArXr2XI/AiRT2IzHW
 KvlLjn0dwO0r56AF2yX3ZHgGaNyi2fjQx7vb1/RzYpnH670/eHktvVzjD
 UW/I3cxd4Vai21SquizcL3EgmHLwNq9mRqCG4vsobBSuTqMiyTt6yaY3o
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XLxLQ92N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1 5/5] selftests/bpf:
 xdp_hw_metadata track more timestamps
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "martin.lau@kernel.org" <martin.lau@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Monday, April 17, 2023 11:32 PM, Kurt Kanzenbach <kurt.kanzenbach@linutronix.de> wrote:
>On Mon Apr 17 2023, Jesper Dangaard Brouer wrote:
>> To correlate the hardware RX timestamp with something, add tracking of
>> two software timestamps both clock source CLOCK_TAI (see description
>> in man clock_gettime(2)).
>>
>> XDP metadata is extended with xdp_timestamp for capturing when XDP
>> received the packet. Populated with BPF helper bpf_ktime_get_tai_ns().
>> I could not find a BPF helper for getting CLOCK_REALTIME, which would
>> have been preferred. In userspace when AF_XDP sees the packet another
>> software timestamp is recorded via clock_gettime() also clock source
>> CLOCK_TAI.
>>
>> Example output shortly after loading igc driver:
>>
>>   poll: 1 (0) skip=1 fail=0 redir=2
>>   xsk_ring_cons__peek: 1
>>   0x12557a8: rx_desc[1]->addr=100000000009000 addr=9100 comp_addr=9000
>>   rx_hash: 0x82A96531 with RSS type:0x1
>>   rx_timestamp:  1681740540304898909 (sec:1681740540.3049)
>>   XDP RX-time:   1681740577304958316 (sec:1681740577.3050) delta
>sec:37.0001 (37000059.407 usec)
>>   AF_XDP time:   1681740577305051315 (sec:1681740577.3051) delta
>sec:0.0001 (92.999 usec)
>>   0x12557a8: complete idx=9 addr=9000
>>
>> The first observation is that the 37 sec difference between RX HW vs
>> XDP timestamps, which indicate hardware is likely clock source
>> CLOCK_REALTIME, because (as of this writing) CLOCK_TAI is initialised
>> with a 37 sec offset.
>
>Maybe I'm missing something here, but in order to compare the hardware with
>software timestamps (e.g., by using bpf_ktime_get_tai_ns()) the time sources
>have to be synchronized by using something like phc2sys. That should make them
>comparable within reasonable range (nanoseconds).
>
>Thanks,
>Kurt

Tested-by: Song Yoong Siang <yoong.siang.song@intel.com>

I tested this patchset by using I226-LM (rev 04) NIC on Tiger Lake Platform.
I use testptp selftest tool to make sure PHC is almost same as system clock.
Below are the detail of test steps and result.

1. Run xdp_hw_metadata tool.
   @DUT: sudo ./xdp_hw_metadata eth0

2. Enable Rx HWTS for all incoming packets. Note: This step is not needed if
   https://lore.kernel.org/all/20230414154902.2950535-1-yoong.siang.song@intel.com/
   bug fix patch is applied to the igc driver.
   @DUT: sudo hwstamp_ctl -i eth0 -r 1

3. Set the ptp clock time from the system time using testptp tool.
   @DUT: sudo ./testptp -d /dev/ptp0 -s

4. Send UDP packet with 9091 port from link partner immediately after step 3.
   @LinkPartner: echo -n xdp | nc -u -q1 <Destination IPv4 addr> 9091

Result:
   poll: 1 (0) skip=1 fail=0 redir=1
   xsk_ring_cons__peek: 1
   0x5626248d16d0: rx_desc[0]->addr=100000000008000 addr=8100 comp_addr=8000
   rx_hash: 0x35E1B60E with RSS type:0x1
   rx_timestamp:  1677762195217129600 (sec:1677762195.2171)
   XDP RX-time:   1677762195217202099 (sec:1677762195.2172) delta sec:0.0001 (72.499 usec)
   AF_XDP time:   1677762195217231775 (sec:1677762195.2172) delta sec:0.0000 (29.676 usec)
   0x5626248d16d0: complete idx=8 addr=8000


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
