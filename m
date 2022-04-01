Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5F64EE6C1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 05:34:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 049E384046;
	Fri,  1 Apr 2022 03:34:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0ulP8qicczu; Fri,  1 Apr 2022 03:34:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F05AA84044;
	Fri,  1 Apr 2022 03:34:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D742B1BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 03:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BF98D41E81
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 03:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S7zbwdsZY0Ow for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 03:34:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 535BC41E7D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 03:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648784056; x=1680320056;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2nB0bxa08T2xo0/jy5UYPTqJpap1uSqiOVxfu3bPJbg=;
 b=nNRrZU5cIqZYYnWEwpnQnGv8n1driJlhEESXTYrFEzXID8/lkleizGcU
 VXbLWJxeSp8TFp70UNd6B2mE7Um4y+Ke+eAk9cilEFfFUKfnLd0DaYEZS
 wCqqtoMNeFzcbSK4T3XBx0Qc4oIvWK3l/cI2XhlLS1FRWiFGosX/LqVw7
 fBSrfk15zeTm6JPqLOFdmZmEE9FCBrWf594HXimtXtgCliAQ0Tk/FaFlE
 GYlU23LHflpRysm+a3WRK1LxF/z8sBxC+28AIIsNiB172+YGHctsR88c7
 lijOiSPhQrAleVwrtBYY5zt1Fug3WKigDQiRoESyIdT3UvnsZRuOsEMDQ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="239970004"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="239970004"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 20:34:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="504015901"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 31 Mar 2022 20:34:14 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 20:34:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 20:34:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 31 Mar 2022 20:34:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 31 Mar 2022 20:34:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JNXMwPsY9zbANAeGPspiBfB11c9+iCNZrC8kKqdCoyyAQP+EUYs/hdHhVc4/sQjUxtOVqSnTr/uDYpys2AOYl2RzW2BV6+0w2qo7+3w1zhdT10o8riIiVCEzCXqmRwLQWu2Hy7S/IqDjauL40nk3NTQAdtGp4lq2yKENR+Xkpw/B6Hl0eXWSt+fFY8d18zwLIX3BWSh9PmsZwldQ3zDZQDoawC41Wu/y5c3oXWPYHST3WpGFBGDZUn3CHABnDGIe3rIsPb8K7aIRRvASjgY+86fJgk0d+68XTi//l4tGNHcON5dbr0JjvVdb5pWCrGU3T/m9ufiqXq/0KZh1dlkEIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z8fizE8iH0RrZNdLS5SKBdSq0gtGS9d3Uf41ahEXYuU=;
 b=dplfg4cIirRerxV004xx1horcPGjP2IKgbKvZJVHoYQ634vxJc7JV3YaQ9oJ2rY8v+gyhz7am+BSftxsAt1xnjuo3npHN5KduUfpASYZ+cHzBwVNri7quKrN+57ZlnY2KPeHHFVJCWQaxHB7dn+trzkgAvJ4mOckaSXzqzytsmU4ODWFS1ql9wocDzwzztkzXe+aS1FqqAGhtDwRLIaUlKvN6BtUxfNsF4w6qYaskKrs5x69IJi5S1yTWeu5hRLftyXsZjytqN3X9RAbnG9Tq2luDWrQEvFs9esvlO9jIxsHJQAQ+Mjgtfc5N96bGIoPDHNV83BQzApno/NE9jd29Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4149.namprd11.prod.outlook.com (2603:10b6:a03:192::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.21; Fri, 1 Apr
 2022 03:34:05 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::8113:f21a:30e7:26db]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::8113:f21a:30e7:26db%4]) with mapi id 15.20.5102.023; Fri, 1 Apr 2022
 03:34:05 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Rao, Guruprasad Kudukolly" <guruprasad.kudukolly.rao@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Anantharam, Arjun" <arjun.anantharam@intel.com>, "Rao, Guruprasad Kudukolly"
 <guruprasad.kudukolly.rao@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware] ice: Add wireless edge
 file for Intel E800 series driver
Thread-Index: AQHYOilV3Odx6exvcUWNyF0Wu0NS86zafgRQ
Date: Fri, 1 Apr 2022 03:34:05 +0000
Message-ID: <BYAPR11MB3367B2388F0C417719B3178BFCE09@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220317175932.78417-1-guruprasad.kudukolly.rao@intel.com>
In-Reply-To: <20220317175932.78417-1-guruprasad.kudukolly.rao@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c79f5ca-a595-451a-08cc-08da1390790b
x-ms-traffictypediagnostic: BY5PR11MB4149:EE_
x-microsoft-antispam-prvs: <BY5PR11MB4149D0328762E73D388B08F2FCE09@BY5PR11MB4149.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /3mv8ZMVQvhTthtTtIA48Iucf7+FfOB47Hxfm+tZb6pOJ0og/np8kunn3iaX1CKL/tEfgW+d/ROuAOCj0t6lzO9GA5D1OK0bd5Fddb4lSvmVzB3c/zeh7xRDla4NLfflk/kS71vDTByhax3jiWPltQgjRG1YOSUo9MkdcYahhmQ5k0f0jt5KS2gC93kRFGe3b9MBWi8wCE6aj6XuD97YzsvKqB9XYpNE69TKWkXUD/CiYxqjagfCFCmHOOtRCN11LOLWw1j//h8iU4EtY7+gWvT0Pt6lbDR94tUVZFS6WLphsBC8NYcTfAId5k76P4BIKZYuoWxqqVzeogWtbDw+RhnBY65KfEL7PonRGsbqvqs0h9X0gdIbYIvsmH/NtetKlyIctE84SoK+Owq/HfXOBZRQMUidnaKA9+v+Bg4eOo+zfzQQMSQdL7m2JmkvxbMgZolgK3Es1CgyADcGkBIxkqCDfX1e87tKVYh1X1Ngu4KY4Jwj34rjYNa3wF4rla1pu4HlmbSq6Ff00xK5NbyS1OBj5vOqcvx7XNHhesGSew1H7NsV2UZaRaPwpgRNnSEGZkgj5tlHe8yJmtKk9oliEbABfbgAHoOE2tF6UHQ+BoDQD9wT0CCZHX1+lJ/V/sVkd4h+uMpBR47DkthseoqghhQh7i/JEpssrQEJi6E7bfsGG47vF27x1IQI+BQD6Wr5tnQyj5EhIrf7SKL0km4SLg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4744005)(186003)(6636002)(6506007)(7696005)(83380400001)(316002)(38070700005)(508600001)(66556008)(86362001)(53546011)(26005)(66476007)(33656002)(76116006)(66446008)(64756008)(66946007)(8676002)(110136005)(5660300002)(52536014)(55016003)(71200400001)(2906002)(8936002)(82960400001)(38100700002)(122000001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vfPIN7KwuJFkbuvTCZcEl+3/iYl1aLLfTdBqT65lIJYPqrVYZDLh3RbWpf3J?=
 =?us-ascii?Q?z/vN6s/utnz6UL89zPZTpfoSRdzYJCL5FVArNstsCiSmneIiSL6X+9n2eQgE?=
 =?us-ascii?Q?cRUef8mTUQXyeyHwftt+433pk7M9X9uxts11ymIfyhi198jr2q+1nw8a857Q?=
 =?us-ascii?Q?qi0q3BIUQ96COPRNywDTGaqlwrdge9KwKJwjJwHuK+3KfwCSMkOQtKf9jPSk?=
 =?us-ascii?Q?yjNNv6Reu7qJSQJXqk/tKgFO/9BMjZtAcSzGqEixWCWfGMGnsqWtIosAtmng?=
 =?us-ascii?Q?krGREmZBY23/Z2eQayySXH/UW9iLSdSGpT4jBC1h/8Ru3TTSu4rt6qgUrvd2?=
 =?us-ascii?Q?4doF8Xj2ok8UOAmjhGfbyDr7hwNRU04ShHfQvr55rLksGKW50Yx+ZPJ4LICC?=
 =?us-ascii?Q?WLqjsWJ8HsN4Ql4Tc+kuBmtZ5mg2MI5XJuZWv4fplVxM86XQYZYHyxD9dvEy?=
 =?us-ascii?Q?wd7VqvM4Kpn/ecbqWFEtsHoiX0CPov08BdUVG5uv0erRPeP8OfHB6eDod9XR?=
 =?us-ascii?Q?pcMc/PYp1fhOmbU28icEPO9l7r9XGPKTrzB2fUeRl5NLpc6wAeVF3gEDjOzx?=
 =?us-ascii?Q?KIWwNUd8cOo0nEZubONUmbMkwE0TfD6akHosjRGY66OdyfKK0AuYohvJSPJc?=
 =?us-ascii?Q?hO82lqnv1kXk5u7JhvRMR7+g2mdazWHXOUc4mXnymxhB3PcejqlqbRsxhQuh?=
 =?us-ascii?Q?T01O0bg+ksp5ATPd/QqYhzCU4FxShoeeKZAHNaSdayFOE43OWHkWzCrz/XB8?=
 =?us-ascii?Q?9xWsdhVMoPeez7Fe86NcQrQluI0+42T1UxIQzZMFRZIoHdP7Bou/DxBOxnlT?=
 =?us-ascii?Q?aQWylTL/kQMhDGwgmX335PWdXo5PT+U0z0bV+12iD/gMAOJY/DcErRYBUPTa?=
 =?us-ascii?Q?TuVaePBxd82/pQQ/I4DBU4Z0TGn35Jm/9UHBakpNiYl30kFTE6FO765Zl3qV?=
 =?us-ascii?Q?VIXRJHSJzPDXTPBTzTaUBaHTtiZsi96TtBmCEe2L+4xp85JPzgtboilPvV3E?=
 =?us-ascii?Q?fzDynWtxzT8BCRBPa66WuZxXiE6VAotzLBxJWvLW6lHa9mAug4LILW0Pvpjj?=
 =?us-ascii?Q?DslJiDacNTkcT3c9Ur8G2+F3Sql/sRUqqLDpYCQytN9SMuYTkuUG5BEqrzCa?=
 =?us-ascii?Q?RfrpBTgI+nHn78NH5PBVcqk6xTmIGB1dtfnjlqkboAdNYQBvzkA2S2Bem7AY?=
 =?us-ascii?Q?R62m9cXDtvvIaD8NKuCoMf5Jd9nDKtb8kj3B814iZzgyVa7SyuvKwHGGta7A?=
 =?us-ascii?Q?obn5N5yZuW9/oljZlRyY+8yw6An7cFO8svfjFeiCpFSCvwAGvD6fBWC5iMDN?=
 =?us-ascii?Q?MZQs4xGgahgvIyiztcmN+IvrPAUcbaJYZ1rRse2fdMUNFF3yhefgX2BP3lqE?=
 =?us-ascii?Q?1cCqy7/RrxG1TftBCaGRfkQpVsi4bQnQO9xfUanVFoshykcmOkItfj0D9ISL?=
 =?us-ascii?Q?5fxiKvTm8nGrxD1t5PU44pAL8JFOO2yeUWmwp+csM7mx0lQYS8f0r3oN7hB0?=
 =?us-ascii?Q?FT5vY/uYnN7LtJlXQwt2CRLYgWR0vxLaSQ3pY4nRLaDSXXUoOOIughjyPQBu?=
 =?us-ascii?Q?1iLs8Gr15hG5hV92E8ynZCVf8gF4FgDpfX9N0M97piRs5U0r78eGrEamQI3W?=
 =?us-ascii?Q?nJ5DRZzY3XWuA93J/UDM6HgiVxWEGH4Z6GXiB/YA/tJ/tudXRGUOoOQJ9fMO?=
 =?us-ascii?Q?ow//+zClYKHyOCYOM/gRnWckeLfoutPaTF4Rz3aSWjXXp1tqsI16WJPGaQWv?=
 =?us-ascii?Q?dKrFEqNNcg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c79f5ca-a595-451a-08cc-08da1390790b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2022 03:34:05.2549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: alLTRobKi2vcYbVeMwTOJfoLV0+XCgFyUE8vHwXt4s700VP5n2SpvwvYQokBD8WtHzccel6uVrREWlVZC6o6Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4149
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: Add wireless edge
 file for Intel E800 series driver
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
> Guruprasad Rao
> Sent: Thursday, March 17, 2022 11:30 PM
> To: intel-wired-lan@lists.osuosl.org; Anantharam, Arjun
> <arjun.anantharam@intel.com>; Rao, Guruprasad Kudukolly
> <guruprasad.kudukolly.rao@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware] ice: Add wireless edge file
> for Intel E800 series driver
> 
> The ice driver can, optionally, load other package files for different
> packet processing pipeline configurations.
> 
> This package includes support for GTPv1, GTPv2 with extension headers,
> eCPRI, ESP and IPsec
> 
> Signed-off-by: Guruprasad Rao <guruprasad.kudukolly.rao@intel.com>
> ---
>  WHENCE                                         |   1 +
>  .../ice_wireless_edge-1.3.7.0.pkg              | Bin 0 -> 717176 bytes
>  2 files changed, 1 insertion(+)
>  create mode 100644 intel/ice/ddp-wireless_edge/ice_wireless_edge-
> 1.3.7.0.pkg
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
