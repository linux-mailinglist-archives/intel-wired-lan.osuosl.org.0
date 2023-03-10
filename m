Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113F86B4014
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:18:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9492F40447;
	Fri, 10 Mar 2023 13:18:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9492F40447
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454327;
	bh=4YZyNRl9RIvWEPBQpZRY1nC5EPV/sSlAEuxoYWAIHic=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mepYmgxWLeUEL4wFxp4pVYoSD5m0JwOjFsVtPWhl6bjMPhKtohgbvfja3VTpol7l5
	 4LmkS3ZjG5AdE/Rr0wtZx2gdN584LD5aaIWZCQv28V1w604GMer4g4OOlrOakEB6tB
	 UliFuFxeAQtq6Bl6mAvpr1thr692q6E0/mw8q26VKpNyhubE2UJPQlOg7EAg/sl4o5
	 gfR9AcqztE0gG2Dtd3vN7VzOxflcGqMBoWiVVWQwTi5xsT4BqoOh/BQ68NVz6BMIpZ
	 8Mot1gHaybkUZnF9hEkBs2BgOBZ1igtdBL6g59fOOcF2SMA4VtWUfvAhSOowDpP/DJ
	 mYosgpp+qjdLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Z5Yb4lSoRBR; Fri, 10 Mar 2023 13:18:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 75B164037E;
	Fri, 10 Mar 2023 13:18:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75B164037E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 627771BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:18:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4955E40374
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:18:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4955E40374
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fFRQtSpmsOQP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:18:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61D9540123
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 61D9540123
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:18:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="338278051"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="338278051"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:18:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="923680822"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="923680822"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 10 Mar 2023 05:18:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:18:37 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:18:37 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:18:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bjz1yF5epUnkK3kBozayfa+72jiaa5R1HgF69iQb2NULsq+pWqYyQFrs49Trw9dF+ZgsGy6JPwCwNmL5K1AG0L22+5dU4jmVQmQZTV6ub6sHwRBLsVeJxcRKldVFvN72YhuGf0rXqz4p9UAYdvEobpgkD0AgVN4pUpbi7pN/PhFi9R+KcieqMxUJQrfJggb3D1uk+dGoIij86LkrRREjWDSpEpAXqCNgeCbcHQzSecUG5l+8NlbAMG/6byivaZhc9DshyuQjISduNigvbBZS3KNDiRkti9RZbll0WwZF0biCVDT052Curh0JtRuEPocN4po/pZwq+YDW15LbhlIQUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1oV70oMiwfbJLVYDN9xYANZva27XiAHK+Tjd9bkFLa0=;
 b=HJBOeCbeHqA4iQpSjL0e/56Otlq5hNEblDlLMXUmIOmMQOzZ5p2NGWVDAVuees5WULHj+Oui2aUafBryYrpMvxV75W87rH3ATz1wCM9KEuu3CwGXJxeH4Pd1UTyDv85pkdWTCSzgvlFTsy79zEsQxEp4X6498IozewpjfwCiG4mLxTTa5FSzRpC5Hl6kTstjbjNebfPp88wCLJiCO9BdhyKzA2vu/WvBGkMWpZSkWzEGDWEpjaJ26TW89mp/oq7S4lDzjNboyt3Ox4DLcx/WjqyMkWXc6QmuSPYmaHfckN1OWttuDgg1fIdsEYx1A52F33mXwqOfaw7p+qjtvvjjIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CO1PR11MB4996.namprd11.prod.outlook.com (2603:10b6:303:90::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.20; Fri, 10 Mar
 2023 13:18:35 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:18:35 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 11/14] ice: pass mbxdata to
 ice_is_malicious_vf()
Thread-Index: AQHZRuIM6luAOZ5Lr0CpVjb5SmZebq70F83g
Date: Fri, 10 Mar 2023 13:18:35 +0000
Message-ID: <CY8PR11MB7364D5EE36A5C5B84460DF1DE6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-12-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-12-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CO1PR11MB4996:EE_
x-ms-office365-filtering-correlation-id: 2cfb360c-e560-489f-7798-08db2169f3fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yJCneVnb8LmRoJYVenRdZciVHP85l4fdey1AaKon8ZRSXqLmjcQS4HY3HDmKDAyl0EsY6+zRgIke8totRtqoQr5bYnEri8XwfW/v6J1xoVAlrjO0FhkG3/EqP1jeO1nL/AO1VqIMawGcxmxSsY/AM+X63jERve5f+Q0GVDnDciqe72KrABGcP1Nu5K7gqgdMQWLJ47Vlbp0cHw6Nfhyfx02d94UEAQ0/lgko9wI5OEbzwvZWmX/yvZ/FdcMRrPs/VZ1FXTiQa2ob2l6MO8SIKEzZUeICGOhqx5tOkO5pBk4f5Nsp0MkI9qXHAsB8liHb3SHFdaHt1Yow7HCU0dUgc0F/GRvDGuIFNJnCuk7w+yp6wGLsKAr2XHt9L9NKzJ6hnq/odPQci41kOeNPKCcJSQh8eMh3PU3l9c1CWwn5+UkbN1OlzoTYANNlzeJ1lU72oMoWZaLVcOrBbXPk/77B08/l1mu5d7CA0CJgLvQvHkcvA4BzUCEdk0ZUNbTRUsnUgO5rbLlYO8f3L3dvXu9rBR0q5cGpqRVFFOyKEkNDHjvT6uSwUKUFM+RG0ld1yUzaBXARMyDaoQLsby8K79R3zDm7BW8sez7W38ujKCeOqSAjTY2a0iARoYCrjMD8U8tMTtcHXg7stWVOoh9QzI6qLFJDhEmjoFynUX4fCOwpjPdqQAsJpv+E2vWZ4/i6tRRFmIe/dJ/NyH6v0+01M3ACXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199018)(83380400001)(55016003)(2906002)(6506007)(7696005)(52536014)(71200400001)(53546011)(5660300002)(316002)(186003)(26005)(9686003)(38070700005)(8936002)(33656002)(86362001)(41300700001)(66476007)(66556008)(66946007)(66446008)(6916009)(8676002)(64756008)(76116006)(38100700002)(122000001)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Gy6DVPrFrasvbGsSWFsuFQUOMV6cevQBSDiTKWRn63J0uw2QWWqdgXV9OS?=
 =?iso-8859-2?Q?CJLFVdV6NuzYu+rEejot06b+0BYETZ0S8nNLJmBGyfRW6L5QwhTOIj7cV7?=
 =?iso-8859-2?Q?nBF0ZWr0oReHrYT36xtc1FMEaQVYGl+Gvl+R5fVu1xtY6Ejg0cZfUhjgMf?=
 =?iso-8859-2?Q?8zvYEsytaLtxoXt02ggmWOSDqZq/4pl/bD/eB6UFNB2ePOFQM9/w/LMkYb?=
 =?iso-8859-2?Q?gLheV+U++ldlQM7PguJwtxVnw5zL4kgvTFVLTK333TzOOYUaY2TAU5VoNp?=
 =?iso-8859-2?Q?dnP/lef+QeSIqEeaZcRXxvGCjWeuGu3/FkjgbeeMYNNL8VMxuy9Bji2ya/?=
 =?iso-8859-2?Q?SM6D2KkW4e+5pNNAmXBWYLm6WkeXBd6YKcoRPZXXhXA/pjEGn0DfLmFpda?=
 =?iso-8859-2?Q?LlBnAtxsiG9cv4gHJRnWTe1Y7BNSn13Kf9I53mpkz+8AJhMfbWwo7C8Lgg?=
 =?iso-8859-2?Q?Mf7RBrEKNdNBYhpBxJeWIV4Zi3pF3Es/miaawlGzUhQs5a7CbFJfVFumRm?=
 =?iso-8859-2?Q?aELZnuTVESd14J5FvQxApWI9w1GpaAB7Y5rwY6oBc+oj1i5CmhRCyHPIda?=
 =?iso-8859-2?Q?MDfcXa0vW1RGph+oUGCZorJhaxv7oODkvNR3mdp9FZ937FPO76+ZocMRfb?=
 =?iso-8859-2?Q?Sc8LnC52XQjjGRhcylEhUDRhETp7rTLzztAauMlrEx6AH8adzevJhBx3MR?=
 =?iso-8859-2?Q?46cU0jL8anjBxxlLV+0x3PGBJfUKodtPhcwJU8ZkVkLz19cwwRN2XwL/7Z?=
 =?iso-8859-2?Q?orIZTOIGIZX07IMDnEo3yxWTQjq7Qd9upnzzpPJK6mpSrvyz54/jDu+WPY?=
 =?iso-8859-2?Q?AGzSH9AO+aQ8JqowZQjN1BqIK2S2Lke1w6oEwI6FmHI0T865VKhflGqI4i?=
 =?iso-8859-2?Q?e6/pW8PPvMWzi4HPolLQ7hoagVaYfOsjR8GcajOXJ61zKGBpvCT4Xo6N9l?=
 =?iso-8859-2?Q?tWm1/LbZyZSn+UkhIKVIAhdV0TIuRCD403Zj11Dd3YISHIJ+7W3iPmCEnk?=
 =?iso-8859-2?Q?RcRAZRSEJwr8V6kZ+Mlp5H6Mzk2Ek7NPKbaw6JoUnC2dJ1EyNVjiBmyhqd?=
 =?iso-8859-2?Q?PfeQK0nPiU0Y7Firi/RnJocKC8yZ/EXmCvPg/uMDNfBDia6JZO2UsYagKh?=
 =?iso-8859-2?Q?rBilXS0w2fOu0jvL5X+u6io8KlyvzgVIg+db2ZQp7OWXGGuAm5vPXRDXbD?=
 =?iso-8859-2?Q?kXMm+REGLO0h7uZVIgLutM0jZ246wJaivljEcifY1Fdyh80+FQN9Yck1ie?=
 =?iso-8859-2?Q?bEhyhSxZWByNMRhKwdC5WIqSuqQ17+8f6F/VXczCz0ErOeljUGAII3Xh+d?=
 =?iso-8859-2?Q?kmj1DeGjJ+qikfMbCV3zglPqJnUZxGbdqZ9xQKyAFPrnWK12hBY2H5XQ4M?=
 =?iso-8859-2?Q?6InVz6+4Y57KwXBnYU9cFuLCkIz1udv8ClNSid9XZmXgHuIIs+2OnVQB4A?=
 =?iso-8859-2?Q?0LtHsbDI31c9R0ez1xpM0sFZjjt62PMkm3dZyd2Kc9S1+sU+fT3FmblZNF?=
 =?iso-8859-2?Q?WTBdQG5S+/8dSITo7oaLWHXVi4YWVKG0ScFVM+xQv6olUDClsGy6nQGw2Z?=
 =?iso-8859-2?Q?pnd2uSMQtng1KoNcKpjpEc2fJVPG052KB9Y2giF7arO6cKnyNUyKTl83b+?=
 =?iso-8859-2?Q?mFC2RvYmv9z3+idYyLeYU3gFTj6o4g9h9I?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cfb360c-e560-489f-7798-08db2169f3fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:18:35.1149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /KfPkvojm25a6fz2MZg2UL1/10AFnlijY8N9ix8rFTrwZWlldVpNEsQhUJ6gG/ilCskimJCwjMwXPqKbl6KFJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454320; x=1709990320;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8EwunXgLRlkouyzl24mXpzoFAMvm1Ptm55wxfUkIxOc=;
 b=VFOVQk7l0EaDc0pWsLagju96CzH8vdLKwvOTJZqG4Yszq/xd749HnQ+J
 JUdGXz4iRqnF1kbctOhsWQIi/U6T1s6+TO5o1bgDtxEQgKEUu+hkNWV1j
 a7yzbID9RvTBFEjHTi+wxTHfGvIzmx07w4vwpV0dUiKYIvwGsxQ5XtYZL
 iQ19/N5lStyjhyb3wK6KLfa+B1LoZZJclUzHul6/YHykG/TXYtiZyOO26
 wpGGtRtkt7dCh+WxU85s2XCOgnGwid87f9x1UwpYxXoet8mvh50N2mgih
 QNyn3VcE5DhNkUCRA2EQ3Xkggw3+PxXG4pU971PlBG6HH6vZnuDoHqouA
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VFOVQk7l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 11/14] ice: pass mbxdata to
 ice_is_malicious_vf()
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 11/14] ice: pass mbxdata to
> ice_is_malicious_vf()
> =

> The ice_is_malicious_vf() function takes information about the current st=
ate
> of the mailbox during a single interrupt. This information includes the
> number of messages processed so far, as well as the number of pending
> messages not yet processed.
> =

> A future refactor is going to make ice_vc_process_vf_msg() call
> ice_is_malicious_vf() instead of having it called separately in ice_main.=
c This
> change will require passing all the necessary arguments into
> ice_vc_process_vf_msg().
> =

> To make this simpler, have the main loop fill in the struct ice_mbx_data =
and
> pass that rather than passing in the num_msg_proc and num_msg_pending.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c  | 10 +++++++++-
> drivers/net/ethernet/intel/ice/ice_sriov.c | 14 +++-----------
> drivers/net/ethernet/intel/ice/ice_sriov.h |  5 ++---
>  3 files changed, 14 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 615a731d7afe..a7e7a186009e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
