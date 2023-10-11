Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D80087C4C55
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 09:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BCAC416B8;
	Wed, 11 Oct 2023 07:51:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BCAC416B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697010675;
	bh=4OMM2ONn+r/PjcCZ4TdNV2OAbpd95AV5Y+l2SfgQ83E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WiA8Tz0cNBweOo7v5HYqRjdxoAERjyzI+nxxt4+jvhTEDxZnoYNSQLcEaz92ORczv
	 UU3MOrJ6cqJ2zkMSB7r9GaQKLAI6WQ2VXBgdlRXtd0CMzEvvtJT90/099TGbPgn4Vf
	 z+R8D4tbKgcnVeemJUTGtzGW6fyx+BKJ9W/tQFlvHWv2vc3KZrxbMcTcaVSUd3W5zS
	 +WgeT/nqxYFLp6l/qN9GWh1CrF95AIhqUuy60j6pSVQ8h2mVV7FS1h+USQ3Ex+6T3j
	 DMWkHVCkQHek+Ll56AbQLGADzgu8KMZBFQz6JTU8mIn6ak65NogkgMeK3K7UvJKs+q
	 J2yWBXRIT1ncA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LdQZepKc9HWi; Wed, 11 Oct 2023 07:51:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CAA50417D5;
	Wed, 11 Oct 2023 07:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAA50417D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B78E81BF391
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 07:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A9C660F9E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 07:51:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A9C660F9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iPRkV4x7TOWV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 07:51:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5E02860DF9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 07:51:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E02860DF9
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383466606"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="383466606"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 00:49:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="819598447"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="819598447"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 00:49:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 00:49:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 00:49:48 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 00:49:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l9srREvXRkdc9yZs/CJeSdCRU01HUXZkvPU7ss8JI+5Khqc6YYkMc+h8kh3cDcAETa150G7sD1kkqpBQS+plfetjpSHnAgxAe0Dln9Dpccefh61GzyI9edPJvMzL9j3g+e4Hfgl8SdEHykEddKkpaVlOsuWN4BsULzSX5aK5jsopIJUU4lWWCJomD6EAbNbwPizAOUy6fGEYwgC5vybZ3a7XLW+7pV9EzyhNqPrXd5PDG6Q75Ljal/O54KCmVLQyBi7Zwr6WTfRDhcPK9Uq2bQA7BZyLpfiTKF02hzszcOvE7xIlOMK7dm8XPIW2xFOk+13LDjxHFcwBoznodTYL3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OwpUzD/kTDqf3dob93g4NRRYpxlm/rE4o4i+ziOpH/Q=;
 b=ayLpdaKhYCcDBytOS8VwAdnLFbSitzCmrcZSvoRorIosgQWK4S7m3gyp711GvHWk2DHFEJ2Ix/NMID6GvLbbW8ImbJOtvNZzvrcH987gqwLduxU0+Ybe4EFHPxomnwyZgDVZa5XfgGCoXhHpLZ/tMhpLcPfmOwOeLkkGksPqn7NYoAXh04nPKB9CYQZbziWPaaPa+lEBwxlh21J2Y8fZUpVYCXbD79lJeDQkC6ulx39CDrDF0X0nI/ilpLEwh+QZ7NtOaKOY3wxMdeLr1HPyq43SmQibRzCW/ASLj5BNJtaOravwy75uX5y5cPSodiEVymkmnXAnR2lnYsnnqTKDhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SA0PR11MB4750.namprd11.prod.outlook.com (2603:10b6:806:9d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 07:49:41 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6863.043; Wed, 11 Oct 2023
 07:49:41 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix SRIOV LAG disable
 on non-compliant aggreagate
Thread-Index: AQHZ+5+C8ixfj0+wRkyR0Aj75A4kG7BEN6jQ
Date: Wed, 11 Oct 2023 07:49:41 +0000
Message-ID: <MW4PR11MB5776D6E0839459D26FC063BDFDCCA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231010173215.1502053-1-david.m.ertman@intel.com>
In-Reply-To: <20231010173215.1502053-1-david.m.ertman@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|SA0PR11MB4750:EE_
x-ms-office365-filtering-correlation-id: 0136abc2-206a-4bfb-1cc3-08dbca2ea08a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 28vs389hul/y/sA4a0BETgasjob95hPYdwiHXqDjPtwAly6b36QtqTk3QnO500cuwJVpG1I5ZqJaWBsHtH4fkx9C+SeNRevtOKe/00KfBF4Xt6aPw5YgbKjZF+qMmKaymq+uDlsIjGWqwzq74dTD2RFiQeg7exAx1BHsbgdTtHNHWXf/UgKyJuFqVI+CE7OwA3hNxB3s7zqqshdER3V5lNIZAPYle9Ay1RLZfnA9N0zaiaWRkELZa6UJxIcYFT7bnusd0HSTonrEjjVSqXAV8BNn+39sE5yhUTvXP/PplzDp3yQlnuqisNJFnYb2lfI1Tx4L8RObh5HGeQbPWAWomCbxhPdOJvZEH+fo/5I4nJBk6ESUJz9JYWsvz4GLyJgnM74RETzkGGjhJAlQSA/Eyuf02RMP4jiJiJabhJvmGh0fkdeivX54XtXbw8hfNHOftzRenoT+WBnAg7G+kL+ev+5+6srGvmKdy2NFQ+BknZZIrvz5Z0SatXb5ZPq+F70djIG26RClClxN4mtWh3pZcBwO2ucVPM9wMu5XX2AovLdf5Jzo4+ukvcv4zDq+se0E0snXPklv6I8CuPQqBjPFxnynco3yatT7VvAqEsX4r5o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(396003)(376002)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(53546011)(9686003)(33656002)(122000001)(55016003)(38070700005)(38100700002)(86362001)(82960400001)(76116006)(2906002)(26005)(83380400001)(966005)(66556008)(7696005)(6506007)(71200400001)(478600001)(66446008)(8936002)(4326008)(52536014)(41300700001)(8676002)(64756008)(66946007)(110136005)(66476007)(316002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xJlkk7Bi2ZHLtfykUIHGUmFqIuNjYeqh/8lKIpinJpievtafgogte2W1BDW2?=
 =?us-ascii?Q?IY1HgPv9fsAmKu1s3r0DnFSpdzJSqzhKI4t3st58TTE4UGW80yCjKkshuTDP?=
 =?us-ascii?Q?QmMfLkTDC8K5nTd7aVHK4areADhO2PJvnaeom/v06XrQQhGJrUeKwRmQBCKN?=
 =?us-ascii?Q?wYbfDWfUIqGoZIbrmfT/Zp128Q6QkEwbOY/cWlNxjXw5Iy6iXEg2l4ceI01L?=
 =?us-ascii?Q?QvcDMTH7YhptBMLqmyX5CckrF3NY7rzNdxbJEhSkuP/Zsg/a9oNXyEsdIbkX?=
 =?us-ascii?Q?cBm6FCMN3BLsIp6qlptP+kJJwn/62UxgAHfmqX2Nv8B6mTY1P1YjAP2FkJOn?=
 =?us-ascii?Q?jZoFmU30RoNGorjh3SstgSnRjHuHL1XBpCJWAyKCFQwghg2/pg6WsaoZynsW?=
 =?us-ascii?Q?IwyQDUluYl50CDAVX8EU7azZMoVGsbWRGQdpWqX9fYkxOpQK+GAEUzO+PM8R?=
 =?us-ascii?Q?AkxlByIxM684RO9BFq35SrkKWIyxidU5g7Wl13ZO3t9a2Fe1JhON1MPgv05J?=
 =?us-ascii?Q?vZykrqNnlCNRIkttrt3BcBeSKfq64drZm1/4a8OvYR+fE+p1OnHik8hEVy8b?=
 =?us-ascii?Q?+dWQTVu/IdG117YmBZYObLIYZrnmNUTsLSMSnSHtlPmhW3qMab0UEK/NCy4V?=
 =?us-ascii?Q?W9BvUtw5b9A2BxJsrNwmZz9cWF5T9hGeXaiN5NocH02N5CdCuS3FZz/F/K4b?=
 =?us-ascii?Q?yTsIJn8oKd15Ch4KWMHcnJ1SEDnKFh87KtPF2Reoo7DmvoPoGsn1uFmv5RWW?=
 =?us-ascii?Q?Ttk/DcB7XlMPNheJJYGPewr9nN/QB3sEIYsX+8plEBe4Svc4bH3g9yIs8rqH?=
 =?us-ascii?Q?82J4UdUHfbFyaFH2gkFGet3AxN0bVqtJRVyib2PYw5IRXmBl7NNbZpcBykSP?=
 =?us-ascii?Q?5FSJN9v8+LTqHK3IHQa74Td3Vf651mFliw5AgKGKrun57TCV91e6DcQBoIq6?=
 =?us-ascii?Q?fiYDpyMOFGftZ4wT+kIF4leI7RIYRRtkDgsl/Lx75BJ4oMVxQiQGTRuvX/Ml?=
 =?us-ascii?Q?AAenzNLsgRUe9YCgUhTG+OBm+sbHan3tsJHMbdWKEwfG/K5IH4cjwW5aBOmF?=
 =?us-ascii?Q?QsUI8R6Ef41JpiZHeGXgeA4k1Y4kMrdzSmg5VdYJ18I6RCWk3KN2jENES6IR?=
 =?us-ascii?Q?/mPpvQIkVReCYDtLvzk30PK5nxRMyTknqVA3N5dmKHE/qd6Wc4kqrZ+byKUg?=
 =?us-ascii?Q?UvVw3O966xwO8bQtq5t+a6t/foRPKf4IB81IbJZ2a36E6t/B44/dQAp6dckj?=
 =?us-ascii?Q?nXs6St1Y9wVAlX3xpt4cvaEndAob/7wqDWEutgzLJ4M9JLgh4bcKZIACAP+7?=
 =?us-ascii?Q?QDy7jCj7HGnvBaUwTyzwV5TvWs+1VtrF3uUny8pOr06nl0nkUZCpJTJaxHLd?=
 =?us-ascii?Q?wHruxV9oI0qnrf2Y7FryKB7atuDtBKuw9S6l0OTGSf3soJ32B6ybh09SH86s?=
 =?us-ascii?Q?p9ENzzo7kmrHa0eZzQ7iwFdub1TkF6plTGFq56NEs78jF7L0BLQieromfiLx?=
 =?us-ascii?Q?aJUJIlbGPF4ucWej55jueQcJC2wBWZs9nyDiE5zy/LlWCIPbzeFucl345VHl?=
 =?us-ascii?Q?laYK1tsnW9G0Y3LEYzfAq3Z7OkbgA5YlLnPOX68X?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0136abc2-206a-4bfb-1cc3-08dbca2ea08a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 07:49:41.3403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nu+h3MF7IoOAGWVAJ6TTMh6q3gPARRoon2cmsB+jk0XBXXnhYwGBZZQ2B+y7mDZLfVkDErHZPRjeYTyHYSds4cDUmwrynx9GmMpXMDN+HTM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4750
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697010666; x=1728546666;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=plgIa0pD+FdBVYcjqnpZpG3+me51fjbuo0lFE3rE/yM=;
 b=BRrDqOVc8M9i+8dOW32RvP1HZRZiG04OEeAf6XxHRT2u8RAcRQnuNBky
 1/mswn1T1MMlb+IGu8d6H3UhGUHwi3Oqt9fA+f3c6wQBl1FsuHGyLxpn2
 KCJ2YI9BM2OX6nOIoNiSkUq9cKWiDqvD2tGD0KRzwPS0T/JTZ4gpYM3JB
 L2Hgx9DC6zHfhfQBpXY0Q9itJSb7iBnFujevZjDoVE+VwU/so48Hw596s
 4zlntssQ5nw1gbWQ+gBwFP3qhKIb62+X+WBshaSni5Hoj0SNXImShWy9Y
 OQ+NWm6WSXPde4jqwon3A20QVNDzvuT9bK1tAAx9ULicVt78om/TWQwO7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BRrDqOVc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix SRIOV LAG
 disable on non-compliant aggreagate
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Tuesday, October 10, 2023 7:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix SRIOV LAG disable on
> non-compliant aggreagate
> 
> If an attribute of an aggregate interface disqualifies it from supporting
> SRIOV, the driver will unwind the SRIOV support.  Currently the driver is
> clearing the feature bit for all interfaces in the aggregate, but this is
> not allowing the other interfaces to unwind successfully on driver unload.
> 
> Only clear the feature bit for the interface that is currently unwinding.
> 
> Fixes: bf65da2eb279 ("ice: enforce interface eligibility and add messaging for
> SRIOV LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Thanks Dave!
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
> b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 2c96d1883e19..f405c07410a7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -1513,18 +1513,12 @@ static void ice_lag_chk_disabled_bond(struct
> ice_lag *lag, void *ptr)
>   */
>  static void ice_lag_disable_sriov_bond(struct ice_lag *lag)
>  {
> -	struct ice_lag_netdev_list *entry;
>  	struct ice_netdev_priv *np;
> -	struct net_device *netdev;
>  	struct ice_pf *pf;
> 
> -	list_for_each_entry(entry, lag->netdev_head, node) {
> -		netdev = entry->netdev;
> -		np = netdev_priv(netdev);
> -		pf = np->vsi->back;
> -
> -		ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
> -	}
> +	np = netdev_priv(lag->netdev);
> +	pf = np->vsi->back;
> +	ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
>  }
> 
>  /**
> --
> 2.40.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
