Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4506176C7A2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 09:56:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA7D78201C;
	Wed,  2 Aug 2023 07:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA7D78201C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690963004;
	bh=qe3Oz2UXTtchHIRsogcYm4miRrUMiyHlwYpPmVx2xpU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9vUnlSQZiF/bh5sKWvquOkVPUCxBq5Hf6dIuIBwmrX4wU0lShewl2tdE4ZOqr5rP9
	 Cm9GLsXUZUl+WKkZw6st/ejGM0rrS52AVod2I+CkKw29pndbwer5vjnsenkhCwwGlh
	 yeJKnRQEo11r7qghRFG8gaetqvfNZZ6Hs1A/95cR7cWw7jrfU/0F2R/bs1Rx/00rM3
	 TqrSRFZoAKYT+Luq1JFufEEx4EK3HlbzkS4R0n5gWHfBA5H8BwhILUqS7J3D7oEcev
	 jBJMC7YtUVbYsYEQ6JisSlSAFew7PUIcCdvIV4pecXEoetbXv2SO++YDV5zms3DeQ2
	 eEr5fJ2RBXrQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3k71FMZgH-z; Wed,  2 Aug 2023 07:56:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C4B780E16;
	Wed,  2 Aug 2023 07:56:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C4B780E16
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FA1B1BF869
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E960D418F7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E960D418F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SJOnbdbWE5Gb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 07:56:16 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8355041911
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8355041911
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="359554274"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="359554274"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="722773459"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="722773459"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 02 Aug 2023 00:56:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 00:56:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZM7Tg8trcJExh1Az/sesRkSyX9fBQ8Kl9JvndzGBtiGFokWYgQkOjozu0+4YFSYJIsGRRAr96ODthp+WX5qY7fE3p27cAp0XI7mmw+q6Xi3iFtOwBzUnf5527NCBSOrrJXKwmtgM46GkgjaayYOSPcXf0gYEaMJoJVDpXMwMR4zevTwlxGCjI4qiAL63K4s3X+MnUxcg3BER5Nzy3ILgts3gBVmE4RGSx2rjQat8OVG/gQToJUxv9Re+w46ZK+9Xk4zQB/o4wxHoDKkntd9b9EHEVRAAnNZjggRdP+v+b8LChgOdLC7g9xDJA08ygxMG3kuk/IzxasocfSrhePXUBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6D9V0uixweURZ4XJ1AqFgcqZX9fRwcxCLAgNy26Xiec=;
 b=avBD1MRd/tLf8RbBUq+FijWmLLURJ9FP38XsDc/gkIs+HV03XRBj6Gh7ZLWqaPJ5iFvH8D9KZmIP2JgwfmCo73fR7SvIdkHPPe7qwbJbmpQdRp1qAy7B/1D3WkRuS2ftLzaGtRzBFuMF8FMPyEYZEBYLzX/J/qgvIcnyNtSOpJBAtMoeo7Y4zmhesqILCQoeO9tiqg3cTFRKGDEV0n2Rb9X5z8Gu1tNqbiDELWtpoNWmDIof5NpRD1qiMrR8h6FnIi7WK6Qb9UyurkjOIeP1B3tIXdtzuYPzTyk9qZsEzUA+xIvfTDcF8ojdMzS7QDe5XppElzLaWD/X+fyAOD+IAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 07:56:12 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1%4]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 07:56:11 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 04/15] ice: init parse
 graph cam table for parser
Thread-Index: AQHZl3FQtoZImUJW70y924wwVTPkta/JBqsAgA3YyIA=
Date: Wed, 2 Aug 2023 07:56:11 +0000
Message-ID: <DM6PR11MB37236A3BDCFA2F43F22E7C95E70BA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-5-junfeng.guo@intel.com>
 <1e367e7f-2b95-7b53-dbd2-b0163ad0ceee@redhat.com>
In-Reply-To: <1e367e7f-2b95-7b53-dbd2-b0163ad0ceee@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|PH0PR11MB5657:EE_
x-ms-office365-filtering-correlation-id: 31ceb814-e2af-4812-fcd4-08db932df065
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Oe94s3OrN1BU0M4Ec86G0TYmGa7kEVs9fHO43gREm20ZxULKiCp+cq8E3XT4tffTFA+EIrLu/zezbfvmZa/op08mLYOlszLr6M8wld4E05V0fNr+HMV+15pBj7rgp6f2ufWb38fRjH0ImXz8OZz/Lw2UCzaA6lwePaJbxYyiX43rhUE9O5zH22cXPJN8A4+Oqpk8WJXmK85YLLDH3TVXwyeafQoUcGvV90+SzM1Z8NLgbNAibIbg1uHJvVfRqsGfmkx59sXArAmBEfhm0hqgjJEFu5M2liJRwdNtImwkXDZWxILeyqXaoRqskCYcUwIoPXmMfY5cd7mOvxK9ODKvhjri4r7WCESwjFqMdS+rFdgm8jTsfTQ3976jw+9pvrPcoXCQfQnxN8c/lUIs0SecWw3gt3+MTVwlor8TV9rGRCfAdhQFPZPQ3LdsJ3nTmMHhS7LMW9azhvLv7cx8Y8CsemHJSGF2CFGGOQeFQaLkpPI4igoRXWLweUGKLQrVJFCdLuuOEPArAmKfKjSPNfUmXaqqnrNZtzKbmM4+dkL9OFsjzq54BzKXNkvfOIwp3N4b+H84DQiVlFoQeiVdtJGeYsyXZxMaWrYQXTSoGHpqSv7bLsA03Hh3U5FV3o9mnbLG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(136003)(396003)(346002)(451199021)(55016003)(186003)(9686003)(316002)(86362001)(478600001)(122000001)(54906003)(110136005)(38100700002)(76116006)(71200400001)(66946007)(66556008)(66476007)(66446008)(33656002)(64756008)(7696005)(4326008)(82960400001)(6506007)(53546011)(41300700001)(26005)(52536014)(8676002)(5660300002)(8936002)(30864003)(2906002)(38070700005)(83380400001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gbSv1JT6bHq+OFfzr2BOlChFxPwqeAnAQNS8C0yTHXJX/nMXHytm2irz+KwE?=
 =?us-ascii?Q?aMRqfg7vDFYiYc5ZqgOglk/Q2ujKFOkfemDTbyoY9+0cEImjLYWhTCsuA666?=
 =?us-ascii?Q?So46fPl2ksj3G4oxIo8D8abvapKSlsyK26nsUtYRRCw1KeDTo8qXoL6ZPkR+?=
 =?us-ascii?Q?LMfIONL9Oj0xgYtmGrYQO87S84sYwYcQWrxvF63dWz44T1VLT4XI10Cof+Dm?=
 =?us-ascii?Q?q1bkUmmVQJdifg7up19D0PuD/0krzPqw/USbGgYYwPQ4xfCds5gAJ5Q7SLY7?=
 =?us-ascii?Q?FU5vBnPkpjP4KJQiPLp/Sk3F6RgQxBiAoWqELQCCbtm1p38CEb8pzhqGUong?=
 =?us-ascii?Q?ClT6K+jTYbEAGXisKXsXIbsCTtmmWVhYBPhaGaIQOWSOytLArJ+Cf7bVmCK4?=
 =?us-ascii?Q?qGoLu6mh0YE7k/AhFiRrCcZoXrl4CJPnaWxLfFrwOeljaeaxDjFsEcYuTdri?=
 =?us-ascii?Q?TWqYk9YY0eesbq9ZqnahhbvNd6GehBcjfSqxp7O7u6TbkWgp0+8LQg7FT+DI?=
 =?us-ascii?Q?M9F5f1G6h6136lLZ/pBEnv8eQ8CAFjGuYGUR55s+b6XG+a6Ww96uXIGrjIkl?=
 =?us-ascii?Q?e7X94BvxBaoFPJvV/ESyNvCuO6+LNbZGnWhcWDo7IAnIK0td0/HBDcXc/wAO?=
 =?us-ascii?Q?Nj6yThcEmI0fkekD4brNcm1vJMvUSHwBa+wMk24GjXo5/4my2sas/U5J+7GY?=
 =?us-ascii?Q?IkEWWxxmA/0f/7KUu10KTfsNmFroAuZUfIRvhZ9stPMcvt9KLVjRNp/I5uI9?=
 =?us-ascii?Q?BH8Rp9QlY73EEDZ/087wJyVr3QmQ+cLukJPobytfkoDJLgiA5vBLqzB7M77e?=
 =?us-ascii?Q?DdtEeXZ7hdYMiyrNfJnIaBTDz5/B0gMkWDZQag0e5MkB/YFUCcFaNIE4dYGe?=
 =?us-ascii?Q?zXv4pmmSwGcu5iDgbVmUQuajPvFip7jpy/O6/5+qzRYWJJYsKLjI5wf7Crjt?=
 =?us-ascii?Q?lcnfANW+BIuYM5NM+XFFY/uQKdDlgzncYWuvNl4Hl+tk2y3n44dcnWtOXKmH?=
 =?us-ascii?Q?UsN4FstW4ArtUFrltCmzGTpdoLV7GmDwGRLI+MsTp6bBAbDOZGlHOdYTxDP9?=
 =?us-ascii?Q?8WsIKiEAT1/dDSeQbFaoJhflZcUck57p7dJHWujv8HXW7WN7ZpckjF8dmKGE?=
 =?us-ascii?Q?11LNz4YqxEX2cbw54VvsdLeUHZjGHAU4FOgXj74tWNtMyBPgGYBDRjWHCgoN?=
 =?us-ascii?Q?bUBF+juP8cUa3rk3p4NAM86Xv0llefc2gym88qunXbK7BQiY1mwvo3QprTQ/?=
 =?us-ascii?Q?gBSRCQo6q6syTnbpJRI+PNgH9QgxoxGrNKAu5YwNceqwyaSECpkmCVtw/kck?=
 =?us-ascii?Q?a5FZlc/2qoXIZ+YjBb3t53TT4FFqO3W0p6geZHME/SLe3fuqc/+a4LLl8EME?=
 =?us-ascii?Q?CCUeIEsIrneFh4MP+q9lqwdJ5xOFjdZ4LaWomDrn34EsJpePxDyZRmAYW9Bq?=
 =?us-ascii?Q?uvbJyi0MCJjmOL8sjSho5XuF8xDp2JWRd+UzX8eKNwtHlSdSVm5jyeTUBjTr?=
 =?us-ascii?Q?Q9Gpnd9v/SGKVqxDTVD1s5+liYOt2gHJ0zDNmuiJ/kxJEgs5CMKkom4kkTh7?=
 =?us-ascii?Q?uLNQahU/3+VAHaKTsQ1ng9bbUqVtuklsOjfClacB?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31ceb814-e2af-4812-fcd4-08db932df065
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2023 07:56:11.8611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XD007W3TsBShrA2pVO183O1hacHwIwZb2fs1KZtlqq/cdWZB47XLp5mWWXoh2KJYsCmSlSnD6Zv0FO/OVKCfvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690962976; x=1722498976;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K8VWu4FKJELcw4Q1nu0kDWcMwLBu0Ia8MUHPEdMrCso=;
 b=XluN6W8LFk/IOtWz2505POVEgJmTjPwyIoOqKG6K+mIMFZzwcDWzUsE5
 M7azT99VkDGGxmR50bdFzDeumuaBibWJb3eGsBkkUX4tmRMv6I+7Fb1hU
 KRDRx15kuXXE5dyQzxRSsc5zGNIms+ymrcV8sluC7QpIWv1WL7HXU87HB
 Do5h1/SHQAuXG1sY3pvl5QPcmiEj9PWW1R4nQYIogMYqFCNzJP6N9630c
 +gEeAzSoaYvQntB39QLTIfI0N5VIiTjjv1DY7oyTLYkKhoJ2XDeinHKf1
 08LF7faPQOGSHizw+wjuG/p/lXTBwCa/u7kzAgzmtl3UdQU6zPC3eDG3A
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XluN6W8L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 04/15] ice: init parse
 graph cam table for parser
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Monday, July 24, 2023 18:37
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; mschmidt
> <mschmidt@redhat.com>; poros <poros@redhat.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 04/15] ice: init parse
> graph cam table for parser
> 
> See inline comments...
> 
> On 05. 06. 23 7:46, Junfeng Guo wrote:
> > Parse DDP section ICE_SID_RXPARSER_CAM or
> ICE_SID_RXPARSER_PG_SPILL
> > into an array of struct ice_pg_cam_item.
> > Parse DDP section ICE_SID_RXPARSER_NOMATCH_CAM or
> > ICE_SID_RXPARSER_NOMATCH_SPILL into an array of struct
> ice_pg_nm_cam_item.
> >
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_parser.c |  44 +++
> >   drivers/net/ethernet/intel/ice/ice_parser.h |  12 +
> >   drivers/net/ethernet/intel/ice/ice_pg_cam.c | 300
> ++++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_pg_cam.h |  67 +++++
> >   4 files changed, 423 insertions(+)
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.c
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> > index a1f28395c1a9..22c2382ae9e8 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > @@ -7,6 +7,10 @@
> >   #define ICE_SEC_DATA_OFFSET				4
> >   #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
> >   #define ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE	24
> > +#define ICE_SID_RXPARSER_CAM_ENTRY_SIZE
> 	16
> > +#define ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE		17
> > +#define ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE
> 	12
> > +#define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
> >
> >   /**
> >    * ice_parser_sect_item_get - parse a item from a section
> > @@ -32,6 +36,18 @@ void *ice_parser_sect_item_get(u32 sect_type,
> void *section,
> >   	case ICE_SID_RXPARSER_METADATA_INIT:
> >   		size = ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE;
> >   		break;
> > +	case ICE_SID_RXPARSER_CAM:
> > +		size = ICE_SID_RXPARSER_CAM_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_PG_SPILL:
> > +		size = ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_NOMATCH_CAM:
> > +		size = ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_NOMATCH_SPILL:
> > +		size = ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE;
> > +		break;
> >   	default:
> >   		return NULL;
> >   	}
> > @@ -127,6 +143,30 @@ int ice_parser_create(struct ice_hw *hw,
> struct ice_parser **psr)
> >   		goto err;
> >   	}
> >
> > +	p->pg_cam_table = ice_pg_cam_table_get(hw);
> > +	if (!p->pg_cam_table) {
> > +		status = -EINVAL;
> > +		goto err;
> > +	}
> > +
> > +	p->pg_sp_cam_table = ice_pg_sp_cam_table_get(hw);
> > +	if (!p->pg_sp_cam_table) {
> > +		status = -EINVAL;
> > +		goto err;
> > +	}
> > +
> > +	p->pg_nm_cam_table = ice_pg_nm_cam_table_get(hw);
> > +	if (!p->pg_nm_cam_table) {
> > +		status = -EINVAL;
> > +		goto err;
> > +	}
> > +
> > +	p->pg_nm_sp_cam_table = ice_pg_nm_sp_cam_table_get(hw);
> > +	if (!p->pg_nm_sp_cam_table) {
> > +		status = -EINVAL;
> > +		goto err;
> > +	}
> > +
> >   	*psr = p;
> >   	return 0;
> >   err:
> > @@ -142,6 +182,10 @@ void ice_parser_destroy(struct ice_parser *psr)
> >   {
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr->mi_table);
> > +	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_cam_table);
> > +	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_sp_cam_table);
> > +	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_cam_table);
> > +	devm_kfree(ice_hw_to_dev(psr->hw), psr-
> >pg_nm_sp_cam_table);
> >
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr);
> >   }
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h
> b/drivers/net/ethernet/intel/ice/ice_parser.h
> > index 8fcc10479260..1f699ef12387 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> > @@ -4,6 +4,10 @@
> >   #ifndef _ICE_PARSER_H_
> >   #define _ICE_PARSER_H_
> >
> > +#include "ice_metainit.h"
> > +#include "ice_imem.h"
> > +#include "ice_pg_cam.h"
> > +
> >   struct ice_parser {
> >   	struct ice_hw *hw; /* pointer to the hardware structure */
> >
> > @@ -11,6 +15,14 @@ struct ice_parser {
> >   	struct ice_imem_item *imem_table;
> >   	/* load data from section ICE_SID_RXPARSER_METADATA_INIT
> */
> >   	struct ice_metainit_item *mi_table;
> > +	/* load data from section ICE_SID_RXPARSER_CAM */
> > +	struct ice_pg_cam_item *pg_cam_table;
> > +	/* load data from section ICE_SID_RXPARSER_PG_SPILL */
> > +	struct ice_pg_cam_item *pg_sp_cam_table;
> > +	/* load data from section ICE_SID_RXPARSER_NOMATCH_CAM
> */
> > +	struct ice_pg_nm_cam_item *pg_nm_cam_table;
> > +	/* load data from section ICE_SID_RXPARSER_NOMATCH_SPILL
> */
> > +	struct ice_pg_nm_cam_item *pg_nm_sp_cam_table;
> >   };
> >
> >   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.c
> b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
> > new file mode 100644
> > index 000000000000..25b837ba684c
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
> > @@ -0,0 +1,300 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#include "ice_common.h"
> > +#include "ice_parser_util.h"
> > +
> > +static void _pg_cam_key_dump(struct ice_hw *hw, struct
> ice_pg_cam_key *key)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "key:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\tvalid = %d\n", key->valid);
> > +	dev_info(ice_hw_to_dev(hw), "\tnode_id = %d\n", key->node_id);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag0 = %d\n", key->flag0);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag1 = %d\n", key->flag1);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag2 = %d\n", key->flag2);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag3 = %d\n", key->flag3);
> > +	dev_info(ice_hw_to_dev(hw), "\tboost_idx = %d\n", key-
> >boost_idx);
> > +	dev_info(ice_hw_to_dev(hw), "\talu_reg = 0x%04x\n", key-
> >alu_reg);
> > +	dev_info(ice_hw_to_dev(hw), "\tnext_proto = 0x%08x\n",
> > +		 key->next_proto);
> > +}
> > +
> > +static void _pg_nm_cam_key_dump(struct ice_hw *hw,
> > +				struct ice_pg_nm_cam_key *key)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "key:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\tvalid = %d\n", key->valid);
> > +	dev_info(ice_hw_to_dev(hw), "\tnode_id = %d\n", key->node_id);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag0 = %d\n", key->flag0);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag1 = %d\n", key->flag1);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag2 = %d\n", key->flag2);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag3 = %d\n", key->flag3);
> > +	dev_info(ice_hw_to_dev(hw), "\tboost_idx = %d\n", key-
> >boost_idx);
> > +	dev_info(ice_hw_to_dev(hw), "\talu_reg = 0x%04x\n", key-
> >alu_reg);
> > +}
> > +
> > +static void _pg_cam_action_dump(struct ice_hw *hw,
> > +				struct ice_pg_cam_action *action)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "action:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\tnext_node = %d\n", action-
> >next_node);
> > +	dev_info(ice_hw_to_dev(hw), "\tnext_pc = %d\n", action-
> >next_pc);
> > +	dev_info(ice_hw_to_dev(hw), "\tis_pg = %d\n", action->is_pg);
> > +	dev_info(ice_hw_to_dev(hw), "\tproto_id = %d\n", action-
> >proto_id);
> > +	dev_info(ice_hw_to_dev(hw), "\tis_mg = %d\n", action->is_mg);
> > +	dev_info(ice_hw_to_dev(hw), "\tmarker_id = %d\n", action-
> >marker_id);
> > +	dev_info(ice_hw_to_dev(hw), "\tis_last_round = %d\n",
> > +		 action->is_last_round);
> > +	dev_info(ice_hw_to_dev(hw), "\tho_polarity = %d\n",
> > +		 action->ho_polarity);
> > +	dev_info(ice_hw_to_dev(hw), "\tho_inc = %d\n", action->ho_inc);
> > +}
> > +
> > +/**
> > + * ice_pg_cam_dump - dump an parse graph cam info
> > + * @hw: pointer to the hardware structure
> > + * @item: parse graph cam to dump
> > + */
> > +void ice_pg_cam_dump(struct ice_hw *hw, struct ice_pg_cam_item
> *item)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
> > +	_pg_cam_key_dump(hw, &item->key);
> > +	_pg_cam_action_dump(hw, &item->action);
> > +}
> > +
> > +/**
> > + * ice_pg_nm_cam_dump - dump an parse graph no match cam info
> > + * @hw: pointer to the hardware structure
> > + * @item: parse graph no match cam to dump
> > + */
> > +void ice_pg_nm_cam_dump(struct ice_hw *hw, struct
> ice_pg_nm_cam_item *item)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
> > +	_pg_nm_cam_key_dump(hw, &item->key);
> > +	_pg_cam_action_dump(hw, &item->action);
> > +}
> > +
> > +/** The function parses a 55 bits Parse Graph CAM Action with below
> format:
> > + *  BIT 0-11:	Next Node ID (action->next_node)
> > + *  BIT 12-19:	Next PC (action->next_pc)
> > + *  BIT 20:	Is Protocol Group (action->is_pg)
> > + *  BIT 21-23:	reserved
> > + *  BIT 24-31:	Protocol ID (action->proto_id)
> > + *  BIT 32:	Is Marker Group (action->is_mg)
> > + *  BIT 33-40:	Marker ID (action->marker_id)
> > + *  BIT 41:	Is Last Round (action->is_last_round)
> > + *  BIT 42:	Header Offset Polarity (action->ho_poloarity)
> > + *  BIT 43-51:	Header Offset Inc (action->ho_inc)
> > + *  BIT 52-54:	reserved
> > + */
> > +static void _pg_cam_action_init(struct ice_pg_cam_action *action,
> u64 data)
> > +{
> > +	action->next_node = (u16)(data & 0x7ff);
> > +	action->next_pc = (u8)((data >> 11) & 0xff);
> > +	action->is_pg = ((data >> 19) & 0x1) != 0;
> > +	action->proto_id = ((data >> 23) & 0xff);
> > +	action->is_mg = ((data >> 31) & 0x1) != 0;
> > +	action->marker_id = ((data >> 32) & 0xff);
> > +	action->is_last_round = ((data >> 40) & 0x1) != 0;
> > +	action->ho_polarity = ((data >> 41) & 0x1) != 0;
> > +	action->ho_inc = ((data >> 42) & 0x1ff);
> > +}
> 
> As in my previous emails... such blocks with hardcoded values are
> unacceptable.

Sure, make sense! Will update in the coming version. Thanks!

> 
> > +
> > +/** The function parses a 41 bits Parse Graph NoMatch CAM Key with
> below format:
> > + *  BIT 0:	Valid (key->valid)
> > + *  BIT 1-11:	Node ID (key->node_id)
> > + *  BIT 12:	Flag 0 (key->flag0)
> > + *  BIT 13:	Flag 1 (key->flag1)
> > + *  BIT 14:	Flag 2 (key->flag2)
> > + *  BIT 15:	Flag 3 (key->flag3)
> > + *  BIT 16:	Boost Hit (key->boost_idx to 0 if it is 0)
> > + *  BIT 17-24:	Boost Index (key->boost_idx only if Boost Hit is not 0)
> > + *  BIT 25-40:	ALU Reg (key->alu_reg)
> > + */
> > +static void _pg_nm_cam_key_init(struct ice_pg_nm_cam_key *key,
> u64 data)
> > +{
> > +	key->valid = (data & 0x1) != 0;
> > +	key->node_id = (u16)((data >> 1) & 0x7ff);
> > +	key->flag0 = ((data >> 12) & 0x1) != 0;
> > +	key->flag1 = ((data >> 13) & 0x1) != 0;
> > +	key->flag2 = ((data >> 14) & 0x1) != 0;
> > +	key->flag3 = ((data >> 15) & 0x1) != 0;
> > +	if ((data >> 16) & 0x1)
> > +		key->boost_idx = (u8)((data >> 17) & 0xff);
> > +	else
> > +		key->boost_idx = 0;
> > +	key->alu_reg = (u16)((data >> 25) & 0xffff);
> > +}
> 
> Here the same but also flag0..3? Could it be possible to use more
> descriptive names or in multi-purpose case union of bools?

Same here, there is no more meaningful description in the spec.
But we will try if we can add some doc here. Thanks!

> 
> > +
> > +/** The function parses a 73 bits Parse Graph CAM Key with below
> format:
> > + *  BIT 0:	Valid (key->valid)
> > + *  BIT 1-11:	Node ID (key->node_id)
> > + *  BIT 12:	Flag 0 (key->flag0)
> > + *  BIT 13:	Flag 1 (key->flag1)
> > + *  BIT 14:	Flag 2 (key->flag2)
> > + *  BIT 15:	Flag 3 (key->flag3)
> > + *  BIT 16:	Boost Hit (key->boost_idx to 0 if it is 0)
> > + *  BIT 17-24:	Boost Index (key->boost_idx only if Boost Hit is not 0)
> > + *  BIT 25-40:	ALU Reg (key->alu_reg)
> > + *  BIT 41-72:	Next Proto Key (key->next_proto)
> > + */
> > +static void _pg_cam_key_init(struct ice_pg_cam_key *key, u8 *data)
> > +{
> > +	u64 d64 = *(u64 *)data;
> > +
> > +	key->valid = (d64 & 0x1) != 0;
> > +	key->node_id = (u16)((d64 >> 1) & 0x7ff);
> > +	key->flag0 = ((d64 >> 12) & 0x1) != 0;
> > +	key->flag1 = ((d64 >> 13) & 0x1) != 0;
> > +	key->flag2 = ((d64 >> 14) & 0x1) != 0;
> > +	key->flag3 = ((d64 >> 15) & 0x1) != 0;
> > +	if ((d64 >> 16) & 0x1)
> > +		key->boost_idx = (u8)((d64 >> 17) & 0xff);
> > +	else
> > +		key->boost_idx = 0;
> > +	key->alu_reg = (u16)((d64 >> 25) & 0xffff);
> > +
> > +	key->next_proto = (*(u32 *)&data[5] >> 1);
> > +	key->next_proto |= ((u32)(data[9] & 0x1) << 31);
> > +}
> > +
> > +/** The function parses a 128 bits Parse Graph CAM Entry with below
> format:
> > + *  BIT 0-72:	Key (ci->key)
> > + *  BIT 73-127:	Action (ci->action)
> > + */
> > +static void _pg_cam_parse_item(struct ice_hw *hw, u16 idx, void
> *item,
> > +			       void *data, int size)
> > +{
> > +	struct ice_pg_cam_item *ci = item;
> > +	u8 *buf = data;
> > +	u64 d64;
> > +
> > +	ci->idx = idx;
> > +	d64 = (*(u64 *)&buf[9] >> 1);
> > +	_pg_cam_key_init(&ci->key, buf);
> > +	_pg_cam_action_init(&ci->action, d64);
> > +
> > +	if (hw->debug_mask & ICE_DBG_PARSER)
> > +		ice_pg_cam_dump(hw, ci);
> > +}
> > +
> > +/** The function parses a 136 bits Parse Graph Spill CAM Entry with
> below
> > + *  format:
> > + *  BIT 0-55:	Action (ci->key)
> > + *  BIT 56-135:	Key (ci->action)
> > + */
> > +static void _pg_sp_cam_parse_item(struct ice_hw *hw, u16 idx, void
> *item,
> > +				  void *data, int size)
> > +{
> > +	struct ice_pg_cam_item *ci = item;
> > +	u8 *buf = data;
> > +	u64 d64;
> > +
> > +	ci->idx = idx;
> > +	d64 = *(u64 *)buf;
> > +	_pg_cam_action_init(&ci->action, d64);
> > +	_pg_cam_key_init(&ci->key, &buf[7]);
> > +
> > +	if (hw->debug_mask & ICE_DBG_PARSER)
> > +		ice_pg_cam_dump(hw, ci);
> > +}
> > +
> > +/** The function parses a 96 bits Parse Graph NoMatch CAM Entry
> with below
> > + *  format:
> > + *  BIT 0-40:	Key (ci->key)
> > + *  BIT 41-95:	Action (ci->action)
> > + */
> > +static void _pg_nm_cam_parse_item(struct ice_hw *hw, u16 idx, void
> *item,
> > +				  void *data, int size)
> > +{
> > +	struct ice_pg_nm_cam_item *ci = item;
> > +	u8 *buf = data;
> > +	u64 d64;
> > +
> > +	ci->idx = idx;
> > +	d64 = *(u64 *)buf;
> > +	_pg_nm_cam_key_init(&ci->key, d64);
> > +	d64 = (*(u64 *)&buf[5] >> 1);
> > +	_pg_cam_action_init(&ci->action, d64);
> > +
> > +	if (hw->debug_mask & ICE_DBG_PARSER)
> > +		ice_pg_nm_cam_dump(hw, ci);
> > +}
> > +
> > +/** The function parses a 104 bits Parse Graph NoMatch Spill CAM
> Entry with
> > + *  below format:
> > + *  BIT 0-55:	Key (ci->key)
> > + *  BIT 56-103:	Action (ci->action)
> > + */
> > +static void _pg_nm_sp_cam_parse_item(struct ice_hw *hw, u16 idx,
> void *item,
> > +				     void *data, int size)
> > +{
> > +	struct ice_pg_nm_cam_item *ci = item;
> > +	u8 *buf = data;
> > +	u64 d64;
> > +
> > +	ci->idx = idx;
> > +	d64 = *(u64 *)buf;
> > +	_pg_cam_action_init(&ci->action, d64);
> > +	d64 = *(u64 *)&buf[7];
> > +	_pg_nm_cam_key_init(&ci->key, d64);
> > +
> > +	if (hw->debug_mask & ICE_DBG_PARSER)
> > +		ice_pg_nm_cam_dump(hw, ci);
> > +}
> > +
> > +/**
> > + * ice_pg_cam_table_get - create a parse graph cam table
> > + * @hw: pointer to the hardware structure
> > + */
> > +struct ice_pg_cam_item *ice_pg_cam_table_get(struct ice_hw *hw)
> > +{
> > +	return (struct ice_pg_cam_item *)
> > +		ice_parser_create_table(hw, ICE_SID_RXPARSER_CAM,
> > +					sizeof(struct ice_pg_cam_item),
> > +					ICE_PG_CAM_TABLE_SIZE,
> > +					ice_parser_sect_item_get,
> > +					_pg_cam_parse_item);
> > +}
> > +
> > +/**
> > + * ice_pg_sp_cam_table_get - create a parse graph spill cam table
> > + * @hw: pointer to the hardware structure
> > + */
> > +struct ice_pg_cam_item *ice_pg_sp_cam_table_get(struct ice_hw
> *hw)
> > +{
> > +	return (struct ice_pg_cam_item *)
> > +		ice_parser_create_table(hw,
> ICE_SID_RXPARSER_PG_SPILL,
> > +					sizeof(struct ice_pg_cam_item),
> > +					ICE_PG_SP_CAM_TABLE_SIZE,
> > +					ice_parser_sect_item_get,
> > +					_pg_sp_cam_parse_item);
> > +}
> > +
> > +/**
> > + * ice_pg_nm_cam_table_get - create a parse graph no match cam
> table
> > + * @hw: pointer to the hardware structure
> > + */
> > +struct ice_pg_nm_cam_item *ice_pg_nm_cam_table_get(struct
> ice_hw *hw)
> > +{
> > +	return (struct ice_pg_nm_cam_item *)
> > +		ice_parser_create_table(hw,
> ICE_SID_RXPARSER_NOMATCH_CAM,
> > +					sizeof(struct
> ice_pg_nm_cam_item),
> > +					ICE_PG_NM_CAM_TABLE_SIZE,
> > +					ice_parser_sect_item_get,
> > +					_pg_nm_cam_parse_item);
> > +}
> > +
> > +/**
> > + * ice_pg_nm_sp_cam_table_get - create a parse graph no match spill
> cam table
> > + * @hw: pointer to the hardware structure
> > + */
> > +struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct
> ice_hw *hw)
> > +{
> > +	return (struct ice_pg_nm_cam_item *)
> > +		ice_parser_create_table(hw,
> ICE_SID_RXPARSER_NOMATCH_SPILL,
> > +					sizeof(struct
> ice_pg_nm_cam_item),
> > +
> 	ICE_PG_NM_SP_CAM_TABLE_SIZE,
> > +					ice_parser_sect_item_get,
> > +					_pg_nm_sp_cam_parse_item);
> > +}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.h
> b/drivers/net/ethernet/intel/ice/ice_pg_cam.h
> > new file mode 100644
> > index 000000000000..1d794fa519d6
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.h
> > @@ -0,0 +1,67 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#ifndef _ICE_PG_CAM_H_
> > +#define _ICE_PG_CAM_H_
> > +
> > +#define ICE_PG_CAM_TABLE_SIZE		2048
> > +#define ICE_PG_SP_CAM_TABLE_SIZE	128
> > +#define ICE_PG_NM_CAM_TABLE_SIZE	1024
> > +#define ICE_PG_NM_SP_CAM_TABLE_SIZE	64
> > +
> > +struct ice_pg_cam_key {
> > +	bool valid;
> > +	u16 node_id;
> > +	bool flag0;
> > +	bool flag1;
> > +	bool flag2;
> > +	bool flag3;
> > +	u8 boost_idx;
> > +	u16 alu_reg;
> > +	u32 next_proto;
> > +};
> > +
> > +struct ice_pg_nm_cam_key {
> > +	bool valid;
> > +	u16 node_id;
> > +	bool flag0;
> > +	bool flag1;
> > +	bool flag2;
> > +	bool flag3;
> > +	u8 boost_idx;
> > +	u16 alu_reg;
> > +};
> > +
> > +struct ice_pg_cam_action {
> > +	u16 next_node;
> > +	u8 next_pc;
> > +	bool is_pg;
> > +	u8 proto_id;
> > +	bool is_mg;
> > +	u8 marker_id;
> > +	bool is_last_round;
> > +	bool ho_polarity;
> > +	u16 ho_inc;
> > +};
> > +
> > +struct ice_pg_cam_item {
> > +	u16 idx;
> > +	struct ice_pg_cam_key key;
> > +	struct ice_pg_cam_action action;
> > +};
> > +
> > +struct ice_pg_nm_cam_item {
> > +	u16 idx;
> > +	struct ice_pg_nm_cam_key key;
> > +	struct ice_pg_cam_action action;
> > +};
> 
> Some comment with documentation of the fields in the all structs above
> would be fine.

Same here, there is no more meaningful description in the spec.
But we will try if we can add some doc here. Thanks!

> 
> > +
> > +void ice_pg_cam_dump(struct ice_hw *hw, struct ice_pg_cam_item
> *item);
> > +void ice_pg_nm_cam_dump(struct ice_hw *hw, struct
> ice_pg_nm_cam_item *item);
> > +
> > +struct ice_pg_cam_item *ice_pg_cam_table_get(struct ice_hw *hw);
> > +struct ice_pg_cam_item *ice_pg_sp_cam_table_get(struct ice_hw
> *hw);
> > +
> > +struct ice_pg_nm_cam_item *ice_pg_nm_cam_table_get(struct
> ice_hw *hw);
> > +struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct
> ice_hw *hw);
> > +#endif /* _ICE_PG_CAM_H_ */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
